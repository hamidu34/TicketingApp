import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking_app/utils/colortheme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            const Gap(35),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Good Morning', style: Styles.headline3),
                    const Gap(5),
                    Text('Book Tickets', style: Styles.headline1),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/images/img_1.png')),
                      borderRadius: BorderRadius.circular(10)),
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            const Gap(25),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xfff4f6fd)),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Row(children: [
                const Icon(
                  FluentSystemIcons.ic_fluent_globe_search_regular,
                  color: Colors.amber,
                ),
                const Gap(5),
                Text('search', style: Styles.headline4)
              ]),
            ),
            const Gap(25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upcoming Flights',
                  style: Styles.headline2,
                ),
                Text(
                  'view all',
                  style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
