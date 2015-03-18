function [ X, Tr ] = tracetermtemp()
% This function is made to explore the physics behind the trace term in the
% commutator of two operators in the matrix representation.

a = sym('a');
b = sym('b');
c = sym('c');
d = sym('d');
e = sym('e');
f = sym('f');
g = sym('g');
h = sym('h');
i = sym('i');
j = sym('j');
k = sym('k');
l = sym('l');
m = sym('m');
n = sym('n');
o = sym('o');
p = sym('p');
A = sym('A');
B = sym('B');
C = sym('C');
D = sym('D');
E = sym('E');
F = sym('F');
G = sym('G');
H = sym('H');
I = sym('I');
J = sym('J');
K = sym('K');
L = sym('L');
M = sym('M');
N = sym('n');
O = sym('O');
P = sym('P');


n = 1;
J = [zeros(n) eye(n) ; -eye(n) zeros(n)];

H1 = [a b ; c d];
H2 = [A B ; C D];

X = J*H1*J*H2;
Tr = trace(X);