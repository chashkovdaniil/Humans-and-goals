import 'package:flutter/material.dart';

import '../features/man/view/man_card_tile.dart';
import '../men.dart';
import 'men_builder.dart';

class MenListComponent extends StatefulWidget {
  const MenListComponent({super.key});

  @override
  State<MenListComponent> createState() => _MenListComponentState();
}

class _MenListComponentState extends State<MenListComponent>
    with AutomaticKeepAliveClientMixin {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(onScrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(onScrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    super.build(context);

    return MenBuilder(
      builder: (final context, final men) {
        if (men.isEmpty) {
          return const Center(
            child: Text('Empty'),
          );
        }
        return ListView(
          controller: _scrollController,
          padding: const EdgeInsets.all(8.0),
          children: [
            for (final man in men) ManCardTile(man: man),
          ],
        );
      },
    );
  }

  void onScrollListener() {
    final scrollLeftPixels = _scrollController.position.extentAfter;

    if (scrollLeftPixels < 40) {
      MenScope.viewModelOf(context).onScrollDown();
    }
  }

  @override
  bool get wantKeepAlive => true;
}
