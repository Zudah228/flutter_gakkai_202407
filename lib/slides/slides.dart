import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_gakkai_202407/slides/src/2_use_raw_1_slide.dart';
import 'package:flutter_gakkai_202407/slides/src/3_use_child_argument_slide_1.dart';
import 'package:flutter_gakkai_202407/slides/src/4_use_inherited_widget_slide_1.dart';

import 'src/0_introduction_slide.dart';
import 'src/1_use_named_constructor_1_slide.dart';

List<FlutterDeckSlideWidget> get slides => [
      TitleSlide(),
      IntroductionSlide(),
      UseNamedConstructor1Slide(),
      UseRaw1Slide(),
      UseChildArgumentSlide1(),
      UseInheritedWidgetSlide1(),
    ];

class TitleSlide extends FlutterDeckSlideWidget {
  TitleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/title',
            title: 'タイトル',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(
      title: '''Flutter の内部実装からパクる
自作共通ウィジェット
''',
    );
  }
}
