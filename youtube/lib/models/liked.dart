import 'package:flutter/cupertino.dart';
import 'package:youtube/models/video_model.dart';
import 'package:youtube/widgets/liked_video.dart';

class LikedModel extends ChangeNotifier{
  List<VideoModel> _likedVideo = [];
  
  List<VideoModel> get liked => _likedVideo;

  addLiked(VideoModel _likedVideo){
    if (!this._likedVideo.any((element) => element.title == _likedVideo.title)){
      this._likedVideo = this._likedVideo.where((element) => element.title != _likedVideo.title).toList();
      this._likedVideo.insert(0, _likedVideo);
      notifyListeners();
    }
  }

  List<LikedVideo> get likedVideoWidgets => _likedVideo.map((e) => LikedVideo(videoModel: e,)).toList();

  bool get isEmpty => _likedVideo.isEmpty;

  int get length => _likedVideo.length;
}