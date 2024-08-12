class ApiHost {
  static String get baseURL {
    return 'https://pokeapi.co/api/v2';
  }

  static Map<String, dynamic> get sessionHeaders {
    const accessToken = 'Bearer ';

    return <String, dynamic>{'Authorization': accessToken};
  }
}
