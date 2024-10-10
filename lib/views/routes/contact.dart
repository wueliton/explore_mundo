import 'package:explore_mundo/contants/typography.dart';
import 'package:explore_mundo/views/widgets/button/button.dart';
import 'package:explore_mundo/views/widgets/details_app_bar/details_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const DetailsAppBar(title: ''),
          SliverToBoxAdapter(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/explore_mundo_logo.svg',
                      semanticsLabel: 'Explore Mundo',
                      height: 100,
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Typo.Body2(
                        'A Explore Mundo, criada em 2015 por amigos apaixonados por viagens, é uma agência que oferece roteiros personalizados e experiências únicas, como aulas de culinária na Itália e safáris na África. Comprometida com a sustentabilidade, a agência apoia iniciativas que preservam culturas locais, tornando-se sinônimo de qualidade no turismo e inspirando viajantes a explorar o mundo de forma autêntica.',
                        align: TextAlign.center),
                    const SizedBox(
                      height: 40,
                    ),
                    Button(
                      'contato@exploremundo.com.br',
                      icon: const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.mail,
                          color: Colors.white,
                          size: 16.0,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    Button(
                      '(11) 90000-0000',
                      icon: const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.mail,
                          color: Colors.white,
                          size: 16.0,
                        ),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
