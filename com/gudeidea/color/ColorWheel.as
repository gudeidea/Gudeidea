﻿/** * Copyright lewis_c1986 ( http://wonderfl.net/user/lewis_c1986 ) * MIT License ( http://www.opensource.org/licenses/mit-license.php ) * Downloaded from: http://wonderfl.net/c/8eNq *//*	Colour wheel Vector	By Lewis Cowles	Pure AS3 Very Very Fast way to create a colour wheel, 	extremely fast algorithm	to use this in your own works 	you must leave the contextMenu Alone and if your 	application is commercial there will be a royalty fee	you may only use if you have my express written consent	by snailmail(standard post) or e-mail	*/package com.gudeidea.color{	import flash.display.*;	import flash.geom.Matrix;	import flash.geom.Rectangle;		import flash.net.*;	import flash.text.*;		import flash.events.*;		public class ColorWheel extends MovieClip	{		private var txtBoxes:Array= [ new TextField(), new TextField(), new TextField(), new TextField() ];				public function ColorWheel(_radius:Number = 10)		{			txtBoxes[0].autoSize = "none";			txtBoxes[0].background = true;			txtBoxes[0].backgroundColor = 0x000000;			txtBoxes[0].width = 50;			txtBoxes[0].height = 50;						var sprite:Sprite = new Sprite();			//this is for wonderFL testing only			//_radius = ( stage.stageWidth / 2 ) - 2; // take this line out when using in your own apps			x += 2;			y += 2;			var shape:Shape = new Shape();						for (var i:Number = 0; i < 360;i+= 0.1)			{				var _radians:Number = i * (Math.PI / 180);				var destX:Number = (_radius * Math.cos(_radians));				var destY:Number = (_radius * Math.sin(_radians)) ;							var rComponent:Number = Math.cos(_radians) * 127 + 128 << 16;				var gComponent:Number = Math.cos(_radians + 2 * Math.PI / 3) * 127 + 128 << 8;				var bComponent:Number = Math.cos(_radians + 4 * Math.PI / 3) * 127 + 128; 				var Color:Number  = rComponent | gComponent | bComponent;							shape.graphics.lineStyle(1, Color, 1, false, LineScaleMode.NONE, CapsStyle.NONE);				shape.graphics.moveTo(_radius, _radius);				shape.graphics.lineTo(destX+_radius, destY+_radius);			}						addChild(sprite);			sprite.addChild(shape);			addChild(txtBoxes[0]);						addEventListener(Event.ENTER_FRAME, function(e:Event):void			{				var _radians:Number = Math.atan2(mouseY-_radius, mouseX-_radius);				var rComponent:Number = Math.cos(_radians) * 127 + 128 << 16;				var gComponent:Number = Math.cos(_radians + 2 * Math.PI / 3) * 127 + 128 << 8;				var bComponent:Number = Math.cos(_radians + 4 * Math.PI / 3) * 127 + 128; 				var bgColor:uint = rComponent | gComponent | bComponent; 				txtBoxes[0].backgroundColor = bgColor; 				txtBoxes[0].text = "";				 				var hexString:String = bgColor.toString(16);				 				if(hexString.length < 6) 				{ 					for(var diff:Number = 6-hexString.length; diff>0; diff--)					{						hexString = "0"+hexString;					} 				} 				txtBoxes[0].text = "#" + hexString; 							});		}	}}