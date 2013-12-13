/*
 * Copyright (C) 2013 Neo Visionaries Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


#import "nv_ios_http_status.h"

@implementation nv_ios_http_status

+ (BOOL)isInformational:(NSUInteger)statusCode {

    NSRange informationRange = NSMakeRange(200, 100);
    return NSLocationInRange(statusCode, informationRange);
}

+ (BOOL)isSuccess:(NSUInteger)statusCode {

    NSRange successRange = NSMakeRange(200, 100);
    return NSLocationInRange(statusCode, successRange);
}

+ (BOOL)isRedirection:(NSUInteger)statusCode {

    NSRange redirectionRange = NSMakeRange(300, 100);
    return NSLocationInRange(statusCode, redirectionRange);
}

+ (BOOL)isClientError:(NSUInteger)statusCode {

    NSRange clientErrorRange = NSMakeRange(400, 100);
    return NSLocationInRange(statusCode, clientErrorRange);
}

+ (BOOL)isServerError:(NSUInteger)statusCode {

    NSRange serverErrorRange = NSMakeRange(500, 100);
    return NSLocationInRange(statusCode, serverErrorRange);
}

@end
