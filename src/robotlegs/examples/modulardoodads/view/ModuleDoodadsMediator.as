package robotlegs.examples.modulardoodads.view
{
    import flash.events.MouseEvent;
    
    import org.robotlegs.utilities.modular.mvcs.ModuleMediator;
    
    import robotlegs.examples.modulardoodads.common.events.LoggingEvent;
    import robotlegs.examples.modulardoodads.common.events.ModuleCommandTriggerEvent;
    import robotlegs.examples.modulardoodads.modules.doodad.DoodadModule;
    import robotlegs.examples.modulardoodads.modules.doodad.events.DoodadModuleEvent;
    
    public class ModuleDoodadsMediator extends ModuleMediator
    {
        [Inject]
        public var view:ModularDoodads;
        
        override public function onRegister():void
        {
            addViewListener(ModuleCommandTriggerEvent.TRIGGER_MODULE_COMMAND, dispatchToModules);
            addModuleListener(DoodadModuleEvent.REMOVE, handleDoodadRemoved);
        }
        
        private function handleDoodadRemoved(event:DoodadModuleEvent):void
        {
            //the last thing clicked is the close button IN the module. This gives the FocusManager
            //a reference to the button in the module and pins the module in memory. Ouch. 
            view.setFocusOnAddDoodadButton();
        }
    }
}