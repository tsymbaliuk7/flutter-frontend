import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube/models/theme_model.dart';
import 'package:youtube/models/video_model.dart';
import 'package:youtube/widgets/video.dart';
import 'package:youtube/widgets/navbar.dart';
import 'package:youtube/widgets/grey_button.dart';


class HomePage extends StatefulWidget{
  final Function addFunction;

  const  HomePage({Key? key, required this.addFunction}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  final List<GreyButton> buttonList = const <GreyButton>[GreyButton(text: 'Все'), GreyButton(text: 'Скетч-шоу'), GreyButton(text: 'Рэп'), GreyButton(text: 'Мультфильмы'), GreyButton(text: 'Футбол')];
  late List<Future<VideoModel>> modelsList;
  

  @override
  void initState(){
    super.initState();
    modelsList = [
      fetchJsonData(1, 'http://i3.ytimg.com/vi/YPRaA6KhyXc/maxresdefault.jpg'),
      fetchJsonData(2, 'http://i3.ytimg.com/vi/LXITSJ1bCYc/maxresdefault.jpg'),
      fetchJsonData(3, 'http://i3.ytimg.com/vi/xhbLwKQvIpw/maxresdefault.jpg'),
      fetchJsonData(4, 'http://i3.ytimg.com/vi/zw1V5T6q048/maxresdefault.jpg'),
      fetchJsonData(5, 'http://i3.ytimg.com/vi/ocxDfVk32Bs/maxresdefault.jpg'),
    ];
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        key: _scaffoldKey,
        body: ListView(
          children: [
            SizedBox(
              height: 100,
              child: Column(
                children: [
                  const TopNavbar(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 30.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                decoration: BoxDecoration(color: Colors.grey[Provider.of<ThemeModel>(context, listen: false).isDark ? 700 : 200]),
                                margin: const EdgeInsets.only(left: 20),
                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 5),
                                      child: const Icon(
                                        Icons.explore_outlined,
                                      ),
                                    ),
                      
                                    const Text(
                                      'Навигатор',
                                      style: TextStyle(fontWeight: FontWeight.w500),
                                      )
                      
                                  ],
                                  ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 5),
                                child: const VerticalDivider(color: Colors.grey)
                                ),
                    
                              ...buttonList
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  
                  ],
              )
            ),
            
           ...modelsList.map((e) => YoutubeVideo(videoModel: e, addFunction: widget.addFunction,)).toList()
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
                SizedBox(
                  width: 50,
                  child: Column(
                      children: const [
                        Icon(
                          Icons.home,
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
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/library'),
                  child: Column(
                    
                      children: const [
                        Icon(
                          
                          Icons.video_library_outlined,
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
                ),
              ],
            ),
            ),
      ),
      );
  }
}