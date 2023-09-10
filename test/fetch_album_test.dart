import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_study/models/models.dart';
import 'package:flutter_testing_study/services/services.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';

import 'package:flutter_testing_study/main.dart';
import 'package:mockito/mockito.dart';

import 'fetch_album_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group('fetchAlbum', () {
    test('returns an Album if the http call completes successfully', () async {
      final client = MockClient();

      when(client.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'))).thenAnswer((_) async =>
          http.Response('{"userId": 1, "id": 2, "title": "mock"}', 200));

      expect(await AlbumsService().fetchAlbum(client), isA<Album>());
    });

    test('throws an exception if the http call completes with an error', () {
      final client = MockClient();

      when(client
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')))
      .thenAnswer((realInvocation) async => http.Response('Not found', 404));

      expect(AlbumsService().fetchAlbum(client), throwsException);
    });
  });
}
