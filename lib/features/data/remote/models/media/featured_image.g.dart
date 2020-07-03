// GENERATED CODE - DO NOT MODIFY BY HAND

part of featured_image;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeaturedImage> _$featuredImageSerializer =
    new _$FeaturedImageSerializer();

class _$FeaturedImageSerializer implements StructuredSerializer<FeaturedImage> {
  @override
  final Iterable<Type> types = const [FeaturedImage, _$FeaturedImage];
  @override
  final String wireName = 'FeaturedImage';

  @override
  Iterable<Object> serialize(Serializers serializers, FeaturedImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('ID')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.rawName != null) {
      result
        ..add('post_title')
        ..add(serializers.serialize(object.rawName,
            specifiedType: const FullType(String)));
    }
    if (object.sourceUrl != null) {
      result
        ..add('guid')
        ..add(serializers.serialize(object.sourceUrl,
            specifiedType: const FullType(String)));
    }
    if (object.mimeType != null) {
      result
        ..add('post_mime_type')
        ..add(serializers.serialize(object.mimeType,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FeaturedImage deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeaturedImageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ID':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'post_title':
          result.rawName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'guid':
          result.sourceUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'post_mime_type':
          result.mimeType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FeaturedImage extends FeaturedImage {
  @override
  final int id;
  @override
  final String rawName;
  @override
  final String sourceUrl;
  @override
  final String mimeType;

  factory _$FeaturedImage([void Function(FeaturedImageBuilder) updates]) =>
      (new FeaturedImageBuilder()..update(updates)).build();

  _$FeaturedImage._({this.id, this.rawName, this.sourceUrl, this.mimeType})
      : super._();

  @override
  FeaturedImage rebuild(void Function(FeaturedImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeaturedImageBuilder toBuilder() => new FeaturedImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeaturedImage &&
        id == other.id &&
        rawName == other.rawName &&
        sourceUrl == other.sourceUrl &&
        mimeType == other.mimeType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), rawName.hashCode), sourceUrl.hashCode),
        mimeType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeaturedImage')
          ..add('id', id)
          ..add('rawName', rawName)
          ..add('sourceUrl', sourceUrl)
          ..add('mimeType', mimeType))
        .toString();
  }
}

class FeaturedImageBuilder
    implements Builder<FeaturedImage, FeaturedImageBuilder> {
  _$FeaturedImage _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _rawName;
  String get rawName => _$this._rawName;
  set rawName(String rawName) => _$this._rawName = rawName;

  String _sourceUrl;
  String get sourceUrl => _$this._sourceUrl;
  set sourceUrl(String sourceUrl) => _$this._sourceUrl = sourceUrl;

  String _mimeType;
  String get mimeType => _$this._mimeType;
  set mimeType(String mimeType) => _$this._mimeType = mimeType;

  FeaturedImageBuilder();

  FeaturedImageBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _rawName = _$v.rawName;
      _sourceUrl = _$v.sourceUrl;
      _mimeType = _$v.mimeType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeaturedImage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeaturedImage;
  }

  @override
  void update(void Function(FeaturedImageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeaturedImage build() {
    final _$result = _$v ??
        new _$FeaturedImage._(
            id: id, rawName: rawName, sourceUrl: sourceUrl, mimeType: mimeType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
