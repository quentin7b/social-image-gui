import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_network_mate/providers/theme.provider.dart';
import 'package:social_network_mate/views/carousel_editor.widget.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: switch (ref.watch(themeProvider)) {
        ThemeValue.light => ThemeData.light(),
        ThemeValue.dark => ThemeData.dark(),
        ThemeValue.os => ThemeData.from(
            colorScheme: ColorScheme.fromSwatch().copyWith(
              brightness: Brightness.light,
            ),
          ),
      },
      home: const Scaffold(
        body: Center(child: CarouselEditor()),
      ),
    );
  }
}

// Container(
//             height: 1080,
//             width: 1080,
//             padding: const EdgeInsets.all(30),
//             child: Stack(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.5),
//                         spreadRadius: 5,
//                         blurRadius: 10,
//                         offset: const Offset(0, 3),
//                       ),
//                     ],
//                     borderRadius: BorderRadius.circular(30),
//                     color: const Color(0xFF081239),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.topCenter,
//                   child: Container(
//                     padding: const EdgeInsets.all(30),
//                     child: Text(
//                       'L\'intelligence documentaire',
//                       style: Theme.of(context).textTheme.titleLarge?.copyWith(
//                             color: const Color(0xFFfdc803),
//                             fontSize: 42,
//                           ),
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.topRight,
//                   child: Container(
//                     margin: const EdgeInsets.only(
//                       top: 80,
//                       right: 110,
//                     ),
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                     decoration: BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.5),
//                           spreadRadius: 5,
//                           blurRadius: 10,
//                           offset: const Offset(0, 3),
//                         ),
//                       ],
//                       borderRadius: const BorderRadius.only(
//                         topLeft: Radius.circular(8),
//                         bottomRight: Radius.circular(8),
//                       ),
//                       color: const Color(0xffffffff),
//                     ),
//                     child: Text(
//                       'Dans le secteur RH & Juridique',
//                       style: Theme.of(context).textTheme.titleLarge?.copyWith(
//                             fontSize: 34,
//                           ),
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: Container(
//                     width: double.infinity,
//                     padding: const EdgeInsets.all(32),
//                     margin: const EdgeInsets.all(32),
//                     decoration: BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.white.withOpacity(0.8),
//                           spreadRadius: 2,
//                           blurRadius: 3,
//                           offset: const Offset(0, 1),
//                         ),
//                       ],
//                       borderRadius: BorderRadius.circular(16),
//                       color: const Color(0xffffffff),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Text(
//                           '🤝 Assistant pour le suivi RH',
//                           style:
//                               Theme.of(context).textTheme.titleLarge?.copyWith(
//                                     fontSize: 28,
//                                   ),
//                         ),
//                         const Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Divider(),
//                         ),
//                         Text(
//                           '📑 Controle de conformité et analyse de contrats',
//                           style:
//                               Theme.of(context).textTheme.titleLarge?.copyWith(
//                                     fontSize: 28,
//                                   ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),