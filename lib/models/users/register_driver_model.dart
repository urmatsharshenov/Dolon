// ignore_for_file: unnecessary_getters_setters, lines_longer_than_80_chars

import 'dart:io';

class RegisterDriver {
  RegisterDriver({
    String name,
    String surName,
    String carryingCapacity,
    String vehicleType,
    String cargoType,
    File vehicle,
    File driverLicense,
    File idPassport,
  }) {
    _carryingCapacity = carryingCapacity;
    _vehicleType = vehicleType;
    _cargoType = cargoType;
    _vehiclePassport = vehicle;
    _driverLicense = driverLicense;
    _idPassport = idPassport;
  }

  RegisterDriver.fromJson(Map<String, dynamic> json) {
    _carryingCapacity = json['carrying_capacity'];
    _vehicleType = json['vehicle_type'];
    _cargoType = json['cargo_type'];
    _vehiclePassport = json['vehicle_passport'];
    _driverLicense = json['driver_license'];
    _idPassport = json['id_passport'];
  }

  String name;
  String surName;
  String _carryingCapacity;
  String _vehicleType;
  String _cargoType;
  File _vehiclePassport;
  File _driverLicense;
  File _idPassport;

  String get carryingCapacity => _carryingCapacity;

  File get vehicle => _vehiclePassport;

  File get driverLicense => _driverLicense;

  File get idPassport => _idPassport;

  set idPassport(File idPassport) => _idPassport = idPassport;

  set vehicle(File vehicle1) => _vehiclePassport = vehicle1;

  set driverLicense(File driverLicense) => _driverLicense = driverLicense;

  set carryingCapacity(String carryingCapacity) =>
      _carryingCapacity = carryingCapacity;

  String get vehicleType => _vehicleType;

  set vehicleType(String vehicleType) => _vehicleType = vehicleType;

  String get cargoType => _cargoType;

  set cargoType(String cargoType) => _cargoType = cargoType;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['carrying_capacity'] = _carryingCapacity;
    data['vehicle_type'] = _vehicleType;
    data['cargo_type'] = _cargoType;
    data['vehicle_passport'] = _vehiclePassport;
    data['driver_license'] = _driverLicense;
    data['id_passport'] = _idPassport;
    return data;
  }
}
