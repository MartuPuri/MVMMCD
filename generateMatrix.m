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
function A = generateMatrix(N, p1, p2, p3)
    if (~validateParameters(N, p1, p2, p3))
        disp('Los parametros son incorrectos');
    end
    m = sqrt(N);
    [beta, gamma, theta, h] = constantsMatrixGenerator(m, p1, p2, p3);
    for i=1:N
        A(i,i) = 4 - theta;
    end
    for i=1:N - m
        A(i, i + m) = gamma - 1;
        A(i + m, i) = - gamma - 1;
    end
    for j=0:m - 1
        index = m * j;
        for i=1:m -1
            A(i + index, i + index + 1) = beta - 1;
            A(i + index + 1, i + index) = - (beta + 1);
        end
        A(m + index, i + index) = - (beta + 1);
    end
    A = A';
end

