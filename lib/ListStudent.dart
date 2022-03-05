import 'package:contacts/db_functions.dart';
import 'package:contacts/data_model.dart';
import 'package:flutter/material.dart';

class ListStudent extends StatefulWidget {
  const ListStudent({Key? key}) : super(key: key);

  @override
  State<ListStudent> createState() => _ListStudentState();
}

class _ListStudentState extends State<ListStudent> {
  @override
  Widget build(BuildContext context) {
    return 
       ValueListenableBuilder(
              valueListenable: studentlistnotifier,
              builder:
                  (BuildContext ctx, List<studentModel> studentList, Widget? child) {
                return ListView.separated(
                  itemBuilder: (ctx, index) {
                    final data = studentList[index];
                    return ListTile(
                      title: Text(data.name),
                      subtitle: Text(data.age),
                    );
                  },
                  separatorBuilder: (ctx, index) {
                    return const Divider();
                  },
                  itemCount: studentList.length,
                );
              },
             
       );
  }
}
