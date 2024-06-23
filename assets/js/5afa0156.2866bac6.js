"use strict";(self.webpackChunkflutter_rust_bridge=self.webpackChunkflutter_rust_bridge||[]).push([[7134],{3905:(e,t,n)=>{n.d(t,{Zo:()=>l,kt:()=>m});var r=n(7294);function o(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function a(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function i(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?a(Object(n),!0).forEach((function(t){o(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):a(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function s(e,t){if(null==e)return{};var n,r,o=function(e,t){if(null==e)return{};var n,r,o={},a=Object.keys(e);for(r=0;r<a.length;r++)n=a[r],t.indexOf(n)>=0||(o[n]=e[n]);return o}(e,t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);for(r=0;r<a.length;r++)n=a[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(o[n]=e[n])}return o}var c=r.createContext({}),u=function(e){var t=r.useContext(c),n=t;return e&&(n="function"==typeof e?e(t):i(i({},t),e)),n},l=function(e){var t=u(e.components);return r.createElement(c.Provider,{value:t},e.children)},d={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},p=r.forwardRef((function(e,t){var n=e.components,o=e.mdxType,a=e.originalType,c=e.parentName,l=s(e,["components","mdxType","originalType","parentName"]),p=u(n),m=o,h=p["".concat(c,".").concat(m)]||p[m]||d[m]||a;return n?r.createElement(h,i(i({ref:t},l),{},{components:n})):r.createElement(h,i({ref:t},l))}));function m(e,t){var n=arguments,o=t&&t.mdxType;if("string"==typeof e||o){var a=n.length,i=new Array(a);i[0]=p;var s={};for(var c in t)hasOwnProperty.call(t,c)&&(s[c]=t[c]);s.originalType=e,s.mdxType="string"==typeof e?e:o,i[1]=s;for(var u=2;u<a;u++)i[u]=n[u];return r.createElement.apply(null,i)}return r.createElement.apply(null,n)}p.displayName="MDXCreateElement"},380:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>c,contentTitle:()=>i,default:()=>d,frontMatter:()=>a,metadata:()=>s,toc:()=>u});var r=n(7462),o=(n(7294),n(3905));const a={},i="Testing and mocking",s={unversionedId:"guides/how-to/test",id:"guides/how-to/test",title:"Testing and mocking",description:"In this section, we discuss some of the ways to test an application / library",source:"@site/docs/guides/how-to/test.md",sourceDirName:"guides/how-to",slug:"/guides/how-to/test",permalink:"/flutter_rust_bridge/guides/how-to/test",draft:!1,editUrl:"https://github.com/fzyzcjy/flutter_rust_bridge/tree/master/website/docs/guides/how-to/test.md",tags:[],version:"current",frontMatter:{},sidebar:"tutorialSidebar",previous:{title:"Report errors",permalink:"/flutter_rust_bridge/guides/how-to/report-error"},next:{title:"Cancellable tasks",permalink:"/flutter_rust_bridge/guides/how-to/cancel"}},c={},u=[{value:"Testing Dart code without Rust code",id:"testing-dart-code-without-rust-code",level:2},{value:"Testing Rust code without Dart code",id:"testing-rust-code-without-dart-code",level:2},{value:"Testing Dart code and Rust code",id:"testing-dart-code-and-rust-code",level:2}],l={toc:u};function d(e){let{components:t,...n}=e;return(0,o.kt)("wrapper",(0,r.Z)({},l,n,{components:t,mdxType:"MDXLayout"}),(0,o.kt)("h1",{id:"testing-and-mocking"},"Testing and mocking"),(0,o.kt)("p",null,"In this section, we discuss some of the ways to test an application / library\nthat uses flutter_rust_bridge."),(0,o.kt)("h2",{id:"testing-dart-code-without-rust-code"},"Testing Dart code without Rust code"),(0,o.kt)("p",null,"A common practice in testing is to check the layers one by one.\nSuppose we want to test the Dart code without the real Rust code.\nThen, we can do mocking on the ",(0,o.kt)("inlineCode",{parentName:"p"},"RustLibApi")," abstract class (or other name if you customized the names).\nFor example, we can use ",(0,o.kt)("a",{parentName:"p",href:"https://pub.dev/packages/mockito"},"mockito"),",\n",(0,o.kt)("a",{parentName:"p",href:"https://pub.dev/packages/mocktail"},"mocktail"),", etc."),(0,o.kt)("p",null,(0,o.kt)("inlineCode",{parentName:"p"},"RustLibApi"),' class is designed with testability and mockability in mind.\nIt is designed such that all generated functions must eventually call methods in this class.\nOr, think of it like a "central dispatcher".\nTherefore, as long as you mocked this class, everything related to the Rust side is under your mock.'),(0,o.kt)("p",null,"Please refer to ",(0,o.kt)("a",{parentName:"p",href:"https://github.com/fzyzcjy/flutter_rust_bridge/blob/master/frb_example/pure_dart/test/mockability_test.dart"},"this file"),"\nfor an example (and it is tested on the CI).\nThe code may look like:"),(0,o.kt)("pre",null,(0,o.kt)("code",{parentName:"pre",className:"language-dart"},"// Surely, you can use Mockito or whatever other mocking packages\nclass MockRustLibApi extends Mock implements RustLibApi {}\n\nFuture<void> main() async {\n  final mockApi = MockRustLibApi();\n  await RustLib.init(api: mockApi);\n\n  test('can mock Rust calls', () async {\n    when(() => mockApi.simpleAdderTwinNormal(a: 1, b: 2))\n        .thenAnswer((_) async => 123456789);\n    final actualResult = await simpleAdderTwinNormal(a: 1, b: 2);\n    expect(actualResult, isNot(3));\n    expect(actualResult, equals(123456789));\n    verify(() => mockApi.simpleAdderTwinNormal(a: 1, b: 2)).called(1);\n  });\n}\n")),(0,o.kt)("h2",{id:"testing-rust-code-without-dart-code"},"Testing Rust code without Dart code"),(0,o.kt)("p",null,"Indeed just use standard methods to test the standard Rust code -\nthere is nothing special about the Rust code in your app.\nFor example, ",(0,o.kt)("a",{parentName:"p",href:"https://doc.rust-lang.org/book/ch11-00-testing.html"},"the Rust book")," explains how to do it."),(0,o.kt)("h2",{id:"testing-dart-code-and-rust-code"},"Testing Dart code and Rust code"),(0,o.kt)("p",null,"Similarly, just use standard Flutter/Dart testing techniques.\nIf you want examples, have a look at various packages in ",(0,o.kt)("inlineCode",{parentName:"p"},"frb_example"),".\nOur CI runs the tests on every commit."),(0,o.kt)("p",null,"By default, the Rust compilation and Rust library loading should be done\nautomatically without manual intervention.\nIn other words, there is no need to manually configure anything in order to make tests run."))}d.isMDXComponent=!0}}]);