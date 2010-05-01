package robotlegs.examples.modulardoodads.modules.logger.view
{
    import org.robotlegs.utilities.modular.mvcs.ModuleMediator;
    
    import robotlegs.examples.modulardoodads.common.events.LoggingEvent;
    import robotlegs.examples.modulardoodads.modules.logger.LoggerModule;
    
    public class LoggerModuleMediator extends ModuleMediator
    {
        [Inject]
        public var view:LoggerModule;
        
        override public function onRegister():void
        {
            eventMap.mapListener(moduleDispatcher, LoggingEvent.MESSAGE, handleLoggingeMessage);
            trace("listening intently");
        }
        
        protected function handleLoggingeMessage(event:LoggingEvent):void
        {
            view.addLoggingMessage(event.message);
        }
    }
}