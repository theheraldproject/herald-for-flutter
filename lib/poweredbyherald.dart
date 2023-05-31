import 'package:flutter/widgets.dart';

class PoweredByHerald extends StatelessWidget {
  const PoweredByHerald({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO add 2x and 3.5x etc paths for larger poweredbyherald images vs smaller
    return Image.asset('packages/heraldui/assets/images/poweredbyherald.png', 
      alignment: Alignment.center, 
      fit: BoxFit.contain,
      semanticLabel: 'Powered by Herald',
    );
  }

}