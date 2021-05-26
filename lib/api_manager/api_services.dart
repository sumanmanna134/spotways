


import 'package:http/http.dart' as http;
import 'package:spotways/api_manager/api_constant.dart';
import 'package:spotways/models/vaccination_by_pin.dart';

class ApiServices{
  static var client = http.Client();

  static Future fetchVaccinationSessionByPin({String pincode,String date})async{
    String url = "${APIConstants.getVaccinationSessionByPin}pincode=${pincode}&date=${date}";
    print(url);
    var response = await client.get(url);

    if(response.statusCode == 200){
      var jsonString = response.body;

      print(jsonString);
      
      return vaccinationByPinFromJson(jsonString);
    }else{

      var jsonString = response.body;
      return vaccinationByPinFromJson(jsonString);
    }

  }
}