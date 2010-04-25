package robotlegs.examples.modulardoodads.modules.logger
{
    import flash.display.DisplayObjectContainer;
    
    import org.robotlegs.core.IInjector;
    import org.robotlegs.utilities.modular.mvcs.ModuleContext;
    
    import robotlegs.examples.modulardoodads.modules.logger.view.LoggerModuleMediator;
    
    public class LoggerModuleContext extends ModuleContext
    {
        /**
         * Because this module <b>requires</b> an injector we need to use its constructor to initialize
         * the context properly.
         *  
         * @param contextView
         * @param injector
         * 
         */        
        public function LoggerModuleContext(contextView:DisplayObjectContainer, injector:IInjector)
        {
            super(contextView, true, injector);
        }
        
        override public function startup():void
        {
            trace("WE HAVE SUB-CONTEXT!!");
            mediatorMap.mapView(LoggerModule, LoggerModuleMediator);
        }
    }
}