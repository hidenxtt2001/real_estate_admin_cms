// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'approval_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApprovalState _$ApprovalStateFromJson(Map<String, dynamic> json) {
  return _ApprovalState.fromJson(json);
}

/// @nodoc
mixin _$ApprovalState {
  bool get shimmer => throw _privateConstructorUsedError;
  List<Tour> get tours => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError; // Filter
  List<User> get staffs => throw _privateConstructorUsedError;
  User? get staffFilter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApprovalStateCopyWith<ApprovalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovalStateCopyWith<$Res> {
  factory $ApprovalStateCopyWith(
          ApprovalState value, $Res Function(ApprovalState) then) =
      _$ApprovalStateCopyWithImpl<$Res, ApprovalState>;
  @useResult
  $Res call(
      {bool shimmer,
      List<Tour> tours,
      int page,
      Status status,
      List<User> staffs,
      User? staffFilter});

  $StatusCopyWith<$Res> get status;
  $UserCopyWith<$Res>? get staffFilter;
}

/// @nodoc
class _$ApprovalStateCopyWithImpl<$Res, $Val extends ApprovalState>
    implements $ApprovalStateCopyWith<$Res> {
  _$ApprovalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shimmer = null,
    Object? tours = null,
    Object? page = null,
    Object? status = null,
    Object? staffs = null,
    Object? staffFilter = freezed,
  }) {
    return _then(_value.copyWith(
      shimmer: null == shimmer
          ? _value.shimmer
          : shimmer // ignore: cast_nullable_to_non_nullable
              as bool,
      tours: null == tours
          ? _value.tours
          : tours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      staffs: null == staffs
          ? _value.staffs
          : staffs // ignore: cast_nullable_to_non_nullable
              as List<User>,
      staffFilter: freezed == staffFilter
          ? _value.staffFilter
          : staffFilter // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get staffFilter {
    if (_value.staffFilter == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.staffFilter!, (value) {
      return _then(_value.copyWith(staffFilter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApprovalStateCopyWith<$Res>
    implements $ApprovalStateCopyWith<$Res> {
  factory _$$_ApprovalStateCopyWith(
          _$_ApprovalState value, $Res Function(_$_ApprovalState) then) =
      __$$_ApprovalStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool shimmer,
      List<Tour> tours,
      int page,
      Status status,
      List<User> staffs,
      User? staffFilter});

  @override
  $StatusCopyWith<$Res> get status;
  @override
  $UserCopyWith<$Res>? get staffFilter;
}

/// @nodoc
class __$$_ApprovalStateCopyWithImpl<$Res>
    extends _$ApprovalStateCopyWithImpl<$Res, _$_ApprovalState>
    implements _$$_ApprovalStateCopyWith<$Res> {
  __$$_ApprovalStateCopyWithImpl(
      _$_ApprovalState _value, $Res Function(_$_ApprovalState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shimmer = null,
    Object? tours = null,
    Object? page = null,
    Object? status = null,
    Object? staffs = null,
    Object? staffFilter = freezed,
  }) {
    return _then(_$_ApprovalState(
      shimmer: null == shimmer
          ? _value.shimmer
          : shimmer // ignore: cast_nullable_to_non_nullable
              as bool,
      tours: null == tours
          ? _value._tours
          : tours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      staffs: null == staffs
          ? _value._staffs
          : staffs // ignore: cast_nullable_to_non_nullable
              as List<User>,
      staffFilter: freezed == staffFilter
          ? _value.staffFilter
          : staffFilter // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApprovalState implements _ApprovalState {
  const _$_ApprovalState(
      {this.shimmer = false,
      final List<Tour> tours = const [],
      this.page = 0,
      this.status = const Status.idle(),
      final List<User> staffs = const [],
      this.staffFilter})
      : _tours = tours,
        _staffs = staffs;

  factory _$_ApprovalState.fromJson(Map<String, dynamic> json) =>
      _$$_ApprovalStateFromJson(json);

  @override
  @JsonKey()
  final bool shimmer;
  final List<Tour> _tours;
  @override
  @JsonKey()
  List<Tour> get tours {
    if (_tours is EqualUnmodifiableListView) return _tours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tours);
  }

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final Status status;
// Filter
  final List<User> _staffs;
// Filter
  @override
  @JsonKey()
  List<User> get staffs {
    if (_staffs is EqualUnmodifiableListView) return _staffs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_staffs);
  }

  @override
  final User? staffFilter;

  @override
  String toString() {
    return 'ApprovalState(shimmer: $shimmer, tours: $tours, page: $page, status: $status, staffs: $staffs, staffFilter: $staffFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApprovalState &&
            (identical(other.shimmer, shimmer) || other.shimmer == shimmer) &&
            const DeepCollectionEquality().equals(other._tours, _tours) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._staffs, _staffs) &&
            (identical(other.staffFilter, staffFilter) ||
                other.staffFilter == staffFilter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      shimmer,
      const DeepCollectionEquality().hash(_tours),
      page,
      status,
      const DeepCollectionEquality().hash(_staffs),
      staffFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApprovalStateCopyWith<_$_ApprovalState> get copyWith =>
      __$$_ApprovalStateCopyWithImpl<_$_ApprovalState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApprovalStateToJson(
      this,
    );
  }
}

abstract class _ApprovalState implements ApprovalState {
  const factory _ApprovalState(
      {final bool shimmer,
      final List<Tour> tours,
      final int page,
      final Status status,
      final List<User> staffs,
      final User? staffFilter}) = _$_ApprovalState;

  factory _ApprovalState.fromJson(Map<String, dynamic> json) =
      _$_ApprovalState.fromJson;

  @override
  bool get shimmer;
  @override
  List<Tour> get tours;
  @override
  int get page;
  @override
  Status get status;
  @override // Filter
  List<User> get staffs;
  @override
  User? get staffFilter;
  @override
  @JsonKey(ignore: true)
  _$$_ApprovalStateCopyWith<_$_ApprovalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ApprovalEvent {}

/// @nodoc

class _$ApprovalEventOnStarted implements ApprovalEventOnStarted {
  const _$ApprovalEventOnStarted();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApprovalEventOnStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class ApprovalEventOnStarted implements ApprovalEvent {
  const factory ApprovalEventOnStarted() = _$ApprovalEventOnStarted;
}

/// @nodoc

class _$ApprovalEventOnFetch implements ApprovalEventOnFetch {
  const _$ApprovalEventOnFetch(
      {this.page = 0, this.size = 15, this.status, this.staffId});

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int size;
  @override
  final TourStatus? status;
  @override
  final int? staffId;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovalEventOnFetch &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.staffId, staffId) || other.staffId == staffId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, size, status, staffId);
}

abstract class ApprovalEventOnFetch implements ApprovalEvent {
  const factory ApprovalEventOnFetch(
      {final int page,
      final int size,
      final TourStatus? status,
      final int? staffId}) = _$ApprovalEventOnFetch;

  int get page;
  int get size;
  TourStatus? get status;
  int? get staffId;
}

/// @nodoc

class _$ApprovalEventOnFetchStaffs implements ApprovalEventOnFetchStaffs {
  const _$ApprovalEventOnFetchStaffs();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovalEventOnFetchStaffs);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class ApprovalEventOnFetchStaffs implements ApprovalEvent {
  const factory ApprovalEventOnFetchStaffs() = _$ApprovalEventOnFetchStaffs;
}

/// @nodoc

class _$ApprovalEventOnAssignStaff implements ApprovalEventOnAssignStaff {
  const _$ApprovalEventOnAssignStaff(this.tourId, this.staffId);

  @override
  final int tourId;
  @override
  final int staffId;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovalEventOnAssignStaff &&
            (identical(other.tourId, tourId) || other.tourId == tourId) &&
            (identical(other.staffId, staffId) || other.staffId == staffId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tourId, staffId);
}

abstract class ApprovalEventOnAssignStaff implements ApprovalEvent {
  const factory ApprovalEventOnAssignStaff(
      final int tourId, final int staffId) = _$ApprovalEventOnAssignStaff;

  int get tourId;
  int get staffId;
}

/// @nodoc

class _$ApprovalEventOnReject implements ApprovalEventOnReject {
  const _$ApprovalEventOnReject(this.tourId, this.reason);

  @override
  final int tourId;
  @override
  final String reason;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovalEventOnReject &&
            (identical(other.tourId, tourId) || other.tourId == tourId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tourId, reason);
}

abstract class ApprovalEventOnReject implements ApprovalEvent {
  const factory ApprovalEventOnReject(final int tourId, final String reason) =
      _$ApprovalEventOnReject;

  int get tourId;
  String get reason;
}

/// @nodoc

class _$ApprovalEventOnStaffFilterChange
    implements ApprovalEventOnStaffFilterChange {
  const _$ApprovalEventOnStaffFilterChange(this.staff);

  @override
  final User? staff;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovalEventOnStaffFilterChange &&
            (identical(other.staff, staff) || other.staff == staff));
  }

  @override
  int get hashCode => Object.hash(runtimeType, staff);
}

abstract class ApprovalEventOnStaffFilterChange implements ApprovalEvent {
  const factory ApprovalEventOnStaffFilterChange(final User? staff) =
      _$ApprovalEventOnStaffFilterChange;

  User? get staff;
}
