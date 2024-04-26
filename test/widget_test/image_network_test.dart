import 'package:cached_network_image/cached_network_image.dart';
import 'package:dominic_flutter_template/widgets/image/image_network.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lottie/lottie.dart';

import 'base_widget_test.dart';

void xImageNetworkTest() {
  testWidgets(
    'XImageNetwork widget test with online image url',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const BaseWidgetTest(
          child: XImageNetwork(
            url:
                'https://cdn4.vectorstock.com/i/1000x1000/31/03/top-view-from-above-vector-22983103.jpg',
            fit: BoxFit.cover,
            width: 200,
            height: 200,
          ),
        ),
      );

      final cachedNetworkImageFinder = find.byType(CachedNetworkImage);
      expect(cachedNetworkImageFinder, findsOneWidget);

      final cachedNetworkImageWidget =
          tester.widget<CachedNetworkImage>(cachedNetworkImageFinder);

      expect(cachedNetworkImageWidget.width, 200);
      expect(cachedNetworkImageWidget.height, 200);
      expect(cachedNetworkImageWidget.fit, BoxFit.cover);

      final placeholderFinder = find.byType(Lottie);
      expect(placeholderFinder, findsOneWidget);
    },
  );

  testWidgets(
    'XImageNetwork widget test with error image',
    (tester) async {
      await tester.pumpWidget(
        const BaseWidgetTest(
          child: XImageNetwork(
            url: null,
            fit: BoxFit.cover,
            width: 200,
            height: 200,
          ),
        ),
      );

      expect(find.byIcon(Icons.error), findsNothing);
    },
  );
}
