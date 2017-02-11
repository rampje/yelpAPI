connectAPI <- function(consumerKey, consumerSecret, token, token_secret){
  require("httr")
  
  myapp <- oauth_app("YELP", 
                     key=consumerKey, 
                     secret=consumerSecret)
  sig <- sign_oauth1.0(myapp, 
                       token=token,
                       token_secret=token_secret)
                       
  list(myapp, sig)
}