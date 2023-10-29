// Flutter Modules
import 'package:flutter/material.dart';

// External Modules
import 'package:provider/provider.dart';

class BaseScreen<T extends ChangeNotifier> extends StatefulWidget {
  final Widget Function(
    BuildContext context,
    T viewmodel,
    Widget? child,
  ) builder;

  final T viewmodel;
  final Widget? child;
  final void Function(T model)? onInit;
  final void Function(T model)? onDispose;

  const BaseScreen({
    required this.builder,
    required this.viewmodel,
    this.child,
    this.onInit,
    this.onDispose,
    Key? key,
  }) : super(key: key);

  @override
  BaseScreenState<T> createState() => BaseScreenState<T>();
}

class BaseScreenState<T extends ChangeNotifier> extends State<BaseScreen<T>> {
  late T viewmodel;

  @override
  void initState() {
    viewmodel = widget.viewmodel;

    if (widget.onInit != null) {
      widget.onInit!(viewmodel);
    }

    super.initState();
  }

  @override
  void dispose() {
    if (widget.onDispose != null) {
      widget.onDispose!(viewmodel);
    }
    super.dispose();
  }

  Widget _baseScreen() => ChangeNotifierProvider<T>(
        create: (_) => viewmodel,
        child: Consumer<T>(
          builder: (context, value, child) {
            return widget.builder(context, viewmodel, child);
          },
          child: widget.child,
        ),
      );

  @override
  Widget build(BuildContext context) => _baseScreen();
}
