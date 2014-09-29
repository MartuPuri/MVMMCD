% Copyright ? MVMMCD: Model 2-D Convection 
% Diffusion Operator - All Rights Reserved
% Unauthorized copying of this file, via any medium is strictly prohibited
%
% Proprietary
%
% Written by Martin Purita <martinpurita@gmail.com>, 
% Facundo Menzella <facumenzella@gmail.com>, Felipe Martinez 
% <fmart318@hotmail.com>, October 2014
%
function [eigenvalues] = eigenvalues_with_qr(A)
    [Q R] = my_qr(A);
    A = R*Q;
    bool = 0;
    eigenvalues = diag(A);
    while ~bool
        eigenvalues = diag(A);
        [Q R] = my_qr(A);
        A = R*Q;
        newValue = diag(A);
        bool = isequal(eigenvalues, newValue);
    end
end

