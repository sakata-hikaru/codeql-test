/**
 * @name Cyclomatic Complexity
 * @description Calculate the cyclomatic complexity of functions.
 * @kind metric
 */
import java

from Function f
select f, f.getCyclomaticComplexity() as vG
