building
fillWithVariables: varsPerClass type: varTypeClass

	| classItems vars declarationGroup varItem |
	classItems := ClyHierarchicallySortedClasses buildItemsOn: varsPerClass keys.
	classItems do: [ :classItem |
		vars := varsPerClass at: classItem actualObject.
		declarationGroup := ClyVarDefinitionMethodGroup
			for: varTypeClass definedIn: classItem actualObject from: self queryScope.
		items add: declarationGroup asCalypsoBrowserItem.
		vars do: [:each | | varGroup |
			varGroup := ClyVariableMethodGroup variable: each from: self queryScope.
			varItem := varGroup asCalypsoBrowserItem.
			varItem depth: 1.
			items add: varItem] 
	]