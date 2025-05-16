import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/presentation/modules/home_page.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) { 
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider())
      ],
      child: HomePage());
  }

} 
 


