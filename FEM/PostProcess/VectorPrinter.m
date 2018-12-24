classdef VectorPrinter < FieldPrinter ...
                       & NodalFieldPrinter
    
    properties (Access = private)
        fieldComponentName
        ndim
    end
    
    methods (Access = public)
        
        function obj = VectorPrinter(fileID,fieldComponentName,fieldValues,fieldName,istep,fieldPosition)
            obj.fieldType = 'Vector';
            obj.ndim      = 2;
            obj.init(fileID,fieldComponentName,fieldValues,fieldName,istep,fieldPosition);
            obj.print();   
        end
    end
    
    methods (Access = protected)
        
        function init(obj,fileID,fieldComponentName,fieldValues,fieldName,istep,fieldPosition)
            obj.fileID             = fileID;
            obj.fieldComponentName = fieldComponentName;
            obj.fieldValues        = fieldValues;
            obj.fieldName          = fieldName;
            obj.istep              = istep;
            obj.fieldPosition      = fieldPosition;
        end
        
        function print(obj)
            obj.printResultsLineHeader();
            obj.printComponentNamesLine();
            obj.printValuesLine();
            obj.printFieldLines();
            obj.printEndValuesLine();
        end
        
        function printFieldLines(obj)
            iD = obj.fileID;
            fV = obj.fieldValues;
            d = obj.ndim;
            for inode = 1:round(length(fV)/d)
                fprintf(iD,'%6.0f ',inode);
                for idime = 1:d
                    fprintf(iD,'%12.5d ',fV(d*(inode-1)+idime));
                end
                fprintf(iD,'\n');
            end
        end
        
        function printComponentNamesLine(obj)
            iD = obj.fileID;
            fC = obj.fieldComponentName;
            d = obj.ndim;
            switch d
                case 2
                    fprintf(iD,'ComponentNames  "%sx", "%sy"\n',fC,fC);
                case 3
                    fprintf(iD,'ComponentNames "%sx", "%sy", "%sz"\n',fC,fC,fC);
            end
        end
        
    end
    
end

