import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rental_travel_app/core/components/text_style.dart';
import 'package:rental_travel_app/core/constants/colors/color_const.dart';
import 'package:rental_travel_app/core/widgets/my_filter_home.dart';

class HomeUi {
  static Container homeUi1(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/image_home_room.png'),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.only(top: 41, left: 32, right: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage:
                    AssetImage('assets/images/image_home_profile.png'),
              ),
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  color: ColorsConst.colorFFFFFF.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: SvgPicture.asset('assets/icons/category.svg'),
              )
            ],
          ),
          //Size
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          //Text //? Hi (Name)
          Text(
            'hi'.tr() + " Muhammadxoja",
            style: TextStyleComp.myTextStyle(size: 20.0),
          ),
          //Text //? FIND the
          Text(
            'find_the_best'.tr(),
            style: TextStyleComp.myTextStyle(
              size: 32.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          //Serach
          SizedBox(
            height: 50,
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.72,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      fillColor: ColorsConst.colorFFFFFF,
                      filled: true,
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: ColorsConst.color01957D,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: SvgPicture.asset('assets/icons/filter.svg'),
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),

          //Filter
          SizedBox(
            height: 35,
            child: Row(
              children: [
                MyFilterHome.myFilterHomePage('home', 65),
                MyFilterHome.myFilterHomePage('apartament', 105),
                MyFilterHome.myFilterHomePage('cabins', 75),
                MyFilterHome.myFilterHomePage('beachfont', 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
