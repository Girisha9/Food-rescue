﻿// (c) 2010 CodePlex Foundation
(function(n,t){$act.createWidget("toggleButtonExtender",{idDecoration:"_ToggleButton",_create:function(){var i=this,r=i.element[0],f=r.id+this.idDecoration,e=t("<div/>").insertBefore(r).css({position:"relative"}),u=i.options;i._decoyElement=t("<a/>").appendTo(e).attr({id:f,href:""}).css({position:"absolute",left:"0px",top:"0px",width:u.imageWidth+"px",height:u.imageHeight+"px","font-size":u.imageHeight+"px","background-repeat":"no-repeat"});t(r).css({visibility:"hidden"});i.onClick();t(r).change(function(){i.onClick()});t(this._decoyElement).click(function(n){n.preventDefault();t(r).click()}).hover(function(){i._onDecoyElementMouseOver()},function(){i._onDecoyElementMouseOut()});n.$act.browser.agent===n.$act.browser.InternetExplorer&&e.parent().find("label").each(function(){r.id==t(this).prop("htmlFor")&&t(this).prop("htmlFor",f)})},onClick:function(){var t=this,i=t.element[0],n=t.options;i&&(i.checked?(t._decoyElement.css("background-image","url("+(i.disabled?n.disabledCheckedImageUrl:n.checkedImageUrl)+")"),n.checkedImageAlternateText&&t._decoyElement.prop("title",n.checkedImageAlternateText)):(t._decoyElement.css("background-image","url("+(i.disabled?n.disabledUncheckedImageUrl:n.uncheckedImageUrl)+")"),n.uncheckedImageAlternateText&&t._decoyElement.prop("title",n.uncheckedImageAlternateText)))},_onDecoyElementClick:function(n){return this.element.click(),n.preventDefault(),!1},_onDecoyElementMouseOver:function(){var t=this,i=t.element[0],n=t.options;i&&!i.disabled&&(i.checked&&n.checkedImageOverUrl?(t._decoyElement.css("background-image","url("+n.checkedImageOverUrl+")"),n.checkedImageOverAlternateText&&t._decoyElement.prop("title",n.checkedImageOverAlternateText)):!i.checked&&n.uncheckedImageOverUrl&&(t._decoyElement.css("background-image","url("+n.uncheckedImageOverUrl+")"),n.uncheckedImageOverAlternateText&&t._decoyElement.prop("title",n.uncheckedImageOverAlternateText)))},_onDecoyElementMouseOut:function(){this.onClick()}})})(window,actJQuery);