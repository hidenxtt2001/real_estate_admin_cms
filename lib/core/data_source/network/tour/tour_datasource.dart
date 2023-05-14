import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data_source/network/api_service.dart';
import 'package:real_estate_admin_cms/core/data_source/network/tour/dto/tour_response.dart';
import 'package:real_estate_admin_cms/core/data_source/network/tour/dto/filter_admin_tour_request.dart';
import 'package:real_estate_admin_cms/core/data_source/network/common/base_response.dart';
import 'package:real_estate_admin_cms/core/data_source/network/tour/i_tour_datasource.dart';
import 'package:real_estate_admin_cms/core/data_source/network/tour/tour_constant.dart';

@LazySingleton(as: ITourDataSource)
class TourDataSource implements ITourDataSource {
  final IApiService apiService;

  TourDataSource(@Named.from(AuthApiService) this.apiService);
  @override
  Future<BaseResponse<List<TourResponse>>> tourAdmin(
      FilterAdminTourRequest request) {
    return apiService.postWithListResponse(
      TourConstant.admin,
      request.toJson(),
      resultParser: (result) {
        return result.map(TourResponse.fromJson).toList();
      },
    );
  }
}