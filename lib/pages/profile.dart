import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.45,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 60),
                  height: size.height * 0.35,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100))),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.menu),
                        Text(
                          'Edit',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: size.height * 0.15,
                  top: size.width * 0.45,
                  child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/images.jpg')),
                ),
                Positioned(
                  left: size.height * 0.15,
                  top: size.width * 0.73,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 18,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green),
                      child: const Icon(
                        Icons.done,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            'SAJAN BAISIL',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: size.height * 0.03),
          ),
          const Text('sajanbaisil12@gmail.com'),
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12)),
                    child: ListTile(
                      leading: Container(
                        height: size.height * 0.06,
                        width: size.width * 0.13,
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(12)),
                        child: const Center(child: Icon(Icons.person)),
                      ),
                      title: const Text(
                        'My Profile',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12)),
                    child: ListTile(
                        leading: Container(
                          height: size.height * 0.06,
                          width: size.width * 0.13,
                          decoration: BoxDecoration(
                              color: Colors.blue[100],
                              borderRadius: BorderRadius.circular(12)),
                          child: const Center(child: Icon(Icons.inbox)),
                        ),
                        title: const Text(
                          'Messages',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                        trailing: Container(
                          height: 25,
                          width: 25,
                          decoration: const BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                          child: const Center(
                              child: Text(
                            '2',
                            style: TextStyle(color: Colors.white),
                          )),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12)),
                    child: ListTile(
                      leading: Container(
                        height: size.height * 0.06,
                        width: size.width * 0.13,
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(12)),
                        child: const Center(child: Icon(Icons.settings)),
                      ),
                      title: const Text(
                        'Settings',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12)),
                    child: ListTile(
                      leading: Container(
                        height: size.height * 0.06,
                        width: size.width * 0.13,
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(12)),
                        child: const Center(child: Icon(Icons.chat)),
                      ),
                      title: const Text(
                        'Terms & Privacy Policy',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
