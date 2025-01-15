import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:terralith/features/domain/video/interface/video_repository_base.dart';
import 'package:terralith/features/domain/video/model/youtube_item_model.dart';

class VideoDataSource implements VideoRepositoryBase {
  final db = FirebaseFirestore.instance;

  @override
  Future<Either<FirebaseException, List<YoutubeItemModel>>> getVideos() async {
    try {
      final data = await db.collection('videos').orderBy('index').get();

      if (data.docs.isEmpty) {
        return Left(
          FirebaseException(
            message: 'Data is Empty',
            code: '',
            plugin: '',
          ),
        );
      }
      final List<YoutubeItemModel> videos = [];
      for (var element in data.docs) {
        videos.add(YoutubeItemModel.fromMap(element.data()));
      }
      return Right(videos);
    } on FirebaseException catch (e) {
      return Left(e);
    }
  }
}
