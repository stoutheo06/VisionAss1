function [edges] = GenerateHistEdges(imgtype)
    %imgtype is swich to identify the type of the histograms and
    %then generate different histogram edges.
    %accept inputs: 'normalised' or 'origin'

    %if generate normalised rgb histogram, edges should be from 0.0 to 1.0
    %thus in the for loop requires narmailization by 255.0
    if strcmp(imgtype,'normalised')
        norm_factor = 255.0;
    %otherwise, original iamge required and norm_factor is 1.0
    elseif strcmp(imgtype,'origin')
        norm_factor = 1.0;
    end

    %init hist edges
    edges = zeros(256,1);

    for i = 1:256
        edges(i) = (i-1)/norm_factor;
    end

end