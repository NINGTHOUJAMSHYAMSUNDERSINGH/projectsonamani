import 'package:RoadAssistance/dashboard/userpage/peopleadd.dart';
import 'package:RoadAssistance/dashboard/userpage/userpage.dart';
import 'package:flutter/material.dart';

class DashboardUi extends StatefulWidget {
  const DashboardUi({Key? key}) : super(key: key);

  @override
  State<DashboardUi> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<DashboardUi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            
            centerTitle: true,
            title: const Text("Welcome To Road Assistance"),
            backgroundColor:  Colors.deepPurple,
actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.people_rounded,
        color: Colors.white,
      ),
     // Within the `HomeRoute` widget
onPressed: () {
			Navigator.push(
				context,
				MaterialPageRoute(builder: (context) =>  MyApp()),
			);
			}),

      
    
  ],

          ),
          body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                    
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/acc.jpg')),
                      border: Border.all(color: Colors.black)),
                      child:  Stack(
      children: [
                  Text("data")
      ],
    ),
                ),
             ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/ching.jpg')),
                      border: Border.all(color: Colors.black)),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/jump.jpg')),
                      border: Border.all(color: Colors.black)),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/flat tyre.jpg')),
                      border: Border.all(color: Colors.black)),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/meikhu.jpg')),
                      border: Border.all(color: Colors.black),
                      ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/outofgas.jpg')),
                      border: Border.all(color: Colors.black)),
                ),
              ),
            ],
          ),
        ));
  }
}
