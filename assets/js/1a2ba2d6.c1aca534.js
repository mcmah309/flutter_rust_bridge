"use strict";(self.webpackChunkflutter_rust_bridge=self.webpackChunkflutter_rust_bridge||[]).push([[7721],{3905:(e,t,a)=>{a.d(t,{Zo:()=>m,kt:()=>N});var n=a(67294);function r(e,t,a){return t in e?Object.defineProperty(e,t,{value:a,enumerable:!0,configurable:!0,writable:!0}):e[t]=a,e}function l(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,n)}return a}function i(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?l(Object(a),!0).forEach((function(t){r(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):l(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}function d(e,t){if(null==e)return{};var a,n,r=function(e,t){if(null==e)return{};var a,n,r={},l=Object.keys(e);for(n=0;n<l.length;n++)a=l[n],t.indexOf(a)>=0||(r[a]=e[a]);return r}(e,t);if(Object.getOwnPropertySymbols){var l=Object.getOwnPropertySymbols(e);for(n=0;n<l.length;n++)a=l[n],t.indexOf(a)>=0||Object.prototype.propertyIsEnumerable.call(e,a)&&(r[a]=e[a])}return r}var p=n.createContext({}),o=function(e){var t=n.useContext(p),a=t;return e&&(a="function"==typeof e?e(t):i(i({},t),e)),a},m=function(e){var t=o(e.components);return n.createElement(p.Provider,{value:t},e.children)},u={inlineCode:"code",wrapper:function(e){var t=e.children;return n.createElement(n.Fragment,{},t)}},k=n.forwardRef((function(e,t){var a=e.components,r=e.mdxType,l=e.originalType,p=e.parentName,m=d(e,["components","mdxType","originalType","parentName"]),k=o(a),N=r,s=k["".concat(p,".").concat(N)]||k[N]||u[N]||l;return a?n.createElement(s,i(i({ref:t},m),{},{components:a})):n.createElement(s,i({ref:t},m))}));function N(e,t){var a=arguments,r=t&&t.mdxType;if("string"==typeof e||r){var l=a.length,i=new Array(l);i[0]=k;var d={};for(var p in t)hasOwnProperty.call(t,p)&&(d[p]=t[p]);d.originalType=e,d.mdxType="string"==typeof e?e:r,i[1]=d;for(var o=2;o<l;o++)i[o]=a[o];return n.createElement.apply(null,i)}return n.createElement.apply(null,a)}k.displayName="MDXCreateElement"},48174:(e,t,a)=>{a.r(t),a.d(t,{assets:()=>p,contentTitle:()=>i,default:()=>u,frontMatter:()=>l,metadata:()=>d,toc:()=>o});var n=a(87462),r=(a(67294),a(3905));const l={},i="Simple correspondence",d={unversionedId:"guides/types/translatable/simple-correspondence",id:"guides/types/translatable/simple-correspondence",title:"Simple correspondence",description:"Here is a brief glance showing what the code generator can generate (non-exhaustive). Some rows have hyper-links",source:"@site/docs/guides/types/translatable/simple-correspondence.md",sourceDirName:"guides/types/translatable",slug:"/guides/types/translatable/simple-correspondence",permalink:"/flutter_rust_bridge/guides/types/translatable/simple-correspondence",draft:!1,editUrl:"https://github.com/fzyzcjy/flutter_rust_bridge/tree/master/website/docs/guides/types/translatable/simple-correspondence.md",tags:[],version:"current",frontMatter:{},sidebar:"tutorialSidebar",previous:{title:"Translatable types",permalink:"/flutter_rust_bridge/guides/types/translatable/"},next:{title:"Detailed types",permalink:"/flutter_rust_bridge/guides/types/translatable/detailed/"}},p={},o=[],m={toc:o};function u(e){let{components:t,...a}=e;return(0,r.kt)("wrapper",(0,n.Z)({},m,a,{components:t,mdxType:"MDXLayout"}),(0,r.kt)("h1",{id:"simple-correspondence"},"Simple correspondence"),(0,r.kt)("p",null,"Here is a brief glance showing what the code generator can generate (non-exhaustive). Some rows have hyper-links\npointing to more detailed explanations."),(0,r.kt)("table",null,(0,r.kt)("thead",{parentName:"table"},(0,r.kt)("tr",{parentName:"thead"},(0,r.kt)("th",{parentName:"tr",align:null},"Rust"),(0,r.kt)("th",{parentName:"tr",align:null},"Dart"))),(0,r.kt)("tbody",{parentName:"table"},(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"detailed/vec"},(0,r.kt)("inlineCode",{parentName:"a"},"Vec<u8>"),"..",(0,r.kt)("inlineCode",{parentName:"a"},"Vec<u64>"))),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"Uint8List"),"..",(0,r.kt)("inlineCode",{parentName:"td"},"Uint64List"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"detailed/vec"},(0,r.kt)("inlineCode",{parentName:"a"},"Vec<i8>"),"..",(0,r.kt)("inlineCode",{parentName:"a"},"Vec<i64>"))),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"Int8List"),"..",(0,r.kt)("inlineCode",{parentName:"td"},"Int64List"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"detailed/vec"},(0,r.kt)("inlineCode",{parentName:"a"},"Vec<f32>"),", ",(0,r.kt)("inlineCode",{parentName:"a"},"Vec<f64>"))),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"Float32List"),", ",(0,r.kt)("inlineCode",{parentName:"td"},"Float64List"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"detailed/vec"},(0,r.kt)("inlineCode",{parentName:"a"},"Vec<T>"))),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"List<T>"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"detailed/map_set"},(0,r.kt)("inlineCode",{parentName:"a"},"HashMap<K, V>"))),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"Map<K, V>"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"detailed/map_set"},(0,r.kt)("inlineCode",{parentName:"a"},"HashSet<T>"))),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"Set<T>"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"detailed/vec"},(0,r.kt)("inlineCode",{parentName:"a"},"[T; N]"))),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"List<T>"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"detailed/struct"},(0,r.kt)("inlineCode",{parentName:"a"},"struct { .. }"),", ",(0,r.kt)("inlineCode",{parentName:"a"},"struct( .. )"))),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"class"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"detailed/enum"},(0,r.kt)("inlineCode",{parentName:"a"},"enum { A, B }"))),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"enum"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"detailed/enum"},(0,r.kt)("inlineCode",{parentName:"a"},"enum { A(..) }"))),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"@freezed sealed class"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"external/same-crate"},(0,r.kt)("inlineCode",{parentName:"a"},"use ..."))),(0,r.kt)("td",{parentName:"tr",align:null},"act normally")),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"detailed/option"},(0,r.kt)("inlineCode",{parentName:"a"},"Option<T>"))),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"T?"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"../arbitrary/rust-auto-opaque"},"Auto arbitrary Rust types")),(0,r.kt)("td",{parentName:"tr",align:null},"act normally")),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"../arbitrary/rust-opaque"},"Arbitrary Rust types (opaque)")),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"RustOpaque"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"DartOpaque")),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"../arbitrary/dart-opaque"},"Arbitrary Dart types (opaque)"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"DartDynamic")),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"../arbitrary/dart-dynamic"},"dynamic"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"return"},(0,r.kt)("inlineCode",{parentName:"a"},"Result::Err"),", panic")),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"throw Exception"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"Box<T>")),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"T"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},"comments"),(0,r.kt)("td",{parentName:"tr",align:null},"same")),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"i8"),", ",(0,r.kt)("inlineCode",{parentName:"td"},"u8"),", .., ",(0,r.kt)("inlineCode",{parentName:"td"},"usize"),", ",(0,r.kt)("inlineCode",{parentName:"td"},"i128"),", ",(0,r.kt)("inlineCode",{parentName:"td"},"u128")),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"detailed/primitive"},(0,r.kt)("inlineCode",{parentName:"a"},"int"),", ",(0,r.kt)("inlineCode",{parentName:"a"},"BigInt")))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"f32"),", ",(0,r.kt)("inlineCode",{parentName:"td"},"f64")),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"double"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"bool")),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"bool"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"char"),", ",(0,r.kt)("inlineCode",{parentName:"td"},"String")),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"String"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"()")),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"void"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("inlineCode",{parentName:"td"},"type A = B")),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"detailed/alias"},"type alias"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"detailed/tuple"},(0,r.kt)("inlineCode",{parentName:"a"},"(T, U, ..)"))),(0,r.kt)("td",{parentName:"tr",align:null},(0,r.kt)("a",{parentName:"td",href:"https://dart.dev/language/records"},(0,r.kt)("inlineCode",{parentName:"a"},"(T, U, ..)")))))),(0,r.kt)("p",null,"Types from ",(0,r.kt)("inlineCode",{parentName:"p"},"chrono")," crate are supported as a feature, see ",(0,r.kt)("a",{parentName:"p",href:"detailed/chrono"},"here"),".\nTypes from ",(0,r.kt)("inlineCode",{parentName:"p"},"uuid")," crate are supported as a feature, see ",(0,r.kt)("a",{parentName:"p",href:"detailed/uuid"},"here"),"."),(0,r.kt)("p",null,"Raw strings are supported for struct field names. For example, you can have ",(0,r.kt)("inlineCode",{parentName:"p"},"struct S { r#type: i32 }"),". In dart,\nthe ",(0,r.kt)("inlineCode",{parentName:"p"},"r#")," prefix will be correctly removed. They are not yet supported for function arguments."))}u.isMDXComponent=!0}}]);