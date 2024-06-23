"use strict";(self.webpackChunkflutter_rust_bridge=self.webpackChunkflutter_rust_bridge||[]).push([[6645],{3905:(e,t,r)=>{r.d(t,{Zo:()=>s,kt:()=>m});var a=r(7294);function n(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}function l(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);t&&(a=a.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,a)}return r}function o(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?l(Object(r),!0).forEach((function(t){n(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):l(Object(r)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}function i(e,t){if(null==e)return{};var r,a,n=function(e,t){if(null==e)return{};var r,a,n={},l=Object.keys(e);for(a=0;a<l.length;a++)r=l[a],t.indexOf(r)>=0||(n[r]=e[r]);return n}(e,t);if(Object.getOwnPropertySymbols){var l=Object.getOwnPropertySymbols(e);for(a=0;a<l.length;a++)r=l[a],t.indexOf(r)>=0||Object.prototype.propertyIsEnumerable.call(e,r)&&(n[r]=e[r])}return n}var c=a.createContext({}),u=function(e){var t=a.useContext(c),r=t;return e&&(r="function"==typeof e?e(t):o(o({},t),e)),r},s=function(e){var t=u(e.components);return a.createElement(c.Provider,{value:t},e.children)},p={inlineCode:"code",wrapper:function(e){var t=e.children;return a.createElement(a.Fragment,{},t)}},d=a.forwardRef((function(e,t){var r=e.components,n=e.mdxType,l=e.originalType,c=e.parentName,s=i(e,["components","mdxType","originalType","parentName"]),d=u(r),m=n,f=d["".concat(c,".").concat(m)]||d[m]||p[m]||l;return r?a.createElement(f,o(o({ref:t},s),{},{components:r})):a.createElement(f,o({ref:t},s))}));function m(e,t){var r=arguments,n=t&&t.mdxType;if("string"==typeof e||n){var l=r.length,o=new Array(l);o[0]=d;var i={};for(var c in t)hasOwnProperty.call(t,c)&&(i[c]=t[c]);i.originalType=e,i.mdxType="string"==typeof e?e:n,o[1]=i;for(var u=2;u<l;u++)o[u]=r[u];return a.createElement.apply(null,o)}return a.createElement.apply(null,r)}d.displayName="MDXCreateElement"},7326:(e,t,r)=>{r.r(t),r.d(t,{assets:()=>c,contentTitle:()=>o,default:()=>p,frontMatter:()=>l,metadata:()=>i,toc:()=>u});var a=r(7462),n=(r(7294),r(3905));const l={},o="Rust calls Dart",i={unversionedId:"guides/direction/rust-call-dart",id:"guides/direction/rust-call-dart",title:"Rust calls Dart",description:"Without this feature, the bridge would be a one-way road; but now we have two-way road ;)",source:"@site/docs/guides/direction/rust-call-dart.md",sourceDirName:"guides/direction",slug:"/guides/direction/rust-call-dart",permalink:"/flutter_rust_bridge/guides/direction/rust-call-dart",draft:!1,editUrl:"https://github.com/fzyzcjy/flutter_rust_bridge/tree/master/website/docs/guides/direction/rust-call-dart.md",tags:[],version:"current",frontMatter:{},sidebar:"tutorialSidebar",previous:{title:"Dart calls Rust",permalink:"/flutter_rust_bridge/guides/direction/dart-call-rust"},next:{title:"Functions",permalink:"/flutter_rust_bridge/guides/functions/"}},c={},u=[{value:"Simple example",id:"simple-example",level:2},{value:"Make it compile",id:"make-it-compile",level:2},{value:"More complicated",id:"more-complicated",level:2}],s={toc:u};function p(e){let{components:t,...r}=e;return(0,n.kt)("wrapper",(0,a.Z)({},s,r,{components:t,mdxType:"MDXLayout"}),(0,n.kt)("h1",{id:"rust-calls-dart"},"Rust calls Dart"),(0,n.kt)("p",null,'Without this feature, the bridge would be a one-way road; but now we have two-way road ;)\nIn short, Rust can call arbitrary Dart functions (or "closures", or "callbacks").'),(0,n.kt)("h2",{id:"simple-example"},"Simple example"),(0,n.kt)("p",null,"Suppose we have a Rust function that accepts a function (closure):"),(0,n.kt)("pre",null,(0,n.kt)("code",{parentName:"pre",className:"language-rust"},'pub fn rust_function(dart_callback: Fn(String) -> String) {\n    dart_callback("Tom"); // Will get `Hello, Tom!`\n}\n')),(0,n.kt)("p",null,"Then we can provide a ",(0,n.kt)("em",{parentName:"p"},"Dart")," closure:"),(0,n.kt)("pre",null,(0,n.kt)("code",{parentName:"pre",className:"language-dart"},"rustFunction(dartCallback: (name) => 'Hello, $name!');\n")),(0,n.kt)("h2",{id:"make-it-compile"},"Make it compile"),(0,n.kt)("p",null,"To make it compile, we need a bit of boilerplate, and here is the real code.\nNo worries, they are just syntax noise and does not carry anything special."),(0,n.kt)("pre",null,(0,n.kt)("code",{parentName:"pre",className:"language-rust"},'pub async fn rust_function(dart_callback: impl Fn(String) -> DartFnFuture<String>) {\n    dart_callback("Tom".to_owned()).await; // Will get `Hello, Tom!`\n}\n')),(0,n.kt)("pre",null,(0,n.kt)("code",{parentName:"pre",className:"language-dart"},"await rustFunction(dartCallback: (name) => 'Hello, $name!');\n")),(0,n.kt)("h2",{id:"more-complicated"},"More complicated"),(0,n.kt)("p",null,"Features mentioned in other sections are supported here as well.\nFor example, you can:"),(0,n.kt)("ul",null,(0,n.kt)("li",{parentName:"ul"},"Use arbitrary non-encodable / non-transferable Dart objects as argument / return values of the Dart closure (via ",(0,n.kt)("inlineCode",{parentName:"li"},"DartOpaque"),")."),(0,n.kt)("li",{parentName:"ul"},"Let Rust call Dart which calls Rust which calls Dart which calls Rust ;)"),(0,n.kt)("li",{parentName:"ul"},"...")))}p.isMDXComponent=!0}}]);