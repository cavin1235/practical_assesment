import 'package:assesment/utils/app_colors.dart';
import 'package:assesment/utils/constants.dart';
import 'package:flutter/material.dart';

/// This widget is used for incrementing the count inside it and making it persistant throughout the
/// scrolling of user
class ListItemWidget extends StatefulWidget {
  const ListItemWidget({super.key});
  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget>
    with AutomaticKeepAliveClientMixin {
  int count = 0;

  double width = 0;
  @override
  void didChangeDependencies() {
    // we're taking 10 percent of the screen width in order to make it responsive
    width = MediaQuery.of(context).size.width * 0.1;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      padding: const EdgeInsets.all(AppConstants.padding),
      margin: const EdgeInsets.all(AppConstants.margin),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
      ),
      child: Row(
        children: [
          SizedBox(width: width),
          Text(count.toString()),
          const Spacer(),
          IconButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
