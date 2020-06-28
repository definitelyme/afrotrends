import 'dart:convert';

import 'package:afrotrends/features/data/remote/models/post/post.dart';
import 'package:afrotrends/playground/pizza.dart';
import 'package:afrotrends/playground/simple.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../../../../../fixtures/fixture-reader.dart';

class MockDio extends Mock implements Dio {}

class MockResponse extends Mock implements Response {}

void main() {
  MockDio mockDio;
  MockResponse mockResponse;
  SimpleRepo repo;
  Logger logger;

  setUp(() {
    mockDio = MockDio();
    mockResponse = MockResponse();
    repo = SimpleRepo(mockDio);
    logger = Logger(printer: PrettyPrinter(printTime: true));
  });

  test("test server response", () async {
    var listSource = fixture("post/post_list.json");
    var singleSource = fixture("post/post.json");
    var nullSource = fixture("post/null-post.json");
    when(mockDio.get(any)).thenAnswer((_) async => Response(data: jsonDecode(listSource), statusCode: 200));

    final posts = Post.fromDynamicList(jsonDecode(listSource));
//    posts.forEach((post) {
//      print("Title => ${post.title.rendered}");
//    });

    final post = Post.fromMap(jsonDecode(singleSource));
//    print("Single Post title => ${post.title.rendered}");

    final nullPost = Post.fromMap(jsonDecode(nullSource));
    print("Null Post data ==> $nullPost");
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
