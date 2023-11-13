import 'package:flutter/material.dart';
import 'package:netflix_clone/Presentation/widgets/app_bar_widgetgs.dart';

class ScreenHotAndNew extends StatelessWidget {
  const ScreenHotAndNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(
         preferredSize: Size.fromHeight(50),
         child: AppBarWidget(title: 'Hot And New'),
       ),
      body: Text("Hotandnew"),
    );
  }
}