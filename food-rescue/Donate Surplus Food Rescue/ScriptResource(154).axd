﻿// (c) 2010 CodePlex Foundation
Type.registerNamespace("Sys.Extended.UI.Seadragon");Sys.Extended.UI.Seadragon.Rect=function(n,t,i,r){this.x=typeof n=="number"?n:0;this.y=typeof t=="number"?t:0;this.width=typeof i=="number"?i:0;this.height=typeof r=="number"?r:0};Sys.Extended.UI.Seadragon.Rect.prototype={getAspectRatio:function(){return this.width/this.height},getTopLeft:function(){return new Sys.Extended.UI.Seadragon.Point(this.x,this.y)},getBottomRight:function(){return new Sys.Extended.UI.Seadragon.Point(this.x+this.width,this.y+this.height)},getCenter:function(){return new Sys.Extended.UI.Seadragon.Point(this.x+this.width/2,this.y+this.height/2)},getSize:function(){return new Sys.Extended.UI.Seadragon.Point(this.width,this.height)},equals:function(n){return n instanceof Seadragon.Rect&&this.x===n.x&&this.y===n.y&&this.width===n.width&&this.height===n.height},toString:function(){return"["+this.x+","+this.y+","+this.width+"x"+this.height+"]"}};Sys.Extended.UI.Seadragon.Rect.registerClass("Sys.Extended.UI.Seadragon.Rect",null,Sys.IDisposable);