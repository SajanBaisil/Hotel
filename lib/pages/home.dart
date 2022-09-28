import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotel/pages/explore.dart';
import 'package:hotel/screens/lemeridian.dart';
import 'package:hotel/widgets/cards.dart';
import 'package:hotel/widgets/hotelpackages.dart';
import 'package:hotel/widgets/popular_hotel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            padding: const EdgeInsets.all(5),
            height: 80,
            width: double.infinity,
            color: Colors.white,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Hello Sajan',
                        style: TextStyle(color: Colors.grey[600], fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Find Your Favourite Hotel',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(172, 224, 224, 224),
                              offset: Offset(0, 5)),
                          BoxShadow(
                              color: Color.fromARGB(172, 224, 224, 224),
                              offset: Offset(0, -5)),
                          BoxShadow(
                              color: Color.fromARGB(172, 224, 224, 224),
                              offset: Offset(5, 0)),
                          BoxShadow(
                              color: Color.fromARGB(172, 224, 224, 224),
                              offset: Offset(-5, 0))
                        ],
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images.jpg'))),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 5),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12)),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: 'Search For Hotel',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Popular Hotel',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PopularHotel(
                    popularImage: 'assets/hotel.jpg',
                    populartext: 'Le Meridian',
                    ratetext: '\$30 / night',
                    rating: '4.5',
                    ontap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LeMeridian()));
                    },
                  ),
                  PopularHotel(
                    popularImage: 'assets/hotel2.jpg',
                    populartext: 'Crown Plaza',
                    ratetext: '\$60 / night',
                    rating: '4.5',
                    ontap: () {},
                  ),
                  PopularHotel(
                    popularImage: 'assets/hotel3.jpg',
                    populartext: 'Leela Raviz',
                    ratetext: '\$80 / night',
                    rating: '5.0',
                    ontap: () {},
                  ),
                ],
              )),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Hotel Packages',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ScreenExplore()));
                  },
                  child: const Text(
                    'view all',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                HotelPackages(
                  hotelimage: 'assets/hotel.jpg',
                  hotelname: 'Le Meridian',
                  hotelrate: '\$30 / night',
                  ontap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LeMeridian()));
                  },
                ),
                HotelPackages(
                  hotelimage: 'assets/hotel2.jpg',
                  hotelname: 'Crown Plaza',
                  hotelrate: '\$60 / night',
                  ontap: () {},
                ),
                HotelPackages(
                  hotelimage: 'assets/hotel3.jpg',
                  hotelname: 'Leela Raviz',
                  hotelrate: '\$80 / night',
                  ontap: () {},
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
