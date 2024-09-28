import 'package:flutter/material.dart';

Widget listtile(
  String tilestitle,
  String tilesDes,
  VoidCallback deleteListTile,
  VoidCallback editListTile,
) {
  return ListTile(
      hoverColor: Colors.black26,
      leading: const Icon(Icons.work_outline),
      title: Text(tilestitle),
      subtitle: Text(tilesDes),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: deleteListTile,
            ),
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: editListTile,
            ),
          ],
        ),
      ));
}
