library thor_container_pkg;

import 'package:flutter/material.dart';

class ThorFancyContainer extends StatefulWidget {
  final double? width;
  final double height;
  final Color? color1;
  final Color? color2;
  final String title;
  final Color? textColor;
  final String subtitle;
  final Color? subtitleColor;
  final Function? onTap;
  final EdgeInsetsGeometry? padding;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;

  const ThorFancyContainer(
      {Key? key,
      this.width,
      required this.height,
      this.color1,
      this.color2,
      required this.title,
      this.textColor,
      required this.subtitle,
      this.subtitleColor,
      this.onTap,
      this.padding,
      this.titleStyle,
      this.subtitleStyle,
      this.mainAxisAlignment,
      this.crossAxisAlignment})
      : super(key: key);

  @override
  _ThorFancyContainerState createState() => _ThorFancyContainerState();
}

class _ThorFancyContainerState extends State<ThorFancyContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap!() ?? () {},
      child: Container(
        width: widget.width ?? MediaQuery.of(context).size.width * 0.90,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          gradient: LinearGradient(colors: [
            widget.color1 ?? const Color(0xFFCB1841),
            widget.color2 ?? const Color(0xFF2604DE)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 12,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment:
              widget.mainAxisAlignment ?? MainAxisAlignment.center,
          crossAxisAlignment:
              widget.crossAxisAlignment ?? CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                widget.title,
                style: widget.titleStyle ??
                    TextStyle(
                      color: widget.textColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                widget.subtitle,
                style: widget.subtitleStyle ??
                    TextStyle(
                      color: widget.subtitleColor,
                      fontSize: 15.0,
                      // fontFamily: 'Montserrat',
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
