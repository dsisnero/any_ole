require "anyolite"

module AnyOle
  VERSION = "0.1.0"

  # TODO: Put your code here
end


Anyolite::Preloader::AtCompiletime.transform_script_to_bytecode("./scripts/excel.rb", "excel_bytecode.mrb")

Anyolite::Preloader::AtCompiletime.load_bytecode_file("excel_bytecode.mrb")

Anyolite::RbInterpreter.create do |rb|
  Anyolite::Preloader.execute_bytecode_from_cache_or_file(rb, "excel_bytecode.mrb")
  end
