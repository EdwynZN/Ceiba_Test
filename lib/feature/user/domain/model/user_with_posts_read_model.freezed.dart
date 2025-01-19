// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_with_posts_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserWithPostsReadModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  List<PostReadModel> get posts => throw _privateConstructorUsedError;

  /// Create a copy of UserWithPostsReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserWithPostsReadModelCopyWith<UserWithPostsReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWithPostsReadModelCopyWith<$Res> {
  factory $UserWithPostsReadModelCopyWith(UserWithPostsReadModel value,
          $Res Function(UserWithPostsReadModel) then) =
      _$UserWithPostsReadModelCopyWithImpl<$Res, UserWithPostsReadModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String phone,
      String email,
      List<PostReadModel> posts});
}

/// @nodoc
class _$UserWithPostsReadModelCopyWithImpl<$Res,
        $Val extends UserWithPostsReadModel>
    implements $UserWithPostsReadModelCopyWith<$Res> {
  _$UserWithPostsReadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserWithPostsReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? email = null,
    Object? posts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostReadModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserWithPostsReadModelImplCopyWith<$Res>
    implements $UserWithPostsReadModelCopyWith<$Res> {
  factory _$$UserWithPostsReadModelImplCopyWith(
          _$UserWithPostsReadModelImpl value,
          $Res Function(_$UserWithPostsReadModelImpl) then) =
      __$$UserWithPostsReadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String phone,
      String email,
      List<PostReadModel> posts});
}

/// @nodoc
class __$$UserWithPostsReadModelImplCopyWithImpl<$Res>
    extends _$UserWithPostsReadModelCopyWithImpl<$Res,
        _$UserWithPostsReadModelImpl>
    implements _$$UserWithPostsReadModelImplCopyWith<$Res> {
  __$$UserWithPostsReadModelImplCopyWithImpl(
      _$UserWithPostsReadModelImpl _value,
      $Res Function(_$UserWithPostsReadModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserWithPostsReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? email = null,
    Object? posts = null,
  }) {
    return _then(_$UserWithPostsReadModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostReadModel>,
    ));
  }
}

/// @nodoc

class _$UserWithPostsReadModelImpl implements _UserWithPostsReadModel {
  const _$UserWithPostsReadModelImpl(
      {required this.id,
      required this.name,
      required this.phone,
      required this.email,
      required final List<PostReadModel> posts})
      : _posts = posts;

  @override
  final int id;
  @override
  final String name;
  @override
  final String phone;
  @override
  final String email;
  final List<PostReadModel> _posts;
  @override
  List<PostReadModel> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'UserWithPostsReadModel(id: $id, name: $name, phone: $phone, email: $email, posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserWithPostsReadModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone, email,
      const DeepCollectionEquality().hash(_posts));

  /// Create a copy of UserWithPostsReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserWithPostsReadModelImplCopyWith<_$UserWithPostsReadModelImpl>
      get copyWith => __$$UserWithPostsReadModelImplCopyWithImpl<
          _$UserWithPostsReadModelImpl>(this, _$identity);
}

abstract class _UserWithPostsReadModel implements UserWithPostsReadModel {
  const factory _UserWithPostsReadModel(
      {required final int id,
      required final String name,
      required final String phone,
      required final String email,
      required final List<PostReadModel> posts}) = _$UserWithPostsReadModelImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  String get email;
  @override
  List<PostReadModel> get posts;

  /// Create a copy of UserWithPostsReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserWithPostsReadModelImplCopyWith<_$UserWithPostsReadModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostReadModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  /// Create a copy of PostReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostReadModelCopyWith<PostReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostReadModelCopyWith<$Res> {
  factory $PostReadModelCopyWith(
          PostReadModel value, $Res Function(PostReadModel) then) =
      _$PostReadModelCopyWithImpl<$Res, PostReadModel>;
  @useResult
  $Res call({int id, String title, String body});
}

/// @nodoc
class _$PostReadModelCopyWithImpl<$Res, $Val extends PostReadModel>
    implements $PostReadModelCopyWith<$Res> {
  _$PostReadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostReadModelImplCopyWith<$Res>
    implements $PostReadModelCopyWith<$Res> {
  factory _$$PostReadModelImplCopyWith(
          _$PostReadModelImpl value, $Res Function(_$PostReadModelImpl) then) =
      __$$PostReadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String body});
}

/// @nodoc
class __$$PostReadModelImplCopyWithImpl<$Res>
    extends _$PostReadModelCopyWithImpl<$Res, _$PostReadModelImpl>
    implements _$$PostReadModelImplCopyWith<$Res> {
  __$$PostReadModelImplCopyWithImpl(
      _$PostReadModelImpl _value, $Res Function(_$PostReadModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$PostReadModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostReadModelImpl implements _PostReadModel {
  const _$PostReadModelImpl(
      {required this.id, required this.title, required this.body});

  @override
  final int id;
  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'PostReadModel(id: $id, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostReadModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, body);

  /// Create a copy of PostReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostReadModelImplCopyWith<_$PostReadModelImpl> get copyWith =>
      __$$PostReadModelImplCopyWithImpl<_$PostReadModelImpl>(this, _$identity);
}

abstract class _PostReadModel implements PostReadModel {
  const factory _PostReadModel(
      {required final int id,
      required final String title,
      required final String body}) = _$PostReadModelImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  String get body;

  /// Create a copy of PostReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostReadModelImplCopyWith<_$PostReadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
