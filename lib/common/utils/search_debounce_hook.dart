import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

String useSearch(
  TextEditingController controller, [
  Duration duration = const Duration(milliseconds: 600),
]) {
  final text = useState<String>(controller.text);

  useEffect(
    () {
      Timer? timer;

      void listener() {
        timer?.cancel();
        timer = Timer(duration, () {
          text.value = controller.text;
        });
      }

      controller.addListener(listener);
      return () {
        timer?.cancel();
        controller.removeListener(listener);
      };
    },
    [controller],
  );

  return text.value;
}
