import 'package:flutter/material.dart';
import 'package:kutsu/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 33,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/image_shop_logo.png',
                  width: 54,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shoe Store',
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Good night, this item is on...',
                        overflow: TextOverflow.ellipsis,
                        style: secondaryTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 1,
              color: dividerColor,
            ),
          ],
        ),
      ),
    );
  }
}
