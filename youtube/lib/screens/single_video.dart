import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube/models/liked.dart';
import 'package:youtube/models/video_model.dart';
import 'package:youtube/widgets/liked_video.dart';

class SingleVideo extends StatelessWidget{
  final VideoModel videoModel;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  SingleVideo({Key? key, required this.videoModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black
                    ),
                    padding: const EdgeInsets.only(top: 30),
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(children: [
                        Expanded(
                          child: Image.network(videoModel.imageLink),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                videoModel.title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  height: 1.5
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                child: Text('${videoModel.views} просмотров · 4 года назад',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 12
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          width: 10,
                          margin: const EdgeInsets.only(left: 20, right: 10),
                          child: Icon(
                                    Icons.expand_more_outlined,
                                    size: 30,
                                    color: Colors.grey[500],
                                  ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal:30),
                    child: IconButton(
                      icon: const Icon(Icons.thumb_up_outlined),
                      onPressed: (){
                        var model = Provider.of<LikedModel>(context, listen: false);
                        model.addLiked(videoModel);
                      },
                    ),
                  ),
                 
                  Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(child: Divider())
                        ],
                      ),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    margin: const EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.blue
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5.0),
                                        child: Text(
                                          videoModel.chanel,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15
                                          ),
                                        ),
                                      ),
                                      Text('99 млн подписчиков',
                                      style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 12
                                    ),
                                  ),
                                    ],
                                  ),
                              ]
                            ),
                            Icon(
                                  Icons.notifications_outlined,
                                  size: 30,
                                  color: Colors.grey[500],
                                ),
                          ],
                        ),
                      ),

                      Row(
                        children: const [
                          Expanded(child: Divider())
                        ],
                      ),
                    ],
                  )
           
                ],
              )
            )
      );
  }
}