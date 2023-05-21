// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i34;

import 'package:connectivity_plus/connectivity_plus.dart' as _i5;
import 'package:dio/dio.dart' as _i6;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:grpc/grpc.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:real_estate_admin_cms/core/data/admin/admin_repository.dart'
    as _i39;
import 'package:real_estate_admin_cms/core/data/admin/i_admin_repository.dart'
    as _i38;
import 'package:real_estate_admin_cms/core/data/auth/auth_repository.dart'
    as _i16;
import 'package:real_estate_admin_cms/core/data/auth/i_auth_repository.dart'
    as _i15;
import 'package:real_estate_admin_cms/core/data/connectivity/connectivity_repository.dart'
    as _i20;
import 'package:real_estate_admin_cms/core/data/connectivity/i_connectivity_repository.dart'
    as _i19;
import 'package:real_estate_admin_cms/core/data/estate/i_real_estate_repository.dart'
    as _i23;
import 'package:real_estate_admin_cms/core/data/estate/real_estate_repository.dart'
    as _i24;
import 'package:real_estate_admin_cms/core/data/file/file_repository.dart'
    as _i22;
import 'package:real_estate_admin_cms/core/data/file/i_file_repository.dart'
    as _i21;
import 'package:real_estate_admin_cms/core/data/tour/i_tour_repository.dart'
    as _i40;
import 'package:real_estate_admin_cms/core/data/tour/tour_repository.dart'
    as _i41;
import 'package:real_estate_admin_cms/core/data_source/grpc/admin/service.pbgrpc.dart'
    as _i31;
import 'package:real_estate_admin_cms/core/data_source/grpc/grpc_service.dart'
    as _i8;
import 'package:real_estate_admin_cms/core/data_source/grpc/notification/service.pbgrpc.dart'
    as _i28;
import 'package:real_estate_admin_cms/core/data_source/grpc/tour/service.pbgrpc.dart'
    as _i30;
import 'package:real_estate_admin_cms/core/data_source/local/auth/auth_lcoal_data_source.dart'
    as _i14;
import 'package:real_estate_admin_cms/core/data_source/local/auth/i_auth_local_data_source.dart'
    as _i13;
import 'package:real_estate_admin_cms/core/data_source/local/connectivity/connectivity_datasource.dart'
    as _i18;
import 'package:real_estate_admin_cms/core/data_source/local/connectivity/i_connectivity_datasource.dart'
    as _i17;
import 'package:real_estate_admin_cms/core/data_source/network/admin/admin_datasource.dart'
    as _i37;
import 'package:real_estate_admin_cms/core/data_source/network/admin/i_admin_datasource.dart'
    as _i36;
import 'package:real_estate_admin_cms/core/data_source/network/api_service.dart'
    as _i10;
import 'package:real_estate_admin_cms/core/data_source/network/auth/auth_datasource.dart'
    as _i12;
import 'package:real_estate_admin_cms/core/data_source/network/auth/i_auth_datasource.dart'
    as _i11;
import 'package:real_estate_admin_cms/core/data_source/network/common/interceptor/auth_interceptor.dart'
    as _i33;
import 'package:real_estate_admin_cms/core/data_source/network/tour/i_tour_datasource.dart'
    as _i25;
import 'package:real_estate_admin_cms/core/data_source/network/tour/tour_datasource.dart'
    as _i26;
import 'package:real_estate_admin_cms/features/app/application/app_bloc.dart'
    as _i3;
import 'package:real_estate_admin_cms/features/auth/application/auth_bloc.dart'
    as _i32;
import 'package:real_estate_admin_cms/features/auth/features/login/application/login_bloc.dart'
    as _i27;
import 'package:real_estate_admin_cms/features/common/features/staff/cubit/staff_selected_cubit.dart'
    as _i42;
import 'package:real_estate_admin_cms/features/connectivity/application/connectivity_bloc.dart'
    as _i35;
import 'package:real_estate_admin_cms/features/home/application/home/home_bloc.dart'
    as _i9;
import 'package:real_estate_admin_cms/features/home/features/approval/application/approval_bloc.dart'
    as _i43;
import 'package:shared_preferences/shared_preferences.dart' as _i29;

import '../core/data_source/grpc/grpc_module.dart' as _i44;
import '../core/data_source/module/local_module.dart' as _i46;
import '../core/data_source/module/network_module.dart' as _i47;
import '../core/data_source/module/thirt_module.dart'
    as _i45; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final grpcModule = _$GrpcModule();
    final thirtModule = _$ThirtModule();
    final networkModule = _$NetworkModule();
    final localModule = _$LocalModule();
    gh.factory<_i3.AppBloc>(() => _i3.AppBloc());
    gh.lazySingleton<_i4.ClientChannel>(
        () => grpcModule.getAPIServiceClientChannel());
    gh.lazySingleton<_i5.Connectivity>(() => thirtModule.connectivity);
    gh.factory<_i6.Dio>(
      () => networkModule.dioAuth,
      instanceName: 'authDio',
    );
    gh.factory<_i6.Dio>(
      () => networkModule.dioToken,
      instanceName: 'tokenDio',
    );
    gh.factory<_i6.Dio>(
      () => networkModule.dioDefault,
      instanceName: 'defaultDio',
    );
    gh.lazySingleton<_i7.FlutterSecureStorage>(() => localModule.secureStorage);
    gh.lazySingleton<_i8.GrpcService>(() => _i8.GrpcService());
    gh.factory<_i9.HomeBloc>(() => _i9.HomeBloc());
    gh.lazySingleton<_i10.IApiService>(
      () => _i10.TokenApiService(gh<_i6.Dio>(instanceName: 'tokenDio')),
      instanceName: 'TokenApiService',
    );
    gh.lazySingleton<_i10.IApiService>(
      () => _i10.DefaultApiService(gh<_i6.Dio>(instanceName: 'defaultDio')),
      instanceName: 'DefaultApiService',
    );
    gh.lazySingleton<_i10.IApiService>(
      () => _i10.AuthApiService(gh<_i6.Dio>(instanceName: 'authDio')),
      instanceName: 'AuthApiService',
    );
    gh.lazySingleton<_i11.IAuthDataSource>(() => _i12.AuthDataSource(
        gh<_i10.IApiService>(instanceName: 'DefaultApiService')));
    gh.lazySingleton<_i13.IAuthLocalDataSource>(
        () => _i14.AuthLocalDataSource(gh<_i7.FlutterSecureStorage>()));
    gh.lazySingleton<_i15.IAuthRepository>(() => _i16.AuthRepository(
          gh<_i11.IAuthDataSource>(),
          gh<_i13.IAuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i17.IConnectivityDataSource>(
        () => _i18.ConnectivityDataSource(gh<_i5.Connectivity>()));
    gh.lazySingleton<_i19.IConnectivityRepository>(
        () => _i20.ConnectivityRepository(gh<_i17.IConnectivityDataSource>()));
    gh.lazySingleton<_i21.IFileRepository>(() => _i22.FileRepository(
        gh<_i10.IApiService>(instanceName: 'AuthApiService')));
    gh.lazySingleton<_i23.IRealEstateRepository>(
        () => _i24.RealEstateRepository());
    gh.lazySingleton<_i25.ITourDataSource>(() => _i26.TourDataSource(
        gh<_i10.IApiService>(instanceName: 'AuthApiService')));
    gh.factory<_i27.LoginBloc>(
        () => _i27.LoginBloc(gh<_i15.IAuthRepository>()));
    gh.lazySingleton<_i28.NotificationServiceClient>(
      () => grpcModule.notificationService(
        gh<_i4.ClientChannel>(),
        gh<_i8.GrpcService>(),
      ),
      instanceName: 'GRPC_NOTIFICATION_SERVICE',
    );
    await gh.factoryAsync<_i29.SharedPreferences>(
      () => localModule.prefs,
      preResolve: true,
    );
    gh.factory<String>(
      () => networkModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.lazySingleton<_i30.TourServiceClient>(
      () => grpcModule.tourService(
        gh<_i4.ClientChannel>(),
        gh<_i8.GrpcService>(),
      ),
      instanceName: 'GRPC_TOUR_SERVICE',
    );
    gh.lazySingleton<_i31.AdminServiceClient>(
      () => grpcModule.adminService(
        gh<_i4.ClientChannel>(),
        gh<_i8.GrpcService>(),
      ),
      instanceName: 'GRPC_ADMIN_SERVICE',
    );
    gh.factory<_i32.AuthBloc>(() => _i32.AuthBloc(gh<_i15.IAuthRepository>()));
    gh.factoryParam<_i33.AuthInterceptor, _i34.VoidCallback?, dynamic>((
      onExpireToken,
      _,
    ) =>
        _i33.AuthInterceptor(
          authenticationLocalDataSource: gh<_i13.IAuthLocalDataSource>(),
          authDataSource: gh<_i11.IAuthDataSource>(),
          onExpireToken: onExpireToken,
        ));
    gh.factory<_i35.ConnectivityBloc>(
        () => _i35.ConnectivityBloc(gh<_i19.IConnectivityRepository>()));
    gh.lazySingleton<_i36.IAdminDataSource>(() => _i37.AdminDataSource(
        gh<_i10.IApiService>(instanceName: 'AuthApiService')));
    gh.lazySingleton<_i38.IAdminRepository>(() => _i39.AdminRepository(
          gh<_i31.AdminServiceClient>(instanceName: 'GRPC_ADMIN_SERVICE'),
          gh<_i25.ITourDataSource>(),
          gh<_i36.IAdminDataSource>(),
        ));
    gh.lazySingleton<_i40.ITourRepository>(() => _i41.TourRepository(
          gh<_i30.TourServiceClient>(instanceName: 'GRPC_TOUR_SERVICE'),
          gh<_i25.ITourDataSource>(),
        ));
    gh.factory<_i42.StaffSelectedCubit>(
        () => _i42.StaffSelectedCubit(gh<_i38.IAdminRepository>()));
    gh.factory<_i43.ApprovalBloc>(() => _i43.ApprovalBloc(
          gh<_i40.ITourRepository>(),
          gh<_i38.IAdminRepository>(),
          gh<_i23.IRealEstateRepository>(),
        ));
    return this;
  }
}

class _$GrpcModule extends _i44.GrpcModule {}

class _$ThirtModule extends _i45.ThirtModule {}

class _$LocalModule extends _i46.LocalModule {}

class _$NetworkModule extends _i47.NetworkModule {}
