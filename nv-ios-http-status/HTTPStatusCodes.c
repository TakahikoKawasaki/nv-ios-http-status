#define IS_STATUS_CODE_IN_RANGE(statusCode, lower_inclusive) \
     (((lower_inclusive) <= (statusCode)) && ((statusCode) < ((lower_inclusive) + 100)))

int HTTPStatusCode_IsInformational(int statusCode) {
    return IS_STATUS_CODE_IN_RANGE(statusCode, 100);
}

int HTTPStatusCode_IsSuccess(int statusCode) {
    return IS_STATUS_CODE_IN_RANGE(statusCode, 200);
}

int HTTPStatusCode_IsRedirection(int statusCode) {
    return IS_STATUS_CODE_IN_RANGE(statusCode, 300);
}

int HTTPStatusCode_IsClientError(int statusCode) {
    return IS_STATUS_CODE_IN_RANGE(statusCode, 400);
}

int HTTPStatusCode_IsServerError(int statusCode) {
    return IS_STATUS_CODE_IN_RANGE(statusCode, 500);
}
