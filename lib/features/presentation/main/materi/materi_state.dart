class MateriState {
  final List<MateriModel> listMateri = [
    MateriModel(
      image: 'assets/materi/litosfer.png',
      title: 'Litosfer',
    ),
    MateriModel(
      image: 'assets/materi/batuan.png',
      title: 'Batuan',
    ),
    MateriModel(
      image: 'assets/materi/geologi.png',
      title: 'Tenaga Geologi',
    ),
    MateriModel(
      image: 'assets/materi/pedosfer.png',
      title: 'Pedosfer',
    ),
  ];
}

class MateriModel {
  final String image;
  final String title;

  MateriModel({required this.image, required this.title});
}
