import 'dart:convert';

import 'package:flutter_testing_study/models/models.dart';
import 'package:http/http.dart' as http;

class AlbumsService {
  Future<Album> fetchAlbum(http.Client client) async {
    final response = await client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

    if (response.statusCode == 200) {
      return Album.fromJson(jsonDecode(response.body));
    }

    throw Exception('Failed to load album');
  }
}
