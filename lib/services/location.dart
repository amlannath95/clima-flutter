import 'package:geolocator/geolocator.dart';

class Location {
  double latitude, longtitude;

  //Location({@required this.latitude, this.longtitude});

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longtitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
