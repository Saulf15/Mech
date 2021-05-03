function nd = Hw4(mo, da, leap)
mt = [31,28,31,30,31,30,31,31,30,31,31];
Days = sum(mt(1:(mo-1)));
Days = Days + da;
if leap == 1 && mo > 2
    Days = Days + 1;
end 
if da > 31 || mo > 12 || leap < 0 || da < 0 || mo < 0|| leap > 1
    error('To many inputs');
if nargin < 3
    error('Need more inputs');
if nargin > 3
    error('Way to many :c');
end
end
end


display(Days);
end