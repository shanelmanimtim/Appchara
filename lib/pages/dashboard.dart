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
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.pinkAccent,
      body: Container(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/menu');
                      },
                      child: Text('Pumarine ka sa dashboard'),
                    ),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/profile');
                      },
                      child: Text('Pumarine ka sa profile'),
                    ),
                ],
               ),
            ),
          ),
        ),
    );
  }
}
