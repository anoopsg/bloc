import 'package:bloc/bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockBloc extends Mock implements Bloc<Object, int> {}

// ignore: must_be_immutable
class MockTransition extends Mock implements Transition<Object, int> {}

void main() {
  group('BlocObserver', () {
    group('onEvent', () {
      test('does nothing by default', () {
        BlocObserver().onEvent(MockBloc(), Object());
      });
    });

    group('onTransition', () {
      test('does nothing by default', () {
        BlocObserver().onTransition(MockBloc(), MockTransition());
      });
    });

    group('onError', () {
      test('does nothing by default', () {
        BlocObserver().onError(MockBloc(), Object(), StackTrace.current);
      });
    });
  });
}