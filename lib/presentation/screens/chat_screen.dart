import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/chat/components/chat_view.dart';
import 'package:yes_no_app/presentation/chat/components/header_view.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: HeaderView(),
    body:  ChatView(),
    );
  
  }

}
