import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_tuitorial/ui/widget/snackbar_message.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  Future<void> _sendData(context)async {
    try {
      await FirebaseFirestore.instance.collection("User_info").add({
        "Name": "Jahid Hasan",
        "Title": "Flutter Dev",
        "age"  : 20.toString(),
      });
      mySnackBarMessage("Data send successfully", context);
    }catch(e){
      mySnackBarMessage("Data send failed: $e", context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.white,
        title: const Text("Read data from FireBase."),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0)
            )
          ),
          child: const Text("Send Data"),
          onPressed: (){
            _sendData(context);
          },
        ),
      ),
    );
  }
}
