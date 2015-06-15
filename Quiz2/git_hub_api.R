library(httr)
cid <- "72a1f8e508dea7601e98"
csr <- "9bfd4cdb99ba0f4168843edce1163796a1cbd2c8"
myapp <- oauth_app("github",cid, csr)
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/rate_limit", gtoken)
#stop_for_status(req)
content(req)