// GENERATED CODE - DO NOT MODIFY BY HAND

part of taxonomies;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Taxonomies> _$taxonomiesSerializer = new _$TaxonomiesSerializer();

class _$TaxonomiesSerializer implements StructuredSerializer<Taxonomies> {
  @override
  final Iterable<Type> types = const [Taxonomies, _$Taxonomies];
  @override
  final String wireName = 'Taxonomies';

  @override
  Iterable<Object> serialize(Serializers serializers, Taxonomies object,
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
                const FullType(BuiltList, const [const FullType(Taxonomy)])));
    }
    return result;
  }

  @override
  Taxonomies deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TaxonomiesBuilder();

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
                      BuiltList, const [const FullType(Taxonomy)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Taxonomies extends Taxonomies {
  @override
  final PageInfo pageInfo;
  @override
  final BuiltList<Taxonomy> items;

  factory _$Taxonomies([void Function(TaxonomiesBuilder) updates]) =>
      (new TaxonomiesBuilder()..update(updates)).build();

  _$Taxonomies._({this.pageInfo, this.items}) : super._();

  @override
  Taxonomies rebuild(void Function(TaxonomiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaxonomiesBuilder toBuilder() => new TaxonomiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Taxonomies &&
        pageInfo == other.pageInfo &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, pageInfo.hashCode), items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Taxonomies')
          ..add('pageInfo', pageInfo)
          ..add('items', items))
        .toString();
  }
}

class TaxonomiesBuilder implements Builder<Taxonomies, TaxonomiesBuilder> {
  _$Taxonomies _$v;

  PageInfoBuilder _pageInfo;
  PageInfoBuilder get pageInfo => _$this._pageInfo ??= new PageInfoBuilder();
  set pageInfo(PageInfoBuilder pageInfo) => _$this._pageInfo = pageInfo;

  ListBuilder<Taxonomy> _items;
  ListBuilder<Taxonomy> get items =>
      _$this._items ??= new ListBuilder<Taxonomy>();
  set items(ListBuilder<Taxonomy> items) => _$this._items = items;

  TaxonomiesBuilder() {
    Taxonomies._initializeBuilder(this);
  }

  TaxonomiesBuilder get _$this {
    if (_$v != null) {
      _pageInfo = _$v.pageInfo?.toBuilder();
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Taxonomies other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Taxonomies;
  }

  @override
  void update(void Function(TaxonomiesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Taxonomies build() {
    _$Taxonomies _$result;
    try {
      _$result = _$v ??
          new _$Taxonomies._(
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
            'Taxonomies', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
