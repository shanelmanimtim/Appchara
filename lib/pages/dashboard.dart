import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

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
      body: Padding(
        padding: EdgeInsets.fromLTRB(15.0, 50.0, 10.0, 0),
        child: Container(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Image(
                      image: AssetImage('assets/appchara.png'),
                    ),
                  ),
                  FlutterCarousel(
                      options: CarouselOptions(
                        height: 300.0,
                        showIndicator: true,
                        slideIndicator: CircularWaveSlideIndicator(),
                      ),
                    items: [1,2,3].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.pink
                            ),
                            child: Image.asset('assets/appchara.png'),
                          );
                        },
                      );
                  }).toList(),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/menu');
                        },
                        child: Text(
                          'Product',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/profile');
                        }
                        , child: Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ),
                    ],
                  ),
                 ],
              ),
            ),
          ),
      ),
    ),
    );
  }
}
