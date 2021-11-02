
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube/models/liked.dart';
import 'package:youtube/widgets/navbar.dart';
import 'package:youtube/widgets/watched_video.dart';
import 'package:youtube/screens/liked_list.dart';

class LibraryPage extends StatelessWidget{
  final List <WatchedVideo> watchedVideo;

  LibraryPage({Key? key, required this.watchedVideo}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: 60,
              child: Column(
                children: const[
                     TopNavbar(),
                  ],
              )
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text('Недавние видео',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 150.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  ...watchedVideo
                                ],
                              ),
                            )
                          ]
                        )
                      )
                    )
                  ]
                ),
                Row(
                  children:  <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.grey[400],
                    )
                  ),
                  ]
                ),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: const Text('Плейлисты',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.black
                        ),
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const LikedPage())
                              )
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 50,
                              height: 50,
                              child: const Center(child: Icon(Icons.thumb_up_outlined),),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Понравившиеся',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                ),
                                Text('${Provider.of<LikedModel>(context, listen: false).length} видео',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey[700]
                                ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )  
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: SizedBox(
                    width: 50,
                    child: Column(
                        children: const [
                          Icon(
                            Icons.home_outlined,
                            size: 25,
                          ),
                
                          Text(
                            'Главная',
                            style: TextStyle(
                              fontSize: 10
                            ),
                            )
                          ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: Column(
                      children: const [
                        Icon(
                          Icons.slideshow_outlined,
                          size: 25,
                        ),

                        Text(
                          'Shorts',
                          style: TextStyle(
                            fontSize: 10
                          ),
                          )
                        ],
                  ),
                ),
                Center(
                  child: Column(
                      children: const [
                        Icon(
                          Icons.add_circle_outline_outlined,
                          size: 40,
                        ),
                        ],
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: Column(
                      children: const [
                        Icon(
                          Icons.subscriptions_outlined,
                          size: 25,
                        ),

                        Text(
                          'Подписки',
                          style: TextStyle(
                            fontSize: 10
                          ),
                          )
                        ],
                  ),
                ),
                Column(
                  
                    children: const [
                      Icon(
                        
                        Icons.video_library,
                        size: 25,
                      ),

                      Text(
                        'Библиотека',
                        style: TextStyle(
                          fontSize: 10
                        ),
                        )
                      ],
                ),
              ],
            ),
            ),
      ),
      );
  }
}