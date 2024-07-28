import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UseInheritedWidgetSlide4 extends FlutterDeckSlideWidget {
  UseInheritedWidgetSlide4()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/4_use_inherited_widget_slide_4',
            title: '内部で InheritedWidget を使う',
            header: FlutterDeckHeaderConfiguration(
              title: '内部で InheritedWidget を使うメリット',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return FlutterDeckSlide.blank(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ウィジェット内部で、引数の引き渡しが不要になる\n  → 開発効率、変更容易性が上がる',
              style: textTheme.headlineLarge,
            ),
            const SizedBox(height: 24),
            const Expanded(
              child: SingleChildScrollView(
                child: FlutterDeckCodeHighlight(
                  code: 'class MyProfileCard extends StatelessWidget {'
                      '\n  const MyProfileCard({super.key, required this.profile});'
                      '\n'
                      '\n  final UserProfile profile;'
                      '\n  '
                      '\n  static UserProfile of(BuildContext context) {'
                      '\n    // null の場合、assert 文を書くと、より丁寧'
                      '\n    return context.dependOnInheritedWidgetOfExactType<_MyProfileCardScope>()!.profile;'
                      '\n  }'
                      '\n  '
                      '\n  @override'
                      '\n  Widget build(BuildContext context) {'
                      '\n    return _MyProfileCardScope('
                      '\n      profile: profile,'
                      '\n      child: // ...'
                      '\n    );'
                      '\n  }'
                      '\n}'
                      '\n'
                      '\nclass _MyProfileCardScope extends InheritedWidget {'
                      '\n  const _MyProfileCardScope({required super.child, required this.profile});'
                      '\n'
                      '\n  final UserProfile profile;'
                      '\n'
                      '\n  @override'
                      '\n  bool updateShouldNotify(covariant _MyProfileCardScope oldWidget) {'
                      '\n    return oldWidget.profile != profile;'
                      '\n  }'
                      '\n}',
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
