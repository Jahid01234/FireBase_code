import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_tuitorial/ui/model/football_model.dart';
import 'package:firebase_tuitorial/ui/widgets/football_score_card.dart';
import 'package:flutter/material.dart';



// class MatchListScreen extends StatefulWidget {
//   const MatchListScreen({super.key});
//
//   @override
//   State<MatchListScreen> createState() => _MatchListScreenState();
// }
//
//
//
// class _MatchListScreenState extends State<MatchListScreen> {
//
//   FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
//   List<FootballModel> matchList = [];
//
//   Future<void> _getData() async{
//     matchList.clear();
//     final QuerySnapshot result = await firebaseFirestore.collection("football").get();
//     for(QueryDocumentSnapshot doc in result.docs){
//        matchList.add(
//          FootballModel(
//            matchName: doc.id,
//            teamName1: doc.get("teamName1"),
//            teamName2: doc.get("teamName2"),
//            teamScore1: doc.get("team1"),
//            teamScore2: doc.get("team2"),
//          ),
//        );
//     }
//     setState(() {});
//   }
//
//
//   @override
//   void initState() {
//     super.initState();
//     _getData();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.purpleAccent,
//         foregroundColor: Colors.white,
//         title: const Text("Football Match"),
//         centerTitle: true,
//       ),
//       body: ListView.builder(
//           itemCount: matchList.length,
//           itemBuilder: (context, index){
//             return FootballScoreCard(football: matchList[index],);
//           }
//       ),
//     );
//   }
// }





class MatchListScreen extends StatefulWidget {
  const MatchListScreen({super.key});

  @override
  State<MatchListScreen> createState() => _MatchListScreenState();
}



class _MatchListScreenState extends State<MatchListScreen> {

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  List<FootballModel> matchList = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.white,
        title:  const Column(
          children: [
            Text("Football Match"),
            Text("Read data from FireBase."),
          ],
        ),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: firebaseFirestore.collection('football').snapshots(),
        builder: (context, snapshot) {

          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator(),);
          }else if(snapshot.hasError){
            return  Center(child: Text(snapshot.error.toString()),);
          }else if(snapshot.hasData == false){
            return const Center(child: Text("Empty List"),);
          } else {
           // if has been data then will show...........
            matchList.clear();
            for(QueryDocumentSnapshot doc in snapshot.data?.docs ?? []){
              matchList.add(
                FootballModel(
                  matchName: doc.id,
                  teamName1: doc.get("teamName1"),
                  teamName2: doc.get("teamName2"),
                  teamScore1: doc.get("team1"),
                  teamScore2: doc.get("team2"),
                ),
              );
            }

            return ListView.builder(
                itemCount: matchList.length,
                itemBuilder: (context, index) {
                  return FootballScoreCard(football: matchList[index],);
                }
            );
          }
        }
      ),
    );
  }
}


