##### Edabit > Ruby > Very Hard

---

## Postfix Notation (Part 1: Evaluation)

#### Problem

##### Instructions:

Mathematical expressions are usually written with *infix* notation, where the operator is *in-between* the two operands. *Postfix* notation, on the other hand, is where the operator *follows* the operands. As we use operator precedence to determine the order of calculation (e.g. multiplication/division is evaluated before addition/subtraction), we can change the position of the operands and eliminate the need for parentheses:

```
2 + 5   # Infix
2 5 +   # Postfix

5 + (1 + 2) * 4 - 3   # Infix
5 1 2 + 4 * + 3 -     # Postfix
```

Postfix expressions are evaluated by reading left-to-right. Any time an operator is reached, a calculation is performed on the previous two operands. The process repeats until there are no more calculations to perform:

```
2 3 4 * + 9 -   # evaluate 3x4
   2 12 + 9 -   # evaluate 2+12
       14 9 -   # evaluate 14-9
            5   # final answer
```

Given a postfix expression as a string, return the evaluated expression. A single space separates each operator/operand.

_Notes_

Postfix is also known as "Reverse Polish Notation". See the resources tab for more information.

##### Definitions/Rules (explicit and implicit):

* Postfix notation: the operator follows the operands.
* Anytime an operator is reached, a calculation is performed on the previous two operands.
* Postfix expression is given as a string. A single space separates each operator/operand.
* Return the evaluated expression.
* Based on the examples, it looks like we are only dealing with integers as operands.
* Based on the examples, there are only four operators: +, -, *, /.

##### Input/Output:

* Input: an expression of operands and operators.
* Output: the value of the evaluated expression.

##### Mental Model:

Take the expression. Split it into individual operands and operators. Iterate over the individual operands/operators. If it is an operand, store the operand in an array. If it is an operator, pop off the last two values of the array. Determine what operation to perform given the current operator. Perform the operation on the two operands. Store the result in the array. Continue with the next iteration.

---

#### Examples / Test Cases

```ruby
postfix("12 3 /") ➞ 4

postfix("5 3 4 * +") ➞ 17

postfix("5 3 + 4 *") ➞ 32
```

---

#### Data Structures

##### Input:

* A string.

##### Output:

* A number.

---

#### Algorithm

* Declare an `ops` variable and set it equal to an array that is the result of splitting the given expression into individual operators/operands.
* Declare an `evaluations` variable and set it equal to an empty array, `[]`.
* Iterate over the `ops` array using an `each` loop.
* If the current operator/operand is a digit:
  * append the `evaluations` array with the value converted to a floating point number.
* Else (it's an operator):
  * declare an `operand_2` variable and set it equal to the popped value of the `evaluations` array.
  * declare an `operand_1` variable and set it equal to the popped value of the `evaluations` array.
  * Initiate a `case` statement with four cases: `+`, `-`, `*`, and `/`.
    * `+`: push the result of `operand_1 + operand_2` to the `evaluations` array.
    * `-`: push the result of `operand_1 - operand_2` to the `evaluations` array.
    * `*`: push the result of `operand_1 * operand_2` to the `evaluations` array.
    * `/`: push the result of `operand_1 / operand_2` to the `evaluations` array.
* Return the final position of the `evaluations` array.

---

#### Code

```ruby
def postfix(expression)
  ops = expression.split(' ')
  evaluations = []

  ops.each do |op|
    if /\d/ =~ op
      evaluations.push(op.to_f)
    else
      operand_2 = evaluations.pop()
      operand_1 = evaluations.pop()

      case op
      when '+'
        evaluations.push(operand_1 + operand_2)
      when '-'
        evaluations.push(operand_1 - operand_2)
      when '*'
        evaluations.push(operand_1 * operand_2)
      when '/'
        evaluations.push(operand_1 / operand_2)
      end
    end
  end

  evaluations.pop()
end
```

