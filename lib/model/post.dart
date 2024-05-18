import 'dart:convert';
import '../model/comment.dart';

class Post {
  final String creatorName;
  final String textContent;
  final String dateCreated;
  final int likeCount;
  final int clapCount;
  final String imageUrl; // Assuming image is stored as a URL
  final String profileImageUrl;
  final Comment comments;

  Post(
      {required this.creatorName,
      required this.textContent,
      required this.dateCreated,
      required this.likeCount,
      required this.clapCount,
      required this.imageUrl,
      required this.profileImageUrl,
      required this.comments});

  // Factory constructor to create a new Post instance from a map structure
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        creatorName: json['creatorName'],
        textContent: json['textContent'],
        dateCreated: json['dateCreated'],
        likeCount: json['likeCount'],
        clapCount: json['clapCount'],
        imageUrl: json['imageUrl'],
        profileImageUrl: json['profileImageUrl'],
        comments: json['comments']);
  }

  // Method to convert a Post instance into a map structure
  Map<String, dynamic> toJson() {
    return {
      'creatorName': creatorName,
      'textContent': textContent,
      'dateCreated': dateCreated,
      'likeCount': likeCount,
      'clapCount': clapCount,
      'imageUrl': imageUrl,
      'profileImageUrl': profileImageUrl,
      'comments': comments,
    };
  }
}
