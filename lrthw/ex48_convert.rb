def convert_number(object) # define a function
  begin                    # we put something we want to "try" inside begin block
    return Integer(object) # in this case "Integer()"
  rescue                   # if that has an error occur, then we catch it and do next line
    return nil             # in this case, return nil
  end
end