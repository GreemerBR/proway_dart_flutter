import 'package:flutter/material.dart';

import '../utils/constants_animations.dart';
import 'radial_expansion_widget.dart';

class HeroDestinyPage extends StatelessWidget {
  final String imageName;
  final String description;

  const HeroDestinyPage({
    Key? key,
    required this.imageName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox.shrink(),
        centerTitle: true,
        title: Text(description),
      ),
      body: Container(
        color: Theme.of(context).canvasColor,
        alignment: FractionalOffset.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: kMaxRadius * 2.0,
              width: kMaxRadius * 2.0,
              child: Hero(
                createRectTween: createRectTween,
                tag: imageName,
                child: RadialExpansion(
                  maxRadius: kMaxRadius,
                  child: Material(
                    color: Colors.green.shade100,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Image.asset(
                        imageName,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Text(
              'Te negou...',
              style: TextStyle(
                fontSize: 60,
                fontFamily: 'HarryP',
              ),
            )
          ],
        ),
      ),
    );
  }
}
