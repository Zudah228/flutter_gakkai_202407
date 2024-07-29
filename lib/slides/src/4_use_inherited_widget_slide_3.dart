import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UseInheritedWidgetSlide3 extends FlutterDeckSlideWidget {
  UseInheritedWidgetSlide3()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/4_use_inherited_widget_slide_3',
            title: '内部で InheritedWidget を使う',
            header: FlutterDeckHeaderConfiguration(
              title: '内部で InheritedWidget を使う',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final themeData = Theme.of(context);
    final textTheme = themeData.textTheme;

    return FlutterDeckSlide.blank(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(text: '通常、内部で '),
                  TextSpan(
                    text: '_XXXScope',
                    style: TextStyle(
                      background: Paint()
                        ..color = themeData.colorScheme.surfaceBright,
                    ),
                  ),
                  const TextSpan(text: ' という命名で InheritedWidget が実装されている'),
                ],
              ),
              style: textTheme.headlineMedium,
            ),
            const SizedBox(height: 24),
            const Wrap(
              spacing: 20,
              runSpacing: 12,
              children: [
                FlutterDeckCodeHighlight(
                  code: 'class Form extends StatefulWidget {'
                      '\n  static FormState? maybeOf(BuildContext context) {'
                      '\n    final _FormScope? scope = context.dependOnInheritedWidgetOfExactType<_FormScope>();'
                      '\n    return scope?._formState;'
                      '\n  }'
                      '\n  static FormState of(BuildContext context) {'
                      '\n'
                      '\n}'
                      '\n'
                      '\nclass _FormScope extends InheritedWidget {'
                      '\n  const _FormScope({',
                ),
                FlutterDeckCodeHighlight(
                  code: 'class Visibility extends StatelessWidget {'
                      '\n  static bool of(BuildContext context) {'
                      '\n'
                      '\n}'
                      '\n'
                      '\nclass _VisibilityScope extends InheritedWidget {'
                      '\n  const _VisibilityScope({required this.isVisible, required super.child});',
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
