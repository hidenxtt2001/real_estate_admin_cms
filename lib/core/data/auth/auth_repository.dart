import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:real_estate_admin_cms/core/data/auth/auth_failures.dart';
import 'package:real_estate_admin_cms/core/data/auth/i_auth_repository.dart';
import 'package:real_estate_admin_cms/core/data/common/i_failure_repository.dart';
import 'package:real_estate_admin_cms/core/data/auth/value_objects.dart';
import 'package:real_estate_admin_cms/core/data/common/network/server_failure.dart';
import 'package:real_estate_admin_cms/core/data/common/repo/repository_action_mixin.dart';
import 'package:real_estate_admin_cms/core/data_source/local/auth/i_auth_local_data_source.dart';
import 'package:real_estate_admin_cms/core/data_source/network/auth/i_auth_datasource.dart';

import 'model/auth_session.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository
    with RepositoryActionMixin<AuthFailures>
    implements IAuthRepository {
  final IAuthDataSource authDataSource;
  final IAuthLocalDataSource localDataSource;
  AuthRepository(this.authDataSource, this.localDataSource);
  @override
  Future<OutputRepository> changePassword(
      String oldPassword, PasswordAuth newPassword) {
    // TODO: implement changePassword
    throw UnimplementedError();
  }

  @override
  Future<OutputRepository<AuthSession>> login(
    PhoneNumberAuth phoneNumber,
    PasswordAuth password,
  ) async {
    try {
      final result = await invokeWithData(
        action: authDataSource.login(
          phoneNumber: phoneNumber.getOrCrash(),
          password: password.getOrCrash(),
        ),
      );
      await Future.wait([
        localDataSource.setRefreshToken(
          refreshToken: result.refreshToken?.token ?? '',
        ),
        localDataSource.setAccessToken(
          accessToken: result.token?.token ?? '',
        )
      ]);
      return right(AuthSession.fromDto(result));
    } on Exception catch (e, trace) {
      return left(handleException(e, trace));
    }
  }

  @override
  Future<OutputRepository<AuthSession>> refreshToken() async {
    try {
      final refresh = await localDataSource.refreshToken();
      if (refresh == null) {
        throw left(const ServerFailure.unAuthorized());
      }
      final result = await invokeWithData(
        action: authDataSource.refreshToken(refreshToken: refresh),
      );
      return right(AuthSession.fromDto(result));
    } on Exception catch (e, trace) {
      return left(handleException(e, trace));
    }
  }

  @override
  Future<OutputRepository> register(NameAuth firstName, NameAuth lastName,
      PhoneNumberAuth phoneNumber, PasswordAuth password) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<OutputRepository> resetPassword(
      PhoneNumberAuth phoneNumber, PasswordAuth password) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  Future<OutputRepository> userInfo() {
    // TODO: implement userInfo
    throw UnimplementedError();
  }

  @override
  Future<OutputRepository> verifyPhoneExist(PhoneNumberAuth phone) {
    // TODO: implement verifyPhoneExist
    throw UnimplementedError();
  }
}
