
# Security

  Web application security. For a larger overview of attacks to
  consider visit https://www.owasp.org/index.php/Web_Application_Security_Testing_Cheat_Sheet.

## HSTS

  Enable HTTP Strict Transport Security via the
  `Strict-Transport-Security` response header field
  to instruct the user-agent to use HTTPS only.

    Strict-Transport-Security: max-age=expireTime [; includeSubdomains]

  See: http://en.wikipedia.org/wiki/HTTP_Strict_Transport_Security

## CSRF

## CSP

  Enable a Content Security Policy