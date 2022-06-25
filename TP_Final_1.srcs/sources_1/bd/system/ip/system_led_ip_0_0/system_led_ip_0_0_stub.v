// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Jun 22 01:16:46 2022
// Host        : DESKTOP-POJ4SEO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/CLP/Practicas/1_CLP_II_practicas/TP_Final_1/TP_Final_1.srcs/sources_1/bd/system/ip/system_led_ip_0_0/system_led_ip_0_0_stub.v
// Design      : system_led_ip_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "led_ip_v1_0,Vivado 2018.1" *)
module system_led_ip_0_0(LED, s0000_axi_awaddr, s0000_axi_awprot, 
  s0000_axi_awvalid, s0000_axi_awready, s0000_axi_wdata, s0000_axi_wstrb, s0000_axi_wvalid, 
  s0000_axi_wready, s0000_axi_bresp, s0000_axi_bvalid, s0000_axi_bready, s0000_axi_araddr, 
  s0000_axi_arprot, s0000_axi_arvalid, s0000_axi_arready, s0000_axi_rdata, s0000_axi_rresp, 
  s0000_axi_rvalid, s0000_axi_rready, s0000_axi_aclk, s0000_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="LED[3:0],s0000_axi_awaddr[3:0],s0000_axi_awprot[2:0],s0000_axi_awvalid,s0000_axi_awready,s0000_axi_wdata[31:0],s0000_axi_wstrb[3:0],s0000_axi_wvalid,s0000_axi_wready,s0000_axi_bresp[1:0],s0000_axi_bvalid,s0000_axi_bready,s0000_axi_araddr[3:0],s0000_axi_arprot[2:0],s0000_axi_arvalid,s0000_axi_arready,s0000_axi_rdata[31:0],s0000_axi_rresp[1:0],s0000_axi_rvalid,s0000_axi_rready,s0000_axi_aclk,s0000_axi_aresetn" */;
  output [3:0]LED;
  input [3:0]s0000_axi_awaddr;
  input [2:0]s0000_axi_awprot;
  input s0000_axi_awvalid;
  output s0000_axi_awready;
  input [31:0]s0000_axi_wdata;
  input [3:0]s0000_axi_wstrb;
  input s0000_axi_wvalid;
  output s0000_axi_wready;
  output [1:0]s0000_axi_bresp;
  output s0000_axi_bvalid;
  input s0000_axi_bready;
  input [3:0]s0000_axi_araddr;
  input [2:0]s0000_axi_arprot;
  input s0000_axi_arvalid;
  output s0000_axi_arready;
  output [31:0]s0000_axi_rdata;
  output [1:0]s0000_axi_rresp;
  output s0000_axi_rvalid;
  input s0000_axi_rready;
  input s0000_axi_aclk;
  input s0000_axi_aresetn;
endmodule
