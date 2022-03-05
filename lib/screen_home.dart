

import 'package:contacts/AddStudent.dart';
import 'package:contacts/ListStudent.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          AddStudent(),
          const Expanded(child: ListStudent()),
        ],),
          
        
      ),
    );
  }
}                                               