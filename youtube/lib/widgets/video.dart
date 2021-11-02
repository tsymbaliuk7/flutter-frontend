import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube/screens/single_video.dart';

class YoutubeVideo extends StatelessWidget {
  final String title;
  final int views;
  final String chanel;
  final String imageLink;
  final String length;
  final Function addFunction;

  const YoutubeVideo({Key? key, required this.title, required this.chanel, required this.imageLink, 
                      required this.views, required this.length, required this.addFunction}) : super(key: key);

  List get mainVideoData => [title, imageLink, chanel];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  () {
        addFunction(this);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SingleVideo(title: title, 
              chanel: chanel, imageLink: imageLink, views: views)));
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
                            Image.network(imageLink),
                            Positioned(child: 
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                                child: Text(
                                  length,
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
                                  title,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  child: Text('$chanel · $views просмотров · 4 года назад',
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
}