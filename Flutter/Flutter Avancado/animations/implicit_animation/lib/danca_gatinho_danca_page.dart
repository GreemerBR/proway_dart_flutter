import 'package:flutter/material.dart';

class DancaGatinhoDancaPage extends StatefulWidget {
  const DancaGatinhoDancaPage({Key? key}) : super(key: key);

  @override
  State<DancaGatinhoDancaPage> createState() => _DancaGatinhoDancaPageState();
}

class _DancaGatinhoDancaPageState extends State<DancaGatinhoDancaPage> {
  Offset offset = Offset.zero;

  void _slideUp() {
    setState(() => offset -= const Offset(0, 1));
  }

  void _slideDown() {
    setState(() => offset += const Offset(0, 1));
  }

  void _slideLeft() {
    setState(() => offset -= const Offset(1, 0));
  }

  void _slideRight() {
    setState(() => offset += const Offset(1, 0));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: _slideLeft,
                  child: const Icon(Icons.arrow_circle_left_outlined),
                ),
                ElevatedButton(
                  onPressed: _slideUp,
                  child: const Icon(Icons.arrow_circle_up),
                ),
                ElevatedButton(
                  onPressed: _slideDown,
                  child: const Icon(Icons.arrow_circle_down),
                ),
                ElevatedButton(
                  onPressed: _slideRight,
                  child: const Icon(Icons.arrow_circle_right_outlined),
                ),
              ]),
        ),
        Padding(
          padding: const EdgeInsets.all(50),
          child: AnimatedSlide(
            offset: offset,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            child: const FlutterLogo(),
          ),
        ),
      ],
    );
  }
}
