import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_one/screens/create_account_two_screen/create_account_two.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CreateAccountProviderController extends GetxController{

  String? nameErorr;
  String? phoneNumberErorr;
  String? emailErorr;
  String? cityErorr;
  late TextEditingController nameController;
  late TextEditingController phoneNumberController;
  late TextEditingController emailController;
  late TextEditingController cityController;
  Color buttonColor1 = Colors.transparent;
  Color buttonColor2 = const Color(0xff44515E);
  Color TextAndIconColor1 = Colors.black;
  Color TextAndIconColor2 = Colors.white;
  bool isChecked = false;
  File? image;
  File? image1;
  final imagepicker = ImagePicker();
  final _imagepicker = ImagePicker();

  Future<void> uploadImage() async{
    var pickedImage = await imagepicker.pickImage(source: ImageSource.gallery);
    if(pickedImage != null){
        image = File(pickedImage.path);
      update();
    }
    else {

    }
  }
  Future<void> uploadImageTwo() async{
    var _pickedImage = await _imagepicker.pickImage(source: ImageSource.gallery);
    if(_pickedImage != null){
        image1 = File(_pickedImage.path);
     update();
    }
    else {

    }
  }


  @override
  void onInit() {
    nameController = TextEditingController();
    phoneNumberController = TextEditingController();
    emailController = TextEditingController();
    cityController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    cityController.dispose();
    super.dispose();
    super.onInit();
  }

  void performLogin(BuildContext context) {
    if (checkData(context)) {
      apply();
    }
  }

  bool checkData(BuildContext context) {
    _controllErorrs(context);
    if (nameController.text.isNotEmpty &&
        phoneNumberController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        cityController.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  void apply() {

  }

  void _controllErorrs(BuildContext context) {
      nameErorr = nameController.text.isNotEmpty
          ? null
          : AppLocalizations.of(context)!.enter_full_name;
      phoneNumberErorr = phoneNumberController.text.isNotEmpty
          ? null
          : AppLocalizations.of(context)!.enter_phone_number;
      emailErorr = emailController.text.isNotEmpty
          ? null
          : AppLocalizations.of(context)!.enter_email;
      cityErorr = cityController.text.isNotEmpty
          ? null
          : AppLocalizations.of(context)!.enter_city;
    update();
  }

}