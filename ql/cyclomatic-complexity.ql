/**
 * @name Functions with high cyclomatic complexity
 * @description This query identifies functions with a high cyclomatic complexity.
 * @kind problem
 * @problem.severity warning
 * @tags complexity
 *       maintainability
 * @id custom-cyclomatic-complexity
 */

import java

from Method m
where m.getCyclomaticComplexity() > 0
select m, m.getDeclaringType().getName() + "." + m.getName() + " has a cyclomatic complexity of " + m.getCyclomaticComplexity()
