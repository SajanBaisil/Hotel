import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HotelPackages extends StatelessWidget {
  final String hotelname;
  final String hotelimage;
  final String hotelrate;
  final void Function()? ontap;
  const HotelPackages(
      {super.key,
      required this.hotelimage,
      required this.hotelname,
      required this.hotelrate,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Card(
        shadowColor: Colors.grey[300],
        elevation: 6,
        child: Container(
          height: 150,
          width: double.infinity,
          color: Colors.white,
          child: Stack(
            children: [
              Container(
                height: 150,
                width: 130,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(hotelimage))),
              ),
              Positioned(
                left: 140,
                top: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotelname,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'A Five Star Hotel in Kochi',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      hotelrate,
                      style: const TextStyle(fontSize: 14, color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.directions_car,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.hot_tub,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.local_bar,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.wifi,
                          color: Colors.blue,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                top: 80,
                left: 280,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: MaterialButton(
                    onPressed: ontap,
                    color: Colors.blue,
                    child: const Text(
                      'Book',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
