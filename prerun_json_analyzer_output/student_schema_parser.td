package student_schema_parser;

streamlet t <d: int> {
JSONStream = Stream(
    Bit(8),
    throughput = 4.0,
    dimension = d,
    synchronicity = "Sync",
    complexity = 8
);

IntParserStream = Stream(
    Bit(64),
    throughput = 1.0,
    dimension = d,
    synchronicity = "Sync",
    complexity = 2
);

RecordParserStream = Stream(
    Bit(9),
    throughput = 4.0,
    dimension = d,
    synchronicity = "Sync",
    complexity = 8
);

MatcherMatchStream = Stream(
    Bit(1),
    throughput = 4.0,
    dimension = 1,
    synchronicity = "Sync",
    complexity = 8
);

MatcherStrStream = Stream(
    Bit(8),
    throughput = 4.0,
    dimension = 1,
    synchronicity = "Sync",
    complexity = 8
);
}

streamlet string_parser_L1_00 {
	EPC = 4;
	NESTING_LEVEL = 1;

	input: t<NESTING_LEVEL+1>.JSONStream in;
	output: t<NESTING_LEVEL+1>.JSONStream out;
}

impl string_parser_L1_00_impl of string_parser_L1_00 @External { }

streamlet student_number_matcher_L1_00 {
	BPC = 4;

	input: t<0>.MatcherStrStream in;
	output: t<0>.MatcherMatchStream out;
}

impl student_number_matcher_L1_00_impl of student_number_matcher_L1_00 @External { }

streamlet key_parser_L1_00 {
	EPC = 4;
	OUTER_NESTING_LEVEL = 1;

	input: t<OUTER_NESTING_LEVEL+1>.RecordParserStream in;
	matcher_str: t<0>.MatcherStrStream out;
	matcher_match: t<0>.MatcherMatchStream in;
	output: t<OUTER_NESTING_LEVEL+1>.JSONStream out;
}

impl key_parser_L1_00_impl of key_parser_L1_00 @External { }

streamlet string_parser_L1_01 {
	EPC = 4;
	NESTING_LEVEL = 1;

	input: t<NESTING_LEVEL+1>.JSONStream in;
	output: t<NESTING_LEVEL+1>.JSONStream out;
}

impl string_parser_L1_01_impl of string_parser_L1_01 @External { }

streamlet name_matcher_L1_00 {
	BPC = 4;

	input: t<0>.MatcherStrStream in;
	output: t<0>.MatcherMatchStream out;
}

impl name_matcher_L1_00_impl of name_matcher_L1_00 @External { }

streamlet key_parser_L1_01 {
	EPC = 4;
	OUTER_NESTING_LEVEL = 1;

	input: t<OUTER_NESTING_LEVEL+1>.RecordParserStream in;
	matcher_str: t<0>.MatcherStrStream out;
	matcher_match: t<0>.MatcherMatchStream in;
	output: t<OUTER_NESTING_LEVEL+1>.JSONStream out;
}

impl key_parser_L1_01_impl of key_parser_L1_01 @External { }

streamlet string_parser_L1_02 {
	EPC = 4;
	NESTING_LEVEL = 1;

	input: t<NESTING_LEVEL+1>.JSONStream in;
	output: t<NESTING_LEVEL+1>.JSONStream out;
}

impl string_parser_L1_02_impl of string_parser_L1_02 @External { }

streamlet birthdate_matcher_L1_00 {
	BPC = 4;

	input: t<0>.MatcherStrStream in;
	output: t<0>.MatcherMatchStream out;
}

impl birthdate_matcher_L1_00_impl of birthdate_matcher_L1_00 @External { }

streamlet key_parser_L1_02 {
	EPC = 4;
	OUTER_NESTING_LEVEL = 1;

	input: t<OUTER_NESTING_LEVEL+1>.RecordParserStream in;
	matcher_str: t<0>.MatcherStrStream out;
	matcher_match: t<0>.MatcherMatchStream in;
	output: t<OUTER_NESTING_LEVEL+1>.JSONStream out;
}

impl key_parser_L1_02_impl of key_parser_L1_02 @External { }

streamlet string_parser_L1_03 {
	EPC = 4;
	NESTING_LEVEL = 1;

	input: t<NESTING_LEVEL+1>.JSONStream in;
	output: t<NESTING_LEVEL+1>.JSONStream out;
}

impl string_parser_L1_03_impl of string_parser_L1_03 @External { }

streamlet study_start_matcher_L1_00 {
	BPC = 4;

	input: t<0>.MatcherStrStream in;
	output: t<0>.MatcherMatchStream out;
}

impl study_start_matcher_L1_00_impl of study_start_matcher_L1_00 @External { }

streamlet key_parser_L1_03 {
	EPC = 4;
	OUTER_NESTING_LEVEL = 1;

	input: t<OUTER_NESTING_LEVEL+1>.RecordParserStream in;
	matcher_str: t<0>.MatcherStrStream out;
	matcher_match: t<0>.MatcherMatchStream in;
	output: t<OUTER_NESTING_LEVEL+1>.JSONStream out;
}

impl key_parser_L1_03_impl of key_parser_L1_03 @External { }

streamlet study_end_matcher_L1_00 {
	BPC = 4;

	input: t<0>.MatcherStrStream in;
	output: t<0>.MatcherMatchStream out;
}

impl study_end_matcher_L1_00_impl of study_end_matcher_L1_00 @External { }

streamlet key_parser_L1_04 {
	EPC = 4;
	OUTER_NESTING_LEVEL = 1;

	input: t<OUTER_NESTING_LEVEL+1>.RecordParserStream in;
	matcher_str: t<0>.MatcherStrStream out;
	matcher_match: t<0>.MatcherMatchStream in;
	output: t<OUTER_NESTING_LEVEL+1>.JSONStream out;
}

impl key_parser_L1_04_impl of key_parser_L1_04 @External { }

streamlet string_parser_L1_04 {
	EPC = 4;
	NESTING_LEVEL = 1;

	input: t<NESTING_LEVEL+1>.JSONStream in;
	output: t<NESTING_LEVEL+1>.JSONStream out;
}

impl string_parser_L1_04_impl of string_parser_L1_04 @External { }

streamlet study_matcher_L1_00 {
	BPC = 4;

	input: t<0>.MatcherStrStream in;
	output: t<0>.MatcherMatchStream out;
}

impl study_matcher_L1_00_impl of study_matcher_L1_00 @External { }

streamlet key_parser_L1_05 {
	EPC = 4;
	OUTER_NESTING_LEVEL = 1;

	input: t<OUTER_NESTING_LEVEL+1>.RecordParserStream in;
	matcher_str: t<0>.MatcherStrStream out;
	matcher_match: t<0>.MatcherMatchStream in;
	output: t<OUTER_NESTING_LEVEL+1>.JSONStream out;
}

impl key_parser_L1_05_impl of key_parser_L1_05 @External { }

streamlet string_parser_L1_05 {
	EPC = 4;
	NESTING_LEVEL = 1;

	input: t<NESTING_LEVEL+1>.JSONStream in;
	output: t<NESTING_LEVEL+1>.JSONStream out;
}

impl string_parser_L1_05_impl of string_parser_L1_05 @External { }

streamlet email_matcher_L1_00 {
	BPC = 4;

	input: t<0>.MatcherStrStream in;
	output: t<0>.MatcherMatchStream out;
}

impl email_matcher_L1_00_impl of email_matcher_L1_00 @External { }

streamlet key_parser_L1_06 {
	EPC = 4;
	OUTER_NESTING_LEVEL = 1;

	input: t<OUTER_NESTING_LEVEL+1>.RecordParserStream in;
	matcher_str: t<0>.MatcherStrStream out;
	matcher_match: t<0>.MatcherMatchStream in;
	output: t<OUTER_NESTING_LEVEL+1>.JSONStream out;
}

impl key_parser_L1_06_impl of key_parser_L1_06 @External { }

streamlet string_parser_L3_00 {
	EPC = 4;
	NESTING_LEVEL = 3;

	input: t<NESTING_LEVEL+1>.JSONStream in;
	output: t<NESTING_LEVEL+1>.JSONStream out;
}

impl string_parser_L3_00_impl of string_parser_L3_00 @External { }

streamlet course_code_matcher_L3_00 {
	BPC = 4;

	input: t<0>.MatcherStrStream in;
	output: t<0>.MatcherMatchStream out;
}

impl course_code_matcher_L3_00_impl of course_code_matcher_L3_00 @External { }

streamlet key_parser_L3_00 {
	EPC = 4;
	OUTER_NESTING_LEVEL = 3;

	input: t<OUTER_NESTING_LEVEL+1>.RecordParserStream in;
	matcher_str: t<0>.MatcherStrStream out;
	matcher_match: t<0>.MatcherMatchStream in;
	output: t<OUTER_NESTING_LEVEL+1>.JSONStream out;
}

impl key_parser_L3_00_impl of key_parser_L3_00 @External { }

streamlet string_parser_L3_01 {
	EPC = 4;
	NESTING_LEVEL = 3;

	input: t<NESTING_LEVEL+1>.JSONStream in;
	output: t<NESTING_LEVEL+1>.JSONStream out;
}

impl string_parser_L3_01_impl of string_parser_L3_01 @External { }

streamlet course_name_matcher_L3_00 {
	BPC = 4;

	input: t<0>.MatcherStrStream in;
	output: t<0>.MatcherMatchStream out;
}

impl course_name_matcher_L3_00_impl of course_name_matcher_L3_00 @External { }

streamlet key_parser_L3_01 {
	EPC = 4;
	OUTER_NESTING_LEVEL = 3;

	input: t<OUTER_NESTING_LEVEL+1>.RecordParserStream in;
	matcher_str: t<0>.MatcherStrStream out;
	matcher_match: t<0>.MatcherMatchStream in;
	output: t<OUTER_NESTING_LEVEL+1>.JSONStream out;
}

impl key_parser_L3_01_impl of key_parser_L3_01 @External { }

streamlet string_parser_L3_02 {
	EPC = 4;
	NESTING_LEVEL = 3;

	input: t<NESTING_LEVEL+1>.JSONStream in;
	output: t<NESTING_LEVEL+1>.JSONStream out;
}

impl string_parser_L3_02_impl of string_parser_L3_02 @External { }

streamlet exam_date_matcher_L3_00 {
	BPC = 4;

	input: t<0>.MatcherStrStream in;
	output: t<0>.MatcherMatchStream out;
}

impl exam_date_matcher_L3_00_impl of exam_date_matcher_L3_00 @External { }

streamlet key_parser_L3_02 {
	EPC = 4;
	OUTER_NESTING_LEVEL = 3;

	input: t<OUTER_NESTING_LEVEL+1>.RecordParserStream in;
	matcher_str: t<0>.MatcherStrStream out;
	matcher_match: t<0>.MatcherMatchStream in;
	output: t<OUTER_NESTING_LEVEL+1>.JSONStream out;
}

impl key_parser_L3_02_impl of key_parser_L3_02 @External { }

streamlet int_parser_L4_00 {
	EPC = 4;
	NESTING_LEVEL = 3;
	BITWIDTH = 64;

	input: t<NESTING_LEVEL+1>.JSONStream in;
	output: t<NESTING_LEVEL>.IntParserStream out;
}

impl int_parser_L4_00_impl of int_parser_L4_00 @External { }

streamlet grade_matcher_L3_00 {
	BPC = 4;

	input: t<0>.MatcherStrStream in;
	output: t<0>.MatcherMatchStream out;
}

impl grade_matcher_L3_00_impl of grade_matcher_L3_00 @External { }

streamlet key_parser_L3_03 {
	EPC = 4;
	OUTER_NESTING_LEVEL = 3;

	input: t<OUTER_NESTING_LEVEL+1>.RecordParserStream in;
	matcher_str: t<0>.MatcherStrStream out;
	matcher_match: t<0>.MatcherMatchStream in;
	output: t<OUTER_NESTING_LEVEL+1>.JSONStream out;
}

impl key_parser_L3_03_impl of key_parser_L3_03 @External { }

streamlet record_parser_L3_00 {
	EPC = 4;
	OUTER_NESTING_LEVEL = 3;
	INNER_NESTING_LEVEL = 0;

	input: t<OUTER_NESTING_LEVEL>.JSONStream in;
	output: t<OUTER_NESTING_LEVEL+1>.RecordParserStream out;
}

impl record_parser_L3_00_impl of record_parser_L3_00 @External { }

streamlet array_parser_L2_00 {
	EPC = 4;
	OUTER_NESTING_LEVEL = 2;
	INNER_NESTING_LEVEL = 1;

	input: t<OUTER_NESTING_LEVEL>.JSONStream in;
	output: t<OUTER_NESTING_LEVEL+1>.JSONStream out;
}

impl array_parser_L2_00_impl of array_parser_L2_00 @External { }

streamlet exams_matcher_L1_00 {
	BPC = 4;

	input: t<0>.MatcherStrStream in;
	output: t<0>.MatcherMatchStream out;
}

impl exams_matcher_L1_00_impl of exams_matcher_L1_00 @External { }

streamlet key_parser_L1_07 {
	EPC = 4;
	OUTER_NESTING_LEVEL = 1;

	input: t<OUTER_NESTING_LEVEL+1>.RecordParserStream in;
	matcher_str: t<0>.MatcherStrStream out;
	matcher_match: t<0>.MatcherMatchStream in;
	output: t<OUTER_NESTING_LEVEL+1>.JSONStream out;
}

impl key_parser_L1_07_impl of key_parser_L1_07 @External { }

streamlet record_parser_L1_00 {
	EPC = 4;
	OUTER_NESTING_LEVEL = 1;
	INNER_NESTING_LEVEL = 2;

	input: t<OUTER_NESTING_LEVEL>.JSONStream in;
	output: t<OUTER_NESTING_LEVEL+1>.RecordParserStream out;
}

impl record_parser_L1_00_impl of record_parser_L1_00 @External { }

streamlet top {
	input: t<1>.JSONStream in;
	output_string_parser_L1_00_inst: t<2>.JSONStream out;
	output_string_parser_L1_01_inst: t<2>.JSONStream out;
	output_string_parser_L1_02_inst: t<2>.JSONStream out;
	output_string_parser_L1_03_inst: t<2>.JSONStream out;
	output_key_parser_L1_04_inst: t<2>.JSONStream out;
	output_string_parser_L1_04_inst: t<2>.JSONStream out;
	output_string_parser_L1_05_inst: t<2>.JSONStream out;
	output_string_parser_L3_00_inst: t<4>.JSONStream out;
	output_string_parser_L3_01_inst: t<4>.JSONStream out;
	output_string_parser_L3_02_inst: t<4>.JSONStream out;
	output_int_parser_L4_00_inst: t<3>.IntParserStream out;
}

impl top_impl of top {
	instance string_parser_L1_00_inst(string_parser_L1_00_impl);
	instance student_number_matcher_L1_00_inst(student_number_matcher_L1_00_impl);
	instance key_parser_L1_00_inst(key_parser_L1_00_impl);
	instance string_parser_L1_01_inst(string_parser_L1_01_impl);
	instance name_matcher_L1_00_inst(name_matcher_L1_00_impl);
	instance key_parser_L1_01_inst(key_parser_L1_01_impl);
	instance string_parser_L1_02_inst(string_parser_L1_02_impl);
	instance birthdate_matcher_L1_00_inst(birthdate_matcher_L1_00_impl);
	instance key_parser_L1_02_inst(key_parser_L1_02_impl);
	instance string_parser_L1_03_inst(string_parser_L1_03_impl);
	instance study_start_matcher_L1_00_inst(study_start_matcher_L1_00_impl);
	instance key_parser_L1_03_inst(key_parser_L1_03_impl);
	instance study_end_matcher_L1_00_inst(study_end_matcher_L1_00_impl);
	instance key_parser_L1_04_inst(key_parser_L1_04_impl);
	instance string_parser_L1_04_inst(string_parser_L1_04_impl);
	instance study_matcher_L1_00_inst(study_matcher_L1_00_impl);
	instance key_parser_L1_05_inst(key_parser_L1_05_impl);
	instance string_parser_L1_05_inst(string_parser_L1_05_impl);
	instance email_matcher_L1_00_inst(email_matcher_L1_00_impl);
	instance key_parser_L1_06_inst(key_parser_L1_06_impl);
	instance string_parser_L3_00_inst(string_parser_L3_00_impl);
	instance course_code_matcher_L3_00_inst(course_code_matcher_L3_00_impl);
	instance key_parser_L3_00_inst(key_parser_L3_00_impl);
	instance string_parser_L3_01_inst(string_parser_L3_01_impl);
	instance course_name_matcher_L3_00_inst(course_name_matcher_L3_00_impl);
	instance key_parser_L3_01_inst(key_parser_L3_01_impl);
	instance string_parser_L3_02_inst(string_parser_L3_02_impl);
	instance exam_date_matcher_L3_00_inst(exam_date_matcher_L3_00_impl);
	instance key_parser_L3_02_inst(key_parser_L3_02_impl);
	instance int_parser_L4_00_inst(int_parser_L4_00_impl);
	instance grade_matcher_L3_00_inst(grade_matcher_L3_00_impl);
	instance key_parser_L3_03_inst(key_parser_L3_03_impl);
	instance record_parser_L3_00_inst(record_parser_L3_00_impl);
	instance array_parser_L2_00_inst(array_parser_L2_00_impl);
	instance exams_matcher_L1_00_inst(exams_matcher_L1_00_impl);
	instance key_parser_L1_07_inst(key_parser_L1_07_impl);
	instance record_parser_L1_00_inst(record_parser_L1_00_impl);

	self.input => record_parser_L1_00_inst.input;
	student_number_matcher_L1_00_inst.output => key_parser_L1_00_inst.matcher_match;
	key_parser_L1_00_inst.matcher_str => student_number_matcher_L1_00_inst.input;
	key_parser_L1_00_inst.output => string_parser_L1_00_inst.input;
	name_matcher_L1_00_inst.output => key_parser_L1_01_inst.matcher_match;
	key_parser_L1_01_inst.matcher_str => name_matcher_L1_00_inst.input;
	key_parser_L1_01_inst.output => string_parser_L1_01_inst.input;
	birthdate_matcher_L1_00_inst.output => key_parser_L1_02_inst.matcher_match;
	key_parser_L1_02_inst.matcher_str => birthdate_matcher_L1_00_inst.input;
	key_parser_L1_02_inst.output => string_parser_L1_02_inst.input;
	study_start_matcher_L1_00_inst.output => key_parser_L1_03_inst.matcher_match;
	key_parser_L1_03_inst.matcher_str => study_start_matcher_L1_00_inst.input;
	key_parser_L1_03_inst.output => string_parser_L1_03_inst.input;
	study_end_matcher_L1_00_inst.output => key_parser_L1_04_inst.matcher_match;
	key_parser_L1_04_inst.matcher_str => study_end_matcher_L1_00_inst.input;
	study_matcher_L1_00_inst.output => key_parser_L1_05_inst.matcher_match;
	key_parser_L1_05_inst.matcher_str => study_matcher_L1_00_inst.input;
	key_parser_L1_05_inst.output => string_parser_L1_04_inst.input;
	email_matcher_L1_00_inst.output => key_parser_L1_06_inst.matcher_match;
	key_parser_L1_06_inst.matcher_str => email_matcher_L1_00_inst.input;
	key_parser_L1_06_inst.output => string_parser_L1_05_inst.input;
	course_code_matcher_L3_00_inst.output => key_parser_L3_00_inst.matcher_match;
	key_parser_L3_00_inst.matcher_str => course_code_matcher_L3_00_inst.input;
	key_parser_L3_00_inst.output => string_parser_L3_00_inst.input;
	course_name_matcher_L3_00_inst.output => key_parser_L3_01_inst.matcher_match;
	key_parser_L3_01_inst.matcher_str => course_name_matcher_L3_00_inst.input;
	key_parser_L3_01_inst.output => string_parser_L3_01_inst.input;
	exam_date_matcher_L3_00_inst.output => key_parser_L3_02_inst.matcher_match;
	key_parser_L3_02_inst.matcher_str => exam_date_matcher_L3_00_inst.input;
	key_parser_L3_02_inst.output => string_parser_L3_02_inst.input;
	grade_matcher_L3_00_inst.output => key_parser_L3_03_inst.matcher_match;
	key_parser_L3_03_inst.matcher_str => grade_matcher_L3_00_inst.input;
	key_parser_L3_03_inst.output => int_parser_L4_00_inst.input;
	record_parser_L3_00_inst.output => key_parser_L3_00_inst.input;
	record_parser_L3_00_inst.output => key_parser_L3_01_inst.input;
	record_parser_L3_00_inst.output => key_parser_L3_02_inst.input;
	record_parser_L3_00_inst.output => key_parser_L3_03_inst.input;
	array_parser_L2_00_inst.output => record_parser_L3_00_inst.input;
	exams_matcher_L1_00_inst.output => key_parser_L1_07_inst.matcher_match;
	key_parser_L1_07_inst.matcher_str => exams_matcher_L1_00_inst.input;
	key_parser_L1_07_inst.output => array_parser_L2_00_inst.input;
	record_parser_L1_00_inst.output => key_parser_L1_00_inst.input;
	record_parser_L1_00_inst.output => key_parser_L1_01_inst.input;
	record_parser_L1_00_inst.output => key_parser_L1_02_inst.input;
	record_parser_L1_00_inst.output => key_parser_L1_03_inst.input;
	record_parser_L1_00_inst.output => key_parser_L1_04_inst.input;
	record_parser_L1_00_inst.output => key_parser_L1_05_inst.input;
	record_parser_L1_00_inst.output => key_parser_L1_06_inst.input;
	record_parser_L1_00_inst.output => key_parser_L1_07_inst.input;
	string_parser_L1_00_inst.output => self.output_string_parser_L1_00_inst;
	string_parser_L1_01_inst.output => self.output_string_parser_L1_01_inst;
	string_parser_L1_02_inst.output => self.output_string_parser_L1_02_inst;
	string_parser_L1_03_inst.output => self.output_string_parser_L1_03_inst;
	key_parser_L1_04_inst.output => self.output_key_parser_L1_04_inst;
	string_parser_L1_04_inst.output => self.output_string_parser_L1_04_inst;
	string_parser_L1_05_inst.output => self.output_string_parser_L1_05_inst;
	string_parser_L3_00_inst.output => self.output_string_parser_L3_00_inst;
	string_parser_L3_01_inst.output => self.output_string_parser_L3_01_inst;
	string_parser_L3_02_inst.output => self.output_string_parser_L3_02_inst;
	int_parser_L4_00_inst.output => self.output_int_parser_L4_00_inst;
}
