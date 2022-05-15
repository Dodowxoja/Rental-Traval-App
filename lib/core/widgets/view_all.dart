import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rental_travel_app/core/components/text_style.dart';
import 'package:rental_travel_app/core/constants/colors/color_const.dart';

class ViewAll {
  static Padding viewAll(text, {double sizeB = 0}) {
    return Padding(
      padding: EdgeInsets.only(left: 32, right: 32, top: 29, bottom: sizeB),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$text".tr(),
            style: TextStyleComp.myTextStyle(
              color: ColorsConst.color0F2542,
              fontWeight: FontWeight.w500,
            ),
          ),
          InkWell(
            child: Row(
              children: [
                Text(
                  'view_all'.tr(),
                  style: TextStyleComp.myTextStyle(
                    color: ColorsConst.color01957D,
                    size: 12.0,
                  ),
                ),
                const SizedBox(width: 13),
                Container(
                  height: 18.5,
                  width: 18.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.25),
                    border: Border.all(
                      color: ColorsConst.color01957D,
                      width: 1.5,
                    ),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.navigate_next,
                    size: 15,
                    color: ColorsConst.color01957D,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
