`timescale 1ns / 1ps

module tb_universal_fulladder;
    reg a, b, cin;
    wire sum, cout;
  
    fulladder uut (
        .cout(cout),
        .sum(sum),
        .a(a),
        .b(b),
        .cin(cin)
    );

    //  Stimulus 
    initial begin
        // Files for waveform viewing (EPWave / GTKWave)
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_universal_fulladder);

        // Header for the console log
        $display("Time\t a b cin | sum cout");
        $monitor("%0t\t %b %b  %b  |  %b    %b", $time, a, b, cin, sum, cout);

        // Test all 8 possible input combinations
        {a, b, cin} = 3'b000; #10;
        {a, b, cin} = 3'b001; #10;
        {a, b, cin} = 3'b010; #10;
        {a, b, cin} = 3'b011; #10;
        {a, b, cin} = 3'b100; #10;
        {a, b, cin} = 3'b101; #10;
        {a, b, cin} = 3'b110; #10;
        {a, b, cin} = 3'b111; #10;

        $display("Simulation Task Completed.");
        $finish;
    end

endmodule