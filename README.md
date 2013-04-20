nv-ios-http-status
==================


Overview
--------

This project provides a header file that lists HTTP status codes,
mainly for iOS programming. A typedef enum, HTTPStatusCode, contains
entries whose name start with kHTTPStatusCode such as kHTTPStatusCodeOK.

The initial version of the list of HTTP status codes (HTTPStatusCodes.h)
was written based on the list at Wikipedia ([List of HTTP status codes]
(http://en.wikipedia.org/wiki/List_of_HTTP_status_codes)) on April 20,
2013.

Note that unofficial HTTP status codes are included and some of
such variants can be excluded by defining HTTP_STATUS_CODES_EXLUCE_xxx.


License
-------

Apache License, Version 2.0


Download
--------

    git clone https://github.com/TakahikoKawasaki/nv-ios-http-status.git


Example
-------

    #import "HTTPStatusCodes.h"

    ......

    - (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
    {
        NSHTTPURLResponse *res = (NSHTTPURLResponse *)response;

        switch ([res statusCode])
        {
            case kHTTPStatusCodeOK:
                ......;
        }

        ......
    }


Author
------

Takahiko Kawasaki, Neo Visionaries Inc.
