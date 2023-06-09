part of 'real_estate_detail_bloc.dart';

@freezed
class RealEstateDetailState with _$RealEstateDetailState {
  const factory RealEstateDetailState({
    required String id,
    RealEstate? estate,
    @Default(Status.idle()) Status status,
    @Default(true) bool isShimmer,
  }) = _RealEstateDetailState;
}

@freezed
class RealEstateDetailSuccess with _$RealEstateDetailSuccess {
  const factory RealEstateDetailSuccess.deleteRoom() =
      RealEstateDetailSuccessDeleteRoom;
}
