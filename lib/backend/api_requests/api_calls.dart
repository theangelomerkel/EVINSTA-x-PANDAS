import 'dart:convert';
import 'dart:typed_data';
import '../cloud_functions/cloud_functions.dart';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ResidentCall {
  static Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ResidentCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static List? photosraevents(dynamic response) => getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.images''',
        true,
      ) as List?;
  static List<String>? imageurl(dynamic response) => (getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.images[:].filename''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? eventname(dynamic response) => (getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.venue.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? eventsobjectlist(dynamic response) => getJsonField(
        response,
        r'''$.data.eventListings.data[:].event''',
        true,
      ) as List?;
}

class ResidentDuesseldorfCall {
  static Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ResidentDuesseldorfCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static List? photosraevents(dynamic response) => getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.images''',
        true,
      ) as List?;
  static List<String>? imageurl(dynamic response) => (getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.images[:].filename''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? eventname(dynamic response) => (getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.venue.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? eventsobjectlist(dynamic response) => getJsonField(
        response,
        r'''$.data.eventListings.data[:].event''',
        true,
      ) as List?;
}

class ResidentHamburgCall {
  static Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ResidentHamburgCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static List? photosraevents(dynamic response) => getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.images''',
        true,
      ) as List?;
  static List<String>? imageurl(dynamic response) => (getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.images[:].filename''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? eventname(dynamic response) => (getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.venue.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? eventsobjectlist(dynamic response) => getJsonField(
        response,
        r'''$.data.eventListings.data[:].event''',
        true,
      ) as List?;
}

class ResidentFrankfurtCall {
  static Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ResidentFrankfurtCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static List? photosraevents(dynamic response) => getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.images''',
        true,
      ) as List?;
  static List<String>? imageurl(dynamic response) => (getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.images[:].filename''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? eventname(dynamic response) => (getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.venue.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? eventsobjectlist(dynamic response) => getJsonField(
        response,
        r'''$.data.eventListings.data[:].event''',
        true,
      ) as List?;
}

class ResidentMuenchenCall {
  static Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ResidentMuenchenCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static List? photosraevents(dynamic response) => getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.images''',
        true,
      ) as List?;
  static List<String>? imageurl(dynamic response) => (getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.images[:].filename''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? eventname(dynamic response) => (getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.venue.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? eventsobjectlist(dynamic response) => getJsonField(
        response,
        r'''$.data.eventListings.data[:].event''',
        true,
      ) as List?;
}

class ResidentCologneCall {
  static Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ResidentCologneCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static List? photosraevents(dynamic response) => getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.images''',
        true,
      ) as List?;
  static List<String>? imageurl(dynamic response) => (getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.images[:].filename''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? eventname(dynamic response) => (getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.venue.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? eventsobjectlist(dynamic response) => getJsonField(
        response,
        r'''$.data.eventListings.data[:].event''',
        true,
      ) as List?;
  static List<String>? eventtitle(dynamic response) => (getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? eventdate(dynamic response) => (getJsonField(
        response,
        r'''$.data.eventListings.data[:].event.date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class EventbreiCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'eventbrei',
      apiUrl:
          'https://www.eventbriteapi.com/v3/users/me/?token=5NCK25RR4ILUYNTHVVUY',
      callType: ApiCallType.GET,
      headers: {
        'content-type': 'application/x-www-form-urlencoded',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCityCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "query": "query GET_ALL_CITY(\$id: ID!) {\\n  country(id: \$id) {\\n    id\\n    name\\n    areas {\\n      id\\n      name\\n }\\n   }\\n}",
  "variables": {
    "id": "12"
  }
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'getCity',
      apiUrl: 'https://ra.co/graphql',
      callType: ApiCallType.POST,
      headers: {
        'user-agent':
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data.country[:].areas[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.data.country[:].areas[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
