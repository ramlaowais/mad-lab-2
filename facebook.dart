import 'package:flutter/material.dart'; 
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() { 
  runApp(MaterialApp( 
    home: FacebookSplashScreen(), 
  )); 
} 
 
class FacebookSplashScreen extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      backgroundColor: Colors.white, 
      body: Column( 
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [ 
          Spacer(), 
          Icon(FontAwesomeIcons.facebook,size: 100,), 
          SizedBox(height: 20), 
          Spacer(), 
          Text( 
            'FACEBOOK', 
            style: TextStyle( 
              color: Colors.grey, 
              fontSize: 20, 
              fontWeight: FontWeight.bold, 
              letterSpacing: 2, 
            ), 
          ), 
          SizedBox(height: 10), 
          Row( 
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [ 
              Icon(Icons.facebook, 
              color: Colors.grey), 
              SizedBox(width: 5), 
              Image.asset('assets/messenger.png', width: 18, 
              color: Colors.grey,), 
              SizedBox(width: 5), 
              Image.asset('assets/instagram.png', width: 18, 
              color: Colors.grey), 
              SizedBox(width: 5), 
              Image.asset('assets/social.png', width: 18, 
              color: Colors.grey), 
              SizedBox(width: 5), 
              Icon(Icons.link, 
              color: Colors.grey), 
            ], 
          ), 
          SizedBox(height: 20), 
        ], 
      ), 
    ); 
  } 
} 