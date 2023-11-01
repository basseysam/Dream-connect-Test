//1
import 'package:dreamconnect/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Numeral extends StatelessWidget {
  const Numeral({
    super.key,
    required this.number,
    required this.onKeyPress,
  });
  //2
  final int number;
  //3
  final VoidCallback onKeyPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onKeyPress,
        child: Container(
            width: 100,
            decoration: ShapeDecoration(
              color: const Color(0xFFF5F6FA),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.13),
              ),
            ),
            child: Center(
                child: Text('$number', style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  color: AppColors.secondary,
                  fontSize: 22
                ),)
            )),
    );
  }
}
