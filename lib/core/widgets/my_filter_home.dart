import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rental_travel_app/core/constants/colors/color_const.dart';

class MyFilterHome {
  static InkWell myFilterHomePage(type, double sizeW) {
    return InkWell(
      child: Container(
        height: 35,
        width: sizeW,
        decoration: BoxDecoration(
          color: ColorsConst.color01957D,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        alignment: Alignment.center,
        child: Text('$type'.tr()),
      ),
      onHover: (v) {},
    );
  }
}
