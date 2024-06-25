/**
 * @name Cognitive Complexity
 * @description Calculate the cognitive complexity of functions.
 * @kind metric
 */
import java

// Helper predicate to count the cognitive complexity of control flow nodes
int complexity(ControlFlowNode node) {
  if exists(IfStmt ifStmt | ifStmt = node) then
    1 + complexity(node.getParent())
  else if exists(ForStmt forStmt | forStmt = node) then
    1 + complexity(node.getParent())
  else if exists(WhileStmt whileStmt | whileStmt = node) then
    1 + complexity(node.getParent())
  else if exists(DoWhileStmt doWhileStmt | doWhileStmt = node) then
    1 + complexity(node.getParent())
  else if exists(SwitchStmt switchStmt | switchStmt = node) then
    1 + complexity(node.getParent())
  else if exists(TryStmt tryStmt | tryStmt = node) then
    1 + complexity(node.getParent())
  else
    0
}

// Calculate cognitive complexity
from Function f, ControlFlowNode node
where node.getFunction() = f
select f, sum(complexity(node)) as cogC
