`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2023 16:57:09
// Design Name: 
// Module Name: mul_montgomery_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mul_montgomery_tb;


 localparam         WI    =382                            ;
 localparam         WQ    =381                            ;
 localparam         WR    =384                            ;
 localparam         WM    =48*8                           ;
 localparam         L     =3                              ;
 localparam         T0    =32'h07F7_F999                  ;
 localparam         T1    =32'h0000_005F                  ;
 localparam         T2    =32'h07F7_F999                  ;
 localparam         M     =1                              ;
 localparam         Q     =384'h1a0111ea397fe69a4b1ba7b6434bacd764774b84f38512bf6730d2a0f6b0f6241eabfffeb153ffffb9feffffffffaaab           ;
 localparam         QP    =384'hceb06106feaafc9468b316fee268cf5819ecca0e8eb2db4c16ef2ef0c8e30b48286adb92d9d113e889f3fffcfffcfffd          ;
 localparam         R_I   =1                              ;
 localparam         R_O   =1                              ;


 reg                                 clk ;
 reg                                 rst ;                                                                
 reg          [WI-1:0]               in0 ;
 reg          [WI-1:0]               in1 ;
 reg          [M-1:0 ]               m_i ;
 wire         [M-1:0 ]               m_o ;
 wire         [WI-1:0]               out0;
 
   
integer  in_0     ;
integer  in_1     ;
integer  mi       ;
integer  mo       ;
integer  out_0    ;


mul_montgomery#(
 .WI    (382                      ),                                                                                  
 .WQ    (381                      ),                                                                                
 .WR    (384                       ),                                                                                
 .WM    (48*8                      ),                                                                               
 .L     (3                         ),                                                                                              
 .T0    (32'h07F7_F999             ),                                                                          
 .T1    (32'h0000_005F             ),                                                                       
 .T2    (32'h07F7_F999             ),                                                                                
 .M     (1                         ),                                                                                       
 .Q     (384'h1a0111ea397fe69a4b1ba7b6434bacd764774b84f38512bf6730d2a0f6b0f6241eabfffeb153ffffb9feffffffffaaab  ),
 .QP    (384'hceb06106feaafc9468b316fee268cf5819ecca0e8eb2db4c16ef2ef0c8e30b48286adb92d9d113e889f3fffcfffcfffd ),
 .R_I   (1                         ),                                                                                              
 .R_O   (1                         )                                                                                       
 
  )mul_montgomery_DUT(
  
 . clk  ( clk ),
 . rst  ( rst ),
 . in0  ( in0 ),
 . in1  ( in1 ),
 . m_i  ( m_i ),
 . m_o  ( m_o ),
 . out0 ( out0)
  );

  
initial 
 begin
     clk <=1'b0;
     forever #(2)clk <=~clk;//250MHZ
 end
 
 
initial
 begin
    rst <=1'b1;
    repeat(10)@(posedge clk);
    rst =1'b0;
 end  
  


initial
 begin
    in0 =384'h0;
    in1 =384'h0;
    m_i =32'h0;
 wait(!rst); 
 mo    =  $fopen("C:/Users/Kapil/Desktop/MUL_MONTGOMERY/Inputs/mo.txt","w");
 out_0 =  $fopen("C:/Users/Kapil/Desktop/MUL_MONTGOMERY/Inputs/out_0.txt","w");
  fork 
    begin
        in_0 = $fopen("C:/Users/Kapil/Desktop/MUL_MONTGOMERY/Inputs/in0.txt","r");
        if (!in_0)begin
            $display($time,"Error opening file!");
            $finish;
        end
        while(!$feof(in_0))begin
            repeat(100)@(posedge clk);
            $fscanf(in_0,"%h",in0);
        end
    end

    begin
        in_1 = $fopen("C:/Users/Kapil/Desktop/MUL_MONTGOMERY/Inputs/in1.txt","r");
        if (!in_1)begin
            $display($time,"Error opening file!");
            $finish;
        end
        while(!$feof(in_1))begin
            repeat(100)@(posedge clk);
            $fscanf(in_1,"%h",in1);
        end
    end

    begin
        mi = $fopen("C:/Users/Kapil/Desktop/MUL_MONTGOMERY/Inputs/mi.txt","r");
        if (!mi)begin
            $display($time,"Error opening file!");
            $finish;
        end
        while(!$feof(mi))begin
            repeat(100)@(posedge clk);
            $fscanf(mi,"%h",m_i);
        end
    end
    join
 repeat(1000)@(posedge clk); 
 endsimulation;
 $finish;
end


always@(*)begin
   $fwrite(mo,"%h \n",m_o);
  end 

always@(*)begin
   $fwrite(out_0,"%h \n",out0);
  end   
  
  
  task endsimulation;  
    begin 
        repeat(1000)@(posedge clk);	   
            $display("===============SIMULATION FINISHED================="); 
			$finish;   
    end  
endtask

endmodule

