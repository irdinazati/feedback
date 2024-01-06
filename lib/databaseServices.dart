import 'package:cloud_firestore/cloud_firestore.dart';

class FeedbackService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addFeedback(double rating, String comment, String authorId) async {
    try {
      await _firestore.collection('feedback').add({
        'authorId': authorId, // Include the author ID
        'rating': rating,
        'comment': comment,
        'timestamp': FieldValue.serverTimestamp(),
      });
    } catch (error) {
      print('Error adding feedback: $error');
      // Handle error
    }
  }

// Other methods for fetching or handling feedback data can be added here.
}
