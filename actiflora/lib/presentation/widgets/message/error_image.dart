import 'package:flutter/material.dart';
import 'package:pfe_mobile/presentation/utils/color.dart';

class ErrorImage extends StatelessWidget{
  const ErrorImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: const BoxDecoration(
        //color: myGreen,
        //image: Image.network('https://picsum.photos/300?image=9'),
          /*image: DecorationImage(
            image: NetworkImage(
                'https://picsum.photos/300?image=9'),
            fit: BoxFit.cover,
          ),*/
        borderRadius: BorderRadius.all(Radius.circular(0))
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const[
          Text(
            'Whoops!',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            'Image not found',
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }

}