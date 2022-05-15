import 'package:flutter/material.dart';
import 'package:rental_travel_app/core/widgets/holet_list.dart';
import 'package:rental_travel_app/core/widgets/popular_hotel.dart';
import 'package:rental_travel_app/core/widgets/view_all.dart';

class HomeUi2 {
  static homeUi2(context) {
    return Column(
      children: [
        //Places and View All
        ViewAll.viewAll('places_near_you', sizeB: 17),
        //Hotel List
        SizedBox(
          height: 208,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(height: 209, width: 31),
              HoletList.holetList(),
              const SizedBox(width: 22),
              HoletList.holetList(),
              const SizedBox(width: 22),
              HoletList.holetList(),
              const SizedBox(height: 209, width: 31),
            ],
          ),
        ),
        //Popular and View All
        ViewAll.viewAll('most_popular', sizeB: 11),
        //Popular hotel List
        PopularHotel.popularHotel(context)
      ],
    );
  }
}
