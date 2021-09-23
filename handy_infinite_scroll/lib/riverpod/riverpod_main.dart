import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'riverpod_home.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MaterialApp(
        home: RiverpodHome(),
      ),
    ),
  );
}
