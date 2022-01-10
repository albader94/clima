import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    print('initState() Called!');
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print('${location.latitude}, ${location.longitude}');
  }

  @override
  Widget build(BuildContext context) {
    print('build() Called');
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('Button Pressed');
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
