/**
 * @name Cyclomatic Complexity
 * @description Calculate the cyclomatic complexity of functions.
 * @kind metric
 */
import java

from Method m
select m, m.getCyclomaticComplexity() as vG
