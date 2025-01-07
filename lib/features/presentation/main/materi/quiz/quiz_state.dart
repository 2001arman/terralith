import 'package:get/get.dart';

class QuizState {
  var activeSoal = 0.obs;
  var selectedJawaban = Rxn<String>();
  var poin = 0.obs;
  var remainingTime = 10.obs; // 5 minutes in seconds

  List<QuizModel> quizList = [
    QuizModel(
      soal:
          'Pantai Stockholm selalu mengalami kenaikan permukaan, dengan naik rata-rata 1m/100 tahun. Gerakan naiknya permukaan diakibatkan oleh gerak....',
      jawaban: [
        'Epirogenetik Positif',
        'Epirogenetik Negatif',
        'Orogenetik Positif',
        'Orogenetik Negatif',
        'Epirogenetik dan Orogenetik',
      ],
      jawabanBenar: 'Epirogenetik Negatif',
    ),
    QuizModel(
      soal: 'Siapa cowo paling ganteng di dunia ini?',
      jawaban: [
        'Mulyono',
        'Mulyadi',
        'Arman Maulana',
        'Tata Azkia',
        'Budiono Siregar',
      ],
      jawabanBenar: 'Arman Maulana',
    ),
  ];

  List<String> alphabet = [
    'A',
    'B',
    'C',
    'D',
    'E',
  ];
}

class QuizModel {
  final String soal;
  final List<String> jawaban;
  final String jawabanBenar;

  QuizModel({
    required this.soal,
    required this.jawaban,
    required this.jawabanBenar,
  });
}
