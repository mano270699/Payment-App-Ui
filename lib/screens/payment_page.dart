import 'package:flutter/material.dart';
import 'package:paymentapp/component/colors.dart';
import 'package:paymentapp/widgets/button_Icon.dart';
import 'package:paymentapp/widgets/larg_button.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
        height: h,
        width: w,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/paymentbackground.png'),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: h * 0.14,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/images/success.png'),
                ),
              ),
            ),
            Text(
              'Success !',
              style: TextStyle(
                  color: AppColor.mainColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'Payment is completed for 2 bills',
              style: TextStyle(
                color: AppColor.idColor,
                fontSize: 20,
              ),
            ),
            SizedBox(height: h * 0.045),
            Container(
                height: 160,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.withOpacity(0.50),
                    )),
                child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) => Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                _buildSuccessPayment(),
                              ],
                            ),
                          ),
                      separatorBuilder: (_, index) {
                        return Divider(
                          thickness: 2,
                          color: Colors.grey.withOpacity(0.5),
                        );
                      },
                      itemCount: 3),
                )),
            SizedBox(height: h * 0.025),
            Text(
              'Total amount',
              style: TextStyle(
                color: AppColor.idColor,
                fontSize: 14,
              ),
            ),
            Text(
              '\$1280.00',
              style: TextStyle(
                  color: AppColor.mainColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w900),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: h * 0.160),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonIcons(
                  icon: Icons.share,
                  iconColor: Colors.white,
                  backgroundColor: AppColor.mainColor,
                  textColor: AppColor.mainColor,
                  text: 'Share',
                  onTap: () {},
                ),
                ButtonIcons(
                  icon: Icons.print,
                  iconColor: Colors.white,
                  backgroundColor: AppColor.mainColor,
                  textColor: AppColor.mainColor,
                  text: 'Print',
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(height: h * 0.015),
            LargButton(
              onTap: () {},
              text: 'Done',
              isBorder: true,
              textColor: AppColor.mainColor,
              backgroundColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSuccessPayment() => Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColor.green,
            radius: 25,
            child: Icon(
              Icons.check,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'KenGas Power',
                style: TextStyle(
                  color: AppColor.mainColor,
                  fontSize: 18,
                ),
              ),
              Row(
                children: [
                  Text(
                    'ID:96541234',
                    style: TextStyle(
                      color: AppColor.idColor,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    '\$640.00',
                    style: TextStyle(
                        color: AppColor.mainColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w900),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          )
        ],
      );
}
