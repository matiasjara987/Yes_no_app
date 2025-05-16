// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
class TextFormFieldWidget extends StatelessWidget {

  final ValueChanged<String> onValue;
  
    
  const TextFormFieldWidget({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {


    final textcontroler = TextEditingController();

    final focusNode = FocusNode();
    

    final outlineInputBorder = UnderlineInputBorder(
      borderSide:  BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(20)
    );
    
    
    final inputdecoration = InputDecoration(
        hintText: 'End your message with a "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon:  IconButton(
          icon: Icon(Icons.send_outlined),
          onPressed: () {
           final textValue = textcontroler.value.text;
           onValue( textValue );
            textcontroler.clear();
          },
          ),
      );

    
    return TextFormField(
      onTapOutside: (event) { focusNode.unfocus(); },
      focusNode: focusNode,
      controller: textcontroler,
      decoration: inputdecoration,
      onFieldSubmitted: (value) { onValue( value ); textcontroler.clear(); focusNode.requestFocus(); },
      
    );
    
  }
}