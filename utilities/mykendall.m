function [kendall]=mykendall(pi,sigma)  
%MYKENDALL Kendall's tau rank correlation coefficient
% Calculates the kendall tau rank correlation, c.f.    
% http://en.wikipedia.org/wiki/Kendall_tau_rank_correlation_coefficient
% Note: this is NOT kendall's tau distance.
%
%   Inputs:
%       pi      - permutation as a 1xp row vector
%       sigma   - permutation as a 1xp row vector
%  
%   Outputs:
%       kendall - real value
%
%   (C) 2014 Dirk Schaefer 

    M=length(pi);
    C=0;
    D=0;
    for i=1:M
        for j=i+1:M
            p=(pi(i)-pi(j))*(sigma(i)-sigma(j));
            if p>=0
                C=C+1;
            else
                D=D+1;
            end
        end
    end
    denom=M*(M-1)/2;
    kendall=(C-D)/denom;
end