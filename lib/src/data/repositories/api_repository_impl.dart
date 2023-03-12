import '../../domain/models/responses/breaking_news_response.dart';
import '../../domain/models/requests/breaking_news_request.dart';
import '../../domain/repositories/api_repository.dart';
import '../../utils/resources/data_state.dart';
import '../base/base_api_repository.dart';
import '../datasources/remote/news_api_service.dart';

class ApiRepositoryImpl extends BaseApiRepository implements ApiRepository {
  final NewsApiService _newsApiService;

  ApiRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<BreakingNewsResponse>> getBreakingNewsArticles({required BreakingNewsRequest request}) {
    return getStateOf(
        request: () => _newsApiService.getBreakingNewsArticles(
            apiKey: request.apiKey,
            page: request.page,
            pageSize: request.pageSize,
            category: request.category,
            country: request.country));
  }
}
