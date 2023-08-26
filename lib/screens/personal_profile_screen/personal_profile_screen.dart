import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/create_account_two_screen/create_account_two.dart';
import 'package:project_one/screens/personal_profile_screen/personal_profile_controller.dart';
import 'package:project_one/widgets/person_container.dart';
import '../../widgets/phone_number_formating.dart';
import '../../widgets/slider_container.dart';

class PersonalProfileScreen extends StatefulWidget {
  const PersonalProfileScreen({Key? key}) : super(key: key);

  @override
  State<PersonalProfileScreen> createState() => _PersonalProfileScreenState();
}

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    builder: (BuildContext context) {
      return ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 90,
              height: 6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffD9D9D9)),
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              AppLocalizations.of(context)!.change_profile_picture,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Bahij',
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PersonContainer(imageUrl: 'images/person1.png',
                        tick: false,
                      ),
                      PersonContainer(imageUrl: 'images/person2.png',tick: false,),
                      PersonContainer(imageUrl: 'images/person3.png',tick: false,),
                      PersonContainer(imageUrl: 'images/person.png',tick: true,),
                    ],
                  ),
                  SizedBox(height: 24,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PersonContainer(imageUrl: 'images/person4.png',tick: false,),
                      PersonContainer(imageUrl: 'images/person5.png',tick: false,),
                      PersonContainer(imageUrl: 'images/person6.png',tick: false,),
                      PersonContainer(imageUrl: 'images/person7.png',tick: false,),
                    ],
                  ),
                  SizedBox(height: 24,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PersonContainer(imageUrl: 'images/person8.png',tick: false,),
                      PersonContainer(imageUrl: 'images/person9.png',tick: false,),
                      PersonContainer(imageUrl: 'images/person10.png',tick: false,),
                      PersonContainer(imageUrl: 'images/person11.png',tick: false,),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff8AB23B),
                      ),
                      onPressed: () {
                        Get.back();
                      },
                      child: Container(
                        child: Text(
                          AppLocalizations.of(context)!.save,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'Bahij',
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            )

          ],
        ),
      );
    },
  );
}

class _PersonalProfileScreenState extends State<PersonalProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PersonalProfileController>(
      init: PersonalProfileController(),
      builder: (controller){
      return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          shadowColor: Color(0xffF8F8F8),
          title: Text(
            AppLocalizations.of(context)!.personal_profile  ,
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
        body: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      color: const Color(0xffF8F8F8),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                controller.ButtonColor1 = Colors.transparent;
                                controller.ButtonColor2 = const Color(0xff44515E);
                                controller.TextColor2 = Colors.white;
                                controller.TextColor1 = Colors.black;
                                controller.widgetVisible = true;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                primary: controller.ButtonColor2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(23),
                                ),
                                elevation: 0),
                            child: Text(
                              AppLocalizations.of(context)!.basic_information,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w500,
                                color: controller.TextColor2,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                controller.ButtonColor1 = const Color(0xff44515E);
                                controller.ButtonColor2 = Colors.transparent;
                                controller.TextColor1 = Colors.white;
                                controller.TextColor2 = Colors.black;
                                controller.widgetVisible = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: controller.ButtonColor1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(23),
                              ),
                              elevation: 0,
                            ),
                            child: Text(
                              AppLocalizations.of(context)!.other,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Bahij',
                                fontWeight: FontWeight.w500,
                                color: controller.TextColor1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                controller.widgetVisible
                    ? Column(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 28,
                          ),
                          Container(
                            width: 106,
                            height: 135,
                            child: GestureDetector(
                                onTap: (){
                                  _showBottomSheet(context);
                                },
                                child: Image.asset('images/person_image.png')),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.full_name,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Bahij',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            child: TextField(
                              controller: controller.nameController(context),
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color(0xff595757),
                                  fontSize: 12,
                                  fontFamily: 'Bahij',
                                  letterSpacing: 0.07,
                                  fontWeight: FontWeight.w700),
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                errorText: controller.nameErorr,
                                filled: true,
                                fillColor: const Color(0xffF8F8F8),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 16,
                                  horizontal: 15,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.phone_number,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Bahij',
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            child: TextField(
                              controller: controller.phoneNumberController,
                              keyboardType: TextInputType.phone,
                              textAlign: TextAlign.start,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                PhoneNumberFormatter(),
                              ],
                              style: TextStyle(
                                color: Color(0xff595757),
                                fontSize: 12,
                                fontFamily: 'Bahij',
                                letterSpacing: 2,
                                fontWeight: FontWeight.w700,
                              ),
                              decoration: InputDecoration(
                                suffixIcon: Container(
                                  padding: EdgeInsets.only(left: 16, right: 16),
                                  width: 100,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.black,
                                        size: 16,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 24,
                                        width: 24,
                                        child: const Image(
                                          image: AssetImage(
                                              'images/saudi arabia.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                errorText: controller.phoneNumberErorr,
                                filled: true,
                                fillColor: const Color(0xffF8F8F8),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding: const EdgeInsets.only(
                                    left: 16, top: 15, bottom: 16, right: 14),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.email,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Bahij',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                AppLocalizations.of(context)!.optional,
                                style: const TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Bahij',
                                    color: Color(0xffA3A2B2),
                                    letterSpacing: 0.07),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xffF8F8F8),
                                hintText:
                                AppLocalizations.of(context)!.please_email,
                                hintStyle: const TextStyle(
                                    color: Color(0xffB5BEC8),
                                    fontSize: 12,
                                    fontFamily: 'Bahij',
                                    letterSpacing: 0.07),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 16,
                                  horizontal: 15,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 88,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff000000)
                                  .withOpacity(0.08),
                              spreadRadius: 0,
                              blurRadius: 50,
                              offset: const Offset(0, 0),
                            ),
                          ],
                        ),
                        padding:
                        const EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: Container(
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xff8AB23B),
                              ),
                              onPressed: () {},
                              child: Container(
                                child: Text(
                                  AppLocalizations.of(context)!.update_data,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Bahij',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
                    : Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 32,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.gender,
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Bahij',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.07,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 45,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: const Color(0xffF8F8F8),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          controller.buttonColor1 = Colors.transparent;
                                          controller.buttonColor2 = const Color(0xff44515E);
                                          controller.TextAndIconColor2 = Colors.white;
                                          controller.TextAndIconColor1 = Colors.black;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                          primary: controller.buttonColor2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(23),
                                          ),
                                          elevation: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.male_outlined,
                                            color: controller.TextAndIconColor2,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            AppLocalizations.of(context)!.male,
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Bahij',
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.07,
                                              color: controller.TextAndIconColor2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          controller.buttonColor1 = const Color(0xff44515E);
                                          controller.buttonColor2 = Colors.transparent;
                                          controller.TextAndIconColor1 = Colors.white;
                                          controller.TextAndIconColor2 = Colors.black;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: controller.buttonColor1,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(23),
                                        ),
                                        elevation: 0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.female_outlined,
                                            color: controller.TextAndIconColor1,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            AppLocalizations.of(context)!.female,
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Bahij',
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.07,
                                              color: controller.TextAndIconColor1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.date_of_birth,
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Bahij',
                                      color: Colors.black,
                                      letterSpacing: 0.07),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              textAlign: TextAlign.start,
                              controller: controller.dateController,
                              decoration: InputDecoration(
                                errorText: controller.dateErorr,
                                suffixIcon: IconButton(
                                  icon: const Icon(
                                    Icons.calendar_month_outlined,
                                    size: 20,
                                    color: Color(0xff595757),
                                  ),
                                  onPressed: () {
                                    controller.selectDate(context);
                                  },
                                ),
                                filled: true,
                                fillColor: const Color(0xffF8F8F8),
                                hintText: AppLocalizations.of(context)!
                                    .please_enter_your_birth_date,
                                hintStyle: const TextStyle(
                                    color: Color(0xffA1A1A1),
                                    fontSize: 12,
                                    fontFamily: 'Bahij',
                                    letterSpacing: 0.07),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 16,
                                  horizontal: 15,
                                ),
                              ),
                              readOnly: true,
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Column(
                              children: [
                                SliderContainer(
                                  title: AppLocalizations.of(context)!.height,
                                  ButtonTitle:
                                  AppLocalizations.of(context)!.centimeters,
                                  value: controller.value,
                                  showDescription: true,
                                ),
                                Container(
                                  height: 80,
                                  child: PageView.builder(
                                    controller: controller.pageController,
                                    itemCount: controller.tickCount,
                                    onPageChanged: (int index) {
                                      setState(() {
                                        controller.selectedNumber2 = index;
                                      });
                                    },
                                    itemBuilder: (context, index) {
                                      final value = controller.minValue +
                                          (controller.maxValue - controller.minValue) *
                                              (index / (controller.tickCount - 1));
                                      List<Widget> lines = [];
                                      for (int i = 0;
                                      i < controller.linesBetweenNumbers;
                                      i++) {
                                        lines.add(
                                          Container(
                                            width: 1,
                                            // Width of small lines
                                            height: controller.smallLineLength,
                                            // Length of small lines
                                            color: Colors.black,
                                          ),
                                        );
                                        if (i < controller.linesBetweenNumbers - 1) {}
                                      }
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            controller.selectedNumber2 = index;
                                            controller.pageController.animateToPage(
                                              index,
                                              duration: const Duration(
                                                  milliseconds: 20),
                                              curve: Curves.easeInOut,
                                            );
                                          });
                                        },
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: lines,
                                            ),
                                            Container(
                                              width: 1, // Increased line width
                                              height: 20,
                                              color: Colors.black,
                                            ),
                                            Text(
                                              value.toStringAsFixed(0),
                                              style: TextStyle(
                                                fontSize: 30,
                                                color: index == controller.selectedNumber2
                                                    ? Colors.black
                                                    : Colors.grey,
                                                fontWeight:
                                                index == controller.selectedNumber2
                                                    ? FontWeight.bold
                                                    : FontWeight.normal,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Column(
                              children: [
                                SliderContainer(
                                  title: AppLocalizations.of(context)!.weight,
                                  ButtonTitle:
                                  AppLocalizations.of(context)!.kilogram,
                                  value: controller.value,
                                  showDescription: true,
                                ),
                                Center(
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    child: ShaderMask(
                                      shaderCallback: (Rect bounds) {
                                        return controller.gradient.createShader(bounds);
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 0),
                                        child: PageView.builder(
                                          controller: controller.numberPageController,
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 100,
                                          onPageChanged: (int page) {
                                            setState(() {
                                              controller.selectedNumber1 = page + 1;
                                            });
                                          },
                                          itemBuilder:
                                              (BuildContext context, int index) {
                                            final number = index + 1;

                                            return Row(
                                              children: [
                                                Expanded(
                                                  child: AnimatedContainer(
                                                    alignment: Alignment.center,
                                                    duration: const Duration(
                                                        milliseconds: 1000),
                                                    child: Text(
                                                      number.toString(),
                                                      style: number ==
                                                          controller.selectedNumber1
                                                          ? controller.selectedTextStyle
                                                          : controller.unselectedTextStyle,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Image(
                                    image: AssetImage('images/Polygon 2.png'))
                              ],
                            ),
                            const SizedBox(
                              height: 55,
                            ),
                          ],
                        )
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 88,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color:
                              const Color(0xff000000).withOpacity(0.08),
                              spreadRadius: 0,
                              blurRadius: 50,
                              offset: const Offset(0, 0),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: Container(
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xff8AB23B),
                              ),
                              onPressed: (){controller.performLogin(context);},
                              child: Container(
                                child: Text(
                                  AppLocalizations.of(context)!.update_data,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Bahij',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    },);
  }

}
