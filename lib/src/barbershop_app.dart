import 'package:asyncstate/widget/async_state_builder.dart';
import 'package:barbershop/src/features/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'core/ui/widgets/barbershop_load.dart';

class BarbershopApp extends StatelessWidget {
  const BarbershopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncStateBuilder(
      customLoader: const BarbershopLoad(),
      builder: (asyncNavigatorObserver) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorObservers: [asyncNavigatorObserver],
          title: 'Dw Barbershop',
          routes: {
            '/': (_) => const SplashPage(),
          },
        );
      },
    );
  }
}
