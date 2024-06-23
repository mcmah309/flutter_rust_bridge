"use strict";(self.webpackChunkflutter_rust_bridge=self.webpackChunkflutter_rust_bridge||[]).push([[4072],{3905:(e,t,r)=>{r.d(t,{Zo:()=>d,kt:()=>m});var n=r(7294);function a(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}function i(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,n)}return r}function o(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?i(Object(r),!0).forEach((function(t){a(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):i(Object(r)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}function s(e,t){if(null==e)return{};var r,n,a=function(e,t){if(null==e)return{};var r,n,a={},i=Object.keys(e);for(n=0;n<i.length;n++)r=i[n],t.indexOf(r)>=0||(a[r]=e[r]);return a}(e,t);if(Object.getOwnPropertySymbols){var i=Object.getOwnPropertySymbols(e);for(n=0;n<i.length;n++)r=i[n],t.indexOf(r)>=0||Object.prototype.propertyIsEnumerable.call(e,r)&&(a[r]=e[r])}return a}var l=n.createContext({}),u=function(e){var t=n.useContext(l),r=t;return e&&(r="function"==typeof e?e(t):o(o({},t),e)),r},d=function(e){var t=u(e.components);return n.createElement(l.Provider,{value:t},e.children)},c={inlineCode:"code",wrapper:function(e){var t=e.children;return n.createElement(n.Fragment,{},t)}},p=n.forwardRef((function(e,t){var r=e.components,a=e.mdxType,i=e.originalType,l=e.parentName,d=s(e,["components","mdxType","originalType","parentName"]),p=u(r),m=a,f=p["".concat(l,".").concat(m)]||p[m]||c[m]||i;return r?n.createElement(f,o(o({ref:t},d),{},{components:r})):n.createElement(f,o({ref:t},d))}));function m(e,t){var r=arguments,a=t&&t.mdxType;if("string"==typeof e||a){var i=r.length,o=new Array(i);o[0]=p;var s={};for(var l in t)hasOwnProperty.call(t,l)&&(s[l]=t[l]);s.originalType=e,s.mdxType="string"==typeof e?e:a,o[1]=s;for(var u=2;u<i;u++)o[u]=r[u];return n.createElement.apply(null,o)}return n.createElement.apply(null,r)}p.displayName="MDXCreateElement"},5031:(e,t,r)=>{r.r(t),r.d(t,{assets:()=>l,contentTitle:()=>o,default:()=>c,frontMatter:()=>i,metadata:()=>s,toc:()=>u});var n=r(7462),a=(r(7294),r(3905));const i={},o="Rust runtime",s={unversionedId:"guides/custom/rust",id:"guides/custom/rust",title:"Rust runtime",description:"Customize handler",source:"@site/docs/guides/custom/rust.md",sourceDirName:"guides/custom",slug:"/guides/custom/rust",permalink:"/flutter_rust_bridge/guides/custom/rust",draft:!1,editUrl:"https://github.com/fzyzcjy/flutter_rust_bridge/tree/master/website/docs/guides/custom/rust.md",tags:[],version:"current",frontMatter:{},sidebar:"tutorialSidebar",previous:{title:"Code generator",permalink:"/flutter_rust_bridge/guides/custom/codegen"},next:{title:"Dart runtime",permalink:"/flutter_rust_bridge/guides/custom/dart"}},l={},u=[{value:"Customize handler",id:"customize-handler",level:2},{value:"States in handler",id:"states-in-handler",level:3},{value:"Customize WASM initialization code",id:"customize-wasm-initialization-code",level:2},{value:"Feature flags",id:"feature-flags",level:2}],d={toc:u};function c(e){let{components:t,...r}=e;return(0,a.kt)("wrapper",(0,n.Z)({},d,r,{components:t,mdxType:"MDXLayout"}),(0,a.kt)("h1",{id:"rust-runtime"},"Rust runtime"),(0,a.kt)("h2",{id:"customize-handler"},"Customize handler"),(0,a.kt)("p",null,"By default, a ",(0,a.kt)("inlineCode",{parentName:"p"},"FLUTTER_RUST_BRIDGE_HANDLER")," instance is automatically generated\n(by the auto-generated ",(0,a.kt)("inlineCode",{parentName:"p"},"flutter_rust_bridge::frb_generated_default_handler!()")," macro),\nand you can see it at ",(0,a.kt)("inlineCode",{parentName:"p"},"frb_generated.rs"),".\nHowever, you can provide your own ",(0,a.kt)("inlineCode",{parentName:"p"},"FLUTTER_RUST_BRIDGE_HANDLER")," instance.\nIf your instance is detected, the generator will not generate one, but will use your version."),(0,a.kt)("p",null,"As for how to write a custom handler, often copy-paste-modify the code\nin ",(0,a.kt)("inlineCode",{parentName:"p"},"flutter_rust_bridge::frb_generated_default_handler!()")," is a good idea."),(0,a.kt)("p",null,"The handler is the central entrypoint to handle calls between Rust and Dart,\ntherefore please visit the API of the ",(0,a.kt)("inlineCode",{parentName:"p"},"Handler")," trait for more details."),(0,a.kt)("p",null,"Some typical scenarios are:"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"../how-to/inspect"},"Inspection")),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"../how-to/report-error"},"Report errors")),(0,a.kt)("li",{parentName:"ul"},"Customizing executors, thread pools, async runtimes, ...")),(0,a.kt)("p",null,"The API of handler may have breaking change across minor version bumps,\nwhich is unlike most parts of flutter_rust_bridge which follows semantics versioning.\nHowever, usually it can be easily migrated by adding the corresponding parameters in your code."),(0,a.kt)("h3",{id:"states-in-handler"},"States in handler"),(0,a.kt)("p",null,"If you are only using the provided handler and executor (with your own arguments),\nyou can ignore this section. Only read it when you want to create your brand new handler."),(0,a.kt)("p",null,"It is usually a good idea to avoid coupling the handler with the specific Dart side isolate.\nFor example, suppose whenever we call ",(0,a.kt)("inlineCode",{parentName:"p"},"RustLib.init()")," on Dart side,\nwe create a Dart isolate port and let the Rust side save and use it.\nThen, during ",(0,a.kt)("inlineCode",{parentName:"p"},"flutter test"),"s, multiple Dart test files will be executed concurrently,\nbut (from my experiments) they all share one single Rust side.\nThen, the one Rust side will be initialized multiple times with different Dart ports,\nand it causes confusion and bugs.\nSimilar things may happen if you are using multiple isolates in your Dart program,\nor when you hot-restart the Dart side."),(0,a.kt)("h2",{id:"customize-wasm-initialization-code"},"Customize WASM initialization code"),(0,a.kt)("p",null,"By default, this library injects its own initialization code to facilitate panic information recovery\nusing ",(0,a.kt)("a",{parentName:"p",href:"https://lib.rs/crates/console_error_panic_hook"},(0,a.kt)("inlineCode",{parentName:"a"},"console_error_panic_hook")),".\nIf you would like to run some initialization code for WASM, e.g. to set up logging libraries,\nspecify ",(0,a.kt)("inlineCode",{parentName:"p"},"default-features = false")," in Cargo.toml:"),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-toml"},'flutter_rust_bridge = { version = "..", default-features = false, features = [..] }\n')),(0,a.kt)("p",null,"The ",(0,a.kt)("inlineCode",{parentName:"p"},"wasm-start")," feature governs this behavior and is enabled by default."),(0,a.kt)("h2",{id:"feature-flags"},"Feature flags"),(0,a.kt)("p",null,"The full list of feature flags can be seen ",(0,a.kt)("a",{parentName:"p",href:"https://docs.rs/crate/flutter_rust_bridge/latest/features"},"here"),"\n(you may need to switch to corresponding version)."),(0,a.kt)("p",null,"For example, suppose you need to use ",(0,a.kt)("inlineCode",{parentName:"p"},"chrono")," types, then add that feature flag.\nAs another example, suppose you never use async code, then the ",(0,a.kt)("inlineCode",{parentName:"p"},"rust-async")," feature flag can be removed."))}c.isMDXComponent=!0}}]);