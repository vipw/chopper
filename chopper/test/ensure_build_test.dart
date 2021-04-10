@TestOn('vm')
@Tags(['presubmit-only'])
import 'package:build_verify/build_verify.dart';
import 'package:test/test.dart';

void main() {
  // check that pub run build_runner build does not produce changes
  test(
    'ensure_build',
    () => expectBuildClean(packageRelativeDirectory: 'chopper'),
  );
}
