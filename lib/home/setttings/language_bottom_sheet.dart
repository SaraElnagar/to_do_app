import 'package:flutter/material.dart';
import 'package:to_do_app/app_colors.dart';
import '../../providers/app_config_provider.dart';
import '../../providers/app_config_provider_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageBottomSheet extends StatelessWidget {
  var providerTheme;

  @override
  Widget build(BuildContext context) {
    var providerLanguage = Provider.of<AppConfigProvider>(context);
    providerTheme = Provider.of<AppConfigProviderTheme>(context);
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
                onTap: () {
                  providerLanguage.changeLanguage("en");
                },
                child: providerLanguage.appLanguage == "en"
                    ? getSelectedItem(
                        AppLocalizations.of(context)!.english, context)
                    : getUnSelectedItemWidget(
                        AppLocalizations.of(context)!.english, context)),
            SizedBox(
              height: 15,
            ),
            InkWell(
                onTap: () {
                  providerLanguage.changeLanguage("ar");
                },
                child: providerLanguage.appLanguage == "ar"
                    ? getSelectedItem(
                        AppLocalizations.of(context)!.arabic, context)
                    : getUnSelectedItemWidget(
                        AppLocalizations.of(context)!.arabic, context)),
          ],
        ));
  }

  Widget getSelectedItem(String text, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: AppColors.blackDarkColor),
        ),
        Icon(
          Icons.check,
          color: AppColors.primaryColor,
          size: 30,
        ),
      ],
    );
  }

  Widget getUnSelectedItemWidget(String text, BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(color: AppColors.blackDarkColor),
    );
  }
}
