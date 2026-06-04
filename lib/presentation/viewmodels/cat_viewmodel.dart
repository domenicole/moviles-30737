import 'package:flutter/material.dart';
import '../../domain/entities/cat.dart';
import '../../domain/usecases/get_cats_usecase.dart';

class CatViewmodel extends ChangeNotifier {
  final GetCatsUseCase getCatsUseCase;

  CatViewmodel(this.getCatsUseCase);

  // Estado
  List<Cat> cats = [];
  bool loading = false;
  bool loadingMore = false;
  String? errorMessage;
  int _currentPage = 0;

  Future<void> loadCats() async {
    loading = true;
    errorMessage = null;
    notifyListeners();

    try {
      _currentPage = 0;
      cats = await getCatsUseCase(limit: 20, page: _currentPage);
    } catch (e) {
      errorMessage = 'Error al cargar los gatos';
    }

    loading = false;
    notifyListeners();
  }

  // Carga más imágenes al hacer scroll (paginación)
  Future<void> loadMore() async {
    if (loadingMore) return;
    loadingMore = true;
    notifyListeners();

    try {
      _currentPage++;
      final moreCats = await getCatsUseCase(limit: 20, page: _currentPage);
      cats = [...cats, ...moreCats];
    } catch (e) {
      errorMessage = 'Error al cargar más gatos';
    }

    loadingMore = false;
    notifyListeners();
  }
}
