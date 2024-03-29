import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';

class ChatAndAddToCart extends StatelessWidget {
  const ChatAndAddToCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFCBF1E),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/chat.svg',
            height: 18,
          ),
          SizedBox(width: kDefaultPadding / 2),
          Text(
            'Chat',
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/shopping-bag.svg',
                  height: 18,
                ),
                SizedBox(width: 8),
                Text(
                  'Add to Cart',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
