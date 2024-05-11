import 'package:dominic_flutter_template/src/configs/constants/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class MUser with _$MUser {
  const MUser._();
  const factory MUser({
    required String id,
    @Default(AppConstants.defaultName) String name,
    @Default(AppConstants.defaultAvatar) String avatar,
    @Default(AppConstants.defaultEmail) String email,
  }) = _MUser;

  factory MUser.empty() {
    return const MUser(
      id: AppConstants.defaultId,
    );
  }

  factory MUser.fromJson(Map<String, Object?> json) => _$MUserFromJson(json);
}
