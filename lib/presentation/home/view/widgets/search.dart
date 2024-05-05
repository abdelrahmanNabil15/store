import 'package:flutter/material.dart';
import 'package:store/core/util/color_manager.dart';
import 'package:store/core/util/langauge_manager.dart';
import 'package:store/core/util/string_manager.dart';
import 'package:store/core/util/values_manager.dart';
import 'package:store/features/authentication/presentation/pages/widgets/text_feild_form.dart';

class SearchTextFieldForm extends StatelessWidget {
  SearchTextFieldForm({super.key});

  @override
  TextEditingController searchController = TextEditingController();
  final _form = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p20),
      child: CustomTextFieldForm(
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.text,
        prefixIcon: Icon(Icons.search, color: ColorManager.colorPrimaryLight,),
        hintText: AppStrings.search.tr(context),
        controller: searchController,
        isDarkTheme: Theme.of(context).brightness == Brightness.dark,
        isHintVisible: true,

      ),
    );
  }
}
