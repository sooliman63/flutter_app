import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/product.dart';

import 'package:store_app/widgets/detalis/detalis_body.dart';
// import 'package:store_app/widgets/home/home_body.dart';

// import 'package:store_app/models/product.dart';
// import 'package:/store_app/constants.dart';
// import 'package:store_app/models/product.dart';

// import 'package:store_app/widgets/details/deteils_body.dart';
//
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key,  required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetalisBody(product: product,),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColor,
      leading: IconButton(
        padding: const EdgeInsets.only(right: 22),
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.red,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        "رجــوع",
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
//appBar: AppBar(
      //   backgroundColor: kBackgroundColor,
      //   leading: IconButton(
      //     padding: EdgeInsets.only(
      //       right: kDefaultPadding,
      //     ),
      //     icon: Icon(
      //       Icons.arrow_back,
      //       color: kPrimaryColor,
      //     ),
      //     onPressed: () {},
      //   ),
      // ),

// detailsAppBar(BuildContext context) {
//   AppBar detailsAppBar(BuildContext context) {
//     return AppBar(
//       backgroundColor: kBackgroundColor,
//       elevation: 0,
//       leading: IconButton(
//         padding: const EdgeInsets.only(right: kDefaultPadding),
//         icon: const Icon(
//           Icons.arrow_back,
//           color: kPrimaryColor,
//         ),
//         onPressed: () {
//           Navigator.pop(context);
//         },
//       ),
//       centerTitle: false,
//       title: Text(
//         'رجوع',
//         style: Theme.of(context).textTheme.bodyMedium,
//       ),
//     );
//   }
// }
