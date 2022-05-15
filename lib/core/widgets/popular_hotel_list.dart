import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rental_travel_app/core/components/text_style.dart';
import 'package:rental_travel_app/core/constants/colors/color_const.dart';

class PopularHotelList {
  static SizedBox popularHotelList(hotelName, hotelPrice) {
    return SizedBox(
      height: 80,
      width: 191,
      child: Row(
        children: [
          //Image hotel
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          //Info Hotel
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'hotel'.tr(),
                style: TextStyleComp.myTextStyle(
                  size: 10,
                  color: ColorsConst.color969696,
                ),
              ),
              Text(hotelName,
                  style: TextStyleComp.myTextStyle(
                    size: 12,
                    color: ColorsConst.color0F2542,
                  )),
              SizedBox(
                width: 101,
                child: Text(
                  'hotel_street'.tr(),
                  textAlign: TextAlign.start,
                  style: TextStyleComp.myTextStyle(
                    size: 10,
                    color: ColorsConst.color969696,
                  ),
                ),
              ),
              const SizedBox(height: 7),
              Row(
                children: [
                  Text(
                    '$hotelPrice MXN',
                    style: TextStyleComp.myTextStyle(
                      size: 12,
                      color: ColorsConst.color01957D,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '/' + 'night'.tr(),
                    style: TextStyleComp.myTextStyle(
                      size: 12,
                      color: ColorsConst.color969696,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
