import 'package:shop_application/constant/constant.dart';
import 'package:shop_application/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data = await Api().get(url: '$baseUrl/products/categories');
    return data;
  }
}
