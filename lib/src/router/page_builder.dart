import 'package:flutter/widgets.dart';

import '../view/error_view.dart';
import 'routes.dart';

PageRouteBuilder getPageBuilder(RouteSettings settings) => PageRouteBuilder(
    settings:
        settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
    pageBuilder: (BuildContext context, __, ___) =>
        routes[settings.name] != null
            ? routes[settings.name]!(context)
            : ErrorView(),
    transitionDuration: Duration(milliseconds: 75),
    reverseTransitionDuration: Duration(milliseconds: 75),
    transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c));
