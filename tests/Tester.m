classdef Tester < matlab.uitest.TestCase

    
    properties(Access=private)
        App
    end
    
    methods(TestClassSetup)        
    end
    
    methods(Test)        
        function Test01_Normal(m)
            m.StartUpMyApp;
            m.press(m.App.Button);
        end
    end
    
    methods(Access=private)
        
        function StartUpMyApp(m)
            m.App = Test;
            m.addTeardown(@delete,m.App);
        end

    end
        
end
