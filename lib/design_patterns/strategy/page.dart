import 'package:flutter/material.dart';
import 'package:solid_principles_design_patterns/design_patterns/strategy/renderer.dart';

class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  String? renderer;
  Renderer? currRenderer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Strategy Design Pattern'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            const Text(
              'Choose  Renderer',
              style: TextStyle(fontSize: 18),
            ),
            const Divider(),
            RadioListTile(
              title: const Text('Render Image'),
              value: 'image',
              groupValue: renderer,
              onChanged: (value) {
                setState(() {
                  renderer = value.toString();
                  currRenderer = ImageRenderer();
                });
              },
            ),
            RadioListTile(
              title: const Text('Render Button'),
              value: 'button',
              groupValue: renderer,
              onChanged: (value) {
                setState(() {
                  renderer = value.toString();
                  currRenderer = ButtonRenderer();
                });
              },
            ),
            RadioListTile(
              title: const Text('Render Widget'),
              value: 'widget',
              groupValue: renderer,
              onChanged: (value) {
                setState(() {
                  renderer = value.toString();
                  currRenderer = WidgetRenderer();
                });
              },
            ),
            const Divider(),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              child: currRenderer?.render(),
            )
          ],
        ),
      ),
    );
  }
}
