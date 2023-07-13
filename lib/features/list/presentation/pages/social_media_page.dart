import 'package:atomic_architecture_poc/features/list/presentation/templates/searchable_list_template.dart';
import 'package:flutter/material.dart';

class SocialMediaPage extends StatefulWidget {
  const SocialMediaPage({super.key});

  @override
  State<SocialMediaPage> createState() => _SocialMediaPageState();
}

class _SocialMediaPageState extends State<SocialMediaPage> {
  List<String> items = [
    "Google",
    "Facebook",
    "Instagram",
    "Twitter",
    "LinkedIn",
    "Snapchat",
    "TikTok",
    "Pinterest",
    "Reddit",
    "Tumblr",
    "Flickr",
    "Quora",
    "Vimeo",
    "Vine",
    "Periscope",
  ];
  String search = "";

  @override
  Widget build(BuildContext context) {
    

    return SearchableListTemplate(
        items: items,
        );
  }
}