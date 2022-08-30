/* Generated by Yosys 0.12+45 (git sha1 UNKNOWN, gcc 8.3.1 -fPIC -Os) */

module iiitb_freqdiv(en, clkin, n, clkout);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  input clkin;
  output clkout;
  input en;
  input [3:0] n;
  wire \nc[0] ;
  wire \nc[1] ;
  wire \nc[2] ;
  wire \nc[3] ;
  wire \pc[0] ;
  wire \pc[1] ;
  wire \pc[2] ;
  wire \pc[3] ;
  sky130_fd_sc_hd__o31ai_2 _062_ (
    .A1(n[2]),
    .A2(n[0]),
    .A3(n[1]),
    .B1(n[3]),
    .Y(_012_)
  );
  sky130_fd_sc_hd__or4_2 _063_ (
    .A(n[3]),
    .B(n[2]),
    .C(n[0]),
    .D(n[1]),
    .X(_013_)
  );
  sky130_fd_sc_hd__and2_2 _064_ (
    .A(_012_),
    .B(_013_),
    .X(_014_)
  );
  sky130_fd_sc_hd__nor2_2 _065_ (
    .A(\nc[3] ),
    .B(_014_),
    .Y(_015_)
  );
  sky130_fd_sc_hd__or3_2 _066_ (
    .A(n[2]),
    .B(n[0]),
    .C(n[1]),
    .X(_016_)
  );
  sky130_fd_sc_hd__o21ai_2 _067_ (
    .A1(n[0]),
    .A2(n[1]),
    .B1(n[2]),
    .Y(_017_)
  );
  sky130_fd_sc_hd__nand3_2 _068_ (
    .A(\nc[2] ),
    .B(_016_),
    .C(_017_),
    .Y(_018_)
  );
  sky130_fd_sc_hd__nand2_2 _069_ (
    .A(\nc[1] ),
    .B(\nc[0] ),
    .Y(_019_)
  );
  sky130_vsdinv _070_ (
    .A(\nc[1] ),
    .Y(_020_)
  );
  sky130_fd_sc_hd__or2b_2 _071_ (
    .A(n[0]),
    .B_N(\nc[0] ),
    .X(_021_)
  );
  sky130_fd_sc_hd__nor2_2 _072_ (
    .A(n[0]),
    .B(n[1]),
    .Y(_022_)
  );
  sky130_fd_sc_hd__a31o_2 _073_ (
    .A1(n[1]),
    .A2(_020_),
    .A3(_021_),
    .B1(_022_),
    .X(_023_)
  );
  sky130_fd_sc_hd__a21oi_2 _074_ (
    .A1(_016_),
    .A2(_017_),
    .B1(\nc[2] ),
    .Y(_024_)
  );
  sky130_fd_sc_hd__a31o_2 _075_ (
    .A1(_018_),
    .A2(_019_),
    .A3(_023_),
    .B1(_024_),
    .X(_025_)
  );
  sky130_fd_sc_hd__a21boi_2 _076_ (
    .A1(\nc[3] ),
    .A2(_014_),
    .B1_N(en),
    .Y(_026_)
  );
  sky130_fd_sc_hd__and3_2 _077_ (
    .A(\nc[2] ),
    .B(\nc[1] ),
    .C(\nc[0] ),
    .X(_027_)
  );
  sky130_fd_sc_hd__xor2_2 _078_ (
    .A(\nc[3] ),
    .B(_027_),
    .X(_028_)
  );
  sky130_fd_sc_hd__o211a_2 _079_ (
    .A1(_015_),
    .A2(_025_),
    .B1(_026_),
    .C1(_028_),
    .X(_011_)
  );
  sky130_fd_sc_hd__a21oi_2 _080_ (
    .A1(\nc[1] ),
    .A2(\nc[0] ),
    .B1(\nc[2] ),
    .Y(_029_)
  );
  sky130_fd_sc_hd__nor2_2 _081_ (
    .A(_027_),
    .B(_029_),
    .Y(_030_)
  );
  sky130_fd_sc_hd__o211a_2 _082_ (
    .A1(_015_),
    .A2(_025_),
    .B1(_026_),
    .C1(_030_),
    .X(_010_)
  );
  sky130_fd_sc_hd__or2_2 _083_ (
    .A(\nc[1] ),
    .B(\nc[0] ),
    .X(_031_)
  );
  sky130_fd_sc_hd__o2111a_2 _084_ (
    .A1(_015_),
    .A2(_025_),
    .B1(_026_),
    .C1(_031_),
    .D1(_019_),
    .X(_009_)
  );
  sky130_vsdinv _085_ (
    .A(\nc[0] ),
    .Y(_032_)
  );
  sky130_fd_sc_hd__o211a_2 _086_ (
    .A1(_015_),
    .A2(_025_),
    .B1(_026_),
    .C1(_032_),
    .X(_008_)
  );
  sky130_vsdinv _087_ (
    .A(n[2]),
    .Y(_033_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _088_ (
    .A1_N(_032_),
    .A2_N(n[1]),
    .B1(_033_),
    .B2(\nc[1] ),
    .X(_034_)
  );
  sky130_vsdinv _089_ (
    .A(n[3]),
    .Y(_035_)
  );
  sky130_fd_sc_hd__o22a_2 _090_ (
    .A1(_035_),
    .A2(\nc[2] ),
    .B1(\nc[1] ),
    .B2(_033_),
    .X(_036_)
  );
  sky130_fd_sc_hd__a21o_2 _091_ (
    .A1(_034_),
    .A2(_036_),
    .B1(\nc[3] ),
    .X(_037_)
  );
  sky130_vsdinv _092_ (
    .A(\pc[1] ),
    .Y(_038_)
  );
  sky130_fd_sc_hd__nor2_2 _093_ (
    .A(n[2]),
    .B(_038_),
    .Y(_039_)
  );
  sky130_fd_sc_hd__nand2_2 _094_ (
    .A(n[0]),
    .B(n[1]),
    .Y(_040_)
  );
  sky130_fd_sc_hd__o221a_2 _095_ (
    .A1(_033_),
    .A2(\pc[1] ),
    .B1(\pc[0] ),
    .B2(_022_),
    .C1(_040_),
    .X(_041_)
  );
  sky130_fd_sc_hd__o22a_2 _096_ (
    .A1(_035_),
    .A2(\pc[2] ),
    .B1(_039_),
    .B2(_041_),
    .X(_042_)
  );
  sky130_fd_sc_hd__a21o_2 _097_ (
    .A1(n[0]),
    .A2(\nc[2] ),
    .B1(\pc[2] ),
    .X(_043_)
  );
  sky130_fd_sc_hd__a21o_2 _098_ (
    .A1(_035_),
    .A2(_043_),
    .B1(\pc[3] ),
    .X(_044_)
  );
  sky130_fd_sc_hd__a211oi_2 _099_ (
    .A1(n[0]),
    .A2(_037_),
    .B1(_042_),
    .C1(_044_),
    .Y(clkout)
  );
  sky130_fd_sc_hd__nand3_2 _100_ (
    .A(\pc[2] ),
    .B(_016_),
    .C(_017_),
    .Y(_045_)
  );
  sky130_fd_sc_hd__nand2_2 _101_ (
    .A(\pc[1] ),
    .B(\pc[0] ),
    .Y(_046_)
  );
  sky130_fd_sc_hd__or2b_2 _102_ (
    .A(n[0]),
    .B_N(\pc[0] ),
    .X(_047_)
  );
  sky130_fd_sc_hd__a31o_2 _103_ (
    .A1(n[1]),
    .A2(_038_),
    .A3(_047_),
    .B1(_022_),
    .X(_048_)
  );
  sky130_fd_sc_hd__a21oi_2 _104_ (
    .A1(_012_),
    .A2(_013_),
    .B1(\pc[3] ),
    .Y(_049_)
  );
  sky130_fd_sc_hd__a21oi_2 _105_ (
    .A1(_016_),
    .A2(_017_),
    .B1(\pc[2] ),
    .Y(_050_)
  );
  sky130_fd_sc_hd__a311o_2 _106_ (
    .A1(_045_),
    .A2(_046_),
    .A3(_048_),
    .B1(_049_),
    .C1(_050_),
    .X(_051_)
  );
  sky130_fd_sc_hd__a21boi_2 _107_ (
    .A1(\pc[3] ),
    .A2(_014_),
    .B1_N(en),
    .Y(_052_)
  );
  sky130_fd_sc_hd__and3b_2 _108_ (
    .A_N(\pc[0] ),
    .B(_051_),
    .C(_052_),
    .X(_053_)
  );
  sky130_fd_sc_hd__buf_1 _109_ (
    .A(_053_),
    .X(_004_)
  );
  sky130_fd_sc_hd__or2_2 _110_ (
    .A(\pc[1] ),
    .B(\pc[0] ),
    .X(_054_)
  );
  sky130_fd_sc_hd__and4_2 _111_ (
    .A(_046_),
    .B(_051_),
    .C(_052_),
    .D(_054_),
    .X(_055_)
  );
  sky130_fd_sc_hd__buf_1 _112_ (
    .A(_055_),
    .X(_005_)
  );
  sky130_fd_sc_hd__and3_2 _113_ (
    .A(\pc[2] ),
    .B(\pc[1] ),
    .C(\pc[0] ),
    .X(_056_)
  );
  sky130_fd_sc_hd__a21oi_2 _114_ (
    .A1(\pc[1] ),
    .A2(\pc[0] ),
    .B1(\pc[2] ),
    .Y(_057_)
  );
  sky130_fd_sc_hd__nor2_2 _115_ (
    .A(_056_),
    .B(_057_),
    .Y(_058_)
  );
  sky130_fd_sc_hd__and3_2 _116_ (
    .A(_051_),
    .B(_052_),
    .C(_058_),
    .X(_059_)
  );
  sky130_fd_sc_hd__buf_1 _117_ (
    .A(_059_),
    .X(_006_)
  );
  sky130_fd_sc_hd__xor2_2 _118_ (
    .A(\pc[3] ),
    .B(_056_),
    .X(_060_)
  );
  sky130_fd_sc_hd__and3_2 _119_ (
    .A(_051_),
    .B(_052_),
    .C(_060_),
    .X(_061_)
  );
  sky130_fd_sc_hd__buf_1 _120_ (
    .A(_061_),
    .X(_007_)
  );
  sky130_fd_sc_hd__inv_2 _121_ (
    .A(clkin),
    .Y(_000_)
  );
  sky130_fd_sc_hd__inv_2 _122_ (
    .A(clkin),
    .Y(_001_)
  );
  sky130_fd_sc_hd__inv_2 _123_ (
    .A(clkin),
    .Y(_002_)
  );
  sky130_fd_sc_hd__inv_2 _124_ (
    .A(clkin),
    .Y(_003_)
  );
  sky130_fd_sc_hd__dfxtp_2 _125_ (
    .CLK(clkin),
    .D(_004_),
    .Q(\pc[0] )
  );
  sky130_fd_sc_hd__dfxtp_2 _126_ (
    .CLK(clkin),
    .D(_005_),
    .Q(\pc[1] )
  );
  sky130_fd_sc_hd__dfxtp_2 _127_ (
    .CLK(clkin),
    .D(_006_),
    .Q(\pc[2] )
  );
  sky130_fd_sc_hd__dfxtp_2 _128_ (
    .CLK(clkin),
    .D(_007_),
    .Q(\pc[3] )
  );
  sky130_fd_sc_hd__dfxtp_2 _129_ (
    .CLK(_000_),
    .D(_008_),
    .Q(\nc[0] )
  );
  sky130_fd_sc_hd__dfxtp_2 _130_ (
    .CLK(_001_),
    .D(_009_),
    .Q(\nc[1] )
  );
  sky130_fd_sc_hd__dfxtp_2 _131_ (
    .CLK(_002_),
    .D(_010_),
    .Q(\nc[2] )
  );
  sky130_fd_sc_hd__dfxtp_2 _132_ (
    .CLK(_003_),
    .D(_011_),
    .Q(\nc[3] )
  );
endmodule