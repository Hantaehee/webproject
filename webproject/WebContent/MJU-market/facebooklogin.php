<!DOCTYPE html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">  
<title>Login page</title>  
<script type="text/javascript" src="js/jquery-1.8.2.min.js" charset="utf-8"></script>  
<script type="text/javascript">  
window.fbAsyncInit = function() {  
    FB.init({appId: '179854965488472', status: true, cookie: true,xfbml: true});      
};  
      
(function(d){  
   var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];  
   if (d.getElementById(id)) {return;}  
   js = d.createElement('script'); js.id = id; js.async = true;  
   js.src = "//connect.facebook.net/en_US/all.js";  
   ref.parentNode.insertBefore(js, ref);  
 }(document));     
              
function facebooklogin() {    
        FB.login(function(response) {  
            var fbname;  
            var accessToken = response.authResponse.accessToken;  
        }, {scope: 'publish_stream,user_likes'});  
}  
</script>  
</head>
