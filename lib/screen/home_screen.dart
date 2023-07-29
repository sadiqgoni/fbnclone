import 'package:fbnclone/utils/notificationbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../constant.dart';
import '../utils/custom_container.dart';
import 'appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Utils utils = Utils();

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    print('The iphone width is ${deviceWidth}');
    print('The iphone height is ${deviceHeight}');
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(24.6.h),
        child: AppBar(
          leading: const Text(''),
          flexibleSpace: Stack(
            children: [
              // Background image
              Positioned.fill(
                child: Image.asset(
                  'lib/images/bg.png',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  // Top Row
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30.0, horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Menu icon
                        IconButton(
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 32,
                          ),
                          onPressed: () {},
                        ),
                        // 'Dashboard' text
                        Text(
                          'DashBoard',
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                          // style: TextStyle(
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.bold,
                          //     fontSize: 20),
                        ),
                        const CustomNotificationBar(
                          top: 5,
                          bottom: 28,
                          right: 14,
                          left: 19,
                        ),
                      ],
                    ),
                  ),

                  // 'Good morning' and 'Last login' texts
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                                radius: 28,
                                backgroundImage:
                                    AssetImage('lib/images/profile.webp')),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Good Morning, Sadiq Goni',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Last login: 13/07/23 09:34',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(width: 7.w),
                                      Row(
                                        children: const [
                                          Text(
                                            'HISTORY',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(width: 2),
                                          Icon(
                                            Icons.calendar_month_sharp,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Container with account information
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Container(
                      // margin: const EdgeInsets.all(8),
                      width: 80.w,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'ACCOUNT # 3018 1531 37',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('₦ 860,428.60',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          // List of icons with text
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CustomContainer(
                  title: 'Transfer',
                  icon: Icons.compare_arrows_rounded,
                ),
                CustomContainer(
                    title: 'Pay Bills', icon: Icons.receipt_outlined),
                CustomContainer(
                  title: 'Buy Airtime',
                  icon: Icons.speaker_phone,
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CustomContainer(
                  title: 'QR Payment',
                  icon: Icons.qr_code,
                ),
                CustomContainer(title: 'Loans', icon: Icons.currency_exchange),
                CustomContainer(
                  title: 'Virtual Cards',
                  icon: Icons.credit_card_rounded,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'MY STATISTICS',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Inflow',
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(width: 4),
                        Container(
                          width: 15,
                          height: 15,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.orangeAccent),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Outflow',
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(width: 4),
                        Container(
                          width: 15,
                          height: 15,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff03132a),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.calendar_month_sharp,
                      color: Colors.grey,
                      size: 20,
                    ),
                    Text(
                      'JUN - JUL 2023',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 40.h,
                  child: ListView.builder(
                      itemBuilder: (context, index) {
                        final currentNaira = utils.naira[index];
                        return ListTile(
                          leading: Text(
                            currentNaira,
                            style: TextStyle(color: Colors.grey),
                          ),
                          title: Divider(color: Colors.grey[400], thickness: 2),
                        );
                      },
                      itemCount: 5),
                ),
              ),
              Positioned(
                top: 10,
                left: 100,
                child: Row(
                  children: [
                    Container(
                      height: 190,
                      width: 25,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(4),
                            topLeft: Radius.circular(4)),
                        color: Color(0xff03132a),
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 30,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(4),
                            topLeft: Radius.circular(4)),
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff03132a),
        elevation: 20,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orangeAccent,
        selectedLabelStyle: const TextStyle(color: Colors.red),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(
          color: Colors.red,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: 'Beneficiary'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_rounded), label: 'Frequent'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
