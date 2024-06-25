import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
                    child: Image.asset('assets/cancan.png'),
                    radius: 50.0,
                  ),
                ),
                Divider(
                  height: 70.0,
                  color: Colors.white70,
                  thickness: 10.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person_2,
                      color: Colors.white70,
                    ),
                    SizedBox(width: 3.0,),
                    Text(
                      'NAME',
                      style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.white,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Shanel Ann Manimtim',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30.0
                  ),
                ),
                SizedBox(height: 30.0,),
                Text(
                  'YEAR',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                ),
                Text(
                  '4th Year',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(height: 30.0,),
                Text(
                  'EMAIL',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                ),
                Text(
                  'manimtimshanelm@gmail.com',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                    onPressed: (){},
                    child: Text('Add Year'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

