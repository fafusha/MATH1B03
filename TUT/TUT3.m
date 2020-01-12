%MATLAB Tutorial 3

% 3.1 Special matrices

% Identity matrix

I = eye(5)

% Matrcies of zeros or ones 

Zero = zeros(5,6)
Ones = ones(3)


% Diagonal matricies

d = [5 6 7]
D = diag(d)

% diag(x,k) vector x on the k-th diag

D1 = diag(d, 2)

D2 = diag(d, -4)

% diag(D, k) extracts k-th diagonal elements

d1 = diag(D1, 2)

d2 = diag(D2, 3)

% pascal(n) produces n x n matrix from Pascal triangle 

P = pascal(6)

% 3.2 Matrix manipulation

A = diag([4, 1])

% repmat(A, n, m) creates a matrix with n x m entries of A 

R = repmat(A, 3, 4)

% upper triangular triu(X) lower triangular tril(X)\

P = magic(4)

U = triu(P)

L = tril(P)

% reshape(X, n, m) reshape X into n x m matrix using element of X taken
% columwise

R1 = magic(4)

R2 = reshape(R1, 2, 8)


% blkdiag(A,B,C,...) a block diagonal matrix is produced given matriceis
% A,B,C,... on the diagonal

B1 = diag([1,2])

B2 = magic(3)

B  = blkdiag(B1, B2)


% 3.3 Determinants

A = magic(3)
B = pascal(3)
ans = [det(A) ; det(B); det(A-B)]

% 3.5 Eigencalues and Eigenvectors

% [P, D] = eig(A) produces a diagonal matrix D whose diagonal entries are
% the eigenvalues of A and a matrix P whose columns are coressponding
% eigenvectors

A = ones(3)

[P D] = eig(A)

% Assigment 3

% P1

x = [5 1 4 2 4 2 6 1 5 4 2 6 4 4 3 6 4 4 1 4 2 4 4 3 5 4 3 3 2 5 4 6 3 1 2 3 5 3 4 2 2 2 5 3 1 3 2 2 2 2 5 4 5 3 3 4 6 6 5 5 2 4 4 3]'

l = length(x)

X1 = reshape(x,8,8)

ans1 = det(X1)

% P2

x = [5 1 4 2 4 2 6 1 5];
y = [3 1 4 4 2 5 6 4];

A = diag(x) + diag(y,1) + diag(y,-1)

deta = det(A)

[P D] = eig(A)



% P3

% 1 True

A = 10*rand(3)

[P1 D1] = eig(A)

[P2 D2] = eig(A')

ans = D1 == D2


% 2 False

% 3 True

k = 3
D1 = det(A^k)
D2 = (det(A))^k

% 4 True/False

n = 3

I = eye(n)

J = ones(n)

A = I - J/(n+1)

d1 = det(A)

ans = inv(A) == I + J 

% 5 False

ans = A^2 == A



% P5 

G = repmat(tril(ones(4)),4,5)




