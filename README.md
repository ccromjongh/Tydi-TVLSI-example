# Tydi example for TVLSI

In order to recreate the example from the TVLSI paper, access to several Tydi tools is necessary. The easiest way to do this is to get the [Tydi-tools docker image](https://github.com/abs-tudelft/Tydi-tools). Clone the repo and build the `Dockerfile`.
```shell
git clone https://github.com/abs-tudelft/Tydi-tools.git
cd Tydi-tools
docker build . -t tydi-tools
```

Then, go to this project's directory and run the container with a volume bind as follows
```shell
docker run -it --rm --name tydi-tools-container -v .:/root/tvlsi-example tydi-tools /bin/bash
```

Then, once inside the container, run
```shell
cd tvlsi-example
make
# or
tydi-lang-complier -c ./tydi_example_project.toml
tl2chisel output output/json_IR.json
scala-cli output/json_IR_generation_stub.scala output/json_IR_main.scala StudentFilterImpl.scala DecompressorWrap.scala
```

You can ignore any errors about unused variables. The Verilog code will be printed and saved in `output/example.v`.

> **Note:**  
> The updates to JSON-TIL have not yet been incorporated in the Tydi-tools package and therefore the compiled Tydi-lang/Tydi-IR files are given.
