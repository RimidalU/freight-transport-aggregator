import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:untitled55/models.dart';
import 'package:untitled55/view/auth/auth.dart';
import 'package:untitled55/view/chat/chat_screen.dart';
import 'package:untitled55/view/chats/groups_chats.dart';
import 'package:untitled55/view/chats/view/chats_screen.dart';
import 'package:untitled55/view/my_trips/navigator/navigator.page.dart';
import 'package:untitled55/view/my_trips/new_trip_screen.dart';

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
        theme: darkTheme,
        home: const HomeScreen(),
        routes: {
          // '/': (context) => const HomeScreen(),
          'home': (context) => const HomeScreen(),
          '/chats': (context) => const ChatsScreen(),
          '/chat': (context) => const ChatScreen(),
          '/auth': (context) => const AuthScreen(),
          '/group_chat': (context) => const GroupsChatScreen(),
          '/mytrips': (context) => const NewTripScreen(),
          "/navigator": (context) => const NavigatorPage(),
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
