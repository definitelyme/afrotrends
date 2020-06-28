// GENERATED CODE - DO NOT MODIFY BY HAND

part of author;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Author> _$authorSerializer = new _$AuthorSerializer();

class _$AuthorSerializer implements StructuredSerializer<Author> {
  @override
  final Iterable<Type> types = const [Author, _$Author];
  @override
  final String wireName = 'Author';

  @override
  Iterable<Object> serialize(Serializers serializers, Author object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('ID')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.displayName != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(object.displayName,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('user_email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.slug != null) {
      result
        ..add('user_nicename')
        ..add(serializers.serialize(object.slug,
            specifiedType: const FullType(String)));
    }
    if (object.avatar != null) {
      result
        ..add('user_avatar')
        ..add(serializers.serialize(object.avatar,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Author deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ID':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_nicename':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_avatar':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Author extends Author {
  @override
  final int id;
  @override
  final String displayName;
  @override
  final String email;
  @override
  final String slug;
  @override
  final String avatar;

  factory _$Author([void Function(AuthorBuilder) updates]) =>
      (new AuthorBuilder()..update(updates)).build();

  _$Author._({this.id, this.displayName, this.email, this.slug, this.avatar})
      : super._();

  @override
  Author rebuild(void Function(AuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorBuilder toBuilder() => new AuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Author &&
        id == other.id &&
        displayName == other.displayName &&
        email == other.email &&
        slug == other.slug &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), displayName.hashCode), email.hashCode),
            slug.hashCode),
        avatar.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Author')
          ..add('id', id)
          ..add('displayName', displayName)
          ..add('email', email)
          ..add('slug', slug)
          ..add('avatar', avatar))
        .toString();
  }
}

class AuthorBuilder implements Builder<Author, AuthorBuilder> {
  _$Author _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  String _avatar;
  String get avatar => _$this._avatar;
  set avatar(String avatar) => _$this._avatar = avatar;

  AuthorBuilder() {
    Author._initializeBuilder(this);
  }

  AuthorBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _displayName = _$v.displayName;
      _email = _$v.email;
      _slug = _$v.slug;
      _avatar = _$v.avatar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Author other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Author;
  }

  @override
  void update(void Function(AuthorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Author build() {
    final _$result = _$v ??
        new _$Author._(
            id: id,
            displayName: displayName,
            email: email,
            slug: slug,
            avatar: avatar);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
