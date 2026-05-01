class InfiniteListState<T> {
  const InfiniteListState({
    this.items = const [],
    this.page = 0,
    this.hasNextPage = true,
    this.isLoadingMore = false,
  });

  final List<T> items;
  final int page;
  final bool hasNextPage;
  final bool isLoadingMore;

  InfiniteListState<T> copyWith({
    List<T>? items,
    int? page,
    bool? hasNextPage,
    bool? isLoadingMore,
  }) {
    return InfiniteListState<T>(
      items: items ?? this.items,
      page: page ?? this.page,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
    );
  }
}
