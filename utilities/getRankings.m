function [rankings]= getRankings(orderings)
% GETRANKINGS converts a set of orderings into a set of rankings.
%   Input:
%       orderings - matrix of row vectors. A row corresponds to a single
%       ordering.
%
%   Output:
%       rankings - matrix of row vectors. A row correspons to a ranking.
%
% (C) 2016, Dirk Schaefer

    [numInst,numLabels] = size(orderings);
    rankings = zeros(numInst,numLabels);
    for j=1:numInst
        rankings(j,:) = ordering2ranking(orderings(j,:));
    end
end