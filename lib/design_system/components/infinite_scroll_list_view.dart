import 'package:field_management_app/design_system/components/app_skeleton.dart';
import 'package:flutter/material.dart';

class InfiniteScrollListView<T> extends StatelessWidget {
  const InfiniteScrollListView({
    required this.items,
    required this.itemBuilder,
    required this.onRefresh,
    required this.onLoadMore,
    this.isLoadingMore = false,
    this.loadMoreThreshold = 200,
    this.separatorBuilder,
    this.loadingIndicator,
    super.key,
  });

  final List<T> items;
  final Widget Function(BuildContext context, T item, int index) itemBuilder;
  final Future<void> Function() onRefresh;
  final VoidCallback onLoadMore;
  final bool isLoadingMore;
  final double loadMoreThreshold;
  final IndexedWidgetBuilder? separatorBuilder;
  final Widget? loadingIndicator;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification.metrics.pixels >=
              notification.metrics.maxScrollExtent - loadMoreThreshold) {
            onLoadMore();
          }
          return false;
        },
        child: ListView.separated(
          itemCount: items.length + (isLoadingMore ? 1 : 0),
          separatorBuilder:
              separatorBuilder ?? (_, __) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            if (index >= items.length) {
              return loadingIndicator ??
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: AppSkeleton(height: 44),
                  );
            }

            return itemBuilder(context, items[index], index);
          },
        ),
      ),
    );
  }
}
