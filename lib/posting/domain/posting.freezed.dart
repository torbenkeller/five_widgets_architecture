// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'posting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Posting _$PostingFromJson(Map<String, dynamic> json) {
  return _Posting.fromJson(json);
}

/// @nodoc
mixin _$Posting {
  String get id => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  int get votes => throw _privateConstructorUsedError;
  PostingVote? get myVote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostingCopyWith<Posting> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostingCopyWith<$Res> {
  factory $PostingCopyWith(Posting value, $Res Function(Posting) then) =
      _$PostingCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String body,
      DateTime createdAt,
      int votes,
      PostingVote? myVote});
}

/// @nodoc
class _$PostingCopyWithImpl<$Res> implements $PostingCopyWith<$Res> {
  _$PostingCopyWithImpl(this._value, this._then);

  final Posting _value;
  // ignore: unused_field
  final $Res Function(Posting) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
    Object? createdAt = freezed,
    Object? votes = freezed,
    Object? myVote = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      votes: votes == freezed
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as int,
      myVote: myVote == freezed
          ? _value.myVote
          : myVote // ignore: cast_nullable_to_non_nullable
              as PostingVote?,
    ));
  }
}

/// @nodoc
abstract class _$$_PostingCopyWith<$Res> implements $PostingCopyWith<$Res> {
  factory _$$_PostingCopyWith(
          _$_Posting value, $Res Function(_$_Posting) then) =
      __$$_PostingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String body,
      DateTime createdAt,
      int votes,
      PostingVote? myVote});
}

/// @nodoc
class __$$_PostingCopyWithImpl<$Res> extends _$PostingCopyWithImpl<$Res>
    implements _$$_PostingCopyWith<$Res> {
  __$$_PostingCopyWithImpl(_$_Posting _value, $Res Function(_$_Posting) _then)
      : super(_value, (v) => _then(v as _$_Posting));

  @override
  _$_Posting get _value => super._value as _$_Posting;

  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
    Object? createdAt = freezed,
    Object? votes = freezed,
    Object? myVote = freezed,
  }) {
    return _then(_$_Posting(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      votes: votes == freezed
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as int,
      myVote: myVote == freezed
          ? _value.myVote
          : myVote // ignore: cast_nullable_to_non_nullable
              as PostingVote?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Posting extends _Posting {
  const _$_Posting(
      {required this.id,
      required this.body,
      required this.createdAt,
      required this.votes,
      this.myVote})
      : super._();

  factory _$_Posting.fromJson(Map<String, dynamic> json) =>
      _$$_PostingFromJson(json);

  @override
  final String id;
  @override
  final String body;
  @override
  final DateTime createdAt;
  @override
  final int votes;
  @override
  final PostingVote? myVote;

  @override
  String toString() {
    return 'Posting(id: $id, body: $body, createdAt: $createdAt, votes: $votes, myVote: $myVote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Posting &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.votes, votes) &&
            const DeepCollectionEquality().equals(other.myVote, myVote));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(votes),
      const DeepCollectionEquality().hash(myVote));

  @JsonKey(ignore: true)
  @override
  _$$_PostingCopyWith<_$_Posting> get copyWith =>
      __$$_PostingCopyWithImpl<_$_Posting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostingToJson(
      this,
    );
  }
}

abstract class _Posting extends Posting {
  const factory _Posting(
      {required final String id,
      required final String body,
      required final DateTime createdAt,
      required final int votes,
      final PostingVote? myVote}) = _$_Posting;
  const _Posting._() : super._();

  factory _Posting.fromJson(Map<String, dynamic> json) = _$_Posting.fromJson;

  @override
  String get id;
  @override
  String get body;
  @override
  DateTime get createdAt;
  @override
  int get votes;
  @override
  PostingVote? get myVote;
  @override
  @JsonKey(ignore: true)
  _$$_PostingCopyWith<_$_Posting> get copyWith =>
      throw _privateConstructorUsedError;
}
