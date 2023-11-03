import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_2/facebook_ui/widgets/cicle_buttons.dart';
import 'package:test_2/icons/custom_icons.dart';

class QuickActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            _QuickButton(
              text: 'Galery',
              color: Color(0xff92BE87),
              icondata: CustomIcons.photos,
            ),
            _QuickButton(
              text: 'Tag Friends',
              color: Color(0xff2880D4),
              icondata: CustomIcons.user_friends,
            ),
            _QuickButton(
              text: 'Live',
              color: Color(0xffFB7171),
              icondata: CustomIcons.video_camera,
            ),
          ],
        ),
      ),
    );
  }
}

class _QuickButton extends StatelessWidget {
  final Color color;
  final IconData icondata;
  final String text;

  const _QuickButton({
    Key? key,
    required this.color,
    required this.icondata,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleButton(
            color: color.withOpacity(0.65),
            iconData: CustomIcons.photos,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
