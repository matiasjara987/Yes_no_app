

import 'package:flutter/material.dart';
import 'package:yes_no_app/config/config.dart';

class HeaderView extends StatelessWidget implements PreferredSizeWidget {
  const HeaderView({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(4.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(DebugMode().image),
        ),
      ),
      title: Text(
        '+56912345678 ( Yo )',
        style: TextStyle(fontStyle: FontStyle.italic, fontSize: 15, color: Colors.black),
      ),
      centerTitle: true,
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(50);
}