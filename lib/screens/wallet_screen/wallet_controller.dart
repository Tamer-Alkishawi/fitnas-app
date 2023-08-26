import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_one/models/wallet_menu.dart';

class WalletController extends GetxController{

  String balance= '0.00';

  List<WalletMenuModel> walletMenu(BuildContext context){
    List<WalletMenuModel> walletMenuList=[
      new WalletMenuModel('images/deposit.svg', '100.00', 'ايداع من بطاقة الفيزا ', 'الاثنين ، 16 فبراير 2022', true),
      new WalletMenuModel('images/withdraw.svg', '100.00-', 'سحب من الباقة الملكية - مطعم حيفا', 'السبت ، 10 مايو 2022', true),
      new WalletMenuModel('images/deposit.svg', '100.00', 'ايداع من بطاقة الفيزا ', 'الاثنين ، 16 فبراير 2022', true),
      new WalletMenuModel('images/withdraw.svg', '100.00-', 'سحب من الباقة الملكية - مطعم حيفا', 'السبت ، 10 مايو 2022', true),
      new WalletMenuModel('images/deposit.svg', '100.00', 'ايداع من بطاقة الفيزا ', 'الاثنين ، 16 فبراير 2022', false),

    ];
    return walletMenuList;
}

}