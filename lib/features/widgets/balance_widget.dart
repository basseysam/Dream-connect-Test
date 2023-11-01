import 'package:dreamconnect/constants/navigators/navigators.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';
import '../../constants/custom_widget.dart';
import '../../model/balance_model.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({
    super.key,
    required List<BalanceModel> balance,
    required this.active,
    required this.index
  }) : _balance = balance;

  final List<BalanceModel> _balance;
  final bool active;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, Routes.transferScreen);
      },
      child: Container(
        margin: EdgeInsets.only(
            right: index == _balance.length - 1 ? 0 : 20, bottom: 20),
        decoration: BoxDecoration(
          image: active
              ? const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/icons/bg_two.png'))
              : null,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xfF5988F8).withOpacity(0.2),
              blurRadius: 7,
              offset: const Offset(0, 4.0),
              spreadRadius: 0,
            )
          ],
          borderRadius: BorderRadius.circular(33),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20.0, vertical: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _balance[index].title,
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    color:
                    active ? Colors.white : AppColors.textColor,
                    fontWeight: FontWeight.w700),
              ),
              const Gap(22),
              Text(
                '₦${CustomWidget().withComma(_balance[index].amount)}',
                style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color:
                    active ? Colors.white : AppColors.textColor,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}