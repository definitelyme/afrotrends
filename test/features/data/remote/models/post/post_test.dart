import 'dart:convert';

import 'package:afrotrends/features/data/remote/models/comment/exports_comment.dart';
import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:afrotrends/playground/pizza.dart';
import 'package:afrotrends/playground/simple.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../../../../../fixtures/fixture-reader.dart';

class MockApiClient extends Mock implements ApiClient<Response> {}

class MockResponse extends Mock implements Response {}

void main() {
  MockApiClient mockApiClient;
  Response mockResponse;
  SimpleRepo repo;
  Logger logger;

  setUp(() {
    mockApiClient = MockApiClient();
    mockResponse = Response();
    repo = SimpleRepo();
    logger = Logger(printer: PrettyPrinter(printTime: true));
  });

  test("test server response", () async {
    var listSource = fixture("post/post_list.json");
    var singleSource = fixture("post/post.json");
    var nullSource = fixture("post/null-post.json");
    var commentSingle = fixture("comment/comment.json");
    var commentList = fixture("comment/comment-list.json");
    when(mockApiClient.get(any)).thenAnswer((_) async => Response(data: jsonDecode(listSource), statusCode: 200));

//    final posts = Posts.fromMap(jsonDecode(listSource));
//    print("Total => ${posts.pageInfo.total}");
    final comments = Comments.fromDynamicList(jsonDecode(commentList));
    print("Comments count => ${comments.length}");
  });

  test("builder interface", () async {
    Pizza pizza = (PizzaBuilder()
          ..sauce = "Too much sauce"
          ..hasExtraCheese = false)
        .build();

    Pizza anotherPizza = (PizzaBuilder()..toppings = ["One topping", "Here's another", "Take another"]).build();

    logger.i(anotherPizza.toString());
    final Map<String, String> row = {"name": "My item"};
  });
}
