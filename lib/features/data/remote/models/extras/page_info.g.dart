// GENERATED CODE - DO NOT MODIFY BY HAND

part of page_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PageInfo> _$pageInfoSerializer = new _$PageInfoSerializer();

class _$PageInfoSerializer implements StructuredSerializer<PageInfo> {
  @override
  final Iterable<Type> types = const [PageInfo, _$PageInfo];
  @override
  final String wireName = 'PageInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, PageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.total != null) {
      result
        ..add('total')
        ..add(serializers.serialize(object.total,
            specifiedType: const FullType(String)));
    }
    if (object.totalPages != null) {
      result
        ..add('total_pages')
        ..add(serializers.serialize(object.totalPages,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PageInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PageInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total_pages':
          result.totalPages = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PageInfo extends PageInfo {
  @override
  final String total;
  @override
  final String totalPages;

  factory _$PageInfo([void Function(PageInfoBuilder) updates]) =>
      (new PageInfoBuilder()..update(updates)).build();

  _$PageInfo._({this.total, this.totalPages}) : super._();

  @override
  PageInfo rebuild(void Function(PageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageInfoBuilder toBuilder() => new PageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageInfo &&
        total == other.total &&
        totalPages == other.totalPages;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, total.hashCode), totalPages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PageInfo')
          ..add('total', total)
          ..add('totalPages', totalPages))
        .toString();
  }
}

class PageInfoBuilder implements Builder<PageInfo, PageInfoBuilder> {
  _$PageInfo _$v;

  String _total;
  String get total => _$this._total;
  set total(String total) => _$this._total = total;

  String _totalPages;
  String get totalPages => _$this._totalPages;
  set totalPages(String totalPages) => _$this._totalPages = totalPages;

  PageInfoBuilder();

  PageInfoBuilder get _$this {
    if (_$v != null) {
      _total = _$v.total;
      _totalPages = _$v.totalPages;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PageInfo;
  }

  @override
  void update(void Function(PageInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PageInfo build() {
    final _$result =
        _$v ?? new _$PageInfo._(total: total, totalPages: totalPages);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
