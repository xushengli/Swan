classdef TopOptTests < testRunner
    
    properties (Access = protected)
        FieldOfStudy = 'Topology Optimization'
        tests
    end
    
    methods (Access = public)
        
        function obj = TopOptTests()
            obj@testRunner();
        end
        
    end
    
    methods (Access = protected)
        
        function loadTests(obj)
            obj.tests = {...
            'testProjectedSlerp';
                
            'testCantilever3';

            'testCantilever2';
            
            'testBridge';
            'testMicro2';
            'testBridge2';
            
            'testCantilever';
            
            
            
            'testGripping';
            
            
            
            
            'testMicro';
            
            
            
            };
        end
        
    end
    
end
