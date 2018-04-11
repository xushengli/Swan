classdef DOF_DiffReact_Micro < DOF
    %DOF_DiffReact_Micro Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        master_slave
        periodic_free
        periodic_constrained
    end
    
    methods
        function obj = DOF_DiffReact_Micro(problemID,geometry)
            obj.nunkn = 1;
            obj.dirichlet{1} = [];
            obj.dirichlet_values{1} = [];
            obj.neumann = [];
            obj.neumann_values  = [];
            [~,~,~,obj.master_slave] = Preprocess.getBC_mechanics(problemID);
            obj.periodic_free = obj.compute_periodic_nodes(obj.master_slave(:,1),obj.nunkn);
            obj.periodic_constrained = obj.compute_periodic_nodes(obj.master_slave(:,2),obj.nunkn);
            obj.computeDOF(geometry);
        end
        
        function constrained = compute_constrained_dof(obj,ifield)
            % !! Cutrillu !!
            if ~isempty(obj.dirichlet)
                constrained = [obj.periodic_constrained;obj.dirichlet{ifield}];
            else
                constrained = [obj.periodic_constrained;obj.dirichlet];
            end
        end
    end
end

