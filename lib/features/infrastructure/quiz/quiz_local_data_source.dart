import '../../presentation/main/materi/quiz/quiz_state.dart';

class QuizLocalDataSource {
  List<QuizModel> litosferQuiz = [
    QuizModel(
      soal:
          'Litosfer merupakan salah satu lapisan yang menyusun struktur bumi. Lapisan ini terdiri dari …',
      jawaban: [
        'Kerak bumi dan inti bumi',
        'Mantel bumi dan inti bumi',
        'Kerak bumi dan bagian atas mantel bumi',
        'Inti dalam dan inti luar',
        'Hidrosfer dan atmosfer',
      ],
      jawabanBenar: 'Kerak bumi dan bagian atas mantel bumi',
    ),
    QuizModel(
      soal: 'Mengapa lapisan litosfer sering disebut sebagai kerak bumi?',
      jawaban: [
        'Karena merupakan lapisan terdalam bumi',
        'Karena berada di bagian paling luar dan tipis',
        'Karena terdiri dari batuan cair',
        'Karena membentuk inti bumi',
        'Karena memiliki suhu yang sangat panas',
      ],
      jawabanBenar: 'Karena berada di bagian paling luar dan tipis',
    ),
    QuizModel(
      soal:
          'Proses utama yang menyebabkan pergerakan litosfer di permukaan bumi adalah …',
      jawaban: [
        'Tekanan atmosfer yang mendorong kerak bumi sehingga litosfer bergerak',
        'Pengaruh gaya magnet bumi terhadap pergerakan batuan kerak bumi',
        'Pengaruh gaya gravitasi dari bulan dan matahari terhadap kerak bumi',
        'Aktivitas vulkanisme yang menggerakkan lapisan litosfer',
        'Arus konveksi di mantel bumi yang mendorong pergerakan lempeng tektonik',
      ],
      jawabanBenar:
          'Arus konveksi di mantel bumi yang mendorong pergerakan lempeng tektonik',
    ),
    QuizModel(
      soal:
          'Tenaga geologi yang berasal dari dalam bumi dan berperan dalam pembentukan pegunungan serta aktivitas vulkanisme disebut …',
      jawaban: [
        'Tektonisme',
        'Erosi',
        'Sedimentasi',
        'Tenaga eksogen',
        'Abrasi',
      ],
      jawabanBenar: 'Tektonisme',
    ),
    QuizModel(
      soal:
          'Peristiwa pelapukan, erosi, dan sedimentasi merupakan contoh dari tenaga geologi yang bersifat …',
      jawaban: [
        'Endogen',
        'Vulkanisme',
        'Eksogen',
        'Tektonik',
        'Orogenesis',
      ],
      jawabanBenar: 'Eksogen',
    ),
  ];

  List<QuizModel> endogenQuiz = [
    QuizModel(
      soal:
          'Gerakan naiknya daratan yang menyebabkan permukaan air laut tampak turun disebut …',
      jawaban: [
        'Gerak epirogenetik positif',
        'Gerak epirogenetik negatif',
        'Gerak orogenetik',
        'Gerak tektonik lateral',
        'Gerak vulkanisme',
      ],
      jawabanBenar: 'Gerak epirogenetik negatif',
    ),
    QuizModel(
      soal:
          'Perbedaan utama antara gerak epirogenetik dan gerak orogenetik terletak pada …',
      jawaban: [
        'Kecepatan dan luas wilayah yang terkena dampak',
        'Jenis batuan yang mengalami perubahan',
        'Kedalaman pergerakan di dalam mantel bumi',
        'Keterkaitan dengan aktivitas vulkanisme',
        'Kandungan mineral di dalam lempeng tektonik',
      ],
      jawabanBenar: 'Kecepatan dan luas wilayah yang terkena dampak',
    ),
    QuizModel(
      soal:
          'Manakah dari pernyataan berikut yang benar mengenai perbedaan magma dan lava?',
      jawaban: [
        'Magma adalah cairan panas di dalam bumi, sedangkan lava adalah magma yang sudah mencapai permukaan',
        'Magma terbentuk di kerak bumi, sedangkan lava hanya terbentuk di inti bumi',
        'Lava memiliki suhu lebih tinggi dibandingkan magma karena terkena oksigen',
        'Magma hanya mengandung gas, sedangkan lava berbentuk padatan',
        'Magma lebih cair dibanding lava karena tekanan atmosfer',
      ],
      jawabanBenar:
          'Magma adalah cairan panas di dalam bumi, sedangkan lava adalah magma yang sudah mencapai permukaan',
    ),
    QuizModel(
      soal: 'Berikut ini yang bukan merupakan bentuk intrusi magma adalah …',
      jawaban: [
        'Batholit',
        'Lakolit',
        'Sill',
        'Diaterma',
        'Kaldera',
      ],
      jawabanBenar: 'Kaldera',
    ),
    QuizModel(
      soal:
          'Berdasarkan letak episentrumnya, gempa bumi yang terjadi di permukaan bumi dan menimbulkan kerusakan besar biasanya disebut gempa …',
      jawaban: [
        'Gempa tektonik',
        'Gempa daratan',
        'Gempa permukaan',
        'Gempa lautan',
        'Gempa intraplantar',
      ],
      jawabanBenar: 'Gempa daratan',
    ),
  ];

  List<QuizModel> eksogenQuiz = [
    QuizModel(
      soal:
          'Manakah di bawah ini yang BUKAN merupakan unsur yang termasuk dalam tenaga eksogen?',
      jawaban: [
        'Air',
        'Angin',
        'Es',
        'Energi nuklir',
        'Sinar matahari',
      ],
      jawabanBenar: 'Energi nuklir',
    ),
    QuizModel(
      soal:
          'Pelapukan kimiawi terjadi ketika batuan mengalami perubahan struktur kimianya akibat reaksi dengan …',
      jawaban: [
        'Air, angin, dan organisme',
        'Air, karbon dioksida, atau oksigen',
        'Air, suhu, dan es',
        'Air hujan, es, dan radiasi sinar matahari',
        'Suhu dan aktivitas manusia',
      ],
      jawabanBenar: 'Air, karbon dioksida, atau oksigen',
    ),
    QuizModel(
      soal: 'Salah satu fenomena yang terjadi akibat eksarasi adalah …',
      jawaban: [
        'Tanjung',
        'Fjord',
        'Dataran tinggi',
        'Teluk',
        'Cliff',
      ],
      jawabanBenar: 'Fjord',
    ),
    QuizModel(
      soal:
          'Bentuk masswasting yang menghasilkan permukaan tanah yang terputus-putus menyerupai teras disebut …',
      jawaban: [
        'Tanah longsor (land slide)',
        'Tanah nendat (slumping)',
        'Tanah mengalir (earth flow)',
        'Lumpur mengalir (mud flow)',
        'Rayapan tanah (soil creep)',
      ],
      jawabanBenar: 'Tanah nendat (slumping)',
    ),
    QuizModel(
      soal:
          'Delta terbentuk akibat proses pengendapan material sedimen yang dibawa oleh air sungai saat …',
      jawaban: [
        'Arus sungai meningkat',
        'Arus sungai melambat ketika memasuki perairan lebih luas',
        'Sungai mengalir melalui pegunungan',
        'Pergerakan air laut menghantam sungai',
        'Proses penguapan air sungai berlangsung',
      ],
      jawabanBenar: 'Arus sungai melambat ketika memasuki perairan lebih luas',
    ),
  ];

  List<QuizModel> bencanaQuiz = [
    QuizModel(
      soal:
          'Salah satu cara mitigasi untuk mengurangi dampak gempa bumi adalah …',
      jawaban: [
        'Membuat benteng tinggi di sekitar laut',
        'Membangun bangunan dengan struktur tahan gempa',
        'Menanam pohon di sekitar gunung berapi',
        'Mengalihkan aliran sungai dari daerah rawan gempa',
        'Mengurangi jumlah penduduk di daerah rawan gempa',
      ],
      jawabanBenar: 'Membangun bangunan dengan struktur tahan gempa',
    ),
    QuizModel(
      soal: 'Penyebab utama terjadinya tsunami adalah …',
      jawaban: [
        'Pergerakan air laut secara mendalam',
        'Letusan gunung berapi di dasar laut',
        'Gerakan lempeng tektonik yang menyebabkan pergeseran dasar laut',
        'Hujan deras yang menyebabkan banjir',
        'Perubahan iklim global yang meningkatkan suhu laut',
      ],
      jawabanBenar:
          'Gerakan lempeng tektonik yang menyebabkan pergeseran dasar laut',
    ),
    QuizModel(
      soal:
          'Tanah longsor dapat terjadi akibat beberapa faktor, salah satunya adalah …',
      jawaban: [
        'Aktivitas manusia yang menggali tanah terlalu dalam',
        'Perubahan suhu yang ekstrem',
        'Gempa bumi yang menyebabkan pergeseran lempeng',
        'Pengaruh laut yang pasang surut',
        'Banjir yang terus-menerus menggenangi daerah pegunungan',
      ],
      jawabanBenar: 'Aktivitas manusia yang menggali tanah terlalu dalam',
    ),
    QuizModel(
      soal:
          'Mitigasi bencana berupa edukasi kepada masyarakat tentang cara menghadapi gempa bumi, letusan gunung, tanah longsor, dan tsunami dapat dilakukan dengan cara …',
      jawaban: [
        'Meningkatkan sektor pariwisata di daerah rawan bencana',
        'Menyebarkan informasi tentang bencana dan cara menghindarinya melalui media sosial',
        'Mengurangi aktivitas penduduk di daerah bencana',
        'Meningkatkan daya dukung alam terhadap bencana',
        'Membangun infrastruktur untuk mempersiapkan bencana',
      ],
      jawabanBenar:
          'Menyebarkan informasi tentang bencana dan cara menghindarinya melalui media sosial',
    ),
    QuizModel(
      soal:
          'Salah satu tindakan mitigasi yang paling efektif dalam menghadapi letusan gunung berapi adalah pembuatan peta zona bahaya. Apa tujuan utama dari peta zona bahaya tersebut?',
      jawaban: [
        'Menunjukkan wilayah yang paling berpotensi mengalami gempa bumi',
        'Menentukan lokasi terbaik untuk evakuasi dan tempat pengungsian',
        'Memperkirakan kapan letusan akan terjadi dengan tepat',
        'Menentukan jenis letusan gunung berapi berdasarkan sejarahnya',
        'Menghitung volume material vulkanik yang akan dikeluarkan saat letusan',
      ],
      jawabanBenar:
          'Menentukan lokasi terbaik untuk evakuasi dan tempat pengungsian',
    ),
  ];
}
