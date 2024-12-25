// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapters_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChaptersListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getQuranChaptersList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getQuranChaptersList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getQuranChaptersList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuranChaptersList value) getQuranChaptersList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuranChaptersList value)? getQuranChaptersList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuranChaptersList value)? getQuranChaptersList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChaptersListEventCopyWith<$Res> {
  factory $ChaptersListEventCopyWith(
          ChaptersListEvent value, $Res Function(ChaptersListEvent) then) =
      _$ChaptersListEventCopyWithImpl<$Res, ChaptersListEvent>;
}

/// @nodoc
class _$ChaptersListEventCopyWithImpl<$Res, $Val extends ChaptersListEvent>
    implements $ChaptersListEventCopyWith<$Res> {
  _$ChaptersListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetQuranChaptersListImplCopyWith<$Res> {
  factory _$$GetQuranChaptersListImplCopyWith(_$GetQuranChaptersListImpl value,
          $Res Function(_$GetQuranChaptersListImpl) then) =
      __$$GetQuranChaptersListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetQuranChaptersListImplCopyWithImpl<$Res>
    extends _$ChaptersListEventCopyWithImpl<$Res, _$GetQuranChaptersListImpl>
    implements _$$GetQuranChaptersListImplCopyWith<$Res> {
  __$$GetQuranChaptersListImplCopyWithImpl(_$GetQuranChaptersListImpl _value,
      $Res Function(_$GetQuranChaptersListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetQuranChaptersListImpl implements GetQuranChaptersList {
  const _$GetQuranChaptersListImpl();

  @override
  String toString() {
    return 'ChaptersListEvent.getQuranChaptersList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetQuranChaptersListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getQuranChaptersList,
  }) {
    return getQuranChaptersList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getQuranChaptersList,
  }) {
    return getQuranChaptersList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getQuranChaptersList,
    required TResult orElse(),
  }) {
    if (getQuranChaptersList != null) {
      return getQuranChaptersList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetQuranChaptersList value) getQuranChaptersList,
  }) {
    return getQuranChaptersList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetQuranChaptersList value)? getQuranChaptersList,
  }) {
    return getQuranChaptersList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetQuranChaptersList value)? getQuranChaptersList,
    required TResult orElse(),
  }) {
    if (getQuranChaptersList != null) {
      return getQuranChaptersList(this);
    }
    return orElse();
  }
}

abstract class GetQuranChaptersList implements ChaptersListEvent {
  const factory GetQuranChaptersList() = _$GetQuranChaptersListImpl;
}

/// @nodoc
mixin _$ChaptersListState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  List<Chapter> get chaptersList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChaptersListStateCopyWith<ChaptersListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChaptersListStateCopyWith<$Res> {
  factory $ChaptersListStateCopyWith(
          ChaptersListState value, $Res Function(ChaptersListState) then) =
      _$ChaptersListStateCopyWithImpl<$Res, ChaptersListState>;
  @useResult
  $Res call({bool isLoading, bool hasError, List<Chapter> chaptersList});
}

/// @nodoc
class _$ChaptersListStateCopyWithImpl<$Res, $Val extends ChaptersListState>
    implements $ChaptersListStateCopyWith<$Res> {
  _$ChaptersListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? chaptersList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      chaptersList: null == chaptersList
          ? _value.chaptersList
          : chaptersList // ignore: cast_nullable_to_non_nullable
              as List<Chapter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ChaptersListStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool hasError, List<Chapter> chaptersList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ChaptersListStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? chaptersList = null,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      chaptersList: null == chaptersList
          ? _value._chaptersList
          : chaptersList // ignore: cast_nullable_to_non_nullable
              as List<Chapter>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      required final List<Chapter> chaptersList})
      : _chaptersList = chaptersList;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  final List<Chapter> _chaptersList;
  @override
  List<Chapter> get chaptersList {
    if (_chaptersList is EqualUnmodifiableListView) return _chaptersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chaptersList);
  }

  @override
  String toString() {
    return 'ChaptersListState(isLoading: $isLoading, hasError: $hasError, chaptersList: $chaptersList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            const DeepCollectionEquality()
                .equals(other._chaptersList, _chaptersList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError,
      const DeepCollectionEquality().hash(_chaptersList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements ChaptersListState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final List<Chapter> chaptersList}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  List<Chapter> get chaptersList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
