import 'dart:convert';
import 'package:http/http.dart' as http;

class VideoModel{
  final String title;
  final int views;
  final String chanel;
  final String imageLink;
  final String length;
  
  const VideoModel({required this.title, required this.chanel, required this.imageLink, required this.views, required this.length});
  const VideoModel.empty(): title = '', views = 0, chanel = '', imageLink = '', length = '';

  factory VideoModel.fromJson(Map<String, dynamic> json, String imageLink){
    return VideoModel(
      title: json['title'], 
      chanel: 'Lorem ipsum ${json['userId']}',
      views: json['id'] * 10,
      length: '10:20',
      imageLink: imageLink
      );
  }

}
Future<VideoModel> fetchJsonData(int id, String imageLink) async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'));

  if (response.statusCode == 200) {
    return VideoModel.fromJson(jsonDecode(response.body), imageLink);
  } else {
    throw Exception('Failed to load album');
  }
}

