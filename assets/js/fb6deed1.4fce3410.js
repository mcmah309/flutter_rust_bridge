"use strict";(self.webpackChunkflutter_rust_bridge=self.webpackChunkflutter_rust_bridge||[]).push([[4271],{3905:(e,t,r)=>{r.d(t,{Zo:()=>c,kt:()=>f});var n=r(7294);function s(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}function a(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,n)}return r}function o(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?a(Object(r),!0).forEach((function(t){s(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):a(Object(r)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}function i(e,t){if(null==e)return{};var r,n,s=function(e,t){if(null==e)return{};var r,n,s={},a=Object.keys(e);for(n=0;n<a.length;n++)r=a[n],t.indexOf(r)>=0||(s[r]=e[r]);return s}(e,t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);for(n=0;n<a.length;n++)r=a[n],t.indexOf(r)>=0||Object.prototype.propertyIsEnumerable.call(e,r)&&(s[r]=e[r])}return s}var l=n.createContext({}),u=function(e){var t=n.useContext(l),r=t;return e&&(r="function"==typeof e?e(t):o(o({},t),e)),r},c=function(e){var t=u(e.components);return n.createElement(l.Provider,{value:t},e.children)},p={inlineCode:"code",wrapper:function(e){var t=e.children;return n.createElement(n.Fragment,{},t)}},d=n.forwardRef((function(e,t){var r=e.components,s=e.mdxType,a=e.originalType,l=e.parentName,c=i(e,["components","mdxType","originalType","parentName"]),d=u(r),f=s,m=d["".concat(l,".").concat(f)]||d[f]||p[f]||a;return r?n.createElement(m,o(o({ref:t},c),{},{components:r})):n.createElement(m,o({ref:t},c))}));function f(e,t){var r=arguments,s=t&&t.mdxType;if("string"==typeof e||s){var a=r.length,o=new Array(a);o[0]=d;var i={};for(var l in t)hasOwnProperty.call(t,l)&&(i[l]=t[l]);i.originalType=e,i.mdxType="string"==typeof e?e:s,o[1]=i;for(var u=2;u<a;u++)o[u]=r[u];return n.createElement.apply(null,o)}return n.createElement.apply(null,r)}d.displayName="MDXCreateElement"},2965:(e,t,r)=>{r.r(t),r.d(t,{assets:()=>l,contentTitle:()=>o,default:()=>p,frontMatter:()=>a,metadata:()=>i,toc:()=>u});var n=r(7462),s=(r(7294),r(3905));const a={},o="Dart Isolates",i={unversionedId:"guides/miscellaneous/isolates",id:"guides/miscellaneous/isolates",title:"Dart Isolates",description:"There is no need to read this page,",source:"@site/docs/guides/miscellaneous/isolates.md",sourceDirName:"guides/miscellaneous",slug:"/guides/miscellaneous/isolates",permalink:"/flutter_rust_bridge/guides/miscellaneous/isolates",draft:!1,editUrl:"https://github.com/fzyzcjy/flutter_rust_bridge/tree/master/website/docs/guides/miscellaneous/isolates.md",tags:[],version:"current",frontMatter:{},sidebar:"tutorialSidebar",previous:{title:"Pure Dart",permalink:"/flutter_rust_bridge/guides/miscellaneous/pure-dart"},next:{title:"Safety and CI",permalink:"/flutter_rust_bridge/guides/miscellaneous/safety"}},l={},u=[],c={toc:u};function p(e){let{components:t,...r}=e;return(0,s.kt)("wrapper",(0,n.Z)({},c,r,{components:t,mdxType:"MDXLayout"}),(0,s.kt)("h1",{id:"dart-isolates"},"Dart Isolates"),(0,s.kt)("admonition",{type:"tip"},(0,s.kt)("p",{parentName:"admonition"},"There is no need to read this page,\nunless you need to use it in multiple Dart Isolates.")),(0,s.kt)("p",null,"To use Dart Isolates, just call ",(0,s.kt)("inlineCode",{parentName:"p"},"RustLib.init()")," and ",(0,s.kt)("inlineCode",{parentName:"p"},"RustLib.dispose()")," when your isolate starts and stops,\njust like how you deal with many standard Flutter objects."),(0,s.kt)("p",null,"Working examples (tests that are executed in CI) can be seen ",(0,s.kt)("a",{parentName:"p",href:"https://github.com/fzyzcjy/flutter_rust_bridge/blob/master/frb_example/pure_dart/test/isolate_test.dart"},"here"),"."),(0,s.kt)("p",null,"As a remark, often there is no need to use Dart Isolates when interacting with flutter_rust_bridge.\nSince flutter_rust_bridge supports async, even if your Rust function is super slow, it will never block the Dart code."))}p.isMDXComponent=!0}}]);