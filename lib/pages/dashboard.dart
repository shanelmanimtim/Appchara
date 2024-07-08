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
      backgroundColor: Colors.pink,
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
      bottomNavigationBar: BottomNavigationBar(
        elevation: 4.0,
        onTap: (int val){
          switch(val){
            case 0:
              Navigator.pushNamed(context, '/menu');
              break;
            case 1:
              Navigator.pushNamed(context, '/login');
              break;
            case 2:
              Navigator.pushNamed(context, '/signup');
              break;
            case 3:
              Navigator.pushNamed(context, '/home');
              break;
          }
        },

        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.pink,
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
    );
  }
}
