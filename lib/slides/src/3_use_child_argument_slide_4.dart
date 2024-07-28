import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UseChildArgumentSlide4 extends FlutterDeckSlideWidget {
  UseChildArgumentSlide4()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/3_use_child_argument_slide_4',
            title: 'String ではなく、Widget で',
            header: FlutterDeckHeaderConfiguration(
              title: 'コンストラクタで BuildContext を使えるメリット',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return const SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FlutterDeckCodeHighlight(
                code: 'class MyPageCard extends StatelessWidget {'
                    '\n  const MyPageCard._raw({'
                    '\n    super.key,'
                    '\n    required this.title,'
                    '\n    required this.leading,'
                    '\n    this.child,'
                    '\n  });'
                    '\n'
                    '\n  const MyPageCard.profile({'
                    '\n    super.key,'
                    '\n  }) : this._raw('
                    '\n     leading: const Icon(Icons.person),'
                    '\n     title: Builder('
                    '\n       builder: (context) {'
                    '\n         final l10n = AppLocalization.of(context);'
                    '\n'
                    '\n         return Text(l10n.profile);'
                    '\n       }'
                    '\n     ),'
                    '\n     child: Consumer('
                    '\n       builder: (context, ref, _) {'
                    '\n         final profile = ref.watch(myProfileProvider);'
                    '\n'
                    '\n         return Column('
                    '\n           crossAxisAlignment: CrossAxisAlignment.start,'
                    '\n             children: ['
                    '\n               Text(\'名前：\${profile.name}\'),'
                    '\n               Text(\'年齢：\${profile.age}\'),'
                    '\n             ],'
                    '\n           ),'
                    '\n       }'
                    '\n     )',
              ),
              SizedBox(width: 64),
              FlutterDeckCodeHighlight(
                  code: 'class MyPageAppBar extends AppBar {'
                      '\n  const MyPageAppBar({'
                      '\n    super.key,'
                      '\n  }) : super('
                      '\n    title: Consumer('
                      '\n       builder: (context, ref, _) {'
                      '\n         final profile = ref.watch(myProfileProvider);'
                      '\n         return Row('
                      '\n             children: ['
                      '\n               Image.network(profile.image),'
                      '\n               SizedBox(width: 8),'
                      '\n               Text(\'名前：\${profile.name}\'),'
                      '\n             ],'
                      '\n           ),'
                      '\n       }'
                      '\n     )'
                      '\n  );'
                      '\n'),
            ],
          ),
        );
      },
    );
  }
}
