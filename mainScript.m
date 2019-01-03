clear;
sample = imread('input3.jpg');
odim = size(sample);
sample = double(sample);
energy = zeros(100,1);
e_idx = 1;
X = sample;
%-------------------------------------------
t1 = tic;
display('starting level 1 part 1');
[X,energy,e_idx] = synthesis(5,[32,32,3],[odim(1)*2, odim(2)*2, odim(3)],sample,X,energy,e_idx);
display('done level 1 part 1');
t2 = toc(t1);
display(['Time taken : ' num2str(t2)]);
%-----------------------------------------------
t1 = tic;
display('starting level 1 part 2');
[X,energy,e_idx] = synthesis(5,[16,16,3],[odim(1)*2, odim(2)*2, odim(3)],sample,X,energy,e_idx);
display('done level 1 part 2');
t2 = toc(t1);
display(['Time taken : ' num2str(t2)]);
%-----------------------------------------------
t1 = tic;
display('starting level 1 part 3');
[X,energy,e_idx] = synthesis(5,[8,8,3],[odim(1)*2, odim(2)*2, odim(3)],sample,X,energy,e_idx);
display('done level 1 part 3');
t2 = toc(t1);
display(['Time taken : ' num2str(t2)]);
%--------------------------------------------------------
t1 = tic;
display('starting level 2 part 1');
[X,energy,e_idx] = synthesis(5,[32,32,3],[odim(1)*4, odim(2)*4, odim(3)],sample,X,energy,e_idx);
display('done level 2 part 1');
t2 = toc(t1);
display(['Time taken : ' num2str(t2)]);
%-------------------------------------------------------
t1 = tic;
display('starting level 2 part 2');
[X,energy,e_idx] = synthesis(5,[16,16,3],[odim(1)*4, odim(2)*4, odim(3)],sample,X,energy,e_idx);
display('done level 2 part 2');
t2 = toc(t1);
display(['Time taken : ' num2str(t2)]);
%--------------------------------------------------------
t1 = tic;
display('starting level 2 part 3');
[X,energy,e_idx] = synthesis(5,[8,8,3],[odim(1)*4, odim(2)*4, odim(3)],sample,X,energy,e_idx);
display('done level 2 part 3');
t2 = toc(t1);
display(['Time taken : ' num2str(t2) ]);
plot(energy(1:e_idx,:));
    