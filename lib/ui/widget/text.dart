part of 'widgets.dart';

class CommonText extends StatelessWidget {
  final String text;
  final Color color;
  final double colorOpacity;
  final double? size;
  final int? maxLines;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign? align;

  CommonText(
      this.text, {
        this.color = Colors.black,
        this.colorOpacity = 1.0,
        this.size,
        this.maxLines,
        this.overflow,
        this.fontWeight,
        this.fontFamily = "Cairo",
        this.align,
      });

  @override    
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: align,
      style: TextStyle(
        color: color.withOpacity(colorOpacity),
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}