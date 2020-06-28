// GENERATED CODE - DO NOT MODIFY BY HAND

part of thumbnail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Thumbnail> _$thumbnailSerializer = new _$ThumbnailSerializer();

class _$ThumbnailSerializer implements StructuredSerializer<Thumbnail> {
  @override
  final Iterable<Type> types = const [Thumbnail, _$Thumbnail];
  @override
  final String wireName = 'Thumbnail';

  @override
  Iterable<Object> serialize(Serializers serializers, Thumbnail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.i24 != null) {
      result
        ..add('24')
        ..add(serializers.serialize(object.i24,
            specifiedType: const FullType(String)));
    }
    if (object.i48 != null) {
      result
        ..add('48')
        ..add(serializers.serialize(object.i48,
            specifiedType: const FullType(String)));
    }
    if (object.i96 != null) {
      result
        ..add('96')
        ..add(serializers.serialize(object.i96,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Thumbnail deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ThumbnailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '24':
          result.i24 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '48':
          result.i48 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '96':
          result.i96 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Thumbnail extends Thumbnail {
  @override
  final String i24;
  @override
  final String i48;
  @override
  final String i96;

  factory _$Thumbnail([void Function(ThumbnailBuilder) updates]) =>
      (new ThumbnailBuilder()..update(updates)).build();

  _$Thumbnail._({this.i24, this.i48, this.i96}) : super._();

  @override
  Thumbnail rebuild(void Function(ThumbnailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThumbnailBuilder toBuilder() => new ThumbnailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Thumbnail &&
        i24 == other.i24 &&
        i48 == other.i48 &&
        i96 == other.i96;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, i24.hashCode), i48.hashCode), i96.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Thumbnail')
          ..add('i24', i24)
          ..add('i48', i48)
          ..add('i96', i96))
        .toString();
  }
}

class ThumbnailBuilder implements Builder<Thumbnail, ThumbnailBuilder> {
  _$Thumbnail _$v;

  String _i24;
  String get i24 => _$this._i24;
  set i24(String i24) => _$this._i24 = i24;

  String _i48;
  String get i48 => _$this._i48;
  set i48(String i48) => _$this._i48 = i48;

  String _i96;
  String get i96 => _$this._i96;
  set i96(String i96) => _$this._i96 = i96;

  ThumbnailBuilder();

  ThumbnailBuilder get _$this {
    if (_$v != null) {
      _i24 = _$v.i24;
      _i48 = _$v.i48;
      _i96 = _$v.i96;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Thumbnail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Thumbnail;
  }

  @override
  void update(void Function(ThumbnailBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Thumbnail build() {
    final _$result = _$v ?? new _$Thumbnail._(i24: i24, i48: i48, i96: i96);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
