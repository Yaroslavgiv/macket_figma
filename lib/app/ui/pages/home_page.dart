import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/utils.dart';
import 'accaunt_page.dart';
import 'qr_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.height;
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    int _currentIndex = 0;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          backgroundColor: backgroundColorScaffold,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Column(
                  children: [
                    Image.asset('assets/page-1/images/union.png',
                        width: 26, height: 26.12),
                    SizedBox(height: 6.h),
                    Text(
                      // labelEsq (1:424)
                      'Главная',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'SF Pro Display',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        height: 1.2575.h,
                        letterSpacing: 0.1199999973 * fem,
                        color: iconGreyColorText,
                      ),
                    ),
                  ],
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      Image.asset('assets/page-1/images/shopping-bag-1.png',
                          width: 26.w, height: 26.12.h),
                      SizedBox(height: 6.h),
                      Text(
                        // labelEsq (1:424)
                        'Покупки',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'SF Pro Display',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          height: 1.2575.h,
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
                          width: 26.w, height: 26.12.h),
                      SizedBox(height: 6.h),
                      Text(
                        // labelEsq (1:424)
                        'Платежи',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'SF Pro Display',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          height: 1.2575.h,
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
                          width: 26.w, height: 26.12.h),
                      SizedBox(height: 6.h),
                      Text(
                        // labelEsq (1:424)
                        'Чат',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'SF Pro Display',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          height: 1.2575.h,
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
                          width: 26.w, height: 26.12.h),
                      SizedBox(height: 6.h),
                      Text(
                        // labelEsq (1:424)
                        'Бонусы',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'SF Pro Display',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          height: 1.2575.h,
                          letterSpacing: 0.1199999973 * fem,
                          color: iconGreyColorText,
                        ),
                      ),
                    ],
                  ),
                  label: ''),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          body: Container(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(18.0.sp),
                    child: Column(
                      children: [
                        Row(
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
                                    child: Image.asset(
                                      'assets/page-1/images/button-N31.png',
                                      width: 34.w,
                                      height: 34.h,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(AccauntPage());
                                    },
                                    child: Text(
                                      'Кирилл',
                                      style: SafeGoogleFont(
                                        'SF Pro Display',
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2.h,
                                        letterSpacing: 0.3799999952 * fem,
                                        color: backgroundColorText,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              'assets/page-1/images/bell-2.png',
                              width: 21.w,
                              height: 25.h,
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Баланс кошелька ImPay',
                              style: SafeGoogleFont(
                                'SF Pro Display',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                height: 1.25.h,
                                letterSpacing: -0.3199999928 * fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                            Text(
                              // DDR (I1:402;1:102)
                              '5 485,67 ₽',
                              textAlign: TextAlign.right,
                              style: SafeGoogleFont(
                                'SF Pro Display',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                height: 1.25.h,
                                letterSpacing: -0.3199999928 * fem,
                                color: backgroundColorText,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        TextFormField(
                          onFieldSubmitted: (_) {},
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: fillColor,
                            hintText: 'Поиск',
                            hintStyle: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.3333333333.h,
                              letterSpacing: -0.2399999946 * fem,
                              color: backgroundColorText,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                'assets/page-1/images/x-base-cell-content-right.png',
                                cacheWidth: 22,
                                cacheHeight: 22,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0.r)),
                              borderSide: BorderSide(color: fillColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0.r)),
                              borderSide: BorderSide(color: fillColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: backgroundColorText,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                          topRight: Radius.circular(12.r),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0.sp),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 0,
                                child: Container(
                                  padding: EdgeInsets.all(26.0.sp),
                                  child: Text(
                                    'ИЗБРАННОЕ',
                                    style: SafeGoogleFont(
                                      'SF Pro Display',
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2857142857.h,
                                      letterSpacing: 1.sp,
                                      color: smollColorText,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 80.w,
                                      height: 90.h,
                                      padding: EdgeInsets.all(8.0.sp),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14.sp),
                                        color: backgroundColorText,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.8),
                                            spreadRadius: 1,
                                            blurRadius: 50,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'assets/page-1/images/frame-242.png',
                                            width: 80.w,
                                            height: 24.h,
                                          ),
                                          Text(
                                            'Мои платежи',
                                            style: SafeGoogleFont(
                                              'SF Pro Display',
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2727272727.h,
                                              letterSpacing: 0.0599999987 * fem,
                                              color: bigColorText,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 80.w,
                                      height: 90.h,
                                      padding: EdgeInsets.all(8.0.sp),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14.sp),
                                        color: backgroundColorText,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.8),
                                            spreadRadius: 1,
                                            blurRadius: 50,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'assets/page-1/images/frame-242-orf.png',
                                            width: 24.w,
                                            height: 24.h,
                                          ),
                                          Text(
                                            'Билеты',
                                            style: SafeGoogleFont(
                                              'SF Pro Display',
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2727272727.h,
                                              letterSpacing: 0.0599999987 * fem,
                                              color: bigColorText,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 80.w,
                                      height: 90.h,
                                      padding: EdgeInsets.all(8.0.sp),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14.sp),
                                        color: backgroundColorText,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.8),
                                            spreadRadius: 1,
                                            blurRadius: 50,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'assets/page-1/images/frame-242-15R.png',
                                            width: 24.w,
                                            height: 24.h,
                                          ),
                                          Text(
                                            'Карты лояльности',
                                            style: SafeGoogleFont(
                                              'SF Pro Display',
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2727272727.h,
                                              letterSpacing: 0.0599999987 * fem,
                                              color: bigColorText,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(QRViewExample());
                                      },
                                      child: Container(
                                        width: 80.w,
                                        height: 90.h,
                                        padding: EdgeInsets.all(8.0.sp),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14.sp),
                                          color: backgroundColorText,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.8),
                                              spreadRadius: 1,
                                              blurRadius: 50,
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Image.asset(
                                              'assets/page-1/images/frame-242-hk3.png',
                                              width: 24.w,
                                              height: 24.h,
                                            ),
                                            Text(
                                              'QR-оплата',
                                              style: SafeGoogleFont(
                                                'SF Pro Display',
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2727272727.h,
                                                letterSpacing: 0.0599999987 * fem,
                                                color: bigColorText,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 0,
                                child: Container(
                                  padding: EdgeInsets.all(26.0.sp),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'НОВОСТИ',
                                        style: SafeGoogleFont(
                                          'SF Pro Display',
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2857142857.h,
                                          letterSpacing: 1 * fem,
                                          color: smollColorText,
                                        ),
                                      ),
                                      Image.asset(
                                        'assets/page-1/images/vector-34.png',
                                        width: 16.w,
                                        height: 16.h,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 0,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 220.w,
                                        height: 220.h,
                                        decoration: BoxDecoration(
                                          color: Colors.orange.shade400,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20.0.sp),
                                          ),
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/page-1/images/mask-group3232.png'),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 16.0.sp),
                                          child: Align(
                                            // labelfcs (I1:405;1:232;1:240)
                                            alignment: Alignment.bottomCenter,
                                            child: SizedBox(
                                              child: Container(
                                                constraints: BoxConstraints(
                                                  maxWidth: 156.w,
                                                ),
                                                child: Text(
                                                  'Суперакция от Веккер Закажи окно до конца сентября и получи мегаскидку плюсь бонусы на счёт.',
                                                  style: SafeGoogleFont(
                                                    'SF Pro Display',
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2857142857.h,
                                                    letterSpacing:
                                                        -0.1539999992 * fem,
                                                    color: backgroundColorText,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 16.sp),
                                      Container(
                                        width: 220.w,
                                        height: 220.h,
                                        decoration: BoxDecoration(
                                          color: Colors.orange.shade400,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20.0.sp),
                                          ),
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/page-1/images/mask-group3232.png'),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 16.0.sp),
                                          child: Align(
                                            // labelfcs (I1:405;1:232;1:240)
                                            alignment: Alignment.bottomCenter,
                                            child: SizedBox(
                                              child: Container(
                                                constraints: BoxConstraints(
                                                  maxWidth: 156.w,
                                                ),
                                                child: Text(
                                                  'При заказе одной кружки кофе Вы получите 20 бонусов на счет.',
                                                  style: SafeGoogleFont(
                                                    'SF Pro Display',
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2857142857.h,
                                                    letterSpacing:
                                                        -0.1539999992 * fem,
                                                    color: backgroundColorText,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 16.w),
                                      Container(
                                        width: 220.w,
                                        height: 220.h,
                                        decoration: BoxDecoration(
                                          color: Colors.orange.shade400,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20.0.sp),
                                          ),
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/page-1/images/mask-group3232.png'),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 16.0.sp),
                                          child: Align(
                                            // labelfcs (I1:405;1:232;1:240)
                                            alignment: Alignment.bottomCenter,
                                            child: SizedBox(
                                              child: Container(
                                                constraints: BoxConstraints(
                                                  maxWidth: 156.w,
                                                ),
                                                child: Text(
                                                  'Суперакция от Веккер Закажи окно до конца сентября и получи мегаскидку плюсь бонусы на счёт.',
                                                  style: SafeGoogleFont(
                                                    'SF Pro Display',
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2857142857.h,
                                                    letterSpacing:
                                                        -0.1539999992 * fem,
                                                    color: backgroundColorText,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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
      },
    );
  }
}
