// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//
// import 'package:pfe_mobile/cubit/category/category_cubit.dart';
// import 'package:pfe_mobile/data/repository/category_repository.dart';
// import 'package:pfe_mobile/presentation/widgets/categories_tiles.dart';
// import 'package:pfe_mobile/presentation/widgets/message/on_loading_image.dart';
// import 'package:pfe_mobile/presentation/widgets/text_format_widget.dart';
//
//
// import 'package:woosignal/models/response/product_category.dart';
//
//
// class CategoryScreen extends StatefulWidget {
//   const CategoryScreen({Key? key}) : super(key: key);
//
//   @override
//   State<CategoryScreen> createState() => _CategoryScreenState();
// }
//
// class _CategoryScreenState extends State<CategoryScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 100,
//         automaticallyImplyLeading: false,
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         elevation: 0,
//         centerTitle: true,
//         title: Image.asset(
//           'assets/pflogo.png',
//           width: MediaQuery.of(context).size.width/4,
//           height: MediaQuery.of(context).size.height/4,
//         ),
//       ),
//       backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start ,
//         children: [
//           BlocProvider(
//             create: (context) =>
//               CategoryCubit(CategoryRepositoryImpl())..getCategoryList(),
//             child: BlocBuilder<CategoryCubit, CategoryState>(
//               builder: (context, state) {
//                 return const CategoryScreenStatus();
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class CategoryScreenStatus extends StatefulWidget {
//   const CategoryScreenStatus({Key? key}) : super(key: key);
//
//   @override
//   State<CategoryScreenStatus> createState() => _CategoryScreenStatusState();
// }
//
// class _CategoryScreenStatusState extends State<CategoryScreenStatus> {
//   @override
//   Widget build(BuildContext context) {
//     final state = context.watch<CategoryCubit>().state;
//     switch (state.status) {
//       case CategoryStatus.failure:
//         return const Center(child: Text('Oops something went wrong!'));
//       case CategoryStatus.success:
//         return CategoryListView(items: state.items);
//       default:
//         return const Center(child: LoadingScreen());
//     }
//   }
// }
//
// class CategoryListView extends StatelessWidget {
//   final List<ProductCategory> items;
//
//   const CategoryListView({Key? key, required this.items}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<CategoryCubit, CategoryState>(
//       builder: (context, state) {
//       return Flexible(
//         child: items.isEmpty
//           ? const Center(
//               child: Text('No category found'),
//             )
//           : CategoriesTiles(items: items, rowNumber: 2),
//       );
//     });
//   }
// }