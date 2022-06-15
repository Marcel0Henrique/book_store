import 'package:flutter/material.dart';

class CustomElevatedButtom extends StatefulWidget {
  final VoidCallback onPressed;
  final String title;
  final bool inverseColor;

  const CustomElevatedButtom({
    Key? key,
    required this.onPressed,
    required this.title,
    this.inverseColor = false,
  }) : super(key: key);

  @override
  State<CustomElevatedButtom> createState() => _CustomElevatedButtomState();
}

class _CustomElevatedButtomState extends State<CustomElevatedButtom> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.6,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          primary: widget.inverseColor
              ? Colors.black
              : Theme.of(context).primaryColor,
          textStyle: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.05,
            fontWeight: FontWeight.bold,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: Text(
          widget.title,
          style: TextStyle(
            color: widget.inverseColor ? Colors.yellow : Colors.black,
          ),
        ),
      ),
    );
  }
}
