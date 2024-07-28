import 'package:flutter/material.dart';

class MyPageCard extends StatelessWidget {
  const MyPageCard._raw({
    required this.title,
    required this.leading,
    this.child,
  });

  MyPageCard.profile({
    required String name,
    required int age,
  }) : this._raw(
          leading: const Icon(Icons.person),
          title: const Text('プロフィール'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('名前：$name'),
              Text('年齢：$age'),
            ],
          ),
        );

  const MyPageCard.settings()
      : this._raw(
          leading: const Icon(Icons.settings),
          title: const Text('設定'),
        );

  final Widget title;
  final Widget leading;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final textTheme = themeData.textTheme;

    return Card.outlined(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconTheme.merge(
                    data: const IconThemeData(
                      size: 20,
                    ),
                    child: leading,
                  ),
                  const SizedBox(width: 8),
                  DefaultTextStyle.merge(
                    style: textTheme.titleMedium,
                    child: title,
                  ),
                ],
              ),
              if (child != null) ...[
                const SizedBox(height: 8),
                child!,
              ]
            ],
          ),
        ),
      ),
    );
  }
}
