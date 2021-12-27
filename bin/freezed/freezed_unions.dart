import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_unions.freezed.dart';

void main() {
  Status status = Status.success('successfully generated');
  // Status status =Status.failure('error in generated');

  status.when(success: (message) {
    print('wow .. $message');
  }, failure: (message) {
    print('sorry .. $message');
  }, loading: () {
    print('loading....');
  });

  status.maybeWhen(
    failure: (message) {
      print('sorry .. $message');
    },
    orElse: () => print('no status'),
  );

  status.map(
      success: (success) => print('wow .. ${success.message}'),
      failure: (failure) => print('sorry .. ${failure.message}'),
      loading: (loading) => print('loading ...'));

  status.maybeMap(
    failure: (failure) {
      print('sorry .. ${failure.message}');
    },
    orElse: () => print('no status'),
  );
}

@freezed
class Status with _$Status {
  const Status._();
  const factory Status.success(String message) = _Success;
  const factory Status.failure(String message) = _Failure;
  const factory Status.loading() = _Loading;
}
