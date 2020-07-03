// GENERATED CODE - DO NOT MODIFY BY HAND

part of posts;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Posts> _$postsSerializer = new _$PostsSerializer();

class _$PostsSerializer implements StructuredSerializer<Posts> {
  @override
  final Iterable<Type> types = const [Posts, _$Posts];
  @override
  final String wireName = 'Posts';

  @override
  Iterable<Object> serialize(Serializers serializers, Posts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.pageInfo != null) {
      result
        ..add('page_info')
        ..add(serializers.serialize(object.pageInfo,
            specifiedType: const FullType(PageInfo)));
    }
    if (object.items != null) {
      result
        ..add('items')
        ..add(serializers.serialize(object.items,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Post)])));
    }
    return result;
  }

  @override
  Posts deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'page_info':
          result.pageInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(PageInfo)) as PageInfo);
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Post)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Posts extends Posts {
  @override
  final PageInfo pageInfo;
  @override
  final BuiltList<Post> items;

  factory _$Posts([void Function(PostsBuilder) updates]) =>
      (new PostsBuilder()..update(updates)).build();

  _$Posts._({this.pageInfo, this.items}) : super._();

  @override
  Posts rebuild(void Function(PostsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsBuilder toBuilder() => new PostsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Posts && pageInfo == other.pageInfo && items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, pageInfo.hashCode), items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Posts')
          ..add('pageInfo', pageInfo)
          ..add('items', items))
        .toString();
  }
}

class PostsBuilder implements Builder<Posts, PostsBuilder> {
  _$Posts _$v;

  PageInfoBuilder _pageInfo;
  PageInfoBuilder get pageInfo => _$this._pageInfo ??= new PageInfoBuilder();
  set pageInfo(PageInfoBuilder pageInfo) => _$this._pageInfo = pageInfo;

  ListBuilder<Post> _items;
  ListBuilder<Post> get items => _$this._items ??= new ListBuilder<Post>();
  set items(ListBuilder<Post> items) => _$this._items = items;

  PostsBuilder() {
    Posts._initializeBuilder(this);
  }

  PostsBuilder get _$this {
    if (_$v != null) {
      _pageInfo = _$v.pageInfo?.toBuilder();
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Posts other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Posts;
  }

  @override
  void update(void Function(PostsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Posts build() {
    _$Posts _$result;
    try {
      _$result = _$v ??
          new _$Posts._(pageInfo: _pageInfo?.build(), items: _items?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Posts', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
