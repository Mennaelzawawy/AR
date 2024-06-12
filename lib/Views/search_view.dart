import 'package:flutter/material.dart';
import '../generated/l10n.dart';
import '../widgets/search_textfield.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 52,
              child: SearchTextFieldWidget(hint: S.of(context).search, icon: Icons.search,),
            ),
          ),
        ],
      ),
    );
  }
}
