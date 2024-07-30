import 'package:app_advicer/application/core/services/theme_service.dart';
import 'package:app_advicer/application/pages/adivice/widgets/advice_text.dart';
import 'package:app_advicer/application/pages/adivice/widgets/custom_buttom.dart';
import 'package:app_advicer/application/pages/adivice/widgets/error_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdvicerPage extends StatelessWidget {
  const AdvicerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Advicer  APP",
          style: themeData.textTheme.headlineMedium,
        ),
        centerTitle: true,
        actions: [
          Switch.adaptive(
              activeTrackColor: themeData.cardColor,
              value: Provider.of<ThemeService>(context).isDarkModeOn,
              onChanged: (_) {
                Provider.of<ThemeService>(context, listen: false).toggleTheme();
              })
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: ErrorMessage(
                  message: "Your advice is waiting for you!",
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: AdviceText(
                  advice: "Your advice is waiting for you!",
                ),
              ),
            ),
            SizedBox(
                height: 200,
                child: Center(
                  child: CustomButtom(),
                )),
          ],
        ),
      ),
    );
  }
}
