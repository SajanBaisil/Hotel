import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PopularHotel extends StatelessWidget {
  final String popularImage;
  final String populartext;
  final String ratetext;
  final String rating;
  final void Function()? ontap;
  const PopularHotel({super.key,required this.popularImage,required this.populartext,required this.ratetext,required this.rating, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: GestureDetector(
        onTap:ontap ,
        child: Card(
          shadowColor: Colors.grey[300],
          elevation: 5,
          child: Container(
            height: 250,
            width: 180,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 140,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      image:  DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(popularImage))),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                        populartext,
                        style:
                          const  TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'A Five Star Hotel in Kochi',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text(
                            ratetext,
                            style:const TextStyle(fontSize: 14, color: Colors.blue),
                          ),
                          Row(
                            children:  [
                              Text(
                                rating,
                                style:
                                    const TextStyle(fontSize: 14, color: Colors.blue),
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.blue,
                              )
                            ],
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
      ),
    );
  }
}
