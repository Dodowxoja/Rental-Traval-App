import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rental_travel_app/core/components/text_style.dart';
import 'package:rental_travel_app/core/constants/colors/color_const.dart';

class HoletList {
  static holetList() {
    return SizedBox(
      height: 208,
      width: 290,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            SizedBox(
              height: 127,
              width: 290,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 56,
              width: 262,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Long Beach Ixtapa'),
                      SizedBox(
                        height: 13,
                        width: 29,
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 12,
                              color: ColorsConst.colorE1B412,
                            ),
                            Text(
                              '4.5',
                              style: TextStyleComp.myTextStyle(
                                  size: 10, color: ColorsConst.color0F2542),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '4 ' +
                        'room'.tr() +
                        ' - 6 ' +
                        'bedroom'.tr() +
                        ' - 2 ' +
                        'bathromm'.tr() +
                        ' - Wi-Fi',
                    style: TextStyleComp.myTextStyle(
                      size: 10,
                      color: ColorsConst.color969696,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '500 MXN',
                        style: TextStyleComp.myTextStyle(
                          size: 12,
                          color: ColorsConst.color01957D,
                        ),
                      ),
                      Text(
                        ' / ' + 'night'.tr(),
                        style: TextStyleComp.myTextStyle(
                          size: 12,
                          color: ColorsConst.color969696,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
