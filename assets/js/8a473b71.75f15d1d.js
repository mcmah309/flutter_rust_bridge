"use strict";(self.webpackChunkflutter_rust_bridge=self.webpackChunkflutter_rust_bridge||[]).push([[345],{3905:(e,t,n)=>{n.d(t,{Zo:()=>u,kt:()=>m});var r=n(7294);function i(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function a(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function o(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?a(Object(n),!0).forEach((function(t){i(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):a(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function l(e,t){if(null==e)return{};var n,r,i=function(e,t){if(null==e)return{};var n,r,i={},a=Object.keys(e);for(r=0;r<a.length;r++)n=a[r],t.indexOf(n)>=0||(i[n]=e[n]);return i}(e,t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);for(r=0;r<a.length;r++)n=a[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(i[n]=e[n])}return i}var s=r.createContext({}),p=function(e){var t=r.useContext(s),n=t;return e&&(n="function"==typeof e?e(t):o(o({},t),e)),n},u=function(e){var t=p(e.components);return r.createElement(s.Provider,{value:t},e.children)},c={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},f=r.forwardRef((function(e,t){var n=e.components,i=e.mdxType,a=e.originalType,s=e.parentName,u=l(e,["components","mdxType","originalType","parentName"]),f=p(n),m=i,d=f["".concat(s,".").concat(m)]||f[m]||c[m]||a;return n?r.createElement(d,o(o({ref:t},u),{},{components:n})):r.createElement(d,o({ref:t},u))}));function m(e,t){var n=arguments,i=t&&t.mdxType;if("string"==typeof e||i){var a=n.length,o=new Array(a);o[0]=f;var l={};for(var s in t)hasOwnProperty.call(t,s)&&(l[s]=t[s]);l.originalType=e,l.mdxType="string"==typeof e?e:i,o[1]=l;for(var p=2;p<a;p++)o[p]=n[p];return r.createElement.apply(null,o)}return r.createElement.apply(null,n)}f.displayName="MDXCreateElement"},4191:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>s,contentTitle:()=>o,default:()=>c,frontMatter:()=>a,metadata:()=>l,toc:()=>p});var r=n(7462),i=(n(7294),n(3905));const a={},o="Types with lifetimes",l={unversionedId:"guides/lifetimes/type-with-lifetimes",id:"guides/lifetimes/type-with-lifetimes",title:"Types with lifetimes",description:"We can have function like fn f(foo: &'a Foo) -> Bar,",source:"@site/docs/guides/lifetimes/type-with-lifetimes.md",sourceDirName:"guides/lifetimes",slug:"/guides/lifetimes/type-with-lifetimes",permalink:"/flutter_rust_bridge/guides/lifetimes/type-with-lifetimes",draft:!1,editUrl:"https://github.com/fzyzcjy/flutter_rust_bridge/tree/master/website/docs/guides/lifetimes/type-with-lifetimes.md",tags:[],version:"current",frontMatter:{},sidebar:"tutorialSidebar",previous:{title:"Overview",permalink:"/flutter_rust_bridge/guides/lifetimes/overview"},next:{title:"Return references",permalink:"/flutter_rust_bridge/guides/lifetimes/return-references"}},s={},p=[{value:"Example",id:"example",level:2}],u={toc:p};function c(e){let{components:t,...n}=e;return(0,i.kt)("wrapper",(0,r.Z)({},u,n,{components:t,mdxType:"MDXLayout"}),(0,i.kt)("h1",{id:"types-with-lifetimes"},"Types with lifetimes"),(0,i.kt)("p",null,"We can have function like ",(0,i.kt)("inlineCode",{parentName:"p"},"fn f<'a>(foo: &'a Foo) -> Bar<'a>"),",\ni.e. returning a type with lifetime on it."),(0,i.kt)("p",null,"There are some syntax rules to follow because we have not implemented logic about lifetime elision or fancy lifetime parsing.\nIf some rules make your scenario very complicated, feel free to create an issue to discuss."),(0,i.kt)("ul",null,(0,i.kt)("li",{parentName:"ul"},"Specify lifetimes explicitly. For example, change ",(0,i.kt)("inlineCode",{parentName:"li"},"fn f(foo: &Foo) -> Bar")," to ",(0,i.kt)("inlineCode",{parentName:"li"},"fn f<'a>(foo: &'a Foo) -> Bar<'a>"),". This will not affect code correctness."),(0,i.kt)("li",{parentName:"ul"},"Only one lifetime specifier name (can have other unnamed specifiers). For example, ",(0,i.kt)("inlineCode",{parentName:"li"},"fn f<'a>(a: &A, b: &'a B, c: &C<'a>, d: &D<'_>) -> E<'a>")," is acceptable.")),(0,i.kt)("p",null,"(Optional) If you are worried whether you need to manually keep the Dart ",(0,i.kt)("inlineCode",{parentName:"p"},"Foo")," object live longer than ",(0,i.kt)("inlineCode",{parentName:"p"},"Bar"),",\nthe answer is - no need.\nYou can safely call Dart ",(0,i.kt)("inlineCode",{parentName:"p"},"Foo.dispose")," or let Dart ",(0,i.kt)("inlineCode",{parentName:"p"},"Foo")," be garbage collected, and the ",(0,i.kt)("inlineCode",{parentName:"p"},"Bar")," will still be valid.\nIndeed, ",(0,i.kt)("inlineCode",{parentName:"p"},"Bar")," internally ensures that the Rust ",(0,i.kt)("inlineCode",{parentName:"p"},"Foo")," object lives longer."),(0,i.kt)("h2",{id:"example"},"Example"),(0,i.kt)("p",null,"Suppose we have the following Rust code:"),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre",className:"language-rust"},"#[frb(opaque)]\npub struct Foo(String);\n\n// For simplicity and demonstration, we use a field pointing to Foo here; but this struct indeed can be anything\n#[frb(opaque)]\npub struct Bar<'a> { foo: &'a Foo }\n\nimpl Foo {\n    pub fn compute_bar<'a>(&'a self) -> Bar<'a> { .. }\n}\n\nimpl Bar<'_> {\n    pub fn greet(&self) { .. }\n}\n")),(0,i.kt)("p",null,"Then, we can use it like:"),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre",className:"language-dart"},"var foo = Foo(..);\nvar bar = foo.computeBar();\nbar.greet();\n")))}c.isMDXComponent=!0}}]);