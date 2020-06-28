// GENERATED CODE - DO NOT MODIFY BY HAND

part of post_custom_fields;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostAdvCustomField> _$postAdvCustomFieldSerializer =
    new _$PostAdvCustomFieldSerializer();

class _$PostAdvCustomFieldSerializer
    implements StructuredSerializer<PostAdvCustomField> {
  @override
  final Iterable<Type> types = const [PostAdvCustomField, _$PostAdvCustomField];
  @override
  final String wireName = 'PostAdvCustomField';

  @override
  Iterable<Object> serialize(Serializers serializers, PostAdvCustomField object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.categories != null) {
      result
        ..add('_categoriees')
        ..add(serializers.serialize(object.categories,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Taxonomy)])));
    }
    if (object.tags != null) {
      result
        ..add('_tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Taxonomy)])));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(Author)));
    }
    if (object.featuredImage != null) {
      result
        ..add('_featured_image')
        ..add(serializers.serialize(object.featuredImage,
            specifiedType: const FullType(
                BuiltList, const [const FullType(FeaturedImage)])));
    }
    return result;
  }

  @override
  PostAdvCustomField deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostAdvCustomFieldBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '_categoriees':
          result.categories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Taxonomy)]))
              as BuiltList<Object>);
          break;
        case '_tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Taxonomy)]))
              as BuiltList<Object>);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(Author)) as Author);
          break;
        case '_featured_image':
          result.featuredImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FeaturedImage)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$PostAdvCustomField extends PostAdvCustomField {
  @override
  final BuiltList<Taxonomy> categories;
  @override
  final BuiltList<Taxonomy> tags;
  @override
  final Author user;
  @override
  final BuiltList<FeaturedImage> featuredImage;

  factory _$PostAdvCustomField(
          [void Function(PostAdvCustomFieldBuilder) updates]) =>
      (new PostAdvCustomFieldBuilder()..update(updates)).build();

  _$PostAdvCustomField._(
      {this.categories, this.tags, this.user, this.featuredImage})
      : super._();

  @override
  PostAdvCustomField rebuild(
          void Function(PostAdvCustomFieldBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostAdvCustomFieldBuilder toBuilder() =>
      new PostAdvCustomFieldBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostAdvCustomField &&
        categories == other.categories &&
        tags == other.tags &&
        user == other.user &&
        featuredImage == other.featuredImage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, categories.hashCode), tags.hashCode), user.hashCode),
        featuredImage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostAdvCustomField')
          ..add('categories', categories)
          ..add('tags', tags)
          ..add('user', user)
          ..add('featuredImage', featuredImage))
        .toString();
  }
}

class PostAdvCustomFieldBuilder
    implements Builder<PostAdvCustomField, PostAdvCustomFieldBuilder> {
  _$PostAdvCustomField _$v;

  ListBuilder<Taxonomy> _categories;
  ListBuilder<Taxonomy> get categories =>
      _$this._categories ??= new ListBuilder<Taxonomy>();
  set categories(ListBuilder<Taxonomy> categories) =>
      _$this._categories = categories;

  ListBuilder<Taxonomy> _tags;
  ListBuilder<Taxonomy> get tags =>
      _$this._tags ??= new ListBuilder<Taxonomy>();
  set tags(ListBuilder<Taxonomy> tags) => _$this._tags = tags;

  AuthorBuilder _user;
  AuthorBuilder get user => _$this._user ??= new AuthorBuilder();
  set user(AuthorBuilder user) => _$this._user = user;

  ListBuilder<FeaturedImage> _featuredImage;
  ListBuilder<FeaturedImage> get featuredImage =>
      _$this._featuredImage ??= new ListBuilder<FeaturedImage>();
  set featuredImage(ListBuilder<FeaturedImage> featuredImage) =>
      _$this._featuredImage = featuredImage;

  PostAdvCustomFieldBuilder() {
    PostAdvCustomField._initializeBuilder(this);
  }

  PostAdvCustomFieldBuilder get _$this {
    if (_$v != null) {
      _categories = _$v.categories?.toBuilder();
      _tags = _$v.tags?.toBuilder();
      _user = _$v.user?.toBuilder();
      _featuredImage = _$v.featuredImage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostAdvCustomField other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PostAdvCustomField;
  }

  @override
  void update(void Function(PostAdvCustomFieldBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostAdvCustomField build() {
    _$PostAdvCustomField _$result;
    try {
      _$result = _$v ??
          new _$PostAdvCustomField._(
              categories: _categories?.build(),
              tags: _tags?.build(),
              user: _user?.build(),
              featuredImage: _featuredImage?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'categories';
        _categories?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'featuredImage';
        _featuredImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostAdvCustomField', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
