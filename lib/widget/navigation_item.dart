import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hafoo/bloc/page/page_cubit.dart';
import 'package:hafoo/theme.dart';

class NavigationItem extends StatelessWidget {
  final String icon;
  final int index;
  final double width;
  const NavigationItem({
    required this.icon,
    required this.index,
    this.width = 30,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int state = context.read<PageCubit>().state;
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Container(
        height: 68.5,
        padding: EdgeInsets.only(top: 19),
        child: Column(
          children: [
            Image.asset(
              'assets/$icon',
              width: width,
              color: (state == index) ? kYellowColor1 : kGreyColor,
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              width: 25,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: (state == index) ? kYellowColor1 : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
