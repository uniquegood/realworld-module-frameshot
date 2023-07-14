// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'frameshot_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FrameshotState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() permission,
    required TResult Function(String imageUrl, CameraController controller)
        view,
    required TResult Function(@Uint8ListConverter() Uint8List image) show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? permission,
    TResult? Function(String imageUrl, CameraController controller)? view,
    TResult? Function(@Uint8ListConverter() Uint8List image)? show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? permission,
    TResult Function(String imageUrl, CameraController controller)? view,
    TResult Function(@Uint8ListConverter() Uint8List image)? show,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FrameshotInitialize value) initialize,
    required TResult Function(FrameshotPermission value) permission,
    required TResult Function(FrameshotView value) view,
    required TResult Function(FrameshotShow value) show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FrameshotInitialize value)? initialize,
    TResult? Function(FrameshotPermission value)? permission,
    TResult? Function(FrameshotView value)? view,
    TResult? Function(FrameshotShow value)? show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FrameshotInitialize value)? initialize,
    TResult Function(FrameshotPermission value)? permission,
    TResult Function(FrameshotView value)? view,
    TResult Function(FrameshotShow value)? show,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrameshotStateCopyWith<$Res> {
  factory $FrameshotStateCopyWith(
          FrameshotState value, $Res Function(FrameshotState) then) =
      _$FrameshotStateCopyWithImpl<$Res, FrameshotState>;
}

/// @nodoc
class _$FrameshotStateCopyWithImpl<$Res, $Val extends FrameshotState>
    implements $FrameshotStateCopyWith<$Res> {
  _$FrameshotStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FrameshotInitializeCopyWith<$Res> {
  factory _$$FrameshotInitializeCopyWith(_$FrameshotInitialize value,
          $Res Function(_$FrameshotInitialize) then) =
      __$$FrameshotInitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FrameshotInitializeCopyWithImpl<$Res>
    extends _$FrameshotStateCopyWithImpl<$Res, _$FrameshotInitialize>
    implements _$$FrameshotInitializeCopyWith<$Res> {
  __$$FrameshotInitializeCopyWithImpl(
      _$FrameshotInitialize _value, $Res Function(_$FrameshotInitialize) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FrameshotInitialize
    with DiagnosticableTreeMixin
    implements FrameshotInitialize {
  const _$FrameshotInitialize();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FrameshotState.initialize()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FrameshotState.initialize'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FrameshotInitialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() permission,
    required TResult Function(String imageUrl, CameraController controller)
        view,
    required TResult Function(@Uint8ListConverter() Uint8List image) show,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? permission,
    TResult? Function(String imageUrl, CameraController controller)? view,
    TResult? Function(@Uint8ListConverter() Uint8List image)? show,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? permission,
    TResult Function(String imageUrl, CameraController controller)? view,
    TResult Function(@Uint8ListConverter() Uint8List image)? show,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FrameshotInitialize value) initialize,
    required TResult Function(FrameshotPermission value) permission,
    required TResult Function(FrameshotView value) view,
    required TResult Function(FrameshotShow value) show,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FrameshotInitialize value)? initialize,
    TResult? Function(FrameshotPermission value)? permission,
    TResult? Function(FrameshotView value)? view,
    TResult? Function(FrameshotShow value)? show,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FrameshotInitialize value)? initialize,
    TResult Function(FrameshotPermission value)? permission,
    TResult Function(FrameshotView value)? view,
    TResult Function(FrameshotShow value)? show,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class FrameshotInitialize implements FrameshotState {
  const factory FrameshotInitialize() = _$FrameshotInitialize;
}

/// @nodoc
abstract class _$$FrameshotPermissionCopyWith<$Res> {
  factory _$$FrameshotPermissionCopyWith(_$FrameshotPermission value,
          $Res Function(_$FrameshotPermission) then) =
      __$$FrameshotPermissionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FrameshotPermissionCopyWithImpl<$Res>
    extends _$FrameshotStateCopyWithImpl<$Res, _$FrameshotPermission>
    implements _$$FrameshotPermissionCopyWith<$Res> {
  __$$FrameshotPermissionCopyWithImpl(
      _$FrameshotPermission _value, $Res Function(_$FrameshotPermission) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FrameshotPermission
    with DiagnosticableTreeMixin
    implements FrameshotPermission {
  const _$FrameshotPermission();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FrameshotState.permission()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FrameshotState.permission'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FrameshotPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() permission,
    required TResult Function(String imageUrl, CameraController controller)
        view,
    required TResult Function(@Uint8ListConverter() Uint8List image) show,
  }) {
    return permission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? permission,
    TResult? Function(String imageUrl, CameraController controller)? view,
    TResult? Function(@Uint8ListConverter() Uint8List image)? show,
  }) {
    return permission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? permission,
    TResult Function(String imageUrl, CameraController controller)? view,
    TResult Function(@Uint8ListConverter() Uint8List image)? show,
    required TResult orElse(),
  }) {
    if (permission != null) {
      return permission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FrameshotInitialize value) initialize,
    required TResult Function(FrameshotPermission value) permission,
    required TResult Function(FrameshotView value) view,
    required TResult Function(FrameshotShow value) show,
  }) {
    return permission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FrameshotInitialize value)? initialize,
    TResult? Function(FrameshotPermission value)? permission,
    TResult? Function(FrameshotView value)? view,
    TResult? Function(FrameshotShow value)? show,
  }) {
    return permission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FrameshotInitialize value)? initialize,
    TResult Function(FrameshotPermission value)? permission,
    TResult Function(FrameshotView value)? view,
    TResult Function(FrameshotShow value)? show,
    required TResult orElse(),
  }) {
    if (permission != null) {
      return permission(this);
    }
    return orElse();
  }
}

abstract class FrameshotPermission implements FrameshotState {
  const factory FrameshotPermission() = _$FrameshotPermission;
}

/// @nodoc
abstract class _$$FrameshotViewCopyWith<$Res> {
  factory _$$FrameshotViewCopyWith(
          _$FrameshotView value, $Res Function(_$FrameshotView) then) =
      __$$FrameshotViewCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageUrl, CameraController controller});
}

/// @nodoc
class __$$FrameshotViewCopyWithImpl<$Res>
    extends _$FrameshotStateCopyWithImpl<$Res, _$FrameshotView>
    implements _$$FrameshotViewCopyWith<$Res> {
  __$$FrameshotViewCopyWithImpl(
      _$FrameshotView _value, $Res Function(_$FrameshotView) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? controller = null,
  }) {
    return _then(_$FrameshotView(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController,
    ));
  }
}

/// @nodoc

class _$FrameshotView with DiagnosticableTreeMixin implements FrameshotView {
  const _$FrameshotView({required this.imageUrl, required this.controller});

  @override
  final String imageUrl;
  @override
  final CameraController controller;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FrameshotState.view(imageUrl: $imageUrl, controller: $controller)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FrameshotState.view'))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('controller', controller));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FrameshotView &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FrameshotViewCopyWith<_$FrameshotView> get copyWith =>
      __$$FrameshotViewCopyWithImpl<_$FrameshotView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() permission,
    required TResult Function(String imageUrl, CameraController controller)
        view,
    required TResult Function(@Uint8ListConverter() Uint8List image) show,
  }) {
    return view(imageUrl, controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? permission,
    TResult? Function(String imageUrl, CameraController controller)? view,
    TResult? Function(@Uint8ListConverter() Uint8List image)? show,
  }) {
    return view?.call(imageUrl, controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? permission,
    TResult Function(String imageUrl, CameraController controller)? view,
    TResult Function(@Uint8ListConverter() Uint8List image)? show,
    required TResult orElse(),
  }) {
    if (view != null) {
      return view(imageUrl, controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FrameshotInitialize value) initialize,
    required TResult Function(FrameshotPermission value) permission,
    required TResult Function(FrameshotView value) view,
    required TResult Function(FrameshotShow value) show,
  }) {
    return view(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FrameshotInitialize value)? initialize,
    TResult? Function(FrameshotPermission value)? permission,
    TResult? Function(FrameshotView value)? view,
    TResult? Function(FrameshotShow value)? show,
  }) {
    return view?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FrameshotInitialize value)? initialize,
    TResult Function(FrameshotPermission value)? permission,
    TResult Function(FrameshotView value)? view,
    TResult Function(FrameshotShow value)? show,
    required TResult orElse(),
  }) {
    if (view != null) {
      return view(this);
    }
    return orElse();
  }
}

abstract class FrameshotView implements FrameshotState {
  const factory FrameshotView(
      {required final String imageUrl,
      required final CameraController controller}) = _$FrameshotView;

  String get imageUrl;
  CameraController get controller;
  @JsonKey(ignore: true)
  _$$FrameshotViewCopyWith<_$FrameshotView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FrameshotShowCopyWith<$Res> {
  factory _$$FrameshotShowCopyWith(
          _$FrameshotShow value, $Res Function(_$FrameshotShow) then) =
      __$$FrameshotShowCopyWithImpl<$Res>;
  @useResult
  $Res call({@Uint8ListConverter() Uint8List image});
}

/// @nodoc
class __$$FrameshotShowCopyWithImpl<$Res>
    extends _$FrameshotStateCopyWithImpl<$Res, _$FrameshotShow>
    implements _$$FrameshotShowCopyWith<$Res> {
  __$$FrameshotShowCopyWithImpl(
      _$FrameshotShow _value, $Res Function(_$FrameshotShow) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$FrameshotShow(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$FrameshotShow with DiagnosticableTreeMixin implements FrameshotShow {
  const _$FrameshotShow({@Uint8ListConverter() required this.image});

  @override
  @Uint8ListConverter()
  final Uint8List image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FrameshotState.show(image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FrameshotState.show'))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FrameshotShow &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FrameshotShowCopyWith<_$FrameshotShow> get copyWith =>
      __$$FrameshotShowCopyWithImpl<_$FrameshotShow>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() permission,
    required TResult Function(String imageUrl, CameraController controller)
        view,
    required TResult Function(@Uint8ListConverter() Uint8List image) show,
  }) {
    return show(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? permission,
    TResult? Function(String imageUrl, CameraController controller)? view,
    TResult? Function(@Uint8ListConverter() Uint8List image)? show,
  }) {
    return show?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? permission,
    TResult Function(String imageUrl, CameraController controller)? view,
    TResult Function(@Uint8ListConverter() Uint8List image)? show,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FrameshotInitialize value) initialize,
    required TResult Function(FrameshotPermission value) permission,
    required TResult Function(FrameshotView value) view,
    required TResult Function(FrameshotShow value) show,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FrameshotInitialize value)? initialize,
    TResult? Function(FrameshotPermission value)? permission,
    TResult? Function(FrameshotView value)? view,
    TResult? Function(FrameshotShow value)? show,
  }) {
    return show?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FrameshotInitialize value)? initialize,
    TResult Function(FrameshotPermission value)? permission,
    TResult Function(FrameshotView value)? view,
    TResult Function(FrameshotShow value)? show,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class FrameshotShow implements FrameshotState {
  const factory FrameshotShow(
      {@Uint8ListConverter() required final Uint8List image}) = _$FrameshotShow;

  @Uint8ListConverter()
  Uint8List get image;
  @JsonKey(ignore: true)
  _$$FrameshotShowCopyWith<_$FrameshotShow> get copyWith =>
      throw _privateConstructorUsedError;
}
