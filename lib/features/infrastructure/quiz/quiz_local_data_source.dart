import '../../domain/quiz/model/quiz_model.dart';

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

  List<QuizModel> evaluasiAkhir = [
    QuizModel(
      soal:
          "Perbedaan ketebalan lapisan litosfer dipengaruhi oleh lokasinya. Bagian yang lebih tebal terdapat pada …",
      jawaban: ["Samudera", "Lautan", "Pegunungan", "Benua", "Kutub"],
      jawabanBenar: "Benua",
    ),
    QuizModel(
      soal:
          "Salah satu perbedaan utama antara kerak benua dan kerak samudera dalam litosfer adalah …",
      jawaban: [
        "Kerak benua lebih tipis dan lebih padat dibanding kerak samudera",
        "Kerak benua lebih tebal dan tersusun terutama dari granit, sedangkan kerak samudera lebih tipis dan tersusun dari basal",
        "Kerak samudera lebih tebal dan lebih ringan dibanding kerak benua",
        "Kerak benua dan kerak samudera memiliki ketebalan yang sama tetapi memiliki komposisi berbeda",
        "Kerak samudera lebih tebal dan tersusun dari batuan metamorf"
      ],
      jawabanBenar:
          "Kerak benua lebih tebal dan tersusun terutama dari granit, sedangkan kerak samudera lebih tipis dan tersusun dari basal",
    ),
    QuizModel(
      soal: "Manakah pernyataan berikut yang tidak benar mengenai litosfer?",
      jawaban: [
        "Litosfer terdiri dari kerak bumi dan bagian atas mantel bumi",
        "Ketebalan litosfer bervariasi, dengan kerak benua lebih tebal dibanding kerak samudera",
        "Litosfer merupakan bagian penting dalam siklus geologi bumi",
        "Litosfer berada dalam keadaan tetap dan tidak mengalami pergerakan",
        "Litosfer berperan dalam proses pembentukan gunung api, gempa bumi, dan pergerakan lempeng"
      ],
      jawabanBenar:
          "Litosfer berada dalam keadaan tetap dan tidak mengalami pergerakan",
    ),
    QuizModel(
      soal:
          "Salah satu perbedaan utama antara tenaga endogen dan tenaga eksogen adalah …",
      jawaban: [
        "Tenaga endogen bekerja dengan cara merusak bentuk permukaan bumi, sedangkan tenaga eksogen membentuknya",
        "Tenaga endogen berasal dari luar bumi, sedangkan tenaga eksogen berasal dari dalam bumi",
        "Tenaga endogen membangun dan membentuk permukaan bumi, sedangkan tenaga eksogen mengikis dan meratakannya",
        "Tenaga eksogen hanya terjadi di daratan, sementara tenaga endogen hanya terjadi di lautan",
        "Tenaga eksogen memiliki skala perubahan yang lebih besar dibanding tenaga endogen"
      ],
      jawabanBenar:
          "Tenaga endogen membangun dan membentuk permukaan bumi, sedangkan tenaga eksogen mengikis dan meratakannya",
    ),
    QuizModel(
      soal:
          "Manakah pernyataan berikut yang benar tentang perbedaan gerak epirogenetik dan orogenetik?",
      jawaban: [
        "Gerak epirogenetik terjadi lebih cepat dibandingkan gerak orogenetik",
        "Gerak orogenetik menyebabkan perubahan luas benua, sedangkan gerak epirogenetik membentuk pegunungan",
        "Gerak epirogenetik bersifat lambat dan meliputi daerah luas, sedangkan gerak orogenetik lebih cepat dan meliputi daerah sempit",
        "Gerak epirogenetik menghasilkan patahan, sedangkan gerak orogenetik menghasilkan lipatan",
        "Gerak epirogenetik hanya terjadi di wilayah lautan, sedangkan gerak orogenetik terjadi di daratan"
      ],
      jawabanBenar:
          "Gerak epirogenetik bersifat lambat dan meliputi daerah luas, sedangkan gerak orogenetik lebih cepat dan meliputi daerah sempit",
    ),
    QuizModel(
      soal:
          "Peristiwa terbentuknya pegunungan akibat pergerakan kerak bumi yang cepat dalam waktu singkat disebut sebagai …",
      jawaban: [
        "Tektonisme lateral",
        "Orogenetik",
        "Vulkanisme",
        "Epirogenetik",
        "Subsiden geologis"
      ],
      jawabanBenar: "Orogenetik",
    ),
    QuizModel(
      soal:
          "Gunung api yang terbentuk dari letusan eksplosif dan memiliki bentuk kerucut dengan lapisan lava serta abu vulkanik secara bergantian disebut …",
      jawaban: [
        "Gunung api perisai",
        "Gunung api maar",
        "Gunung api strato",
        "Gunung api lava dome",
        "Gunung api stromboli"
      ],
      jawabanBenar: "Gunung api strato",
    ),
    QuizModel(
      soal:
          "Letusan gunung api yang terjadi dengan ledakan kuat, mengeluarkan gas dan material piroklastik dalam jumlah besar disebut …",
      jawaban: [
        "Erupsi efusif",
        "Intrusi magma",
        "Ekshalasi",
        "Erupsi eksplosif",
        "Tektonisme"
      ],
      jawabanBenar: "Erupsi eksplosif",
    ),
    QuizModel(
      soal:
          "Berdasarkan proses terbentuknya, tipe gunung api yang hanya satu kali mengeluarkan erupsi yaitu ....",
      jawaban: ["Maar", "Kerucut", "Perisai", "Stromboli", "Strato"],
      jawabanBenar: "Maar",
    ),
    QuizModel(
      soal:
          "Seisme adalah peristiwa yang terjadi di permukaan bumi akibat pelepasan energi yang berasal dari …",
      jawaban: [
        "Proses sedimentasi",
        "Proses erosi",
        "Aktivitas vulkanisme",
        "Aktivitas atmosfer",
        "Gerakan lempeng bumi"
      ],
      jawabanBenar: "Gerakan lempeng bumi",
    ),
    QuizModel(
      soal:
          'Gempa yang memiliki kedalaman antara 100 km hingga 300 km di bawah permukaan bumi disebut …',
      jawaban: [
        'Gempa dangkal',
        'Gempa menengah',
        'Gempa dalam',
        'Gempa vulkanik',
        'Gempa daratan'
      ],
      jawabanBenar: 'Gempa menengah',
    ),
    QuizModel(
      soal:
          'Proses pelapukan yang terjadi akibat perubahan suhu yang tiba-tiba sehingga batuan pecah menjadi bagian yang lebih kecil termasuk dalam jenis pelapukan …',
      jawaban: [
        'Mekanik (Fisik)',
        'Kimiawi',
        'Biologis',
        'Sedimentasi',
        'Erosi'
      ],
      jawabanBenar: 'Mekanik (Fisik)',
    ),
    QuizModel(
      soal: 'Proses oksidasi dalam pelapukan kimiawi terjadi ketika …',
      jawaban: [
        'Mineral dalam batuan bereaksi dengan air',
        'Karbon dioksida dalam air membentuk asam karbonat',
        'Batuan menyerap air dan mengembang',
        'Mineral dalam batuan bereaksi dengan oksigen di udara atau air',
        'Air hujan bereaksi dengan batuan kapur'
      ],
      jawabanBenar:
          'Mineral dalam batuan bereaksi dengan oksigen di udara atau air',
    ),
    QuizModel(
      soal:
          'Erosi yang disebabkan oleh air yang mengalir seperti air sungai dan hujan dikenal sebagai …',
      jawaban: ['Abrasi', 'Deflasi', 'Ablasi', 'Eksarasi', 'Korosi'],
      jawabanBenar: 'Ablasi',
    ),
    QuizModel(
      soal:
          'Erosi yang mengakibatkan pengikisan tanah yang lebih besar di area cekungan disebut …',
      jawaban: [
        'Erosi Percik',
        'Erosi Parit',
        'Erosi Alur',
        'Erosi Lembar',
        'Erosi Abrasi'
      ],
      jawabanBenar: 'Erosi Alur',
    ),
    QuizModel(
      soal: 'Tanah longsor (land slide) terjadi ketika …',
      jawaban: [
        'Tanah bergerak sangat lambat di lereng landai',
        'Tanah mengalir akibat kelembapan berlebih',
        'Massa tanah bergerak cepat menuruni lereng yang curam',
        'Tanah ambruk dan membentuk cekungan',
        'Tanah terputus-putus dan membentuk teras'
      ],
      jawabanBenar: 'Massa tanah bergerak cepat menuruni lereng yang curam',
    ),
    QuizModel(
      soal:
          'Spit dan tombolo adalah bentuklahan yang dihasilkan oleh proses sedimentasi yang disebabkan oleh …',
      jawaban: ['Air sungai', 'Gelombang laut', 'Angin', 'Gletser', 'Batuan'],
      jawabanBenar: 'Gelombang laut',
    ),
    QuizModel(
      soal:
          'Sedimentasi oleh air (fluvial) menghasilkan berbagai bentuklahan, salah satunya adalah meander, yang terbentuk karena …',
      jawaban: [
        'Pengendapan material di sekitar sungai',
        'Perubahan aliran air yang berkelok-kelok',
        'Peningkatan kecepatan aliran air',
        'Pengaruh arus gelombang laut',
        'Akumulasi pasir yang dibawa angin'
      ],
      jawabanBenar: 'Perubahan aliran air yang berkelok-kelok',
    ),
    QuizModel(
      soal:
          'Dalam proses mitigasi bencana gempa bumi, penetapan zonasi risiko sangat penting. Salah satu parameter yang harus diperhatikan dalam zonasi gempa adalah …',
      jawaban: [
        'Kedalaman sumber gempa dan jenis lempeng yang bergerak',
        'Ketinggian wilayah terhadap permukaan laut',
        'Jenis batuan yang ada di permukaan bumi',
        'Kecepatan angin yang terjadi di daerah tersebut',
        'Kedalaman sumur air tanah'
      ],
      jawabanBenar: 'Kedalaman sumber gempa dan jenis lempeng yang bergerak',
    ),
    QuizModel(
      soal:
          'Saat terjadi gempa bumi, salah satu langkah mitigasi yang dapat diambil untuk mengurangi korban jiwa adalah …',
      jawaban: [
        'Meningkatkan kecepatan pembangunan gedung tinggi',
        'Menyediakan peralatan untuk membersihkan puing-puing',
        'Menghentikan sementara kegiatan ekonomi di seluruh wilayah',
        'Menyusun rencana evakuasi dan menyediakan tempat aman',
        'Menyebarkan berita gempa secara langsung ke seluruh dunia'
      ],
      jawabanBenar: 'Menyusun rencana evakuasi dan menyediakan tempat aman',
    ),
    QuizModel(
      soal:
          'Untuk mengurangi dampak tsunami, salah satu langkah mitigasi yang dapat dilakukan adalah …',
      jawaban: [
        'Membuat sistem peringatan dini tsunami',
        'Membangun bangunan di sepanjang pantai',
        'Meningkatkan jumlah kapal laut di pesisir',
        'Menanam vegetasi di pantai untuk mencegah gelombang',
        'Meningkatkan penggunaan alat berat di laut'
      ],
      jawabanBenar: 'Membuat sistem peringatan dini tsunami',
    ),
    QuizModel(
      soal: 'Salah satu indikator peringatan dini tsunami adalah pemantauan …',
      jawaban: [
        'Gerakan air laut melalui alat seismograf di permukaan',
        'Aktivitas gunung berapi yang dapat memicu tsunami',
        'Kecepatan arus air laut pada permukaan',
        'Gejala gelombang laut yang terdeteksi oleh satelit',
        'Perubahan tinggi permukaan laut yang mendadak melalui sistem sensor'
      ],
      jawabanBenar:
          'Perubahan tinggi permukaan laut yang mendadak melalui sistem sensor',
    ),
    QuizModel(
      soal:
          'Salah satu upaya mitigasi tanah longsor di daerah rawan adalah dengan …',
      jawaban: [
        'Menanami daerah rawan longsor dengan pohon yang memiliki akar kuat',
        'Mengurangi intensitas hujan dengan teknologi modifikasi cuaca',
        'Membangun tembok penghalang di sepanjang tepi sungai',
        'Mengalihkan aliran sungai ke daerah yang lebih rendah',
        'Mengurangi aktivitas vulkanik di daerah sekitar'
      ],
      jawabanBenar:
          'Menanami daerah rawan longsor dengan pohon yang memiliki akar kuat',
    ),
    QuizModel(
      soal:
          'Salah satu langkah mitigasi yang dapat dilakukan untuk mengurangi dampak erupsi gunung berapi adalah …',
      jawaban: [
        'Membatasi jumlah penduduk di sekitar gunung berapi',
        'Meningkatkan penggunaan energi panas bumi dari gunung berapi',
        'Menanam lebih banyak pohon di sekitar gunung',
        'Membangun sistem peringatan dini letusan',
        'Mengalihkan aliran sungai yang ada di sekitar gunung'
      ],
      jawabanBenar: 'Membangun sistem peringatan dini letusan',
    ),
    QuizModel(
      soal:
          'Dalam mitigasi bencana letusan gunung berapi, teknologi pemantauan erupsi menggunakan alat seperti seismometer dan tiltmeter sangat penting untuk …',
      jawaban: [
        'Menyediakan informasi mengenai kecepatan angin di sekitar gunung',
        'Menyediakan data untuk memprediksi volume letusan',
        'Mendeteksi perubahan bentuk gunung dan aktivitas seismik yang dapat mengindikasikan potensi letusan',
        'Mendeteksi potensi terjadinya tanah longsor di sekitar gunung',
        'Menentukan jenis lava yang akan keluar saat letusan'
      ],
      jawabanBenar:
          'Mendeteksi perubahan bentuk gunung dan aktivitas seismik yang dapat mengindikasikan potensi letusan',
    ),
  ];
}
