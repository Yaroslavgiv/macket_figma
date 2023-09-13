import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';
import '../utils/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class QRViewExample extends StatefulWidget {
  const QRViewExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExample> {
  final GlobalKey<_QRViewExampleState> _key = GlobalKey();
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  // final Uri _url = Uri.parse(result!.code.toString());

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            // flex: 4,
            child: _buildQrView(context),
          ),
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 230.0
        : 300.0;
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: backgroundColorScaffold,
          borderRadius: 20,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
    );
  }

  void _onQRViewCreated(QRViewController controller) async {
    final url = Uri.encodeFull(result!.code.toString());
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() async {
        result = scanData;
        if (result != null) {
          if (await canLaunch(url)) {
            // launch(url);
            print(url);
          }
        }
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
  // Future<void> _launchUrl() async {
  //   final url = Uri.encodeFull(result!.code.toString());
  //     void _launchURL() async {
  //   if (await canLaunch(url)) {
  //     launch(url);
  //   }
  // }

    // final url = Uri.parse(result!.code.toString());
    // if (!await launchUrl(url)) {
    //   await launch(
    //     url.toString(),
    //     forceSafariVC: true,
    //     forceWebView: true,
    //     enableJavaScript: true,

    //   );
    // } else {throw Exception('Could not launch $Uri.parse(result!.code.toString())');}
  // }
// }
