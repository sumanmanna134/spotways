// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$VaccineStore on _VaccineStore, Store {
  final _$latAtom = Atom(name: '_VaccineStore.lat');

  @override
  double get lat {
    _$latAtom.reportRead();
    return super.lat;
  }

  @override
  set lat(double value) {
    _$latAtom.reportWrite(value, super.lat, () {
      super.lat = value;
    });
  }

  final _$longAtom = Atom(name: '_VaccineStore.long');

  @override
  double get long {
    _$longAtom.reportRead();
    return super.long;
  }

  @override
  set long(double value) {
    _$longAtom.reportWrite(value, super.long, () {
      super.long = value;
    });
  }

  final _$pincodeAtom = Atom(name: '_VaccineStore.pincode');

  @override
  String get pincode {
    _$pincodeAtom.reportRead();
    return super.pincode;
  }

  @override
  set pincode(String value) {
    _$pincodeAtom.reportWrite(value, super.pincode, () {
      super.pincode = value;
    });
  }

  final _$dateAtom = Atom(name: '_VaccineStore.date');

  @override
  String get date {
    _$dateAtom.reportRead();
    return super.date;
  }

  @override
  set date(String value) {
    _$dateAtom.reportWrite(value, super.date, () {
      super.date = value;
    });
  }

  final _$centerListFutureAtom = Atom(name: '_VaccineStore.centerListFuture');

  @override
  List<Session> get centerListFuture {
    _$centerListFutureAtom.reportRead();
    return super.centerListFuture;
  }

  @override
  set centerListFuture(List<Session> value) {
    _$centerListFutureAtom.reportWrite(value, super.centerListFuture, () {
      super.centerListFuture = value;
    });
  }

  final _$_VaccineStoreActionController =
      ActionController(name: '_VaccineStore');

  @override
  dynamic fetchVaccinationByPin() {
    final _$actionInfo = _$_VaccineStoreActionController.startAction(
        name: '_VaccineStore.fetchVaccinationByPin');
    try {
      return super.fetchVaccinationByPin();
    } finally {
      _$_VaccineStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
lat: ${lat},
long: ${long},
pincode: ${pincode},
date: ${date},
centerListFuture: ${centerListFuture}
    ''';
  }
}
