import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube/models/liked.dart';
import 'package:youtube/widgets/navbar.dart';

class LikedPage extends StatelessWidget{

  const LikedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              height: 60,
              child: Column(
                children: const[
                     TopNavbar(),
                  ],
              )
            ),
            Consumer<LikedModel>(
                builder: (context, liked, child) {
                  return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text('Понравившиеся',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text('${liked.length} видео',
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                    ...liked.likedVideoWidgets
                  ]
                );
              },
              
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