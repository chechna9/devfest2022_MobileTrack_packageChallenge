import 'package:flutter/material.dart';
import 'package:grouper/individual_modal.dart';

class IndividualCard extends StatelessWidget {
  final String imgUrl;
  // to check if the image is a network image
  final bool isNet;
  final Function onPressed;
  const IndividualCard(
      {super.key,
      required this.imgUrl,
      required this.isNet,
      required this.onPressed});
  factory IndividualCard.fromModel(
          {required Individualmodel indiviual, required Function onPressed}) =>
      IndividualCard(
          imgUrl: indiviual.imageUrl,
          isNet: indiviual.isNet,
          onPressed: onPressed);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: isNet
          ? CircleAvatar(
              backgroundImage: NetworkImage(imgUrl),
            )
          : CircleAvatar(
              backgroundImage: AssetImage(imgUrl),
            ),
    );
  }
}
