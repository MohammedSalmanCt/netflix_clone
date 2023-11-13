import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key,required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       kwidth,
       Text(title, style: GoogleFonts.montserrat(
         fontSize: 20,
         fontWeight: FontWeight.w900
       ),),
       Spacer(),
       Icon(Icons.cast,
       color: Colors.white),
       kwidth,
       Container(
         width: 25,
         height: 25,
         color: Colors.blue,),
       kwidth,
     ],
    );
  }
}
