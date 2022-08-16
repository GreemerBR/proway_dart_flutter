import 'package:core/core.dart';

import 'pages/product_page.dart';

class MicroAppProductResolver implements MicroApp {
  @override
  String get microAppName => 'micro_app_product';

  @override
  Map<String, WidgetBuilderArgs> get routes {
    return {
      '/product': (context, args) => const ProductPage(),
    };
  }
}
