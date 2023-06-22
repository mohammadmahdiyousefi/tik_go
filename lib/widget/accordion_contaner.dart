import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tik_go/theme/theme.dart';

class AccordionContaner extends StatefulWidget {
  AccordionContaner(
      {super.key,
      this.color = const Color(0xff3EC70B),
      this.titel = 'Titel',
      this.subtitel = 'Subtitel',
      this.image = 'image'});

  String titel;
  String subtitel;
  String image;
  Color color;

  @override
  State<AccordionContaner> createState() => _AccordionContanerState();
}

class _AccordionContanerState extends State<AccordionContaner> {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        margin: EdgeInsets.symmetric(vertical: 10),
        elevation: 5,
        child: Container(
            height: 75,
            width: 350,
            child: widget.subtitel != '' && widget.color != Colors.white
                ? positon2()
                : positon1()));
  }

  Widget positon1() {
    return Row(
      children: [
        SizedBox(
          width: 11,
        ),
        CircleAvatar(
          radius: 30,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image(image: AssetImage('images/${widget.image}.jpg'))),
        ),
        SizedBox(
          width: 9,
        ),
        Text(
          widget.titel,
          style: ThemeApp().black.textTheme.headline3,
        ),
      ],
    );
  }

  Widget positon2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 75,
          width: 13,
          decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  topRight: Radius.circular(16))),
        ),
        SizedBox(
          width: 29,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.titel,
              style: ThemeApp().black.textTheme.headline3,
            ),
            Text(
              widget.subtitel,
              style: ThemeApp().black.textTheme.headline3,
            ),
          ],
        )
      ],
    );
  }
}
