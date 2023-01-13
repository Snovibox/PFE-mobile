import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pfe_mobile/cubit/category/category_cubit.dart';
import 'package:pfe_mobile/data/model/category/category_model.dart';
import 'package:pfe_mobile/data/repository/category_repository.dart';
import 'package:pfe_mobile/presentation/widgets/message/on_loading_image.dart';
import 'package:pfe_mobile/presentation/widgets/text_format_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: TextFormatWidget.format(
              AppLocalizations.of(context)!.category_title,
              Theme.of(context).textTheme.headline1,
              25,
              true
            )
          ),
          BlocProvider(
            create: (context) =>
              CategoryCubit(CategoryRepositoryImpl())..getCategoryList(),
            child: BlocBuilder<CategoryCubit, CategoryState>(
              builder: (context, state) {
                return const CategoryScreenStatus();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryScreenStatus extends StatefulWidget {
  const CategoryScreenStatus({Key? key}) : super(key: key);

  @override
  State<CategoryScreenStatus> createState() => _CategoryScreenStatusState();
}

class _CategoryScreenStatusState extends State<CategoryScreenStatus> {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<CategoryCubit>().state;
    switch (state.status) {
      case CategoryStatus.failure:
        return const Center(child: Text('Oops something went wrong!'));
      case CategoryStatus.success:
        return CategoryListView(items: state.items);
      default:
        return const Center(child: LoadingScreen());
    }
  }
}

class CategoryListView extends StatelessWidget {
  final List<CategoryModel> items;

  const CategoryListView({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
      return Flexible(
        child: items.isEmpty
            ? const Center(
                child: Text('No category found'),
              )
            : ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return CategoryTile(categoryModel:items[index]);
                },
                itemCount : items.length,
              ),
      );
    });
  }
}

class CategoryTile extends StatelessWidget {
  final CategoryModel categoryModel;
 
  const CategoryTile({
    Key? key,
    required this.categoryModel,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed('/catalogueByCategory', arguments: categoryModel);
      },
      child: Card(
        elevation: 2.0,
        shadowColor: Colors.white,
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Theme.of(context).cardColor,
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
              ),
              Center(child: TextFormatWidget.format(
                  categoryModel.cat[0].categoryName,
                  Theme.of(context).textTheme.subtitle1,
                  20,
                  true
              )),
            ],
          ),
        ),
      ),
    );
  }
}


