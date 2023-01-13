import 'package:flutter/material.dart';

class ErrorImage extends StatelessWidget{
  const ErrorImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Icon(Icons.image_not_supported_outlined, size : 75,),
      alignment: Alignment.center,
    );
  }
}