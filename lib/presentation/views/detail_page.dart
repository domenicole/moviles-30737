import 'package:flutter/material.dart';
import '../../domain/entities/cat.dart';

class DetallePage extends StatelessWidget {
  const DetallePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Cat cat = ModalRoute.of(context)!.settings.arguments as Cat;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle del gato'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  cat.imageUrl,
                  width: 280,
                  height: 280,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'ID: ${cat.id}',
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
              if (cat.width != null && cat.height != null) ...[
                const SizedBox(height: 8),
                Text(
                  'Resolución: ${cat.width} × ${cat.height}',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
