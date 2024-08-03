import 'package:flutter/material.dart';
import 'package:to_do_app/app_colors.dart';
import 'package:to_do_app/home/setttings/language_bottom_sheet.dart';
import 'package:to_do_app/home/setttings/theme_bottom_sheet.dart';
import '../../providers/app_config_provider_theme.dart';
import '../../providers/app_config_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var providerLanguage = Provider.of<AppConfigProvider>(context);
    var providerTheme = Provider.of<AppConfigProviderTheme>(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.titleMedium),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: !providerTheme.isDarkMode()
                ? BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(color: AppColors.primaryColor))
                : BoxDecoration(
                    color: AppColors.backgroundDarkColor,
                    border: Border.all(color: AppColors.primaryColor)),
            child: InkWell(
              onTap: () {
                showLanguageBottomSheet();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      providerLanguage.appLanguage == "en"
                          ? AppLocalizations.of(context)!.english
                          : AppLocalizations.of(context)!.arabic,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 15, color: AppColors.primaryColor)),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.primaryColor,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(AppLocalizations.of(context)!.mode,
              style: Theme.of(context).textTheme.titleMedium),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: !providerTheme.isDarkMode()
                ? BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(color: AppColors.primaryColor))
                : BoxDecoration(
                    color: AppColors.backgroundDarkColor,
                    border: Border.all(color: AppColors.primaryColor)),
            child: InkWell(
              onTap: () {
                showThemeBottomSheet();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      !providerTheme.isDarkMode()
                          ? AppLocalizations.of(context)!.light
                          : AppLocalizations.of(context)!.dark,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 15, color: AppColors.primaryColor)),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.primaryColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheet(),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => ThemeBottomSheet());
  }
}
