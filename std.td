package std;

streamlet void_s<type_in: type> {
    input_port: type_in in;
}

impl void_i<type_in: type> of void_s<type_in> @External @NoTemplateExpansion {

}

streamlet duplicator_s<type_in: type, N: int> {
    input_port: type_in in;
    for i in range(N) {
        output_port: type_in out;
    }
}

impl duplicator_i<type_in: type, N: int> of duplicator_s<type_in, N> @External @NoTemplateExpansion {

}
