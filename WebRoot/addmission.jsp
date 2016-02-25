 <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%String user=(String)session.getAttribute("username");
if(user==null){
		%>
		<jsp:forward page="hello.jsp"/>
		<% 
}

int money1=0;
int lv=0;
String driverName="com.mysql.jdbc.Driver"; 
//数据库用户名 
String userName="root"; 
//密码 
String userPasswd="1234"; 
//数据库名 
String dbName="test"; 
//表名 
String tableName="userinfo"; 
//联结字符串 
String url="jdbc:mysql://localhost/"+dbName+"?user="+userName+"&password="+userPasswd; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
Connection connection=DriverManager.getConnection(url); 
Statement statement = connection.createStatement(); 
ResultSet rs = statement.executeQuery("select * from userinfo where user = '"+user+"'");
ResultSetMetaData rmeta = rs.getMetaData(); 
int numColumns=rmeta.getColumnCount(); 
while(rs.next()){
money1=rs.getInt(3);
lv=rs.getInt(4);
}
%>
<html class=" not-mobile brwsr-chrome brwsr-chrome46 os-windows non-forced-fullwidth      js canvas history cssfilters" lang="en" debug="true"><head>
<title>
Create Recipe - IFTTT
</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<script src="https://bam.nr-data.net/1/673a997f39?a=2986034&amp;pl=1451222185073&amp;v=768.2acc9fa&amp;to=egxdTUcJWwgBShgXQVgXVlRQCEMXS1ZSEw%3D%3D&amp;qt=1&amp;ap=385&amp;be=1606&amp;fe=830&amp;dc=539&amp;f=%5B%22err%22,%22xhr%22,%22stn%22,%22ins%22%5D&amp;perf=%7B%22timing%22:%7B%22of%22:1451222185073,%22n%22:0,%22u%22:1357,%22ue%22:1358,%22dl%22:1295,%22di%22:2145,%22ds%22:2145,%22de%22:2433,%22dc%22:2435,%22l%22:2436,%22le%22:2442,%22f%22:0,%22dn%22:0,%22dne%22:0,%22c%22:0,%22ce%22:0,%22rq%22:2,%22rp%22:1295,%22rpe%22:1356%7D,%22navigation%22:%7B%7D%7D&amp;jsonp=NREUM.setToken" type="text/javascript"></script><script src="https://js-agent.newrelic.com/nr-768.min.js"></script><script src="//www.google-analytics.com/analytics.js" async=""></script><script src="https://cdn.heapanalytics.com/js/heap-1714017845.js" type="text/javascript" async=""></script><script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"673a997f39","applicationID":"2986034","transactionName":"egxdTUcJWwgBShgXQVgXVlRQCEMXS1ZSEw==","queueTime":1,"applicationTime":385,"agent":"js-agent.newrelic.com/nr-768.min.js"}</script>
<script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"VwAOU1RRGwEJXFdSBAU="};window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var o=e[n]={exports:{}};t[n][0].call(o.exports,function(e){var o=t[n][1][e];return r(o||e)},o,o.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({QJf3ax:[function(t,e){function n(t){function e(e,n,a){t&&t(e,n,a),a||(a={});for(var c=s(e),f=c.length,u=i(a,o,r),d=0;f>d;d++)c[d].apply(u,n);return u}function a(t,e){f[t]=s(t).concat(e)}function s(t){return f[t]||[]}function c(){return n(e)}var f={};return{on:a,emit:e,create:c,listeners:s,_events:f}}function r(){return{}}var o="nr@context",i=t("gos");e.exports=n()},{gos:"7eSDFh"}],ee:[function(t,e){e.exports=t("QJf3ax")},{}],3:[function(t){function e(t){try{i.console&&console.log(t)}catch(e){}}var n,r=t("ee"),o=t(1),i={};try{n=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(i.console=!0,-1!==n.indexOf("dev")&&(i.dev=!0),-1!==n.indexOf("nr_dev")&&(i.nrDev=!0))}catch(a){}i.nrDev&&r.on("internal-error",function(t){e(t.stack)}),i.dev&&r.on("fn-err",function(t,n,r){e(r.stack)}),i.dev&&(e("NR AGENT IN DEVELOPMENT MODE"),e("flags: "+o(i,function(t){return t}).join(", ")))},{1:24,ee:"QJf3ax"}],4:[function(t){function e(t,e,n,i,s){try{c?c-=1:r("err",[s||new UncaughtException(t,e,n)])}catch(f){try{r("ierr",[f,(new Date).getTime(),!0])}catch(u){}}return"function"==typeof a?a.apply(this,o(arguments)):!1}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function n(t){r("err",[t,(new Date).getTime()])}var r=t("handle"),o=t(6),i=t("ee"),a=window.onerror,s=!1,c=0;t("loader").features.err=!0,t(5),window.onerror=e;try{throw new Error}catch(f){"stack"in f&&(t(1),t(2),"addEventListener"in window&&t(3),window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&!/CriOS/.test(navigator.userAgent)&&t(4),s=!0)}i.on("fn-start",function(){s&&(c+=1)}),i.on("fn-err",function(t,e,r){s&&(this.thrown=!0,n(r))}),i.on("fn-end",function(){s&&!this.thrown&&c>0&&(c-=1)}),i.on("internal-error",function(t){r("ierr",[t,(new Date).getTime(),!0])})},{1:11,2:10,3:8,4:12,5:3,6:25,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],5:[function(t){if(window.addEventListener){var e=t("handle"),n=t("ee");t(1),window.addEventListener("click",function(){e("inc",["ck"])},!1),window.addEventListener("hashchange",function(){e("inc",["hc"])},!1),n.on("pushState-start",function(){e("inc",["ps"])})}},{1:9,ee:"QJf3ax",handle:"D5DuLP"}],6:[function(t){t("loader").features.ins=!0},{loader:"G9z0Bl"}],7:[function(t){function e(){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var n=t("ee"),r=t("handle"),o=t(1),i=t(2);t("loader").features.stn=!0,t(3);var a=Event;n.on("fn-start",function(t){var e=t[0];e instanceof a&&(this.bstStart=Date.now())}),n.on("fn-end",function(t,e){var n=t[0];n instanceof a&&r("bst",[n,e,this.bstStart,Date.now()])}),o.on("fn-start",function(t,e,n){this.bstStart=Date.now(),this.bstType=n}),o.on("fn-end",function(t,e){r("bstTimer",[e,this.bstStart,Date.now(),this.bstType])}),i.on("fn-start",function(){this.bstStart=Date.now()}),i.on("fn-end",function(t,e){r("bstTimer",[e,this.bstStart,Date.now(),"requestAnimationFrame"])}),n.on("pushState-start",function(){this.time=Date.now(),this.startPath=location.pathname+location.hash}),n.on("pushState-end",function(){r("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),"addEventListener"in window.performance&&(window.performance.addEventListener("webkitresourcetimingbufferfull",function(){r("bstResource",[window.performance.getEntriesByType("resource")]),window.performance.webkitClearResourceTimings()},!1),window.performance.addEventListener("resourcetimingbufferfull",function(){r("bstResource",[window.performance.getEntriesByType("resource")]),window.performance.clearResourceTimings()},!1)),document.addEventListener("scroll",e,!1),document.addEventListener("keypress",e,!1),document.addEventListener("click",e,!1)}},{1:11,2:10,3:9,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],8:[function(t,e){function n(t){i.inPlace(t,["addEventListener","removeEventListener"],"-",r)}function r(t){return t[1]}var o=t("ee").create(),i=t(1)(o),a=t("gos");if(e.exports=o,n(window),"getPrototypeOf"in Object){for(var s=document;s&&!s.hasOwnProperty("addEventListener");)s=Object.getPrototypeOf(s);s&&n(s);for(var c=XMLHttpRequest.prototype;c&&!c.hasOwnProperty("addEventListener");)c=Object.getPrototypeOf(c);c&&n(c)}else XMLHttpRequest.prototype.hasOwnProperty("addEventListener")&&n(XMLHttpRequest.prototype);o.on("addEventListener-start",function(t,e){function n(){return s}if(t[1]){var r=t[1];if("function"==typeof r){var s=a(r,"nr@wrapped",function(){return i(r,"fn-",n,r.name||"anonymous")});this.wrapped=t[1]=s,o.emit("initEventContext",[t,e],this.wrapped)}else"function"==typeof r.handleEvent&&i.inPlace(r,["handleEvent"],"fn-")}}),o.on("removeEventListener-start",function(t){var e=this.wrapped;e&&(t[1]=e)})},{1:26,ee:"QJf3ax",gos:"7eSDFh"}],9:[function(t,e){var n=t("ee").create(),r=t(1)(n);e.exports=n,r.inPlace(window.history,["pushState","replaceState"],"-")},{1:26,ee:"QJf3ax"}],10:[function(t,e){var n=t("ee").create(),r=t(1)(n);e.exports=n,r.inPlace(window,["requestAnimationFrame","mozRequestAnimationFrame","webkitRequestAnimationFrame","msRequestAnimationFrame"],"raf-"),n.on("raf-start",function(t){t[0]=r(t[0],"fn-")})},{1:26,ee:"QJf3ax"}],11:[function(t,e){function n(t,e,n){t[0]=i(t[0],"fn-",null,n)}function r(t,e,n){function r(){return a}this.ctx={};var a={"nr@context":this.ctx};o.emit("initTimerContext",[t,n],a),t[0]=i(t[0],"fn-",r,n)}var o=t("ee").create(),i=t(1)(o);e.exports=o,i.inPlace(window,["setTimeout","setImmediate"],"setTimer-"),i.inPlace(window,["setInterval"],"setInterval-"),i.inPlace(window,["clearTimeout","clearImmediate"],"clearTimeout-"),o.on("setInterval-start",n),o.on("setTimer-start",r)},{1:26,ee:"QJf3ax"}],12:[function(t,e){function n(){f.inPlace(this,p,"fn-",o)}function r(t,e){f.inPlace(e,["onreadystatechange"],"fn-")}function o(t,e){return e}function i(t,e){for(var n in t)e[n]=t[n];return e}var a=t("ee").create(),s=t(1),c=t(2),f=c(a),u=c(s),d=window.XMLHttpRequest,p=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"];e.exports=a,window.XMLHttpRequest=function(t){var e=new d(t);try{a.emit("new-xhr",[],e),e.hasOwnProperty("addEventListener")&&u.inPlace(e,["addEventListener","removeEventListener"],"-",o),e.addEventListener("readystatechange",n,!1)}catch(r){try{a.emit("internal-error",[r])}catch(i){}}return e},i(d,XMLHttpRequest),XMLHttpRequest.prototype=d.prototype,f.inPlace(XMLHttpRequest.prototype,["open","send"],"-xhr-",o),a.on("send-xhr-start",r),a.on("open-xhr-start",r)},{1:8,2:26,ee:"QJf3ax"}],13:[function(t){function e(t){var e=this.params,r=this.metrics;if(!this.ended){this.ended=!0;for(var i=0;c>i;i++)t.removeEventListener(s[i],this.listener,!1);if(!e.aborted){if(r.duration=(new Date).getTime()-this.startTime,4===t.readyState){e.status=t.status;var a=t.responseType,f="arraybuffer"===a||"blob"===a||"json"===a?t.response:t.responseText,u=n(f);if(u&&(r.rxSize=u),this.sameOrigin){var d=t.getResponseHeader("X-NewRelic-App-Data");d&&(e.cat=d.split(", ").pop())}}else e.status=0;r.cbTime=this.cbTime,o("xhr",[e,r,this.startTime])}}}function n(t){if("string"==typeof t&&t.length)return t.length;if("object"!=typeof t)return void 0;if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if("undefined"!=typeof FormData&&t instanceof FormData)return void 0;try{return JSON.stringify(t).length}catch(e){return void 0}}function r(t,e){var n=i(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.sameOrigin=n.sameOrigin}if(window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&!/CriOS/.test(navigator.userAgent)){t("loader").features.xhr=!0;var o=t("handle"),i=t(2),a=t("ee"),s=["load","error","abort","timeout"],c=s.length,f=t(1),u=window.XMLHttpRequest;t(4),t(3),a.on("new-xhr",function(){this.totalCbs=0,this.called=0,this.cbTime=0,this.end=e,this.ended=!1,this.xhrGuids={}}),a.on("open-xhr-start",function(t){this.params={method:t[0]},r(this,t[1]),this.metrics={}}),a.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid)}),a.on("send-xhr-start",function(t,e){var r=this.metrics,o=t[0],i=this;if(r&&o){var f=n(o);f&&(r.txSize=f)}this.startTime=(new Date).getTime(),this.listener=function(t){try{"abort"===t.type&&(i.params.aborted=!0),("load"!==t.type||i.called===i.totalCbs&&(i.onloadCalled||"function"!=typeof e.onload))&&i.end(e)}catch(n){try{a.emit("internal-error",[n])}catch(r){}}};for(var u=0;c>u;u++)e.addEventListener(s[u],this.listener,!1)}),a.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),a.on("xhr-load-added",function(t,e){var n=""+f(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),a.on("xhr-load-removed",function(t,e){var n=""+f(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),a.on("addEventListener-end",function(t,e){e instanceof u&&"load"===t[0]&&a.emit("xhr-load-added",[t[1],t[2]],e)}),a.on("removeEventListener-end",function(t,e){e instanceof u&&"load"===t[0]&&a.emit("xhr-load-removed",[t[1],t[2]],e)}),a.on("fn-start",function(t,e,n){e instanceof u&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=(new Date).getTime()))}),a.on("fn-end",function(t,e){this.xhrCbStart&&a.emit("xhr-cb-time",[(new Date).getTime()-this.xhrCbStart,this.onload,e],e)})}},{1:"XL7HBI",2:14,3:12,4:8,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],14:[function(t,e){e.exports=function(t){var e=document.createElement("a"),n=window.location,r={};e.href=t,r.port=e.port;var o=e.href.split("://");return!r.port&&o[1]&&(r.port=o[1].split("/")[0].split("@").pop().split(":")[1]),r.port&&"0"!==r.port||(r.port="https"===o[0]?"443":"80"),r.hostname=e.hostname||n.hostname,r.pathname=e.pathname,r.protocol=o[0],"/"!==r.pathname.charAt(0)&&(r.pathname="/"+r.pathname),r.sameOrigin=!e.hostname||e.hostname===document.domain&&e.port===n.port&&e.protocol===n.protocol,r}},{}],15:[function(t,e){function n(t){return function(){r(t,[(new Date).getTime()].concat(i(arguments)))}}var r=t("handle"),o=t(1),i=t(2);"undefined"==typeof window.newrelic&&(newrelic=window.NREUM);var a=["setPageViewName","addPageAction","setCustomAttribute","finished","addToTrace","inlineHit","noticeError"];o(a,function(t,e){window.NREUM[e]=n("api-"+e)}),e.exports=window.NREUM},{1:24,2:25,handle:"D5DuLP"}],gos:[function(t,e){e.exports=t("7eSDFh")},{}],"7eSDFh":[function(t,e){function n(t,e,n){if(r.call(t,e))return t[e];var o=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:o,writable:!0,enumerable:!1}),o}catch(i){}return t[e]=o,o}var r=Object.prototype.hasOwnProperty;e.exports=n},{}],D5DuLP:[function(t,e){function n(t,e,n){return r.listeners(t).length?r.emit(t,e,n):void(r.q&&(r.q[t]||(r.q[t]=[]),r.q[t].push(e)))}var r=t("ee").create();e.exports=n,n.ee=r,r.q={}},{ee:"QJf3ax"}],handle:[function(t,e){e.exports=t("D5DuLP")},{}],XL7HBI:[function(t,e){function n(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:i(t,o,function(){return r++})}var r=1,o="nr@id",i=t("gos");e.exports=n},{gos:"7eSDFh"}],id:[function(t,e){e.exports=t("XL7HBI")},{}],G9z0Bl:[function(t,e){function n(){var t=p.info=NREUM.info,e=f.getElementsByTagName("script")[0];if(t&&t.licenseKey&&t.applicationID&&e){s(d,function(e,n){e in t||(t[e]=n)});var n="https"===u.split(":")[0]||t.sslForHttp;p.proto=n?"https://":"http://",a("mark",["onload",i()]);var r=f.createElement("script");r.src=p.proto+t.agent,e.parentNode.insertBefore(r,e)}}function r(){"complete"===f.readyState&&o()}function o(){a("mark",["domContent",i()])}function i(){return(new Date).getTime()}var a=t("handle"),s=t(1),c=window,f=c.document;t(2);var u=(""+location).split("?")[0],d={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-768.min.js"},p=e.exports={offset:i(),origin:u,features:{}};f.addEventListener?(f.addEventListener("DOMContentLoaded",o,!1),c.addEventListener("load",n,!1)):(f.attachEvent("onreadystatechange",r),c.attachEvent("onload",n)),a("mark",["firstbyte",i()])},{1:24,2:15,handle:"D5DuLP"}],loader:[function(t,e){e.exports=t("G9z0Bl")},{}],24:[function(t,e){function n(t,e){var n=[],o="",i=0;for(o in t)r.call(t,o)&&(n[i]=e(o,t[o]),i+=1);return n}var r=Object.prototype.hasOwnProperty;e.exports=n},{}],25:[function(t,e){function n(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,o=n-e||0,i=Array(0>o?0:o);++r<o;)i[r]=t[e+r];return i}e.exports=n},{}],26:[function(t,e){function n(t){return!(t&&"function"==typeof t&&t.apply&&!t[i])}var r=t("ee"),o=t(1),i="nr@original",a=Object.prototype.hasOwnProperty;e.exports=function(t){function e(t,e,r,a){function nrWrapper(){var n,i,s,f;try{i=this,n=o(arguments),s=r&&r(n,i)||{}}catch(d){u([d,"",[n,i,a],s])}c(e+"start",[n,i,a],s);try{return f=t.apply(i,n)}catch(p){throw c(e+"err",[n,i,p],s),p}finally{c(e+"end",[n,i,f],s)}}return n(t)?t:(e||(e=""),nrWrapper[i]=t,f(t,nrWrapper),nrWrapper)}function s(t,r,o,i){o||(o="");var a,s,c,f="-"===o.charAt(0);for(c=0;c<r.length;c++)s=r[c],a=t[s],n(a)||(t[s]=e(a,f?s+o:o,i,s))}function c(e,n,r){try{t.emit(e,n,r)}catch(o){u([o,e,n,r])}}function f(t,e){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(t);return n.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(r){u([r])}for(var o in t)a.call(t,o)&&(e[o]=t[o]);return e}function u(e){try{t.emit("internal-error",e)}catch(n){}}return t||(t=r),e.inPlace=s,e.flag=i,e}},{1:25,ee:"QJf3ax"}]},{},["G9z0Bl",4,13,7,6,5]);</script>
<meta name="author" content="IFTTT">


  <meta name="description" content="IFTTT puts the internet to work for you. Create simple connections between the products you use every day.">
  <meta name="keywords" content="IFTTT  recipes triggers actions channels if this then that ifthisthenthat tasks task create creative connect connections do button camera note notepad">
  <meta name="copyright" content="Copyright 2015 IFTTT Inc.">
  <meta name="theme-color" content="#33ccff">


  <meta name="apple-itunes-app" content="app-id=660944635, app-argument=ifttt://">


  <meta content="IFTTT / Put the internet to work for you." property="og:site_name">
  <meta content="122259781154546" property="fb:app_id">
  <meta content="7302486" property="fb:admins">


  <meta content="IFTTT" property="og:title">
  <meta content="IFTTT puts the internet to work for you. Create simple connections between the products you use every day." property="og:description">
  <meta content="website" property="og:type">
  <meta content="https://ifttt.com/images/og_ifttt_logo.png" property="og:image">


  <meta name="twitter:card" content="summary">
  <meta name="twitter:site" content="@IFTTT">
  <meta name="twitter:image" content="https://ifttt.com/images/twitter_card_logo.png">
  <meta name="twitter:app:name:iphone" content="IF">
  <meta name="twitter:app:name:ipad" content="IF">
  <meta name="twitter:app:id:iphone" content="660944635">
  <meta name="twitter:app:id:ipad" content="660944635">
  <meta name="twitter:app:url:iphone" content="ifttt://">
  <meta name="twitter:app:url:ipad" content="ifttt://">
  <meta name="twitter:app:name:googleplay" content="IF">
  <meta name="twitter:app:id:googleplay" content="com.ifttt.ifttt">
  <meta name="twitter:app:url:googleplay" content="ifttt://">

  <meta name="robots" content="all">

<script>
  //<![CDATA[
    window.IFTTT || (window.IFTTT = {});
    window.IFTTT.runOnLoad = {
      queue: [],
      append: function(method, _this){
        this.queue.push({method: method, this: _this});
        // immediatly run after the initial setup
        if(this.__hasRun == true)
          this.run();
        
        return this;
      },
      run: function(){
        var queue = this.queue;
        while(queue.length){
          var step = queue.shift();
          if(typeof step.method == 'function')
            step.method.call(step.this);
        }
        this.__hasRun = true
      },
      __hasRun: false
    }
  //]]>
</script>

<meta name="csrf-param" content="authenticity_token">
<meta name="csrf-token" content="scXK1/FSOpqA6xd2/EpT2fjyQbX+pFa77HxOziSjIIc=">
<link href="https://d3rnbxvnd0hlox.cloudfront.net/assets/favicon-bd4ed939db103c7da5972b123ca4e193.png" rel="shortcut icon" type="image/vnd.microsoft.icon">
<link href="https://d3rnbxvnd0hlox.cloudfront.net/assets/favicon-8b5d0575d1fc0db888e0d7d59adbf39a.ico" rel="shortcut icon" type="image/vnd.microsoft.icon">
<link href="https://d3rnbxvnd0hlox.cloudfront.net/assets/apple-touch-icon-57x57-8266cdab31295f5dc31704bbe320b77a.png" rel="apple-touch-icon-precomposed" sizes="57x57">
<link href="https://d3rnbxvnd0hlox.cloudfront.net/assets/apple-touch-icon-114x114-8f1aaa1bf93ef755d77ab6e8e1219fef.png" rel="apple-touch-icon-precomposed" sizes="114x114">
<link href="https://d3rnbxvnd0hlox.cloudfront.net/assets/apple-touch-icon-72x72-7a04561b703db07aa136e833f8568793.png" rel="apple-touch-icon-precomposed" sizes="72x72">
<link href="https://d3rnbxvnd0hlox.cloudfront.net/assets/apple-touch-icon-144x144-fc1651891796f73a9f43e3415c02b7bb.png" rel="apple-touch-icon-precomposed" sizes="144x144">
<meta name="apple-mobile-web-app-title" content="IFTTT.com">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=10">
<link href="https://fast.fonts.net/t/1.css?apiType=css&amp;projectid=0dc2272c-02af-4455-a8b4-365fc9017a5c" rel="stylesheet" type="text/css" media="screen">
<link href="https://d3rnbxvnd0hlox.cloudfront.net/assets/main-0876b153ec055ac61452d9fa035cd115.css" rel="stylesheet" type="text/css" media="screen">
<link href="https://d3rnbxvnd0hlox.cloudfront.net/assets/authenticated-a8711e4173537f325ea16c201105ed16.css" rel="stylesheet" type="text/css" media="screen">
<link href="https://d3rnbxvnd0hlox.cloudfront.net/assets/public-98c7720a40526fd6aec370b107f616c8.css" rel="stylesheet" type="text/css" media="screen">

<link href="https://d3rnbxvnd0hlox.cloudfront.net/assets/v2/application-f34e7245a5f27d8162ad5f01328c5ee2.css" rel="stylesheet" type="text/css" media="screen">
<link href="https://d3rnbxvnd0hlox.cloudfront.net/assets/hi-dpi-fb98e6e7749e7eeab7ae1865bac86cd2.css" rel="stylesheet" type="text/css" media="(-webkit-min-device-pixel-ratio: 1.5), (min--moz-device-pixel-ratio: 2), (-o-min-device-pixel-ratio: 3/2), (min-device-pixel-rat">

<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>
<body>

<div class="l-all-but-footer">
<div itemscope="">
<header class="l-header">
<div class="l-site-browse-header l-site-header-with-search l-site-browse-and-search-combined">
  <div class="l-site-header-logo">
  <a title="My Recipes" class="ifttt-logo" href="/" data-track-event="header_logo" data-track-data='{"controller":"statements","action":"new"}'>
    <img class="logo" alt="Ifttt-logo" src="https://d3rnbxvnd0hlox.cloudfront.net/assets/v2/ifttt-logo-bb65236e5bfb8aa3608ea3d53cdba2fa.svg">
  </a>
</div>


  
    <form class="top-bar-search" action="addmissiontype.jsp" method="GET">
      <input name="q" class="top-bar-input typeahead" type="text" placeholder="Search">
      <input type="submit" value="">
    </form>

      <div class="l-site-header-menus-toggle">
        <a class="header-menus-toggle menu-toggle is-for-opening" data-track-event="header_dropdown" data-track-data='{"controller":"statements","action":"new"}' data-for-menu="#site-header-menus">
          c…in0330
          <span class="dropdown-arrow__container">
            <span class="dropdown-arrow"></span>
          </span>
        </a>
      </div>
      <div class="l-site-header-menus is-closed" id="site-header-menus">
        <div class="l-site-header-menus-inner">
          <nav class="l-site-header-flexible-nav">
            <ul class="nav nav-site is-authenticated">
                <li class="nav_item">
                  <a class="nav_link" href="addmission.jsp" data-track-event="header_link_my_recipes" data-track-data='{"controller":"statements","action":"index"}'>Add Mission</a>
                </li>
                <li class="nav_item">
                  <a class="nav_link" href="startstopmission.jsp" data-track-event="header_link_browse" data-track-data='{"controller":"statements","action":"index"}'>Start/Stop Mission</a>
                </li>
                <li class="nav_item">
                  <a class="nav_link" href="rewritemission.jsp" data-track-event="header_link_channels" data-track-data='{"controller":"statements","action":"index"}'>Rewrite Mission</a>
                </li>
			
              <li class="nav_item js_show">
                <a class="menu-toggle user-menu-toggle is-for-opening" href="/preferences/settings" data-track-event="header_dropdown" data-track-data='{"controller":"statements","action":"index"}' data-for-menu="#ifttt-user-menu">
                  <%=user%>
                  <span class="dropdown-arrow__container">
                    <span class="dropdown-arrow"></span>
                  </span>
                </a>
              </li>
            </ul>
          </nav>
          <div class="l-site-header-user-menu">
            <ul class="user-menu is-closed" id="ifttt-user-menu">
                <li class="user-menu_item">
                  <a class="user-menu_link" href="message.jsp" data-track-event="header_dropdown_menu_item_create" data-track-data='{"controller":"statements","action":"index"}'>Message</a>
                </li>
                <li class="user-menu_item">
                  <a class="user-menu_link" href="recharge.jsp?money1=money1" data-track-event="header_dropdown_menu_item_recipe_log" data-track-data='{"controller":"statements","action":"index"}'>Recharge</a>
                </li>
               <li class="user-menu_item">
                  <a class="user-menu_link" data-track-event="header_dropdown_menu_item_recipe_log" data-track-data='{"controller":"statements","action":"index"}'>account:<%=money1%></a>
                </li>
 <li class="user-menu_item">
                  <a class="user-menu_link" data-track-event="header_dropdown_menu_item_recipe_log" data-track-data='{"controller":"statements","action":"index"}'>lv:<%=lv%></a>
                </li>
                <li class="user-menu_item">
                  <a class="user-menu_link" href="logout.jsp" data-track-event="header_dropdown_menu_item_sign_out" data-track-data='{"controller":"statements","action":"index"}'>Sign Out</a>
                </li>
            </ul>
          </div>
        </div>
      </div>

</div>

<div class="l-notifications" style="width: 100%;">
<div class="notification-collector show">
<script>
  //<![CDATA[
    IFTTT.runOnLoad.append(function(){
      window.IFTTT.notifications.resizeNotification()
    });
  //]]>
</script>
</div>

</div>
<div class="l-page-header">
<div class="l-page-header-inner">
<div class="is-alone l-page-title-unit">
<h1 class="l-page-title">
Create a Recipe

</h1>
</div>
</div>
</div>
</header>


<article class="l-page-content">
<div class="build_size" id="start" style="font-size: 148.43px;">
<div class="is-dimmable">
<span class="create_recipe_inline_text_block">if</span><span style="display: none"> </span><span class="create_recipe_inline_text_block"><a onclick="choose_trigger_channel(); PageGuard.safetyOn(); event.preventDefault();" href="#" data-track-event="scr_this_click" data-track-data='{"controller":"statements","action":"new","funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"}}'>this</a></span><span style="display: none"> </span><span class="create_recipe_inline_text_block">then</span><span style="display: none"> </span><span class="create_recipe_inline_text_block">that</span>
</div>
</div>
<br>
<div id="statement_create">
<form class="form" id="new_statement" action="addmissiontype.jsp" method="post" accept-charset="UTF-8"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="scXK1/FSOpqA6xd2/EpT2fjyQbX+pFa77HxOziSjIIc="></div>
<div class="step_parent is-backable" id="trigger_channel_select">
<a class="btn-restart" href="#" data-track-event="restart_from_here_choose_t_channel" data-track-data='{"controller":"statements","action":"new","funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"}}'>
restart from here
</a>
<div class="is-dimmable">
<a class="focus-here" href="#"></a>
<h2 class="composer_section_header">
Choose Type
<span class="composer_section_step"></span>
</h2>
<p class="composer_section_description"> 
</p>
<div class="channel-list">

<p class="channel_search_advice hide" id="trigger_search_channels_field_advice"></p>
<script>
  //<![CDATA[
    IFTTT.runOnLoad.append(function(){
      if(window.channelsSearch == undefined){
        window.channelsSearch = {
          escapeRegExp: function(str){
            return str.replace(/[\-\[\]\/\{\}\(\)\*\+\?\.\\\^\$\|]/g, "\\$&");
          }
        }
      }
      // Name and value are required and must be the same text string for the autocomplete to work
      window.channelsSearch["channels_trigger_search_channels_field"] = [{"value":"500px","name":"500px","id":83,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/83/icons/regular.png","url":"/83"},{"value":"abode","name":"abode","id":1381313233,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1381313233/icons/regular.png","url":"/1381313233"},{"value":"Adafruit","name":"adafruit","id":1505438027,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1505438027/icons/regular.png","url":"/1505438027"},{"value":"Amazon Alexa","name":"amazon alexa echo speech voice","id":1172726678,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1172726678/icons/regular.png","url":"/1172726678"},{"value":"Android Battery","name":"android battery","id":701104889,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/701104889/icons/regular.png","url":"/701104889"},{"value":"Android Device","name":"android device","id":1089090894,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1089090894/icons/regular.png","url":"/1089090894"},{"value":"Android Location","name":"android location","id":819446830,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/819446830/icons/regular.png","url":"/819446830"},{"value":"Android Phone Call","name":"android phone call","id":405156688,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/405156688/icons/regular.png","url":"/405156688"},{"value":"Android Photos","name":"android photos camera picture","id":1329116480,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1329116480/icons/regular.png","url":"/1329116480"},{"value":"Android SMS","name":"android sms","id":1322033008,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1322033008/icons/regular.png","url":"/1322033008"},{"value":"Android Wear","name":"android wear","id":1972740002,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1972740002/icons/regular.png","url":"/1972740002"},{"value":"App.net","name":"app.net","id":54,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/54/icons/regular.png","url":"/54"},{"value":"AppZapp","name":"appzapp","id":157158652,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/157158652/icons/regular.png","url":"/157158652"},{"value":"Automatic","name":"automatic","id":1000828161,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1000828161/icons/regular.png","url":"/1000828161"},{"value":"Beeminder","name":"beeminder","id":1391621525,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1391621525/icons/regular.png","url":"/1391621525"},{"value":"Best Buy","name":"best buy","id":637849137,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/637849137/icons/regular.png","url":"/637849137"},{"value":"bitly","name":"bitly","id":50,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/50/icons/regular.png","url":"/50"},{"value":"Blogger","name":"blogger","id":47,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/47/icons/regular.png","url":"/47"},{"value":"BloomSky","name":"bloomsky","id":220616748,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/220616748/icons/regular.png","url":"/220616748"},{"value":"Boxoh Package Tracking","name":"boxoh package tracking","id":68,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/68/icons/regular.png","url":"/68"},{"value":"Bttn","name":"bttn","id":95451298,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/95451298/icons/regular.png","url":"/95451298"},{"value":"Buffer","name":"buffer","id":42,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/42/icons/regular.png","url":"/42"},{"value":"BuzzFeed","name":"buzzfeed","id":43,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/43/icons/regular.png","url":"/43"},{"value":"Caleo","name":"caleo","id":1137372763,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1137372763/icons/regular.png","url":"/1137372763"},{"value":"Camio","name":"camio","id":190007642,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/190007642/icons/regular.png","url":"/190007642"},{"value":"Campfire","name":"campfire","id":67,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/67/icons/regular.png","url":"/67"},{"value":"Chain","name":"chain","id":1016606840,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1016606840/icons/regular.png","url":"/1016606840"},{"value":"Cisco Spark","name":"cisco spark","id":629925599,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/629925599/icons/regular.png","url":"/629925599"},{"value":"Craigslist","name":"craigslist","id":12,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/12/icons/regular.png","url":"/12"},{"value":"Dailymotion","name":"dailymotion","id":933516246,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/933516246/icons/regular.png","url":"/933516246"},{"value":"Dash","name":"dash","id":207972705,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/207972705/icons/regular.png","url":"/207972705"},{"value":"Date & Time","name":"date & time clock daily day interval hour hourly timer","id":3,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/3/icons/regular.png","url":"/3"},{"value":"Deezer","name":"deezer","id":1607416078,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1607416078/icons/regular.png","url":"/1607416078"},{"value":"Delicious","name":"delicious bookmark","id":9,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/9/icons/regular.png","url":"/9"},{"value":"Digg","name":"digg","id":20588782,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/20588782/icons/regular.png","url":"/20588782"},{"value":"Diigo","name":"diigo","id":40,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/40/icons/regular.png","url":"/40"},{"value":"DocSend","name":"docsend","id":2084493576,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2084493576/icons/regular.png","url":"/2084493576"},{"value":"dondeEsta Family","name":"dondeesta family","id":869231464,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/869231464/icons/regular.png","url":"/869231464"},{"value":"Dropbox","name":"dropbox","id":26,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/26/icons/regular.png","url":"/26"},{"value":"eBay","name":"ebay","id":1527317548,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1527317548/icons/regular.png","url":"/1527317548"},{"value":"ecobee","name":"ecobee","id":1303522923,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1303522923/icons/regular.png","url":"/1303522923"},{"value":"Email","name":"email","id":6,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/6/icons/regular.png","url":"/6"},{"value":"Entertainment Weekly","name":"entertainment weekly","id":1412777690,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1412777690/icons/regular.png","url":"/1412777690"},{"value":"Envoy","name":"envoy","id":497672789,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/497672789/icons/regular.png","url":"/497672789"},{"value":"Epicurious","name":"epicurious","id":1641091901,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1641091901/icons/regular.png","url":"/1641091901"},{"value":"ESPN","name":"espn","id":72,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/72/icons/regular.png","url":"/72"},{"value":"Etsy","name":"etsy","id":64,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/64/icons/regular.png","url":"/64"},{"value":"Evernote","name":"evernote","id":25,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/25/icons/regular.png","url":"/25"},{"value":"Eyefi","name":"eyefi","id":2045751579,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2045751579/icons/regular.png","url":"/2045751579"},{"value":"Facebook","name":"facebook","id":10,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/10/icons/regular.png","url":"/10"},{"value":"Facebook Pages","name":"facebook pages","id":29,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/29/icons/regular.png","url":"/29"},{"value":"Feed","name":"feed atom blog rss","id":4,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/4/icons/regular.png","url":"/4"},{"value":"Feedly","name":"feedly","id":87,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/87/icons/regular.png","url":"/87"},{"value":"ffffound!","name":"ffffound!","id":11,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/11/icons/regular.png","url":"/11"},{"value":"Fitbit","name":"fitbit","id":594746782,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/594746782/icons/regular.png","url":"/594746782"},{"value":"Fiverr","name":"fiverr","id":933696188,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/933696188/icons/regular.png","url":"/933696188"},{"value":"Flic","name":"flic","id":964585221,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/964585221/icons/regular.png","url":"/964585221"},{"value":"Flickr","name":"flickr","id":21,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/21/icons/regular.png","url":"/21"},{"value":"FollowUp.cc","name":"followup.cc","id":2059472869,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2059472869/icons/regular.png","url":"/2059472869"},{"value":"Foursquare","name":"foursquare","id":31,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/31/icons/regular.png","url":"/31"},{"value":"Garageio","name":"garageio","id":906187472,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/906187472/icons/regular.png","url":"/906187472"},{"value":"GE Appliances Cooking","name":"ge appliances cooking","id":136153493,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/136153493/icons/regular.png","url":"/136153493"},{"value":"GE Appliances GeoSpring™","name":"ge appliances geospring™","id":199559970,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/199559970/icons/regular.png","url":"/199559970"},{"value":"GE Appliances Refrigerator","name":"ge appliances refrigerator","id":458399700,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/458399700/icons/regular.png","url":"/458399700"},{"value":"Genius","name":"genius","id":526812314,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/526812314/icons/regular.png","url":"/526812314"},{"value":"Giphy","name":"giphy","id":332126936,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/332126936/icons/regular.png","url":"/332126936"},{"value":"GitHub","name":"github","id":2107379463,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2107379463/icons/regular.png","url":"/2107379463"},{"value":"Gmail","name":"gmail email","id":33,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/33/icons/regular.png","url":"/33"},{"value":"Google Calendar","name":"google calendar","id":36,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/36/icons/regular.png","url":"/36"},{"value":"GreenIQ","name":"greeniq","id":750945657,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/750945657/icons/regular.png","url":"/750945657"},{"value":"Greenwave Systems","name":"greenwave systems","id":1240288934,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1240288934/icons/regular.png","url":"/1240288934"},{"value":"Gumroad","name":"gumroad checkout commerce payments sale sell","id":1515512761,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1515512761/icons/regular.png","url":"/1515512761"},{"value":"Harvest","name":"harvest","id":1627814135,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1627814135/icons/regular.png","url":"/1627814135"},{"value":"Home Depot","name":"home depot","id":1335866135,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1335866135/icons/regular.png","url":"/1335866135"},{"value":"Homeboy","name":"homeboy","id":161286730,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/161286730/icons/regular.png","url":"/161286730"},{"value":"HomeControl Flex","name":"homecontrol flex","id":1484669294,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1484669294/icons/regular.png","url":"/1484669294"},{"value":"HomeSeer","name":"homeseer","id":1482820867,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1482820867/icons/regular.png","url":"/1482820867"},{"value":"IFTTT","name":"ifttt","id":1,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1/icons/regular.png","url":"/1"},{"value":"Inoreader","name":"inoreader","id":767950622,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/767950622/icons/regular.png","url":"/767950622"},{"value":"Instagram","name":"instagram camera picture","id":28,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/28/icons/regular.png","url":"/28"},{"value":"Instapaper","name":"instapaper","id":1646223231,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1646223231/icons/regular.png","url":"/1646223231"},{"value":"Instawell","name":"instawell","id":1584696000,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1584696000/icons/regular.png","url":"/1584696000"},{"value":"InStyle","name":"instyle","id":1034687479,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1034687479/icons/regular.png","url":"/1034687479"},{"value":"IntesisHome","name":"intesishome","id":1091101406,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1091101406/icons/regular.png","url":"/1091101406"},{"value":"iOS Contacts","name":"ios contacts iphone","id":79,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/79/icons/regular.png","url":"/79"},{"value":"iOS Location","name":"ios location iphone","id":1161815835,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1161815835/icons/regular.png","url":"/1161815835"},{"value":"iOS Photos","name":"ios photos camera iphone picture","id":78,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/78/icons/regular.png","url":"/78"},{"value":"iOS Reminders","name":"ios reminders iphone","id":80,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/80/icons/regular.png","url":"/80"},{"value":"Is It Christmas?","name":"is it christmas? xmas holidays","id":696562578,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/696562578/icons/regular.png","url":"/696562578"},{"value":"iSecurity+","name":"isecurity+","id":1492652534,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1492652534/icons/regular.png","url":"/1492652534"},{"value":"iSmartAlarm","name":"ismartalarm","id":1571567306,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1571567306/icons/regular.png","url":"/1571567306"},{"value":"Ivideon","name":"ivideon","id":4032732,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/4032732/icons/regular.png","url":"/4032732"},{"value":"Komfy Switch with Camera","name":"komfy switch with camera","id":978898741,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/978898741/icons/regular.png","url":"/978898741"},{"value":"Kyber Calendars & Reminders","name":"kyber calendars & reminders","id":43748741,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/43748741/icons/regular.png","url":"/43748741"},{"value":"LaMetric","name":"lametric","id":1574163459,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1574163459/icons/regular.png","url":"/1574163459"},{"value":"Last.fm","name":"last.fm","id":37,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/37/icons/regular.png","url":"/37"},{"value":"Launch Center","name":"launch center","id":492475852,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/492475852/icons/regular.png","url":"/492475852"},{"value":"Life360","name":"life360","id":1266669658,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1266669658/icons/regular.png","url":"/1266669658"},{"value":"Lifelog","name":"lifelog","id":1845421835,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1845421835/icons/regular.png","url":"/1845421835"},{"value":"littleBits","name":"littlebits","id":1140403198,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1140403198/icons/regular.png","url":"/1140403198"},{"value":"Maker","name":"maker api webhooks","id":1004582012,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1004582012/icons/regular.png","url":"/1004582012"},{"value":"Manything","name":"manything","id":1840701274,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1840701274/icons/regular.png","url":"/1840701274"},{"value":"Medium","name":"medium","id":1259075256,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1259075256/icons/regular.png","url":"/1259075256"},{"value":"MESH","name":"mesh","id":996886751,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/996886751/icons/regular.png","url":"/996886751"},{"value":"Misfit","name":"misfit","id":1886920166,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1886920166/icons/regular.png","url":"/1886920166"},{"value":"MivaLife","name":"mivalife","id":410949888,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/410949888/icons/regular.png","url":"/410949888"},{"value":"MixRadio","name":"mixradio","id":698894015,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/698894015/icons/regular.png","url":"/698894015"},{"value":"Mojio","name":"mojio","id":542067803,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/542067803/icons/regular.png","url":"/542067803"},{"value":"Moni.ai","name":"moni.ai","id":1083913057,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1083913057/icons/regular.png","url":"/1083913057"},{"value":"Myfox HomeControl","name":"myfox homecontrol","id":1347542715,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1347542715/icons/regular.png","url":"/1347542715"},{"value":"Myfox Security","name":"myfox security","id":637877174,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/637877174/icons/regular.png","url":"/637877174"},{"value":"Nest Protect","name":"nest protect","id":2092498048,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2092498048/icons/regular.png","url":"/2092498048"},{"value":"Nest Thermostat","name":"nest thermostat","id":811416297,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/811416297/icons/regular.png","url":"/811416297"},{"value":"Netatmo Thermostat","name":"netatmo thermostat","id":2018753238,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2018753238/icons/regular.png","url":"/2018753238"},{"value":"Netatmo Weather Station","name":"netatmo weather station","id":650643717,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/650643717/icons/regular.png","url":"/650643717"},{"value":"Netatmo Welcome","name":"netatmo welcome","id":1008080383,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1008080383/icons/regular.png","url":"/1008080383"},{"value":"Neurio","name":"neurio","id":1887239914,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1887239914/icons/regular.png","url":"/1887239914"},{"value":"NewsBlur","name":"newsblur","id":604978379,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/604978379/icons/regular.png","url":"/604978379"},{"value":"Nike+","name":"nike+","id":1523147690,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1523147690/icons/regular.png","url":"/1523147690"},{"value":"NIU","name":"niu","id":1701151755,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1701151755/icons/regular.png","url":"/1701151755"},{"value":"NPR","name":"npr","id":186278498,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/186278498/icons/regular.png","url":"/186278498"},{"value":"Numerous","name":"numerous","id":1187710726,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1187710726/icons/regular.png","url":"/1187710726"},{"value":"Oco Camera","name":"oco camera","id":2117255939,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2117255939/icons/regular.png","url":"/2117255939"},{"value":"Office 365 Calendar","name":"office 365 calendar","id":554351061,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/554351061/icons/regular.png","url":"/554351061"},{"value":"Office 365 Contacts","name":"office 365 contacts","id":775617870,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/775617870/icons/regular.png","url":"/775617870"},{"value":"Office 365 Mail","name":"office 365 mail","id":908435712,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/908435712/icons/regular.png","url":"/908435712"},{"value":"Ooma","name":"ooma","id":55702734,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/55702734/icons/regular.png","url":"/55702734"},{"value":"openHAB","name":"openhab","id":138716786,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/138716786/icons/regular.png","url":"/138716786"},{"value":"Parrot Flower Power","name":"parrot flower power","id":1351093729,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1351093729/icons/regular.png","url":"/1351093729"},{"value":"Particle","name":"particle","id":1978418576,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1978418576/icons/regular.png","url":"/1978418576"},{"value":"Pebblebee","name":"pebblebee","id":792831678,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/792831678/icons/regular.png","url":"/792831678"},{"value":"People","name":"people","id":1535210167,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1535210167/icons/regular.png","url":"/1535210167"},{"value":"Phone Call","name":"phone call","id":8,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/8/icons/regular.png","url":"/8"},{"value":"Pinboard","name":"pinboard bookmark","id":23,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/23/icons/regular.png","url":"/23"},{"value":"Pinterest","name":"pinterest","id":1698089062,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1698089062/icons/regular.png","url":"/1698089062"},{"value":"Pocket","name":"pocket","id":24,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/24/icons/regular.png","url":"/24"},{"value":"Pryv","name":"pryv","id":67735607,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/67735607/icons/regular.png","url":"/67735607"},{"value":"Qapital","name":"qapital","id":2072225167,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2072225167/icons/regular.png","url":"/2072225167"},{"value":"Qblinks Qmote","name":"qblinks qmote","id":548647597,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/548647597/icons/regular.png","url":"/548647597"},{"value":"QualityTime","name":"qualitytime","id":914409341,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/914409341/icons/regular.png","url":"/914409341"},{"value":"Quip","name":"quip","id":563377653,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/563377653/icons/regular.png","url":"/563377653"},{"value":"Rachio Iro","name":"rachio iro","id":2116547707,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2116547707/icons/regular.png","url":"/2116547707"},{"value":"Readability","name":"readability","id":38,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/38/icons/regular.png","url":"/38"},{"value":"ReadingPack","name":"readingpack","id":1719525583,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1719525583/icons/regular.png","url":"/1719525583"},{"value":"reddit","name":"reddit","id":1352860597,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1352860597/icons/regular.png","url":"/1352860597"},{"value":"RemoteLync","name":"remotelync","id":975060169,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/975060169/icons/regular.png","url":"/975060169"},{"value":"RescueTime","name":"rescuetime","id":1829789558,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1829789558/icons/regular.png","url":"/1829789558"},{"value":"Ring Video Doorbell","name":"ring video doorbell","id":1440716852,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1440716852/icons/regular.png","url":"/1440716852"},{"value":"Salesforce","name":"salesforce","id":736747042,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/736747042/icons/regular.png","url":"/736747042"},{"value":"Scout Alarm","name":"scout alarm","id":1015305304,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1015305304/icons/regular.png","url":"/1015305304"},{"value":"Seagate Personal Cloud","name":"seagate personal cloud","id":524194338,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/524194338/icons/regular.png","url":"/524194338"},{"value":"Seeed","name":"seeed","id":587292457,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/587292457/icons/regular.png","url":"/587292457"},{"value":"Semantics3","name":"semantics3","id":1338545740,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1338545740/icons/regular.png","url":"/1338545740"},{"value":"Sighthound Video","name":"sighthound video","id":778346255,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/778346255/icons/regular.png","url":"/778346255"},{"value":"Sina Weibo","name":"sina weibo","id":1334062331,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1334062331/icons/regular.png","url":"/1334062331"},{"value":"SkyBell HD","name":"skybell hd","id":277916670,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/277916670/icons/regular.png","url":"/277916670"},{"value":"Slice","name":"slice","id":279896210,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/279896210/icons/regular.png","url":"/279896210"},{"value":"Smappee","name":"smappee","id":605056257,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/605056257/icons/regular.png","url":"/605056257"},{"value":"SmartThings","name":"smartthings","id":82,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/82/icons/regular.png","url":"/82"},{"value":"SMS","name":"sms","id":5,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/5/icons/regular.png","url":"/5"},{"value":"SoundCloud","name":"soundcloud","id":41,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/41/icons/regular.png","url":"/41"},{"value":"Space","name":"space nasa","id":1829340444,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1829340444/icons/regular.png","url":"/1829340444"},{"value":"Sports Illustrated","name":"sports illustrated","id":824532382,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/824532382/icons/regular.png","url":"/824532382"},{"value":"Spotify","name":"spotify","id":51464135,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/51464135/icons/regular.png","url":"/51464135"},{"value":"Square","name":"square business checkout commerce finance money payments sale","id":891279159,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/891279159/icons/regular.png","url":"/891279159"},{"value":"Stack Lighting","name":"stack lighting","id":1492246798,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1492246798/icons/regular.png","url":"/1492246798"},{"value":"Stockimo","name":"stockimo","id":1576850012,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1576850012/icons/regular.png","url":"/1576850012"},{"value":"Stocks","name":"stocks","id":22,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/22/icons/regular.png","url":"/22"},{"value":"Stripe","name":"stripe business checkout commerce finance money payments sale","id":769747585,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/769747585/icons/regular.png","url":"/769747585"},{"value":"Sunlight Foundation","name":"sunlight foundation","id":1500093018,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1500093018/icons/regular.png","url":"/1500093018"},{"value":"Surfline","name":"surfline","id":1250571588,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1250571588/icons/regular.png","url":"/1250571588"},{"value":"tadoº Smart AC Control","name":"tadoº smart ac control","id":281437275,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/281437275/icons/regular.png","url":"/281437275"},{"value":"tadoº Smart Thermostat","name":"tadoº smart thermostat","id":1246326737,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1246326737/icons/regular.png","url":"/1246326737"},{"value":"TeamSnap","name":"teamsnap","id":1248728628,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1248728628/icons/regular.png","url":"/1248728628"},{"value":"The New York Times","name":"the new york times","id":89,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/89/icons/regular.png","url":"/89"},{"value":"ThermoSmart","name":"thermosmart","id":78435604,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/78435604/icons/regular.png","url":"/78435604"},{"value":"Time","name":"time","id":591979813,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/591979813/icons/regular.png","url":"/591979813"},{"value":"Todoist","name":"todoist","id":1148373811,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1148373811/icons/regular.png","url":"/1148373811"},{"value":"Toodledo","name":"toodledo","id":597573620,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/597573620/icons/regular.png","url":"/597573620"},{"value":"TrackIf","name":"trackif","id":1729781951,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1729781951/icons/regular.png","url":"/1729781951"},{"value":"Trello","name":"trello","id":123859650,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/123859650/icons/regular.png","url":"/123859650"},{"value":"Tumblr","name":"tumblr blog","id":13,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/13/icons/regular.png","url":"/13"},{"value":"Twitter","name":"twitter tweet","id":2,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2/icons/regular.png","url":"/2"},{"value":"U.S. Independence Day","name":"u.s. independence day 4th fourth holidays july","id":1843910738,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1843910738/icons/regular.png","url":"/1843910738"},{"value":"Ubi","name":"ubi","id":84423966,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/84423966/icons/regular.png","url":"/84423966"},{"value":"UP by Jawbone","name":"up by jawbone","id":84,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/84/icons/regular.png","url":"/84"},{"value":"Vimeo","name":"vimeo movie video","id":15,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/15/icons/regular.png","url":"/15"},{"value":"WallyHome","name":"wallyhome","id":1346618440,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1346618440/icons/regular.png","url":"/1346618440"},{"value":"Weather","name":"weather","id":7,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/7/icons/regular.png","url":"/7"},{"value":"Weebly","name":"weebly","id":1846340001,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1846340001/icons/regular.png","url":"/1846340001"},{"value":"WeMo Insight Switch","name":"wemo insight switch","id":748975256,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/748975256/icons/regular.png","url":"/748975256"},{"value":"WeMo Light Switch","name":"wemo light switch","id":85,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/85/icons/regular.png","url":"/85"},{"value":"WeMo Lighting","name":"wemo lighting","id":637201122,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/637201122/icons/regular.png","url":"/637201122"},{"value":"WeMo Maker","name":"wemo maker","id":267597877,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/267597877/icons/regular.png","url":"/267597877"},{"value":"WeMo Motion","name":"wemo motion","id":46,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/46/icons/regular.png","url":"/46"},{"value":"WeMo Switch","name":"wemo switch","id":45,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/45/icons/regular.png","url":"/45"},{"value":"Whistle","name":"whistle","id":1480130844,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1480130844/icons/regular.png","url":"/1480130844"},{"value":"WIFIPLUG","name":"wifiplug","id":733104341,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/733104341/icons/regular.png","url":"/733104341"},{"value":"Wikipedia","name":"wikipedia","id":342916511,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/342916511/icons/regular.png","url":"/342916511"},{"value":"Wink: Egg Minder","name":"wink: egg minder","id":180797397,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/180797397/icons/regular.png","url":"/180797397"},{"value":"Wink: Porkfolio","name":"wink: porkfolio","id":1269841146,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1269841146/icons/regular.png","url":"/1269841146"},{"value":"Wink: Spotter","name":"wink: spotter","id":2117114792,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2117114792/icons/regular.png","url":"/2117114792"},{"value":"Wireless Tag","name":"wireless tag","id":2027750782,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2027750782/icons/regular.png","url":"/2027750782"},{"value":"Withings","name":"withings","id":61,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/61/icons/regular.png","url":"/61"},{"value":"WordPress","name":"wordpress blog","id":30,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/30/icons/regular.png","url":"/30"},{"value":"Yahoo! Fantasy Sports","name":"yahoo! fantasy sports","id":65,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/65/icons/regular.png","url":"/65"},{"value":"Yo","name":"yo","id":880041349,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/880041349/icons/regular.png","url":"/880041349"},{"value":"YouTube","name":"youtube movie video","id":32,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/32/icons/regular.png","url":"/32"},{"value":"Zubie","name":"zubie","id":7877896,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/7877896/icons/regular.png","url":"/7877896"}]
      
      if(window.channelsList_evaluatePosition == undefined){
        window.channelsList_evaluatePosition = function ($collection){
          if($collection){
            var index = 0;
            $collection.removeClass('mod-index-0 mod-index-1 mod-index-2 mod-index-3 mod-index-4 mod-index-5')
            $collection.each(function(){
              $(this).addClass("mod-index-"+index);
              index += 1;
              if(index > 5)
                index = 0;
            });
          }
        };
      }
    
    });
  //]]>
</script>

<!-- / this declare the handlers for the recipe creation autocomplete -->
<script>
  //<![CDATA[
     IFTTT.runOnLoad.append(function(){
      var transitionTimeout = false;
      var showMessageTimeout = false;
      var input = $( "#trigger_search_channels_field" );
      var $channelsHolder = $( "#trigger_search_channels_field" ).parents().eq(2).find('.channel-list_holder');
      var unhideAll = function (){
        window.channelsList_evaluatePosition($( "#trigger_search_channels_field" ).parents().eq(2).find(".channel-list_icon").not('.hidden'));
        $( "#trigger_search_channels_field" ).parents().eq(2).find(".channel-list_icon").removeClass('hide');
      };
      var toggleFiltered = function(matched, unmatched){
        _.each(matched, function(el){
          $( "#trigger_search_channels_field" ).parents().eq(2).find("[data-channel_id='" + el.id + "']").removeClass('hidden');
        });
        _.each(unmatched, function(el){
          $( "#trigger_search_channels_field" ).parents().eq(2).find("[data-channel_id='" + el.id + "']").addClass('hidden');
        });
        window.channelsList_evaluatePosition($( "#trigger_search_channels_field" ).parents().eq(2).find(".channel-list_icon").not('.hidden'));
      };
      var performFiltering = function(ev){
        if(!$channelsHolder.data('forcedHeight')){
          $channelsHolder.height($channelsHolder.height());
          !$channelsHolder.data('forcedHeight', true);
        }
        var val = $(this).val().trim().toLowerCase();
        var matched = _.filter(window.channelsSearch["channels_trigger_search_channels_field"], function(el){
          return el.name.toLowerCase().match(window.channelsSearch.escapeRegExp(val))
        });
        var unmatched = _.difference(window.channelsSearch["channels_trigger_search_channels_field"], matched);
    
        if(val.length && matched.length){
          $channelsHolder.removeClass('hidden');
          $("#trigger_search_channels_field_advice").addClass('hide');
          if(transitionTimeout){
            clearTimeout(transitionTimeout);
          }
          _.each(matched, function(el){
            $( "#trigger_search_channels_field" ).parents().eq(2).find("[data-channel_id='" + el.id + "']").removeClass('out_of_search hide');
          });
          _.each(unmatched, function(el){
            $( "#trigger_search_channels_field" ).parents().eq(2).find("[data-channel_id='" + el.id + "']").addClass('out_of_search hide');
          });
    
          transitionTimeout = setTimeout(function(){
            $channelsHolder.removeClass('hide');
            transitionTimeout = setTimeout(function(){
              toggleFiltered(matched, unmatched)
            }, 150);
          }, 50);
    
        
        } else if(matched.length == 0 && val.length > 0){
          $channelsHolder.addClass('hide');
          if(showMessageTimeout){
            clearTimeout(showMessageTimeout);
          }
          showMessageTimeout = setTimeout(function(){
            $channelsHolder.addClass('hidden');
            showMessageTimeout = setTimeout(function(){
              $("#trigger_search_channels_field_advice").removeClass('hide').text('No Channels match "'+val+'"')
            }, 150)
          }, 150)
        } else {
          $("#trigger_search_channels_field_advice").addClass('hide')
          $channelsHolder.removeClass('hidden');
          if(transitionTimeout){
            clearTimeout(transitionTimeout);
          }
          $( "#trigger_search_channels_field" ).parents().eq(2).find(".channel-list_icon").removeClass('out_of_search hidden');
          transitionTimeout = setTimeout(function(){
            $channelsHolder.removeClass('hide');
            transitionTimeout = setTimeout(unhideAll, 100);
          }, 50)
        }
      };
      input
        .focus()
        .on('keyup', function(ev){
          if(ev.keyCode != 18 && ev.keyCode != 16 && ev.keyCode != 39 && ev.keyCode != 37)
            performFiltering.call(this, ev); 
        });
    });
  //]]>
</script>


<div class="channel-list_holder">

<a class="mod-index-1 channel-list_icon " id="ind_t_channel_3" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":3,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"trigger"}' data-remote="" ifttt-trigger-channel-button="1" data-channel_module_name="date_and_time" data-channel_id="3">
<img class="channel-list_icon_img" id="channel_3" alt="Date &amp; Time" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/3/icons/regular.png">
Date &amp; Time
</a>

<a class="mod-index-5 channel-list_icon last " id="ind_t_channel_6"  data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":6,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"trigger"}' data-remote="" ifttt-trigger-channel-button="1" data-channel_module_name="email" data-channel_id="6">
<img class="channel-list_icon_img" id="channel_6" alt="Email" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/6/icons/regular.png">
Email
</a>

</div>

<select name="this">  
<option label="Date &amp; Time" value="1">Date &amp; Time</option>  
  <option label="Email" value="2">Email
</option>  
  </select>

<div class="channel-list_holder">


<a class="mod-index-5 channel-list_icon last " id="ind_t_channel_6"data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":6,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"trigger"}' data-remote="" ifttt-trigger-channel-button="1" data-channel_module_name="email" data-channel_id="6">
<img class="channel-list_icon_img" id="channel_6" alt="Email" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/6/icons/regular.png">
Email
</a>

<a class="mod-index-4 channel-list_icon " id="ind_t_channel_1334062331"data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1334062331,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"trigger"}' data-remote="" ifttt-trigger-channel-button="1" data-channel_module_name="sina_weibo" data-channel_id="1334062331">
<img class="channel-list_icon_img" id="channel_1334062331" alt="Sina Weibo" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1334062331/icons/regular.png">
Sina Weibo
</a>

</div>
<select name="that">   
  <option label="Email" value="1">Email
</option>  
  <option label="Sina Weibo" value="2">Sina Weibo</option>  </select>
 <input type="submit" value="Submit" />

</div>

</div>

</div>
<div class="step_parent" id="trigger_channel_missing"></div>
<div class="step_parent is-backable" id="trigger_select"></div>
<div class="step_parent is-backable trigger_fields form-euprimary" id="live_trigger_fields_complete"></div>
<div class="step_parent" id="midway_statement_here">
not ready yet!
</div>
<div class="step_parent is-backable" id="action_channel_select">
<a class="btn-restart" href="#" data-track-event="restart_from_here_choose_action_channel" data-track-data='{"controller":"statements","action":"new","funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"}}'>
restart from here
</a>
<a class="btn-back" href="#" data-track-event="back_button_choose_action_channel" data-track-data='{"controller":"statements","action":"new","funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"}}'>
back
</a>
<div class="is-dimmable">
<h2 class="composer_section_header">
Choose Action Channel
<span class="composer_section_step">step 4 of 7</span>
</h2>
<p class="composer_section_description">
Showing Channels that provide at least one Action. <a href="/channels" target="_blank">View all Channels</a>
</p>
<div class="channel-list">
<input name="q" class="channels-search_input" id="action_search_channels_field" type="text" placeholder="Search Channels" autocorrect="off" autocomplete="off" autocapitalization="off">
<p class="channel_search_advice hide" id="action_search_channels_field_advice"></p>
<script>
  //<![CDATA[
    IFTTT.runOnLoad.append(function(){
      if(window.channelsSearch == undefined){
        window.channelsSearch = {
          escapeRegExp: function(str){
            return str.replace(/[\-\[\]\/\{\}\(\)\*\+\?\.\\\^\$\|]/g, "\\$&");
          }
        }
      }
      // Name and value are required and must be the same text string for the autocomplete to work
      window.channelsSearch["channels_action_search_channels_field"] = [{"value":"500px","name":"500px","id":83,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/83/icons/regular.png","url":"/83"},{"value":"abode","name":"abode","id":1381313233,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1381313233/icons/regular.png","url":"/1381313233"},{"value":"Adafruit","name":"adafruit","id":1505438027,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1505438027/icons/regular.png","url":"/1505438027"},{"value":"Amazon Cloud Drive","name":"amazon cloud drive","id":552388433,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/552388433/icons/regular.png","url":"/552388433"},{"value":"Android Device","name":"android device","id":1089090894,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1089090894/icons/regular.png","url":"/1089090894"},{"value":"Android SMS","name":"android sms","id":1322033008,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1322033008/icons/regular.png","url":"/1322033008"},{"value":"Android Wear","name":"android wear","id":1972740002,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1972740002/icons/regular.png","url":"/1972740002"},{"value":"App.net","name":"app.net","id":54,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/54/icons/regular.png","url":"/54"},{"value":"Bang & Olufsen's BeoLink Gateway","name":"bang & olufsen's beolink gateway","id":1007026151,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1007026151/icons/regular.png","url":"/1007026151"},{"value":"Beeminder","name":"beeminder","id":1391621525,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1391621525/icons/regular.png","url":"/1391621525"},{"value":"bitly","name":"bitly","id":50,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/50/icons/regular.png","url":"/50"},{"value":"blink(1)","name":"blink(1)","id":69,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/69/icons/regular.png","url":"/69"},{"value":"Blogger","name":"blogger","id":47,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/47/icons/regular.png","url":"/47"},{"value":"Box","name":"box","id":51,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/51/icons/regular.png","url":"/51"},{"value":"Boxcar 2","name":"boxcar 2","id":6430179,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/6430179/icons/regular.png","url":"/6430179"},{"value":"Buffer","name":"buffer","id":42,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/42/icons/regular.png","url":"/42"},{"value":"Caleo","name":"caleo","id":1137372763,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1137372763/icons/regular.png","url":"/1137372763"},{"value":"Camio","name":"camio","id":190007642,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/190007642/icons/regular.png","url":"/190007642"},{"value":"Campfire","name":"campfire","id":67,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/67/icons/regular.png","url":"/67"},{"value":"Cisco Spark","name":"cisco spark","id":629925599,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/629925599/icons/regular.png","url":"/629925599"},{"value":"Comcast Labs","name":"comcast labs","id":230173018,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/230173018/icons/regular.png","url":"/230173018"},{"value":"Deezer","name":"deezer","id":1607416078,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1607416078/icons/regular.png","url":"/1607416078"},{"value":"Delicious","name":"delicious bookmark","id":9,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/9/icons/regular.png","url":"/9"},{"value":"Diigo","name":"diigo","id":40,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/40/icons/regular.png","url":"/40"},{"value":"dondeEsta Family","name":"dondeesta family","id":869231464,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/869231464/icons/regular.png","url":"/869231464"},{"value":"Dropbox","name":"dropbox","id":26,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/26/icons/regular.png","url":"/26"},{"value":"ecobee","name":"ecobee","id":1303522923,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1303522923/icons/regular.png","url":"/1303522923"},{"value":"Email","name":"email","id":6,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/6/icons/regular.png","url":"/6"},{"value":"Email Digest","name":"email digest","id":336690107,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/336690107/icons/regular.png","url":"/336690107"},{"value":"Emberlight","name":"emberlight","id":1080925410,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1080925410/icons/regular.png","url":"/1080925410"},{"value":"Energenie Mi|Home","name":"energenie mi|home","id":350341117,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/350341117/icons/regular.png","url":"/350341117"},{"value":"Evernote","name":"evernote","id":25,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/25/icons/regular.png","url":"/25"},{"value":"Eyefi","name":"eyefi","id":2045751579,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2045751579/icons/regular.png","url":"/2045751579"},{"value":"Facebook","name":"facebook","id":10,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/10/icons/regular.png","url":"/10"},{"value":"Facebook Pages","name":"facebook pages","id":29,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/29/icons/regular.png","url":"/29"},{"value":"Feedly","name":"feedly","id":87,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/87/icons/regular.png","url":"/87"},{"value":"Fitbit","name":"fitbit","id":594746782,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/594746782/icons/regular.png","url":"/594746782"},{"value":"Flickr","name":"flickr","id":21,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/21/icons/regular.png","url":"/21"},{"value":"FollowUp.cc","name":"followup.cc","id":2059472869,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2059472869/icons/regular.png","url":"/2059472869"},{"value":"Garageio","name":"garageio","id":906187472,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/906187472/icons/regular.png","url":"/906187472"},{"value":"GE Appliances Cooking","name":"ge appliances cooking","id":136153493,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/136153493/icons/regular.png","url":"/136153493"},{"value":"GE Appliances GeoSpring™","name":"ge appliances geospring™","id":199559970,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/199559970/icons/regular.png","url":"/199559970"},{"value":"GE Appliances Refrigerator","name":"ge appliances refrigerator","id":458399700,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/458399700/icons/regular.png","url":"/458399700"},{"value":"Genius","name":"genius","id":526812314,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/526812314/icons/regular.png","url":"/526812314"},{"value":"GitHub","name":"github","id":2107379463,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2107379463/icons/regular.png","url":"/2107379463"},{"value":"Gmail","name":"gmail email","id":33,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/33/icons/regular.png","url":"/33"},{"value":"Google Calendar","name":"google calendar","id":36,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/36/icons/regular.png","url":"/36"},{"value":"Google Drive","name":"google drive docs spreadsheet","id":55,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/55/icons/regular.png","url":"/55"},{"value":"Google Glass","name":"google glass","id":477718320,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/477718320/icons/regular.png","url":"/477718320"},{"value":"GreenIQ","name":"greeniq","id":750945657,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/750945657/icons/regular.png","url":"/750945657"},{"value":"Greenwave Systems","name":"greenwave systems","id":1240288934,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1240288934/icons/regular.png","url":"/1240288934"},{"value":"GroupMe","name":"groupme","id":1589412919,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1589412919/icons/regular.png","url":"/1589412919"},{"value":"Harmony","name":"harmony","id":1798684620,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1798684620/icons/regular.png","url":"/1798684620"},{"value":"Harvest","name":"harvest","id":1627814135,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1627814135/icons/regular.png","url":"/1627814135"},{"value":"Homeboy","name":"homeboy","id":161286730,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/161286730/icons/regular.png","url":"/161286730"},{"value":"HomeControl Flex","name":"homecontrol flex","id":1484669294,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1484669294/icons/regular.png","url":"/1484669294"},{"value":"HomeSeer","name":"homeseer","id":1482820867,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1482820867/icons/regular.png","url":"/1482820867"},{"value":"Honeywell evohome","name":"honeywell evohome","id":1858545448,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1858545448/icons/regular.png","url":"/1858545448"},{"value":"Honeywell Single-zone Thermostat","name":"honeywell single-zone thermostat","id":385212475,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/385212475/icons/regular.png","url":"/385212475"},{"value":"Honeywell Total Connect Comfort","name":"honeywell total connect comfort","id":1605254398,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1605254398/icons/regular.png","url":"/1605254398"},{"value":"HP Print","name":"hp print","id":1754309957,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1754309957/icons/regular.png","url":"/1754309957"},{"value":"IF Notifications","name":"if notifications android ios iphone sms texting","id":651849913,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/651849913/icons/regular.png","url":"/651849913"},{"value":"Inoreader","name":"inoreader","id":767950622,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/767950622/icons/regular.png","url":"/767950622"},{"value":"Instapaper","name":"instapaper","id":1646223231,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1646223231/icons/regular.png","url":"/1646223231"},{"value":"Instapush","name":"instapush","id":812943674,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/812943674/icons/regular.png","url":"/812943674"},{"value":"Instawell","name":"instawell","id":1584696000,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1584696000/icons/regular.png","url":"/1584696000"},{"value":"IntesisHome","name":"intesishome","id":1091101406,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1091101406/icons/regular.png","url":"/1091101406"},{"value":"iOS Photos","name":"ios photos camera iphone picture","id":78,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/78/icons/regular.png","url":"/78"},{"value":"iOS Reading List","name":"ios reading list","id":190093028,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/190093028/icons/regular.png","url":"/190093028"},{"value":"iOS Reminders","name":"ios reminders iphone","id":80,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/80/icons/regular.png","url":"/80"},{"value":"iSecurity+","name":"isecurity+","id":1492652534,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1492652534/icons/regular.png","url":"/1492652534"},{"value":"iSmartAlarm","name":"ismartalarm","id":1571567306,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1571567306/icons/regular.png","url":"/1571567306"},{"value":"Ivideon","name":"ivideon","id":4032732,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/4032732/icons/regular.png","url":"/4032732"},{"value":"Komfy Switch with Camera","name":"komfy switch with camera","id":978898741,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/978898741/icons/regular.png","url":"/978898741"},{"value":"Kyber Calendars & Reminders","name":"kyber calendars & reminders","id":43748741,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/43748741/icons/regular.png","url":"/43748741"},{"value":"LaMetric","name":"lametric","id":1574163459,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1574163459/icons/regular.png","url":"/1574163459"},{"value":"Launch Center","name":"launch center","id":492475852,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/492475852/icons/regular.png","url":"/492475852"},{"value":"Life360","name":"life360","id":1266669658,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1266669658/icons/regular.png","url":"/1266669658"},{"value":"LIFX","name":"lifx lightbulb","id":690473090,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/690473090/icons/regular.png","url":"/690473090"},{"value":"LinkedIn","name":"linkedin","id":34,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/34/icons/regular.png","url":"/34"},{"value":"littleBits","name":"littlebits","id":1140403198,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1140403198/icons/regular.png","url":"/1140403198"},{"value":"Lutron Caséta Wireless","name":"lutron caséta wireless","id":1496137469,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1496137469/icons/regular.png","url":"/1496137469"},{"value":"Maker","name":"maker api webhooks","id":1004582012,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1004582012/icons/regular.png","url":"/1004582012"},{"value":"Manything","name":"manything","id":1840701274,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1840701274/icons/regular.png","url":"/1840701274"},{"value":"Medium","name":"medium","id":1259075256,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1259075256/icons/regular.png","url":"/1259075256"},{"value":"MESH","name":"mesh","id":996886751,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/996886751/icons/regular.png","url":"/996886751"},{"value":"Misfit","name":"misfit","id":1886920166,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1886920166/icons/regular.png","url":"/1886920166"},{"value":"MivaLife","name":"mivalife","id":410949888,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/410949888/icons/regular.png","url":"/410949888"},{"value":"Myfox HomeControl","name":"myfox homecontrol","id":1347542715,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1347542715/icons/regular.png","url":"/1347542715"},{"value":"Myfox Security","name":"myfox security","id":637877174,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/637877174/icons/regular.png","url":"/637877174"},{"value":"Nest Thermostat","name":"nest thermostat","id":811416297,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/811416297/icons/regular.png","url":"/811416297"},{"value":"Netatmo Thermostat","name":"netatmo thermostat","id":2018753238,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2018753238/icons/regular.png","url":"/2018753238"},{"value":"NewsBlur","name":"newsblur","id":604978379,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/604978379/icons/regular.png","url":"/604978379"},{"value":"Nimbus Note","name":"nimbus note","id":1520122636,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1520122636/icons/regular.png","url":"/1520122636"},{"value":"Numerous","name":"numerous","id":1187710726,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1187710726/icons/regular.png","url":"/1187710726"},{"value":"Oco Camera","name":"oco camera","id":2117255939,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2117255939/icons/regular.png","url":"/2117255939"},{"value":"Office 365 Calendar","name":"office 365 calendar","id":554351061,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/554351061/icons/regular.png","url":"/554351061"},{"value":"Office 365 Contacts","name":"office 365 contacts","id":775617870,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/775617870/icons/regular.png","url":"/775617870"},{"value":"Office 365 Mail","name":"office 365 mail","id":908435712,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/908435712/icons/regular.png","url":"/908435712"},{"value":"OneDrive","name":"onedrive","id":63,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/63/icons/regular.png","url":"/63"},{"value":"OneDrive for Business","name":"onedrive for business","id":2073040063,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2073040063/icons/regular.png","url":"/2073040063"},{"value":"OneNote","name":"onenote","id":1101960818,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1101960818/icons/regular.png","url":"/1101960818"},{"value":"openHAB","name":"openhab","id":138716786,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/138716786/icons/regular.png","url":"/138716786"},{"value":"ORBneXt","name":"orbnext","id":338906777,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/338906777/icons/regular.png","url":"/338906777"},{"value":"Particle","name":"particle","id":1978418576,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1978418576/icons/regular.png","url":"/1978418576"},{"value":"Philips Hue","name":"philips hue lightbulb","id":71,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/71/icons/regular.png","url":"/71"},{"value":"Phone Call","name":"phone call","id":8,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/8/icons/regular.png","url":"/8"},{"value":"Pinboard","name":"pinboard bookmark","id":23,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/23/icons/regular.png","url":"/23"},{"value":"Pinterest","name":"pinterest","id":1698089062,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1698089062/icons/regular.png","url":"/1698089062"},{"value":"Pocket","name":"pocket","id":24,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/24/icons/regular.png","url":"/24"},{"value":"popSLATE","name":"popslate","id":1142008653,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1142008653/icons/regular.png","url":"/1142008653"},{"value":"Printhug","name":"printhug","id":248851243,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/248851243/icons/regular.png","url":"/248851243"},{"value":"Pryv","name":"pryv","id":67735607,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/67735607/icons/regular.png","url":"/67735607"},{"value":"Pushalot","name":"pushalot","id":437678015,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/437678015/icons/regular.png","url":"/437678015"},{"value":"Pushbullet","name":"pushbullet","id":952707718,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/952707718/icons/regular.png","url":"/952707718"},{"value":"Pushover","name":"pushover","id":53,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/53/icons/regular.png","url":"/53"},{"value":"Qapital","name":"qapital","id":2072225167,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2072225167/icons/regular.png","url":"/2072225167"},{"value":"Qblinks Qmote","name":"qblinks qmote","id":548647597,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/548647597/icons/regular.png","url":"/548647597"},{"value":"Quip","name":"quip","id":563377653,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/563377653/icons/regular.png","url":"/563377653"},{"value":"Rachio Iro","name":"rachio iro","id":2116547707,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2116547707/icons/regular.png","url":"/2116547707"},{"value":"RainMachine","name":"rainmachine","id":1264764503,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1264764503/icons/regular.png","url":"/1264764503"},{"value":"Readability","name":"readability","id":38,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/38/icons/regular.png","url":"/38"},{"value":"ReadingPack","name":"readingpack","id":1719525583,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1719525583/icons/regular.png","url":"/1719525583"},{"value":"reddit","name":"reddit","id":1352860597,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1352860597/icons/regular.png","url":"/1352860597"},{"value":"RemoteLync","name":"remotelync","id":975060169,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/975060169/icons/regular.png","url":"/975060169"},{"value":"RescueTime","name":"rescuetime","id":1829789558,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1829789558/icons/regular.png","url":"/1829789558"},{"value":"Salesforce","name":"salesforce","id":736747042,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/736747042/icons/regular.png","url":"/736747042"},{"value":"Scout Alarm","name":"scout alarm","id":1015305304,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1015305304/icons/regular.png","url":"/1015305304"},{"value":"Seagate Personal Cloud","name":"seagate personal cloud","id":524194338,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/524194338/icons/regular.png","url":"/524194338"},{"value":"Seeed","name":"seeed","id":587292457,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/587292457/icons/regular.png","url":"/587292457"},{"value":"Sensibo","name":"sensibo","id":1786810214,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1786810214/icons/regular.png","url":"/1786810214"},{"value":"ShopYourWay","name":"shopyourway","id":191353965,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/191353965/icons/regular.png","url":"/191353965"},{"value":"Sina Weibo","name":"sina weibo","id":1334062331,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1334062331/icons/regular.png","url":"/1334062331"},{"value":"SkyBell HD","name":"skybell hd","id":277916670,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/277916670/icons/regular.png","url":"/277916670"},{"value":"Slack","name":"slack chat","id":1380041935,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1380041935/icons/regular.png","url":"/1380041935"},{"value":"Smappee","name":"smappee","id":605056257,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/605056257/icons/regular.png","url":"/605056257"},{"value":"SmartThings","name":"smartthings","id":82,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/82/icons/regular.png","url":"/82"},{"value":"SMS","name":"sms","id":5,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/5/icons/regular.png","url":"/5"},{"value":"SoundCloud","name":"soundcloud","id":41,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/41/icons/regular.png","url":"/41"},{"value":"Spotify","name":"spotify","id":51464135,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/51464135/icons/regular.png","url":"/51464135"},{"value":"Stack Lighting","name":"stack lighting","id":1492246798,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1492246798/icons/regular.png","url":"/1492246798"},{"value":"Stockimo","name":"stockimo","id":1576850012,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1576850012/icons/regular.png","url":"/1576850012"},{"value":"tadoº Smart AC Control","name":"tadoº smart ac control","id":281437275,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/281437275/icons/regular.png","url":"/281437275"},{"value":"tadoº Smart Thermostat","name":"tadoº smart thermostat","id":1246326737,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1246326737/icons/regular.png","url":"/1246326737"},{"value":"TeamSnap","name":"teamsnap","id":1248728628,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1248728628/icons/regular.png","url":"/1248728628"},{"value":"ThermoSmart","name":"thermosmart","id":78435604,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/78435604/icons/regular.png","url":"/78435604"},{"value":"Todoist","name":"todoist","id":1148373811,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1148373811/icons/regular.png","url":"/1148373811"},{"value":"Toodledo","name":"toodledo","id":597573620,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/597573620/icons/regular.png","url":"/597573620"},{"value":"Trello","name":"trello","id":123859650,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/123859650/icons/regular.png","url":"/123859650"},{"value":"Tumblr","name":"tumblr blog","id":13,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/13/icons/regular.png","url":"/13"},{"value":"Twitter","name":"twitter tweet","id":2,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2/icons/regular.png","url":"/2"},{"value":"Ubi","name":"ubi","id":84423966,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/84423966/icons/regular.png","url":"/84423966"},{"value":"UP by Jawbone","name":"up by jawbone","id":84,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/84/icons/regular.png","url":"/84"},{"value":"Wattio GATE","name":"wattio gate","id":527693535,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/527693535/icons/regular.png","url":"/527693535"},{"value":"Wattio POD","name":"wattio pod","id":1623603232,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1623603232/icons/regular.png","url":"/1623603232"},{"value":"Wattio THERMIC","name":"wattio thermic","id":1372952310,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1372952310/icons/regular.png","url":"/1372952310"},{"value":"Weebly","name":"weebly","id":1846340001,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1846340001/icons/regular.png","url":"/1846340001"},{"value":"WeMo Insight Switch","name":"wemo insight switch","id":748975256,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/748975256/icons/regular.png","url":"/748975256"},{"value":"WeMo Light Switch","name":"wemo light switch","id":85,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/85/icons/regular.png","url":"/85"},{"value":"WeMo Lighting","name":"wemo lighting","id":637201122,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/637201122/icons/regular.png","url":"/637201122"},{"value":"WeMo Maker","name":"wemo maker","id":267597877,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/267597877/icons/regular.png","url":"/267597877"},{"value":"WeMo Switch","name":"wemo switch","id":45,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/45/icons/regular.png","url":"/45"},{"value":"Whistle","name":"whistle","id":1480130844,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1480130844/icons/regular.png","url":"/1480130844"},{"value":"WIFIPLUG","name":"wifiplug","id":733104341,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/733104341/icons/regular.png","url":"/733104341"},{"value":"Wink: Aros","name":"wink: aros","id":1700992094,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1700992094/icons/regular.png","url":"/1700992094"},{"value":"Wink: Nimbus","name":"wink: nimbus","id":56429071,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/56429071/icons/regular.png","url":"/56429071"},{"value":"Wink: Pivot Power Genius","name":"wink: pivot power genius","id":632510338,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/632510338/icons/regular.png","url":"/632510338"},{"value":"Wink: Shortcuts","name":"wink: shortcuts","id":1080092097,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1080092097/icons/regular.png","url":"/1080092097"},{"value":"Wireless Tag","name":"wireless tag","id":2027750782,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2027750782/icons/regular.png","url":"/2027750782"},{"value":"Wolfram Data Drop","name":"wolfram data drop","id":415997816,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/415997816/icons/regular.png","url":"/415997816"},{"value":"WordPress","name":"wordpress blog","id":30,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/30/icons/regular.png","url":"/30"},{"value":"Yammer","name":"yammer chat","id":49,"imgUrl":"https://d3rnbxvnd0hlox.cloudfront.net/images/channels/49/icons/regular.png","url":"/49"}]
      
      if(window.channelsList_evaluatePosition == undefined){
        window.channelsList_evaluatePosition = function ($collection){
          if($collection){
            var index = 0;
            $collection.removeClass('mod-index-0 mod-index-1 mod-index-2 mod-index-3 mod-index-4 mod-index-5')
            $collection.each(function(){
              $(this).addClass("mod-index-"+index);
              index += 1;
              if(index > 5)
                index = 0;
            });
          }
        };
      }
    
    });
  //]]>
</script>

<!-- / this declare the handlers for the recipe creation autocomplete -->
<script>
  //<![CDATA[
     IFTTT.runOnLoad.append(function(){
      var transitionTimeout = false;
      var showMessageTimeout = false;
      var input = $( "#action_search_channels_field" );
      var $channelsHolder = $( "#action_search_channels_field" ).parents().eq(2).find('.channel-list_holder');
      var unhideAll = function (){
        window.channelsList_evaluatePosition($( "#action_search_channels_field" ).parents().eq(2).find(".channel-list_icon").not('.hidden'));
        $( "#action_search_channels_field" ).parents().eq(2).find(".channel-list_icon").removeClass('hide');
      };
      var toggleFiltered = function(matched, unmatched){
        _.each(matched, function(el){
          $( "#action_search_channels_field" ).parents().eq(2).find("[data-channel_id='" + el.id + "']").removeClass('hidden');
        });
        _.each(unmatched, function(el){
          $( "#action_search_channels_field" ).parents().eq(2).find("[data-channel_id='" + el.id + "']").addClass('hidden');
        });
        window.channelsList_evaluatePosition($( "#action_search_channels_field" ).parents().eq(2).find(".channel-list_icon").not('.hidden'));
      };
      var performFiltering = function(ev){
        if(!$channelsHolder.data('forcedHeight')){
          $channelsHolder.height($channelsHolder.height());
          !$channelsHolder.data('forcedHeight', true);
        }
        var val = $(this).val().trim().toLowerCase();
        var matched = _.filter(window.channelsSearch["channels_action_search_channels_field"], function(el){
          return el.name.toLowerCase().match(window.channelsSearch.escapeRegExp(val))
        });
        var unmatched = _.difference(window.channelsSearch["channels_action_search_channels_field"], matched);
    
        if(val.length && matched.length){
          $channelsHolder.removeClass('hidden');
          $("#action_search_channels_field_advice").addClass('hide');
          if(transitionTimeout){
            clearTimeout(transitionTimeout);
          }
          _.each(matched, function(el){
            $( "#action_search_channels_field" ).parents().eq(2).find("[data-channel_id='" + el.id + "']").removeClass('out_of_search hide');
          });
          _.each(unmatched, function(el){
            $( "#action_search_channels_field" ).parents().eq(2).find("[data-channel_id='" + el.id + "']").addClass('out_of_search hide');
          });
    
          transitionTimeout = setTimeout(function(){
            $channelsHolder.removeClass('hide');
            transitionTimeout = setTimeout(function(){
              toggleFiltered(matched, unmatched)
            }, 150);
          }, 50);
    
        
        } else if(matched.length == 0 && val.length > 0){
          $channelsHolder.addClass('hide');
          if(showMessageTimeout){
            clearTimeout(showMessageTimeout);
          }
          showMessageTimeout = setTimeout(function(){
            $channelsHolder.addClass('hidden');
            showMessageTimeout = setTimeout(function(){
              $("#action_search_channels_field_advice").removeClass('hide').text('No Channels match "'+val+'"')
            }, 150)
          }, 150)
        } else {
          $("#action_search_channels_field_advice").addClass('hide')
          $channelsHolder.removeClass('hidden');
          if(transitionTimeout){
            clearTimeout(transitionTimeout);
          }
          $( "#action_search_channels_field" ).parents().eq(2).find(".channel-list_icon").removeClass('out_of_search hidden');
          transitionTimeout = setTimeout(function(){
            $channelsHolder.removeClass('hide');
            transitionTimeout = setTimeout(unhideAll, 100);
          }, 50)
        }
      };
      input
        .focus()
        .on('keyup', function(ev){
          if(ev.keyCode != 18 && ev.keyCode != 16 && ev.keyCode != 39 && ev.keyCode != 37)
            performFiltering.call(this, ev); 
        });
    });
  //]]>
</script>


<div class="channel-list_holder">
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_83" href="choose_action?channel_id=83" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":83,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="500px" data-channel_id="83" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_83" alt="500px" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/83/icons/regular.png">
500px
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_1381313233" href="choose_action?channel_id=1381313233" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1381313233,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="abode" data-channel_id="1381313233" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1381313233" alt="abode" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1381313233/icons/regular.png">
abode
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_1505438027" href="choose_action?channel_id=1505438027" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1505438027,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="adafruit" data-channel_id="1505438027" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1505438027" alt="Adafruit" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1505438027/icons/regular.png">
Adafruit
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_552388433" href="choose_action?channel_id=552388433" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":552388433,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="amazonclouddrive" data-channel_id="552388433" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_552388433" alt="Amazon Cloud Drive" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/552388433/icons/regular.png">
Amazon Cloud Drive
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_1089090894" href="choose_action?channel_id=1089090894" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1089090894,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="android_device" data-channel_id="1089090894" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1089090894" alt="Android Device" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1089090894/icons/regular.png">
Android Device
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_1322033008" href="choose_action?channel_id=1322033008" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1322033008,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="android_messages" data-channel_id="1322033008" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1322033008" alt="Android SMS" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1322033008/icons/regular.png">
Android SMS
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_1972740002" href="choose_action?channel_id=1972740002" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1972740002,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="android_wear" data-channel_id="1972740002" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1972740002" alt="Android Wear" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1972740002/icons/regular.png">
Android Wear
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_54" href="choose_action?channel_id=54" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":54,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="appdotnet" data-channel_id="54" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_54" alt="App.net" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/54/icons/regular.png">
App.net
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_1007026151" href="choose_action?channel_id=1007026151" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1007026151,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="bang_olufsens_beo_link_gateway" data-channel_id="1007026151" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1007026151" alt="Bang &amp; Olufsen's BeoLink Gateway" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1007026151/icons/regular.png">
Bang &amp; Olufsen's BeoLink Gateway
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_1391621525" href="choose_action?channel_id=1391621525" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1391621525,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="beeminder" data-channel_id="1391621525" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1391621525" alt="Beeminder" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1391621525/icons/regular.png">
Beeminder
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_50" href="choose_action?channel_id=50" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":50,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="bitly" data-channel_id="50" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_50" alt="bitly" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/50/icons/regular.png">
bitly
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_69" href="choose_action?channel_id=69" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":69,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="blink1" data-channel_id="69" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_69" alt="blink(1)" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/69/icons/regular.png">
blink(1)
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_47" href="choose_action?channel_id=47" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":47,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="blogger" data-channel_id="47" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_47" alt="Blogger" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/47/icons/regular.png">
Blogger
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_51" href="choose_action?channel_id=51" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":51,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="box" data-channel_id="51" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_51" alt="Box" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/51/icons/regular.png">
Box
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_6430179" href="choose_action?channel_id=6430179" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":6430179,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="boxcar_2" data-channel_id="6430179" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_6430179" alt="Boxcar 2" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/6430179/icons/regular.png">
Boxcar 2
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_42" href="choose_action?channel_id=42" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":42,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="buffer" data-channel_id="42" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_42" alt="Buffer" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/42/icons/regular.png">
Buffer
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_1137372763" href="choose_action?channel_id=1137372763" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1137372763,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="caleo" data-channel_id="1137372763" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1137372763" alt="Caleo" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1137372763/icons/regular.png">
Caleo
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_190007642" href="choose_action?channel_id=190007642" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":190007642,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="camio" data-channel_id="190007642" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_190007642" alt="Camio" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/190007642/icons/regular.png">
Camio
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_67" href="choose_action?channel_id=67" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":67,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="campfire" data-channel_id="67" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_67" alt="Campfire" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/67/icons/regular.png">
Campfire
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_629925599" href="choose_action?channel_id=629925599" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":629925599,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="cisco_spark" data-channel_id="629925599" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_629925599" alt="Cisco Spark" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/629925599/icons/regular.png">
Cisco Spark
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_230173018" href="choose_action?channel_id=230173018" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":230173018,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="comcast_labs" data-channel_id="230173018" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_230173018" alt="Comcast Labs" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/230173018/icons/regular.png">
Comcast Labs
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_1607416078" href="choose_action?channel_id=1607416078" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1607416078,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="deezer" data-channel_id="1607416078" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1607416078" alt="Deezer" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1607416078/icons/regular.png">
Deezer
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_9" href="choose_action?channel_id=9" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":9,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="delicious" data-channel_id="9" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_9" alt="Delicious" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/9/icons/regular.png">
Delicious
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_40" href="choose_action?channel_id=40" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":40,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="diigo" data-channel_id="40" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_40" alt="Diigo" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/40/icons/regular.png">
Diigo
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_869231464" href="choose_action?channel_id=869231464" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":869231464,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="dondeesta" data-channel_id="869231464" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_869231464" alt="dondeEsta Family" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/869231464/icons/regular.png">
dondeEsta Family
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_26" href="choose_action?channel_id=26" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":26,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="dropbox" data-channel_id="26" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_26" alt="Dropbox" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/26/icons/regular.png">
Dropbox
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_1303522923" href="choose_action?channel_id=1303522923" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1303522923,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="ecobee" data-channel_id="1303522923" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1303522923" alt="ecobee" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1303522923/icons/regular.png">
ecobee
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_6" href="choose_action?channel_id=6" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":6,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="email" data-channel_id="6" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_6" alt="Email" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/6/icons/regular.png">
Email
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_336690107" href="choose_action?channel_id=336690107" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":336690107,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="email_digest" data-channel_id="336690107" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_336690107" alt="Email Digest" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/336690107/icons/regular.png">
Email Digest
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_1080925410" href="choose_action?channel_id=1080925410" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1080925410,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="emberlight" data-channel_id="1080925410" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1080925410" alt="Emberlight" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1080925410/icons/regular.png">
Emberlight
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_350341117" href="choose_action?channel_id=350341117" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":350341117,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="energenie_mi_home" data-channel_id="350341117" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_350341117" alt="Energenie Mi|Home" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/350341117/icons/regular.png">
Energenie Mi|Home
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_25" href="choose_action?channel_id=25" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":25,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="evernote" data-channel_id="25" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_25" alt="Evernote" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/25/icons/regular.png">
Evernote
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_2045751579" href="choose_action?channel_id=2045751579" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":2045751579,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="eyefi" data-channel_id="2045751579" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_2045751579" alt="Eyefi" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2045751579/icons/regular.png">
Eyefi
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_10" href="choose_action?channel_id=10" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":10,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="facebook" data-channel_id="10" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_10" alt="Facebook" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/10/icons/regular.png">
Facebook
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_29" href="choose_action?channel_id=29" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":29,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="facebook_pages" data-channel_id="29" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_29" alt="Facebook Pages" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/29/icons/regular.png">
Facebook Pages
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_87" href="choose_action?channel_id=87" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":87,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="feedly" data-channel_id="87" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_87" alt="Feedly" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/87/icons/regular.png">
Feedly
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_594746782" href="choose_action?channel_id=594746782" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":594746782,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="fitbit" data-channel_id="594746782" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_594746782" alt="Fitbit" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/594746782/icons/regular.png">
Fitbit
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_21" href="choose_action?channel_id=21" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":21,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="flickr" data-channel_id="21" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_21" alt="Flickr" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/21/icons/regular.png">
Flickr
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_2059472869" href="choose_action?channel_id=2059472869" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":2059472869,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="followupcc" data-channel_id="2059472869" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_2059472869" alt="FollowUp.cc" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2059472869/icons/regular.png">
FollowUp.cc
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_906187472" href="choose_action?channel_id=906187472" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":906187472,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="garageio" data-channel_id="906187472" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_906187472" alt="Garageio" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/906187472/icons/regular.png">
Garageio
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_136153493" href="choose_action?channel_id=136153493" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":136153493,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="ge_appliances_cooking" data-channel_id="136153493" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_136153493" alt="GE Appliances Cooking" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/136153493/icons/regular.png">
GE Appliances Cooking
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_199559970" href="choose_action?channel_id=199559970" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":199559970,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="ge_appliances_geospring" data-channel_id="199559970" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_199559970" alt="GE Appliances GeoSpring™" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/199559970/icons/regular.png">
GE Appliances GeoSpring™
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_458399700" href="choose_action?channel_id=458399700" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":458399700,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="ge_appliances_refrigerator" data-channel_id="458399700" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_458399700" alt="GE Appliances Refrigerator" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/458399700/icons/regular.png">
GE Appliances Refrigerator
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_526812314" href="choose_action?channel_id=526812314" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":526812314,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="genius" data-channel_id="526812314" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_526812314" alt="Genius" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/526812314/icons/regular.png">
Genius
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_2107379463" href="choose_action?channel_id=2107379463" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":2107379463,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="github" data-channel_id="2107379463" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_2107379463" alt="GitHub" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2107379463/icons/regular.png">
GitHub
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_33" href="choose_action?channel_id=33" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":33,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="gmail" data-channel_id="33" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_33" alt="Gmail" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/33/icons/regular.png">
Gmail
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_36" href="choose_action?channel_id=36" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":36,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="google_calendar" data-channel_id="36" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_36" alt="Google Calendar" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/36/icons/regular.png">
Google Calendar
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_55" href="choose_action?channel_id=55" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":55,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="google_drive" data-channel_id="55" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_55" alt="Google Drive" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/55/icons/regular.png">
Google Drive
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_477718320" href="choose_action?channel_id=477718320" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":477718320,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="google_glass" data-channel_id="477718320" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_477718320" alt="Google Glass" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/477718320/icons/regular.png">
Google Glass
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_750945657" href="choose_action?channel_id=750945657" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":750945657,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="greeniq" data-channel_id="750945657" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_750945657" alt="GreenIQ" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/750945657/icons/regular.png">
GreenIQ
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_1240288934" href="choose_action?channel_id=1240288934" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1240288934,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="greenwavesystems" data-channel_id="1240288934" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1240288934" alt="Greenwave Systems" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1240288934/icons/regular.png">
Greenwave Systems
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_1589412919" href="choose_action?channel_id=1589412919" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1589412919,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="groupme" data-channel_id="1589412919" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1589412919" alt="GroupMe" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1589412919/icons/regular.png">
GroupMe
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_1798684620" href="choose_action?channel_id=1798684620" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1798684620,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="harmony" data-channel_id="1798684620" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1798684620" alt="Harmony" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1798684620/icons/regular.png">
Harmony
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_1627814135" href="choose_action?channel_id=1627814135" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1627814135,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="harvest" data-channel_id="1627814135" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1627814135" alt="Harvest" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1627814135/icons/regular.png">
Harvest
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_161286730" href="choose_action?channel_id=161286730" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":161286730,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="homeboy" data-channel_id="161286730" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_161286730" alt="Homeboy" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/161286730/icons/regular.png">
Homeboy
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_1484669294" href="choose_action?channel_id=1484669294" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1484669294,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="homecontrol_flex" data-channel_id="1484669294" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1484669294" alt="HomeControl Flex" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1484669294/icons/regular.png">
HomeControl Flex
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_1482820867" href="choose_action?channel_id=1482820867" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1482820867,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="homeseer" data-channel_id="1482820867" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1482820867" alt="HomeSeer" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1482820867/icons/regular.png">
HomeSeer
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_1858545448" href="choose_action?channel_id=1858545448" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1858545448,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="honeywell_evohome" data-channel_id="1858545448" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1858545448" alt="Honeywell evohome" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1858545448/icons/regular.png">
Honeywell evohome
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_385212475" href="choose_action?channel_id=385212475" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":385212475,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="honeywell_round" data-channel_id="385212475" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_385212475" alt="Honeywell Single-zone Thermostat" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/385212475/icons/regular.png">
Honeywell Single-zone Thermostat
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_1605254398" href="choose_action?channel_id=1605254398" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1605254398,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="honeywell_total_connect_comfort" data-channel_id="1605254398" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1605254398" alt="Honeywell Total Connect Comfort" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1605254398/icons/regular.png">
Honeywell Total Connect Comfort
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_1754309957" href="choose_action?channel_id=1754309957" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1754309957,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="hp" data-channel_id="1754309957" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1754309957" alt="HP Print" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1754309957/icons/regular.png">
HP Print
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_651849913" href="choose_action?channel_id=651849913" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":651849913,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="if_notifications" data-channel_id="651849913" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_651849913" alt="IF Notifications" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/651849913/icons/regular.png">
IF Notifications
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_767950622" href="choose_action?channel_id=767950622" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":767950622,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="inoreader" data-channel_id="767950622" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_767950622" alt="Inoreader" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/767950622/icons/regular.png">
Inoreader
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_1646223231" href="choose_action?channel_id=1646223231" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1646223231,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="instapaper" data-channel_id="1646223231" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1646223231" alt="Instapaper" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1646223231/icons/regular.png">
Instapaper
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_812943674" href="choose_action?channel_id=812943674" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":812943674,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="instapush" data-channel_id="812943674" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_812943674" alt="Instapush" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/812943674/icons/regular.png">
Instapush
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_1584696000" href="choose_action?channel_id=1584696000" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1584696000,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="instawell" data-channel_id="1584696000" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1584696000" alt="Instawell" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1584696000/icons/regular.png">
Instawell
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_1091101406" href="choose_action?channel_id=1091101406" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1091101406,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="intesishome" data-channel_id="1091101406" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1091101406" alt="IntesisHome" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1091101406/icons/regular.png">
IntesisHome
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_78" href="choose_action?channel_id=78" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":78,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="ios_photos" data-channel_id="78" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_78" alt="iOS Photos" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/78/icons/regular.png">
iOS Photos
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_190093028" href="choose_action?channel_id=190093028" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":190093028,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="ios_reading_list" data-channel_id="190093028" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_190093028" alt="iOS Reading List" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/190093028/icons/regular.png">
iOS Reading List
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_80" href="choose_action?channel_id=80" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":80,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="ios_reminders" data-channel_id="80" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_80" alt="iOS Reminders" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/80/icons/regular.png">
iOS Reminders
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_1492652534" href="choose_action?channel_id=1492652534" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1492652534,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="isecurityplus" data-channel_id="1492652534" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1492652534" alt="iSecurity+" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1492652534/icons/regular.png">
iSecurity+
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_1571567306" href="choose_action?channel_id=1571567306" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1571567306,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="ismartalarm" data-channel_id="1571567306" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1571567306" alt="iSmartAlarm" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1571567306/icons/regular.png">
iSmartAlarm
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_4032732" href="choose_action?channel_id=4032732" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":4032732,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="ivideon" data-channel_id="4032732" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_4032732" alt="Ivideon" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/4032732/icons/regular.png">
Ivideon
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_978898741" href="choose_action?channel_id=978898741" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":978898741,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="komfy_sxc" data-channel_id="978898741" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_978898741" alt="Komfy Switch with Camera" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/978898741/icons/regular.png">
Komfy Switch with Camera
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_43748741" href="choose_action?channel_id=43748741" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":43748741,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="kyber" data-channel_id="43748741" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_43748741" alt="Kyber Calendars &amp; Reminders" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/43748741/icons/regular.png">
Kyber Calendars &amp; Reminders
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_1574163459" href="choose_action?channel_id=1574163459" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1574163459,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="lametric" data-channel_id="1574163459" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1574163459" alt="LaMetric" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1574163459/icons/regular.png">
LaMetric
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_492475852" href="choose_action?channel_id=492475852" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":492475852,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="launch_center" data-channel_id="492475852" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_492475852" alt="Launch Center" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/492475852/icons/regular.png">
Launch Center
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_1266669658" href="choose_action?channel_id=1266669658" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1266669658,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="life360" data-channel_id="1266669658" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1266669658" alt="Life360" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1266669658/icons/regular.png">
Life360
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_690473090" href="choose_action?channel_id=690473090" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":690473090,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="lifx" data-channel_id="690473090" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_690473090" alt="LIFX" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/690473090/icons/regular.png">
LIFX
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_34" href="choose_action?channel_id=34" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":34,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="linkedin" data-channel_id="34" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_34" alt="LinkedIn" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/34/icons/regular.png">
LinkedIn
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_1140403198" href="choose_action?channel_id=1140403198" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1140403198,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="littlebits" data-channel_id="1140403198" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1140403198" alt="littleBits" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1140403198/icons/regular.png">
littleBits
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_1496137469" href="choose_action?channel_id=1496137469" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1496137469,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="lutron_caseta_wireless" data-channel_id="1496137469" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1496137469" alt="Lutron Caséta Wireless" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1496137469/icons/regular.png">
Lutron Caséta Wireless
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_1004582012" href="choose_action?channel_id=1004582012" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1004582012,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="maker" data-channel_id="1004582012" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1004582012" alt="Maker" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1004582012/icons/regular.png">
Maker
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_1840701274" href="choose_action?channel_id=1840701274" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1840701274,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="manything" data-channel_id="1840701274" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1840701274" alt="Manything" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1840701274/icons/regular.png">
Manything
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_1259075256" href="choose_action?channel_id=1259075256" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1259075256,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="medium" data-channel_id="1259075256" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1259075256" alt="Medium" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1259075256/icons/regular.png">
Medium
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_996886751" href="choose_action?channel_id=996886751" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":996886751,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="mesh" data-channel_id="996886751" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_996886751" alt="MESH" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/996886751/icons/regular.png">
MESH
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_1886920166" href="choose_action?channel_id=1886920166" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1886920166,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="misfit" data-channel_id="1886920166" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1886920166" alt="Misfit" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1886920166/icons/regular.png">
Misfit
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_410949888" href="choose_action?channel_id=410949888" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":410949888,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="mivalife" data-channel_id="410949888" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_410949888" alt="MivaLife" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/410949888/icons/regular.png">
MivaLife
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_1347542715" href="choose_action?channel_id=1347542715" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1347542715,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="myfox_homecontrol" data-channel_id="1347542715" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1347542715" alt="Myfox HomeControl" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1347542715/icons/regular.png">
Myfox HomeControl
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_637877174" href="choose_action?channel_id=637877174" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":637877174,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="myfox_security" data-channel_id="637877174" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_637877174" alt="Myfox Security" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/637877174/icons/regular.png">
Myfox Security
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_811416297" href="choose_action?channel_id=811416297" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":811416297,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="nest_thermostat" data-channel_id="811416297" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_811416297" alt="Nest Thermostat" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/811416297/icons/regular.png">
Nest Thermostat
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_2018753238" href="choose_action?channel_id=2018753238" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":2018753238,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="netatmo_thermostat" data-channel_id="2018753238" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_2018753238" alt="Netatmo Thermostat" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2018753238/icons/regular.png">
Netatmo Thermostat
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_604978379" href="choose_action?channel_id=604978379" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":604978379,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="newsblur" data-channel_id="604978379" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_604978379" alt="NewsBlur" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/604978379/icons/regular.png">
NewsBlur
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_1520122636" href="choose_action?channel_id=1520122636" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1520122636,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="nimbus_note" data-channel_id="1520122636" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1520122636" alt="Nimbus Note" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1520122636/icons/regular.png">
Nimbus Note
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_1187710726" href="choose_action?channel_id=1187710726" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1187710726,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="numerous" data-channel_id="1187710726" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1187710726" alt="Numerous" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1187710726/icons/regular.png">
Numerous
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_2117255939" href="choose_action?channel_id=2117255939" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":2117255939,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="oco_camera" data-channel_id="2117255939" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_2117255939" alt="Oco Camera" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2117255939/icons/regular.png">
Oco Camera
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_554351061" href="choose_action?channel_id=554351061" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":554351061,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="office_365_calendar" data-channel_id="554351061" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_554351061" alt="Office 365 Calendar" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/554351061/icons/regular.png">
Office 365 Calendar
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_775617870" href="choose_action?channel_id=775617870" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":775617870,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="office_365_contacts" data-channel_id="775617870" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_775617870" alt="Office 365 Contacts" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/775617870/icons/regular.png">
Office 365 Contacts
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_908435712" href="choose_action?channel_id=908435712" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":908435712,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="office_365_mail" data-channel_id="908435712" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_908435712" alt="Office 365 Mail" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/908435712/icons/regular.png">
Office 365 Mail
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_63" href="choose_action?channel_id=63" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":63,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="onedrive" data-channel_id="63" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_63" alt="OneDrive" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/63/icons/regular.png">
OneDrive
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_2073040063" href="choose_action?channel_id=2073040063" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":2073040063,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="onedrive_for_business" data-channel_id="2073040063" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_2073040063" alt="OneDrive for Business" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2073040063/icons/regular.png">
OneDrive for Business
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_1101960818" href="choose_action?channel_id=1101960818" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1101960818,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="onenote" data-channel_id="1101960818" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1101960818" alt="OneNote" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1101960818/icons/regular.png">
OneNote
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_138716786" href="choose_action?channel_id=138716786" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":138716786,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="openhab" data-channel_id="138716786" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_138716786" alt="openHAB" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/138716786/icons/regular.png">
openHAB
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_338906777" href="choose_action?channel_id=338906777" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":338906777,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="ORBneXt" data-channel_id="338906777" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_338906777" alt="ORBneXt" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/338906777/icons/regular.png">
ORBneXt
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_1978418576" href="choose_action?channel_id=1978418576" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1978418576,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="particle" data-channel_id="1978418576" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1978418576" alt="Particle" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1978418576/icons/regular.png">
Particle
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_71" href="choose_action?channel_id=71" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":71,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="hue" data-channel_id="71" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_71" alt="Philips Hue" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/71/icons/regular.png">
Philips Hue
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_8" href="choose_action?channel_id=8" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":8,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="phone_call" data-channel_id="8" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_8" alt="Phone Call" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/8/icons/regular.png">
Phone Call
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_23" href="choose_action?channel_id=23" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":23,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="pinboard" data-channel_id="23" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_23" alt="Pinboard" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/23/icons/regular.png">
Pinboard
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_1698089062" href="choose_action?channel_id=1698089062" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1698089062,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="pinterest" data-channel_id="1698089062" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1698089062" alt="Pinterest" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1698089062/icons/regular.png">
Pinterest
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_24" href="choose_action?channel_id=24" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":24,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="pocket" data-channel_id="24" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_24" alt="Pocket" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/24/icons/regular.png">
Pocket
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_1142008653" href="choose_action?channel_id=1142008653" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1142008653,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="popslate" data-channel_id="1142008653" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1142008653" alt="popSLATE" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1142008653/icons/regular.png">
popSLATE
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_248851243" href="choose_action?channel_id=248851243" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":248851243,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="printhug" data-channel_id="248851243" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_248851243" alt="Printhug" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/248851243/icons/regular.png">
Printhug
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_67735607" href="choose_action?channel_id=67735607" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":67735607,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="pryv" data-channel_id="67735607" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_67735607" alt="Pryv" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/67735607/icons/regular.png">
Pryv
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_437678015" href="choose_action?channel_id=437678015" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":437678015,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="pushalot" data-channel_id="437678015" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_437678015" alt="Pushalot" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/437678015/icons/regular.png">
Pushalot
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_952707718" href="choose_action?channel_id=952707718" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":952707718,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="pushbullet" data-channel_id="952707718" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_952707718" alt="Pushbullet" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/952707718/icons/regular.png">
Pushbullet
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_53" href="choose_action?channel_id=53" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":53,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="pushover" data-channel_id="53" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_53" alt="Pushover" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/53/icons/regular.png">
Pushover
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_2072225167" href="choose_action?channel_id=2072225167" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":2072225167,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="qapital" data-channel_id="2072225167" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_2072225167" alt="Qapital" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2072225167/icons/regular.png">
Qapital
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_548647597" href="choose_action?channel_id=548647597" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":548647597,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="qblinks_qmote" data-channel_id="548647597" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_548647597" alt="Qblinks Qmote" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/548647597/icons/regular.png">
Qblinks Qmote
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_563377653" href="choose_action?channel_id=563377653" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":563377653,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="quip" data-channel_id="563377653" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_563377653" alt="Quip" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/563377653/icons/regular.png">
Quip
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_2116547707" href="choose_action?channel_id=2116547707" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":2116547707,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="rachio_iro" data-channel_id="2116547707" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_2116547707" alt="Rachio Iro" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2116547707/icons/regular.png">
Rachio Iro
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_1264764503" href="choose_action?channel_id=1264764503" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1264764503,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="rain_machine" data-channel_id="1264764503" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1264764503" alt="RainMachine" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1264764503/icons/regular.png">
RainMachine
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_38" href="choose_action?channel_id=38" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":38,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="readability" data-channel_id="38" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_38" alt="Readability" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/38/icons/regular.png">
Readability
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_1719525583" href="choose_action?channel_id=1719525583" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1719525583,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="readingpack" data-channel_id="1719525583" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1719525583" alt="ReadingPack" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1719525583/icons/regular.png">
ReadingPack
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_1352860597" href="choose_action?channel_id=1352860597" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1352860597,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="reddit" data-channel_id="1352860597" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1352860597" alt="reddit" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1352860597/icons/regular.png">
reddit
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_975060169" href="choose_action?channel_id=975060169" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":975060169,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="remotelync" data-channel_id="975060169" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_975060169" alt="RemoteLync" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/975060169/icons/regular.png">
RemoteLync
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_1829789558" href="choose_action?channel_id=1829789558" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1829789558,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="rescuetime" data-channel_id="1829789558" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1829789558" alt="RescueTime" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1829789558/icons/regular.png">
RescueTime
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_736747042" href="choose_action?channel_id=736747042" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":736747042,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="salesforce" data-channel_id="736747042" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_736747042" alt="Salesforce" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/736747042/icons/regular.png">
Salesforce
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_1015305304" href="choose_action?channel_id=1015305304" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1015305304,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="scoutalarm" data-channel_id="1015305304" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1015305304" alt="Scout Alarm" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1015305304/icons/regular.png">
Scout Alarm
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_524194338" href="choose_action?channel_id=524194338" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":524194338,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="seagate" data-channel_id="524194338" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_524194338" alt="Seagate Personal Cloud" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/524194338/icons/regular.png">
Seagate Personal Cloud
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_587292457" href="choose_action?channel_id=587292457" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":587292457,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="seeed" data-channel_id="587292457" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_587292457" alt="Seeed" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/587292457/icons/regular.png">
Seeed
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_1786810214" href="choose_action?channel_id=1786810214" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1786810214,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="sensibo" data-channel_id="1786810214" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1786810214" alt="Sensibo" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1786810214/icons/regular.png">
Sensibo
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_191353965" href="choose_action?channel_id=191353965" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":191353965,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="shopyourway" data-channel_id="191353965" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_191353965" alt="ShopYourWay" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/191353965/icons/regular.png">
ShopYourWay
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_1334062331" href="choose_action?channel_id=1334062331" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1334062331,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="sina_weibo" data-channel_id="1334062331" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1334062331" alt="Sina Weibo" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1334062331/icons/regular.png">
Sina Weibo
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_277916670" href="choose_action?channel_id=277916670" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":277916670,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="skybell" data-channel_id="277916670" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_277916670" alt="SkyBell HD" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/277916670/icons/regular.png">
SkyBell HD
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_1380041935" href="choose_action?channel_id=1380041935" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1380041935,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="slack" data-channel_id="1380041935" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1380041935" alt="Slack" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1380041935/icons/regular.png">
Slack
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_605056257" href="choose_action?channel_id=605056257" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":605056257,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="smappee" data-channel_id="605056257" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_605056257" alt="Smappee" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/605056257/icons/regular.png">
Smappee
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_82" href="choose_action?channel_id=82" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":82,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="smartthings" data-channel_id="82" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_82" alt="SmartThings" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/82/icons/regular.png">
SmartThings
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_5" href="choose_action?channel_id=5" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":5,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="sms" data-channel_id="5" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_5" alt="SMS" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/5/icons/regular.png">
SMS
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_41" href="choose_action?channel_id=41" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":41,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="soundcloud" data-channel_id="41" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_41" alt="SoundCloud" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/41/icons/regular.png">
SoundCloud
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_51464135" href="choose_action?channel_id=51464135" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":51464135,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="spotify" data-channel_id="51464135" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_51464135" alt="Spotify" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/51464135/icons/regular.png">
Spotify
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_1492246798" href="choose_action?channel_id=1492246798" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1492246798,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="stacklighting" data-channel_id="1492246798" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1492246798" alt="Stack Lighting" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1492246798/icons/regular.png">
Stack Lighting
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_1576850012" href="choose_action?channel_id=1576850012" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1576850012,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="stockimo" data-channel_id="1576850012" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1576850012" alt="Stockimo" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1576850012/icons/regular.png">
Stockimo
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_281437275" href="choose_action?channel_id=281437275" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":281437275,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="tado_smart_ac_control" data-channel_id="281437275" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_281437275" alt="tadoº Smart AC Control" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/281437275/icons/regular.png">
tadoº Smart AC Control
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_1246326737" href="choose_action?channel_id=1246326737" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1246326737,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="tado_smart_thermostat" data-channel_id="1246326737" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1246326737" alt="tadoº Smart Thermostat" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1246326737/icons/regular.png">
tadoº Smart Thermostat
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_1248728628" href="choose_action?channel_id=1248728628" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1248728628,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="teamsnap" data-channel_id="1248728628" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1248728628" alt="TeamSnap" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1248728628/icons/regular.png">
TeamSnap
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_78435604" href="choose_action?channel_id=78435604" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":78435604,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="thermosmart" data-channel_id="78435604" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_78435604" alt="ThermoSmart" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/78435604/icons/regular.png">
ThermoSmart
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_1148373811" href="choose_action?channel_id=1148373811" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1148373811,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="todoist" data-channel_id="1148373811" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1148373811" alt="Todoist" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1148373811/icons/regular.png">
Todoist
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_597573620" href="choose_action?channel_id=597573620" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":597573620,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="toodledo" data-channel_id="597573620" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_597573620" alt="Toodledo" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/597573620/icons/regular.png">
Toodledo
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_123859650" href="choose_action?channel_id=123859650" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":123859650,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="trello" data-channel_id="123859650" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_123859650" alt="Trello" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/123859650/icons/regular.png">
Trello
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_13" href="choose_action?channel_id=13" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":13,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="tumblr" data-channel_id="13" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_13" alt="Tumblr" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/13/icons/regular.png">
Tumblr
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_2" href="choose_action?channel_id=2" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":2,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="twitter" data-channel_id="2" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_2" alt="Twitter" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2/icons/regular.png">
Twitter
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_84423966" href="choose_action?channel_id=84423966" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":84423966,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="ubi" data-channel_id="84423966" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_84423966" alt="Ubi" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/84423966/icons/regular.png">
Ubi
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_84" href="choose_action?channel_id=84" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":84,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="jawbone_up" data-channel_id="84" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_84" alt="UP by Jawbone" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/84/icons/regular.png">
UP by Jawbone
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_527693535" href="choose_action?channel_id=527693535" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":527693535,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="wattio_gate" data-channel_id="527693535" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_527693535" alt="Wattio GATE" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/527693535/icons/regular.png">
Wattio GATE
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_1623603232" href="choose_action?channel_id=1623603232" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1623603232,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="wattio_pod" data-channel_id="1623603232" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1623603232" alt="Wattio POD" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1623603232/icons/regular.png">
Wattio POD
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_1372952310" href="choose_action?channel_id=1372952310" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1372952310,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="wattio_thermic" data-channel_id="1372952310" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1372952310" alt="Wattio THERMIC" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1372952310/icons/regular.png">
Wattio THERMIC
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_1846340001" href="choose_action?channel_id=1846340001" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1846340001,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="weebly" data-channel_id="1846340001" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1846340001" alt="Weebly" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1846340001/icons/regular.png">
Weebly
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_748975256" href="choose_action?channel_id=748975256" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":748975256,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="wemo_insight_switch" data-channel_id="748975256" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_748975256" alt="WeMo Insight Switch" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/748975256/icons/regular.png">
WeMo Insight Switch
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_85" href="choose_action?channel_id=85" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":85,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="wemo_light_switch" data-channel_id="85" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_85" alt="WeMo Light Switch" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/85/icons/regular.png">
WeMo Light Switch
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_637201122" href="choose_action?channel_id=637201122" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":637201122,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="wemo_lighting" data-channel_id="637201122" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_637201122" alt="WeMo Lighting" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/637201122/icons/regular.png">
WeMo Lighting
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_267597877" href="choose_action?channel_id=267597877" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":267597877,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="wemo_maker" data-channel_id="267597877" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_267597877" alt="WeMo Maker" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/267597877/icons/regular.png">
WeMo Maker
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_45" href="choose_action?channel_id=45" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":45,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="wemo_switch" data-channel_id="45" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_45" alt="WeMo Switch" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/45/icons/regular.png">
WeMo Switch
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_1480130844" href="choose_action?channel_id=1480130844" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1480130844,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="whistle" data-channel_id="1480130844" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1480130844" alt="Whistle" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1480130844/icons/regular.png">
Whistle
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_733104341" href="choose_action?channel_id=733104341" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":733104341,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="wifiplug" data-channel_id="733104341" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_733104341" alt="WIFIPLUG" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/733104341/icons/regular.png">
WIFIPLUG
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_1700992094" href="choose_action?channel_id=1700992094" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1700992094,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="aros" data-channel_id="1700992094" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1700992094" alt="Wink: Aros" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1700992094/icons/regular.png">
Wink: Aros
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_56429071" href="choose_action?channel_id=56429071" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":56429071,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="nimbus" data-channel_id="56429071" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_56429071" alt="Wink: Nimbus" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/56429071/icons/regular.png">
Wink: Nimbus
</a>
<a class="mod-index-4 channel-list_icon " id="ind_a_channel_632510338" href="choose_action?channel_id=632510338" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":632510338,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="pivot_power_genius" data-channel_id="632510338" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_632510338" alt="Wink: Pivot Power Genius" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/632510338/icons/regular.png">
Wink: Pivot Power Genius
</a>
<a class="mod-index-5 channel-list_icon last " id="ind_a_channel_1080092097" href="choose_action?channel_id=1080092097" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":1080092097,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="wink_shortcuts" data-channel_id="1080092097" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_1080092097" alt="Wink: Shortcuts" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/1080092097/icons/regular.png">
Wink: Shortcuts
</a>
<a class="mod-index-0 channel-list_icon " id="ind_a_channel_2027750782" href="choose_action?channel_id=2027750782" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":2027750782,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="wirelesstag" data-channel_id="2027750782" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_2027750782" alt="Wireless Tag" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/2027750782/icons/regular.png">
Wireless Tag
</a>
<a class="mod-index-1 channel-list_icon " id="ind_a_channel_415997816" href="choose_action?channel_id=415997816" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":415997816,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="wolfram_data_drop" data-channel_id="415997816" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_415997816" alt="Wolfram Data Drop" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/415997816/icons/regular.png">
Wolfram Data Drop
</a>
<a class="mod-index-2 channel-list_icon " id="ind_a_channel_30" href="choose_action?channel_id=30" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":30,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="wordpress" data-channel_id="30" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_30" alt="WordPress" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/30/icons/regular.png">
WordPress
</a>
<a class="mod-index-3 channel-list_icon " id="ind_a_channel_49" href="choose_action?channel_id=49" data-track-event="scr_choose_channel" data-track-data='{"controller":"statements","action":"new","channel_id":49,"funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"},"channel_type":"action"}' data-remote="" data-channel_module_name="yammer" data-channel_id="49" ifttt-action-channel-button="1">
<img class="channel-list_icon_img" id="channel_49" alt="Yammer" src="https://d3rnbxvnd0hlox.cloudfront.net/images/channels/49/icons/regular.png">
Yammer
</a>
</div>
</div>

</div>

</div>
<div class="step_parent" id="action_channel_missing"></div>
<div class="step_parent is-backable" id="action_select"></div>
<div class="step_parent is-backable" id="live_action_fields_complete"></div>
<div class="step_parent" id="test_and_activate"></div>
<div class="clear"></div>
</form>

</div>
<div id="create_cover"></div>
<script>
  //<![CDATA[
    IFTTT.runOnLoad.append(function(){
      //Resizes the bold "ifthisthenthat" text in proportion to the screen size.
      $('#start').fitText(0.64);
    
      window.PageGuard = {
        safetyIsOn: false,
        isInitialized: false,
        message: '',
        safetyOn: function(msg){
          window.PageGuard.safetyIsOn = true;
          window.PageGuard.message = (msg === undefined ? 'If you leave this page, your progress may be lost.' : msg)
          if (!window.PageGuard.isInitialized) {
            window.onbeforeunload = function(){
              if (window.PageGuard.safetyIsOn) {
                return window.PageGuard.message;
              } else {
                return void(0);
              };
            };
            window.PageGuard.isInitialized = true;
          }
          return true;
        },
        safetyOff: function(){
          window.PageGuard.safetyIsOn = false;
          return true;
        }
      };
      
      IFTTT.runOnLoad.append(function() {
        // add a global ajax complete handler to a local DOM element
        $("#start").ajaxComplete(prepSubmitBtns);
        //$("#start a").focus();
    
        $(document).on("click", ".btn-restart", function(e) {
          e.preventDefault();
          restart_from_here("#" + $(this).closest(".step_parent").attr("id"));
        });
    
        $(document).on("click", ".btn-back", function(e) {
          e.preventDefault();
          parent_id = $(this).closest(".step_parent").attr("id")
          item_id = $(".is-backable:not(#" + parent_id + "):visible:last").attr("id");
          back_to("#" + item_id);
        });
    
        // JS track this page was hit
        sendToDc('scr_funnel_entered', {"controller":"statements","action":"new","funnel":{"primary":"new_statement","primary_id":"c6370d30a4d2089787a6729062a3769a"}});
      });
      
      IFTTT.runOnLoad.append(function(){
        $(window).unbind("load");
        $("html,body").animate({scrollTop:0}, 2);
      });
    
      var prepSubmitBtns = function() {
        
        // find all the input btns
        var btns = $("input[type='button'], input[type='submit']")
        
        // wait half a second to un-disable until
        // scrolling to next stage has completed
        // This does not seem to work // when does it fire? prepSubmitBtns is not invoked after form submit or each 'scroll'
        //setTimeout(function() {
        //  btns.removeAttr("disabled").removeClass("disabled", 200); 
        //}, 500);
      };
    });
  //]]>
</script>


</article>
</div>
</div>

<div class="l-page-footer">
<nav class="page-footer__nav">
<a class="page-footer__link"  data-track-event="footer_link_wtf" data-track-data='{"controller":"statements","action":"new"}'>About</a>
<a class="page-footer__link"  data-track-event="footer_link_products" data-track-data='{"controller":"statements","action":"new"}'>Products</a>
<a class="page-footer__link"  data-track-event="footer_link_blog" data-track-data='{"controller":"statements","action":"new"}'>Blog</a>
<a class="page-footer__link" data-track-event="footer_link_contact" data-track-data='{"controller":"statements","action":"new"}'>Contact</a>
<a class="page-footer__link"  data-track-event="footer_link_jobs" data-track-data='{"controller":"statements","action":"new"}'>Jobs</a>
<a class="page-footer__link" data-track-event="footer_link_terms" data-track-data='{"controller":"statements","action":"new"}'>Terms</a>
<a class="page-footer__link" data-track-event="footer_link_privacy" data-track-data='{"controller":"statements","action":"new"}'>Privacy</a>
</nav>
<p class="page-footer__text">
Created in Nanjing University
</p>
</div>

<script src="https://d3rnbxvnd0hlox.cloudfront.net/assets/application-8e9d355bdcb84d286faea6be802fee9f.js" type="text/javascript"></script>
<script src="https://d3rnbxvnd0hlox.cloudfront.net/assets/authenticated-4c48e02a34c72252bd26afbcdfae4c78.js" type="text/javascript"></script>



<script type="text/javascript">
  window.heap=window.heap||[],heap.load=function(e,t){window.heap.appid=e,window.heap.config=t=t||{};var n=t.forceSSL||"https:"===document.location.protocol,a=document.createElement("script");a.type="text/javascript",a.async=!0,a.src=(n?"https:":"http:")+"//cdn.heapanalytics.com/js/heap-"+e+".js";var o=document.getElementsByTagName("script")[0];o.parentNode.insertBefore(a,o);for(var r=function(e){return function(){heap.push([e].concat(Array.prototype.slice.call(arguments,0)))}},p=["clearEventProperties","identify","setEventProperties","track","unsetEventProperty"],c=0;c<p.length;c++)heap[p[c]]=r(p[c])};

  heap.load('1714017845', {
    forceSSL: true,
    secureCookie: true,
    disableTextCapture: true
  });
</script>

  <script type="text/javascript" charset="utf-8">
    heap.identify({
      user_id: 7324533
    });
  </script>


<script type="text/javascript" charset="utf-8">
  var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
  document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script><script src="https://ssl.google-analytics.com/ga.js" type="text/javascript"></script>

<script type="text/javascript" charset="utf-8">
  IFTTT.runOnLoad.append(function() {
    try {
      var pageTracker = _gat._getTracker("UA-15987739-1");
      pageTracker._setDomainName(".ifttt.com");
      pageTracker._trackPageview();
    } catch(err) {}

    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-15987739-1', 'ifttt.com');
    ga('require', 'displayfeatures');
    ga('send', 'pageview');
    We.should('trackSignup');
  });
</script>



</body></html>
<%
%>

