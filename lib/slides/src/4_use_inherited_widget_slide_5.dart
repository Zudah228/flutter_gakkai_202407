import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UseInheritedWidgetSlide5 extends FlutterDeckSlideWidget {
  UseInheritedWidgetSlide5()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/4_use_inherited_widget_slide_5',
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FlutterDeckCodeHighlight(
                      code: 'class MyProfileCard extends StatelessWidget {'
                          '\n  const MyProfileCard({super.key, required this.profile});'
                          '\n'
                          '\n  final UserProfile profile;'
                          '\n'
                          '\n  static UserProfile of(BuildContext context) {'
                          '\n    return context'
                          '\n             .dependOnInheritedWidgetOfExactType<_MyProfileCardScope>()!'
                          '\n             .profile;'
                          '\n  }'
                          '\n  @override'
                          '\n  Widget build(BuildContext context) {'
                          '\n    return _MyProfileCardScope('
                          '\n      profile: profile,'
                          '\n      child: Card('
                          '\n        child: Padding('
                          '\n          padding: EdgeInsets.all(16),'
                          '\n          child: Column('
                          '\n            children: ['
                          '\n              _Title(),'
                          '\n              SizedBox(height: 16),'
                          '\n            ]'
                          '\n          )'
                          '\n        )'
                          '\n      )'
                          '\n    );'
                          '\n  }'
                          '\n}'
                          '\n',
                    ),
                    SizedBox(width: 24),
                    FlutterDeckCodeHighlight(
                        code: '\nclass _Title extends StatelessWidget {'
                            '\n  const _Title();'
                            '\n'
                            '\n  @override'
                            '\n  Widget build(BuildContext context) {'
                            '\n    final profile = MyProfileCard.of(context);'
                            '\n'
                            '\n    return Row('
                            '\n      children: ['
                            '\n        if (profile.image == null)'
                            '\n          Image.network(profile.image!, height: 24)'
                            '\n        else'
                            '\n          Icon(Icons.person),'
                            '\n        SizedBox(width: 8),'
                            '\n        Text(profile.name),'
                            '\n      ]'
                            '\n    );'
                            '\n  }')
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
