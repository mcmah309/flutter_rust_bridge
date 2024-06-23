"use strict";(self.webpackChunkflutter_rust_bridge=self.webpackChunkflutter_rust_bridge||[]).push([[7744],{3905:(e,t,r)=>{r.d(t,{Zo:()=>d,kt:()=>m});var n=r(7294);function i(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}function a(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,n)}return r}function l(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?a(Object(r),!0).forEach((function(t){i(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):a(Object(r)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}function o(e,t){if(null==e)return{};var r,n,i=function(e,t){if(null==e)return{};var r,n,i={},a=Object.keys(e);for(n=0;n<a.length;n++)r=a[n],t.indexOf(r)>=0||(i[r]=e[r]);return i}(e,t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);for(n=0;n<a.length;n++)r=a[n],t.indexOf(r)>=0||Object.prototype.propertyIsEnumerable.call(e,r)&&(i[r]=e[r])}return i}var s=n.createContext({}),u=function(e){var t=n.useContext(s),r=t;return e&&(r="function"==typeof e?e(t):l(l({},t),e)),r},d=function(e){var t=u(e.components);return n.createElement(s.Provider,{value:t},e.children)},p={inlineCode:"code",wrapper:function(e){var t=e.children;return n.createElement(n.Fragment,{},t)}},c=n.forwardRef((function(e,t){var r=e.components,i=e.mdxType,a=e.originalType,s=e.parentName,d=o(e,["components","mdxType","originalType","parentName"]),c=u(r),m=i,f=c["".concat(s,".").concat(m)]||c[m]||p[m]||a;return r?n.createElement(f,l(l({ref:t},d),{},{components:r})):n.createElement(f,l({ref:t},d))}));function m(e,t){var r=arguments,i=t&&t.mdxType;if("string"==typeof e||i){var a=r.length,l=new Array(a);l[0]=c;var o={};for(var s in t)hasOwnProperty.call(t,s)&&(o[s]=t[s]);o.originalType=e,o.mdxType="string"==typeof e?e:i,l[1]=o;for(var u=2;u<a;u++)l[u]=r[u];return n.createElement.apply(null,l)}return n.createElement.apply(null,r)}c.displayName="MDXCreateElement"},6898:(e,t,r)=>{r.r(t),r.d(t,{assets:()=>d,contentTitle:()=>s,default:()=>m,frontMatter:()=>o,metadata:()=>u,toc:()=>p});var n=r(7462),i=(r(7294),r(3905)),a=r(6184),l=r(654);const o={},s="Directory structure (multi-file)",u={unversionedId:"guides/miscellaneous/directory",id:"guides/miscellaneous/directory",title:"Directory structure (multi-file)",description:"This page is about the directory generated by flutterrustbridge_codegen create/integrate.",source:"@site/docs/guides/miscellaneous/directory.md",sourceDirName:"guides/miscellaneous",slug:"/guides/miscellaneous/directory",permalink:"/flutter_rust_bridge/guides/miscellaneous/directory",draft:!1,editUrl:"https://github.com/fzyzcjy/flutter_rust_bridge/tree/master/website/docs/guides/miscellaneous/directory.md",tags:[],version:"current",frontMatter:{},sidebar:"tutorialSidebar",previous:{title:"Miscellaneous",permalink:"/flutter_rust_bridge/guides/miscellaneous/"},next:{title:"Codec",permalink:"/flutter_rust_bridge/guides/miscellaneous/codec"}},d={},p=[{value:"Overview",id:"overview",level:2},{value:"Details",id:"details",level:2},{value:"Remarks",id:"remarks",level:2}],c={toc:p};function m(e){let{components:t,...r}=e;return(0,i.kt)("wrapper",(0,n.Z)({},c,r,{components:t,mdxType:"MDXLayout"}),(0,i.kt)("h1",{id:"directory-structure-multi-file"},"Directory structure (multi-file)"),(0,i.kt)("admonition",{type:"info"},(0,i.kt)("p",{parentName:"admonition"},"This page is about the directory generated by ",(0,i.kt)("inlineCode",{parentName:"p"},"flutter_rust_bridge_codegen create/integrate"),".\nYou are free to use whatever other methods to integrate Rust with Dart.")),(0,i.kt)("h2",{id:"overview"},"Overview"),(0,i.kt)(a.ZP,{mdxType:"DirectoryStructureBriefExplain"}),(0,i.kt)("p",null,"Briefly speaking, the folders are:"),(0,i.kt)(l.ZP,{mdxType:"DirectoryStructureBriefList"}),(0,i.kt)("h2",{id:"details"},"Details"),(0,i.kt)("p",null,"Firstly, everything in this section only applies to the default template as a starter kit.\nYou are surely free to customize everything, use your own template, etc,\nand flutter_rust_bridge continues to work well."),(0,i.kt)("p",null,"As mentioned above, a good starting point to write code is ",(0,i.kt)("inlineCode",{parentName:"p"},"lib/main.dart")," and ",(0,i.kt)("inlineCode",{parentName:"p"},"rust/src/api/simple.rs"),".\nSuppose we want to add more files:"),(0,i.kt)("ul",null,(0,i.kt)("li",{parentName:"ul"},"For Dart, write anywhere in ",(0,i.kt)("inlineCode",{parentName:"li"},"lib")," (the recommended place is inside ",(0,i.kt)("inlineCode",{parentName:"li"},"lib/src"),")."),(0,i.kt)("li",{parentName:"ul"},"For Rust, write anywhere in ",(0,i.kt)("inlineCode",{parentName:"li"},"rust/src/api"),".")),(0,i.kt)("p",null,"Remark: When adding a Rust file, remember to add it as a module in ",(0,i.kt)("inlineCode",{parentName:"p"},"mod.rs"),".\nOtherwise, Rust (and flutter_rust_bridge) will act as if your file does not exist at all.\nFor example, after creating ",(0,i.kt)("inlineCode",{parentName:"p"},"rust/src/api/another.rs"),",\nwe need to add a line ",(0,i.kt)("inlineCode",{parentName:"p"},"pub mod another;")," inside ",(0,i.kt)("inlineCode",{parentName:"p"},"rust/src/api/mod.rs"),"."),(0,i.kt)("h2",{id:"remarks"},"Remarks"),(0,i.kt)("p",null,"If you are interested:\nThe ",(0,i.kt)("inlineCode",{parentName:"p"},"rust_builder"),' dummy package is likely to be able to be removed\nafter the Dart "native assets" language feature is stabilized,\nwhich acts as a build hook similar to ',(0,i.kt)("inlineCode",{parentName:"p"},"build.dart"),' in the "native assets" feature.'))}m.isMDXComponent=!0},6184:(e,t,r)=>{r.d(t,{ZP:()=>l});var n=r(7462),i=(r(7294),r(3905));const a={toc:[]};function l(e){let{components:t,...r}=e;return(0,i.kt)("wrapper",(0,n.Z)({},a,r,{components:t,mdxType:"MDXLayout"}),(0,i.kt)("p",null,'Though seemingly many files, it is pretty simple:\n"a standard Flutter app + a standard Rust crate + some glues to ignore".\nIn short, write Flutter near ',(0,i.kt)("inlineCode",{parentName:"p"},"lib/main.dart")," and Rust near ",(0,i.kt)("inlineCode",{parentName:"p"},"rust/src/api/simple.rs"),"."))}l.isMDXComponent=!0},654:(e,t,r)=>{r.d(t,{ZP:()=>l});var n=r(7462),i=(r(7294),r(3905));const a={toc:[]};function l(e){let{components:t,...r}=e;return(0,i.kt)("wrapper",(0,n.Z)({},a,r,{components:t,mdxType:"MDXLayout"}),(0,i.kt)("ul",null,(0,i.kt)("li",{parentName:"ul"},(0,i.kt)("inlineCode",{parentName:"li"},"/lib"),": Dart source code",(0,i.kt)("ul",{parentName:"li"},(0,i.kt)("li",{parentName:"ul"},"\ud83d\udc24 ",(0,i.kt)("inlineCode",{parentName:"li"},"main.dart"),": Flutter app entrypoint code"),(0,i.kt)("li",{parentName:"ul"},(0,i.kt)("inlineCode",{parentName:"li"},"src/rust"),": Auto generated glue, mirroring the whole Rust crate"))),(0,i.kt)("li",{parentName:"ul"},(0,i.kt)("inlineCode",{parentName:"li"},"/rust"),": Rust source code",(0,i.kt)("ul",{parentName:"li"},(0,i.kt)("li",{parentName:"ul"},"\ud83e\udd80 ",(0,i.kt)("inlineCode",{parentName:"li"},"src/api/simple.rs"),": Write your Flutter-facing code anywhere within ",(0,i.kt)("inlineCode",{parentName:"li"},"api")," folder"),(0,i.kt)("li",{parentName:"ul"},(0,i.kt)("inlineCode",{parentName:"li"},"frb_generated.*.rs"),": Auto generated glue"))),(0,i.kt)("li",{parentName:"ul"},(0,i.kt)("inlineCode",{parentName:"li"},"/android"),", ",(0,i.kt)("inlineCode",{parentName:"li"},"/ios"),", ",(0,i.kt)("inlineCode",{parentName:"li"},"/linux"),", ",(0,i.kt)("inlineCode",{parentName:"li"},"/macos"),", ",(0,i.kt)("inlineCode",{parentName:"li"},"/web"),", ",(0,i.kt)("inlineCode",{parentName:"li"},"/windows"),", ",(0,i.kt)("inlineCode",{parentName:"li"},"/integration_test"),", ",(0,i.kt)("inlineCode",{parentName:"li"},"/test"),", ",(0,i.kt)("inlineCode",{parentName:"li"},"/test_driver"),": Other standard Flutter folders"),(0,i.kt)("li",{parentName:"ul"},(0,i.kt)("inlineCode",{parentName:"li"},"/rust_builder"),": Ignore it (glue to build Rust with Flutter)")))}l.isMDXComponent=!0}}]);