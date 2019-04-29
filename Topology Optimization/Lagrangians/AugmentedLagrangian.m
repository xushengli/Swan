classdef AugmentedLagrangian < ObjectiveFunction
    
    properties (Access = public)
        penalty
    end
    
    properties (Access = private)
        constraintModifier
    end
    
    methods (Access = public)
        
        function obj = AugmentedLagrangian(cParams)
            obj.init(cParams);
            obj.createConstraintModifier(cParams.constraintCase);
        end
        
        function updateBecauseOfPrimal(obj)
            obj.cost.computeCostAndGradient();
            obj.constraint.computeCostAndGradient();
            obj.modifyInactiveConstraints();
            obj.computeFunction();
        end
        
        function updateBecauseOfDual(obj,lambda,penalty)
            obj.lambda = lambda;
            obj.penalty = penalty;
            obj.modifyInactiveConstraints();
            obj.constraint.lambda = lambda;
            
            obj.computeFunction();
            obj.computeGradient();
        end

    end
    
    methods (Access = private)
        
        function computeFunction(obj)
            l  = obj.lambda;
            c  = obj.constraint.value;
            j  = obj.cost.value;
            rho = obj.penalty;
            obj.value = j + l*c + 0.5*rho*(c.*c);
        end
        
        function computeGradient(obj)
            l   = obj.lambda;
            c   = obj.constraint.value;
            dj  = obj.cost.gradient;
            dc  = obj.constraint.gradient;
            rho = obj.penalty;
            g = dj + dc*(l + rho.*c);
            obj.gradient = g;
        end
        
        function modifyInactiveConstraints(obj)
            obj.constraintModifier.modify(obj.constraint,obj.lambda,obj.penalty)
            obj.constraint = obj.constraintModifier.constraint;
        end
        
        function createConstraintModifier(obj,constraintCase)
            icm = InactiveConstraintsModifier.create(constraintCase);
            obj.constraintModifier = icm;
        end
        
    end
    
end
