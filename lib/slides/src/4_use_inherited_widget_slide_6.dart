import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UseInheritedWidgetSlide6 extends FlutterDeckSlideWidget {
  UseInheritedWidgetSlide6()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/4_use_inherited_widget_slide_6',
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
