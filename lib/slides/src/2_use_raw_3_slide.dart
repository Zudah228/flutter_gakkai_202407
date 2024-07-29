import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UseRaw3Slide extends FlutterDeckSlideWidget {
  UseRaw3Slide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/2_use_raw_3_slide',
            title: 'Raw~ ウィジェット、コンストラクタ考えの活用',
            header: FlutterDeckHeaderConfiguration(
              title: 'Raw クラスに分けるメリット',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              title: SizedBox(
                height: kToolbarHeight,
                child: FlutterDeckBulletList(
                  items: const [
                    '「開発者に公開するために引数にしたいもの」と、「保守性の面で引数にしたいもの」を両立する',
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlutterDeckCodeHighlight(
                      code: '''class Image extends StatefulWidget {
  const Image({
    super.key,
    required this.image,
    this.frameBuilder,   // <= 開発者に公開したい引数
    this.loadingBuilder, // <= 開発者に公開したい引数
    this.errorBuilder,   // <= 開発者に公開したい引数
    this.semanticLabel,
    this.excludeFromSemantics = false,
    this.width,
    this.height,
    this.color,
    this.opacity,
    this.colorBlendMode,
    this.fit,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.centerSlice,
    this.matchTextDirection = false,
    this.gaplessPlayback = false,
    this.isAntiAlias = false,
    this.filterQuality = FilterQuality.medium,
  });
'''),
                  FlutterDeckCodeHighlight(code: '''  @override
  Widget build(BuildContext context) {
    if (_lastException != null) {
      if (widget.errorBuilder != null) {
        return widget.errorBuilder!(context, _lastException!, _lastStack);
      }
      if (kDebugMode) {
        return _debugBuildErrorWidget(context, _lastException!);
      }
    }
    
    Widget result = RawImage(
      image: _imageInfo?.image,
      debugImageLabel: _imageInfo?.debugLabel,
      width: widget.width,
      height: widget.height,
      scale: _imageInfo?.scale ?? 1.0,
      color: widget.color,
      opacity: widget.opacity,
      colorBlendMode: widget.colorBlendMode,
      fit: widget.fit,
      alignment: widget.alignment,
      repeat: widget.repeat,
      centerSlice: widget.centerSlice,
      matchTextDirection: widget.matchTextDirection,
      invertColors: _invertColors,
      isAntiAlias: widget.isAntiAlias,
      filterQuality: widget.filterQuality,
    );
'''),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
