import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice6/entryscreen.dart';
import 'package:practice6/screens/second_screen.dart';
import 'package:practice6/screens/fourth_screen.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: "/",
      name: "home",
      builder: (BuildContext context, GoRouterState state) {
        return const EntryScreen();
      },

    routes: [

    GoRoute(
      path: "image",
      name: "image",
      builder: (BuildContext context, GoRouterState state) {
        return const ImageWidget();
      },
    ),
      GoRoute(
        path: "checkbox",
        name: "checkbox",
        builder: (BuildContext context, GoRouterState state) {
          return const CheckboxWidget();
        },
      ),
    ]),
  ],
);
