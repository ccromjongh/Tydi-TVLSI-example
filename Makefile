compile:
	json_hierachy -i student.json --parser-name "student_schema_parser"
	tydi-lang-complier -c ./tydi_example_project.toml
	tl2chisel output output/json_IR.json
	scala-cli output/json_IR_generation_stub.scala output/json_IR_main.scala StudentFilterImpl.scala DecompressorWrap.scala
