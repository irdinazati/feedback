import 'package:cloud_firestore/cloud_firestore.dart';

class FeedbackModel {
  final String authorId; // New field for author ID
  final double rating;
  final String comment;
  final DateTime timestamp;

  FeedbackModel({
    required this.authorId,
    required this.rating,
    required this.comment,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return {
      'authorId': authorId, // Include authorId in the map
      'rating': rating,
      'comment': comment,
      'timestamp': timestamp,
    };
  }

  factory FeedbackModel.fromMap(Map<String, dynamic> map, String documentId) {
    return FeedbackModel(
      authorId: map['authorId'],
      rating: map['rating'],
      comment: map['comment'],
      timestamp: (map['timestamp'] as Timestamp).toDate(),
    );
  }
}
