import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';


class LogProviderObserver extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    log('DidUpdateProvider: [${provider.name ?? provider.runtimeType}] value: $newValue');
  }

  @override
  void providerDidFail(
    ProviderBase provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    log('ProviderDidFail: [${provider.name ?? provider.runtimeType}] error: $error stackTrace: $stackTrace');
  }
}
