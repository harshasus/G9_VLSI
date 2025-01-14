`timescale 1ns / 1ps

module sine_wave_gen(clk,data_out); 
input clk; 
output [7:0] data_out;   
reg [7:0] sine [0:29];  
integer k;  
 reg [7:0] data_out;  
initial  begin 
        k = 0;         
sine[0] = 0;         
sine[1] = 16;         
sine[2] = 31;        
 sine[3] = 45;         
sine[4] = 58;         
sine[5] = 67;         
sine[6] = 74;         
sine[7] = 77;         
sine[8] = 77;         
sine[9] = 74;         
sine[10] = 67;         
sine[11] = 58;        
sine[12] = 45;         
sine[13] = 31;         
sine[14] = 16;         
sine[15] = 0;         
sine[16] = -16;         
sine[17] = -31;         
sine[18] = -45;         
sine[19] = -58;         
sine[20] = -67;         
sine[21] = -74;         
sine[22] = -77;         
sine[23] = -77;         
sine[24] = -74;         
sine[25] = -67;         
sine[26] = -58;         
sine[27] = -45;       
  sine[28] = -31;         
sine[29] = -16;     
end    
 always @(posedge clk) 
    begin     
    data_out=sine[k];     
k=k+1;     
if(k==29)     
k=0;    
 end     
endmodule 
 

