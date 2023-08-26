import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_one/models/notification_menu.dart';

class NotificationController extends GetxController {
  List<NotificationMenuModel> notificationMenu(BuildContext context) {
    List<NotificationMenuModel> votificationMenuList = [
      new NotificationMenuModel(
        'images/notification1.svg',
        'اشتراك مكتمل',
        'تهانينا ، تم استلام اشتراك مطعم العمدة بنجاح ، يمكنك الان تقييم المطعم لمصداقية التعامل.',
        'اليوم 19:10',
        false,
      ),
      new NotificationMenuModel(
        'images/notification2.svg',
        'طلب قيد التنفيذ',
        'تم الاشتراك  ببحج الكوتش الملكي من مطعم العمدة بنجاح ، يمكنك الان الاطلاع على تفاصيل الاشتراك.',
        'اليوم 19:10',
        false,
      ),
      new NotificationMenuModel(
        'images/notification3.svg',
        'تحديث التطبيق',
        'تم تحديث نسخة التطبيق الى اصدار 12.1 يرجى التحديث..',
        'اليوم 19:10',
        false,
      ),
      new NotificationMenuModel(
        'images/notification1.svg',
        'اشتراك مكتمل',
        'تهانينا ، تم استلام اشتراك مطعم العمدة بنجاح ، يمكنك الان تقييم المطعم لمصداقية التعامل.',
        'اليوم 19:10',
        false,
      ),
      new NotificationMenuModel(
        'images/notification2.svg',
        'طلب قيد التنفيذ',
        'تم الاشتراك  ببحج الكوتش الملكي من مطعم العمدة بنجاح ، يمكنك الان الاطلاع على تفاصيل الاشتراك.',
        'اليوم 19:10',
        true,
      ),
    ];

    return votificationMenuList;
  }
}
