import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube/models/theme_model.dart';
import 'package:youtube/screens/single_video.dart';
import 'package:youtube/models/video_model.dart';

class YoutubeVideo extends StatelessWidget {
  final Future<VideoModel> videoModel;
  final Function addFunction;

  const YoutubeVideo({Key? key, required this.videoModel, required this.addFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<VideoModel>(
      future: videoModel,
      builder: (BuildContext context, AsyncSnapshot<VideoModel> snapshot){ 
        if(snapshot.hasData){
          return GestureDetector(
            onTap:  () {
              addFunction(snapshot.data ?? const VideoModel.empty());
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SingleVideo(videoModel: snapshot.data ?? const VideoModel.empty())));
            },
            child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Row(children: [
                                Expanded(child: 
                                Stack(children: [
                                  Image.network(snapshot.data?.imageLink ?? ''),
                                  Positioned(child: 
                                    Container(
                                      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                                      child: Text(
                                        snapshot.data?.length ?? '',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12
                                        ),
                                        ),
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(5)
                                      ),
                                    ),
                                  bottom: 10,
                                  right: 10,
                                  )
                                ])
                                ),
                                
                            ],),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
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
          
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        snapshot.data?.title ?? '',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 5),
                                        child: Text('${ snapshot.data?.chanel ?? ''} · ${snapshot.data?.views ?? ''} просмотров · 4 года назад',
                                          style: TextStyle(
                                            color: Provider.of<ThemeModel>(context, listen: false).isDark ? Colors.grey : Colors.grey[700],
                                            fontSize: 12
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
          
                                Container(
                                  width: 10,
                                  margin: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                            Icons.more_vert_outlined,
                                            size: 20,
                                            color: Colors.grey[500],
                                          ),
                                )
                              ],
                            ),
                          )
                        
                        ],
                      )
                    ),
          );
        }
        else{
          return Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Row(children: [
                                Expanded(child: 
                                Stack(children: [
                                  Container(
                                    color: Colors.grey[200],
                                    height: 200,
                                  ),
                                  Positioned(child: 
                                    Container(
                                      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                                    ),
                                  bottom: 10,
                                  right: 10,
                                  )
                                ])
                                ),
                                
                            ],),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
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
          
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        '',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 5),
                                        child: Text(" ·  просмотров · 4 года назад",
                                          style: TextStyle(
                                            color: Provider.of<ThemeModel>(context, listen: false).isDark ? Colors.grey : Colors.grey[700],
                                            fontSize: 12
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
          
                                Container(
                                  width: 10,
                                  margin: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                            Icons.more_vert_outlined,
                                            size: 20,
                                            color: Colors.grey[500],
                                          ),
                                )
                              ],
                            ),
                          )
                        
                        ],
                      )
            );
        }
      }
    );
  }
}