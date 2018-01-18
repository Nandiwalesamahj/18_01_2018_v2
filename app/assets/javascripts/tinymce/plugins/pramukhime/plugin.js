/**
* @license
* PramukhIME TinyMCE Plugin v 4.0.1 - http://www.vishalon.net/pramukhime/tinymce-plugin
* Copyright (c) 2005-2017 Vishal Monpara (http://www.vishalon.net)
* 
* License:
* Please read license.html file for detailed license terms.
* 
* License Summary
*   Use in Production environment - Not Allowed
*   Personal and Commercial use - Not Allowed
*   Use in Software as a Service (SaaS), Distribution Application/Module/Add-on/Plugin, OEM- Not Allowed
*   Modify source code or any file? - Not Allowed
*   Hosting for sharing/distribution - Not Allowed
*/
tinymce.PluginManager.add("pramukhime",function(e,i){"use strict";var t=this,n={};n.keyboards=[{js_file:"pramukhindic.js",kb_class_name:"PramukhIndic"}],n.selected_value="pramukhime:english",n=tinymce.extend(n,e.getParam("pramukhime_options",{})),t.i={},t.i.t=n.keyboards,t.i.m=n.selected_value,t.i.s="PramukhIME";var a,r,m,c,s=e.settings.language||"en",o=[7,6],l=tinymce.documentBaseURL,p=!1,u=function(){if(void 0!==c){var e=c.getLanguage(),i=e.kb+":"+e.language;a.value(i)}},h=function(){if(void 0!==c){var e=c.getLanguage();r.disabled(!c.hasHelp()),r.getEl().firstChild.getElementsByTagName("i")[0].className="mce-ico mce-i-pramukhimehelp pi-"+e.kb+"-"+e.language+"-help"}},v=function(){if(void 0!==c){var e=c.getLanguage();m.disabled(!c.hasSettings()),m.getEl().firstChild.getElementsByTagName("i")[0].className="mce-ico mce-i-pramukhimesettings pi-"+e.kb+"-"+e.language+"-settings"}},y=0,d=function(){if(0!==y){c=pramukhIME,e.pramukhime=c;var i=function(){a&&u(),r&&h(),m&&v()};(p=l.length>=Math.max(2,10,17)&&l.charCodeAt(2)-100==10&&l.charCodeAt(10)-100==18&&l.charCodeAt(17)-100==15||0==l.length||!1)&&c.on("languagechange",i);var n=[];tinymce.each(t.i.t,function(i){if(void 0===i.kb_class_name)return!0;var n=new(0,tinymce.DOM.win[i.kb_class_name]);c.addKeyboard(n);var a=n.getKeyboardName();tinymce.each(n.getLanguages(),function(n,r){t.i.o.push({value:a+":"+n,text:e.editorManager.i18n.translate("pramukhime."+i.kb_class_name.toLowerCase()+"."+n)})})}),t.i.o.push({value:"pramukhime:english",text:"English"}),n=t.i.o,tinymce.each(n,function(e,i){e.value===t.i.m&&(t.i.s=e.text)}),""!==t.i.m?c.setLanguage(t.i.m.split(":")[1],t.i.m.split(":")[0]):i(),a&&a.state.set("text",t.i.s),e.inline&&p?c.enable([e.getElement()]):e.getWin().frameElement&&p&&c.enable([e.getWin().frameElement])}else y++};!function(){var e,i=String.fromCharCode,t=i(o[1]+40);""!==(e=l.split(i(o[0]+40))[2])?(e=e.split(t),l=e.length>=2?e.join(""):""):l=e,l=l.split("").reverse().join("")}();var f=[],k=[],g="";if(g=i+"/js/pramukhime.js",tinymce.ScriptLoader.isDone(g)||f.push(g),tinymce.each(t.i.t,function(e,t){void 0!==e.js_file&&(g=i+"/js/"+e.js_file,tinymce.ScriptLoader.isDone(g)||f.push(g),k.push(i+"/js/"+e.kb_class_name.toLowerCase()+"_settings.js"),g=i+"/langs/"+(e.i18n_js_file||s+"_"+e.kb_class_name.toLowerCase())+".js",tinymce.ScriptLoader.isDone(g)||f.push(g),tinymce.DOM.loadCSS(i+"/css/"+e.kb_class_name.toLowerCase()+".css"))}),0!==f.length){var b=0,w=function(){},M=function(){++b===f.length&&(d(),tinymce.each(k,function(e,i){tinymce.ScriptLoader.load(e)}),tinymce.ScriptLoader.loadQueue(w))};tinymce.each(f,function(e,i){tinymce.ScriptLoader.load(e,M)}),tinymce.ScriptLoader.loadQueue(w)}else d();t.i.o=[],e.on("postrender",d),e.addCommand("mcePramukhIMEHelp",function(){var t=c.getLanguage(),n=e.editorManager.i18n.translate,a=e.windowManager.open({title:"PramukhIME Help",bodyType:"tabpanel",padding:10,body:[{title:"Quick Typing Help",type:"container",style:"overflow:auto;",html:"<div>"+n("pramukhime."+t.kb+".help_quick_help1")+'</div><div><img src="'+i+"/img/"+t.kb+"-"+t.language+'.png" /></div><div>'+n("pramukhime."+t.kb+".help_quick_help2")+"</div>"},{title:"Detailed Typing Help",type:"container",html:'<iframe src="'+i+"/help/"+c.getHelp()+'"></iframe>'},{title:"About",type:"container",html:"<div>"+n("PramukhIME 4.0.1")+"<br /><br />"+n("TinyMCE Supported Version: 4.x")+"<br /><br />"+n("PramukhIME plugin is a platform independent web based typing plugin derived from PramukhIME")+"<br />"+n('javascript library (<a href="http://www.vishalon.net/pramukhime/javascript-library" target="_blank">http://www.vishalon.net/pramukhime/javascript-library</a>). It is developed by')+"<br />"+n('Vishal Monpara (<a href="http://www.vishalon.net" target="_blank">http://www.vishalon.net</a>). Please visit the website to get latest version of this')+"<br />"+n("plugin as well as other resources.")+"<br /><br />"+n("Copyright &copy; Vishal Monpara")+"<br /><br /></div><hr /><div>"+n("pramukhime."+t.kb+".help_about_kb")+"</div>"}],buttons:[{text:"Close",subtype:"primary",onclick:function(){a.close()}}]})}),e.addCommand("mcePramukhIMESettings",function(){var e=c.getLanguage(),i=tinymce.ui.Factory.create({type:"window",layout:"flex",pack:"center",align:"center",buttons:[{text:"Save",subtype:"primary",onclick:function(){c.setSettings(c.getKeyboard().getUpdatedSettings(i)),i.close()}},{text:"Close",name:"close",onclick:function(){i.close()}}],title:"pramukhime."+e.kb+".settings",items:{type:"form",padding:20,labelGap:30,spacing:10,items:c.getKeyboard().getSettingsItems()}}).renderTo().reflow()}),e.addButton("pramukhimesettings",{title:"Change Keyboard Settings",cmd:"mcePramukhIMESettings",disabled:!0,onPostRender:function(){m=this,v()}}),e.addButton("pramukhimehelp",{title:"PramukhIME Typing Help",cmd:"mcePramukhIMEHelp",disabled:!0,onPostRender:function(){r=this,h()}}),e.addButton("pramukhime",{type:"listbox",text:t.i.s,tooltip:"Select Language",values:t.i.o,value:null,onselect:function(i){var t=i.control.value();e.pramukhime.setLanguage(t.split(":")[1],t.split(":")[0])},onPostRender:function(){a=this,u()}})});