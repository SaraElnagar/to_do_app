import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../app_colors.dart';
import '../../providers/app_config_provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  var providerTheme;

  @override
  Widget build(BuildContext context) {
    providerTheme = Provider.of<AppConfigProviderTheme>(context);
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
                onTap: () {
                  providerTheme.changeTheme(ThemeMode.light);
                },
                child: !providerTheme.isDarkMode()
                    ? getSelectedItem(
                        AppLocalizations.of(context)!.light, context)
                    : getUnSelectedItemWidget(
                        AppLocalizations.of(context)!.light, context)),
            SizedBox(
              height: 15,
            ),
            InkWell(
                onTap: () {
                  providerTheme.changeTheme(ThemeMode.dark);
                },
                child: providerTheme.isDarkMode()
                    ? getSelectedItem(
                        AppLocalizations.of(context)!.dark, context)
                    : getUnSelectedItemWidget(
                        AppLocalizations.of(context)!.dark, context)),
          ],
        ));
  }

  Widget getSelectedItem(String text, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        !providerTheme.isDarkMode()
            ? Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: AppColors.blackDarkColor),
              )
            : Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: AppColors.whiteColor),
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
    return !providerTheme.isDarkMode()
        ? Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.blackDarkColor),
          )
        : Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.whiteColor),
          );
  }
}
