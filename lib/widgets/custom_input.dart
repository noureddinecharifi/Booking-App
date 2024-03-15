import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController controller ;
  final bool obscure;
  final String hintText;
  final IconData prefixIcon;

  final String? Function(String?)? validator;

  const CustomInput(
      {super.key,
      required this.obscure,
      required this.hintText,
      required this.validator,
      required this.controller,
      required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow:  const [
            BoxShadow(
              color: Color(0xffF4F4F4),
              blurRadius: 4,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ],
        ),
        child: TextFormField(
          controller: controller,
          obscureText: obscure,
          decoration: InputDecoration(
            hintStyle: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: Colors.black45),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
                borderRadius: BorderRadius.circular(30)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 3),
                borderRadius: BorderRadius.circular(30)),
            filled: true,
            fillColor: Theme.of(context).colorScheme.background,
            prefixIconColor: Theme.of(context).colorScheme.primary,
            prefixIcon: Icon(prefixIcon),
            hintText: hintText,
            suffixIcon: obscure
                ? IconButton(
                    icon: const Icon(
                      Icons.visibility,
                    ),
                    onPressed: () {},
                  )
                : null,
          ),
          validator: validator,
        ),
      ),
    );
  }
}
