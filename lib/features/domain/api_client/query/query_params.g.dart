// GENERATED CODE - DO NOT MODIFY BY HAND

part of query_params;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QueryParam> _$queryParamSerializer = new _$QueryParamSerializer();

class _$QueryParamSerializer implements StructuredSerializer<QueryParam> {
  @override
  final Iterable<Type> types = const [QueryParam, _$QueryParam];
  @override
  final String wireName = 'QueryParam';

  @override
  Iterable<Object> serialize(Serializers serializers, QueryParam object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'perPage',
      serializers.serialize(object.perPage, specifiedType: const FullType(int)),
      'nextPage',
      serializers.serialize(object.nextPage,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  QueryParam deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QueryParamBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'perPage':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'nextPage':
          result.nextPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$QueryParam extends QueryParam {
  @override
  final int perPage;
  @override
  final int nextPage;

  factory _$QueryParam([void Function(QueryParamBuilder) updates]) =>
      (new QueryParamBuilder()..update(updates)).build();

  _$QueryParam._({this.perPage, this.nextPage}) : super._() {
    if (perPage == null) {
      throw new BuiltValueNullFieldError('QueryParam', 'perPage');
    }
    if (nextPage == null) {
      throw new BuiltValueNullFieldError('QueryParam', 'nextPage');
    }
  }

  @override
  QueryParam rebuild(void Function(QueryParamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryParamBuilder toBuilder() => new QueryParamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryParam &&
        perPage == other.perPage &&
        nextPage == other.nextPage;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, perPage.hashCode), nextPage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('QueryParam')
          ..add('perPage', perPage)
          ..add('nextPage', nextPage))
        .toString();
  }
}

class QueryParamBuilder implements Builder<QueryParam, QueryParamBuilder> {
  _$QueryParam _$v;

  int _perPage;
  int get perPage => _$this._perPage;
  set perPage(int perPage) => _$this._perPage = perPage;

  int _nextPage;
  int get nextPage => _$this._nextPage;
  set nextPage(int nextPage) => _$this._nextPage = nextPage;

  QueryParamBuilder();

  QueryParamBuilder get _$this {
    if (_$v != null) {
      _perPage = _$v.perPage;
      _nextPage = _$v.nextPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueryParam other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$QueryParam;
  }

  @override
  void update(void Function(QueryParamBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$QueryParam build() {
    final _$result =
        _$v ?? new _$QueryParam._(perPage: perPage, nextPage: nextPage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
