import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube/models/liked.dart';
import 'package:youtube/models/theme_model.dart';
import 'package:youtube/models/video_model.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class SingleVideo extends StatefulWidget{
  final VideoModel videoModel;


  const SingleVideo({Key? key, required this.videoModel}) : super(key: key);

  @override
  State<SingleVideo> createState() => _SingleVideoState();
}

class _SingleVideoState extends State<SingleVideo> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  late AnimationController controller;
  late Animation<double> curve;

  
  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 10), vsync: this);
    curve = CurvedAnimation(parent: controller, curve: Curves.linear)
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
                          child: Stack(children: [
                            SimpleGestureDetector(
                              child: Image.network(widget.videoModel.imageLink),
                              onVerticalSwipe: (direction) {
                                if (direction == SwipeDirection.down) {
                                  Navigator.pop(context, true);
                                } 
                              }
                              ),
                            Positioned(
                              child: RedLine(animation: curve,),
                              bottom: 0,
                              left: 0,
                              )
                            ]),
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
                                widget.videoModel.title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  height: 1.5
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                child: Text('${widget.videoModel.views} просмотров · 4 года назад',
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
                        model.addLiked(widget.videoModel);
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
                                          widget.videoModel.chanel,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15
                                          ),
                                        ),
                                      ),
                                      Text('99 млн подписчиков',
                                      style: TextStyle(
                                      color: Provider.of<ThemeModel>(context, listen: false).isDark ? Colors.grey : Colors.grey[700],
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

class RedLine extends AnimatedWidget{
  static final _widthTween = Tween<double>(begin: 1, end: 350);
  const RedLine({Key? key, required animation}) : super(key: key, listenable: animation);

  
  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Container(
            width: _widthTween.evaluate(animation),
            height: 3,
            color: Colors.red
          );
  }

}