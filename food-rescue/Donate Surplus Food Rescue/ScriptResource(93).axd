﻿Type.registerNamespace("Sys.Extended.UI.HTMLEditor.ToolbarButton");Sys.Extended.UI.HTMLEditor.ToolbarButton.Underline=function(n){Sys.Extended.UI.HTMLEditor.ToolbarButton.Underline.initializeBase(this,[n])};Sys.Extended.UI.HTMLEditor.ToolbarButton.Underline.prototype={callMethod:function(){if(!Sys.Extended.UI.HTMLEditor.ToolbarButton.Underline.callBaseMethod(this,"callMethod"))return!1;this._designPanel._execCommand("underline",!1,null)},checkState:function(){return Sys.Extended.UI.HTMLEditor.ToolbarButton.Underline.callBaseMethod(this,"checkState")?this._designPanel._queryCommandState("underline"):!1}};Sys.Extended.UI.HTMLEditor.ToolbarButton.Underline.registerClass("Sys.Extended.UI.HTMLEditor.ToolbarButton.Underline",Sys.Extended.UI.HTMLEditor.ToolbarButton.EditorToggleButton);