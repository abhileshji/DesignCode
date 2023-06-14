import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatelessWidget {
  CardWidget({super.key, this.images, this.date, this.time,this.color,this.attendCall,this.title,this.textColor,this.buttonColor,this.borderColor});
  String? images;
  String? time;
  String? date;
  Color? color;
  String? title;
  String? attendCall;
  Color? textColor;
  Color? buttonColor;
  Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(               
 backgroundColor: borderColor,
 radius: 25.0,
  child:
              CircleAvatar(
                radius: 20,
                backgroundImage:NetworkImage(images ?? "",) ,
              )
              ),
              SizedBox(width: 50,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    time?? "",
                    style: GoogleFonts.lato(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  Text(date ?? "",
                      style: GoogleFonts.lato(
                        fontSize: 12,
                        color: Colors.white30,
                      )),
                ],
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.30,
            margin:const EdgeInsets.only(top: 30),
            child: Text(title ?? "",
            
            style: GoogleFonts.lato(fontSize: 18,color:textColor, ),
            
            ),
          ),
          Container(
           width: MediaQuery.of(context).size.width*0.40,
           height: MediaQuery.of(context).size.height*0.04,
           margin:const EdgeInsets.only(top: 30,right: 10,left: 10),

            decoration: BoxDecoration(
                color: buttonColor,
              borderRadius: BorderRadius.circular(30)
            ),
            child: Center(
              child: Text(attendCall ?? "",style: GoogleFonts.lato(color: textColor),),
            ),
          )
          
        ],
      ),
    );
  }
}
