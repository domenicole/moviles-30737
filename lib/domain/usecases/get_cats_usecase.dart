import '../entities/cat.dart';
import '../../data/repositories/cat_repository_implementation.dart';

class GetCatsUseCase {
  final CatRepositoryImpl repository;

  GetCatsUseCase(this.repository);

  Future<List<Cat>> call({int limit = 20, int page = 0}) {
    return repository.getCats(limit: limit, page: page);
  }
}
