import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscuredText;

  
  const Mytextfield({super.key,
  required this.controller,
  required this.hintText,
  required this.obscuredText});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: controller,
                  obscureText: obscuredText,
               
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide( color: Colors.white)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide( color: Colors.grey.shade400)
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText : hintText,
                    hintStyle: TextStyle(color: Colors.grey[600])
                  ),
                ),
              ) ;
  }
}
