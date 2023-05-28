import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data/estate/model/real_estate.dart';
import 'package:real_estate_admin_cms/core/data_source/grpc/tour/tour.pb.dart';
import 'package:real_estate_admin_cms/core/data_source/network/auth/dto/info/user_dto/user_dto.dart';
import 'package:real_estate_admin_cms/core/data_source/network/tour/dto/tour_response.dart';

import '../../auth/model/user.dart';
import '../enum/tour_status.dart';
import '../enum/tour_type.dart';

part 'tour.freezed.dart';
part 'tour.g.dart';



@freezed
class Tour with _$Tour {
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
const factory Tour({
    required int id,
    DateTime? date,
    required TourType type,
    String? extraData,
    User? staff,
    required TourStatus status,
    required RealEstate realEstate,
    required User user,
  }) = _Tour;

  factory Tour.fromJson(Map<String, dynamic> json) => _$TourFromJson(json);

  @unfreezed
  factory Tour.fromDto(TourInfo dto) {
    return Tour(
      id: dto.id,
      staff: User.fromDto(dto.staff),
      date: DateTime.tryParse(dto.date),
      status: TourStatus.fromValue(dto.status),
      type: TourType.fromValue(dto.type),
      extraData: dto.extraData, realEstate: RealEstate.fromDto(dto.realEstate), user: User.fromDto(dto.user),
    );
  }

}
