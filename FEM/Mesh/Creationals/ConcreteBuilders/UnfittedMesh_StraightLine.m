classdef UnfittedMesh_StraightLine < UnfittedMesh_AbstractBuilder
    properties (GetAccess = public, SetAccess = private)
        meshType = 'INTERIOR';
        maxSubcells = 2;
        nnodesSubcell = 2;
        
        subcellsMesher = SubcellsMesher_1D;
        cutPointsCalculator = CutPointsCalculator_1D;
        meshPlotter = MeshPlotter_1D;
    end
end

