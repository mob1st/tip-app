import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class AsyncStateNotifier<State>
    extends StateNotifier<AsyncValue<State>> {
  AsyncStateNotifier({AsyncValue<State> state = const AsyncValue.loading()})
      : super(state) {
    fetch();
  }

  Future<void> fetch() async {
    state = await AsyncValue.guard(() => run());
  }

  Future<State> run();
}

class AsyncWidget<T> extends ConsumerWidget {
  final AsyncValue<T> asyncValue;
  final DataWidget data;
  final ErrorWidget? error;
  final LoadingWidget? loading;

  const AsyncWidget({
    Key? key,
    required this.asyncValue,
    required this.data,
    this.error,
    this.loading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return asyncValue.when(
      data: (data) {
        return this.data(context, data);
      },
      error: (error, stackTrace) {
        return this.error?.call(context, error, stackTrace) ??
            DefaultErrorWidget(
              error: error,
              stackTrace: stackTrace,
            );
      },
      loading: () {
        return loading?.call(context) ?? const DefaultLoadingWidget();
      },
    );
  }
}

typedef DataWidget<T> = Widget Function(BuildContext context, T data);
typedef ErrorWidget = Widget Function(
    BuildContext context, Object error, StackTrace? stackTrace);
typedef LoadingWidget = Widget Function(BuildContext context);

class DefaultErrorWidget extends StatelessWidget {
  final Object error;
  final StackTrace? stackTrace;

  const DefaultErrorWidget({
    Key? key,
    required this.error,
    this.stackTrace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('error ${error.toString()}'),
    );
  }
}

class DefaultLoadingWidget extends StatelessWidget {
  const DefaultLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Loading...'),
    );
  }
}
