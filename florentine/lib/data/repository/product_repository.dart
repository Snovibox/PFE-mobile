import 'package:woosignal/models/response/product_category.dart';
import 'package:woosignal/models/response/product_tag.dart';
import 'package:woosignal/models/response/products.dart';
import 'package:woosignal/woosignal.dart';
import 'dart:math';


// my interface
abstract class ProductRepository {
  Future<Product?> getProductById(int id);
  Future<List<Product>> getAll();
  Future<List<Product>> getNewProduct();
  Future<List<Product>> getProductbyCategoryName(String name);
  Future<List<Product>> getItemsSearched(String key);
  Future<List<Product>> getItemsSearchedByCategoryAndTags(ProductCategory cat,ProductTag tag, String key);
  Future<List<ProductTag>?> getAllTags();
  Future<List<Attribute>> getAttribute(Product product);
  Future<List<Product>> getPopularProduct(ProductCategory cat);
}


//my implemented class
class ProductRepositoryImpl implements ProductRepository {
  WooSignal woo = WooSignal.instance;

  ProductRepositoryImpl(){}

  //-----------------------------------------------------------------------------------
  @override
  Future<List<Product>> getAll() async{
    try{
      List<Product> products = await woo.getProducts() ;

      print(products[0].attributes);

      return products;
    } catch(e) {
      print(e);
      return [];
    }
  }

  //----------------------------------------------------------------------------------- tested
  @override
  Future<List<Product>> getAllPagination(int index, int nbPerPage) async{
    try{
      List<Product> products = await woo.getProducts() ;

      return products;
    } catch(e) {
      print(e);
      return [];
    }
  }


  //-----------------------------------------------------------------------------------
  @override
  Future<Product?> getProductById(int id) async {
    Product? product = await woo.retrieveProduct(id: id) ;

    print(product);

    return product;
  }

  //-----------------------------------------------------------------------------------
  @override
  Future<List<Product>> getNewProduct() async {
    try{
      List<Product> products = await woo.getProducts() ;

      print(products);

      return products;
    } catch(e) {
      print(e);
      return [];
    }
  }



  //----------------------------------------------------------------------------------- tsy mbola mety
  @override
  Future<List<Product>> getProductbyCategoryName(String name) async {
    try{
      List<Product> products = await woo.getProducts() ;

      print(products);

      return products;
    } catch(e) {
      print(e);
      return [];
    }
  }

  //----------------------------------------------------------------------------------- tested // but the product model only // must create an serched cubit for handle the searche model // tsy mbola mi-prendre en compte ny langue
  @override
  Future<List<Product>> getItemsSearched(String key) async {
    if(key == ''){
      return [];
    }

    List<Product> products = await woo.getProducts(search: key) ;

    print(products);

    return products;
  }

  //----------------------------------------------------------------------------------- tested // but the product model only // must create an serched cubit for handle the searche model // tsy mbola mi-prendre en compte ny langue
  @override
  Future<List<Product>> getItemsSearchedByCategoryAndTags(ProductCategory cat, ProductTag tag, String key) async {
    List<Product> products = [] ;

    if(tag.id!=-1){
      products = await woo.getProducts(category: cat.id.toString(),tag: tag.id.toString() , search: key) ;
    } else {
      products = await woo.getProducts(category: cat.id.toString(), search: key) ;
    }

    return products;
  }

  //-----------------------------------------------------------------------------------
  @override
  Future<List<Product>> getPopularProduct(ProductCategory cat) async {
    List<Product> products = await woo.getProducts(category: cat.id.toString());

    List<Product> alefa = [] ;

    var rng = Random();
    for (var i = 0; i < 10; i++) {
      alefa.add( products[rng.nextInt(products.length - 1)] );
    }

    return alefa;

  }

  @override
  Future<List<ProductTag>?> getAllTags() async{
    List<ProductTag>? tags = await woo.getProductTags();
    return tags;
  }

  @override
  Future<List<Attribute>> getAttribute(Product product) async {
    Product? myProduct = await woo.retrieveProduct(id: product.id??-1);
    if(myProduct!=null){
      return myProduct.attributes;
    }
    return [];
  }
}

class NetworkException implements Exception {}