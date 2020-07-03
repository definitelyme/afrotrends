// GENERATED CODE - DO NOT MODIFY BY HAND

part of taxonomy;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Taxonomy> _$taxonomySerializer = new _$TaxonomySerializer();

class _$TaxonomySerializer implements StructuredSerializer<Taxonomy> {
  @override
  final Iterable<Type> types = const [Taxonomy, _$Taxonomy];
  @override
  final String wireName = 'Taxonomy';

  @override
  Iterable<Object> serialize(Serializers serializers, Taxonomy object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('term_id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.slug != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(object.slug,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Taxonomy deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TaxonomyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'term_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Taxonomy extends Taxonomy {
  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;

  factory _$Taxonomy([void Function(TaxonomyBuilder) updates]) =>
      (new TaxonomyBuilder()..update(updates)).build();

  _$Taxonomy._({this.id, this.name, this.slug}) : super._();

  @override
  Taxonomy rebuild(void Function(TaxonomyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaxonomyBuilder toBuilder() => new TaxonomyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Taxonomy &&
        id == other.id &&
        name == other.name &&
        slug == other.slug;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), slug.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Taxonomy')
          ..add('id', id)
          ..add('name', name)
          ..add('slug', slug))
        .toString();
  }
}

class TaxonomyBuilder implements Builder<Taxonomy, TaxonomyBuilder> {
  _$Taxonomy _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  TaxonomyBuilder();

  TaxonomyBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _slug = _$v.slug;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Taxonomy other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Taxonomy;
  }

  @override
  void update(void Function(TaxonomyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Taxonomy build() {
    final _$result = _$v ?? new _$Taxonomy._(id: id, name: name, slug: slug);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
