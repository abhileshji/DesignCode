import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientDetailsWidget extends StatelessWidget {
   PatientDetailsWidget({super.key,this.subtitle,this.title});
  String? title;
  String? subtitle;
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Text(title ?? "" ,style: GoogleFonts.lato(color: Colors.grey,fontSize: 14),),
           Text(subtitle ?? "" ,style: GoogleFonts.lato(color: Colors.indigo.shade500,fontSize: 14),),
    
        ],
      ),
    );
  }
}