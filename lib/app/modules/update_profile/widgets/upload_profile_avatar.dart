import 'dart:io';
import 'package:last02/app/core/utils/image_assets.dart';
import 'package:last02/app/modules/update_profile/controllers/update_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:last02/l10n/app_localizations.dart';

class UploadProfileAvatar extends StatelessWidget {
  final String? avatarUrl;
  final double size;
  final Rxn<File> pickedImage;
  final UpdateProfileController updateProfileController;
  final AppLocalizations appLocalization;

  const UploadProfileAvatar({
    super.key,
    this.avatarUrl,
    this.size = 120,
    required this.pickedImage,
    required this.updateProfileController,
    required this.appLocalization,
  });

  void _showPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: Text(appLocalization.fromLibrary),
                onTap: () async {
                  Navigator.of(context).pop();
                  await updateProfileController.pickImageFromGallery();
                },
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: Text(appLocalization.takePicture),
                onTap: () async {
                  Navigator.of(context).pop();
                  await updateProfileController.pickImageFromCamera();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final File? imageFile = pickedImage.value;

      return GestureDetector(
        onTap: () => _showPicker(context),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: size / 2,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: SizedBox(
                  width: size,
                  height: size,
                  child: _buildAvatarImage(imageFile),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget _buildAvatarImage(File? imageFile) {
    if (imageFile != null) {
      return Image.file(
        imageFile,
        fit: BoxFit.cover,
      );
    } else if (avatarUrl != null && avatarUrl!.isNotEmpty) {
      return Image.network(
        avatarUrl!,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return _loadingAvatarShimmer();
        },
        errorBuilder: (_, __, ___) => _buildPlaceholderWithOpacity(),
      );
    } else {
      return _buildPlaceholderWithOpacity();
    }
  }

  Widget _buildPlaceholderWithOpacity() {
    return SvgPicture.asset(
      ImageAssets.uploadAvatar,
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
