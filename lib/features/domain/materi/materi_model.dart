class MateriModel {
  final String image;
  final String title;
  final List<SubMateriModel> subMateri;

  MateriModel({
    required this.image,
    required this.title,
    required this.subMateri,
  });
}

class SubMateriModel {
  final String title;
  final String asset;
  final int progress;

  SubMateriModel({
    required this.title,
    required this.asset,
    required this.progress,
  });
}
