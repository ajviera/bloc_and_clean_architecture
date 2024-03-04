import 'package:flutter/material.dart';

class TrashButton extends StatelessWidget {
  final VoidCallback deleteAction;
  const TrashButton({super.key, required this.deleteAction});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.0,
      child: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: deleteAction,
      ),
    );
  }
}
