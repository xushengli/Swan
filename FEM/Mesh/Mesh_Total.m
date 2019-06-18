classdef Mesh_Total < handle
    
    properties (GetAccess = public, SetAccess = private)
        coord
        connec
        ndim
        
        meshInterior
        boxFaceMeshes
        nodesInBoxFaces
        globalConnectivities
        
        removedDimensions
        removedDimensionCoord
    end
    
    properties (Access = private)
        
    end
    
    methods (Access = public)
        
        function obj = Mesh_Total(cParams)
            obj.init(cParams);
            obj.createInteriorMesh();
            obj.createBoxFaceMeshes();
        end
        
    end
    
    methods (Access = private)
        
        function init(obj,cParams)
            obj.coord  = cParams.coord;
            obj.connec = cParams.connec;
            obj.ndim   = size(obj.coord,2);
        end
        
        function createInteriorMesh(obj)
            obj.meshInterior = Mesh().create(obj.coord,obj.connec);
        end
        
        function createBoxFaceMeshes(obj)
            nSides = 2;
            for iDime = 1:obj.ndim
                for iSide = 1:nSides
                    iFace = obj.computeIface(iDime,iSide);
                    [mesh,nodesInBoxFace] = obj.createBoxFaceMesh(iDime,iSide);
                    obj.boxFaceMeshes{iFace} = mesh;
                    obj.nodesInBoxFaces{iFace} = nodesInBoxFace;
                    obj.computeGlobalConnectivities(iFace);
                end
            end
        end
        
        function connec = computeGlobalConnectivities(obj,iFace)
            boxFaceMesh    = obj.boxFaceMeshes{iFace};
            nodesInBoxFace = obj.nodesInBoxFaces{iFace};
            nodes = find(nodesInBoxFace);
            boxFaceConnec = boxFaceMesh.connec;
            connec = [nodes(boxFaceConnec(:,1)),nodes(boxFaceConnec(:,2))];
            obj.globalConnectivities{iFace} = connec;
        end
        
        function [m, nodesInBoxFace] = createBoxFaceMesh(obj,idime,iside)
            [boxFaceCoords,nodesInBoxFace] = obj.getFaceCoordinates(idime,iside);
            switch obj.ndim
                case 2
                    boxFaceConnec = obj.computeConnectivities(boxFaceCoords);
                case 3
                    boxFaceConnec = obj.computeDelaunay(boxFaceCoords);
            end
            m = Mesh;
            m = m.create(boxFaceCoords,boxFaceConnec);
        end
        
        function [boxFaceCoords, nodesInBoxFace] = getFaceCoordinates(obj,idime,iside)
            D = obj.getFaceCharacteristicDimension(idime,iside);
            nodesInBoxFace = obj.meshInterior.coord(:,idime) == D;
            boxFaceCoords = obj.meshInterior.coord(nodesInBoxFace,:);
            boxFaceCoords = obj.removeExtraDimension(boxFaceCoords,idime);
            obj.storeRemovedDimensions(idime,iside,D);
        end
        
        function D = getFaceCharacteristicDimension(obj,idime,iside)
            if iside == 1
                D = min(obj.meshInterior.coord(:,idime));
            elseif iside == 2
                D = max(obj.meshInterior.coord(:,idime));
            else
                error('Invalid iside value. Valid values: 1 and 2.')
            end
        end
        
        function face_coord = removeExtraDimension(obj,face_coord,idime)
            dimen = 1:obj.ndim;
            face_coord = face_coord(:,dimen(dimen~=idime));
        end
        
        function storeRemovedDimensions(obj,iDime,iSide,D)
            iFace = obj.computeIface(iDime,iSide);
            obj.removedDimensions(iFace) = iDime;
            obj.removedDimensionCoord(iFace) = D;
        end
        
        function iFace = computeIface(obj,iSide,iDime)
            iFace = (iDime-1)*obj.ndim + iSide;
        end
        
    end
    
    methods (Access = private, Static)
        
        function connec = computeDelaunay(coord)
            DT = delaunayTriangulation(coord);
            connec = DT.ConnectivityList;
        end
        
        function connec = computeConnectivities(coord)
            [~,I] = sort(coord);
            connec = [I circshift(I,-1)];
            connec(end,:) = [];
        end
        
    end
    
end