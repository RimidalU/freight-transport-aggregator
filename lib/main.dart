import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled55/models.dart';
import 'package:untitled55/view/Account/AccountScreen.dart';
import 'package:untitled55/view/Home/HomeScreen.dart';
import 'package:untitled55/view/auth/auth.dart';
import 'package:untitled55/view/chat/chat_screen.dart';
import 'package:untitled55/view/chat/groups_chats.dart';
import 'package:untitled55/view/chats/view/chats_screen.dart';
import 'package:untitled55/view/user/UserScreen.dart';


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
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const UserScreen(),
        routes: {
          'profile': (context) => const AccountScreen(),
          'home': (context) => const HomeScreen(),
          '/chats': (context) => const ChatsScreen(),
          '/chat': (context) => const ChatScreen(),
          '/auth': (context) => const AuthScreen(),
          '/group_chat': (context) => const GroupsChatScreen(),
        },
      ),
    );
  }
}
