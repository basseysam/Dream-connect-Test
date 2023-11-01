import 'package:dreamconnect/constants/app_colors.dart';
import 'package:dreamconnect/constants/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/numerals.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void inputNumber(var value) {
    //1
    setState(() {
      _controller.text += value.toString();

    });
  }

  void clearLastInput() {
    //2
    _controller.text = _controller.text.substring(
      0,
      _controller.text.length - 1,
    );
  }

  void clearAll() {
    //3
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: SvgPicture.asset(
                'assets/icons/back.svg',
                height: 24,
                width: 24,
              ),
            )),
        centerTitle: true,
        title: Text(
          'Transfer',
          style: GoogleFonts.ptSans(
              fontSize: 17, color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: width,
            height: 40,
            decoration: const BoxDecoration(
                color: AppColors.second,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                )),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Gap(20),
                Text(
                  'Enter amount',
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      color: AppColors.secondary,
                      fontWeight: FontWeight.w400),
                ),
                const Gap(18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '₦',
                      style: GoogleFonts.montserrat(
                          fontSize: 38,
                          color: AppColors.secondary,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      _controller.text.isEmpty ? '0' : CustomWidget().withComma1(double.parse(_controller.text)),
                      style: GoogleFonts.montserrat(
                          fontSize: 38,
                          color: _controller.text.isNotEmpty ? AppColors.secondary :  AppColors.primaryColor.withOpacity(0.5),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const Gap(18),
                const Divider(),
                const Gap(18),
                Text(
                  'To',
                  style: GoogleFonts.montserrat(
                      fontSize: 18,
                      color: AppColors.secondary,
                      fontWeight: FontWeight.w400),
                ),
                const Gap(18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/profile.png',
                      height: 34,
                      width: 34,
                    ),
                    const Gap(20),
                    Text(
                      'Jane Doe',
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const Gap(30),
                //1
                for (int i = 1; i < 4; i++)
                  SizedBox(
                    height: 80,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          //2
                          for (int j = 1; j < 4; j++)
                            Numeral(
                              //3
                              number: (i - 1) * 3 + j,
                              onKeyPress: () => inputNumber((i - 1) * 3 + j),
                            ),
                        ],
                      ),
                    ),
                  ),

                Expanded(
                  child: Transform(
                    transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                 // inputNumber('.');
                                },
                                child: Container(
                                    width: 98,
                                    height: 76,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFF5F6FA),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.13),
                                      ),
                                    ),
                                    child: Center(
                                        child: Text(
                                      '.',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.secondary,
                                          fontSize: 22),
                                    ))),
                              ),
                            ),
                            const Gap(12),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  inputNumber('0');
                                },
                                child: Container(
                                    width: 98,
                                    height: 76,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFF5F6FA),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.13),
                                      ),
                                    ),
                                    child: Center(
                                        child: Text(
                                      '0',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.secondary,
                                          fontSize: 22),
                                    ))),
                              ),
                            ),
                            const Gap(12),
                            Expanded(
                              child: Container(
                                  width: 98,
                                  height: 76,
                                  decoration: ShapeDecoration(
                                    color: AppColors.secondary,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.13),
                                    ),
                                  ),
                                  child: Center(
                                      child: SvgPicture.asset(
                                    'assets/icons/right_arrow.svg',
                                  ))),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
