classdef Postprocess < handle
   
    
    properties (Access = public)
    end
    
    properties (Access = protected)
               ptype
               gauss_points_name
              
        nfields 
        coordinates
        connectivities
        nnode
        npnod
        gtype
        pdim
        ndim
        etype
        nelem
        file_name
        nsteps
        fid_mesh
        fid_res
        
         ngaus
        posgp
    end
    
    properties (Access = private)
 
    end
    
    methods (Access = private)
        
       
    end
    
    methods (Access = protected)

        
        function PrintVector(obj,nameres,indexName,problemType,result_type,result_location,location_name,results,istep)
            VectorPrinter(obj.fid_res,indexName, results, nameres,istep,result_location);
        end
        
        function PrintTensor(obj,nameres,indexName,problemType,result_type,result_location,location_name,results,istep)
           TensorPrinter(obj.fid_res, indexName, results, nameres,istep,result_location,location_name);
        end
        
        function PrintScalar(obj,nameres,indexName,problemType,result_type,result_location,location_name,results,istep)
           ScalarPrinter(obj.fid_res,results,nameres,istep,result_location);
        end
        
        function PrintMeshFile(obj)
            coord = obj.coordinates{1};
            connec = obj.connectivities{1};
            MeshPrinter(obj.nsteps,obj.file_name,...
                obj.npnod,obj.pdim,obj.nnode,coord,connec,obj.nelem,obj.ndim,obj.etype);
        end

        
        function Write_header_res_file(obj)            
            %% File Header
            fprintf(obj.fid_res,'GiD Post Results File 1.0\n\n');
            obj.printTitle(obj.fid_res);
        end
        
        function PrintGaussPointsHeader(obj)
            fprintf(obj.fid_res,'GaussPoints "%s" Elemtype %s\n',obj.gauss_points_name,obj.etype);
            fprintf(obj.fid_res,'Number of Gauss Points: %.0f\n',obj.ngaus);
            fprintf(obj.fid_res,'Nodes not included\n');
            fprintf(obj.fid_res,'Natural Coordinates: given\n');
            for igaus = 1:obj.ngaus
                for idime = 1:obj.ndim
                    fprintf(obj.fid_res,'%12.5d ',obj.posgp(igaus,idime));
                end
                fprintf(obj.fid_res,'\n');
            end
            fprintf(obj.fid_res,'End GaussPoints\n');
        end         
    end
    
     
    methods (Access = protected, Static)
        function printTitle(fid)
            fprintf(fid,'####################################################\n');
            fprintf(fid,'################# FEM-MAT-OO v.1.0 #################\n');
            fprintf(fid,'####################################################\n');
            fprintf(fid,'\n');
        end
    end
    
    methods (Access = public)
 
        
        function print_slave(obj,physical_problem,res_file,physicalVars)
            results.physicalVars = physicalVars;
            obj.setBasicParams(physical_problem,'',results)
            obj.fid_res = fopen(res_file,'a');
            obj.Print_results(results,1,1)
            fclose(obj.fid_res);
        end
    end
end
