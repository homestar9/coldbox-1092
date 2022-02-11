# coldbox-1092

https://ortussolutions.atlassian.net/jira/software/c/projects/COLDBOX/issues/COLDBOX-1092

 1. `coldbox create app skeleton="rest-hmvc"`
 2. Create /api/v1/Subscribers handler
 3. Execute a POST request in Postman to http://127.0.0.1:49603/api/v1/subscribers/create/
 Result should be:
 ```
// Status Code 400 - Invalid Request
{
    "data": "",
    "error": true,
    "pagination": {
        "offset": 0,
        "maxRows": 0,
        "page": 1,
        "totalRecords": 0,
        "totalPages": 1
    },
    "messages": [
        "Validation exceptions occurred, please see the data"
    ]
}
```

4. Create /tests/specs/integration/SubscribersTests.cfc
5. Execute the tests via http://127.0.0.1:49603/tests/runner.cfm
6. The Subscribers Test will fail.  Coldbox returns a 500 error instead of the expected 400 error.

## Workarounds?

Don't use `runEvent()`.  You can test the workaround by uncommenting the workaround code in the Subscribers handler (Don't forget to comment out the `runEvent()` call).  Once the workaround is in place, both Postman and Testbox will receive the expected 400 error.
