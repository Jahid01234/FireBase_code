
import 'package:flutter/material.dart';

 void mySnackBarMessage(String message,context){
   ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        backgroundColor: Colors.teal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
       // margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        content: Text(message, style: const TextStyle(color: Colors.white),),

    )
  );
}