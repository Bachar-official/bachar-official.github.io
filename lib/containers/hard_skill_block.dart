import 'package:flutter/material.dart';
import 'package:profile/containers/tag.dart';

class HardSkillBlock extends StatelessWidget {
  final String localeString;
  const HardSkillBlock({super.key, required this.localeString});

  @override
  Widget build(BuildContext context) {
    final [header, tags] = localeString.split(':');
    return ListTile(
      title: Text(header, style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Wrap(
        spacing: 3,
        runSpacing: 3,
        children: tags.split(';').map((tag) => Tag(text: tag, color: Colors.grey)).toList(),
      ),
    );
  }
}
