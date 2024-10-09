package example;
use snappy;
use student_schema_parser;

streamlet TydiDemoTop_Interface {
    # Compressed data #
    input: snappy.byte_stream in;
    # Decompressed data #
    output: SimilarityVectorStream out;
}

Char = Bit(8);
n = 4.0;
String = Stream(Char, t=n, d=1, c=8);

Group Exam {
    course_code: String;
    course_name: String;
    exam_date: String;
    grade: Bit(7);
}

Group Student {
    student_number: String;
    name: String;
    birthdate: String;
    study_start: String;
    study_end: String;
    study: String;
    email: String;
    exams: Stream(Exam, t=1.0, d=1);
}

StudentStream = Stream(Student, t=1.0, d=1);

streamlet StudentFilterInterface {
    input_string_parser_L1_00_inst: student_schema_parser.t<2>.JSONStream in;
    input_string_parser_L1_01_inst: student_schema_parser.t<2>.JSONStream in;
    input_string_parser_L1_02_inst: student_schema_parser.t<2>.JSONStream in;
    input_string_parser_L1_03_inst: student_schema_parser.t<2>.JSONStream in;
    input_key_parser_L2_04_inst: student_schema_parser.t<2>.JSONStream in;
    input_string_parser_L1_04_inst: student_schema_parser.t<2>.JSONStream in;
    input_string_parser_L1_05_inst: student_schema_parser.t<2>.JSONStream in;
    input_string_parser_L3_00_inst: student_schema_parser.t<4>.JSONStream in;
    input_string_parser_L3_01_inst: student_schema_parser.t<4>.JSONStream in;
    input_string_parser_L3_02_inst: student_schema_parser.t<4>.JSONStream in;
    input_int_parser_L4_00_inst: student_schema_parser.t<3>.IntParserStream in;

    output: StudentStream out;
}

impl StudentFilterImpl of StudentFilterInterface {}

Float32 = Bit(32);
SimilarityVectorStream = Stream(Float32, t=64.0, d=1, c=1);

streamlet SimilarityEncoderInterface {
    # Student data structure input. #
    student_input: StudentStream in;
    # Student similarity vector output. #
    similarity_output: SimilarityVectorStream out;
}

impl SimilarityEncoderImpl of SimilarityEncoderInterface @External {}

impl TydiDemoTop of TydiDemoTop_Interface {
    instance decompressor(snappy.VhSnUnzipUnbufferedWrap);
    instance json_parser(student_schema_parser.top_impl);
    instance student_filter(StudentFilterImpl);
    instance similarity_encoder(SimilarityEncoderImpl);

    input => decompressor.co;
    decompressor.de => json_parser.input;

    json_parser.output_string_parser_L1_00_inst => student_filter.input_string_parser_L1_00_inst;
    json_parser.output_string_parser_L1_01_inst => student_filter.input_string_parser_L1_01_inst;
    json_parser.output_string_parser_L1_02_inst => student_filter.input_string_parser_L1_02_inst;
    json_parser.output_string_parser_L1_03_inst => student_filter.input_string_parser_L1_03_inst;
    json_parser.output_key_parser_L2_04_inst => student_filter.input_key_parser_L2_04_inst;
    json_parser.output_string_parser_L1_04_inst => student_filter.input_string_parser_L1_04_inst;
    json_parser.output_string_parser_L1_05_inst => student_filter.input_string_parser_L1_05_inst;
    json_parser.output_string_parser_L3_00_inst => student_filter.input_string_parser_L3_00_inst;
    json_parser.output_string_parser_L3_01_inst => student_filter.input_string_parser_L3_01_inst;
    json_parser.output_string_parser_L3_02_inst => student_filter.input_string_parser_L3_02_inst;
    json_parser.output_int_parser_L4_00_inst => student_filter.input_int_parser_L4_00_inst;

    student_filter.output => similarity_encoder.student_input;
    similarity_encoder.similarity_output => output;
}
