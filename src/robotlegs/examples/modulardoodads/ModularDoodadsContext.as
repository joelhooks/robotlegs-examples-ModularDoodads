package robotlegs.examples.modulardoodads
{
    import flash.display.DisplayObjectContainer;
    
    import org.robotlegs.core.IInjector;
    import org.robotlegs.utilities.modular.mvcs.ModuleContext;
    
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
            //map the LoggerModule so that its instances will
            //be properly injected with the injector.
            viewMap.mapType(LoggerModule);
            mediatorMap.mapView(ModularDoodads, ModuleDoodadsMediator);
        }
    }
}