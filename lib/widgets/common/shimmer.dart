import 'package:dominic_flutter_template/src/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class XShimmer extends StatelessWidget {
  const XShimmer({
    super.key,
    required this.child,
  });

  final Widget child;
  
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.gray_300,
      highlightColor: AppColors.gray_100,
      loop: 10,
      child: child,
    );
  }
}
