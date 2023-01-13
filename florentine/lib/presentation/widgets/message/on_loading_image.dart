import 'package:flutter/material.dart';
import 'package:florentine/presentation/utils/color.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingImage extends StatelessWidget{
  const LoadingImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(0))
      ),
      alignment: Alignment.center,
      child:  SpinKitThreeBounce(
        color: myGreen,
        size: 30.0,
      ),
    );
  }

}

class LoadingScreen extends StatelessWidget{
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(0))
      ),
      alignment: Alignment.center,
      child:  SpinKitThreeBounce(
        color: myGreen,
        size: 40.0,
      ),
    );
  }

}