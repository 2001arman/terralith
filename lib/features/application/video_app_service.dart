import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:terralith/features/domain/video/interface/video_repository_base.dart';

import '../domain/video/model/youtube_item_model.dart';
import '../infrastructure/video/video_data_source.dart';

class VideoAppService {
  final VideoRepositoryBase _repository = VideoDataSource();
  Future<Either<FirebaseException, List<YoutubeItemModel>>> getVideos() =>
      _repository.getVideos();
}
