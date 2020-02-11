import 'package:flutter/material.dart';

import 'home_page.dart';
import 'restaurant_page.dart';

class FriendlyEatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FriendlyEats',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case FriendlyEatsRestaurantPage.route:
            final FriendlyEatsRestaurantPageArguments arguments =
                settings.arguments;
            return MaterialPageRoute(
                builder: (context) => FriendlyEatsRestaurantPage(
                      restaurantId: arguments.id,
                    ));
            break;
          default:
            // return MaterialPageRoute(
            //     builder: (context) => FriendlyEatsRestaurantPage(
            //           restaurantId: 'lV81npEeboEActMpUJjn',
            //         ));
            // Everything defaults to home, but maybe we want a custom 404 here
            return MaterialPageRoute(
                builder: (context) => FriendlyEatsHomePage());
        }
      },
    );
  }
}
