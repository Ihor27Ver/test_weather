import 'package:flutter/services.dart';
import 'dart:ui' as ui;

class CustomMarker {

  Future<Uint8List> getImages(String path, int width) async{
    var data = await rootBundle.load(path);
    final codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetHeight: width);
    final fi = await codec.getNextFrame();
    return(await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();

  }

}