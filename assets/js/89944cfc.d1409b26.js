"use strict";(self.webpackChunkflutter_rust_bridge=self.webpackChunkflutter_rust_bridge||[]).push([[5926],{3905:(e,t,r)=>{r.d(t,{Zo:()=>u,kt:()=>p});var n=r(7294);function i(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}function a(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,n)}return r}function c(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?a(Object(r),!0).forEach((function(t){i(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):a(Object(r)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}function o(e,t){if(null==e)return{};var r,n,i=function(e,t){if(null==e)return{};var r,n,i={},a=Object.keys(e);for(n=0;n<a.length;n++)r=a[n],t.indexOf(r)>=0||(i[r]=e[r]);return i}(e,t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);for(n=0;n<a.length;n++)r=a[n],t.indexOf(r)>=0||Object.prototype.propertyIsEnumerable.call(e,r)&&(i[r]=e[r])}return i}var l=n.createContext({}),s=function(e){var t=n.useContext(l),r=t;return e&&(r="function"==typeof e?e(t):c(c({},t),e)),r},u=function(e){var t=s(e.components);return n.createElement(l.Provider,{value:t},e.children)},d={inlineCode:"code",wrapper:function(e){var t=e.children;return n.createElement(n.Fragment,{},t)}},m=n.forwardRef((function(e,t){var r=e.components,i=e.mdxType,a=e.originalType,l=e.parentName,u=o(e,["components","mdxType","originalType","parentName"]),m=s(r),p=i,f=m["".concat(l,".").concat(p)]||m[p]||d[p]||a;return r?n.createElement(f,c(c({ref:t},u),{},{components:r})):n.createElement(f,c({ref:t},u))}));function p(e,t){var r=arguments,i=t&&t.mdxType;if("string"==typeof e||i){var a=r.length,c=new Array(a);c[0]=m;var o={};for(var l in t)hasOwnProperty.call(t,l)&&(o[l]=t[l]);o.originalType=e,o.mdxType="string"==typeof e?e:i,c[1]=o;for(var s=2;s<a;s++)c[s]=r[s];return n.createElement.apply(null,c)}return n.createElement.apply(null,r)}m.displayName="MDXCreateElement"},7922:(e,t,r)=>{r.d(t,{Z:()=>h});var n=r(7294),i=r(6010),a=r(3438),c=r(9960),o=r(3919),l=r(5999);const s="cardContainer_fWXF",u="cardTitle_rnsV",d="cardDescription_PWke";function m(e){let{href:t,children:r}=e;return n.createElement(c.Z,{href:t,className:(0,i.Z)("card padding--lg",s)},r)}function p(e){let{href:t,icon:r,title:a,description:c}=e;return n.createElement(m,{href:t},n.createElement("h2",{className:(0,i.Z)("text--truncate",u),title:a},r," ",a),c&&n.createElement("p",{className:(0,i.Z)("text--truncate",d),title:c},c))}function f(e){let{item:t}=e;const r=(0,a.Wl)(t);return r?n.createElement(p,{href:r,icon:"\ud83d\uddc3\ufe0f",title:t.label,description:(0,l.I)({message:"{count} items",id:"theme.docs.DocCard.categoryDescription",description:"The default description for a category card in the generated index about how many items this category includes"},{count:t.items.length})}):null}function g(e){let{item:t}=e;const r=(0,o.Z)(t.href)?"\ud83d\udcc4\ufe0f":"\ud83d\udd17",i=(0,a.xz)(t.docId??void 0);return n.createElement(p,{href:t.href,icon:r,title:t.label,description:null==i?void 0:i.description})}function y(e){let{item:t}=e;switch(t.type){case"link":return n.createElement(g,{item:t});case"category":return n.createElement(f,{item:t});default:throw new Error(`unknown item type ${JSON.stringify(t)}`)}}function b(e){let{className:t}=e;const r=(0,a.jA)();return n.createElement(h,{items:r.items,className:t})}function h(e){const{items:t,className:r}=e;if(!t)return n.createElement(b,e);const c=(0,a.MN)(t);return n.createElement("section",{className:(0,i.Z)("row",r)},c.map(((e,t)=>n.createElement("article",{key:t,className:"col col--6 margin-bottom--lg"},n.createElement(y,{item:e})))))}},4596:(e,t,r)=>{r.r(t),r.d(t,{assets:()=>s,contentTitle:()=>o,default:()=>m,frontMatter:()=>c,metadata:()=>l,toc:()=>u});var n=r(7462),i=(r(7294),r(3905)),a=r(7922);const c={},o="Upgrade",l={unversionedId:"guides/miscellaneous/upgrade/index",id:"guides/miscellaneous/upgrade/index",title:"Upgrade",description:"",source:"@site/docs/guides/miscellaneous/upgrade/index.md",sourceDirName:"guides/miscellaneous/upgrade",slug:"/guides/miscellaneous/upgrade/",permalink:"/flutter_rust_bridge/guides/miscellaneous/upgrade/",draft:!1,editUrl:"https://github.com/fzyzcjy/flutter_rust_bridge/tree/master/website/docs/guides/miscellaneous/upgrade/index.md",tags:[],version:"current",frontMatter:{},sidebar:"tutorialSidebar",previous:{title:"What's new in V2",permalink:"/flutter_rust_bridge/guides/miscellaneous/whats-new"},next:{title:"Upgrade to V2",permalink:"/flutter_rust_bridge/guides/miscellaneous/upgrade/v2"}},s={},u=[],d={toc:u};function m(e){let{components:t,...r}=e;return(0,i.kt)("wrapper",(0,n.Z)({},d,r,{components:t,mdxType:"MDXLayout"}),(0,i.kt)("h1",{id:"upgrade"},"Upgrade"),(0,i.kt)(a.Z,{mdxType:"DocCardList"}))}m.isMDXComponent=!0}}]);