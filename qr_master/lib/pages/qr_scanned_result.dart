import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QRScannedResult extends StatelessWidget {
  const QRScannedResult(this.scannedResult, {super.key});

  final String scannedResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR code result'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Scanned Code:",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(scannedResult,
                  style: const TextStyle(
                    fontSize: 16,
                  )),
              Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (scannedResult.isNotEmpty) {
                            Clipboard.setData(
                                ClipboardData(text: scannedResult));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Copied to Clipboard"),
                              ),
                            );
                          }
                        },
                        child: const Text("Copy"),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
