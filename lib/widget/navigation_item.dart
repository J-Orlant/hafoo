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
    this.width = 22,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int state = context.read<PageCubit>().state;
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Image.asset(
        'assets/$icon',
        width: width,
        // TODO: BUG COLOR
        color: (state == index) ? kYellowColor1 : kBlackColor,
      ),
    );
  }
}
