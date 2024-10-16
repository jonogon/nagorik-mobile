part of '../dependency_injection.dart';

@riverpod
RestClientKit network(NetworkRef ref) {
  return RestClientKit(
    baseUrl: Endpoints.base,
    onUnAuthorizedError: () {},
  );
}

@Riverpod(keepAlive: true)
CacheService cacheService(CacheServiceRef ref) {
  return SharedPreferencesService(
    ref.read(sharedPreferencesProvider).requireValue,
  );
}
