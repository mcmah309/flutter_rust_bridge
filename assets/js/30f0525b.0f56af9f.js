"use strict";(self.webpackChunkflutter_rust_bridge=self.webpackChunkflutter_rust_bridge||[]).push([[3647],{3905:(e,t,a)=>{a.d(t,{Zo:()=>d,kt:()=>m});var r=a(67294);function n(e,t,a){return t in e?Object.defineProperty(e,t,{value:a,enumerable:!0,configurable:!0,writable:!0}):e[t]=a,e}function l(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,r)}return a}function i(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?l(Object(a),!0).forEach((function(t){n(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):l(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}function s(e,t){if(null==e)return{};var a,r,n=function(e,t){if(null==e)return{};var a,r,n={},l=Object.keys(e);for(r=0;r<l.length;r++)a=l[r],t.indexOf(a)>=0||(n[a]=e[a]);return n}(e,t);if(Object.getOwnPropertySymbols){var l=Object.getOwnPropertySymbols(e);for(r=0;r<l.length;r++)a=l[r],t.indexOf(a)>=0||Object.prototype.propertyIsEnumerable.call(e,a)&&(n[a]=e[a])}return n}var o=r.createContext({}),u=function(e){var t=r.useContext(o),a=t;return e&&(a="function"==typeof e?e(t):i(i({},t),e)),a},d=function(e){var t=u(e.components);return r.createElement(o.Provider,{value:t},e.children)},p={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},c=r.forwardRef((function(e,t){var a=e.components,n=e.mdxType,l=e.originalType,o=e.parentName,d=s(e,["components","mdxType","originalType","parentName"]),c=u(a),m=n,f=c["".concat(o,".").concat(m)]||c[m]||p[m]||l;return a?r.createElement(f,i(i({ref:t},d),{},{components:a})):r.createElement(f,i({ref:t},d))}));function m(e,t){var a=arguments,n=t&&t.mdxType;if("string"==typeof e||n){var l=a.length,i=new Array(l);i[0]=c;var s={};for(var o in t)hasOwnProperty.call(t,o)&&(s[o]=t[o]);s.originalType=e,s.mdxType="string"==typeof e?e:n,i[1]=s;for(var u=2;u<l;u++)i[u]=a[u];return r.createElement.apply(null,i)}return r.createElement.apply(null,a)}c.displayName="MDXCreateElement"},13170:(e,t,a)=>{a.r(t),a.d(t,{assets:()=>o,contentTitle:()=>i,default:()=>p,frontMatter:()=>l,metadata:()=>s,toc:()=>u});var r=a(87462),n=(a(67294),a(3905));const l={},i="Structs",s={unversionedId:"guides/types/translatable/detailed/struct",id:"guides/types/translatable/detailed/struct",title:"Structs",description:"Normal Rust structs are supported. You can even use recursive fields, such as pub struct TreeNode { pub value Vec, pub parent: Box }.",source:"@site/docs/guides/types/translatable/detailed/struct.md",sourceDirName:"guides/types/translatable/detailed",slug:"/guides/types/translatable/detailed/struct",permalink:"/flutter_rust_bridge/guides/types/translatable/detailed/struct",draft:!1,editUrl:"https://github.com/fzyzcjy/flutter_rust_bridge/tree/master/website/docs/guides/types/translatable/detailed/struct.md",tags:[],version:"current",frontMatter:{},sidebar:"tutorialSidebar",previous:{title:"Vec, array, slice",permalink:"/flutter_rust_bridge/guides/types/translatable/detailed/vec"},next:{title:"Enums",permalink:"/flutter_rust_bridge/guides/types/translatable/detailed/enum"}},o={},u=[{value:"Tuple structs",id:"tuple-structs",level:2},{value:"Non-final fields",id:"non-final-fields",level:2},{value:"Dart metadata annotations",id:"dart-metadata-annotations",level:2},{value:"<code>freezed</code> Dart classes",id:"freezed-dart-classes",level:2},{value:"Rename fields",id:"rename-fields",level:2},{value:"Example",id:"example",level:2},{value:"Example 1: Recursive fields",id:"example-1-recursive-fields",level:3},{value:"Example 2: Metadata",id:"example-2-metadata",level:3}],d={toc:u};function p(e){let{components:t,...a}=e;return(0,n.kt)("wrapper",(0,r.Z)({},d,a,{components:t,mdxType:"MDXLayout"}),(0,n.kt)("h1",{id:"structs"},"Structs"),(0,n.kt)("p",null,"Normal Rust structs are supported. You can even use recursive fields, such as ",(0,n.kt)("inlineCode",{parentName:"p"},"pub struct TreeNode { pub value: String, pub children: Vec<MyTreeNode>, pub parent: Box<MyTreeNode> }"),"."),(0,n.kt)("p",null,"For versions older than v1.66.0 (no need for latest version), if a struct field has type being a struct or an enum, please add a ",(0,n.kt)("inlineCode",{parentName:"p"},"Box")," on it, or it will lead to compile-time error. For example, ",(0,n.kt)("inlineCode",{parentName:"p"},"struct A {b: B}")," should be ",(0,n.kt)("inlineCode",{parentName:"p"},"struct A {b: Box<B>}")," instead."),(0,n.kt)("h2",{id:"tuple-structs"},"Tuple structs"),(0,n.kt)("p",null,"Tuple structs ",(0,n.kt)("inlineCode",{parentName:"p"},"struct Foo(A, B)")," are translated as ",(0,n.kt)("inlineCode",{parentName:"p"},"class Foo { A field0; B field1; }"),", since Dart does not have anonymous fields."),(0,n.kt)("h2",{id:"non-final-fields"},"Non-final fields"),(0,n.kt)("p",null,"By adding ",(0,n.kt)("inlineCode",{parentName:"p"},"#[frb(non_final)]")," to a field of struct, the corresponding field in Dart will be non-final. By default, we make all generated fields final because of Rust's philosophy - immutable by default."),(0,n.kt)("p",null,"Unless a field has been annotated with ",(0,n.kt)("inlineCode",{parentName:"p"},"#[frb(non_final)]"),", generated classes will also be const-constructible."),(0,n.kt)("h2",{id:"dart-metadata-annotations"},"Dart metadata annotations"),(0,n.kt)("p",null,"You can add dart metadata annotations using ",(0,n.kt)("inlineCode",{parentName:"p"},"dart_metadata")," parameter in ",(0,n.kt)("inlineCode",{parentName:"p"},"frb")," macro."),(0,n.kt)("ul",null,(0,n.kt)("li",{parentName:"ul"},"For annotations that are prelude by dart (e.g. ",(0,n.kt)("inlineCode",{parentName:"li"},"@deprecated"),"), just put annotation as a Rust literal."),(0,n.kt)("li",{parentName:"ul"},"If importing is needed, then add importing part behind the annotation string. Currently two forms of importing supported:",(0,n.kt)("ul",{parentName:"li"},(0,n.kt)("li",{parentName:"ul"},(0,n.kt)("inlineCode",{parentName:"li"},"import 'somepackage'")),(0,n.kt)("li",{parentName:"ul"},(0,n.kt)("inlineCode",{parentName:"li"},"import 'somepackage' as somename"),", where ",(0,n.kt)("inlineCode",{parentName:"li"},"somename")," will be the prefix of the annotation"))),(0,n.kt)("li",{parentName:"ul"},"Multiple annotations are separated by comma ",(0,n.kt)("inlineCode",{parentName:"li"},","),".")),(0,n.kt)("p",null,"See below for an example."),(0,n.kt)("h2",{id:"freezed-dart-classes"},(0,n.kt)("inlineCode",{parentName:"h2"},"freezed")," Dart classes"),(0,n.kt)("p",null,"If you want the generated Dart class to be ",(0,n.kt)("a",{parentName:"p",href:"https://pub.dev/packages/freezed"},(0,n.kt)("inlineCode",{parentName:"a"},"freezed"))," (which is like data-classes in other languages like Kotlin), simply put ",(0,n.kt)("inlineCode",{parentName:"p"},'#[frb(dart_metadata=("freezed"))]')," and it will generate everything needed for you."),(0,n.kt)("h2",{id:"rename-fields"},"Rename fields"),(0,n.kt)("p",null,"The ",(0,n.kt)("inlineCode",{parentName:"p"},'#[frb(name = "...")]')," can be utilized to change the Dart name of a struct field.\nFor example:"),(0,n.kt)("pre",null,(0,n.kt)("code",{parentName:"pre",className:"language-rust"},'#[frb]\npub struct MyStruct {\n  #[frb(name = "dartFieldName")]\n  pub rust_field_name: Vec<u8>,\n}\n')),(0,n.kt)("p",null,"It will give a Dart class with field ",(0,n.kt)("inlineCode",{parentName:"p"},"dartFieldName"),"."),(0,n.kt)("h2",{id:"example"},"Example"),(0,n.kt)("h3",{id:"example-1-recursive-fields"},"Example 1: Recursive fields"),(0,n.kt)("pre",null,(0,n.kt)("code",{parentName:"pre",className:"language-rust"},"pub struct MyTreeNode {\n    pub value: Vec<u8>,\n    pub children: Vec<MyTreeNode>,\n}\n")),(0,n.kt)("p",null,"Becomes:"),(0,n.kt)("pre",null,(0,n.kt)("code",{parentName:"pre",className:"language-Dart"},"class MyTreeNode {\n  final Uint8List value;\n  final List<MyTreeNode> children;\n  MyTreeNode({required this.value, required this.children});\n}\n")),(0,n.kt)("p",null,"Remark: If you are curious about ",(0,n.kt)("inlineCode",{parentName:"p"},"Future"),", have a look at ",(0,n.kt)("a",{parentName:"p",href:"../../../concurrency/async-dart"},"this"),"."),(0,n.kt)("h3",{id:"example-2-metadata"},"Example 2: Metadata"),(0,n.kt)("pre",null,(0,n.kt)("code",{parentName:"pre",className:"language-rust"},'#[frb(dart_metadata=("freezed", "immutable" import "package:meta/meta.dart" as meta))]\npub struct UserId {\n    pub value: u32,\n}\n')),(0,n.kt)("p",null,"Becomes:"),(0,n.kt)("pre",null,(0,n.kt)("code",{parentName:"pre",className:"language-dart"},"import 'package:meta/meta.dart' as meta;\n\n@freezed\n@meta.immutable\nclass UserId with _$UserId {\n  const factory UserId({\n    required int value,\n  }) = _UserId;\n}\n")))}p.isMDXComponent=!0}}]);