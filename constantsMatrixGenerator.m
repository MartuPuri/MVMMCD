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
function [beta, gamma, theta, h] = constantsMatrixGenerator(m, p1, p2, p3)
    h = 1 / (m + 1);
    beta = p1 * h;
    gamma = p2 * h;
    theta = p3 * h^2;
end
