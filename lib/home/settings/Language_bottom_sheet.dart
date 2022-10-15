import 'package:flutter/material.dart';
import 'package:islami/home/provider/app_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppProvider>(context);
    return Container(
      child: Column(
        children: [
          InkWell(onTap:() =>provider.changeLanguage('en'),
              child: getLanguageRow('English', provider.appLanguage=='en'?true:false)),
          InkWell(onTap: () =>provider.changeLanguage('ar'),
              child: getLanguageRow('العربية', provider.appLanguage=='ar'?true:false))
        ],
      ),
    );
  }

  Widget getLanguageRow(String text, bool isSelected) {
    if (isSelected) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${text}',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: Color(0xffB7935F)),
            ),
            Icon(
              Icons.check,
              color: Color(0xffB7935F),
            )
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('${text}', style: Theme.of(context).textTheme.subtitle1),
            Icon(Icons.check)
          ],
        ),
      );
    }
  }
}
