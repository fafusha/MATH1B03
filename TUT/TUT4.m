%MATLAB Tutorial 4

% 4.1 Solutions to Linear systems of Differential Equations

A = [1/5 22/5 -2/5;6/5 17/5 -2/5;-6/5 78/5 -3/5]

y0 = [5 23 29]'

% [P,D] = eig(A) produces a diagonal matrix D whose diagonal
% entries are the eigenvalues of A and a matrix P whose columns
% are the corresponding eigenvectors.

[P,D] = eig(A)

x1 = P(:,2)/P(1,2)
x2 = P(:,3)/P(1,3)
x3 = P(:,1)/P(1,1)

P = [x1 x2 x3]
c = inv(P) * y0

% 4.2 Complex Numbers

% How to define complex number
clear i; clear j;

c1 = 1 - 2i
c2 = 3 +5j
c1+c2
c1*c2
c3 = 5 + sqrt(-1) * 8
c4 = complex(1, -5)


real(c4)
imag(c4)

%find the modulus of a complex number with the abs command:
mod_c4 = abs(c4)
mod_c4 = abs(c4)
mod_c4^2



% angle command to find the angle (in radians) that a complex number
% makes with the positive real axis in the complex plane:
z = 1 + sqrt(3) * i
angle_rad = angle(z)
angle_deg = angle_rad * 180 / pi

% All of the usual matrix operations can be performed
% when the entries in the matrix are complex:
A = [1+2i 3-4i;2+6i -3+i]
det_A = det(A)
tr_A = trace(A)
rref_A = rref(A)
inv_A = inv(A)
eig_A = eig(A)
[P D] = eig(A)

% The conjugate of a complex number is obtained using the same
% transpose operator that is used to find the transpose of a matrix:
c4
c4'

%  4.3 Vector operations


% dot prouct

a=[1 2 4]
b =[3 -1 2]
dot(a,b)

% cross product


c = cross(a,b)

% Calculate the length or magnitude of a vector with the norm command:
d = norm(c)

