import 'package:flutter/material.dart';

Widget textField(TextEditingController controller, String title) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      height: 50,
      child: TextField(
        controller: controller,
        style: const TextStyle(color: Colors.white, fontSize: 25),
        decoration: InputDecoration(
            hintText: title,
            hintStyle: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white, style: BorderStyle.solid, width: 2),
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.white, style: BorderStyle.solid, width: 2))),
      ),
    ),
  );
}
