﻿package com.gudeidea.utils {		public class GeneralUtils {		public function GeneralUtils() {			// constructor code		}				public static function getCurrentFormatTime():String{			var my_date:Date = new Date();			var hour:String = my_date.hours  < 10 ? "0" + my_date.hours : String(my_date.hours);			var minute:String = my_date.minutes  < 10 ? "0" + my_date.minutes : String(my_date.minutes);			var second:String = my_date.seconds  < 10 ? "0" + my_date.seconds : String(my_date.seconds);			var curr:String = hour + ":" + minute + ":" + second;			return curr;		}				public static function pr(obj:*, level:int = 0, output:String = ""):*{			var tabs:String = "";			for (var i:int = 0; i < level; i++, tabs += "\t"){				for (var child:* in obj){					output +=  tabs + "[" + child + "] => " + obj[child];					var childOutput:String = pr(obj[child],level + 1);					if (childOutput != '')					{						output +=  ' {\n' + childOutput + tabs + '}';					}					output +=  "\n";				}			}			if (level == 0){				trace(output);			}else{				return output;			}		}				public static function roundDecimal(num:Number, precision:int):Number		{			var decimal:Number = Math.pow(10,precision);			return Math.round(decimal* num) / decimal;		}	}	}