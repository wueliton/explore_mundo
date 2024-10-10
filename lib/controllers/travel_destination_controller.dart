import 'package:explore_mundo/models/travel_destination_item.dart';

class TravelDestinationController {
  final List<TravelDestinationItem> destinations = [
    TravelDestinationItem(
      id: '1a2b3c4d-5678-90ef-gh12-345678901234',
      destination: 'São Paulo',
      description: 'A capital financeira do Brasil',
      image:
          'https://litoralempauta.com.br/wp-content/uploads/2024/01/shutterstock_1474895630-scaled.jpg',
      subtitle: 'Cultura, gastronomia e vida noturna vibrante',
      price: 800,
      note: 4.5,
      daily: 5,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem Econômica',
        'Transporte do aeroporto',
        'City tour guiado',
      ],
    ),
    TravelDestinationItem(
      id: '2b3c4d5e-6789-01fa-gh23-456789012345',
      destination: 'Lisboa',
      description: 'A encantadora capital de Portugal',
      image:
          'https://www.passagenspromo.com.br/blog/wp-content/uploads/2019/06/viajar-para-lisboa.jpg',
      subtitle: 'História, cultura e belas paisagens',
      price: 2500,
      note: 4.7,
      daily: 7,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem de Luxo',
        'Seguro de Viagem',
        'Transfer para o hotel',
      ],
    ),
    TravelDestinationItem(
      id: '3c4d5e6f-7890-12fb-gh34-567890123456',
      destination: 'Salvador',
      description: 'A capital da Bahia',
      image:
          'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/06/dd/dd/0b.jpg',
      subtitle: 'Praias, carnaval e rica cultura afro-brasileira',
      price: 1200,
      note: 4.6,
      daily: 5,
      items: [
        'Passagem Aérea Primeiro Classe',
        'Hospedagem Econômica',
        'Passeio de barco',
        'Transfer aeroporto-hotel',
      ],
    ),
    TravelDestinationItem(
      id: '4d5e6f7g-8901-23fc-gh45-678901234567',
      destination: 'Nova Iorque',
      description: 'A cidade que nunca dorme',
      image:
          'https://www.newyorkwelcome.net/kimg/1200/good-to-know-before-you-travel-to-nyc.jpg',
      subtitle: 'Arte, moda e uma vida urbana agitada',
      price: 3000,
      note: 4.8,
      daily: 7,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem de Luxo',
        'Ingressos para museus',
        'City tour',
      ],
    ),
    TravelDestinationItem(
      id: '5e6f7g8h-9012-34gd-gh56-789012345678',
      destination: 'Paris',
      description: 'A cidade do amor',
      image:
          'https://viagemeturismo.abril.com.br/wp-content/uploads/2016/11/thinkstockphotos-4549879531.jpeg',
      subtitle: 'Romance, história e arte em cada esquina',
      price: 2800,
      note: 4.9,
      daily: 7,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem Romântica',
        'Cruzeiro no Sena',
        'Transfer para o aeroporto',
      ],
    ),
    TravelDestinationItem(
      id: '6f7g8h9i-0123-45he-gh67-890123456789',
      destination: 'Tóquio',
      description: 'Um mix fascinante de tradição e modernidade',
      image:
          'https://i0.wp.com/manualdoturista.com.br/wp-content/uploads/2013/03/Akihabara-Tokio2.jpg',
      subtitle: 'Cultura, tecnologia e uma culinária incrível',
      price: 3500,
      note: 4.7,
      daily: 7,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem de Luxo',
        'Experiência culinária',
        'Seguro de Viagem',
      ],
    ),
    TravelDestinationItem(
      id: '7g8h9i0j-1234-56if-gh78-901234567890',
      destination: 'Barcelona',
      description: 'Uma cidade cheia de arte e arquitetura',
      image:
          'https://www.segueviagem.com.br/wp-content/uploads/2020/11/shutterstock_Cr%C3%A9dito-editorial-TTstudio-Shutterstock.com-1.jpg',
      subtitle: 'Praias, cultura e uma atmosfera vibrante',
      price: 2400,
      note: 4.6,
      daily: 6,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem Econômica',
        'Ingressos para atrações',
        'Transfer para o aeroporto',
      ],
    ),
    TravelDestinationItem(
      id: '8h9i0j1k-2345-67jg-gh89-012345678901',
      destination: 'Cancún',
      description: 'Paraíso caribenho',
      image: 'https://www.teatur.com.br/wp-content/uploads/2018/01/cancun.jpg',
      subtitle: 'Praias de areia branca e águas cristalinas',
      price: 2000,
      note: 4.8,
      daily: 5,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem de Luxo',
        'Excursão de snorkeling',
        'Transfer aeroporto-hotel',
      ],
    ),
    TravelDestinationItem(
      id: '9i0j1k2l-3456-78kh-gh90-123456789012',
      destination: 'Florianópolis',
      description: 'A Ilha da Magia',
      image:
          'https://cdn.blablacar.com/wp-content/uploads/br/2024/04/05095136/praia-do-pantano-do-sul-floripa.webp',
      subtitle: 'Praias, natureza e excelente gastronomia',
      price: 1100,
      note: 4.5,
      daily: 4,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem Econômica',
        'Aluguel de carro',
        'Passeio de barco',
      ],
    ),
    TravelDestinationItem(
      id: '0j1k2l3m-4567-89il-gh01-234567890123',
      destination: 'Buenos Aires',
      description: 'A capital argentina',
      image:
          'https://media.istockphoto.com/id/667138246/pt/foto/argentina-buenos-aires-dawn-at-center-with-rush-hour.jpg?s=612x612&w=0&k=20&c=EfY_zF9qyCW9XIVEiBsevFwxfh_qwyGdONwVgSrIPZU=',
      subtitle: 'Cultura, tango e uma culinária incrível',
      price: 1500,
      note: 4.6,
      daily: 5,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem Econômica',
        'Show de tango',
        'Transfer aeroporto-hotel',
      ],
    ),
    TravelDestinationItem(
      id: '1k2l3m4n-5678-90jm-gh12-345678901234',
      destination: 'Amsterdã',
      description: 'Canais, bicicletas e arte',
      image:
          'https://rotaamsterdam.com.br/wp-content/uploads/2023/02/amsterdam-autumn-scaled.jpg',
      subtitle: 'Uma cidade única cheia de charme',
      price: 2600,
      note: 4.7,
      daily: 6,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem Econômica',
        'Aluguel de bicicleta',
        'Passeio pelos canais',
      ],
    ),
    TravelDestinationItem(
      id: '2l3m4n5o-6789-01kn-gh23-456789012345',
      destination: 'Praga',
      description: 'A cidade das cem torres',
      image:
          'https://segredosdomundo.r7.com/wp-content/uploads/2020/02/praga-historia-curiosidades-e-principais-atracoes-turisticas.jpg',
      subtitle: 'História rica e arquitetura deslumbrante',
      price: 2700,
      note: 4.5,
      daily: 6,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem de Luxo',
        'City tour guiado',
        'Transfer aeroporto-hotel',
      ],
    ),
    TravelDestinationItem(
      id: '3m4n5o6p-7890-12lo-gh34-567890123456',
      destination: 'Mendoza',
      description: 'A terra do vinho',
      image:
          'https://viajanteemserie.com.br/wp-content/uploads/2024/01/Mendoza-Vinhedos-e-Vistas-dos-Andes-.webp',
      subtitle: 'Degustações de vinhos e paisagens de montanha',
      price: 1400,
      note: 4.6,
      daily: 5,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem Econômica',
        'Tour de vinhos',
        'Transfer para as vinícolas',
      ],
    ),
    TravelDestinationItem(
      id: '4n5o6p7q-8901-23pm-gh45-678901234567',
      destination: 'Dubai',
      description: 'Uma cidade futurista',
      image:
          'https://www.cloud-europamundo.com/img/carousel/big/Dubai_20210222195713.jpg',
      subtitle: 'Luxo, inovação e cultura árabe',
      price: 4000,
      note: 4.8,
      daily: 7,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem de Luxo',
        'Safari no deserto',
        'Transfer para o aeroporto',
      ],
    ),
    TravelDestinationItem(
      id: '5o6p7q8r-9012-34qn-gh56-789012345678',
      destination: 'Roma',
      description: 'A cidade eterna',
      image:
          'https://blog.assistentedeviagem.com.br/wp-content/webp-express/webp-images/uploads/2018/12/pontos-turisticos-em-roma-5-1024x683.jpg.webp',
      subtitle: 'História, arte e culinária divina',
      price: 2900,
      note: 4.7,
      daily: 6,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem Econômica',
        'Ingressos para o Coliseu',
        'Transfer aeroporto-hotel',
      ],
    ),
    TravelDestinationItem(
      id: '6p7q8r9s-0123-45ro-gh67-890123456789',
      destination: 'Santiago',
      description: 'A capital chilena',
      image:
          'https://belvitur.com.br/wp-content/uploads/2023/06/Silver-Origin1-2023-06-16T003257.199-1-2048x1102.jpg',
      subtitle: 'Cultura, montanhas e uma culinária deliciosa',
      price: 1300,
      note: 4.5,
      daily: 5,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem de Luxo',
        'City tour',
        'Transfer para o aeroporto',
      ],
    ),
    TravelDestinationItem(
      id: '7q8r9s0t-1234-56sp-gh78-901234567890',
      destination: 'Londres',
      description: 'A capital britânica',
      image:
          'https://www.civitatis.com/blog/wp-content/uploads/2024/01/shutterstock_607235345-1920x1280.jpg',
      subtitle: 'História, cultura e vida cosmopolita',
      price: 3100,
      note: 4.8,
      daily: 7,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem de Luxo',
        'Ingressos para o Museu Britânico',
        'Transfer aeroporto-hotel',
      ],
    ),
    TravelDestinationItem(
      id: '8r9s0t1u-2345-67qt-gh89-012345678901',
      destination: 'Cairo',
      description: 'A terra das pirâmides',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Cairo_From_Tower_%28cropped%29.jpg/640px-Cairo_From_Tower_%28cropped%29.jpg',
      subtitle: 'História milenar e cultura fascinante',
      price: 3000,
      note: 4.6,
      daily: 6,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem Econômica',
        'Excursão às pirâmides',
        'Transfer aeroporto-hotel',
      ],
    ),
    TravelDestinationItem(
      id: '9s0t1u2v-3456-78ru-gh90-123456789012',
      destination: 'Hong Kong',
      description: 'Um dos principais centros financeiros do mundo',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Hong_Kong_Island_Skyline_201108.jpg/640px-Hong_Kong_Island_Skyline_201108.jpg',
      subtitle: 'Cultura vibrante e vistas deslumbrantes',
      price: 3200,
      note: 4.7,
      daily: 7,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem de Luxo',
        'Cruzeiro no porto',
        'Transfer para o aeroporto',
      ],
    ),
    TravelDestinationItem(
      id: '0t1u2v3w-4567-89sv-gh01-234567890123',
      destination: 'Toronto',
      description: 'A maior cidade do Canadá',
      image:
          'https://cdn.britannica.com/35/100235-050-CE3936EE/view-CN-Tower-Toronto-skyline-observation-deck.jpg',
      subtitle: 'Multiculturalismo e belezas naturais',
      price: 3500,
      note: 4.6,
      daily: 6,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem Econômica',
        'Tour na CN Tower',
        'Transfer aeroporto-hotel',
      ],
    ),
    TravelDestinationItem(
      id: '1u2v3w4x-5678-90tw-gh12-345678901234',
      destination: 'Berlim',
      description: 'História e inovação',
      image: 'https://pontospravoar.com/wp-content/uploads/2023/07/Berlim.jpg',
      subtitle: 'Uma cidade repleta de cultura e arte',
      price: 2800,
      note: 4.7,
      daily: 6,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem de Luxo',
        'Passeio em Berlim Oriental',
        'Transfer para o aeroporto',
      ],
    ),
    TravelDestinationItem(
      id: '2v3w4x5y-6789-01ux-gh23-456789012345',
      destination: 'Copenhague',
      description: 'A capital dinamarquesa',
      image:
          'https://jornalperiscopio.com.br/site/wp-content/uploads/2023/05/VIAGEM-COPENHAGUE-16-05-23-1400x933.jpg',
      subtitle: 'Cultura nórdica e design moderno',
      price: 2900,
      note: 4.6,
      daily: 6,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem Econômica',
        'Tour de bicicleta',
        'Transfer para o aeroporto',
      ],
    ),
    TravelDestinationItem(
      id: '3w4x5y6z-7890-12vy-gh34-567890123456',
      destination: 'Oslo',
      description: 'A capital da Noruega',
      image:
          'https://www.passagenspromo.com.br/blog/wp-content/uploads/2022/03/Oslo-Noruega-740x415.jpg',
      subtitle: 'Belezas naturais e cultura rica',
      price: 3000,
      note: 4.5,
      daily: 6,
      items: [
        'Passagem Aérea Econômica',
        'Hospedagem de Luxo',
        'Passeio pelos fiordes',
        'Transfer para o aeroporto',
      ],
    ),
  ];

  List<TravelDestinationItem> fetchItems() {
    return destinations.sublist(0, 3);
  }

  TravelDestinationItem getItem(String id) {
    return destinations.where((item) => item.id == id).first;
  }

  List<TravelDestinationItem> find(String search) {
    return destinations
        .where((item) => item.destination.toLowerCase().contains(search))
        .toList();
  }

  List<TravelDestinationItem> allItems() {
    return destinations;
  }

  List<TravelDestinationItem> randomDestinations() {
    var duplicated = destinations.toList();
    duplicated.shuffle();
    return duplicated.sublist(0, 3);
  }

  List<TravelDestinationItem> bestTravelPackages() {
    var duplicated = destinations.toList();
    duplicated.sort((a, b) => b.note.compareTo(a.note));

    return duplicated.sublist(0, 3);
  }

  List<TravelDestinationItem> travelPackages() {
    var duplicated = destinations.toList();
    duplicated.sort((a, b) => b.note.compareTo(a.note));

    return destinations;
  }
}
