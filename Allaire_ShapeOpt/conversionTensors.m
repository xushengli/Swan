%% ********** CONVERSION FROM STRUCTURED TO UNSTRUCTURED MESH *************
function [A1,b1,A0,b0] = conversionTensors(problemID,W,H,nelx,nely)
    run(problemID);
    
%     % Display
%     figure, hold on
%     for i = 1:50
%         if mod(i,1)==0 || i == 1
%             text(coord(i,2),coord(i,3),num2str(coord(i,1)));
%             plot(coord(i,2),coord(i,3),'b.')
%         end
%     end
%     axis('equal')
    
    % Create index matrix and vector - P1
    A1 = zeros(nely+1,nelx+1);
    for n = 1:length(coord)
        inode = coord(n,1); x = coord(n,2); y = coord(n,3);
%         i = 1 + round((y/H)*nely);
        i = 1 + nely - round((y/H)*nely);
        j = 1 + round((x/W)*nelx);
        A1(i,j) = inode;
        b1(inode,1) = i;
        b1(inode,2) = j;
    end
    
    % Create index matrix and vector - P0
    A0 = zeros(nely,nelx);
    for n = 1:length(connec)
        ielem = connec(n,1);
        for k = 1:4
            x_(k) = coord(connec(n,k+1),2);
            y_(k) = coord(connec(n,k+1),3);
        end
        x = mean(x_); y = mean(y_);
        elem_coord(n,1) = x;
        elem_coord(n,2) = y;
        
%         i = 1 + round((y/H)*(nely-1));
        i = nely - round((y/H)*(nely-1));
        j = 1 + round((x/W)*(nelx-1));
        A0(i,j) = ielem;
        b0(ielem,1) = i;
        b0(ielem,2) = j;
    end
end