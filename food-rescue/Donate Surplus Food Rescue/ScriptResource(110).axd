﻿Type.registerNamespace("Sys.Extended.UI.HTMLEditor.ToolbarButton");Sys.Extended.UI.HTMLEditor.ToolbarButton.BackColorSelector=function(n){Sys.Extended.UI.HTMLEditor.ToolbarButton.BackColorSelector.initializeBase(this,[n])};Sys.Extended.UI.HTMLEditor.ToolbarButton.BackColorSelector.prototype={callMethod:function(){if(!Sys.Extended.UI.HTMLEditor.ToolbarButton.BackColorSelector.callBaseMethod(this,"callMethod"))return!1},setColor:function(n){Sys.Extended.UI.HTMLEditor.ToolbarButton.BackColorSelector.callBaseMethod(this,"setColor",[n]);this._designPanel._execCommand("backcolor",!1,n)}};Sys.Extended.UI.HTMLEditor.ToolbarButton.BackColorSelector.registerClass("Sys.Extended.UI.HTMLEditor.ToolbarButton.BackColorSelector",Sys.Extended.UI.HTMLEditor.ToolbarButton.ColorSelector);