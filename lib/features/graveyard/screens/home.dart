import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:startup_graveyard/features/graveyard/state/di_provider.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final grave = ref.watch(getAllGraveyardProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text('data'),
          grave.when(data: (data) {
            print(data);
            return Text(data.length.toString());
          }, error: (e, _) {
            return Text(e.toString());
          }, loading: () {
            return const CircularProgressIndicator();
          })
        ],
      ),
    );
  }
}
