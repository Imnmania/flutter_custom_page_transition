import 'package:flutter/material.dart';
// import 'package:flutter_page_transition/custom_page_route.dart';
import 'package:flutter_page_transition/scale_route.dart';
import 'package:flutter_page_transition/second_screen.dart';
// import 'package:flutter_page_transition/slide_right_route.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('First Screen'),
            MaterialButton(
              child: Text('Go to second Screen'),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => SecondScreen()));

                //

                Navigator.push(
                  context,
                  // CustomPageRoute(widget: SecondScreen()),
                  // SlideRightRoute(widget: SecondScreen()),
                  ScaleRoute(widget: SecondScreen()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
