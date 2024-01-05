import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ResidentCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "query": "query GET_POPULAR_EVENTS(\$filters: FilterInputDtoInput, \$pageSize: Int) {\\r\\n  eventListings(filters: \$filters, pageSize: \$pageSize, page: 1, sort: { attending: { priority: 1, order: DESCENDING } }) {\\r\\n    data {\\r\\n      id\\r\\n      listingDate\\r\\n      event {\\r\\n        ...eventFields\\r\\n        __typename\\r\\n      }\\r\\n      __typename\\r\\n    }\\r\\n    __typename\\r\\n  }\\r\\n}\\r\\n\\r\\nfragment eventFields on Event {\\r\\n  id\\r\\n  title\\r\\n  attending\\r\\n  date\\r\\n  contentUrl\\r\\n  flyerFront\\r\\n  queueItEnabled\\r\\n  newEventForm\\r\\n  images {\\r\\n    id\\r\\n    filename\\r\\n    alt\\r\\n    type\\r\\n    crop\\r\\n    __typename\\r\\n  }\\r\\n  venue {\\r\\n    id\\r\\n    name\\r\\n    contentUrl\\r\\n    live\\r\\n    __typename\\r\\n  }\\r\\n  __typename\\r\\n}",
  "variables": {
    "filters": {
      "areas": {
        "eq": 34
      },
      "listingDate": {
        "gte": "2023-09-01",
        "lte": "2023-09-14"
      },
      "listingPosition": {
        "eq": 1
      }
    },
    "pageSize": 10
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'resident',
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

class EventbreiCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'eventbrei',
      apiUrl: 'https://www.eventbriteapi.com/v3',
      callType: ApiCallType.POST,
      headers: {
        'content-type': 'application/x-www-form-urlencoded',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
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
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
