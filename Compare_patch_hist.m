function [ same ] = Compare_patch_hist( oldhist_r,oldhist_g,oldhist_b, hist_r,hist_g,hist_b )
%COMPARE_HIST Summary of this function goes here

same = 0;

red = bhattacharyya(oldhist_r,hist_r);
green = bhattacharyya(oldhist_g,hist_g);
blue = bhattacharyya(oldhist_b,hist_b);

if sum(red,green,blue)< 1
    same = 1;
end

end

