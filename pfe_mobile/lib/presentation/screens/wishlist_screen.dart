import 'package:flutter/material.dart';
import 'package:pfe_mobile/data/repository/product_repository.dart';
import 'package:pfe_mobile/presentation/utils/favorite_list_provider.dart';
import 'package:pfe_mobile/presentation/widgets/message/error_image.dart';
import 'package:pfe_mobile/presentation/widgets/message/on_loading_image.dart';
import 'package:pfe_mobile/presentation/widgets/text_format_widget.dart';
import 'package:woosignal/models/response/products.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  late List<String> myStringList = [];
  late List<Product> myProductList = [];

  getFavoriteList() async {
    List<String> temp = await ShareFavoriteList.getSharedFavorite();
    myStringList.addAll(temp);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getFavoriteList();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text( 'My Wishlist' , style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body : Center(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: myStringList.length,
            itemBuilder: (BuildContext context, int index) {// myList[index]
              return WishlistItem(id: myStringList[index] ,);
            }
        ),
      ),
    );
  }
}

class WishlistItem extends StatefulWidget {
  final String id;
  const WishlistItem({Key? key, required this.id}) : super(key: key);
  @override
  State<WishlistItem> createState() => _WishlistItemState();
}

class _WishlistItemState extends State<WishlistItem> {
  Product? myProduct;

  getProduct() async {
    Product? temp = await ProductRepositoryImpl().getProductById(int.parse(widget.id));
    myProduct = temp!;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getProduct();
  }

  @override
  Widget build(BuildContext context) {
    if(myProduct == null){
      return Container();
    }
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Image.network(
              myProduct!.images.isEmpty?'':myProduct!.images[0].src??'',
              fit: BoxFit.fill,
              errorBuilder: (context, error, stackTrace) {
                return const ErrorImage();
              },
              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress){
                if(loadingProgress == null ) {
                  return child;
                }
                return const LoadingImage();
              },
            ),
          ),
          Flexible(
            child: Center(
              child: SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width - 100,
                child: TextFormatWidget.fitFormatTitle(
                    myProduct!.name??'', Theme.of(context).textTheme.headline3, 15, true, 5
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.remove_circle_outline),
            onPressed: () {
              ShareFavoriteList.setSharedFavorite(FavoriteListItem(idProduct: myProduct!.id.toString()));
              Navigator.pushNamed(context, '/favorite');
            },
          ),
        ],
      ),
    );
  }
}
