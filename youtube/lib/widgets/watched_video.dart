import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WatchedVideo extends StatelessWidget{
  final String title;
  final String chanel;
  final String imageLink;
   
   const WatchedVideo({Key? key, required this.title, required this.chanel, required this.imageLink}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Image.network(imageLink),
               )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 1
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 2),
            child: Text(chanel,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey[700]
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }

}