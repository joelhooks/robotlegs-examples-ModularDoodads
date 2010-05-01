package robotlegs.examples.modulardoodads.modules.doodad
{
    import org.robotlegs.mvcs.Command;
    import org.robotlegs.utilities.modular.core.IModuleEventDispatcher;
    
    import robotlegs.examples.modulardoodads.common.events.LoggingEvent;
    import robotlegs.examples.modulardoodads.common.events.ModuleCommandTriggerEvent;
    
    public class DoodadModuleCommand extends Command
    {
        [Inject]
        public var event:ModuleCommandTriggerEvent;
        
        [Inject]
        public var moduleDispatcher:IModuleEventDispatcher;
        
        override public function execute():void
        {
            moduleDispatcher.dispatchEvent(new LoggingEvent(LoggingEvent.MESSAGE, "Module Command Executed!"));    
        }
    }
}