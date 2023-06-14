import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testcode/Model/patient_detail_model.dart';

import '../CommonWidget/patientdetailwidget.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({super.key});

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  Color skyblue = const Color.fromRGBO(220, 237, 255, 1);

  List<PatientModel> patientModel = [
  PatientModel(subtitle: "Name",title: "Jessica"),
  PatientModel(subtitle: "Surname",title: "Simpson"),
  PatientModel(subtitle: "Date of birth",title: "July 16 , 1990(30y)"),
  PatientModel(subtitle: "City",title: "London"),
  PatientModel(subtitle: "Country",title: "United Kingdom"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0), // here the desired height
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "Profile Details",
              style: GoogleFonts.lato(color: Colors.indigo.shade900),
            ),
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.indigo.shade700),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.07,
              ),
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: skyblue,
              ),
              child: Center(
                child: ListTile(
                  leading: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40.0,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                        ),
                      )),
                  title: Text(
                    "Anna Kowalsky",
                    style: GoogleFonts.lato(color: Colors.black),
                  ),
                  subtitle: Text(
                    "Female",
                    style: GoogleFonts.lato(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: 20
                ),
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo,
                ),
                child: ListTile(
                    trailing: Container(
                      width: MediaQuery.of(context).size.width * 0.40,
                      height: MediaQuery.of(context).size.height * 0.04,
                      //  margin:const EdgeInsets.only(top: 30,right: 10,left: 10),
      
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "Share Profile",
                          style: GoogleFonts.lato(color: Colors.white),
                        ),
                      ),
                    ),
                    title: Text(
                      "Anna Kowalsky",
                      style: GoogleFonts.lato(color: Colors.white),
                    ),
                    subtitle: Text(
                      "Female",
                      style: GoogleFonts.lato(color: Colors.white),
                    ))),
                     Padding(
                       padding:EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05,),
                       child: Text("Patient details",style: GoogleFonts.lato(
                            fontSize: 20,
                             color: Colors.black,
                             fontWeight: FontWeight.w600
                           ),)
                     ),
                     Container(
                       height: 250,
                    margin:EdgeInsets.symmetric( horizontal:   MediaQuery.of(context).size.width * 0.02,),
                       child: ListView.builder(
                         itemCount: patientModel.length,
                         itemBuilder:(context, index) {
                         return PatientDetailsWidget(
                           subtitle: patientModel[index].title,
                         title:  patientModel[index].subtitle,);
                       },),
                     ),
                     Padding(
                       padding:EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
                       child: Text("Shared profile",style: GoogleFonts.lato(
                              fontSize: 20,
                             color: Colors.black,
                             fontWeight: FontWeight.w600
                           ),),
                     ),

                     Padding(
                       padding: EdgeInsets.only(top: 20),
                       child: ListTile(
                         
                         leading: Container(
                           
                           width: MediaQuery.of(context).size.width*0.3,
                           height:MediaQuery.of(context).size.width*0.3, 
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                     
                             color: skyblue
                           ),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Text("Dec 8",style: GoogleFonts.lato(color: Colors.indigo.shade600),),
                                Text("8:30 AM",style: GoogleFonts.lato(color: Colors.indigo.shade600,fontWeight: FontWeight.w400),),
                           
                             ],
                           ),
                         ),
                         title: Text(
                      "Anna Kowalsky",
                      style: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "7 views",
                      style: GoogleFonts.lato(color: Colors.grey),
                    )
                       ),
                     )
      
          ],
        ),
      ),
    );
  }
}
