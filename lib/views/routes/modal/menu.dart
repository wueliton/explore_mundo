import 'package:explore_mundo/contants/routes.dart';
import 'package:explore_mundo/contants/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../widgets/menu_item/menu_item.dart';

class MenuModal extends StatelessWidget {
  const MenuModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MenuItem(
            title: 'Destinos',
            icon: Icons.travel_explore,
            route: Routes.destinations(),
          ),
          MenuItem(
            title: 'Pacotes de viagem',
            icon: Icons.airplane_ticket_outlined,
            route: Routes.travelPackages(),
          ),
          MenuItem(
            title: 'Contato',
            icon: Icons.phone_android_rounded,
            route: Routes.about(),
          ),
          MenuItem(
            title: 'Sobre Nós',
            icon: Icons.info_outline,
            route: Routes.about(),
          ),
          const SizedBox(
            height: 40,
          ),
          SvgPicture.asset(
            'assets/explore_mundo_icon.svg',
            semanticsLabel: 'Explore Mundo',
            height: 40,
            colorFilter:
                const ColorFilter.mode(Colors.black12, BlendMode.srcIn),
          ),
          const SizedBox(
            height: 12,
          ),
          Typo.Caption('Expore Mundo - 2024', color: Colors.black26),
        ],
      ),
    );
  }
}
