import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Search field used to filter products by name
class SearchTextField extends ConsumerStatefulWidget {
  const SearchTextField({super.key});

  @override
  ConsumerState<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends ConsumerState<SearchTextField> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    // * TextEditingControllers should be always disposed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FocusNode focusNode = FocusNode();
    // See this article for more info about how to use [ValueListenableBuilder]
    // with TextField:
    // https://codewithandrea.com/articles/flutter-text-field-form-validation/
    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: _controller,
      builder: (context, value, _) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: TextField(
            focusNode: focusNode,
            controller: _controller,
            style: TextStyle(color: Theme.of(context).primaryColor),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.all(18.0),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              hintText: 'Search Contact',
              suffixIcon: Icon(
                Icons.search,
                color: focusNode.hasFocus
                    ? const Color.fromRGBO(50, 186, 165, 1)
                    : null,
              ),
            ),
            // todo on changed
            // onChanged: (text) =>
            // ref.read(productsSearchQueryStateProvider.notifier).state = text,
          ),
        );
      },
    );
  }
}
