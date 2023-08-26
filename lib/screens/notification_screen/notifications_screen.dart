import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/notification_screen/notification_controller.dart';
import 'package:project_one/widgets/notification_container.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificationController>(
      init: NotificationController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.5,
            shadowColor: Color(0xffF8F8F8),
            title: Text(
              'الاشعارات',
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
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: controller.notificationMenu(context).length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        NotificationContainer(
                          svgUrl: controller
                              .notificationMenu(context)[index]
                              .svgUrl,
                          title:
                              controller.notificationMenu(context)[index].title,
                          description: controller
                              .notificationMenu(context)[index]
                              .description,
                          date:
                              controller.notificationMenu(context)[index].date,
                          bold:
                              controller.notificationMenu(context)[index].bold,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
