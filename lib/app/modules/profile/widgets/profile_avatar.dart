import 'package:flutter/material.dart';
import 'package:last02/app/core/utils/image_assets.dart';
import 'package:shimmer/shimmer.dart';

class ProfileAvatar extends StatelessWidget {
  final String? avatarUrl;
  final double size;

  const ProfileAvatar({
    Key? key,
    this.avatarUrl,
    this.size = 120,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hasAvatar = avatarUrl != null && avatarUrl!.trim().isNotEmpty;

    return CircleAvatar(
      radius: size / 2,
      backgroundColor: Colors.transparent,
      child: ClipOval(
        child: hasAvatar ? _buildAvatarImage(avatarUrl!) : _defaultAvatar(),
      ),
    );
  }

  Widget _buildAvatarImage(String url) {
    if (url.isNotEmpty) {
      return Image.network(
        url,
        width: size,
        height: size,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return _loadingAvatarShimmer();
        },
        errorBuilder: (_, __, ___) => _defaultAvatar(),
      );
    } else {
      return _defaultAvatar();
    }
  }

  Widget _defaultAvatar() {
    return Image.asset(
      ImageAssets.defaultAvatar,
      width: size,
      height: size,
      fit: BoxFit.cover,
    );
  }

  Widget _loadingAvatarShimmer() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: size,
        height: size,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
      ),
    );
  }
}
