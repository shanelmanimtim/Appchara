import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
       elevation: 3.0,
       onTap: (int val){
         switch(val){
           case 0:
             Navigator.pushNamed(context, '/');
             break;
           case 1:
             Navigator.pushNamed(context, '/menu');
             break;
           case 2:
             Navigator.pushNamed(context, 'profile');
         }
       },
       currentIndex: 0,
       items: const [
         BottomNavigationBarItem(
             icon: Icon(Icons.home),
            label: 'Home',
         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.fastfood),
            label: 'Fast food',
         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.person),
           label: 'Profile'
         ),
       ],
     ),
      backgroundColor: Colors.pinkAccent,
      body: Container(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Center(
                  child: Image(
                    image: AssetImage('assets/appchara.png'),
                  ),
                ),
                ],
               ),
            ),
          ),
        ),
    );
  }
}
