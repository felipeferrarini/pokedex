import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/core/app_images.dart';
import 'package:pokedex/core/app_text_styles.dart';
import 'package:pokedex/screens/home/home.controller.dart';
import 'package:pokedex/screens/home/widgets/customButton.dart';
import 'package:pokedex/screens/home/widgets/inputSearch.dart';

class HomePage extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          decoration: BoxDecoration(color: Colors.red),
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 65),
                child: Image.asset(
                  AppImages.logo,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.centerRight,
                child: Image.asset(AppImages.coloredBals),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 46,
                  left: 16,
                  right: 16,
                  bottom: 27,
                ),
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.grey,
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      blurRadius: 2,
                      spreadRadius: -1,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Conheça a Pokédex",
                      style: AppTextStyles.title,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Utilize a pokédex para encontrar mais informações sobre os seus pokémons.",
                      style: AppTextStyles.subTitle,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InputSearch(
                      onTextChange: controller.handleChangeSearch,
                      search: controller.search,
                    ),
                    SizedBox(
                      height: 77,
                    ),
                    Obx(
                      () => CustomButton.search(
                        onTap: () {},
                        title: "PESQUISAR",
                        isDisabled: controller.search.value.length == 0,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomButton.favorite(
                      onTap: () {},
                      title: "PESQUISAR",
                      isDisabled: false,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
