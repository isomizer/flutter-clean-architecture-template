import 'package:freezed_annotation/freezed_annotation.dart';
import 'cache_exception_type.dart';
import 'server_exception_type.dart';

part 'app_exception.freezed.dart';

@freezed
class AppException with _$AppException implements Exception {
  const factory AppException.serverException({
    required ServerExceptionType type,
    required String message,
    int? code,
  }) = ServerException;

  const factory AppException.cacheException({
    required CacheExceptionType type,
    required String message,
    int? code,
  }) = CacheException;
}
