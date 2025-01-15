import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:terralith/features/domain/video/model/youtube_item_model.dart';

abstract class VideoRepositoryBase {
  Future<Either<FirebaseException, List<YoutubeItemModel>>> getVideos();
}
