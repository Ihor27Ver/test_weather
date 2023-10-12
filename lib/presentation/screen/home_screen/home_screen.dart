import 'package:flutter/material.dart';
import 'package:test_task_weather/presentation/screen/home_screen/widget/google_maps/google_map_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: GoogleMapWidget()),
    );
  }
}
