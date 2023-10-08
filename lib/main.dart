import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:untitled55/models.dart';
import 'package:untitled55/view/Account/AccountScreen.dart';
import 'package:untitled55/view/auth/auth.dart';
import 'package:untitled55/view/chat/chat_screen.dart';
import 'package:untitled55/view/chats/view/chats_screen.dart';
import 'package:untitled55/view/my_trips/navigator/navigator.page.dart';
import 'package:untitled55/view/my_trips/new_trip_screen.dart';
import 'package:untitled55/view/news/NewsScreen.dart';

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
        home: const NewTripScreen(),
        routes: {
          // '/': (context) => const HomeScreen(),
          'profile': (context) => const AccountScreen(),
          'home': (context) => const HomeScreen(),
          '/chats': (context) => const ChatsScreen(),
          '/chat': (context) => const ChatScreen(),
          '/auth': (context) => const AuthScreen(),
          '/mytrips': (context) => const NewTripScreen(),
          "/navigator": (context) => const NavigatorPage(),
          "/news": (context) => const NewsScreen(),
          NewsDetailsScreen.routeName: (context) => const NewsDetailsScreen(),
        },
      ),
    );
  }
}
