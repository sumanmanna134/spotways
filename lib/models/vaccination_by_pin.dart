// To parse this JSON data, do
//
//     final vaccinationByPin = vaccinationByPinFromJson(jsonString);

import 'dart:convert';

VaccinationByPin vaccinationByPinFromJson(String str) => VaccinationByPin.fromJson(json.decode(str));

String vaccinationByPinToJson(VaccinationByPin data) => json.encode(data.toJson());

class VaccinationByPin {
    VaccinationByPin({
        this.sessions,
    });

    List<Session> sessions;

    factory VaccinationByPin.fromJson(Map<String, dynamic> json) => VaccinationByPin(
        sessions: json["sessions"] == null ? null : List<Session>.from(json["sessions"].map((x) => Session.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "sessions": sessions == null ? null : List<dynamic>.from(sessions.map((x) => x.toJson())),
    };
}

class Session {
    Session({
        this.centerId,
        this.name,
        this.address,
        this.stateName,
        this.districtName,
        this.blockName,
        this.pincode,
        this.from,
        this.to,
        this.lat,
        this.long,
        this.feeType,
        this.sessionId,
        this.date,
        this.availableCapacityDose1,
        this.availableCapacityDose2,
        this.availableCapacity,
        this.fee,
        this.minAgeLimit,
        this.vaccine,
        this.slots,
    });

    int centerId;
    String name;
    String address;
    String stateName;
    String districtName;
    String blockName;
    int pincode;
    String from;
    String to;
    int lat;
    int long;
    String feeType;
    String sessionId;
    String date;
    int availableCapacityDose1;
    int availableCapacityDose2;
    int availableCapacity;
    String fee;
    int minAgeLimit;
    String vaccine;
    List<Slot> slots;

    factory Session.fromJson(Map<String, dynamic> json) => Session(
        centerId: json["center_id"] == null ? null : json["center_id"],
        name: json["name"] == null ? null : json["name"],
        address: json["address"] == null ? null : json["address"],
        stateName: json["state_name"] == null ? null : json["state_name"],
        districtName: json["district_name"] == null ? null : json["district_name"],
        blockName: json["block_name"] == null ? null : json["block_name"],
        pincode: json["pincode"] == null ? null : json["pincode"],
        from: json["from"] == null ? null : json["from"],
        to: json["to"] == null ? null : json["to"],
        lat: json["lat"] == null ? null : json["lat"],
        long: json["long"] == null ? null : json["long"],
        feeType: json["fee_type"] == null ? null : json["fee_type"],
        sessionId: json["session_id"] == null ? null : json["session_id"],
        date: json["date"] == null ? null : json["date"],
        availableCapacityDose1: json["available_capacity_dose1"] == null ? null : json["available_capacity_dose1"],
        availableCapacityDose2: json["available_capacity_dose2"] == null ? null : json["available_capacity_dose2"],
        availableCapacity: json["available_capacity"] == null ? null : json["available_capacity"],
        fee: json["fee"] == null ? null : json["fee"],
        minAgeLimit: json["min_age_limit"] == null ? null : json["min_age_limit"],
        vaccine: json["vaccine"] == null ? null : json["vaccine"],
        slots: json["slots"] == null ? null : List<Slot>.from(json["slots"].map((x) => slotValues.map[x])),
    );

    Map<String, dynamic> toJson() => {
        "center_id": centerId == null ? null : centerId,
        "name": name == null ? null : name,
        "address": address == null ? null : address,
        "state_name": stateName == null ? null : stateName,
        "district_name": districtName == null ? null : districtName,
        "block_name": blockName == null ? null : blockName,
        "pincode": pincode == null ? null : pincode,
        "from": from == null ? null : from,
        "to": to == null ? null : to,
        "lat": lat == null ? null : lat,
        "long": long == null ? null : long,
        "fee_type": feeType == null ? null : feeType,
        "session_id": sessionId == null ? null : sessionId,
        "date": date == null ? null : date,
        "available_capacity_dose1": availableCapacityDose1 == null ? null : availableCapacityDose1,
        "available_capacity_dose2": availableCapacityDose2 == null ? null : availableCapacityDose2,
        "available_capacity": availableCapacity == null ? null : availableCapacity,
        "fee": fee == null ? null : fee,
        "min_age_limit": minAgeLimit == null ? null : minAgeLimit,
        "vaccine": vaccine == null ? null : vaccine,
        "slots": slots == null ? null : List<dynamic>.from(slots.map((x) => slotValues.reverse[x])),
    };
}

enum Slot { THE_0900_AM_1100_AM, THE_1100_AM_0100_PM, THE_0100_PM_0300_PM, THE_0300_PM_0500_PM }

final slotValues = EnumValues({
    "01:00PM-03:00PM": Slot.THE_0100_PM_0300_PM,
    "03:00PM-05:00PM": Slot.THE_0300_PM_0500_PM,
    "09:00AM-11:00AM": Slot.THE_0900_AM_1100_AM,
    "11:00AM-01:00PM": Slot.THE_1100_AM_0100_PM
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
