package robotlegs.examples.modulardoodads.modules.doodad.events
{
    import flash.events.Event;
    
    public class DoodadModuleEvent extends Event
    {
        public static const DO_STUFF_REQUESTED:String = "doStuffRequested";
        public static const REMOVE:String = "doodadModule/remove";
        
        public function DoodadModuleEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
        {
            super(type, bubbles, cancelable);
        }
        
        override public function clone():Event
        {
            return new DoodadModuleEvent(type,bubbles,cancelable);
        }
    }
}