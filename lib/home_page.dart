import 'dart:html';

import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

import 'dart:ui' as ui;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late WebViewXController webviewController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("adsense ad"),
          adsenseAdsView(),
          // adsenseAdsView(),
        ],
      ),
    ));
  }

  Widget adsenseAdsView() {
// ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        'adViewType',
        (int viewID) => IFrameElement()
          ..width = '320'
          ..height = '100'
          ..src = 'assets/adview.html'
          // '<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-3304351919932474"crossorigin="anonymous"></script> <!-- test --> <ins class="adsbygoogle"style="display:block"data-ad-client="ca-pub-3304351919932474"data-ad-slot="5522124761"data-ad-format="auto"data-full-width-responsive="true"></ins><script>(adsbygoogle = window.adsbygoogle || []).push({});</script>'
          ..style.border = 'none');

    return Column(
      children: const [
        SizedBox(
          height: 100.0,
          width: 320.0,
          child: HtmlElementView(
            viewType: 'adViewType',
          ),
        ),
        Text("adview"),
      ],
    );
  }
}
