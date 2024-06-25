"use strict";(self.webpackChunkflutter_rust_bridge=self.webpackChunkflutter_rust_bridge||[]).push([[8135],{3905:(e,t,n)=>{n.d(t,{Zo:()=>u,kt:()=>m});var r=n(67294);function a(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function o(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function i(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?o(Object(n),!0).forEach((function(t){a(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):o(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function s(e,t){if(null==e)return{};var n,r,a=function(e,t){if(null==e)return{};var n,r,a={},o=Object.keys(e);for(r=0;r<o.length;r++)n=o[r],t.indexOf(n)>=0||(a[n]=e[n]);return a}(e,t);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(e);for(r=0;r<o.length;r++)n=o[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(a[n]=e[n])}return a}var l=r.createContext({}),c=function(e){var t=r.useContext(l),n=t;return e&&(n="function"==typeof e?e(t):i(i({},t),e)),n},u=function(e){var t=c(e.components);return r.createElement(l.Provider,{value:t},e.children)},d={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},p=r.forwardRef((function(e,t){var n=e.components,a=e.mdxType,o=e.originalType,l=e.parentName,u=s(e,["components","mdxType","originalType","parentName"]),p=c(n),m=a,f=p["".concat(l,".").concat(m)]||p[m]||d[m]||o;return n?r.createElement(f,i(i({ref:t},u),{},{components:n})):r.createElement(f,i({ref:t},u))}));function m(e,t){var n=arguments,a=t&&t.mdxType;if("string"==typeof e||a){var o=n.length,i=new Array(o);i[0]=p;var s={};for(var l in t)hasOwnProperty.call(t,l)&&(s[l]=t[l]);s.originalType=e,s.mdxType="string"==typeof e?e:a,i[1]=s;for(var c=2;c<o;c++)i[c]=n[c];return r.createElement.apply(null,i)}return r.createElement.apply(null,n)}p.displayName="MDXCreateElement"},57417:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>l,contentTitle:()=>i,default:()=>d,frontMatter:()=>o,metadata:()=>s,toc:()=>c});var r=n(87462),a=(n(67294),n(3905));const o={},i="DCO Codec",s={unversionedId:"guides/contributing/submodules/dco-codec",id:"guides/contributing/submodules/dco-codec",title:"DCO Codec",description:"More about function call example",source:"@site/docs/guides/contributing/submodules/dco-codec.md",sourceDirName:"guides/contributing/submodules",slug:"/guides/contributing/submodules/dco-codec",permalink:"/flutter_rust_bridge/guides/contributing/submodules/dco-codec",draft:!1,editUrl:"https://github.com/fzyzcjy/flutter_rust_bridge/tree/master/website/docs/guides/contributing/submodules/dco-codec.md",tags:[],version:"current",frontMatter:{},sidebar:"tutorialSidebar",previous:{title:"CST Codec",permalink:"/flutter_rust_bridge/guides/contributing/submodules/cst-codec"},next:{title:"SSE Codec",permalink:"/flutter_rust_bridge/guides/contributing/submodules/sse-codec"}},l={},c=[{value:"More about function call example",id:"more-about-function-call-example",level:2},{value:"Cross-scope communication in the browser",id:"cross-scope-communication-in-the-browser",level:2}],u={toc:c};function d(e){let{components:t,...n}=e;return(0,a.kt)("wrapper",(0,r.Z)({},u,n,{components:t,mdxType:"MDXLayout"}),(0,a.kt)("h1",{id:"dco-codec"},"DCO Codec"),(0,a.kt)("h2",{id:"more-about-function-call-example"},"More about function call example"),(0,a.kt)("p",null,"Continue from the CST codec function call story,\nthe user's Rust function is already executed,\nand our job here is to pass the return value back to Dart."),(0,a.kt)("ol",null,(0,a.kt)("li",{parentName:"ol"},"The return value, a ",(0,a.kt)("inlineCode",{parentName:"li"},"String"),", is posted to the Dart side. It is done by the Dart-provided API, ",(0,a.kt)("a",{parentName:"li",href:"https://github.com/dart-lang/sdk/blob/fd0d3b254690007d0ebc84175f30fa7d7491ec3e/runtime/include/dart_native_api.h#L124"},(0,a.kt)("inlineCode",{parentName:"a"},"Dart_PostCObject")),", which let us provide C structs and it will automatically become Dart data on the other side. We use the Rust-safe wrapper ",(0,a.kt)("inlineCode",{parentName:"li"},"allo-isolate")," for it. We deliberately choose this, because this enables Dart code to be ",(0,a.kt)("em",{parentName:"li"},"async")," instead of sync."),(0,a.kt)("li",{parentName:"ol"},'On the Dart side, we now see some Dart objects (indeed "',(0,a.kt)("em",{parentName:"li"},"Dart wire data"),'"). We use functions like ',(0,a.kt)("inlineCode",{parentName:"li"},"_wire2api_SomeType"),' to convert it to the final "',(0,a.kt)("em",{parentName:"li"},"Dart api data"),'". Notice this "wire2api" is on ',(0,a.kt)("em",{parentName:"li"},"Dart"),' side, so it means "',(0,a.kt)("em",{parentName:"li"},"Dart")," wire data to ",(0,a.kt)("em",{parentName:"li"},"Dart"),' api data", and is different from the one above which is for Rust. For example, since ',(0,a.kt)("inlineCode",{parentName:"li"},"Dart_PostCObject")," does not provide a way to construct arbitrary structs(classes), we have to pass Rust structs as lists, and use the ",(0,a.kt)("inlineCode",{parentName:"li"},"wire2api")," to convert them to corresponding Dart classes."),(0,a.kt)("li",{parentName:"ol"},"The final result value is provided as return value of the Dart function, ",(0,a.kt)("inlineCode",{parentName:"li"},"func"),", that the user called just now. A function call finishes!")),(0,a.kt)("h2",{id:"cross-scope-communication-in-the-browser"},"Cross-scope communication in the browser"),(0,a.kt)("p",null,"On Web platforms, for lack of a proper ",(0,a.kt)("inlineCode",{parentName:"p"},"SendPort")," there exists replacements from ",(0,a.kt)("inlineCode",{parentName:"p"},"dart:html"),"."),(0,a.kt)("p",null,(0,a.kt)("strong",{parentName:"p"},"MessagePort")," replaces ",(0,a.kt)("inlineCode",{parentName:"p"},"dart:ffi"),"'s ",(0,a.kt)("inlineCode",{parentName:"p"},"SendPort")," and is created from ",(0,a.kt)("inlineCode",{parentName:"p"},"MessageChannel"),". The Dart\nthread creates a channel, keeps the receive port and transfers the send port to the workers."),(0,a.kt)("mermaid",{value:"sequenceDiagram\nDart ->> Rust: port2\nRust ->> Rust Worker: port2\nRust Worker ->> Dart: port2.postMessage"}),(0,a.kt)("p",null,(0,a.kt)("strong",{parentName:"p"},"BroadcastChannel")," replaces ",(0,a.kt)("inlineCode",{parentName:"p"},"dart:ffi"),"'s ",(0,a.kt)("inlineCode",{parentName:"p"},"SendPort")," for ",(0,a.kt)("inlineCode",{parentName:"p"},"StreamSink"),"s, due to the fact that wasm_bindgen\nkeeps the ports in a JS-local scope that cannot be shared with other threads. A broadcast channel\nis created by Dart, then passed to the main Rust thread. Rust then transfers its name to the workers.\nWhen other workers refer to a ",(0,a.kt)("inlineCode",{parentName:"p"},"StreamSink")," from another worker, e.g. if the sink was put in a static variable,\na new ",(0,a.kt)("inlineCode",{parentName:"p"},"BroadcastChannel")," will be created from its name."),(0,a.kt)("p",null,(0,a.kt)("inlineCode",{parentName:"p"},"BroadcastChannel"),"s are guaranteed to be unique for each invocation.",(0,a.kt)("sup",{parentName:"p",id:"fnref-1"},(0,a.kt)("a",{parentName:"sup",href:"#fn-1",className:"footnote-ref"},"1"))),(0,a.kt)("mermaid",{value:"sequenceDiagram\nDart ->> Rust: channel\nRust ->> Rust Worker 1: channel.name\nRust Worker 1 ->> Dart: channel.postMessage\nRust ->> Rust Worker 2: channel.name\nRust Worker 2 ->> Dart: channel.postMessage"}),(0,a.kt)("p",null,"It is theoretically possible to have a one-to-one implementation of Isolate using only web primitives,\n",(0,a.kt)("inlineCode",{parentName:"p"},"BroadcastChannel"),"s and ",(0,a.kt)("inlineCode",{parentName:"p"},"Worker"),"s, but it remains to be seen how practical such an approach would be."),(0,a.kt)("div",{className:"footnotes"},(0,a.kt)("hr",{parentName:"div"}),(0,a.kt)("ol",{parentName:"div"},(0,a.kt)("li",{parentName:"ol",id:"fn-1"},"This is currently implemented as a monotonically-increasing index.",(0,a.kt)("a",{parentName:"li",href:"#fnref-1",className:"footnote-backref"},"\u21a9")))))}d.isMDXComponent=!0}}]);