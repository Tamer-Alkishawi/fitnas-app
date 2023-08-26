import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:project_one/screens/resturents_screen/resturents_controller.dart';
import '../../widgets/resturent_screen_container.dart';

class ResturentsScreen extends StatefulWidget {
  const ResturentsScreen({Key? key}) : super(key: key);

  @override
  State<ResturentsScreen> createState() => _ResturentsScreenState();
}

class _ResturentsScreenState extends State<ResturentsScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResturentsController>(
      init: ResturentsController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.5,
            shadowColor: Color(0xffF8F8F8),
            title: Text(
              AppLocalizations.of(context)!.restaurants,
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
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              children: [
                const SizedBox(
                  height: 14,
                ),
                Container(
                  width: double.infinity,
                  height: 55,
                  child: TextField(
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffF8F8F8),
                        hintText: AppLocalizations.of(context)!
                            .search_for_resturent_name,
                        hintStyle: const TextStyle(
                            color: Color(0xffB5BEC8),
                            fontSize: 12,
                            fontFamily: 'Bahij',
                            letterSpacing: 0.07),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color(0xff595757),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        contentPadding: const EdgeInsets.only(
                            top: 20, bottom: 17, right: 16)),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: controller.ResturentsMenu(context).length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ResturentScreenContainer(
                            imageUrl:
                                controller.ResturentsMenu(context)[index].imageUrl!,
                            resturentName: controller.ResturentsMenu(context)[index].resturentName!,
                            resturentdescription: controller.ResturentsMenu(context)[index].resturentdescription!,
                            resturentlocation: controller.ResturentsMenu(context)[index].resturentlocation!,),
                        SizedBox(height: 10,),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
