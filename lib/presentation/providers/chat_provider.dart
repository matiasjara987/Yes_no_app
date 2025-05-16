import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();
  final ScrollController chatScrollController = ScrollController();

  
  List<Message> messageList = [
    Message(text: 'Hola matías', fromWho: FromWho.me),
    Message(text: 'Como ta va todo en el trabajo?', fromWho: FromWho.me)
  ];
  
  void sendMessage( String text ) async {
      
      if (text.isEmpty) return;
      
      messageList.add(Message(text: text, fromWho: FromWho.me));
      notifyListeners();
      moveToScrollToBottom();

      if (text.endsWith('?')) {
        await herReply();
      }
     
   }
  

  Future<void> herReply() async {
    
    final herMessage = await getYesNoAnswer.getAnswer();
    messageList.add(herMessage);
    moveToScrollToBottom();
    notifyListeners();

  }
  Future<void> moveToScrollToBottom () async {
    await Future.delayed(const Duration(milliseconds: 300));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
      );
    
  }

}