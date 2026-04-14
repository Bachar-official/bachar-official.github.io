import 'package:flutter/material.dart';
import 'package:profile/constants/constants.dart';

class BioWidget extends StatelessWidget {
  final String author;
  final String position;
  final Future<void> Function() onOpenGithub;
  final Future<void> Function() onOpenTelegram;
  final Future<void> Function() onOpenEmail;
  const BioWidget(
      {super.key,
      required this.author,
      required this.position,
      required this.onOpenGithub,
      required this.onOpenTelegram,
      required this.onOpenEmail});

  @override
  Widget build(BuildContext context) {
    const size = 25.0;
    const padding = EdgeInsets.symmetric(horizontal: 10.0);

    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FractionallySizedBox(
            child: Image.asset(
              'assets/photos/avatar.png',
              fit: BoxFit.fitWidth,
              width: 400,
            ),
          ),
          Padding(
            padding: padding,
            child: FractionallySizedBox(
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  author,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: size),
                ),
              ),
            ),
          ),
          Padding(
            padding: padding,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                position,
                style: const TextStyle(fontSize: size),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: onOpenTelegram,
                icon: const Icon(Symbols.telegram, size: size,),
              ),
              IconButton(
                onPressed: onOpenEmail,
                icon: const Icon(Symbols.email, size: size,),
              ),
              IconButton(
                onPressed: onOpenGithub,
                icon: const Icon(Symbols.github, size: size,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
