import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: const Text("Google Map"),
      ),
      body:  SafeArea(
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
            zoom: 15,
              target: LatLng(23.808435717102608, 90.36957545350393),
            bearing: 0,
            tilt: 5,
          ),
          onTap: (LatLng position) {
            print(position);
          },
          myLocationEnabled: true,
        ),
      ),
    );
  }
}
