package robotlegs.examples.modulardoodads.modules.doodad
{
    import flash.display.DisplayObjectContainer;
    
    import org.robotlegs.core.IInjector;
    import org.robotlegs.utilities.modular.mvcs.ModuleContext;
    
    import robotlegs.examples.modulardoodads.common.events.LoggingEvent;
    import robotlegs.examples.modulardoodads.common.events.ModuleCommandTriggerEvent;
    
    public class DoodadModuleContext extends ModuleContext
    {
        public function DoodadModuleContext(contextView:DisplayObjectContainer,  injector:IInjector)
        {
            super(contextView, true, injector);
        }
        
        override public function startup():void
        {
            mediatorMap.mapView(DoodadModule, DoodadModuleMediator);
            moduleCommandMap.mapEvent(ModuleCommandTriggerEvent.TRIGGER_MODULE_COMMAND, DoodadModuleCommand);
            dispatchToModules(new LoggingEvent(LoggingEvent.MESSAGE, "New Doodad Added"));
        }
        
        override public function dispose():void
        {
            mediatorMap.removeMediatorByView(contextView);
            super.dispose();
        }
    }
}