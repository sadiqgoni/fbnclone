import 'package:fbnclone/screen/authpin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:sizer/sizer.dart';

import '../constant.dart';
import '../utils/notificationbar.dart';
import 'home_screen.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Utils utils = Utils();

  bool _onEditing = true;

  String? _code;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/fbnbackground.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Image.network(
                  'https://ibank.firstbanknigeria.com/corp/L001/consumer/images/logo-DarkBg.png',
                  // 'lib/images/download.png',
                  height: 60,
                ),
                centerTitle: true,
                elevation: 0.0,
                backgroundColor: Colors.transparent,
                actions: const [
                  CustomNotificationBar(
                    top: 6,
                    bottom: 35,
                    right: 15,
                    left: 19,
                  )
                ],
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 130,
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final currentLogo = utils.icons[index];
                      final currentDetails = utils.details[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(2),
                            boxShadow: const [
                              BoxShadow(
                                // color: Colors.blue
                                // color: Color(0xff000000)
                                color: Color(0xff03132a),
                                spreadRadius: 0.3,
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: currentLogo,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  currentDetails,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    childCount: utils.icons.length,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1 / 1.14,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 0.0),
                  child: Container(
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xff03132a),
                          spreadRadius: 0.3,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Enter your mPIN to login',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          VerificationCode(
                            cursorColor: Colors.black,
                            itemSize: 40,
                            underlineColor: Colors.orangeAccent,
                            underlineUnfocusedColor: Colors.white,
                            isSecure: _onEditing ? false : true,
                            digitsOnly: true,
                            textStyle: const TextStyle(color: Colors.white),
                            keyboardType: TextInputType.number,
                            length: 5,
                            onCompleted: (String value) async {
                              setState(() {
                                _code = value;
                              });

                              if (_code == '12345') {
                                showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    title: Text('Access'),
                                    actions: [
                                      MaterialButton(
                                        child: Text('OK'),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomeScreen()));
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    title: Text('Invalid input'),
                                    actions: [
                                      MaterialButton(
                                        child: Text('OK'),
                                        onPressed: () {
                                          Navigator.pop(context);
                                          // VerificationCode.clearAll!(); // Assuming `clearAll` is a static method of VerificationCode to clear the input
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              }

                              print(_code);
                            },
                            onEditing: (bool value) {
                              setState(() {
                                _onEditing = value;
                              });
                              if (!_onEditing) FocusScope.of(context).unfocus();
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
