import 'package:flutter/material.dart';
import 'package:signup/constants.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true;
  double textHight = 100;
  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHight) {
      firstHalf = widget.text.substring(0, textHight.toInt());
      secondHalf =
          widget.text.substring(textHight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? Text(firstHalf)
          : Column(
              children: [
                Text(hiddenText
                    ? (firstHalf + "...")
                    : (firstHalf + secondHalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(children: [
                    Text("Show more ", style: TextStyle(color: kPrimaryColor)),
                    Icon(
                      hiddenText
                          ? Icons.arrow_drop_down
                          : Icons.arrow_drop_up_outlined,
                      color: kPrimaryColor,
                    )
                  ]),
                )
              ],
            ),
    );
  }
}
