import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:pokedex/core/app_colors.dart';

class InputSearch extends StatefulWidget {
  final Function(String) onTextChange;
  final RxString search;

  const InputSearch({
    Key key,
    @required this.onTextChange,
    @required this.search,
  }) : super(key: key);

  @override
  _InputSearchState createState() => _InputSearchState();
}

class _InputSearchState extends State<InputSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          const BoxShadow(
            color: Colors.grey,
            blurRadius: 8,
            spreadRadius: -3,
          ),
          const BoxShadow(
            color: Colors.white,
          )
        ],
      ),
      child: TextField(
        onChanged: widget.onTextChange,
        decoration: InputDecoration(
          hintText: "Digite o nome do pokémon...",
          suffixIcon: Obx(
            () => FaIcon(
              FontAwesomeIcons.search,
              size: 25,
              color: widget.search.value.length > 0
                  ? AppColors.secondary
                  : AppColors.greyLight,
            ),
          ),
          suffixIconConstraints: BoxConstraints(
            minHeight: 0,
            minWidth: 0,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }
}
