import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../components/separated_column.dart';

class UseRaw2Slide extends FlutterDeckSlideWidget {
  UseRaw2Slide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/2_use_raw_2_slide',
            title: 'Raw クラスを使う',
            header: FlutterDeckHeaderConfiguration(
              title: 'Raw~ として分けられているものがある',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final themeData = Theme.of(context);
    final textTheme = themeData.textTheme;

    return FlutterDeckSlide.blank(
      builder: (context) {
        return Row(
          children: [
            Expanded(
              child: SeparatedColumn(
                gap: 12,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Raw~ クラス',
                    style: textTheme.headlineMedium,
                  ),
                  const FlutterDeckCodeHighlight(
                    code: 'class Image extends StatefulWidget {'
                        '\n'
                        '\nclass RawImage extends LeafRenderObjectWidget {',
                  ),
                  const FlutterDeckCodeHighlight(
                    code: 'class Chip StatelessWidget {'
                        '\n'
                        '\nclass RawChip extends StatefulWidget {',
                  ),
                  const FlutterDeckCodeHighlight(
                    code: 'class IndexedStack extends StatelessWidget {'
                        '\n'
                        '\nclass _RawIndexedStack extends Stack {',
                  ),
                ],
              ),
            ),
            Expanded(
              child: SeparatedColumn(
                gap: 12,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'raw コンストラクタ',
                    style: textTheme.headlineMedium,
                  ),
                  const FlutterDeckCodeHighlight(
                    code: 'const ThemeData.raw',
                  ),
                  const FlutterDeckCodeHighlight(
                    code: 'const CupertinoTextThemeData._raw',
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
