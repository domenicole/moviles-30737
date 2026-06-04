import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data/datasource/catapi_datasource.dart';
import 'data/repositories/cat_repository_implementation.dart';
import 'domain/usecases/get_cats_usecase.dart';
import 'presentation/viewmodels/cat_viewmodel.dart';
import 'presentation/routes/app_routes.dart';

void main() {
  // Inyección de dependencias manual
  final datasource = CatApiDatasource();
  final repository = CatRepositoryImpl(datasource);
  final usecase = GetCatsUseCase(repository);

  runApp(MyApp(usecase: usecase));
}

class MyApp extends StatelessWidget {
  final GetCatsUseCase usecase;

  const MyApp({super.key, required this.usecase});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CatViewmodel(usecase),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'The Cat API',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
          useMaterial3: true,
        ),
        routes: AppRoutes.routes,
        initialRoute: '/',
      ),
    );
  }
}
