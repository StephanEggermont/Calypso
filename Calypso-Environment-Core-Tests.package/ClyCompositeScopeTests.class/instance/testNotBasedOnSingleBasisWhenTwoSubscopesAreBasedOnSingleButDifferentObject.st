tests
testNotBasedOnSingleBasisWhenTwoSubscopesAreBasedOnSingleButDifferentObject
	| subscope1 subscope2 |
	subscope1 := ClyScopeExample of: #(basisObject1).
	subscope2 := ClyScopeExample of: #(basisObject2).
	scope := ClyCompositeScope on: {subscope1. subscope2}.
	
	self deny: scope isBasedOnSingleBasis