import 'package:flutter/material.dart';
import 'package:solid_principles_design_patterns/design_patterns/observer/counter_controller.dart';

class CountPage extends StatefulWidget {
  const CountPage({super.key});

  @override
  State<CountPage> createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  late CounterController _counterController;

  @override
  void initState() {
    _counterController = CounterController();
    super.initState();
  }

  @override
  void dispose() {
    _counterController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Streams Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(),
          Center(
            child: StreamBuilder<int>(
              stream: _counterController.counterStream,
              initialData: 0,
              builder: (
                BuildContext context,
                AsyncSnapshot<int> snapshot,
              ) {
                if (snapshot.hasData) {
                  debugPrint(
                      '_MyHomePageState - <receive> <event notification> data: ${snapshot.data}');
                  return Text(
                    '${snapshot.data}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                } else {
                  return Text(
                    'Empty data',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: () {
                  debugPrint('_MyHomePageState - <send> <event trigger>');
                  _counterController.eventSink.add(Event.decrement);
                },
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: () {
                  debugPrint('_MyHomePageState - <send> <event trigger>');
                  _counterController.eventSink.add(Event.increment);
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
