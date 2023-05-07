import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real_estate_admin_cms/core/data/common/i_failure_repository.dart';
import 'package:real_estate_admin_cms/utils/freezed/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

@freezedFailure
class AuthFailures with _$AuthFailures, IFailureRepository {
  const factory AuthFailures.emailAddressInvalid() =
      AuthFailuresEmailAddressInvalid;
  const factory AuthFailures.passwordInvalid() = AuthFailuresPasswordInvalid;
  const factory AuthFailures.fullNameInvalid() = AuthFailureFullNameInvalid;
  const factory AuthFailures.nameInvalid() = AuthFailureNameInvalid;
  const factory AuthFailures.phoneNumberInvalid() =
      AuthFailurePhoneNumberInvalid;
  const factory AuthFailures.combinePhoneNumberOrPasswordInvalid() =
      AuthFailureCombinePhoneOrPasswordInvlaid;
  const factory AuthFailures.userAlreadyExist() = AuthFailureUserAlreadyExist;
  const factory AuthFailures.unknow() = AuthFailuresUnknow;
  const factory AuthFailures.unAuthoiation() = AuthFailuresUnAuthorization;
  const factory AuthFailures.cannotCreateUser() = AuthFailuresCannotCreateUser;
}
