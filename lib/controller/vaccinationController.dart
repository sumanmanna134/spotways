import 'package:get/state_manager.dart';
import 'package:provider/provider.dart';
import 'package:spotways/api_manager/api_services.dart';
import 'package:spotways/models/vaccination_by_pin.dart';
import 'package:spotways/services/geolocator_services.dart';

class VaccinationController extends GetxController{
  var isLoading = true.obs;
  final String pincode;
  final String date;
  
  // ignore: deprecated_member_use
  var centerList = List<Session>().obs;

  VaccinationController(this.pincode, this.date);


  @override
  void onInit() {
    // TODO: implement onInit
      getVaccinationCenterByPin();
        super.onInit();
      }
    
      void getVaccinationCenterByPin() async{
        try{

          isLoading(true);
          var centers = await ApiServices.fetchVaccinationSessionByPin(pincode:this.pincode, date: this.date);
          if(centers!=null){

            centerList.value = centers;

          }

          
        }catch(e){

         print(e);
        }finally{
          isLoading(false);
        }


      }


      
  
}