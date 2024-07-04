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
             Navigator.pushNamed(context, '/Menu');
             break;
           case 1:
             Navigator.pushNamed(context, '/Login');
             break;
           case 2:
             Navigator.pushNamed(context, '/Signup');
             break;
           case 3:
             Navigator.pushNamed(context, '/profile');
         }
       },
       backgroundColor: Colors.pink,
       currentIndex: 0,
       items: const [
         BottomNavigationBarItem(
             icon: Icon(Icons.home),
            label: 'Home',
         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.login),
            label: 'Login',
         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.logo_dev_sharp),
           label: 'Signup'
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
