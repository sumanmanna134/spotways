import 'package:geolocator/geolocator.dart';
import 'package:mobx/mobx.dart';
import 'package:spotways/api_manager/api_services.dart';
import 'package:spotways/models/vaccination_by_pin.dart';
import 'package:spotways/utils/utils.dart';
import 'package:geocoder/geocoder.dart' as geo;

part 'vaccine_store.g.dart';

class VaccineStore = _VaccineStore with _$VaccineStore;



abstract class _VaccineStore with Store{
  
  
  @observable 
  double lat ;

  @observable 
  double long;

  @observable 
  String pincode;

  @observable
  String date = Utils.dateToLocalString(DateTime.now());

  @observable 
  List<Session> centerListFuture;

  @action
   fetchVaccinationByPin(){
    ApiServices.fetchVaccinationSessionByPin(pincode: pincode, date:  date)
    .then((centers) {
        centerListFuture = centers.sessions;
    });
    
  }
    


  Future getCurrentLocation() async{

    var positionData = await GeolocatorPlatform.instance.getCurrentPosition();

    lat = positionData.latitude;
    long =  positionData.longitude;

    final cords = geo.Coordinates(lat, long);
    var address = await geo.Geocoder.local.findAddressesFromCoordinates(cords);
  
    pincode = address.first.postalCode;
    print(pincode);
  }


    void getCenters(){

      getCurrentLocation().then((value) =>fetchVaccinationByPin());

    }
  


}