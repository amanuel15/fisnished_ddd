import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_failure.freezed.dart';

@freezed
abstract class ImageFailure with _$ImageFailure {
  const factory ImageFailure.unexpected() = Unexpected;
  const factory ImageFailure.deleteFailed() = DeleteFailed;
  const factory ImageFailure.uploadFailed() = UploadFailed;
  const factory ImageFailure.imageAlreadyExist() = ImageAlreadyExist;
}
