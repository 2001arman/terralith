import 'package:get/get.dart';
import 'package:terralith/features/presentation/auth/login/login_binding.dart';
import 'package:terralith/features/presentation/auth/login/login_ui.dart';
import 'package:terralith/features/presentation/auth/username/username_binding.dart';
import 'package:terralith/features/presentation/auth/username/username_ui.dart';
import 'package:terralith/features/presentation/main/kompetensi/kompetensi_binding.dart';
import 'package:terralith/features/presentation/main/kompetensi/kompetensi_ui.dart';
import 'package:terralith/features/presentation/main/main_binding.dart';
import 'package:terralith/features/presentation/main/main_ui.dart';
import 'package:terralith/features/presentation/main/materi/materi_binding.dart';
import 'package:terralith/features/presentation/main/materi/materi_ui.dart';
import 'package:terralith/features/presentation/main/materi/quiz/quiz_binding.dart';
import 'package:terralith/features/presentation/main/materi/quiz/quiz_result/quiz_result_binding.dart';
import 'package:terralith/features/presentation/main/materi/quiz/quiz_result/quiz_result_ui.dart';
import 'package:terralith/features/presentation/main/materi/quiz/quiz_ui.dart';
import 'package:terralith/features/presentation/main/materi/sub_materi/sub_materi_binding.dart';
import 'package:terralith/features/presentation/main/materi/sub_materi/sub_materi_ui.dart';
import 'package:terralith/features/presentation/main/pengembang/pengembang_ui.dart';
import 'package:terralith/features/presentation/main/profile/change-password/change_password_binding.dart';
import 'package:terralith/features/presentation/main/profile/change-password/change_password_ui.dart';
import 'package:terralith/features/presentation/main/profile/profile_binding.dart';
import 'package:terralith/features/presentation/main/profile/profile_ui.dart';
import 'package:terralith/features/presentation/main/profile/statistic/statistic_binding.dart';
import 'package:terralith/features/presentation/main/profile/statistic/statistic_ui.dart';
import 'package:terralith/features/presentation/main/profile/verifikasi/verifikasi_binding.dart';
import 'package:terralith/features/presentation/main/profile/verifikasi/verifikasi_ui.dart';
import 'package:terralith/features/presentation/main/video/video_binding.dart';
import 'package:terralith/features/presentation/main/video/video_detail/video_detail_binding.dart';
import 'package:terralith/features/presentation/main/video/video_detail/video_detail_ui.dart';
import 'package:terralith/features/presentation/main/video/video_ui.dart';
import 'package:terralith/features/presentation/splash_screen/splash_screen_binding.dart';
import 'package:terralith/features/presentation/splash_screen/splash_screen_ui.dart';

class AppRoute {
  static const String initialRoute = SplashScreenUi.namePath;
  static final routes = [
    GetPage(
      name: SplashScreenUi.namePath,
      page: () => SplashScreenUi(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: UsernameUi.namePath,
      page: () => UsernameUi(),
      binding: UsernameBinding(),
    ),
    GetPage(
      name: LoginUi.namePath,
      page: () => LoginUi(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: MainUi.namePath,
      page: () => MainUi(),
      binding: MainBinding(),
    ),
    GetPage(
      name: ProfileUi.namePath,
      page: () => ProfileUi(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: StatisticUi.namePath,
      page: () => StatisticUi(),
      binding: StatisticBinding(),
    ),
    GetPage(
      name: KompetensiUi.namePath,
      page: () => KompetensiUi(),
      binding: KompetensiBinding(),
    ),
    GetPage(
      name: VideoUi.namePath,
      page: () => VideoUi(),
      binding: VideoBinding(),
    ),
    GetPage(
      name: VideoDetailUi.namePath,
      page: () => VideoDetailUi(),
      binding: VideoDetailBinding(),
    ),
    GetPage(
      name: MateriUi.namePath,
      page: () => MateriUi(),
      binding: MateriBinding(),
    ),
    GetPage(
      name: SubMateriUi.namePath,
      page: () => SubMateriUi(),
      binding: SubMateriBinding(),
    ),
    GetPage(
      name: QuizUi.namePath,
      page: () => QuizUi(),
      binding: QuizBinding(),
    ),
    GetPage(
      name: QuizResultUi.namePath,
      page: () => QuizResultUi(),
      binding: QuizResultBinding(),
    ),
    GetPage(
      name: PengembangUi.namePath,
      page: () => const PengembangUi(),
    ),
    GetPage(
      name: VerifikasiUi.namePath,
      page: () => VerifikasiUi(),
      binding: VerifikasiBinding(),
    ),
    GetPage(
      name: ChangePasswordUi.namePath,
      page: () => ChangePasswordUi(),
      binding: ChangePasswordBinding(),
    ),
  ];
}
