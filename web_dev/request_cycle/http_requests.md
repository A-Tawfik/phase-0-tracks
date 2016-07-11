#HTTP REQUESTS 9.1

##1. HTTP Status codes

####200s - Successfully received client request
  * 200 | OK | Method success
  * 201 | Created | Request successful and new resource created

####300s - Further action needed by user
  * 302 | Found | Resource redirection found
  * 304 | Not Modified | Action received but not modified

####400s - Request not successful
  * 400 | Bad Request | Request not Understood by server
  * 404 | Not Found | request not found
  * 408 | Request Timeout | Um.. Request Timeout

####500s - Server aware that it has errored
  * 500 | Internal server error | server encountered an error
  * 502 | Bad Gateway
  * 505 | HTTP version not supported

##2. GET vs Post
  * Key/Values 
    * GET - Key/values are sent in the URL
    * POST - key/values are sent in the http message body
  * Cache / History
    * GET - requests can be cached saved in browser history
    * POST - requests never cached and are not saved in browser history

### Uses
  * GET - Used for basic requests
  * POST - used for sensitive data requests

##3. COOKIE (a yummy treat)
  pieces of data stored in the user's browser to remember the state the user was in or track their activity.






