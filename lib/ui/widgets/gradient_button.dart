import 'package:flutter/material.dart';


class GradientButton extends StatelessWidget {
  const GradientButton({Key? key, this.onTap, required this.text}) : super(key: key);
  final VoidCallback ?onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            gradient: const LinearGradient(
              colors: [
                Colors.pink,
                Colors.amber,
              ],
              stops: [0.55, 1.5],
            )),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
