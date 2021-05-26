import 'dart:io';


import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoder/geocoder.dart' as geo;


class GeolocatorService extends ChangeNotifier{

  double _latitude;
  double _longitude;

  String location ="Searching Address..";
  String _countryCode = "";

  Future getCurrentLocation() async{

      var positionData = await GeolocatorPlatform.instance.getCurrentPosition();

      this._latitude = positionData.latitude;
      this._longitude =  positionData.longitude;

    final cords = geo.Coordinates(_latitude, _longitude);
    var address = await geo.Geocoder.local.findAddressesFromCoordinates(cords);
    location = address.first.addressLine;
    _countryCode = address.first.postalCode;
    print(_countryCode);



    notifyListeners();


  }

  String get pincode => _countryCode;
  double get lattitude=> _latitude;
  double get longitude => _longitude;











}