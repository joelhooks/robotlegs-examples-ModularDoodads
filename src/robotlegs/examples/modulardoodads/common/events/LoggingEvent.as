package robotlegs.examples.modulardoodads.common.events
{
    import flash.events.Event;
    
    public class LoggingEvent extends Event
    {
        public static const MESSAGE:String = "LoggingEvent.MESSAGE";
        
        private var _message:String;

        public function get message():String
        {
            return _message;
        }

        private var _payload:Object;

        public function get payload():Object
        {
            return _payload;
        }
        
        public function LoggingEvent(type:String, message:String, payload:Object=null, bubbles:Boolean=false, cancelable:Boolean=false)
        {
            super(type, bubbles, cancelable);
            _message=message;
            _payload=payload;
        }
        
        override public function clone():Event
        {
            return new LoggingEvent(type,message,payload,bubbles,cancelable);
        }
    }
}