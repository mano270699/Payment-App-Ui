import 'package:flutter/material.dart';
import 'package:paymentapp/component/colors.dart';
import 'package:paymentapp/screens/payment_page.dart';
import 'package:paymentapp/widgets/button_Icon.dart';
import 'package:paymentapp/widgets/larg_button.dart';
import 'package:paymentapp/widgets/text_sized.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        height: h,
        child: Stack(
          children: [
            _headSection(),
            _listBills(),
            _payButton(),
          ],
        ),
      ),
    );
  }

  Widget _headSection() {
    return Container(
      height: MediaQuery.of(context).size.height * (1.6 / 4),
      child: Stack(
        children: [
          _mainBackground(),
          _curveImageContainer(),
          _headTitle(),
          _buttonContainer(),
        ],
      ),
    );
  }

  Widget _mainBackground() {
    return Positioned(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/background.png'),
          ),
        ),
      ),
    );
  }

  Widget _curveImageContainer() {
    return Positioned(
        left: 0,
        right: -2,
        bottom: 0,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/curve.png'))),
        ));
  }

  Widget _buttonContainer() {
    return Positioned(
        right: 50,
        bottom: 1,
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet<dynamic>(
                isScrollControlled: true,
                barrierColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: MediaQuery.of(context).size.height - 250,
                    child: Stack(
                      children: [
                        Positioned(
                            bottom: 0,
                            child: Container(
                              color: Color(0xFFeef1f4).withOpacity(0.7),
                              height: MediaQuery.of(context).size.height - 310,
                              width: MediaQuery.of(context).size.width,
                            )),
                        Positioned(
                          top: 0,
                          right: 45,
                          child: Container(
                            padding: const EdgeInsets.only(top: 5, bottom: 25),
                            width: 60,
                            height: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColor.mainColor,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ButtonIcons(
                                  icon: Icons.cancel,
                                  iconColor: AppColor.mainColor,
                                  backgroundColor: Colors.white,
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                ButtonIcons(
                                  icon: Icons.add,
                                  iconColor: AppColor.mainColor,
                                  backgroundColor: Colors.white,
                                  textColor: Colors.white,
                                  text: 'Add Bills',
                                  onTap: () {},
                                ),
                                ButtonIcons(
                                  icon: Icons.history,
                                  iconColor: AppColor.mainColor,
                                  backgroundColor: Colors.white,
                                  textColor: Colors.white,
                                  text: 'History',
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                });
          },
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/lines.png')),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    offset: Offset(0, 1),
                    color: Color(0xFF11324d).withOpacity(0.2),
                  )
                ]),
          ),
        ));
  }

  Widget _headTitle() {
    return Positioned(
        top: 120,
        left: 50,
        child: Text(
          "My Bills",
          style: TextStyle(shadows: [
            Shadow(blurRadius: 15, offset: Offset(1, 0), color: Colors.white)
          ], fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }

  Widget _listBills() {
    return Positioned(
        top: MediaQuery.of(context).size.height * (1.6 / 4),
        left: 0,
        right: 0,
        bottom: 0,
        child: MediaQuery.removePadding(
          context: context,
          child: ListView.separated(
              itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(right: 20),
                    height: 130,
                    width: MediaQuery.of(context).size.width - 20,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFd8be0),
                            offset: Offset(1, 1),
                            blurRadius: 20.0,
                            spreadRadius: 10,
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: Container(
                      margin: const EdgeInsets.only(top: 10, left: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.red, width: 2),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/images/brand1.png')),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'KenGas Power',
                                        style: TextStyle(
                                            color: AppColor.mainColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'ID:96541234',
                                        style: TextStyle(
                                          color: AppColor.idColor,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedText(
                                color: AppColor.green,
                                text: 'Auto pay on 24th may 18',
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    width: 85,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: AppColor.selectBackground,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Center(
                                      child: Text(
                                        'Select',
                                        style: TextStyle(
                                            color: AppColor.selectColor,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '\$640.00',
                                        style: TextStyle(
                                            color: AppColor.mainColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w900),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        'Due in 3 days',
                                        style: TextStyle(
                                            color: AppColor.idColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                width: 5,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: AppColor.halfOval,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10))),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
              itemCount: 2),
        ));
  }

  Widget _payButton() {
    return Positioned(
        bottom: 20,
        child: LargButton(
          text: 'Pay all bill',
          backgroundColor: AppColor.mainColor,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PaymentPage()));
          },
          textColor: AppColor.backGroundColor,
        ));
  }
}
