import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Color getMainColor(double value) {
  if (value >= 7) {
    return const Color.fromARGB(255, 33, 208, 122);
  } else if (value >= 4) {
    return const Color.fromARGB(255, 210, 213, 49);
  } else if (value > 0) {
    return const Color.fromARGB(255, 215, 35, 95);
  }
  return const Color.fromARGB(255, 101, 101, 101);
}

Color getSecondColor(double value) {
  if (value >= 7) {
    return const Color.fromARGB(255, 32, 69, 41);
  } else if (value >= 4) {
    return const Color.fromARGB(255, 66, 61, 15);
  } else if (value > 0) {
    return const Color.fromARGB(255, 82, 21, 52);
  }
  return const Color.fromARGB(255, 101, 101, 101);
}

String formatDate(String date) {
  List<String> temp = date.split(' ');
  temp = temp[0].split('-');
  DateTime? dateRelease = DateTime.tryParse(date);
  if (dateRelease != null) {
    String month = DateFormat.MMM('pt_BR').format(dateRelease).toString();
    return temp.length == 3 ? ('${temp[2]} de $month de ${temp[0]}') : date;
  } else {
    return 'Data desconhecida';
  }
}

class GradientText extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
