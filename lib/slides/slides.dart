import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_gakkai_202407/slides/src/0_introduction_slide.dart';
import 'package:flutter_gakkai_202407/slides/src/1_use_named_constructor_1_slide.dart';
import 'package:flutter_gakkai_202407/slides/src/1_use_named_constructor_2_slide.dart';
import 'package:flutter_gakkai_202407/slides/src/1_use_named_constructor_3_slide.dart';
import 'package:flutter_gakkai_202407/slides/src/1_use_named_constructor_4_slide.dart';
import 'package:flutter_gakkai_202407/slides/src/2_use_raw_1_slide.dart';
import 'package:flutter_gakkai_202407/slides/src/2_use_raw_2_slide.dart';
import 'package:flutter_gakkai_202407/slides/src/2_use_raw_3_slide.dart';
import 'package:flutter_gakkai_202407/slides/src/2_use_raw_4_slide.dart';
import 'package:flutter_gakkai_202407/slides/src/2_use_raw_5_slide.dart';
import 'package:flutter_gakkai_202407/slides/src/3_use_child_argument_slide_1.dart';
import 'package:flutter_gakkai_202407/slides/src/3_use_child_argument_slide_2.dart';
import 'package:flutter_gakkai_202407/slides/src/3_use_child_argument_slide_3.dart';
import 'package:flutter_gakkai_202407/slides/src/3_use_child_argument_slide_4.dart';
import 'package:flutter_gakkai_202407/slides/src/3_use_child_argument_slide_5.dart';
import 'package:flutter_gakkai_202407/slides/src/4_use_inherited_widget_slide_1.dart';
import 'package:flutter_gakkai_202407/slides/src/4_use_inherited_widget_slide_3.dart';
import 'package:flutter_gakkai_202407/slides/src/4_use_inherited_widget_slide_2.dart';
import 'package:flutter_gakkai_202407/slides/src/4_use_inherited_widget_slide_4.dart';
import 'package:flutter_gakkai_202407/slides/src/4_use_inherited_widget_slide_5.dart';
import 'package:flutter_gakkai_202407/slides/src/4_use_inherited_widget_slide_6.dart';

List<FlutterDeckSlideWidget> get slides => [
      TitleSlide(),
      IntroductionSlide(),
      UseNamedConstructor1Slide(),
      UseNamedConstructor2Slide(),
      UseNamedConstructor3Slide(),
      UseNamedConstructor4Slide(),
      UseRaw1Slide(),
      UseRaw2Slide(),
      UseRaw3Slide(),
      UseRaw4Slide(),
      UseRaw5Slide(),
      UseChildArgumentSlide1(),
      UseChildArgumentSlide2(),
      UseChildArgumentSlide3(),
      UseChildArgumentSlide4(),
      UseChildArgumentSlide5(),
      UseInheritedWidgetSlide1(),
      UseInheritedWidgetSlide2(),
      UseInheritedWidgetSlide3(),
      UseInheritedWidgetSlide4(),
      UseInheritedWidgetSlide5(),
      UseInheritedWidgetSlide6(),
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
