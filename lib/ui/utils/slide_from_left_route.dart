import 'package:flutter/material.dart';

class SlideFromLeftRoute extends PageRouteBuilder {
  final Widget page;

  SlideFromLeftRoute({required this.page})
    : super(
        pageBuilder: (context, animation, secondaryAnimation) => page,

        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(-1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeOutCubic;

          var tween = Tween(
            begin: begin,
            end: end,
          ).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      );
}
