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
function valid = validateParameters(m, p1, p2, p3)
    sqrtValue = sqrt(m);
    valid = 1;
    if (ceil(sqrtValue) ~= floor(sqrtValue))
        valid = 0;
    end
    if (p1 < 0 || p2 < 0 || p3 < 0)
        valid = 0;
    end
end