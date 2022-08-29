import '../models/city.dart';

class Flight {
  int flight_num,
      plane_id,
      origin_city,
      destination_city,
      departure_air_id,
      origin_air_id,
      departure_gate_id,
      origin_gate_id;
  int bs_price, ec_price;
  // DateTime flight_date;
  String flight_img;
  City city;

  Flight({
    required this.flight_num,
    required this.plane_id,
    required this.origin_city,
    required this.destination_city,
    required this.departure_air_id,
    required this.origin_air_id,
    required this.departure_gate_id,
    required this.origin_gate_id,
    required this.bs_price,
    required this.ec_price,
    // required this.flight_date,
    required this.flight_img,
    required this.city,
  });

  factory Flight.fromJson(Map<String, dynamic> json) {
    return Flight(
        flight_num: json['flight_num'],
        origin_city: json['origin_city'],
        ec_price: json['ec_price'],
        bs_price: json['bs_price'],
        plane_id: json['plane_id'],
        destination_city: json['dastination_city'],
        departure_air_id: json['departure_air_id'],
        origin_air_id: json['origin_air_id'],
        departure_gate_id: json['departure_gate_id'],
        origin_gate_id: json['origin_gate_id'],
        //flight_date: json['flight_date'],
        flight_img: json['flight_img'],
        city: City(
          name: json['city']['city_name'],
        ));
  }
}
