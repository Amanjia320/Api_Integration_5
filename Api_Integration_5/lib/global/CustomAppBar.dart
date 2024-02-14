import 'package:flutter/material.dart';

class ReusableAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData icon;
  final IconData icons;

  const ReusableAppBar({
    Key? key,
    required this.title,
    required this.icon,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.tealAccent.shade700,
      leadingWidth: 250,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 30,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.black,
              size: 30,
            ),

            // ignore: prefer_const_constructors
            SizedBox(
              width: 15,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Icon(
            icons,
            color: Colors.black,
            size: 30,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
