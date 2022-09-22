import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LargeCards extends StatelessWidget {
  final ontap;
  final hotelImage;
  final hotelName;
  final hotellocation;
  final hotelRate;
  final IconData hotelRating;
  final hotelReview;
  const LargeCards(
      {super.key,
      required this.ontap,
      required this.hotelImage,
      required this.hotelName,
      required this.hotellocation,
      required this.hotelRate,
      required this.hotelRating,
      required this.hotelReview});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: GestureDetector(
        onTap: ontap,
        child: Card(
          elevation: 3,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 230,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: AssetImage(hotelImage))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5, top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 150, right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                color: Colors.white,
                                child: Text(
                                  hotelRate,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotelName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      hotellocation,
                      style: TextStyle(color: Colors.grey[500], fontSize: 15),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          hotelRating,
                          color: Colors.green,
                        ),
                        Text(
                          hotelReview,
                          style:
                              TextStyle(color: Colors.grey[500], fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
