
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';
import '../../model/custom_list.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({
    super.key,
    required this.width,
    required this.index,
  });

  final double width;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: transaction[index].color,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(child: SvgPicture.asset('assets/icons/wallet.svg')),
          )),
      title: Text(
        transaction[index].title,
        style: GoogleFonts.montserrat(
            fontSize: 16,
            color: AppColors.textColor,
            fontWeight: FontWeight.w400),
      ),
      subtitle: Text(
        transaction[index].date,
        style: GoogleFonts.montserrat(
            fontSize: 12,
            color: const Color(0xFFBFBFBF),
            fontWeight: FontWeight.w400),
      ),
      trailing: SizedBox(
        width: width * .22,
        child: Row(
          children: [
            Text(
              transaction[index].amount,
              style: GoogleFonts.montserrat(
                  fontSize: 14,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w400),
            ),
            const Gap(5),
            const Icon(Icons.arrow_forward_ios, size: 12, color: Color(0xFFC7C7C7),)
          ],
        ),
      ),
    );
  }
}