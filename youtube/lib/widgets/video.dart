import 'dart:math';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:youtube/models/theme_model.dart';
import 'package:youtube/screens/single_video.dart';
import 'package:youtube/models/video_model.dart';

class YoutubeVideo extends StatefulWidget {
  final Future<VideoModel> videoModel;
  final Function addFunction;

  const YoutubeVideo({Key? key, required this.videoModel, required this.addFunction}) : super(key: key);

  @override
  State<YoutubeVideo> createState() => _YoutubeVideoState();
}



class _YoutubeVideoState extends State<YoutubeVideo> with TickerProviderStateMixin {
  final _random = Random();
  late AnimationController controller;
  late Animation<double> curve;
  
  bool isWatched = false;
  
  List<Curve> curves = [Curves.easeIn, Curves.easeInExpo, Curves.bounceIn, Curves.easeOutExpo, Curves.slowMiddle, Curves.linear, Curves.ease];

  

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);
    curve = CurvedAnimation(parent: controller, curve: curves[_random.nextInt(curves.length)])
            ..addStatusListener((status) {
                if (status == AnimationStatus.completed) {
                  controller.reverse();
                } else if (status == AnimationStatus.dismissed) {
                  controller.forward();
                }
              });
    controller.forward();
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<VideoModel>(
      future: widget.videoModel,
      builder: (BuildContext context, AsyncSnapshot<VideoModel> snapshot){ 
        if(snapshot.hasData){
          return GestureDetector(
            onTap:  () async {
              widget.addFunction(snapshot.data ?? const VideoModel.empty());
              var response = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SingleVideo(videoModel: snapshot.data ?? const VideoModel.empty())));
              setState(() {
                isWatched = response ?? isWatched;
              });
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
                                  Positioned(child: Container(
                                    width: isWatched ? 400 : 0,
                                    height: 3,
                                    color: Colors.red
                                  ),
                                  bottom: 0,) ,
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
          return AnimatedPlaceholder(animation: curve, color: Color.fromRGBO(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        1,
      ));
        }
      }
    );
  }
}



class AnimatedPlaceholder extends AnimatedWidget{

  final ColorTween _colorTween;
  
  AnimatedPlaceholder({Key? key, required Animation<double> animation, required Color color}) : _colorTween = ColorTween(begin: Colors.white, end: color), super(key: key, listenable: animation);



  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
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
                                    color: _colorTween.evaluate(animation),
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
                                    color: _colorTween.evaluate(animation)
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