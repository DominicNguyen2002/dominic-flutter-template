import 'package:cached_network_image/cached_network_image.dart';
import 'package:dominic_flutter_template/src/themes/colors.dart';
import 'package:dominic_flutter_template/src/themes/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

class XImageNetwork extends StatelessWidget {
  const XImageNetwork({
    super.key,
    this.url,
    this.width,
    this.height,
    this.fit,
  });

  final String? url;
  final BoxFit? fit;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    if (url?.isEmpty == true) {
      return _buildImageNotAvailable();
    }
    return CachedNetworkImage(
      imageUrl: url ?? '',
      fit: fit,
      width: width,
      height: height,
      placeholder: (context, url) => _buildImageContainer(),
      errorWidget: (context, url, error) => _buildErrorImage(),
    );
  }

  Widget _buildImageContainer({Widget? child}) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.gray_200,
      ),
      child: child,
    );
  }

  Widget _buildImageNotAvailable() {
    return _buildImageContainer(
      child: const Icon(AppIcons.imageNotAvilable),
    );
  }

  Widget _buildErrorImage() {
    return _buildImageContainer(
      child: const Icon(AppIcons.error),
    );
  }

  // TODO: create blurhash to load image online
  Widget _blurHash() {
    return const AspectRatio(
      aspectRatio: 1.6,
      child: BlurHash(hash: 'LEHV6nWB2yk8pyo0adR*.7kCMdnj'),
    );
  }
}
