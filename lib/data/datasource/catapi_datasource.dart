import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/cat_model.dart';

class CatApiDatasource {
  final String baseUrl = 'https://api.thecatapi.com/v1/images/search';

  Future<List<CatModel>> fetchCats(int limit, int page) async {
    final url = Uri.parse('$baseUrl?limit=$limit&page=$page');
    final resp = await http.get(url);

    if (resp.statusCode != 200) {
      throw Exception('Error al cargar imágenes de gatos');
    }

    final List data = jsonDecode(resp.body);
    return data.map((e) => CatModel.fromJson(e)).toList();
  }
}
