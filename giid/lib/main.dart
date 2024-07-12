import 'package:flutter/material.dart';
import 'package:giid/home_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:giid/scarch/search.dart';
import 'package:giid/theme_provider/theme_provider.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'setting_page.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: themeProvider.themeMode,
            theme: MyThemes.darkTheme,
            darkTheme: MyThemes.lightTheme,
            home: const SplachScreen(),
          );
        },
      );
}

class SplachScreen extends StatelessWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset('images/logo.png'),
        ],
      ),
      backgroundColor: Colors.black,
      nextScreen: const RootPage(),
      splashIconSize: 150,
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giid'),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}

// class CustomSearchDelegate extends SearchDelegate {
//   List<String> searchTerms = [
//     'Hall1-The Phantom of the Opera',
//     'Hall2-Queensland Ballet',
//     'Hall3-Musical Recital',
//     'Hall4-Artist Anna Fafaliou Brings leep Performance to Peak',
//     'Hall5-Schauspielhaus Wuppertal',
//     'Hall6-Traditional Art',
//   ];
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: const Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: const Icon(Icons.arrow_back),
//       onPressed: () {
//         close(context, null);
//       },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var events in searchTerms) {
//       if (events.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(events);
//       }
//     }
//     return ListView.builder(
//         itemCount: matchQuery.length,
//         itemBuilder: (context, index) {
//           var result = matchQuery[index];
//           return ListTile(
//             title: Text(result),
//           );
//         });
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var events in searchTerms) {
//       if (events.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(events);
//       }
//     }
//     return ListView.builder(
//         itemCount: matchQuery.length,
//         itemBuilder: (context, index) {
//           var result = matchQuery[index];
//           return ListTile(
//             title: Text(result),
//           );
//         });
//   }
// }
