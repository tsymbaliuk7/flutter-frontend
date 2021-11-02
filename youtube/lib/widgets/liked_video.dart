import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LikedVideo extends StatelessWidget{
  final String title;
  final String chanel;
  final String imageLink;
   
   const LikedVideo({Key? key, required this.title, required this.chanel, required this.imageLink}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 90,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(imageLink),
          Expanded(child: 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: Text(chanel,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[700]
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                ),
              )
            ],),
          )
          )
        ],
      ),
    );
  }

}