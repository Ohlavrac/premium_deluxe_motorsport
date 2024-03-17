
import 'package:flutter/material.dart';

class CustomIconCardWidget extends StatelessWidget {
  final String asseticon;
  final String text;
  const CustomIconCardWidget({super.key, required this.asseticon, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Column(
            children: [
              Image.asset(asseticon, height: 25,),
              Text(text, style: const TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}