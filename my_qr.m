% Copyright © MVMMCD: Model 2-D Convection 
% Diffusion Operator - All Rights Reserved
% Unauthorized copying of this file, via any medium is strictly prohibited
%
% Proprietary
%
% Written by Martin Purita <martinpurita@gmail.com>, 
% Facundo Menzella <facumenzella@gmail.com>, Felipe Martinez 
% <fmart318@hotmail.com>, Braulio Sespede <braulio.sespede@gmail.com>,
% October 2014
%
function [Q R] = qr(A)
    cols = size(A, 2);
    for j = 1:cols
        v = A(:, j);
        U(:,j) = v;
        for i = 1: j - 1
            norma = norm(U(:,i))^2;
            producto_interno = v'*U(:,i);
            U(:,j) = U(:,j) - ((producto_interno)*U(:,i)/norma);
        end
        Q(:, j) = U(:, j) / norm(U(:, j));
    end
    R = Q' * A;
end

