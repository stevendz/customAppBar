import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double _preferredHeight = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.tealAccent,
            Colors.redAccent,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          Text(
            'Gradient AppBar',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_preferredHeight);
}
