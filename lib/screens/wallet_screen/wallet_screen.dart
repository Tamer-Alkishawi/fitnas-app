import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/add_credit_screen/add_credit_screen.dart';
import 'package:project_one/screens/wallet_screen/wallet_controller.dart';
import 'package:project_one/widgets/wallet_container.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<WalletController>(
      init: WalletController(),
      builder: (controller){
      return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          shadowColor: Color(0xffF8F8F8),
          title: Text(
            'المحفظة',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontFamily: 'Bahij',
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 22,
            ),
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 178,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              child: SvgPicture.asset('images/wallet3.svg'),
                            ),
                            SizedBox(height: 24,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'الرصيد:',
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff595757),
                                    fontFamily: 'Bahij',
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Text(
                                  '0.00',
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontFamily: 'Bahij',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(width: 4,),
                                Text(
                                  'ريال',
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontFamily: 'Bahij',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 206,
                        width: double.infinity,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 86,),
                            height: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100)),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xff8AB23B),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      100), // Set your desired radius here
                                ),
                              ),
                              onPressed: () {
                                Get.to(AddCreditScreen());
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('images/add.svg'),
                                  SizedBox(width: 12,),
                                  Text(
                                    'اضافة رصيد',
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Bahij',
                                        color: Colors.white,
                                        letterSpacing: 0.07,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 32,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset('images/half_clock.svg'),
                      SizedBox(width: 8,),
                      Text(
                        'سجل الحركات المالية',
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontFamily: 'Bahij',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.07,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32,),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: controller.walletMenu(context).length,
                    itemBuilder: (context, index) {
                    return Column(
                      children: [
                        WalletContainer(
                            svgUrl: controller.walletMenu(context)[index].svgUrl,
                            price: controller.walletMenu(context)[index].price,
                            description: controller.walletMenu(context)[index].description,
                            date: controller.walletMenu(context)[index].date,
                            dividerVisibility: controller.walletMenu(context)[index].dividerVisibility),
                        SizedBox(height: 12,),
                      ],
                    );
                  },),
                  SizedBox(height: 20,),
                ],
              ),
            )
          ],
        ),
      );
    },);
  }
}
