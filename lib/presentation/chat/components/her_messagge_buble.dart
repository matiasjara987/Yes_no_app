
import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class Hemessagebubble extends StatelessWidget{

  final Message message;
  const Hemessagebubble({super.key, required this.message});

 
  @override
  Widget build(context) {
  
    final size = MediaQuery.of(context).size;
   
    final imageBubble = ClipRRect(
    borderRadius: BorderRadius.circular(20),
      child: Image.network(
        message.imageUrl!,
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress){
          if(loadingProgress == null) return child;
          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Está enviando una imagen'),
          );
        },
        )
    );
    

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
           decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(20)
           ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(message.text , style:  TextStyle(color: Colors.white, fontStyle: FontStyle.italic),),
            ),
          
        ),
        SizedBox(height: 10,),
        imageBubble,
        

      ],
    ); 
  }
}






