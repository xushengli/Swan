classdef UnfittedMesh_FlatSurface < UnfittedMesh_AbstractBuilder
    properties (GetAccess = public, SetAccess = private)
        meshType = 'INTERIOR';
        maxSubcells = 6;
        nnodesSubcell = 3;
        
        subcellsMesher = SubcellsMesher_Interior;
        cutPointsCalculator = CutPointsCalculator_2D;
        meshPlotter = MeshPlotter_Interior_2D;
    end
end

