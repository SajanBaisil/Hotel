import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LeMeridian extends StatelessWidget {
  const LeMeridian({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 350,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/hotel.jpg'))),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                const Text(
                  'DETAIL',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 180),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Le Meridian',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'Kochi, Kerala',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[300]?.withOpacity(0.7)),
                            child: const Text(
                              '8.4/85 reviews',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star_half),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.location_pin),
                        Text('8 km to Lulu Mall')
                      ],
                    )
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      '\$ 30',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text('/per night')
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 20, top: 20),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(30)),
              child: const Center(
                child: Text(
                  'Book Now',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'DESCRIPTION',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "With a stay at Le Meridien Kochi in Kanayannur, you'll be 6.1 mi (9.8 km) from Poornathrayesa Temple and 6.6 mi (10.7 km) from Lulu Mall. This 5-star hotel is 7.8 mi (12.5 km) from Mattancherry Palace and 9.5 mi (15.3 km) from Chinese Fishing Nets. Make yourself at home in one of the 223 individually furnished guestrooms, featuring minibars and LCD televisions. Complimentary wireless Internet access keeps you connected, and satellite programming is available for your entertainment",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Le Meridian Kochi, Kerala',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
