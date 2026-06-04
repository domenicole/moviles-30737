import '../../domain/entities/cat.dart';
import '../datasource/catapi_datasource.dart';

class CatRepositoryImpl {
  final CatApiDatasource datasource;

  CatRepositoryImpl(this.datasource);

  Future<List<Cat>> getCats({int limit = 20, int page = 0}) async {
    return datasource.fetchCats(limit, page);
  }
}
