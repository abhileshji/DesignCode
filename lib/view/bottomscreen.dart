

import 'package:flutter/material.dart';

import 'cardscreen.dart';
import 'firstScreen.dart';
import 'money_screen.dart';
import 'noticationscreen.dart';

class BottomScreen extends StatefulWidget {
  BottomScreen({Key? key, }) : super(key: key);



  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen>
    with TickerProviderStateMixin {
  final pages = [
    const FirstScrenn(),
   
    const CardScreen(),
    const MoneyScreen(),
      const NotificationScreen(),
  ];
  TabController? tabController;

   Color greenColor  =  const Color.fromRGBO(0, 212, 168, 1);
  @override
  void initState() {
    tabController = TabController(vsync: this, length: 4, initialIndex: 0);
    print("*******************${tabController!.index}");
    tabController!.addListener(_handleTabSelection);
    if (mounted && !tabController!.indexIsChanging) {
      setState(() {});
    }
    super.initState();
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        backgroundColor:Colors.white,
            
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
            color:   Color.fromRGBO(0, 212, 168, 1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                9,
              ),
              topRight: Radius.circular(
                9,
              ),
            ),
          ),
          child: TabBarView(
            controller: tabController,
            children: pages,
          ),
        ),
        bottomNavigationBar: Container(
          height: 65,
          decoration: const BoxDecoration(
            boxShadow:[
              BoxShadow(
                color: Colors.white,spreadRadius: 0,blurRadius: 0
              )
            ]
          ),
          child: TabBar(
               
            controller: tabController,
            labelStyle: const TextStyle(color: Colors.grey),
            indicatorWeight: 0.2,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.blueGrey,
            unselectedLabelStyle:
                const TextStyle(fontSize: 12, color: Colors.blueGrey),
            tabs: [
              Tab(
                icon:  tabController!.index == 0 ?  CircleAvatar(
                  radius: 25,
                  backgroundColor: greenColor,
                  child: const Icon(Icons.home,color: Colors.white,),
                ) : const Icon(Icons.home,color: Colors.blueGrey,)),
                   Tab(
                icon:  tabController!.index == 1 ?  CircleAvatar(
                  radius: 25,
                  backgroundColor: greenColor,
                  child: const Icon(Icons.card_travel,color: Colors.white,),
                ) : const Icon(Icons.card_travel,color: Colors.blueGrey,)),
                
               
               Tab(
                icon:  tabController!.index == 2 ?  CircleAvatar(
                  radius: 25,
                  backgroundColor:greenColor,
                  foregroundColor: Colors.red,
                  child: const Icon(Icons.calendar_month,color: Colors.white,),
                ) : const Icon(Icons.calendar_month,color: Colors.blueGrey,)),
                 
               Tab(
                icon:  tabController!.index == 3 ?  CircleAvatar(
                  radius: 25,
                  backgroundColor: greenColor,
                  child: const Icon(Icons.notifications,color: Colors.white,),
                ) : const Icon(Icons.notifications,color: Colors.blueGrey,)),
              
            ],
          ),
        ),
      ),
    );
  }
}
