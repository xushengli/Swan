classdef surfPrinter < figurePrinter
        
     properties (Access = private)

    end
    
    methods (Access = public)
        
        function obj = surfPrinter(figureID)
            obj.init(figureID);
            obj.setFontSizes();
            obj.setPositionAndSize();
        end
        
    end  
    
    methods (Access = private)
       
        function init(obj,figureID)
            obj.figID = figureID;
        end        
        
    end
    
    
end