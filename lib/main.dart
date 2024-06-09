import 'package:flutter/material.dart';
import 'package:reflekt_mobile_test/features/ai_chat/ai_chat_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white.withOpacity(0.99),
        textTheme: const TextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: const AiChatScreen(),
    );
  }
}
