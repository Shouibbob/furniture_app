class CardsModel {
  String? image;
  String? typeTable;
  String? price;
  CardsModel({
    required this.image,
    required this.typeTable,
    required this.price,
  });
}

List<CardsModel> cards = [
  CardsModel(
    image:
        'https://upload.wikimedia.org/wikipedia/commons/7/7f/4Coffee_Table.jpg',
    typeTable: 'Caffe Table',
    price: '\$ 50.00',
  ),
  CardsModel(
    image:
        'https://assets.weimgs.com/weimgs/rk/images/wcm/products/202414/0028/open-box-classic-cafe-dining-chair-set-of-2-o.jpg',
    typeTable: 'Caffe Chair',
    price: '\$ 20.00',
  ),
  CardsModel(
    image:
        'https://www.theurbaneditions.com/cdn/shop/products/Solid-oak-minimalist-TV-Stand-Henley-140cm-1_b0c97145-e06b-4fcd-b841-c7db9f6dd415.jpg?v=1614675634&width=2048',
    typeTable: 'Minimal Stand',
    price: '\$ 25.00',
  ),
  CardsModel(
    image:
        'https://www.livingspaces.com/globalassets/images/blog/2020/06/0623_simple_black_desk.jpg',
    typeTable: 'Minimal Desk',
    price: '\$ 50.00',
  ),
  CardsModel(
    image:
        'https://modrngy.com/cdn/shop/products/20191111155421_grande.png?v=1659307689',
    typeTable: 'Minimal Lamp',
    price: '\$ 12.00',
  ),
];
