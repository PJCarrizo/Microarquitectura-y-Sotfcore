-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed Jun 22 01:16:46 2022
-- Host        : DESKTOP-POJ4SEO running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/CLP/Practicas/1_CLP_II_practicas/TP_Final_1/TP_Final_1.srcs/sources_1/bd/system/ip/system_led_ip_0_0/system_led_ip_0_0_stub.vhdl
-- Design      : system_led_ip_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_led_ip_0_0 is
  Port ( 
    LED : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s0000_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s0000_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s0000_axi_awvalid : in STD_LOGIC;
    s0000_axi_awready : out STD_LOGIC;
    s0000_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0000_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s0000_axi_wvalid : in STD_LOGIC;
    s0000_axi_wready : out STD_LOGIC;
    s0000_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s0000_axi_bvalid : out STD_LOGIC;
    s0000_axi_bready : in STD_LOGIC;
    s0000_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s0000_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s0000_axi_arvalid : in STD_LOGIC;
    s0000_axi_arready : out STD_LOGIC;
    s0000_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s0000_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s0000_axi_rvalid : out STD_LOGIC;
    s0000_axi_rready : in STD_LOGIC;
    s0000_axi_aclk : in STD_LOGIC;
    s0000_axi_aresetn : in STD_LOGIC
  );

end system_led_ip_0_0;

architecture stub of system_led_ip_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "LED[3:0],s0000_axi_awaddr[3:0],s0000_axi_awprot[2:0],s0000_axi_awvalid,s0000_axi_awready,s0000_axi_wdata[31:0],s0000_axi_wstrb[3:0],s0000_axi_wvalid,s0000_axi_wready,s0000_axi_bresp[1:0],s0000_axi_bvalid,s0000_axi_bready,s0000_axi_araddr[3:0],s0000_axi_arprot[2:0],s0000_axi_arvalid,s0000_axi_arready,s0000_axi_rdata[31:0],s0000_axi_rresp[1:0],s0000_axi_rvalid,s0000_axi_rready,s0000_axi_aclk,s0000_axi_aresetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "led_ip_v1_0,Vivado 2018.1";
begin
end;
