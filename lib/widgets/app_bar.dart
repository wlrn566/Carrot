import 'package:carrot/utils/color.dart';
import 'package:flutter/material.dart';

class CarrotAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CarrotAppBar({super.key, required this.appBar});

  final AppBar appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getColorWhite(),
      appBar: AppBar(
        backgroundColor: getColorWhite(),
        elevation: 0,
        leading: null,
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.density_medium, color: getColorBlack())
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.search, color: getColorBlack())
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.notifications_none, color: getColorBlack())
          ),
        ],
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}