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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "Todo App",
            style: TextStyle(
                shadows: [
                  Shadow(
                    blurRadius: 1.0,
                    color: Color.fromARGB(255, 185, 185, 185),
                    offset: Offset(5.0, 0.0),
                  ),
                ],
                color: Color.fromARGB(255, 50, 101, 190),
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontStyle: FontStyle.normal),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 50, 101, 190),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            textField(titleController, "Enter your Todo title"),
            const SizedBox(
              height: 2,
            ),
            textField(
                descriptionController, "Enter the description of your todo"),
            const SizedBox(
              height: 10,
            ),
            if (!addbool)
              SizedBox(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buttonElevated(add, name: "Add"),
                  buttondeleteElevated(delete),
                ],
              ))
            else
              buttonElevated(add, name: "Update"),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.separated(
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
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 15,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
