import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:team_members/app/core/constants/constants.dart';

class Avatar extends StatelessWidget {
  final String avatar;
  final size = 40.0;
  const Avatar({super.key, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: avatar.isNotEmpty
          ? CachedNetworkImage(
              imageUrl: avatar,
              placeholder: (_, __) => _placeHolder(),
              errorWidget: (_, __, ___) => _defaultAvatar(),
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          : _defaultAvatar(),
    );
  }

  Widget _defaultAvatar() {
    return CircleAvatar(
      radius: size,
      backgroundImage: const AssetImage(Constants.defaultAvatar),
    );
  }

  Widget _placeHolder() {
    return const Center(
      child: SizedBox(
        width: 12.0,
        height: 12.0,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
