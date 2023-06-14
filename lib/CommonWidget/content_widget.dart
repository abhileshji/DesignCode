import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentWidget extends StatelessWidget {

  String? text;
  VoidCallback? callback;
   ContentWidget({super.key,this.text,this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Text(text!,style: GoogleFonts.lato(
                             fontSize: 20,
                             color: Colors.black,
                             fontWeight: FontWeight.w600
                           ),),
       IconButton(onPressed: ()=> callback?.call(), icon: const Icon(Icons.arrow_forward,))
      
       ],
     ),
    );
  }
}