import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileImage extends StatelessWidget {
  ProfileImage({super.key, this.images, });
  String? images;


  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
     backgroundImage: NetworkImage(images ?? "",) ,
      
    );
    
  }
}
