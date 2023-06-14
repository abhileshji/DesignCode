import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testcode/view/profile_details.dart';

import '../CommonWidget/card_widget.dart';
import '../CommonWidget/content_widget.dart';
import '../CommonWidget/profile_image.dart';
import '../Model/data_show.dart';

class FirstScrenn extends StatefulWidget {
  const FirstScrenn({super.key});

  @override
  State<FirstScrenn> createState() => _FirstScrennState();
}

class _FirstScrennState extends State<FirstScrenn> {
  List<String> images = [
    "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  ];
  Color skyblue = const Color.fromRGBO(220, 237, 255, 1);
  Color greenColor = const Color.fromRGBO(0, 212, 168, 1);

  List<ConsulattionsModel> consulattions = [
    ConsulattionsModel(
        attendCall: "Waiting for  call ",
        images:
            "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        date: "Dec 7",
        name: "Michael Simpson",
        time: "5:45 PM",
        color: Colors.blue,
        borderColor: Colors.indigo.shade400,
        
        
        ),
    ConsulattionsModel(
      attendCall: "Waiting for  call ",
      images:
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      date: "Dec 7",
      name: "Michael Simpson",
      time: "5:45 PM",
      color: Color.fromRGBO(220, 237, 255, 1),
        borderColor: Colors.white,
    ),
    ConsulattionsModel(
      attendCall: "Waiting for  call ",
      images:
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      date: "Dec 7",
      name: "Michael Simpson",
      time: "5:45 PM",
      color: Colors.blue,
        borderColor: Colors.blueAccent,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
         
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileDetails(),)),
                      child: const CircleAvatar(
                        radius: 30,
                        
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                        ),
                         ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome back",
                            style: GoogleFonts.lato(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "Jessica",
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.menu,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
              ContentWidget(
                text: "Upcoming Consulattions",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: consulattions.length,
                  itemBuilder: (context, index) {
                    return CardWidget(
                        time: consulattions[index].time,
                        images: consulattions[index].images,
                        date: consulattions[index].date,
                        color: consulattions[index].color,
                        title: consulattions[index].name,
                        attendCall: consulattions[index].attendCall,
                        buttonColor: greenColor,
                        borderColor: consulattions[index].borderColor,
                        
                        );
                  },
                ),
              ),
              ContentWidget(
                text: "Patient  Profile",
              ),
              Row(
                children: [
                  Padding(
                    padding:const EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                          backgroundColor: greenColor,
                          radius: 28,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              )),
                        ),
                  ),
                        Expanded(
                          child: Container(
                                        margin: const EdgeInsets.only(left: 20),
                                        height: MediaQuery.of(context).size.height * 0.10,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: images.length,
                                          itemBuilder: (context, index) {
                                            // if (index == 0) {
                                            //   return CircleAvatar(
                                            //     backgroundColor: greenColor,
                                            //     radius: 28,
                                            //     child: IconButton(
                                            //         onPressed: () {},
                                            //         icon: const Icon(
                                            //           Icons.add,
                                            //           color: Colors.white,
                                            //         )),
                                            //   );
                                            // } else {
                                              return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ProfileImage(
                              images: images[index],
                            ));
                                            }
                                          // },
                                        ),
                                      ),
                        ),

                ],
              ),
            
              Container(
                height: 60,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: skyblue, borderRadius: BorderRadius.circular(25.0)),
                child: TabBar(
                  indicator: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(25.0)),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: const [
                    Tab(
                      text: 'Last enquiries',
                    ),
                    Tab(
                      text: 'Report',
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ListTile(
                      title: Text(
                        "Anna Kowalsky",
                        style: GoogleFonts.lato(color: Colors.black),
                      ),
                      subtitle: Text(
                        "Video Consulation",
                        style: GoogleFonts.lato(color: Colors.grey),
                      ),
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ListTile(
                      title: Text(
                        "Anna Kowalsky",
                        style: GoogleFonts.lato(color: Colors.black),
                      ),
                      subtitle: Text(
                        "Video Consulation",
                        style: GoogleFonts.lato(color: Colors.grey),
                      ),
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                        ),
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
