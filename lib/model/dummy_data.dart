// ignore_for_file: public_member_api_docs, sort_constructors_first
class Menu {
  final String name;
  final String price;
  final String img;
  final String desc;

  Menu({
    required this.name,
    required this.price,
    required this.img,
    required this.desc,
  });
}

final List<Menu> allMenu = [
  Menu(
    name: 'Paket Nasi Box',
    price: '30000',
    img: 'https://www.homade.id/wp-content/uploads/2020/05/mealbox-part.png',
    desc: 'Nasi putih, ayam teriyaki, sambal, tempe',
  ),
  Menu(
    name: 'Paket Nasi Kuning',
    price: '35000',
    img:
        'https://doyanresep.com/wp-content/uploads/2020/05/resep-nasi-kuning.jpg',
    desc: 'Nasi kuning, timun, ayam goreng, gelur dadar, lalapan',
  ),
  Menu(
    name: 'Pake Nasi Liwet',
    price: '40000',
    img:
        'https://images.tokopedia.net/img/cache/700/VqbcmM/2021/8/30/6ebbf162-334a-4d83-a537-9690d1273a9e.jpg',
    desc: 'Nasi liwet, ayam goreng, tahu, tempe',
  ),
];
