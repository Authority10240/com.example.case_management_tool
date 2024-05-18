


Future<T> safeBackEndCalls<T>({required Future<T> apiRequest}
    ) async {
  try {
    return await apiRequest;

  } catch (exception) {
    //todo parse api error format and map to custom errors
  rethrow;


  }
}