

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
<html class=" not-mobile brwsr-chrome brwsr-chrome46 os-windows non-forced-fullwidth      js canvas history cssfilters" lang="en" debug="true"><head><script src="https://bam.nr-data.net/1/673a997f39?a=2986034&amp;pl=1451218478480&amp;v=768.2acc9fa&amp;to=egxdTUcJWwgBShgXQVgXVlRQCEMXS1FZAFBB&amp;qt=1&amp;ap=93&amp;be=1231&amp;fe=3097&amp;dc=2844&amp;f=%5B%22err%22,%22xhr%22,%22stn%22,%22ins%22%5D&amp;perf=%7B%22timing%22:%7B%22of%22:1451218478480,%22n%22:0,%22u%22:7572943633687,%22ue%22:7572943633687,%22dl%22:1136,%22di%22:4075,%22ds%22:4075,%22de%22:4324,%22dc%22:4327,%22l%22:4328,%22le%22:4334,%22f%22:112,%22dn%22:112,%22dne%22:112,%22c%22:112,%22ce%22:112,%22rq%22:693,%22rp%22:1136,%22rpe%22:1176%7D,%22navigation%22:%7B%22ty%22:1%7D%7D&amp;jsonp=NREUM.setToken" type="text/javascript"></script>
<title>
IF Recipes - IFTTT
</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<script src="https://js-agent.newrelic.com/nr-768.min.js"></script><script src="//www.google-analytics.com/analytics.js" async=""></script><script src="https://cdn.heapanalytics.com/js/heap-1714017845.js" type="text/javascript" async=""></script><script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"673a997f39","applicationID":"2986034","transactionName":"egxdTUcJWwgBShgXQVgXVlRQCEMXS1FZAFBB","queueTime":1,"applicationTime":93,"agent":"js-agent.newrelic.com/nr-768.min.js"}</script>
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
  <a title="My Recipes" class="ifttt-logo" href="customer.jsp" data-track-event="header_logo" data-track-data='{"controller":"statements","action":"index"}'>
    <img class="logo" alt="Ifttt-logo" src="https://d3rnbxvnd0hlox.cloudfront.net/assets/v2/ifttt-logo-bb65236e5bfb8aa3608ea3d53cdba2fa.svg">
  </a>
</div>


  
    <form class="top-bar-search" action="/recipes/search" method="GET">
      <input name="q" class="top-bar-input typeahead" type="text" placeholder="Search">
      <input type="submit" value="">
    </form>

      <div class="l-site-header-menus-toggle">
        <a class="header-menus-toggle menu-toggle is-for-opening" data-track-event="header_dropdown" data-track-data='{"controller":"statements","action":"index"}' data-for-menu="#site-header-menus">
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
My Messages

</h1>
</div>
</div>
</div>
<div class="l-page-tab-bar">
<div class="l-page-tab-bar-inner">
<div class="l-page-tab-bar-inner-2">
<nav class="l-tab-bar-tabs">
</nav>
<%

String Calvin = user;

String deletet = request.getParameter("delete");
if(deletet!=null){
statement.executeUpdate("delete from message where user='"+user+"'&& title='"+deletet+"'");
%>
<script>alert("delete message success");self.location='message.jsp';
</script>
<%
}

rs = statement.executeQuery("select * from message where user = '"+Calvin+"'");
rs.last(); 
int rowCount = rs.getRow(); 
rs.first();
 rmeta = rs.getMetaData(); 
//确定数据集的列数，亦字段数 
numColumns=rmeta.getColumnCount(); 
for(int i=1;i<=rowCount;i++) {
	%>
<table width="601" height="50" border="1" align="center" color="#ffffff">
<%
String a = (rs.getString(1)+" "); 
String b =(rs.getString(2)); 
String c = (rs.getString(3)); 
rs.next();%><tr><td valign="top" >
from:system  title:<%=b%>  <br>message:<%=c%>

<a href="message.jsp?delete=<%=b%>"><font color="purple" valign="right">[delete]</font></a>
</tr></table><br><%
}
%>
<script>
function delete(i)
{
	document.message.deletet='i';

}
</script>


</div>
</div>
</div>
</header>


</div>
</div>

<div class="l-page-footer">
<nav class="page-footer__nav">
<a class="page-footer__link" href="customer.jsp" data-track-event="footer_link_wtf" data-track-data='{"controller":"statements","action":"index"}'>About</a>
<a class="page-footer__link" href="customer.jsp" data-track-event="footer_link_products" data-track-data='{"controller":"statements","action":"index"}'>Products</a>
<a class="page-footer__link" href="customer.jsp" data-track-event="footer_link_blog" data-track-data='{"controller":"statements","action":"index"}'>Blog</a>
<a class="page-footer__link" href="customer.jsp" data-track-event="footer_link_contact" data-track-data='{"controller":"statements","action":"index"}'>Contact</a>
<a class="page-footer__link" href="customer.jsp" data-track-event="footer_link_jobs" data-track-data='{"controller":"statements","action":"index"}'>Jobs</a>
<a class="page-footer__link" href="customer.jsp" data-track-event="footer_link_terms" data-track-data='{"controller":"statements","action":"index"}'>Terms</a>
<a class="page-footer__link" href="customer.jsp" data-track-event="footer_link_privacy" data-track-data='{"controller":"statements","action":"index"}'>Privacy</a>
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

