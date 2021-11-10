import 'package:flutter/material.dart';
import 'package:youtube/models/theme_model.dart';
import 'package:youtube/screens/library.dart';
import 'models/video_model.dart';
import 'screens/home.dart';
import 'package:youtube/widgets/watched_video.dart';
import 'package:provider/provider.dart';
import 'models/liked.dart';

void main() => runApp(MultiProvider(
  child: const MyApp(),
  providers: [ChangeNotifierProvider(create: (context) => LikedModel()),
  ChangeNotifierProvider(create: (context) => ThemeModel())],
));



class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var watchedVideo = <WatchedVideo>[]; 

  addWatchedVideo(VideoModel video){
    setState(() {
      watchedVideo = watchedVideo.where((element) => element.videoModel.title != video.title).toList();
      watchedVideo.insert(0, WatchedVideo(videoModel: video,));
      watchedVideo = watchedVideo.take(7).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModel themeNotifier, child) {
      return MaterialApp(
        theme: themeNotifier.isDark ? ThemeData.dark() : ThemeData.light(),
        initialRoute: '/',
        routes: {
            '/': (context) => HomePage(addFunction: addWatchedVideo),
            '/library': (context) => LibraryPage(watchedVideo: watchedVideo),
          },
      );
    });
  }
}