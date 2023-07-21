import 'package:flutter/material.dart';

Container customButton(String text, Function() onPressedAction,
    {bool isFilled = true}) {
  var foregroundColor = isFilled ? Colors.black : Colors.white;
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10.0),
    decoration: BoxDecoration(
      color: isFilled ? Colors.white : Colors.transparent,
      border: isFilled ? null : Border.all(color: Colors.white, width: 2),
    ),
    child: TextButton(
      onPressed: onPressedAction,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(text,
                  style: TextStyle(
                      color: foregroundColor,
                      fontSize: 19,
                      fontWeight: FontWeight.w900)),
            ),
          ),
          Icon(Icons.arrow_outward, color: foregroundColor),
        ],
      ),
    ),
  );
}
