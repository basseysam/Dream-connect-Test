import 'package:dreamconnect/constants/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';

import '../../constants/app_colors.dart';
import '../../model/balance_model.dart';
import '../../model/custom_list.dart';
import '../widgets/balance_widget.dart';
import '../widgets/transaction_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {




  ScrollController scrollController = ScrollController();
  int activeIndex = 0;

  @override
  void initState() {
    scrollController.addListener(() {
      setState(() {
        activeIndex = (scrollController.offset / 145).round();
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            height: height * 0.30,
            width: width,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AppColors.primaryColor, AppColors.secondary],
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(50),
                SvgPicture.asset('assets/icons/back.svg'),
                const Gap(24),
                Text(
                  'You can check your balances here,',
                  style: GoogleFonts.montserrat(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          const Gap(26),
          SizedBox(
            height: 130,
            child: ListView.builder(
              controller: scrollController,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                final active = index == activeIndex;
                return BalanceWidget(balance: balance, active: active, index: index,);
              },
              itemCount: balance.length,
            ),
          ),
          const Gap(20),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recent Transaction',
                      style: GoogleFonts.montserrat(
                          fontSize: 24,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w700),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        child: Wrap(
                          children: List.generate(transaction.length, (index){
                            return TransactionWidget(width: width, index: index,);
                          }),
                        ),
                      ),
                    )
                  ],
                ),
              )
          ),

        ],
      ),
    );
  }
}



