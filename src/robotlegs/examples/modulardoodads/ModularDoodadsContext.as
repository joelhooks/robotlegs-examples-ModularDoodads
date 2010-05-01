package robotlegs.examples.modulardoodads
{
    import flash.display.DisplayObjectContainer;
    
    import org.robotlegs.core.IInjector;
    import org.robotlegs.utilities.modular.mvcs.ModuleContext;
    
    import robotlegs.examples.modulardoodads.modules.doodad.DoodadModule;
    import robotlegs.examples.modulardoodads.modules.logger.LoggerModule;
    import robotlegs.examples.modulardoodads.view.ModuleDoodadsMediator;
    
    /**
     * This Context extend ModuleContext so that it will create the injector mappings
     * for the <code>ModuleEventDispatcher</code> and <code>ModuleCommandMap</code>.
     * 
     * @author Joel Hooks
     * 
     */    
    public class ModularDoodadsContext extends ModuleContext
    {
        override public function startup():void
        {
            //map the modules so that instances will be properly supplied (injected) with an injector.
            viewMap.mapType(LoggerModule);
            viewMap.mapType(DoodadModule);
            
            mediatorMap.mapView(ModularDoodads, ModuleDoodadsMediator);
        }
    }
}