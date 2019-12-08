import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 18, 18, 1),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: HomePersistantHeader(),
            floating: true,
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                //Container for Search Bar
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.grey,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        borderSide: BorderSide(color: Colors.redAccent)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: BorderSide(color: Colors.grey[800])
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 32, vertical: 10),
                      hintText: "Search People",
                      filled: true,
                      fillColor: Colors.grey[900],
                      hintStyle: TextStyle(color: Colors.grey)
                    ),
                  ),
                ),

                SizedBox(height: 16,),
                //Container for Slider
                Container(
                  height: 300,
                  width: double.infinity,
                  child: PageView(
                    children: <Widget>[
                      //Container for slide image
                      Container(
                        margin: EdgeInsets.only(left: 16),
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50))),
                        child: ClipRRect(
                          child: Image.asset("assets/2.jpg", fit: BoxFit.cover,),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        )
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 16),
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50))),
                          child: ClipRRect(
                            child: Image.asset("assets/1.jpg", fit: BoxFit.cover,),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          )
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16,),
                //Container for skillss
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Skills", style: TextStyle(color: Colors.grey[100], fontSize: 24),),
                      Text("Add your skills tags so that people can search", style: TextStyle(color: Colors.grey,),)
                    ],
                  ),
                ),

                SizedBox(height: 16,),
                //Containers for skilss tags
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Wrap(
                    spacing: 10,
                    children: <Widget>[
                      Chip(label: Text("Fitness", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),), backgroundColor: Colors.redAccent,),
                      Chip(label: Text("Trainer", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),), backgroundColor: Colors.redAccent,),
                      Chip(label: Text("Gym Instructor", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),), backgroundColor: Colors.redAccent,),
                      Chip(label: Text("Martial Artist", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),), backgroundColor: Colors.redAccent,),
                      Chip(label: Text("Kungu Master", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),), backgroundColor: Colors.redAccent,),
                      Chip(label: Text("Boxer", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),), backgroundColor: Colors.redAccent,),
                      Chip(label: Text("Ninja", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),), backgroundColor: Colors.redAccent,),

                    ],
                  ),
                ),

                SizedBox(height: 16,),
                //Container for Clients
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Clients", style: TextStyle(color: Colors.grey[100], fontSize: 24),),
                      Text("All the people who are currently under your supervision", style: TextStyle(color: Colors.grey,),)
                    ],
                  ),
                ),

                SizedBox(height: 16,),

                //Container for Clients List
                Container(
                  width: MediaQuery.of(context).size.width-16,
                  padding: EdgeInsets.only(left: 16),
                  height: 60,
                  child: ListView.builder(
                      itemBuilder: (context, index){
                        return CircleAvatar(
                          radius: 40,
                            child: ClipOval(
                              child: Image.asset("assets/client${index+1}.jpg", fit: BoxFit.contain,),
                            ),
                        );
                      },
                    shrinkWrap: true,
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                SizedBox(height: 32,),
              ]
            ),
          )
        ],
      ),
    );
  }
}

class HomePersistantHeader extends SliverPersistentHeaderDelegate{
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      color: Colors.black,
      width: double.infinity,
      padding: EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Hello!", style: TextStyle(color: Colors.grey),),
              Text("Maaz Aftab", style: TextStyle(color: Colors.grey[100], fontSize: 24),)
            ],
          ),

          CircleAvatar(
            radius: 30,
            child: ClipOval(
              child: Image.asset("assets/profile.jpg", fit: BoxFit.contain,),
            ),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 100;

  @override
  // TODO: implement minExtent
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }

}
