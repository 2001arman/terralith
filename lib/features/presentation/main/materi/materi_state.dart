import 'package:get/get.dart';

import '../../../domain/materi/model/materi_model.dart';

class MateriState {
  final List<MateriModel> listMateri = [
    MateriModel(
      image: 'assets/materi/litosfer.png',
      title: 'Litosfer',
      quizNumber: 1,
      subMateri: [
        SubMateriModel(
          title: 'Pengertian Litosfer',
          asset: '1.1-Pengertian-Litosfer.pdf',
          progress: 0.0.obs,
        ),
        SubMateriModel(
          title: 'Tenaga Geologi Pembentuk Bumi',
          asset: '1.2-Tenaga-Geologi-Pembentuk-Bumi.pdf',
          progress: 0.0.obs,
        ),
      ],
    ),
    MateriModel(
      image: 'assets/materi/endogen.png',
      title: 'Tenaga Endogen',
      quizNumber: 2,
      subMateri: [
        SubMateriModel(
          title: 'Tektonisme',
          asset: '2.1-Tektonisme.pdf',
          progress: 0.0.obs,
        ),
        SubMateriModel(
          title: 'Vulkanisme',
          asset: '2.2-Vulkanisme.pdf',
          progress: 0.0.obs,
        ),
        SubMateriModel(
          title: 'Seisme',
          asset: '2.3-Seisme.pdf',
          progress: 0.0.obs,
        ),
      ],
    ),
    MateriModel(
      image: 'assets/materi/eksogen.png',
      title: 'Tenaga Eksogen',
      quizNumber: 3,
      subMateri: [
        SubMateriModel(
          title: 'Pelapukan',
          asset: '3.1-Pelapukan.pdf',
          progress: 0.0.obs,
        ),
        SubMateriModel(
          title: 'Erosi',
          asset: '3.2-Erosi.pdf',
          progress: 0.0.obs,
        ),
        SubMateriModel(
          title: 'Masswasting',
          asset: '3.3-Masswasting.pdf',
          progress: 0.0.obs,
        ),
        SubMateriModel(
          title: 'Sedimentasi',
          asset: '3.4-Sedimentasi.pdf',
          progress: 0.0.obs,
        ),
      ],
    ),
    MateriModel(
      image: 'assets/materi/mitigasi.png',
      title: 'Risiko Bencana dan Mitigasinya',
      quizNumber: 4,
      subMateri: [
        SubMateriModel(
          title: 'Risiko Bencana dan Mitigasinya',
          asset: '4.1-Risiko-Bencana-dan-Mitigasinya.pdf',
          progress: 0.0.obs,
        ),
      ],
    ),
  ];
}
