import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_gakkai_202407/components/andai_logo.dart';

import 'slides/slides.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      speakerInfo: const FlutterDeckSpeakerInfo(
        name: '津田大和',
        description: '株式会社アンドエーアイ',
        socialHandle: '@zudah228',
        imagePath: 'assets/speaker_icon.jpeg',
      ),
      configuration: const FlutterDeckConfiguration(
        footer: FlutterDeckFooterConfiguration(
          widget: AndaiLogo(
            width: 100,
          ),
        ),
        controls: FlutterDeckControlsConfiguration(),
        header: FlutterDeckHeaderConfiguration(showHeader: false),
      ),
      slides: slides,
    );
  }
}

FlutterDeckThemeData get lightTheme => _baseTheme(brightness: Brightness.light);
FlutterDeckThemeData get darkTheme => _baseTheme(brightness: Brightness.dark);
FlutterDeckTextTheme get textTheme {
  return const FlutterDeckTextTheme(
    header: TextStyle(fontSize: 52),
    subtitle: TextStyle(fontSize: 24),
  );
}

FlutterDeckThemeData _baseTheme({
  required Brightness brightness,
}) {
  final foundation = FlutterDeckThemeData(
    brightness: brightness,
    textTheme: textTheme,
    theme: ThemeData(
      fontFamily: 'Hiragino Kaku Gothic ProN',
      brightness: brightness,
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
      ),
    ),
  );

  return foundation.copyWith(
    splitSlideTheme: FlutterDeckSplitSlideThemeData(
      rightBackgroundColor: foundation.materialTheme.colorScheme.surfaceTint,
      rightColor: foundation.materialTheme.colorScheme.onSurface,
    ),
    bulletListTheme: const FlutterDeckBulletListThemeData(
      textStyle: TextStyle(fontSize: 24),
    ),
    codeHighlightTheme: FlutterDeckCodeHighlightThemeData(
      backgroundColor: switch (brightness) {
        Brightness.dark => const Color(0xff1E1E1E),
        Brightness.light => const Color(0xffF0F0F0),
      },
    ),
  );
}
