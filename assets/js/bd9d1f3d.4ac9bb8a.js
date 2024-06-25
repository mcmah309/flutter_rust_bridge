"use strict";(self.webpackChunkflutter_rust_bridge=self.webpackChunkflutter_rust_bridge||[]).push([[8441],{3905:(e,t,n)=>{n.d(t,{Zo:()=>c,kt:()=>d});var r=n(67294);function i(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function o(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function u(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?o(Object(n),!0).forEach((function(t){i(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):o(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function a(e,t){if(null==e)return{};var n,r,i=function(e,t){if(null==e)return{};var n,r,i={},o=Object.keys(e);for(r=0;r<o.length;r++)n=o[r],t.indexOf(n)>=0||(i[n]=e[n]);return i}(e,t);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(e);for(r=0;r<o.length;r++)n=o[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(i[n]=e[n])}return i}var l=r.createContext({}),s=function(e){var t=r.useContext(l),n=t;return e&&(n="function"==typeof e?e(t):u(u({},t),e)),n},c=function(e){var t=s(e.components);return r.createElement(l.Provider,{value:t},e.children)},p={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},f=r.forwardRef((function(e,t){var n=e.components,i=e.mdxType,o=e.originalType,l=e.parentName,c=a(e,["components","mdxType","originalType","parentName"]),f=s(n),d=i,g=f["".concat(l,".").concat(d)]||f[d]||p[d]||o;return n?r.createElement(g,u(u({ref:t},c),{},{components:n})):r.createElement(g,u({ref:t},c))}));function d(e,t){var n=arguments,i=t&&t.mdxType;if("string"==typeof e||i){var o=n.length,u=new Array(o);u[0]=f;var a={};for(var l in t)hasOwnProperty.call(t,l)&&(a[l]=t[l]);a.originalType=e,a.mdxType="string"==typeof e?e:i,u[1]=a;for(var s=2;s<o;s++)u[s]=n[s];return r.createElement.apply(null,u)}return r.createElement.apply(null,n)}f.displayName="MDXCreateElement"},50485:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>l,contentTitle:()=>u,default:()=>p,frontMatter:()=>o,metadata:()=>a,toc:()=>s});var r=n(87462),i=(n(67294),n(3905));const o={},u="Ignoring functions",a={unversionedId:"guides/functions/ignoring",id:"guides/functions/ignoring",title:"Ignoring functions",description:"This page explains how to let a function not to be translated by flutterrustbridge.",source:"@site/docs/guides/functions/ignoring.md",sourceDirName:"guides/functions",slug:"/guides/functions/ignoring",permalink:"/flutter_rust_bridge/guides/functions/ignoring",draft:!1,editUrl:"https://github.com/fzyzcjy/flutter_rust_bridge/tree/master/website/docs/guides/functions/ignoring.md",tags:[],version:"current",frontMatter:{},sidebar:"tutorialSidebar",previous:{title:"Equals and Hash",permalink:"/flutter_rust_bridge/guides/functions/eq-hash"},next:{title:"Renaming functions",permalink:"/flutter_rust_bridge/guides/functions/renaming"}},l={},s=[{value:"Automatic ignore",id:"automatic-ignore",level:2},{value:"Explicit ignore",id:"explicit-ignore",level:2}],c={toc:s};function p(e){let{components:t,...n}=e;return(0,i.kt)("wrapper",(0,r.Z)({},c,n,{components:t,mdxType:"MDXLayout"}),(0,i.kt)("h1",{id:"ignoring-functions"},"Ignoring functions"),(0,i.kt)("p",null,"This page explains how to let a function not to be translated by flutter_rust_bridge."),(0,i.kt)("h2",{id:"automatic-ignore"},"Automatic ignore"),(0,i.kt)("p",null,"All functions that are not public (",(0,i.kt)("inlineCode",{parentName:"p"},"pub"),") will be ignored by default.\nThis include private functions, functions with ",(0,i.kt)("inlineCode",{parentName:"p"},"pub(crate)"),", ",(0,i.kt)("inlineCode",{parentName:"p"},"pub(super)"),", etc."),(0,i.kt)("h2",{id:"explicit-ignore"},"Explicit ignore"),(0,i.kt)("p",null,"If it is public but still needs to be ignored,\nyou can use the attribute ",(0,i.kt)("inlineCode",{parentName:"p"},"#[frb(ignore)]")," to ignore it.\nFor example:"),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre",className:"language-rust"},'#[frb(ignore)]\npub fn ignored_in_frb() {\n    println!("you should not see ignoredInFrb in dart side.");\n}\n')),(0,i.kt)("p",null,"This feature also supports methods. For example:"),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre",className:"language-rust"},'struct RandomStruct;\n\nimpl RandomStruct {\n    #[frb(ignore)]\n    pub fn ignored_in_frb() {\n        println!("you should not see ignoredInFrb within RandomStruct in dart side.");\n    }\n}\n')),(0,i.kt)("p",null,"Currently ",(0,i.kt)("inlineCode",{parentName:"p"},"#[frb(ignore)]")," doesn't support enums and structs yet - feel free to open an issue if your scenario needs it."))}p.isMDXComponent=!0}}]);