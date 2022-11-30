import 'package:flutter/material.dart';
import 'package:flutter_pkg/individual_modal.dart';
import 'package:flutter_pkg/individuel_card.dart';

class Group extends StatefulWidget {
  final String? title;
  final Color? color;
  final int? maxElmnt;
  final double borderRadius;
  final List<Individualmodel> indiduals;
  final TextStyle? titleStyle;
  final double? xPadding;
  final double? yPadding;
  final double? xSpacing;
  final double? ySpacing;
  final TextStyle? buttonStyle;
  final WrapAlignment? alignment;

  Group({
    super.key,
    this.title,
    required this.indiduals,
    this.color,
    this.maxElmnt,
    this.borderRadius = 10,
    this.titleStyle,
    this.xPadding,
    this.yPadding,
    this.xSpacing,
    this.ySpacing,
    this.buttonStyle,
    this.alignment,
  });

  @override
  State<Group> createState() => _GroupState();
}

class _GroupState extends State<Group> {
  late bool showClicked;
  late int maxToShow;
  void showAll() {
    setState(() {
      if (widget.maxElmnt != null) {
        maxToShow = showClicked ? widget.maxElmnt! : widget.indiduals.length;
        showClicked = !showClicked;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    showClicked = false;
    maxToShow = widget.maxElmnt ?? widget.indiduals.length;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: widget.xPadding ?? 4, vertical: widget.yPadding ?? 8),
      decoration: BoxDecoration(
        color: widget.color ?? Colors.grey,
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          widget.title != null
              ? Column(
                  children: [
                    Text(
                      widget.title!,
                      style: widget.titleStyle ??
                          const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                )
              : Container(),
          Wrap(
            alignment: widget.alignment ?? WrapAlignment.center,
            spacing: widget.xSpacing ?? 4,
            runSpacing: widget.ySpacing ?? 4,
            children: widget.indiduals
                .getRange(0, maxToShow)
                .map((e) =>
                    IndividualCard.fromModel(indiviual: e, onPressed: () {}))
                .toList(),
          ),
          widget.maxElmnt != null
              ? Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: showAll,
                    child: Text(
                      !showClicked ? 'show more' : 'show less',
                      style: widget.buttonStyle ??
                          const TextStyle(
                            color: Colors.white,
                          ),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
