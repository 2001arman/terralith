import '../../../domain/materi/materi_model.dart';

class MateriState {
  final List<MateriModel> listMateri = [
    MateriModel(
      image: 'assets/materi/litosfer.png',
      title: 'Litosfer',
      subMateri: [
        SubMateriModel(
          title: 'Pengertian Litosfer',
          asset: '1.1-Pengertian-Litosfer.pdf',
          progress: 90,
        ),
        SubMateriModel(
          title: 'Tenaga Geologi Pembentuk Bumi',
          asset: '1.2-Tenaga-Geologi-Pembentuk-Bumi.pdf',
          progress: 90,
        ),
      ],
    ),
    MateriModel(
      image: 'assets/materi/endogen.png',
      title: 'Tenaga Endogen',
      subMateri: [
        SubMateriModel(
          title: 'Tektonisme',
          asset: '2.1-Tektonisme.pdf',
          progress: 90,
        ),
        SubMateriModel(
          title: 'Vulkanisme',
          asset: '2.2-Vulkanisme.pdf',
          progress: 90,
        ),
        SubMateriModel(
          title: 'Seisme',
          asset: '2.3-Seisme.pdf',
          progress: 90,
        ),
      ],
    ),
    MateriModel(
      image: 'assets/materi/eksogen.png',
      title: 'Tenaga Eksogen',
      subMateri: [
        SubMateriModel(
          title: 'Pelapukan',
          asset: '3.1-Pelapukan.pdf',
          progress: 90,
        ),
        SubMateriModel(
          title: 'Erosi',
          asset: '3.2-Erosi.pdf',
          progress: 90,
        ),
        SubMateriModel(
          title: 'Masswasting',
          asset: '3.3-Masswasting.pdf',
          progress: 90,
        ),
        SubMateriModel(
          title: 'Sedimentasi',
          asset: '3.4-Sedimentasi.pdf',
          progress: 90,
        ),
      ],
    ),
    MateriModel(
      image: 'assets/materi/mitigasi.png',
      title: 'Risiko Bencana dan Mitigasinya',
      subMateri: [
        SubMateriModel(
          title: 'Risiko Bencana dan Mitigasinya',
          asset: '4.1-Risiko-Bencana-dan-Mitigasinya.pdf',
          progress: 90,
        ),
      ],
    ),
  ];
}
