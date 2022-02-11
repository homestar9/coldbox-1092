/**
 * My RESTFul Event Handler
 */
component extends="coldbox.system.RestHandler" {


    /**
     * create
     * creates a new entity from scratch
     *
     * @event 
     * @rc 
     * @prc 
     */
    function create( event, rc, prc ) {

        // execute the private event.  
        runEvent( 
            event = "v1:subscribers.save", 
            prePostExempt = true, // required for private events
            private = true,
            eventArguments = { new: true } 
        );

        // workaround: uncomment to use and comment out the runEvent() call
        // save( event, rc, prc, true );
    
    }

    /**
     * save
     * private method that performs the actual saving from create() or update() method calls
     *
     * @event 
     * @rc 
     * @prc 
     * @new 
     */
    private function save( event, rc, prc, required boolean new ) {
        // simulate a validation exception
        throw( "Validation Failed", "ValidationException", "Details go here" );
    }

}
