package events
{
	import flash.events.Event;
	
	public class SectionsController extends Event{
		
		public static const CONTROLLER:String = "controller";
		public static const CONTROLLER_INTERNA:String = "controller_interna";
		
		private var _param:*;
		
		private var _frase:*;
		
		public function SectionsController(type:String, data:* =null, bubbles:Boolean=false, cancelable:Boolean=false):void{
			_param = data;
			super(type, bubbles, cancelable);
		}
		
		public function get session():*{
			return _param;
		}
	}
}
/*
USAGE
interna.addEventListener(SectionsController.CONTROLLER, navega)
private function navega(e:SectionsController):void
{
	trace(e.param);
}
this.dispatchEvent(new SectionsController(SectionsController.CONTROLLER,ob));
*/
