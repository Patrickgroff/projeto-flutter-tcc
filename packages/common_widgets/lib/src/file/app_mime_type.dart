part of common_widgets.file;

final resolver = MimeTypeResolver()
  ..addExtension('heic', 'image/heic')
  ..addExtension('heif', 'image/heif');

AppMimeType? mimeType(String? path) {
  AppMimeType? mimeType = mimeTypeFromFile(path);
  if (mimeType == null || mimeType == AppMimeType.unknown) {
    mimeType = mimeTypeFromExtension(path);
  }
  return mimeType;
}

AppMimeType? mimeTypeFromFile(String? path) {
  if (path == null) {
    return null;
  }
  final mimeType = resolver.lookup(path);
  if (mimeType == null) {
    return AppMimeType.unknown;
  }

  if (mimeType.contains(RegExp('image/'))) {
    return AppMimeType.image;
  }

  if (mimeType.contains(RegExp('audio/'))) {
    return AppMimeType.audio;
  }

  if (mimeType.contains(RegExp('video/'))) {
    return AppMimeType.video;
  }

  if (mimeType.contains('application/pdf')) {
    return AppMimeType.pdf;
  }

  if (['application/vnd.ms-powerpoint', 'application/vnd.oasis.opendocument.presentation'].contains(mimeType.toLowerCase())) {
    return AppMimeType.powerpoint;
  }

  if ([
    'application/vnd.oasis.opendocument.spreadsheet',
    'application/vnd.ms-excel',
    'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
    'application/x-iwork-numbers-sffnumbers',
  ].contains(mimeType.toLowerCase())) {
    return AppMimeType.excel;
  }

  if ([
    'application/x-iwork-pages-sffpages',
    'application/msword',
    'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
    'application/vnd.openxmlformats-officedocument.wordprocessingml.template',
    'application/vnd.ms-word.document.macroEnabled.12',
  ].contains(mimeType.toLowerCase())) {
    return AppMimeType.word;
  }

  if ([
    'application/x-7z-compressed',
    'application/octet-stream',
    'application/x-freearc',
    'application/x-apple-diskimage',
    'application/x-rar-compressed',
    'application/x-xar',
    'application/zip',
  ].contains(mimeType.toLowerCase())) {
    return AppMimeType.zip;
  }

  if (mimeType.contains(RegExp('text/'))) {
    return AppMimeType.text;
  }

  if (mimeType.contains(RegExp('application/'))) {
    return AppMimeType.application;
  }

  return AppMimeType.unknown;
}

AppMimeType? mimeTypeFromExtension(String? path) {
  if (path == null) {
    return null;
  }
  final extension = p.extension(path).toLowerCase();

  if (MimeTypeExtensions.imageExtensions.contains(extension)) {
    return AppMimeType.image;
  }

  if (MimeTypeExtensions.audioExtensions.contains(extension)) {
    return AppMimeType.audio;
  }

  if (MimeTypeExtensions.videoExtensions.contains(extension)) {
    return AppMimeType.video;
  }

  if (MimeTypeExtensions.pdfExtensions.contains(extension)) {
    return AppMimeType.pdf;
  }

  if (MimeTypeExtensions.excelExtensions.contains(extension)) {
    return AppMimeType.excel;
  }

  if (MimeTypeExtensions.powerpointExtensions.contains(extension)) {
    return AppMimeType.powerpoint;
  }

  if (MimeTypeExtensions.wordExtensions.contains(extension)) {
    return AppMimeType.word;
  }

  if (MimeTypeExtensions.compressedExtensions.contains(extension)) {
    return AppMimeType.zip;
  }

  if (MimeTypeExtensions.textExtensions.contains(extension)) {
    return AppMimeType.text;
  }

  if (MimeTypeExtensions.applicationExtensions.contains(extension)) {
    return AppMimeType.application;
  }

  return AppMimeType.unknown;
}
