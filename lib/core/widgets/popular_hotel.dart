import 'package:flutter/material.dart';
import 'package:rental_travel_app/core/widgets/popular_hotel_list.dart';

class PopularHotel {
  static SizedBox popularHotel(context) {
    return SizedBox(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(width: 31),
          PopularHotelList.popularHotelList('Plazza Carbie', 249),
          const SizedBox(width: 29),
          PopularHotelList.popularHotelList('Kavia Plus', 369),
          const SizedBox(width: 31),
        ],
      ),
    );
  }
}
