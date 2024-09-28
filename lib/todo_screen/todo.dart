import 'package:flutter/material.dart';
import 'package:todo_app/components/button.dart';
import 'package:todo_app/components/listtiles.dart';
import 'package:todo_app/components/textfield.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  TextEditingController titleController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  List<Map<String, String>> todoList = [];
  bool addbool = false;
  int indexNo = -1;

  void add() {
    String title = titleController.text;
    String description = descriptionController.text;

    if (addbool) {
      setState(() {
        todoList[indexNo] = {"title": title, "description": description};
        addbool = false;
        indexNo = -1;
      });
    } else {
      if (title.isNotEmpty && description.isNotEmpty) {
        setState(() {
          todoList.add({"title": title, "description": description});
        });
      }
    }
    titleController.clear();
    descriptionController.clear();
  }

  void deleteListTile(index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  void editListTile(index, titlevalue, desValue) {
    setState(() {
      addbool = true;
      indexNo = index;
    });
    titleController.text = todoList[index]["title"] ?? "";
    descriptionController.text = todoList[index]["description"] ?? "";
  }

  void delete() {
    setState(() {
      todoList.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 201, 8),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            textField(titleController, "enter your Todo title"),
            const SizedBox(
              height: 10,
            ),
            textField(
                descriptionController, "enter the description of your todo"),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttonElevated(add),
                buttondeleteElevated(delete),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return listtile(todoList[index]["title"] ?? "",
                      todoList[index]["description"] ?? "", () {
                    deleteListTile(index);
                  }, () {
                    editListTile(index, todoList[index]["title"] ?? "",
                        todoList[index]["description"] ?? "");
                  });
                },
                itemCount: todoList.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
