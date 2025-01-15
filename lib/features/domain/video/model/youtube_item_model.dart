import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class YoutubeItemModel {
  final String videoId;
  final String title;
  final Timestamp createdAt;
  final String description;
  final int index;

  YoutubeItemModel({
    required this.videoId,
    required this.title,
    required this.createdAt,
    required this.description,
    required this.index,
  });

  factory YoutubeItemModel.fromMap(Map<String, dynamic> map) {
    return YoutubeItemModel(
      videoId: map['videoId'] as String,
      title: map['title'] as String,
      createdAt: map['created_at'],
      description: map['description'],
      index: map['index'],
    );
  }

  String get formattedDateTime {
    final DateFormat formatter =
        DateFormat('EEEE, d MMMM yyyy | HH:mm', 'id_ID');
    return formatter.format(createdAt.toDate());
  }
}
