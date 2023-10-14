import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_maps_webservice/places.dart';
import 'package:test_task_weather/core/app/localization/generated/l10n.dart';

import 'package:test_task_weather/core/di/services.dart';
import 'package:test_task_weather/domain/entity/weather_details_screen_param/weather_details_screen_param.dart';
import 'package:test_task_weather/presentation/style/theme/theme_extension/ext.dart';
import 'package:test_task_weather/presentation/style/theme/theme_imports.dart';
import 'package:test_task_weather/presentation/widgets/inputs/app_text_field.dart';
import 'package:test_task_weather/util/keyboard_util.dart';

class AddressInput extends StatefulWidget {
  final ValueChanged<WeatherDetailsScreenParam> onSelected;
  final String address;

  const AddressInput(
      {required this.address, required this.onSelected, super.key});

  @override
  State<AddressInput> createState() => _AddressInputState();
}

class _AddressInputState extends State<AddressInput> {
  String kGoogleApiKey =
      environmentService().getEnvironmentVariable('GOOGLE_MAPS_API_KEY');
  late GoogleMapsPlaces _places;
  late TextEditingController _controller;
  late PlaceDetails detailsSelectedPlace;
  var _predictions = <Prediction>[];

  @override
  void initState() {
    _places = GoogleMapsPlaces(apiKey: kGoogleApiKey);
    _controller = TextEditingController();
    _controller.text = widget.address;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15.w, right: 15.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 1.r,
                ),
              ],
            ),
            width: 1.sw,
            child: Row(
              children: [
                SizedBox(
                  width: 295.w,
                  child: AppTextField(
                    onSubmitted: (value) {
                      KeyboardUtil.closeKeyboard();
                      _predictions.clear();
                    },
                    borderRadius: BorderRadius.circular(25.r),
                    textStyle: context.appTextStyles.fs18
                        ?.copyWith(color: AppColors.black),
                    controller: _controller,
                    onChanged: _autocompletePlaces,
                    hintText: S.of(context).enterCity,
                    hintStyle: context.appTextStyles.bodyText16
                        ?.copyWith(color: AppColors.greyColor),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      widget.onSelected(WeatherDetailsScreenParam(
                        cityName:  _controller.text,
                        latitude:null,
                        longitude: null,
                      ));
                      _predictions.clear();
                      KeyboardUtil.closeKeyboard();
                    },
                    icon: const Icon(
                      Icons.search_rounded,
                      color: AppColors.greyColor,
                    )),
              ],
            ),
          ),
          ColoredBox(
            color: context.appColors.backgroundColor,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: _predictions.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_predictions[index].description!),
                  onTap: () async {
                    final p = await _places
                        .getDetailsByPlaceId(_predictions[index].placeId!);

                    _controller.text = _predictions[index].description!;

                    detailsSelectedPlace = p.result;
                    widget.onSelected(WeatherDetailsScreenParam(
                      cityName:  _controller.text,
                      latitude: detailsSelectedPlace.geometry?.location.lat,
                      longitude: detailsSelectedPlace.geometry?.location.lng,
                    ));
                    _predictions.clear();

                    KeyboardUtil.closeKeyboard();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    KeyboardUtil.closeKeyboard();
    super.dispose();
  }

  Future<void> _autocompletePlaces(String input) async {
    if (input.length > 2) {
      final result = await _places.autocomplete(
        input,
        language: 'en',
      );

      if (result.isOkay) {
        setState(() {
          _predictions = result.predictions;
        });
      }
    }
  }
}
