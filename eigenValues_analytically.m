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
function eigenValues = eigenValues_analytically(N, p1, p2, p3)
	if (~validateParameters(N, p1, p2, p3))
        disp('Los parametros son incorrectos');
    end
    m = sqrt(N);
    [beta, gamma, theta, h] = constantsMatrixGenerator(m, p1, p2, p3);
    i = 1;
    eigenValues(i) = 0;
  	for k=1:m
  		for l=1:m
            firstTerm = 2*sqrt(1 - (beta^2))*cos(k * h * pi);
            secondTerm = 2*sqrt(1 - (gamma^2))*cos(l * h * pi);
  			eigenValues(i) = 4 - theta + firstTerm + secondTerm;
  			i = i + 1;	
  		end
  	end
end