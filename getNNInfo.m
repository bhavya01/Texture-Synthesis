function [input_patches, KDT] = getNNInfo(pSize, Isample)
%NNPATCHSEARCH Patch is a square box from large image, Isample
% is the texture sample, this returns the most similar patch from the texture
    [i_x,i_y,~] = size(Isample);
    num_pixels = pSize(1)*pSize(2)*pSize(3);
    input_patches = zeros((i_x-pSize(1)+1)*(i_y-pSize(2)+1),num_pixels);
    idx = 1;
    for i=1:i_x-pSize(1)+1
        for j=1:i_y-pSize(2)+1
            input_patches(idx,:) = reshape(Isample(i:i+pSize(1)-1,j:j+pSize(2)-1,:),1,num_pixels);
            idx = idx + 1;
        end
    end
    KDT = KDTreeSearcher(input_patches);
     
end


