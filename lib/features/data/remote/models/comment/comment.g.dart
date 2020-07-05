// GENERATED CODE - DO NOT MODIFY BY HAND

part of comment;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Comment> _$commentSerializer = new _$CommentSerializer();

class _$CommentSerializer implements StructuredSerializer<Comment> {
  @override
  final Iterable<Type> types = const [Comment, _$Comment];
  @override
  final String wireName = 'Comment';

  @override
  Iterable<Object> serialize(Serializers serializers, Comment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.postId != null) {
      result
        ..add('post')
        ..add(serializers.serialize(object.postId,
            specifiedType: const FullType(int)));
    }
    if (object.authorName != null) {
      result
        ..add('author_name')
        ..add(serializers.serialize(object.authorName,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(Content)));
    }
    if (object.link != null) {
      result
        ..add('link')
        ..add(serializers.serialize(object.link,
            specifiedType: const FullType(String)));
    }
    if (object.thumbnail != null) {
      result
        ..add('author_avatar_urls')
        ..add(serializers.serialize(object.thumbnail,
            specifiedType: const FullType(Thumbnail)));
    }
    return result;
  }

  @override
  Comment deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentBuilder();

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
        case 'post':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'author_name':
          result.authorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content.replace(serializers.deserialize(value,
              specifiedType: const FullType(Content)) as Content);
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author_avatar_urls':
          result.thumbnail.replace(serializers.deserialize(value,
              specifiedType: const FullType(Thumbnail)) as Thumbnail);
          break;
      }
    }

    return result.build();
  }
}

class _$Comment extends Comment {
  @override
  final int id;
  @override
  final int postId;
  @override
  final String authorName;
  @override
  final String createdAt;
  @override
  final Content content;
  @override
  final String link;
  @override
  final Thumbnail thumbnail;

  factory _$Comment([void Function(CommentBuilder) updates]) =>
      (new CommentBuilder()..update(updates)).build();

  _$Comment._(
      {this.id,
      this.postId,
      this.authorName,
      this.createdAt,
      this.content,
      this.link,
      this.thumbnail})
      : super._();

  @override
  Comment rebuild(void Function(CommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentBuilder toBuilder() => new CommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
        id == other.id &&
        postId == other.postId &&
        authorName == other.authorName &&
        createdAt == other.createdAt &&
        content == other.content &&
        link == other.link &&
        thumbnail == other.thumbnail;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), postId.hashCode),
                        authorName.hashCode),
                    createdAt.hashCode),
                content.hashCode),
            link.hashCode),
        thumbnail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Comment')
          ..add('id', id)
          ..add('postId', postId)
          ..add('authorName', authorName)
          ..add('createdAt', createdAt)
          ..add('content', content)
          ..add('link', link)
          ..add('thumbnail', thumbnail))
        .toString();
  }
}

class CommentBuilder implements Builder<Comment, CommentBuilder> {
  _$Comment _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _postId;
  int get postId => _$this._postId;
  set postId(int postId) => _$this._postId = postId;

  String _authorName;
  String get authorName => _$this._authorName;
  set authorName(String authorName) => _$this._authorName = authorName;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  ContentBuilder _content;
  ContentBuilder get content => _$this._content ??= new ContentBuilder();
  set content(ContentBuilder content) => _$this._content = content;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  ThumbnailBuilder _thumbnail;
  ThumbnailBuilder get thumbnail =>
      _$this._thumbnail ??= new ThumbnailBuilder();
  set thumbnail(ThumbnailBuilder thumbnail) => _$this._thumbnail = thumbnail;

  CommentBuilder();

  CommentBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _postId = _$v.postId;
      _authorName = _$v.authorName;
      _createdAt = _$v.createdAt;
      _content = _$v.content?.toBuilder();
      _link = _$v.link;
      _thumbnail = _$v.thumbnail?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Comment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Comment;
  }

  @override
  void update(void Function(CommentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Comment build() {
    _$Comment _$result;
    try {
      _$result = _$v ??
          new _$Comment._(
              id: id,
              postId: postId,
              authorName: authorName,
              createdAt: createdAt,
              content: _content?.build(),
              link: link,
              thumbnail: _thumbnail?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'content';
        _content?.build();

        _$failedField = 'thumbnail';
        _thumbnail?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Comment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
