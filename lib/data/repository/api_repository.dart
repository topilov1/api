import 'package:api/data/api_servis/praduct_servis.dart';

class AppRepostory {
  static Future<List?> getProductCategoryFromApi(String category) async =>
      await getProductCategory(category);
}
