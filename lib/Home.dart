import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int year = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('User Profile'),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/cancan.png'),
                    backgroundColor: Colors.grey,
                    radius: 50.0,
                  ),
                ),
                Divider(
                  height: 70.0,
                  color: Colors.white70,
                  thickness: 5.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person_2,
                      color: Colors.white70,
                    ),
                    SizedBox(width: 4.0,),
                    Text(
                      'NAME',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Shanel Ann Manimtim',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20.0
                  ),
                ),
                SizedBox(height: 30.0,),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month_sharp,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 4.0,),
                    Text(
                      'YEAR',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  '$year Year',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 30.0,),
                Row(
                  children: [
                    Icon(
                      Icons.email_sharp,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 4.0,),
                    Text(
                      'EMAIL',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  'manimtimshanelm@gmail.com',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        year += 1;
                      });
                    },
                    child: Text(
                        'Add Year',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

