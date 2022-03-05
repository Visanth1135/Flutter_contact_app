

import 'package:flutter/material.dart';

class AddStudent extends StatelessWidget {
   AddStudent({ Key? key }) : super(key: key);

  final _nameC = TextEditingController();
  final _ageC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 
      const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            controller: _nameC,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Name'),
            ),
            const SizedBox(height: 10),
          TextFormField(
            controller: _ageC,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Age'),
            ),  
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
              AddBtnClick;
              },
              icon:const Icon(Icons.add),
              label: const Text('Add student'),
            ),
      ],),
      );
  }


// ignore: non_constant_identifier_names
Future<void> AddBtnClick() async{
  final _name = _nameC.text.trim();
  final _age = _ageC.text.trim();
  if(_name.isEmpty || _age.isEmpty){
    return;
  }
  // ignore: avoid_print
  print('$_name $_age');
}
}