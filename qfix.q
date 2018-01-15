/ q-fix parser

\d .qfix

/ delimiter
dlm:"\001"

/ mapping
m:((!) . 1#''("01";"NY");{$[count x;x;""]};{21#@[x;10;:;"-"]_/4 6};{x _/ 4 6};{21#@[x;10;:;"-"]_/4 6};{string"T"$x})1 2 12 13 15 16h bin;

/ to-fix
p:{$[10=abs t:type x;enlist x;(::)~x;"";99=t;dlm sv raze raze@''p[key x],/:'"=",'/: p@' value x;98=t;.Q.fc[p']x;m[abs t]@'$[0=type x:string x;x;enlist x]]};

/ from-fix
up:{$[0=t:type x;.Q.fc[up']x;10=t;group (!) . @[("S=",dlm)0:x;1 0];'nyi]};

\d .
