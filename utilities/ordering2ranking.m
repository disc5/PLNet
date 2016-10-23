function [ranking] = ordering2ranking(ordering)
% ORDERING2RANKING Converts an ordering into ranking.
% 
% A "ranking" representation is a row vector in which each dimension
% corresponds to a label (item,object). And the value of the i-th dimension
% determines its rank position.
%
% An "ordering" representation is a row vector in which the i-th dimension
% represents the i-th rank position. And its value determines the ID of the
% object.
%
% Example 1 (complete ranking of length 4)
%   R = (3,1,4,2) corresponds to O = (2,4,1,3)
%
% Example 2 (incomplete ranking)
%   R = (-1,1,3,2) corresponds to O = (2,4,3,-1)
%
% In case of incomplete orderings, the rank position of 
% the unkown items are set to -1.
%
% (C) 2014, Dirk Schaefer
%
% Changelog
% 2014-08-17: Extended to deal with incomplete orderings.

    len = length(ordering);
    ranking = -1.*ones(1,len);
    for i1 = 1:len
        item_id = ordering(i1);
        if (item_id > -1)
            ranking(item_id) = i1; 
        end
    end
end