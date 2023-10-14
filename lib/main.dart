import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import './features/features.dart';
import 'ui/ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthModel()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: darkTheme(context),
        home: const HomeScreen(),
        routes: {
          // HomeScreen.routeName: (context) => const HomeScreen(),
          InviteUserScreen.routeName: (context) => const InviteUserScreen(),
          ChatsScreen.routeName: (context) => const ChatsScreen(),
          ChatScreen.routeName: (context) => const ChatScreen(),
          AuthScreen.routeName: (context) => const AuthScreen(),
          GroupsChatScreen.routeName: (context) => const GroupsChatScreen(),
          NewTripScreen.routeName: (context) => const NewTripScreen(),
          TripDetailsScreen.routeName: (context) => const TripDetailsScreen(),
          // TripDetailTrackingScreen.routeName: (context) =>
          //     TripDetailTrackingScreen(),
          NavigatorPage.routeName: (context) => const NavigatorPage(),
          NewsScreen.routeName: (context) => const NewsScreen(),
          NewsDetailsScreen.routeName: (context) => const NewsDetailsScreen(),
          SettlementScreen.routeName: (context) => const SettlementScreen(),
          RatingScreen.routeName: (context) => const RatingScreen(),
          AccountScreen.routeName: (context) => const AccountScreen(),
        },
      ),
    );
  }
}
