import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:map/map.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:tik_go/providers/change_screen_provider.dart';
import 'package:tik_go/providers/time_provider.dart';
import 'package:tik_go/theme/theme.dart';
import 'package:latlng/latlng.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Timer setnewtime;
  late Timer setappbartime;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final timeprovider = Provider.of<TimerProvider>(context, listen: false);
    final appbarprovider =
        Provider.of<ChangeScreenProvider>(context, listen: false);
    setnewtime = Timer.periodic(
      Duration(seconds: 1),
      (timer) => timeprovider.timerset = DateTime.now(),
    );
    setappbartime = Timer.periodic(
      Duration(seconds: 1),
      (timer) => appbarprovider.setappbartitel = Text(
        '${timeprovider.gethour}:${timeprovider.getmin}',
        style: ThemeApp().black.textTheme.headline5,
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    setnewtime.cancel();
    setappbartime.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final controller = MapController(
      location: LatLng(0, 0),
      zoom: 2,
    );
    return Stack(
      children: [
        Container(
          child: MapLayout(
            controller: controller,
            builder: (context, transformer) {
              return TileLayer(
                builder: (context, x, y, z) {
                  final tilesInZoom = pow(2.0, z).floor();

                  while (x < 0) {
                    x += tilesInZoom;
                  }
                  while (y < 0) {
                    y += tilesInZoom;
                  }

                  x %= tilesInZoom;
                  y %= tilesInZoom;

                  //Google Maps
                  final url =
                      'https://www.google.com/maps/vt/pb=!1m4!1m3!1i$z!2i$x!3i$y!2m3!1e0!2sm!3i420120488!3m7!2sen!5e1105!12m4!1e68!2m2!1sset!2sRoadmap!4e0!5m1!1e0!23i4111425';

                  return Image.network(url);
                },
              );
            },
          ),
        ),
      ],
    );
  }

  void _showNotImplemented() {
    const snackBar =
        SnackBar(content: Text('This demo is not implemented yet.'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _push(Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }
}
