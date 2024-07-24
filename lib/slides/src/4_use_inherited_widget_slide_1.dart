import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UseInheritedWidgetSlide1 extends FlutterDeckSlideWidget {
  UseInheritedWidgetSlide1()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/4_use_inherited_widget_slide_1',
            title: '内部で InheritedWidget を使う',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: '内部で InheritedWidget を使う',
    );
  }
}
