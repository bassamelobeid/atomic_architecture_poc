import 'package:atomic_architecture_poc/core/presentation/atoms/deriv_small_text.dart';
import 'package:atomic_architecture_poc/core/theme/foundation.dart';
import 'package:flutter/material.dart';
import 'package:workmanager/workmanager.dart';

class DerivSlidableListItem extends StatelessWidget {
  final String text;
  const DerivSlidableListItem(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Workmanager().registerOneOffTask("batata", "taskName");
      },
      child: Container(
                    height: 50,
                    color: FoundationColors.cardBackground,
                    child: Center(
                      child: DerivSmallText(text),
                    ),
                  ),
    );
  }
}