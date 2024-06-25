/**
 * @name Essential Complexity
 * @description Calculate the essential complexity of functions.
 * @kind metric
 */
import java

// Helper predicate to count the number of loops and conditionals
predicate isComplex(ControlFlowNode node) {
  exists(IfStmt ifStmt | ifStmt = node) or
  exists(ForStmt forStmt | forStmt = node) or
  exists(WhileStmt whileStmt | whileStmt = node) or
  exists(DoWhileStmt doWhileStmt | doWhileStmt = node) or
  exists(SwitchStmt switchStmt | switchStmt = node)
}

// Calculate essential complexity
from Function f, ControlFlowNode node
where node.getFunction() = f and isComplex(node)
select f, count(node) as evG
