import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'all_providers.dart';

class RiverpodBasics extends StatelessWidget {
  const RiverpodBasics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('material app build tetiklendi');
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('myhomepage build tetiklendi');
    return Scaffold(
      appBar: AppBar(
        title: Consumer(
          builder: (context, ref, child) {
            var title = ref.watch(titleProvider);
            return Text(title);
          },
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyText(),
            MyCounterText(),
          ],
        ),
      ),
      floatingActionButton: const MyFloatingActionButton(),
    );
  }
}

class MyCounterText extends ConsumerWidget {
  const MyCounterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('mycountertext build tetiklendi');
    var sayac = ref.watch(sayacStateProvider);
    return Text(
      sayac.toString(),
      style: Theme.of(context).textTheme.headline4,
    );
  }
}

class MyFloatingActionButton extends ConsumerWidget {
  const MyFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('floating action button build tetiklendi');
    return FloatingActionButton(
      onPressed: () {
        ref.read(sayacStateProvider.state).state++;
      },
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}

class MyText extends ConsumerWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('mytext build tetiklendi');
    //var text = ref.watch(textProvider);
    return Text(ref.watch(textProvider));
  }
}
