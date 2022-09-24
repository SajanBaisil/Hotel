import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel/screens/lemeridian.dart';
import 'package:hotel/widgets/cards.dart';
import 'package:hotel/widgets/roomcards.dart';

class ScreenMain extends StatelessWidget {
  const ScreenMain({super.key});

  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 180,
            backgroundColor: const Color.fromARGB(255, 0, 138, 157),
            leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.favorite_outline))
            ],
            floating: false,
            pinned: true,
            snap: false,
            flexibleSpace: ListView(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Center(
                  child: Text(
                    'Type your Location',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search_outlined),
                          hintText: 'Bouddha, Kathmandu',
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10.0,
            ),
          ),
          SliverToBoxAdapter(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              HotelCards(
                hotelicons: Icons.hotel,
                text: 'Hotel',
                cardcolor: Colors.red,
              ),
              HotelCards(
                hotelicons: Icons.restaurant,
                text: 'Restuarent',
                cardcolor: Color.fromARGB(255, 3, 125, 224),
              ),
              HotelCards(
                hotelicons: Icons.coffee,
                text: 'Cafe',
                cardcolor: Colors.orange,
              ),
            ],
          )),
          SliverToBoxAdapter(
              child: Column(
            children: [
              LargeCards(
                ontap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LeMeridian())),
                hotelImage: 'assets/hotel.jpg',
                hotelName: 'Le Meridian',
                hotellocation: 'Kochi, Kerala',
                hotelRate: '\$30',
                hotelReview: '(150 reviews)',
                hotelRating: Icons.star_half,
              ),
              LargeCards(
                ontap: () {},
                hotelImage: 'assets/hotel2.jpg',
                hotelName: 'Crown Plaza',
                hotellocation: 'Kochi, Kerala',
                hotelRate: '\$60',
                hotelReview: '(180 reviews)',
                hotelRating: Icons.star_half,
              ),
              LargeCards(
                ontap: () {},
                hotelImage: 'assets/hotel3.jpg',
                hotelName: 'Leela Raviz',
                hotellocation: 'Kovalam, Kerala',
                hotelRate: '\$80',
                hotelReview: '(200 reviews)',
                hotelRating: Icons.star,
              )
            ],
          )),
        ],
      ),
    );
  }
}
