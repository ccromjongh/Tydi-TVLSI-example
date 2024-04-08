package snappy;

byte = Bit(8);
byte_stream = Stream(byte, t=8.0, d=1, c=1);

streamlet decompressor {
    # Compressed data #
    co: byte_stream in;
    # Decompressed data #
    de: byte_stream out;
}

impl VhSnUnzipUnbufferedWrap of decompressor {}
