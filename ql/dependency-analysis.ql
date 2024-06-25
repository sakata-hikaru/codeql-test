/**
 * @name Dependency Analysis
 * @description Identify dependencies between classes.
 * @kind metric
 */
import java

from Import i, Type t
where i.getImportedType() = t
select i.getImportingType(), t
