import 'package:flutter/material.dart'; 
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; 
 
void main() { 
  runApp(MaterialApp( 
    home: TwitterSplashScreen(), 
  )); 
} 
 
class TwitterSplashScreen extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      backgroundColor: Color(0xFF1DA1F2), // Twitter Blue Color 
      body: Center( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [ 
            Icon(FontAwesomeIcons.twitter), 
          ], 
        ), 
      ), 
    ); 
  } 
}