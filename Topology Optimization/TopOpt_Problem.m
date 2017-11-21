classdef TopOpt_Problem < handle
    properties (GetAccess = public,SetAccess = public)
        cost
        constraint
        TOL
        x
        interpolation
        filter
        algorithm
        physicalProblem
        settings
    end
    methods (Access = public)
        function obj=TopOpt_Problem(settings)
            obj.settings=settings;
            obj.TOL=obj.settings.TOL;
            obj.physicalProblem=Physical_Problem(obj.settings.filename);
            
            %choose interpolation
            switch obj.settings.material
                case 'ISOTROPIC'
                    switch obj.settings.method
                        case 'SIMPALL'
                            obj.interpolation=Interpolation_ISO_SIMPALL(obj.TOL);
                        otherwise
                            disp('Method not added')
                    end
            end
            switch obj.settings.algorithm
                case 'SLERP'
                    obj.algorithm=Algorithm_SLERP;
            end
            switch obj.settings.filter
                case 'P1'
                    obj.filter=Filter_SLERP;
            end
        end
            
        function preProcess(obj)
            %initializa physical problem
            obj.physicalProblem.preProcess;
            %initialize design variable
            switch obj.settings.initial_case
                case 'full'
                    obj.x=-0.7071*ones(obj.physicalProblem.mesh.npnod,obj.physicalProblem.geometry.ngaus);
            end
        end
        function computeVariables(obj)
            obj.cost.computef(obj.x,obj.physicalProblem,obj.interpolation,obj.filter);
            obj.constraint.computef(obj.x, obj.physicalProblem, obj.interpolation,obj.filter);
            obj.algorithm.updateX(obj.x,obj.cost,obj.constraint,obj.physicalProblem,obj.interpolation,obj.filter);
           % obj.postProcess;
        end
        function postProcess(obj)
                gamma_nodal=obj.x<0;
                fh = figure;
                mp = get(0, 'MonitorPositions');
                select_screen=1;
                if size(mp,1) < select_screen
                    select_screen = size(mp,1);
                end
                width = mp(1,3);
                height = mp(1,4);
                size_screen_offset = round([0.7*width,0.52*height,-0.71*width,-0.611*height],0);
                set(fh,'Position',mp(select_screen,:) + size_screen_offset);
                fhtri = trisurf(obj.physicalProblem.mesh.connec,obj.physicalProblem.mesh.coord(:,1),obj.physicalProblem.mesh.coord(:,2),double(gamma_nodal), ...
                    'EdgeColor','none','LineStyle','none','FaceLighting','phong');
                view([0,90]);
                colormap(flipud(gray));
                set(gca,'CLim',[0, 1],'XTick',[],'YTick',[]);
                set(fhtri,'FaceVertexCData',double(gamma_nodal));
                drawnow;
        end
    end
end