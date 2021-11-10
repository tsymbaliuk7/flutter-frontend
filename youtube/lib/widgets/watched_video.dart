import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube/models/video_model.dart';

class WatchedVideo extends StatelessWidget{
  final VideoModel videoModel;
   
  const WatchedVideo({Key? key, required this.videoModel}) : super(key: key);
  
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
              Expanded(child: Image.network(videoModel.imageLink),
               )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(videoModel.title,
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
            child: Text(videoModel.chanel,
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