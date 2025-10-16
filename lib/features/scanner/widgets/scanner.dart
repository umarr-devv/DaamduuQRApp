import 'dart:async';

import 'package:app/features/scanner/bloc/cubit/barcode_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerCamera extends StatefulWidget {
  const ScannerCamera({super.key});


  @override
  State<ScannerCamera> createState() => _ScannerCameraState();
}

class _ScannerCameraState extends State<ScannerCamera>
    with WidgetsBindingObserver {

  final controller = MobileScannerController(autoStart: false);
  StreamSubscription<Object?>? subscription;
  BarcodeCapture? detectedBarcode;

  BarcodeCubit get cubit => BlocProvider.of<BarcodeCubit>(context);

  void handleBarcode(BarcodeCapture? data) {
    if (data != null && data.barcodes.isNotEmpty) {
      final barcode = data.barcodes[0].rawValue;
      cubit.setBarcode(barcode);
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!controller.value.hasCameraPermission) {
      return;
    }

    switch (state) {
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
      case AppLifecycleState.paused:
        return;
      case AppLifecycleState.resumed:
        subscription = controller.barcodes.listen(handleBarcode);

        unawaited(controller.start());
      case AppLifecycleState.inactive:
        unawaited(subscription?.cancel());
        subscription = null;
        unawaited(controller.stop());
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    subscription = controller.barcodes.listen(handleBarcode);
    unawaited(controller.start());
  }

  @override
  Future<void> dispose() async {
    WidgetsBinding.instance.removeObserver(this);
    unawaited(subscription?.cancel());
    subscription = null;
    super.dispose();
    await controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MobileScanner(controller: controller);
  }
}
