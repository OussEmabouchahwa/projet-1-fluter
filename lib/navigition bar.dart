import 'package:flutter/material.dart';

class TabBarExample extends StatefulWidget {
  TabBarExample({Key? key}) : super(key: key);

  @override
  _TabBarExampleState createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
           endDrawer:Drawer(
             child: Container(
               padding: EdgeInsets.all(16),
               decoration: BoxDecoration(
                 color: Colors.blue,
                 borderRadius: BorderRadius.circular(15.00),
               ),
               child: Container(
                 padding:EdgeInsets.all(15) ,
                 child: ListView(

                   children: [
                     Row( children  : [
                       Container(
                         height: 60,
                         width: 60,
                         child:ClipRRect(
                           borderRadius: BorderRadius.circular(50.00),

                           child : Image(image: NetworkImage("https://www.memesmonkey.com/images/memesmonkey/ff/ffdc3774b38d345fef49005858e9f260.jpeg"),fit: BoxFit.cover,),
                           

                         ),),]),

                   ],
                 ),

               ),
               
             ),
           ),
           appBar: AppBar(

          centerTitle: true,
          title: Text(' الأذكار'),
          leading: IconButton(onPressed: (){},color: Colors.white,icon: Icon(Icons.gps_fixed_outlined),),
          backgroundColor: Colors.grey,
          bottom: TabBar(

            indicatorWeight: 10,
            indicatorColor: Colors.grey,
            controller: tabController,
            labelStyle: TextStyle(fontSize: 20),
            labelColor: Colors.grey,
            unselectedLabelColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.sunny_snowing, color: Colors.amberAccent),
                text: "أذكار اصباح",
              ),
              Tab(
                icon: Icon(Icons.mode_night_outlined, color: Colors.black54),
                text: "أذكار ليل",
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("أذكار اصباح"),
                  MaterialButton(
                    padding: EdgeInsets.all(15),
                    onPressed: () {
                      tabController.animateTo(1);
                    },
                    child: Text("Switch to أذكار ليل"),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("أذكار ليل"),
                  MaterialButton(
                    padding: EdgeInsets.all(15),
                    onPressed: () {
                      tabController.animateTo(0);
                    },
                    child: Text("Switch to أذكار اصباح"),
                  ),
                ],
              ),
            ),
          ],
        ),

    );
  }
}