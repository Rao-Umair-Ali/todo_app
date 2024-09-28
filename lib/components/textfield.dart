import 'package:flutter/material.dart';

Widget textField(TextEditingController controller, String title) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      controller: controller,
      style: const TextStyle(color: Colors.white, fontSize: 25),
      decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(fontSize: 20),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white, style: BorderStyle.solid, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(25))),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white, style: BorderStyle.solid, width: 2))),
    ),
  );
}
