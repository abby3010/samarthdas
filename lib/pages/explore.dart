import 'dart:async';

import 'package:flutter/material.dart';
import 'package:samarthdas_app/components/customAppBar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Explore extends StatelessWidget {
  Explore({Key? key}) : super(key: key);

  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(18.359520816229704, 77.6022747230128),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SamarthAppBar(title: "Explore"),
      body: Column(
        children: [
          const SizedBox(height: 20),
          buildListTile(
            text:
                "Shri Govind Maharaj Math,\nJukkal, Mandal Jukkal,\nDist. Kamareddy - 503305\nState Telagana",
            icon: Icons.location_pin,
            onTap: () {},
          ),
          buildListTile(
            text: "info.govindmaharajmath@gmail.com",
            icon: Icons.email,
            onTap: () {
              launch("mailto:info.govindmaharajmath@gmail.com");
            },
          ),
          buildListTile(
            text: "+91 80969 85481",
            icon: Icons.phone,
            onTap: () {
              launch("tel:+91 80969 85481");
            },
          ),
          ListTile(
            leading: const ImageIcon(
              AssetImage("assets/images/Internet.png"),
              color: Color(0xFF652308),
            ),
            title: const Text(
              "www.samarthdas.org",
              style: TextStyle(
                color: Color.fromRGBO(119, 34, 0, 1),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              launch("https://www.samarthdas.org");
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                height: 300,
                child: GoogleMap(
                  mapType: MapType.hybrid,
                  initialCameraPosition: _kGooglePlex,
                  markers: {
                    const Marker(
                        markerId: MarkerId("math_location"),
                        position: LatLng(18.359520816229704, 77.6022747230128))
                  },
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                )),
          ),
        ],
      ),
    );
  }
}

Widget buildListTile(
    {required String text,
    required var icon,
    required void Function()? onTap}) {
  return ListTile(
    onTap: onTap,
    leading: Icon(
      icon,
      color: const Color(0xFF652308),
    ),
    title: Text(
      text,
      style: const TextStyle(
        color: Color.fromRGBO(119, 34, 0, 1),
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
