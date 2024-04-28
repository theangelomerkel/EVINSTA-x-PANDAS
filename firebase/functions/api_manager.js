const axios = require("axios").default;
const qs = require("qs");

async function _residentCall(context, ffVariables) {
  var url = `https://ra.co/graphql`;
  var headers = {
    "user-agent": `Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36`,
  };
  var params = {};
  var ffApiRequestBody = `
{
  "query": "query GET_POPULAR_EVENTS(\$filters: FilterInputDtoInput, \$pageSize: Int) {\\r\\n  eventListings(filters: \$filters, pageSize: \$pageSize, page: 1, sort: { attending: { priority: 1, order: DESCENDING } }) {\\r\\n    data {\\r\\n      id\\r\\n      listingDate\\r\\n      event {\\r\\n        ...eventFields\\r\\n        __typename\\r\\n      }\\r\\n      __typename\\r\\n    }\\r\\n    __typename\\r\\n  }\\r\\n}\\r\\n\\r\\nfragment eventFields on Event {\\r\\n  id\\r\\n  title\\r\\n  attending\\r\\n  date\\r\\n  contentUrl\\r\\n  flyerFront\\r\\n  queueItEnabled\\r\\n  newEventForm\\r\\n  images {\\r\\n    id\\r\\n    filename\\r\\n    alt\\r\\n    type\\r\\n    crop\\r\\n    __typename\\r\\n  }\\r\\n  venue {\\r\\n    id\\r\\n    name\\r\\n    contentUrl\\r\\n    live\\r\\n    __typename\\r\\n  }\\r\\n  __typename\\r\\n}",
  "variables": {
    "filters": {
      "areas": {
        "eq": 34
      },
      "listingDate": {
        "gte": "2024-02-20",
        "lte": "2024-02-25"
      },
      "listingPosition": {
        "eq": 1
      }
    },
    "pageSize": 100
  }

}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
  });
}
async function _residentDuesseldorfCall(context, ffVariables) {
  var url = `https://ra.co/graphql`;
  var headers = {
    "user-agent": `Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36`,
  };
  var params = {};
  var ffApiRequestBody = `
{
  "query": "query GET_POPULAR_EVENTS(\$filters: FilterInputDtoInput, \$pageSize: Int) {\\r\\n  eventListings(filters: \$filters, pageSize: \$pageSize, page: 1, sort: { attending: { priority: 1, order: DESCENDING } }) {\\r\\n    data {\\r\\n      id\\r\\n      listingDate\\r\\n      event {\\r\\n        ...eventFields\\r\\n        __typename\\r\\n      }\\r\\n      __typename\\r\\n    }\\r\\n    __typename\\r\\n  }\\r\\n}\\r\\n\\r\\nfragment eventFields on Event {\\r\\n  id\\r\\n  title\\r\\n  attending\\r\\n  date\\r\\n  contentUrl\\r\\n  flyerFront\\r\\n  queueItEnabled\\r\\n  newEventForm\\r\\n  images {\\r\\n    id\\r\\n    filename\\r\\n    alt\\r\\n    type\\r\\n    crop\\r\\n    __typename\\r\\n  }\\r\\n  venue {\\r\\n    id\\r\\n    name\\r\\n    contentUrl\\r\\n    live\\r\\n    __typename\\r\\n  }\\r\\n  __typename\\r\\n}",
  "variables": {
    "filters": {
      "areas": {
        "eq": 145
      },
      "listingDate": {
        "gte": "2024-02-12",
        "lte": "2024-12-30"
      },
      "listingPosition": {
        "eq": 1
      }
    },
    "pageSize": 10
  }
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
  });
}
async function _residentHamburgCall(context, ffVariables) {
  var url = `https://ra.co/graphql`;
  var headers = {
    "user-agent": `Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36`,
  };
  var params = {};
  var ffApiRequestBody = `
{
  "query": "query GET_POPULAR_EVENTS(\$filters: FilterInputDtoInput, \$pageSize: Int) {\\r\\n  eventListings(filters: \$filters, pageSize: \$pageSize, page: 1, sort: { attending: { priority: 1, order: DESCENDING } }) {\\r\\n    data {\\r\\n      id\\r\\n      listingDate\\r\\n      event {\\r\\n        ...eventFields\\r\\n        __typename\\r\\n      }\\r\\n      __typename\\r\\n    }\\r\\n    __typename\\r\\n  }\\r\\n}\\r\\n\\r\\nfragment eventFields on Event {\\r\\n  id\\r\\n  title\\r\\n  attending\\r\\n  date\\r\\n  contentUrl\\r\\n  flyerFront\\r\\n  queueItEnabled\\r\\n  newEventForm\\r\\n  images {\\r\\n    id\\r\\n    filename\\r\\n    alt\\r\\n    type\\r\\n    crop\\r\\n    __typename\\r\\n  }\\r\\n  venue {\\r\\n    id\\r\\n    name\\r\\n    contentUrl\\r\\n    live\\r\\n    __typename\\r\\n  }\\r\\n  __typename\\r\\n}",
  "variables": {
    "filters": {
      "areas": {
        "eq": 148
      },
      "listingDate": {
        "gte": "2024-02-12",
        "lte": "2024-12-30"
      },
      "listingPosition": {
        "eq": 1
      }
    },
    "pageSize": 10
  }
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
  });
}
async function _residentFrankfurtCall(context, ffVariables) {
  var url = `https://ra.co/graphql`;
  var headers = {
    "user-agent": `Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36`,
  };
  var params = {};
  var ffApiRequestBody = `
{
  "query": "query GET_POPULAR_EVENTS(\$filters: FilterInputDtoInput, \$pageSize: Int) {\\r\\n  eventListings(filters: \$filters, pageSize: \$pageSize, page: 1, sort: { attending: { priority: 1, order: DESCENDING } }) {\\r\\n    data {\\r\\n      id\\r\\n      listingDate\\r\\n      event {\\r\\n        ...eventFields\\r\\n        __typename\\r\\n      }\\r\\n      __typename\\r\\n    }\\r\\n    __typename\\r\\n  }\\r\\n}\\r\\n\\r\\nfragment eventFields on Event {\\r\\n  id\\r\\n  title\\r\\n  attending\\r\\n  date\\r\\n  contentUrl\\r\\n  flyerFront\\r\\n  queueItEnabled\\r\\n  newEventForm\\r\\n  images {\\r\\n    id\\r\\n    filename\\r\\n    alt\\r\\n    type\\r\\n    crop\\r\\n    __typename\\r\\n  }\\r\\n  venue {\\r\\n    id\\r\\n    name\\r\\n    contentUrl\\r\\n    live\\r\\n    __typename\\r\\n  }\\r\\n  __typename\\r\\n}",
  "variables": {
    "filters": {
      "areas": {
        "eq": 147
      },
      "listingDate": {
        "gte": "2024-02-12",
        "lte": "2024-12-30"
      },
      "listingPosition": {
        "eq": 1
      }
    },
    "pageSize": 10
  }
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
  });
}
async function _residentMuenchenCall(context, ffVariables) {
  var url = `https://ra.co/graphql`;
  var headers = {
    "user-agent": `Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36`,
  };
  var params = {};
  var ffApiRequestBody = `
{
  "query": "query GET_POPULAR_EVENTS(\$filters: FilterInputDtoInput, \$pageSize: Int) {\\r\\n  eventListings(filters: \$filters, pageSize: \$pageSize, page: 1, sort: { attending: { priority: 1, order: DESCENDING } }) {\\r\\n    data {\\r\\n      id\\r\\n      listingDate\\r\\n      event {\\r\\n        ...eventFields\\r\\n        __typename\\r\\n      }\\r\\n      __typename\\r\\n    }\\r\\n    __typename\\r\\n  }\\r\\n}\\r\\n\\r\\nfragment eventFields on Event {\\r\\n  id\\r\\n  title\\r\\n  attending\\r\\n  date\\r\\n  contentUrl\\r\\n  flyerFront\\r\\n  queueItEnabled\\r\\n  newEventForm\\r\\n  images {\\r\\n    id\\r\\n    filename\\r\\n    alt\\r\\n    type\\r\\n    crop\\r\\n    __typename\\r\\n  }\\r\\n  venue {\\r\\n    id\\r\\n    name\\r\\n    contentUrl\\r\\n    live\\r\\n    __typename\\r\\n  }\\r\\n  __typename\\r\\n}",
  "variables": {
    "filters": {
      "areas": {
        "eq": 151
      },
      "listingDate": {
        "gte": "2024-02-12",
        "lte": "2024-12-30"
      },
      "listingPosition": {
        "eq": 1
      }
    },
    "pageSize": 10
  }
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
  });
}
async function _residentCologneCall(context, ffVariables) {
  var url = `https://ra.co/graphql`;
  var headers = {
    "user-agent": `Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36`,
  };
  var params = {};
  var ffApiRequestBody = `
{
  "query": "query GET_POPULAR_EVENTS(\$filters: FilterInputDtoInput, \$pageSize: Int) {\\r\\n  eventListings(filters: \$filters, pageSize: \$pageSize, page: 1, sort: { attending: { priority: 1, order: DESCENDING } }) {\\r\\n    data {\\r\\n      id\\r\\n      listingDate\\r\\n      event {\\r\\n        ...eventFields\\r\\n        __typename\\r\\n      }\\r\\n      __typename\\r\\n    }\\r\\n    __typename\\r\\n  }\\r\\n}\\r\\n\\r\\nfragment eventFields on Event {\\r\\n  id\\r\\n  title\\r\\n  attending\\r\\n  date\\r\\n  contentUrl\\r\\n  flyerFront\\r\\n  queueItEnabled\\r\\n  newEventForm\\r\\n  images {\\r\\n    id\\r\\n    filename\\r\\n    alt\\r\\n    type\\r\\n    crop\\r\\n    __typename\\r\\n  }\\r\\n  venue {\\r\\n    id\\r\\n    name\\r\\n    contentUrl\\r\\n    live\\r\\n    __typename\\r\\n  }\\r\\n  __typename\\r\\n}",
  "variables": {
    "filters": {
      "areas": {
        "eq": 143
      },
      "listingDate": {
        "gte": "2024-02-12",
        "lte": "2024-12-30"
      },
      "listingPosition": {
        "eq": 1
      }
    },
    "pageSize": 100
  }
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
  });
}

/// Helper functions to route to the appropriate API Call.

async function makeApiCall(context, data) {
  var callName = data["callName"] || "";
  var variables = data["variables"] || {};

  const callMap = {
    ResidentCall: _residentCall,
    ResidentDuesseldorfCall: _residentDuesseldorfCall,
    ResidentHamburgCall: _residentHamburgCall,
    ResidentFrankfurtCall: _residentFrankfurtCall,
    ResidentMuenchenCall: _residentMuenchenCall,
    ResidentCologneCall: _residentCologneCall,
  };

  if (!(callName in callMap)) {
    return {
      statusCode: 400,
      error: `API Call "${callName}" not defined as private API.`,
    };
  }

  var apiCall = callMap[callName];
  var response = await apiCall(context, variables);
  return response;
}

async function makeApiRequest({
  method,
  url,
  headers,
  params,
  body,
  returnBody,
}) {
  return axios
    .request({
      method: method,
      url: url,
      headers: headers,
      params: params,
      ...(body && { data: body }),
    })
    .then((response) => {
      return {
        statusCode: response.status,
        headers: response.headers,
        ...(returnBody && { body: response.data }),
      };
    })
    .catch(function (error) {
      return {
        statusCode: error.response.status,
        headers: error.response.headers,
        ...(returnBody && { body: error.response.data }),
        error: error.message,
      };
    });
}

const _unauthenticatedResponse = {
  statusCode: 401,
  headers: {},
  error: "API call requires authentication",
};

function createBody({ headers, params, body, bodyType }) {
  switch (bodyType) {
    case "JSON":
      headers["Content-Type"] = "application/json";
      return body;
    case "TEXT":
      headers["Content-Type"] = "text/plain";
      return body;
    case "X_WWW_FORM_URL_ENCODED":
      headers["Content-Type"] = "application/x-www-form-urlencoded";
      return qs.stringify(params);
  }
}

module.exports = { makeApiCall };
