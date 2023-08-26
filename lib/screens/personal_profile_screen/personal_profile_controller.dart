import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:project_one/screens/create_account_two_screen/create_account_two.dart';

class PersonalProfileController extends GetxController{

  nameController(BuildContext context){
    TextEditingController nameController = TextEditingController(text: AppLocalizations.of(context)!.salah_eldin);
    return nameController;
  }
  Color ButtonColor1 = Colors.transparent;
  Color ButtonColor2 = const Color(0xff44515E);
  Color TextColor1 = Colors.black;
  Color TextColor2 = Colors.white;
  bool widgetVisible = true;
  Color buttonColor1 = Colors.transparent;
  Color buttonColor2 = const Color(0xff44515E);
  Color TextAndIconColor1 = Colors.black;
  Color TextAndIconColor2 = Colors.white;
  double value = 1.0;
  TextEditingController dateController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController(text: '11 123 4125');
  String? nameErorr;
  String? phoneNumberErorr;
  String? dateErorr;
  int selectedNumber1 = 60;
  final PageController numberPageController = PageController(
    viewportFraction: 0.2,
    initialPage: 59,
  );
  final double minValue = 0;
  final double maxValue = 200;
  final int tickCount = 200;
  final int linesBetweenNumbers = 5;
  final double smallLineLength = 25.0;

  final PageController pageController = PageController(
    viewportFraction: 1 / 3,
    initialPage: 169,
  );
  int selectedNumber2 = 169;

  final gradient = LinearGradient(
    colors: [
      const Color(0xff44515E),
      const Color(0xff44515E).withOpacity(0.3),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  final TextStyle selectedTextStyle = const TextStyle(
    fontSize: 32,
    color: Color(0xff44515E),
    fontWeight: FontWeight.bold,
  );

  final TextStyle unselectedTextStyle = const TextStyle(
    fontSize: 16,
    color: Colors.grey,
    fontWeight: FontWeight.normal,
  );



  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate:
      DateTime.now().subtract(const Duration(days: (18 * 365) + 4)),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
        dateController.text = DateFormat('yyyy-MM-dd').format(picked);
      update();
    }
  }

  @override
  void onInit() {
    dateController= TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    dateController.dispose();
    numberPageController.dispose();
    pageController.dispose();
    super.dispose();
  }


  void performLogin(BuildContext context) {
    if (checkData(context)) {
      login();
    }
  }

  bool checkData(BuildContext context) {
    _controllErorrs(context);
    if (nameController(context).text.isNotEmpty &&
        phoneNumberController.text.isNotEmpty&&
        dateController.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  void login() {
    Get.to(CreateAccountTwo());
  }

  void _controllErorrs(BuildContext context) {
      nameErorr = nameController(context).text.isNotEmpty
          ? null
          : AppLocalizations.of(context)!.enter_full_name;
      phoneNumberErorr = phoneNumberController.text.isNotEmpty
          ? null
          : AppLocalizations.of(context)!.enter_phone_number;
      dateErorr = dateController.text.isNotEmpty
          ? null
          :'أدخل التاريخ';
      update();
  }


}