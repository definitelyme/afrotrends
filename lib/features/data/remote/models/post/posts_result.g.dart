// GENERATED CODE - DO NOT MODIFY BY HAND

part of posts_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostsResult> _$postsResultSerializer = new _$PostsResultSerializer();

class _$PostsResultSerializer implements StructuredSerializer<PostsResult> {
  @override
  final Iterable<Type> types = const [PostsResult, _$PostsResult];
  @override
  final String wireName = 'PostsResult';

  @override
  Iterable<Object> serialize(Serializers serializers, PostsResult object,
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
  PostsResult deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostsResultBuilder();

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

class _$PostsResult extends PostsResult {
  @override
  final PageInfo pageInfo;
  @override
  final BuiltList<Post> items;

  factory _$PostsResult([void Function(PostsResultBuilder) updates]) =>
      (new PostsResultBuilder()..update(updates)).build();

  _$PostsResult._({this.pageInfo, this.items}) : super._();

  @override
  PostsResult rebuild(void Function(PostsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsResultBuilder toBuilder() => new PostsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostsResult &&
        pageInfo == other.pageInfo &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, pageInfo.hashCode), items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostsResult')
          ..add('pageInfo', pageInfo)
          ..add('items', items))
        .toString();
  }
}

class PostsResultBuilder implements Builder<PostsResult, PostsResultBuilder> {
  _$PostsResult _$v;

  PageInfoBuilder _pageInfo;
  PageInfoBuilder get pageInfo => _$this._pageInfo ??= new PageInfoBuilder();
  set pageInfo(PageInfoBuilder pageInfo) => _$this._pageInfo = pageInfo;

  ListBuilder<Post> _items;
  ListBuilder<Post> get items => _$this._items ??= new ListBuilder<Post>();
  set items(ListBuilder<Post> items) => _$this._items = items;

  PostsResultBuilder();

  PostsResultBuilder get _$this {
    if (_$v != null) {
      _pageInfo = _$v.pageInfo?.toBuilder();
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostsResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PostsResult;
  }

  @override
  void update(void Function(PostsResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostsResult build() {
    _$PostsResult _$result;
    try {
      _$result = _$v ??
          new _$PostsResult._(
              pageInfo: _pageInfo?.build(), items: _items?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
