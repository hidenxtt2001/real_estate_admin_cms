import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/config/app_config.dart';
import 'package:real_estate_admin_cms/core/data_source/grpc/admin/service.pbgrpc.dart';
import 'grpc_service.dart';
import 'notification/service.pbgrpc.dart';
import 'tour/service.pbgrpc.dart';

@module
abstract class GrpcModule {
  @lazySingleton
  ClientChannel getAPIServiceClientChannel() {
    return ClientChannel(
      AppConfig.instance.gRpcUrl,
      port: int.tryParse(AppConfig.instance.gRpcPort) ?? 8080,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
  }

  @lazySingleton
  @Named(GrpcModuleKeys.gRpcNotificationService)
  NotificationServiceClient notificationService(
    ClientChannel client,
    GrpcService service,
  ) {
    return NotificationServiceClient(
      client,
      interceptors: [
        service.jwtGrpcIntercepter,
      ],
    );
  }

  @lazySingleton
  @Named(GrpcModuleKeys.gRpcTourService)
  TourServiceClient tourService(
    ClientChannel client,
    GrpcService service,
  ) {
    return TourServiceClient(
      client,
      interceptors: [
        service.jwtGrpcIntercepter,
      ],
    );
  }

  @lazySingleton
  @Named(GrpcModuleKeys.gRpcAdminService)
  AdminServiceClient adminService(
    ClientChannel client,
    GrpcService service,
  ) {
    return AdminServiceClient(
      client,
      interceptors: [
        service.jwtGrpcIntercepter,
      ],
    );
  }
}

class GrpcModuleKeys {
  static const gRpcNotificationService = "GRPC_NOTIFICATION_SERVICE";
  static const gRpcTourService = "GRPC_TOUR_SERVICE";
  static const gRpcAdminService = "GRPC_ADMIN_SERVICE";
  static const gRpcClientChannel = 'GRPC_CLIENT_CHANNEL';
}
