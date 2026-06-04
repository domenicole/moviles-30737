import 'package:flutter/material.dart';
import '../views/home_page.dart';
import '../views/detail_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (_) => const HomePage(),
    '/detalle': (_) => const DetallePage(),
  };
}
