import 'package:flutter/material.dart';

Widget buttonElevated(VoidCallback onPressed) {
  return SizedBox(
    width: 120,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
      ),
      child: const Text(
        "Add",
        style: TextStyle(shadows: [
          Shadow(
            blurRadius: 5.0,
            color: Colors.black, // Shadow color for a better outline effect
            offset: Offset(2.0, 2.0),
          ),
        ], fontSize: 16),
      ),
    ),
  );
}

Widget buttondeleteElevated(VoidCallback onPresseds) {
  return SizedBox(
    width: 120,
    child: ElevatedButton(
      onPressed: onPresseds,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
      ),
      child: const Text(
        "Delete",
        style: TextStyle(shadows: [
          Shadow(
            blurRadius: 5.0,
            color: Colors.black, // Shadow color for a better outline effect
            offset: Offset(2.0, 2.0),
          ),
        ], fontSize: 16),
      ),
    ),
  );
}
