import 'package:flutter/material.dart';
import 'package:untitled55/view/Account/AccountScreen.dart';
import 'package:untitled55/view/Home/HomeScreen.dart';
import 'package:untitled55/view/Login/LoginScreen.dart';
import 'package:untitled55/view/chat/chat_screen.dart';
import 'package:untitled55/view/chat/groups_chats.dart';
import 'package:untitled55/view/chats/view/chats_screen.dart';
import 'package:untitled55/view/notification/notification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        '/chats': (context) => const ChatsScreen(),
        '/chat': (context) => const ChatScreen(),
        '/auth': (context) => const AuthScreen(),
        '/group_chat': (context) => const GroupsChatScreen(),
      },
    );
  }
}
