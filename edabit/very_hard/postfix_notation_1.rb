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

puts postfix("12 3 /")
puts postfix("5 3 4 * +")
puts postfix("5 3 + 4 *")
