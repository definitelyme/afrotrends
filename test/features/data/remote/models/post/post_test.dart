import 'dart:convert';

import 'package:afrotrends/features/data/remote/models/post/exports.dart';
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
  MockResponse mockResponse;
  SimpleRepo repo;
  Logger logger;

  setUp(() {
    mockApiClient = MockApiClient();
    mockResponse = MockResponse();
    repo = SimpleRepo(mockApiClient);
    logger = Logger(printer: PrettyPrinter(printTime: true));
  });

  test("test server response", () async {
    var listSource = fixture("post/post_list.json");
    var singleSource = fixture("post/post.json");
    var nullSource = fixture("post/null-post.json");
    when(mockApiClient.get(any)).thenAnswer((_) async => Response(data: jsonDecode(listSource), statusCode: 200));

    final posts = PostsResult.fromMap(jsonDecode(listSource));
    print("Total => ${posts.pageInfo.total}");
//    posts.items.forEach((post) {
//      print("Title => ${post.title.rendered}");
//    });

    final beforeLimit = DateTime(2019, 06, 05);
    final afterLimit = DateTime(2002, 02, 18);

    final query = QueryBuilder(
      taxonomy: TCategory(4),
    );
    print("Query => ${query.build()}");

//    final post = Post.fromMap(jsonDecode(singleSource));
//    print("Single Post title => ${post.title.rendered}");
//
//    final nullPost = Post.fromMap(jsonDecode(nullSource));
//    print("Null Post data ==> $nullPost");
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
