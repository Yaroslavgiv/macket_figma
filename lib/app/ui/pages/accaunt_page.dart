import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';
import '../utils/utils.dart';

class AccauntPage extends StatelessWidget {
  const AccauntPage({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: backgroundColorScaffold,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset('assets/page-1/images/union.png',
                      width: 26 * fem, height: 26.12 * fem),
                  const SizedBox(height: 6),
                  Text(
                    // labelEsq (1:424)
                    'Главная',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'SF Pro Display',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2575 * ffem / fem,
                      letterSpacing: 0.1199999973 * fem,
                      color: iconGreyColorText,
                    ),
                  ),
                ],
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset('assets/page-1/images/shopping-bag-1.png',
                      width: 26 * fem, height: 26.12 * fem),
                  const SizedBox(height: 6),
                  Text(
                    // labelEsq (1:424)
                    'Покупки',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'SF Pro Display',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2575 * ffem / fem,
                      letterSpacing: 0.1199999973 * fem,
                      color: iconGreyColorText,
                    ),
                  ),
                ],
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset('assets/page-1/images/wallet.png',
                      width: 26 * fem, height: 26.12 * fem),
                  const SizedBox(height: 6),
                  Text(
                    // labelEsq (1:424)
                    'Платежи',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'SF Pro Display',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2575 * ffem / fem,
                      letterSpacing: 0.1199999973 * fem,
                      color: iconGreyColorText,
                    ),
                  ),
                ],
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset('assets/page-1/images/chat.png',
                      width: 26 * fem, height: 26.12 * fem),
                  const SizedBox(height: 6),
                  Text(
                    // labelEsq (1:424)
                    'Чат',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'SF Pro Display',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2575 * ffem / fem,
                      letterSpacing: 0.1199999973 * fem,
                      color: iconGreyColorText,
                    ),
                  ),
                ],
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset('assets/page-1/images/gift.png',
                      width: 26 * fem, height: 26.12 * fem),
                  const SizedBox(height: 6),
                  Text(
                    // labelEsq (1:424)
                    'Бонусы',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'SF Pro Display',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2575 * ffem / fem,
                      letterSpacing: 0.1199999973 * fem,
                      color: iconGreyColorText,
                    ),
                  ),
                ],
              ),
              label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(AccauntPage());
                                },
                                child: GestureDetector(
                                  onTap: () => Get.back(),
                                  child: Image.asset(
                                    'assets/page-1/images/x-cell-left-common-1-icon.png',
                                    width: 7 * fem,
                                    height: 14 * fem,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10 * fem),
                              GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Text(
                                  'Профиль',
                                  style: SafeGoogleFont(
                                    'SF Pro Display',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2 * ffem / fem,
                                    letterSpacing: 0.3799999952 * fem,
                                    color: backgroundColorText,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Image.asset(
                            'assets/page-1/images/auto-group-las3.png',
                            width: 21 * fem,
                            height: 25 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: backgroundColorText,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Column(
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 38 * fem),
                        Image.asset(
                          'assets/page-1/images/mask-group.png',
                          width: 80 * fem,
                          height: 80 * fem,
                        ),
                        SizedBox(height: 18 * fem),
                        Container(
                          // titleXuq (1:583)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 3 * fem),
                          child: Text(
                            'Васильков Кирилл Александрович ',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.25 * ffem / fem,
                              letterSpacing: -0.3199999928 * fem,
                              color: bigColorText,
                            ),
                          ),
                        ),
                        SizedBox(height: 4 * fem),
                        Container(
                          // titlebuh (1:584)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 0 * fem),
                          child: Text(
                            '+7 922 123 45 67',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: 13 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2307692308 * ffem / fem,
                              letterSpacing: -0.0780000016 * fem,
                              color: iconGreyColorText,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 38 * fem),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 117 * fem,
                            height: 44 * fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // titleF3m (1:679)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 3 * fem, 4 * fem),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      style: SafeGoogleFont(
                                        'SF Pro Display',
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1 * ffem / fem,
                                        letterSpacing: -0.3199999928 * fem,
                                        color: Color(0xff00a3ff),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '1 485,67 ',
                                        ),
                                        TextSpan(
                                          text: '₽',
                                          style: SafeGoogleFont(
                                            'SF Pro Display',
                                            fontSize: 20 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1 * ffem / fem,
                                            letterSpacing: -0.3199999928 * fem,
                                            color: Color(0xff00a3ff),
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' ',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  // title5wu (1:678)
                                  'Кошелек ImPay',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'SF Pro Display',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.25 * ffem / fem,
                                    letterSpacing: -0.2399999946 * fem,
                                    color: Color(0xff8a898e),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const VerticalDivider(
                            color: Colors.black26,
                            width: 10,
                            thickness: 2,
                            // indent: 10,
                          ),
                          Container(
                            width: 171 * fem,
                            height: 44 * fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // titlesZ1 (1:676)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 4 * fem, 4 * fem),
                                  child: Text(
                                    '5 485,67 ',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'SF Pro Display',
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1 * ffem / fem,
                                      letterSpacing: -0.3199999928 * fem,
                                      color: Color(0xff00a3ff),
                                    ),
                                  ),
                                ),
                                Text(
                                  // titleB3u (1:675)
                                  'Накомленно бонусов',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'SF Pro Display',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.25 * ffem / fem,
                                    letterSpacing: -0.2399999946 * fem,
                                    color: Color(0xff8a898e),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(26.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogrouphlntuqh (FKKKBMHvv4tUUbULjhhLNT)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 10 * fem, 0 * fem),
                            width: 38 * fem,
                            height: 38 * fem,
                            child: Image.asset(
                              'assets/page-1/images/auto-group-hlnt.png',
                              width: 38 * fem,
                              height: 38 * fem,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Мои данные',
                                  style: SafeGoogleFont(
                                    'SF Pro Display',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.25 * ffem / fem,
                                    letterSpacing: -0.3199999928 * fem,
                                    color: const Color(0xff222a34),
                                  ),
                                ),
                                SizedBox(width: 175 * fem),
                                Image.asset(
                                  'assets/page-1/images/vector-34.png',
                                  width: 16 * fem,
                                  height: 16 * fem,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 6.0, left: 26, right: 26),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogrouphlntuqh (FKKKBMHvv4tUUbULjhhLNT)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 10 * fem, 0 * fem),
                            width: 38 * fem,
                            height: 38 * fem,
                            child: Image.asset(
                              'assets/page-1/images/auto-group-yplj.png',
                              width: 38 * fem,
                              height: 38 * fem,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Помощ',
                                style: SafeGoogleFont(
                                  'SF Pro Display',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.25 * ffem / fem,
                                  letterSpacing: -0.3199999928 * fem,
                                  color: Color(0xff222a34),
                                ),
                              ),
                              
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
