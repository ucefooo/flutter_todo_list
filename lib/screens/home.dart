import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/model/todo.dart';
import 'package:flutter_application_1/widgets/todo_item.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final todosList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newMethod(),
      body: Stack(
        children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  searchBox(),
                  Expanded(
                    child: ListView(
                      children: [
                        Container(
                          margin:const EdgeInsets.only(
                            top: 50,
                            bottom: 20,
                          ),
                          child: const Text(
                            'All Todos',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            )
                          ),
                        ),
                        for (ToDo todoo in todosList)
                          ToDoItem(todo:todoo)
                      ],
                    ),
                  )
                ],
              )
              ),
              Align()
        ],
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: const TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(Icons.search, color: tdBlack, size: 20),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, maxWidth: 25),
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(color: tdGrey)),
      ),
    );
  }

  AppBar newMethod() {
    return AppBar(
      elevation: 0,
      backgroundColor: tdBlue,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu, color: tdBlack, size: 30),
          Container(
              width: 40,
              height: 40,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset('assets/images/avatar.jpg')))
        ],
      ),
    );
  }
}
