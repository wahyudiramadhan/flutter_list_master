import 'package:get/get.dart';
import 'package:list/pages/home_page.dart';
import 'package:list/widgets/data.dart';
import 'package:list/bindings/databinding.dart';

class Routes {
  static final routes = [
    GetPage(
      name: '/data',
      page: () => Data(),
      binding: DataBinding(),
    ),
    GetPage(
      name: '/home',
      page: () => TabBarDemo(),
    ),
  ];
}
