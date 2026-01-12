import 'dart:io';

/// Service responsible for picking files, images, and videos from the device.
/// Register this in your DI container (injection_container.dart).
abstract class MediaService {
  Future<File?> pickImageFromGallery();
  Future<File?> pickImageFromCamera();
  Future<File?> pickFile({List<String>? allowedExtensions});
}

class MediaServiceImpl implements MediaService {
  @override
  Future<File?> pickImageFromGallery() async {
    // TODO: Implement image_picker logic
    throw UnimplementedError();
  }

  @override
  Future<File?> pickImageFromCamera() async {
    // TODO: Implement image_picker logic
    throw UnimplementedError();
  }

  @override
  Future<File?> pickFile({List<String>? allowedExtensions}) async {
    // TODO: Implement file_picker logic
    throw UnimplementedError();
  }
}
