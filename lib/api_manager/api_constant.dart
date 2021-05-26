import 'package:flutter_dotenv/flutter_dotenv.dart';

class APIConstants {
  static final baseUrl = env['BASE_URL'] ?? "";
  static final version = "/api/v2/";
  static final apiUrl = baseUrl + version;

  static final getVaccinationSessionByPin = apiUrl+"appointment/sessions/public/findByPin?";
  

}
