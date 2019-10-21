import 'dart:convert';

import 'package:clearn_architecure/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:clearn_architecure/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../core/fixtures/fixture_reader.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 1, text: "test Text");

  test(
    'should be a subclass of NumberTriva entity',
    () async {
      // asert
      expect(tNumberTriviaModel, isA<NumberTrivia>());
    },
  );

  group('from json', () {
    test(
      'should retrun valid Model when JSON number is an integer',
      () async {
        // arange
        final Map<String, dynamic> jsonMap = jsonDecode(fixture('trivia.json'));
        // act
        final result = NumberTriviaModel.fromJson(jsonMap);
        // asert
        expect(result, tNumberTriviaModel);
      },
    );

    test(
      'should retrun valid Model when JSON number is an double',
      () async {
        // arange
        final Map<String, dynamic> jsonMap =
            jsonDecode(fixture('trivia_double.json'));
        // act
        final result = NumberTriviaModel.fromJson(jsonMap);
        // asert
        expect(result, tNumberTriviaModel);
      },
    );
  });

  group("to Json", () {
    test(
      'should retrun JSON map from NumberTriviaModel',
      () async {
        // act
        final result = tNumberTriviaModel.toJson();

        // asert
        final expectedJson = {
          "text": "test Text",
          "number": 1,
        };

        expect(result, expectedJson);
      },
    );
  });
}
