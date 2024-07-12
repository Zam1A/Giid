import 'package:flutter/material.dart';
import 'package:giid/theme_provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Column(
      children: [
        ListTile(
          title: Text('Theme Switch'),
          leading: const Icon(Icons.sunny),
          trailing: Switch.adaptive(
              value: themeProvider.isDarkMode,
              onChanged: (value) {
                final provider =
                    Provider.of<ThemeProvider>(context, listen: false);
                provider.toggleTheme(value);
              }),
          onTap: () {},
        ),
      ],
    );
  }
}
