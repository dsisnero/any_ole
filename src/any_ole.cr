require "anyolite"

module AnyOle
  VERSION = "0.1.0"

  # TODO: Put your code here
end

Anyolite::RbInterpreter.create do |rb|
  rb.load_script_from_file("./scripts/excel.rb")
end
# ODO: Write documentation for `AnyOle`
