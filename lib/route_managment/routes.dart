import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

import '../main.dart';

List<GetPage> appRoutes = [
  GetPage(name: "/", page: () => const MyApp()),
  GetPage(
    name: "/splash",
    page: () => const Text("dfgc"),
    transition: Transition.topLevel,
    curve: Curves.slowMiddle,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: "/onboarding",
    page: () => Text("fssvv"),
    transition: Transition.rightToLeft,
    curve: Curves.linear,
    transitionDuration: const Duration(milliseconds: 500),
  ),
];
