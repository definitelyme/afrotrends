// GENERATED CODE - DO NOT MODIFY BY HAND

part of post;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Post> _$postSerializer = new _$PostSerializer();

class _$PostSerializer implements StructuredSerializer<Post> {
  @override
  final Iterable<Type> types = const [Post, _$Post];
  @override
  final String wireName = 'Post';

  @override
  Iterable<Object> serialize(Serializers serializers, Post object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.slug != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(object.slug,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(Content)));
    }
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(Content)));
    }
    if (object.excerpt != null) {
      result
        ..add('excerpt')
        ..add(serializers.serialize(object.excerpt,
            specifiedType: const FullType(Content)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('link')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.commentStatus != null) {
      result
        ..add('comment_status')
        ..add(serializers.serialize(object.commentStatus,
            specifiedType: const FullType(String)));
    }
    if (object.customField != null) {
      result
        ..add('acf')
        ..add(serializers.serialize(object.customField,
            specifiedType: const FullType(PostAdvCustomField)));
    }
    if (object.createdAt != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.updatedAt != null) {
      result
        ..add('modified')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Post deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
              specifiedType: const FullType(Content)) as Content);
          break;
        case 'content':
          result.content.replace(serializers.deserialize(value,
              specifiedType: const FullType(Content)) as Content);
          break;
        case 'excerpt':
          result.excerpt.replace(serializers.deserialize(value,
              specifiedType: const FullType(Content)) as Content);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'link':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comment_status':
          result.commentStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'acf':
          result.customField.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PostAdvCustomField))
              as PostAdvCustomField);
          break;
        case 'date':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'modified':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Post extends Post {
  @override
  final int id;
  @override
  final String slug;
  @override
  final Content title;
  @override
  final Content content;
  @override
  final Content excerpt;
  @override
  final String status;
  @override
  final String url;
  @override
  final String commentStatus;
  @override
  final PostAdvCustomField customField;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$Post([void Function(PostBuilder) updates]) =>
      (new PostBuilder()..update(updates)).build();

  _$Post._(
      {this.id,
      this.slug,
      this.title,
      this.content,
      this.excerpt,
      this.status,
      this.url,
      this.commentStatus,
      this.customField,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  Post rebuild(void Function(PostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostBuilder toBuilder() => new PostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Post &&
        id == other.id &&
        slug == other.slug &&
        title == other.title &&
        content == other.content &&
        excerpt == other.excerpt &&
        status == other.status &&
        url == other.url &&
        commentStatus == other.commentStatus &&
        customField == other.customField &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc($jc(0, id.hashCode), slug.hashCode),
                                        title.hashCode),
                                    content.hashCode),
                                excerpt.hashCode),
                            status.hashCode),
                        url.hashCode),
                    commentStatus.hashCode),
                customField.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Post')
          ..add('id', id)
          ..add('slug', slug)
          ..add('title', title)
          ..add('content', content)
          ..add('excerpt', excerpt)
          ..add('status', status)
          ..add('url', url)
          ..add('commentStatus', commentStatus)
          ..add('customField', customField)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PostBuilder implements Builder<Post, PostBuilder> {
  _$Post _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  ContentBuilder _title;
  ContentBuilder get title => _$this._title ??= new ContentBuilder();
  set title(ContentBuilder title) => _$this._title = title;

  ContentBuilder _content;
  ContentBuilder get content => _$this._content ??= new ContentBuilder();
  set content(ContentBuilder content) => _$this._content = content;

  ContentBuilder _excerpt;
  ContentBuilder get excerpt => _$this._excerpt ??= new ContentBuilder();
  set excerpt(ContentBuilder excerpt) => _$this._excerpt = excerpt;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _commentStatus;
  String get commentStatus => _$this._commentStatus;
  set commentStatus(String commentStatus) =>
      _$this._commentStatus = commentStatus;

  PostAdvCustomFieldBuilder _customField;
  PostAdvCustomFieldBuilder get customField =>
      _$this._customField ??= new PostAdvCustomFieldBuilder();
  set customField(PostAdvCustomFieldBuilder customField) =>
      _$this._customField = customField;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  PostBuilder();

  PostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _slug = _$v.slug;
      _title = _$v.title?.toBuilder();
      _content = _$v.content?.toBuilder();
      _excerpt = _$v.excerpt?.toBuilder();
      _status = _$v.status;
      _url = _$v.url;
      _commentStatus = _$v.commentStatus;
      _customField = _$v.customField?.toBuilder();
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Post other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Post;
  }

  @override
  void update(void Function(PostBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Post build() {
    _$Post _$result;
    try {
      _$result = _$v ??
          new _$Post._(
              id: id,
              slug: slug,
              title: _title?.build(),
              content: _content?.build(),
              excerpt: _excerpt?.build(),
              status: status,
              url: url,
              commentStatus: commentStatus,
              customField: _customField?.build(),
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'title';
        _title?.build();
        _$failedField = 'content';
        _content?.build();
        _$failedField = 'excerpt';
        _excerpt?.build();

        _$failedField = 'customField';
        _customField?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Post', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
