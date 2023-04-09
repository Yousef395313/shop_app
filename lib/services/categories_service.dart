import 'package:shop_application/constant/constant.dart';
import 'package:shop_application/helper/api.dart';
import 'package:shop_application/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> CatergoriesSerivce(
      {required String categoryName}) async {
    List<dynamic> data =
        await Api().get(url: '$baseUrl/products/category/$categoryName');
    List<ProductModel> ProductList = [];
    for (int i = 0; i < data.length; i++) {
      ProductList.add(ProductModel.fromJson(data[i]));
    }
    return ProductList;
  }
}
