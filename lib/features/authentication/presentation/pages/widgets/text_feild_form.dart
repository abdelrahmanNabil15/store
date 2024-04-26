import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store/core/util/color_manager.dart';
import 'package:store/core/util/style_manager.dart';
import 'package:store/core/util/values_manager.dart';

class CustomTextFieldForm extends StatefulWidget {
  const CustomTextFieldForm(
      {super.key, this.curFocusNode, this.nextFocusNode, this.hint, this.validator, this.onChanged, this.onTap, this.keyboardType, this.textInputAction, this.controller, this.obscureText, this.minLine, this.maxLine, this.suffixIcon, this.textAlign, this.enable, this.inputFormatter, required this.isHintVisible, this.prefixIcon, this.prefixText, this.hintText, this.labelText, this.readOnly, this.autofillHints, this.floatingLabelBehavior, required bool isDarkTheme});

  final FocusNode? curFocusNode;
  final FocusNode? nextFocusNode;
  final String? hint;
  final Function(String)? validator;
  final Function(String)? onChanged;
  final Function? onTap;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final bool? obscureText;
  final int? minLine;
  final int? maxLine;
  final Widget? suffixIcon;
  final TextAlign? textAlign;
  final bool? enable;
  final List<TextInputFormatter>? inputFormatter;
  final bool isHintVisible;
  final Widget ?prefixIcon;
  final String? prefixText;
  final String? hintText;
  final String? labelText;
  final bool? readOnly;
  final Iterable<String>? autofillHints;
  final FloatingLabelBehavior? floatingLabelBehavior;

  @override
  State<CustomTextFieldForm> createState() => _CustomTextFieldFormState();
}

class _CustomTextFieldFormState extends State<CustomTextFieldForm> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: AppSize.s8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: widget.isHintVisible,
            child: Text(
              widget.hint ?? "",
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: ColorManager.colorGrey1,
                height: 0.1,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: AppSize.s8),
            child: TextFormField(
              key: widget.key,

              autofillHints: widget.autofillHints,
              enabled: widget.enable,
              obscureText: widget.obscureText ?? false,
              focusNode: widget.curFocusNode,
              keyboardType: widget.keyboardType,
              controller: widget.controller,
              textInputAction: widget.textInputAction,
              textAlign: widget.textAlign ?? TextAlign.start,
              minLines: widget.minLine ?? 1,
              maxLines: widget.maxLine ?? 1,
              inputFormatters: widget.inputFormatter,
              textAlignVertical: TextAlignVertical.center,
              style:  getMediumStyle(color: ColorManager.colorFontPrimaryLight),
              cursorColor: ColorManager. colorPrimaryLight,
              decoration: InputDecoration(
                prefixText: widget.prefixText,
                alignLabelWithHint: true,
                fillColor: ColorManager.colorPlaceHolderLight,
                filled: true,
                labelText:widget.labelText,
                labelStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: ColorManager.colorGrey1,
                  height: 1,
                ),
                floatingLabelBehavior: widget.floatingLabelBehavior,
                //FloatingLabelBehavior.always,
                isDense: true,
                hintText: widget.hintText,
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: ColorManager.colorGrey2),
                suffixIcon: widget.suffixIcon,
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSize.s12),
                  child: widget.prefixIcon,
                ),
                prefixIconConstraints: const BoxConstraints(
                  minHeight: AppSize.s24,
                  maxHeight: AppSize.s24,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: AppMargin.m12,
                  horizontal: AppMargin. m16,
                ),
                enabledBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(AppSize.s4),
                  borderSide:   BorderSide(color: ColorManager.colorPlaceHolderLight),
                ),
                disabledBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(AppSize.s4),
                  borderSide:   BorderSide(color: ColorManager.colorPlaceHolderLight),
                ),
                errorStyle: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(color: ColorManager.colorError),
                focusedErrorBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(AppSize.s4),
                  borderSide:   BorderSide(color: ColorManager.colorError),
                ),
                errorBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(AppSize.s4),
                  borderSide:   BorderSide(color: ColorManager.colorError),
                ),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(AppSize.s4),
                  borderSide:   BorderSide(color:ColorManager.colorPlaceHolderLight),
                ),
              ),
              validator: widget.validator as String? Function(String?)?,
              onChanged: widget.onChanged,
              onTap: widget.onTap as void Function()?,
              onFieldSubmitted: (value) {
                setState(() {
                  fieldFocusChange(
                    context,
                    widget.curFocusNode ?? FocusNode(),
                    widget.nextFocusNode,
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  void fieldFocusChange(
      BuildContext context,
      FocusNode currentFocus,
      FocusNode? nextFocus,
      ) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
}
