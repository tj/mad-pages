
# Syntax

    Cache-Control: max-age=3600, must-revalidate

## public

  Browsers and proxies may cache the response.

## private

  Browsers are permitted to cache the response,
  however proxies may _not_.

## no-cache

  Browsers and proxies __should__ re-validate the response
  before serving a cached copy. Browsers have recently
  started treating this directive like `no-store` due
  to improper use.

## no-store

  Browsers and proxies __must__ not serve or store the
  response, use for sensitive information.

## max-age=[seconds]

  Maximum freshness age in seconds. If _seconds_ has
  exceeded the browser _must_ re-validate with the server.

## s-maxage=[seconds]

  Similar to `max-age` except that it applies only to proxy
  caches.

## must-revalidate

  Insist that a browser __must__ re-validate with
  the server. This is more explicit than `no-cache`.

## proxy-revalidate

  Similar to `must-revalidate` however targetting
  proxies. It insists that a proxy server must re-validate
  however a browser does not. This is useful when an
  authenticated page is cached in the browser, and you
  do not want proxies to cache and serve the response.
