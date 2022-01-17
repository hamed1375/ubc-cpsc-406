# This file was generated, do not modify it. # hide
finiteDiff(n) = diagm(ones(n)) - diagm(+1 => ones(n-1))
finiteDiff(4)