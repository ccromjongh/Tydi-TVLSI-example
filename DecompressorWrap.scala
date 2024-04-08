package example

import nl.tudelft.tydi_chisel._
import chisel3._
import chisel3.experimental.ExtModule
import chisel3.util.Fill

class vhsnunzip_unbuffered extends ExtModule {
  val io = IO(new Bundle {
    val clk   = Input(Clock())
    val reset = Input(Reset())

    val co_valid = Input(Bool())
    val co_ready = Output(Bool())
    val co_data  = Input(UInt(64.W))
    val co_cnt   = Input(UInt(3.W))
    val co_last  = Input(Bool())

    val de_valid  = Output(Bool())
    val de_ready  = Input(Bool())
    val de_dvalid = Output(Bool())
    val de_data   = Output(UInt(64.W))
    val de_cnt    = Output(UInt(4.W))
    val de_last   = Output(Bool())
  })
}

class VhSnUnzipUnbufferedWrap extends Decompressor {
  coStream := DontCare
  deStream := DontCare

  val decompressor = chisel3.Module.apply(new vhsnunzip_unbuffered)
  decompressor.io.clk   := clock
  decompressor.io.reset := reset

  co.ready                 := decompressor.io.co_ready
  decompressor.io.co_valid := co.valid
  decompressor.io.co_data  := co.data
  decompressor.io.co_cnt   := co.endi
  decompressor.io.co_last  := co.last

  decompressor.io.de_ready := de.ready
  de.valid                 := decompressor.io.de_valid
  de.strb                  := Fill(de.d, decompressor.io.de_dvalid)
  de.data                  := decompressor.io.de_data
  de.endi                  := decompressor.io.de_cnt
  de.lastVec.last          := decompressor.io.de_last
  de.user                  := DontCare
}
