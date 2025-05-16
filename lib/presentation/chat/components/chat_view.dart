import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/chat/components/her_messagge_buble.dart';
import 'package:yes_no_app/presentation/chat/components/my_messagge_buble.dart';
import 'package:yes_no_app/presentation/chat/shared/text_form_field.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';




class ChatView extends StatelessWidget {
  
  const  ChatView({super.key});
 
  @override
  Widget build(BuildContext context) {
  
  final chatprovider = context.watch<ChatProvider>();
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 10 ),
          child: Column(
        children: [
           Expanded(
              child: ListView.builder(
                
                controller: chatprovider.chatScrollController,
                itemCount: chatprovider.messageList.length,
                
                itemBuilder: (context, index){

                   final message =chatprovider.messageList[index];
                  
                   return ( message.fromWho == FromWho.her)
                    ? Hemessagebubble(message: message)
                    : MyMessageBubble(message: message);
                })),
             
              TextFormFieldWidget( onValue: (value) => chatprovider.sendMessage(value), )      
          ]
         ),
        )
      );
  
  }
}