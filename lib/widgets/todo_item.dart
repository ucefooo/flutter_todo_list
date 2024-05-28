import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';

import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  ToDoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
        child: ListTile(
      onTap: () => {
        print('fsfsfsd'),
        todo.isDone = !todo.isDone
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      tileColor: Colors.white,
      leading: Icon(
        todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
         color: tdBlue
         ),
      title: Text(
        todo.todoText!,
        style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null),
      ),
      trailing: Container(
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.symmetric(vertical: 5),
        height: 35,
        width: 35,
        decoration:
            BoxDecoration(color: tdRed, borderRadius: BorderRadius.circular(5)),
        child: IconButton(
          color: Colors.white,
          iconSize: 18,
          icon: Icon(Icons.delete),
          onPressed: () => {
            print('delete'),
          },
        ),
      ),
    ));
  }
}
