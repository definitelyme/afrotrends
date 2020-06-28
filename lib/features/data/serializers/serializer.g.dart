// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Author.serializer)
      ..add(Content.serializer)
      ..add(FeaturedImage.serializer)
      ..add(PageInfo.serializer)
      ..add(Post.serializer)
      ..add(PostAdvCustomField.serializer)
      ..add(PostsResult.serializer)
      ..add(Taxonomy.serializer)
      ..add(Thumbnail.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Post)]),
          () => new ListBuilder<Post>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Taxonomy)]),
          () => new ListBuilder<Taxonomy>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Taxonomy)]),
          () => new ListBuilder<Taxonomy>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FeaturedImage)]),
          () => new ListBuilder<FeaturedImage>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
