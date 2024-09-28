import 'package:flutter/material.dart';

Widget buttonElevated(VoidCallback onPressed, {required String name}) {
  return SizedBox(
    width: 120,
    height: 50,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 50,
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
            side: BorderSide(
                color: Colors.white, style: BorderStyle.solid, width: 2),
            borderRadius: BorderRadius.horizontal(
                right: Radius.circular(15), left: Radius.circular(15))),
      ),
      child: Text(
        name,
        style: const TextStyle(shadows: [
          Shadow(
            blurRadius: 5.0,
            color: Colors.black,
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
    height: 50,
    child: ElevatedButton(
      onPressed: onPresseds,
      style: ElevatedButton.styleFrom(
        elevation: 50,
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          side: BorderSide(
              color: Colors.white, style: BorderStyle.solid, width: 2),
          borderRadius: BorderRadius.horizontal(
              right: Radius.circular(15), left: Radius.circular(15)),
        ),
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
