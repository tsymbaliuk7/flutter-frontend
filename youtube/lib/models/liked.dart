import 'package:flutter/cupertino.dart';
import 'package:youtube/widgets/liked_video.dart';

class LikedModel extends ChangeNotifier{
  List<LikedVideo> _likedVideo = [];
  
  List<LikedVideo> get liked => _likedVideo;

  addLiked(LikedVideo _likedVideo){
    if (!this._likedVideo.any((element) => element.title == _likedVideo.title)){
      this._likedVideo = this._likedVideo.where((element) => element.title != _likedVideo.title).toList();
      this._likedVideo.insert(0, _likedVideo);
      notifyListeners();
    }
  }

  bool get isEmpty => _likedVideo.isEmpty;

  int get length => _likedVideo.length;
}