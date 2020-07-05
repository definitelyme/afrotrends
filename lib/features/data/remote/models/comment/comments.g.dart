// GENERATED CODE - DO NOT MODIFY BY HAND

part of comments;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Comments> _$commentsSerializer = new _$CommentsSerializer();

class _$CommentsSerializer implements StructuredSerializer<Comments> {
  @override
  final Iterable<Type> types = const [Comments, _$Comments];
  @override
  final String wireName = 'Comments';

  @override
  Iterable<Object> serialize(Serializers serializers, Comments object,
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
                const FullType(BuiltList, const [const FullType(Comment)])));
    }
    return result;
  }

  @override
  Comments deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentsBuilder();

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
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Comment)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Comments extends Comments {
  @override
  final PageInfo pageInfo;
  @override
  final BuiltList<Comment> items;

  factory _$Comments([void Function(CommentsBuilder) updates]) =>
      (new CommentsBuilder()..update(updates)).build();

  _$Comments._({this.pageInfo, this.items}) : super._();

  @override
  Comments rebuild(void Function(CommentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentsBuilder toBuilder() => new CommentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comments &&
        pageInfo == other.pageInfo &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, pageInfo.hashCode), items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Comments')
          ..add('pageInfo', pageInfo)
          ..add('items', items))
        .toString();
  }
}

class CommentsBuilder implements Builder<Comments, CommentsBuilder> {
  _$Comments _$v;

  PageInfoBuilder _pageInfo;
  PageInfoBuilder get pageInfo => _$this._pageInfo ??= new PageInfoBuilder();
  set pageInfo(PageInfoBuilder pageInfo) => _$this._pageInfo = pageInfo;

  ListBuilder<Comment> _items;
  ListBuilder<Comment> get items =>
      _$this._items ??= new ListBuilder<Comment>();
  set items(ListBuilder<Comment> items) => _$this._items = items;

  CommentsBuilder() {
    Comments._initializeBuilder(this);
  }

  CommentsBuilder get _$this {
    if (_$v != null) {
      _pageInfo = _$v.pageInfo?.toBuilder();
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Comments other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Comments;
  }

  @override
  void update(void Function(CommentsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Comments build() {
    _$Comments _$result;
    try {
      _$result = _$v ??
          new _$Comments._(
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
            'Comments', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
