class SearchProductsRequestBody {
  String? query;

  int page;
  SearchProductsRequestBody({
    this.query,
    this.page = 1,
  });

  SearchProductsRequestBody copyWith({
    String? query,
    int? page,
  }) {
    return SearchProductsRequestBody(
      query: query ?? this.query,
      page: page ?? this.page,
    );
  }
}
