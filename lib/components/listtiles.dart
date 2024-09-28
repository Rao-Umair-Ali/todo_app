import 'package:flutter/material.dart';

Widget listtile(
  String tilestitle,
  String tilesDes,
  VoidCallback deleteListTile,
  VoidCallback editListTile,
) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(20)),
    child: ListTile(
      leading: const Icon(
        Icons.work_outline,
        size: 35,
        color: Color.fromARGB(255, 1, 69, 187),
      ),
      title: Text(
        tilestitle,
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        tilesDes,
        style: const TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
      ),
      trailing: SizedBox(
        width: 120,
        child: Row(
          children: [
            const SizedBox(
              width: 35,
            ),
            IconButton(
              icon: const Icon(
                Icons.delete,
                color: Color.fromARGB(255, 1, 69, 187),
              ),
              onPressed: deleteListTile,
            ),
            IconButton(
              icon: const Icon(
                Icons.edit,
                color: Color.fromARGB(255, 1, 69, 187),
              ),
              onPressed: editListTile,
            ),
          ],
        ),
      ),
    ),
  );
}
