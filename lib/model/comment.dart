import 'dart:convert';

class Comment {
  final String creatorName;
  final String textContent;
  final String dateCreated;
  final int likeCount;
  final int clapCount;
  final String profileImageUrl; // Assuming image is stored as a URL

  Comment({
    required this.creatorName,
    required this.textContent,
    required this.dateCreated,
    required this.likeCount,
    required this.clapCount,
    required this.profileImageUrl,
  });

  // Factory constructor to create a new Comment instance from a map structure
  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      creatorName: json['creatorName'],
      textContent: json['textContent'],
      dateCreated: json['dateCreated'],
      likeCount: json['likeCount'],
      clapCount: json['clapCount'],
      profileImageUrl: json['profileImageUrl'],
    );
  }

  // Method to convert a Comment instance into a map structure
  Map<String, dynamic> toJson() {
    return {
      'creatorName': creatorName,
      'textContent': textContent,
      'dateCreated': dateCreated,
      'likeCount': likeCount,
      'clapCount': clapCount,
      'profileImageUrl': profileImageUrl,
    };
  }
}
