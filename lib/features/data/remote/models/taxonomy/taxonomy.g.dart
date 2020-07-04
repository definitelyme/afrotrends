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
    if (object.termId != null) {
      result
        ..add('term_id')
        ..add(serializers.serialize(object.termId,
            specifiedType: const FullType(int)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.count != null) {
      result
        ..add('count')
        ..add(serializers.serialize(object.count,
            specifiedType: const FullType(int)));
    }
    if (object.taxonomy != null) {
      result
        ..add('taxonomy')
        ..add(serializers.serialize(object.taxonomy,
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
          result.termId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'taxonomy':
          result.taxonomy = serializers.deserialize(value,
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
  final int termId;
  @override
  final int id;
  @override
  final String name;
  @override
  final int count;
  @override
  final String taxonomy;
  @override
  final String slug;

  factory _$Taxonomy([void Function(TaxonomyBuilder) updates]) =>
      (new TaxonomyBuilder()..update(updates)).build();

  _$Taxonomy._(
      {this.termId, this.id, this.name, this.count, this.taxonomy, this.slug})
      : super._();

  @override
  Taxonomy rebuild(void Function(TaxonomyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaxonomyBuilder toBuilder() => new TaxonomyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Taxonomy &&
        termId == other.termId &&
        id == other.id &&
        name == other.name &&
        count == other.count &&
        taxonomy == other.taxonomy &&
        slug == other.slug;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, termId.hashCode), id.hashCode), name.hashCode),
                count.hashCode),
            taxonomy.hashCode),
        slug.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Taxonomy')
          ..add('termId', termId)
          ..add('id', id)
          ..add('name', name)
          ..add('count', count)
          ..add('taxonomy', taxonomy)
          ..add('slug', slug))
        .toString();
  }
}

class TaxonomyBuilder implements Builder<Taxonomy, TaxonomyBuilder> {
  _$Taxonomy _$v;

  int _termId;
  int get termId => _$this._termId;
  set termId(int termId) => _$this._termId = termId;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  String _taxonomy;
  String get taxonomy => _$this._taxonomy;
  set taxonomy(String taxonomy) => _$this._taxonomy = taxonomy;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  TaxonomyBuilder() {
    Taxonomy._initializeBuilder(this);
  }

  TaxonomyBuilder get _$this {
    if (_$v != null) {
      _termId = _$v.termId;
      _id = _$v.id;
      _name = _$v.name;
      _count = _$v.count;
      _taxonomy = _$v.taxonomy;
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
    final _$result = _$v ??
        new _$Taxonomy._(
            termId: termId,
            id: id,
            name: name,
            count: count,
            taxonomy: taxonomy,
            slug: slug);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
