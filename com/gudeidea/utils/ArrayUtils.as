package com.gudeidea.utils
{
	public class ArrayUtils
	{
		public function ArrayUtils()
		{
		}
		
		public static function search(word:Object, arr:Array):Number {
			var exists:Boolean = false;
			var idx:Number
			for(var i:uint=0; i < arr.length; i++){
				if(arr[i]==word){
					//trace("Element exist on position "+i);
					idx = i
					exists = true;
				}
			}
			if(!(exists)){
				//trace("Element doesn't exist in array.");
				idx = -1
			}
			
			return idx
		}
		
		// function searchB finds element in array and returns Boolean value
		
		public static function searchB(word:Object, arr:Array):Boolean {
			var exists:Boolean = false;
			for(var i:uint=0; i < arr.length; i++) {
				if(arr[i]==word){
					exists = true;
				}
			}
			return exists;
		}
		
		// function searchCount returns number of apperances of element in array
		
		public static function searchCount(word:Object, arr:Array):uint {
			var counter:uint = 0;
			for(var i:uint=0; i < arr.length; i++) {
				if(arr[i]==word){
					counter+=1;
				}
			}
			return counter;
		}
		
		// function iSection returns intersection array of two arrays
		
		public static function iSection(arr1:Array, arr2:Array):Array {
			var arr3:Array = new Array();
			var count:uint = 0;
			for(var i:uint=0; i < arr1.length; i++){
				for(var j:uint=0; j < arr2.length; j++){
					if(arr1[i]==arr2[j]){
						arr3[count] = arr1[i];
						count+=1;
					}
				}
			}
			return arr3;
		}
		
		// function shuffle simply shuffles given array elements
		
		public static function shuffle(b:Array):Array {
			var temp:Array = new Array();
			var templen:uint;
			var take:uint;
			while (b.length > 0) {
				take = Math.floor(Math.random()*b.length);
				templen = temp.push(b[take]);
				b.splice(take,1);
			}
			return temp;
		}
		
		// function combine returns union of two arrays
		
		public static function combine(ar1:Array, ar2:Array):Array {
			var rAr:Array = new Array();
			var i:uint = 0;
			var j:uint = 0;
			while((i < ar1.length) || (j < ar2.length)) {
				if(i < ar1.length){
					rAr.push(ar1[i]);
					i+=1;
				}
				if(j < ar2.length){
					rAr.push(ar2[j]);
					j+=1;
				}
			}
			return rAr;
		}		
	}

}