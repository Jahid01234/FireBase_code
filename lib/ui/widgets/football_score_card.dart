import 'package:firebase_tuitorial/ui/model/football_model.dart';
import 'package:firebase_tuitorial/ui/theme/text_style_theme.dart';
import 'package:flutter/material.dart';

class FootballScoreCard extends StatelessWidget {
  final FootballModel football;

  const FootballScoreCard({
    super.key,
    required this.football,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.cyan,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //_buildTeam(football.teamScore1, football.teamName1),
            Column(
              children: [
                Text(
                  football.teamScore1.toString(),
                  style: myTextStyle(
                      color: Colors.tealAccent, fontWeight: FontWeight.bold),
                ),
                Text(
                  football.teamName1,
                  style: myTextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              "Vs",
              style: myTextStyle(
                  color: Colors.amberAccent, fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                Text(
                  football.teamScore2.toString(),
                  style: myTextStyle(
                      color:  Colors.tealAccent, fontWeight: FontWeight.bold),
                ),
                Text(
                  football.teamName2,
                  style: myTextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//   Widget _buildTeam(int score, String teamName) {
//     return Column(
//             children: [
//               Text(
//                 score.toString(),
//                 style: myTextStyle(
//                     color: Colors.orange, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 teamName,
//                 style: myTextStyle(
//                     color: Colors.white, fontWeight: FontWeight.bold),
//               ),
//             ],
//           );
//   }
// }
