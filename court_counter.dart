import 'package:flutter/material.dart'; 
 
void main() { 
  runApp(MaterialApp( 
    home: CourtCounterScreen(), 
  )); 
} 
 
class CourtCounterScreen extends StatefulWidget { 
  @override 
  _CourtCounterScreenState createState() => _CourtCounterScreenState(); 
} 
 
class _CourtCounterScreenState extends State<CourtCounterScreen> { 
  int teamAScore = 0; 
  int teamBScore = 0; 
 
  void updateScore(int team, int points) { 
    setState(() { 
      if (team == 1) { 
        teamAScore += points; 
      } else { 
        teamBScore += points; 
      } 
    }); 
  } 
 
  void resetScores() { 
    setState(() { 
      teamAScore = 0; 
      teamBScore = 0; 
    }); 
  } 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: Text("Court Counter"), 
        backgroundColor: Colors.orange, 
      ), 
      body: Column( 
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [ 
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
            children: [ 
              buildTeamColumn("Team A", teamAScore, 1), 
              Container( 
                height: 100, 
                width: 1, 
                color: Colors.grey, 
              ), 
              buildTeamColumn("Team B", teamBScore, 2), 
            ], 
          ), 
          SizedBox(height: 20), 
          ElevatedButton( 
            onPressed: resetScores, 
            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange), 
            child: Text("RESET"), 
          ), 
        ], 
      ), 
    ); 
  } 
 
  Widget buildTeamColumn(String teamName, int score, int team) { 
    return Column( 
      mainAxisAlignment: MainAxisAlignment.center, 
      children: [ 
        Text(teamName, style: TextStyle(fontSize: 20)), 
        Text('$score', style: TextStyle(fontSize: 48)), 
        SizedBox(height: 10), 
        ElevatedButton( 
          onPressed: () => updateScore(team, 3), 
          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange), 
          child: Text("+3 POINTS"), 
        ), 
        ElevatedButton( 
          onPressed: () => updateScore(team, 2), 
          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange), 
          child: Text("+2 POINTS"), 
        ), 
        ElevatedButton( 
          onPressed: () => updateScore(team, 1), 
          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange), 
          child: Text("FREE THROW"), 
        ), 
      ], 
    ); 
  } 
}