import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube/models/theme_model.dart';
import 'package:youtube/models/video_model.dart';

class LikedVideo extends StatelessWidget{
  final VideoModel videoModel;
   
  const LikedVideo({Key? key, required this.videoModel}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 90,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(videoModel.imageLink),
          Expanded(child: 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(videoModel.title,
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
                child: Text(videoModel.chanel,
                style: TextStyle(
                  fontSize: 13,
                  color: Provider.of<ThemeModel>(context, listen: false).isDark ? Colors.grey : Colors.grey[700]
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