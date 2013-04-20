nv-ios-http-status
==================


Overview
--------

This project provides a header file that lists HTTP status codes.
A typedef enum, HTTPStatusCode, contains entries whose name start
with kHTTPStatusCode such as kHTTPStatusCodeOK.


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
