module fulladder (cout, sum, a, b, cin);
    output cout, sum;
    input a, b, cin;
    wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17;
    supply1 VDD;
    supply0 GND;

    //SUM
    pmos p1 (w1, VDD, a);
    pmos p2 (w3, w1, b);
    pmos p3 (sum, w3, w17);
    pmos p4 (w4, w1, w16);
    pmos p5 (sum, w4, cin);
    pmos p6 (w2, VDD, w15);
    pmos p7 (w5, w2, b);
    pmos p8 (sum, w5, cin);
    pmos p9 (w6, w2, w16);
    pmos p10 (sum, w6, w17);

    nmos n1 (sum, w8, a);
    nmos n2 (sum, w7, b);
    nmos n3 (sum, w7, w17);
    nmos n4 (w7, w8, w16);
    nmos n5 (w7, w8, cin);
    nmos n6 (w8, GND, w15);
    nmos n7 (w8, w9, b);
    nmos n8 (w8, w9, cin);
    nmos n9 (w9, GND, w16);
    nmos n10 (w9, GND, w17);

    // CARRY
    pmos p11 (w10, VDD, w15);
    pmos p12 (cout, w10, w16);
    pmos p13 (w11, VDD, w16);
    pmos p14 (cout, w11, w17);
    pmos p15 (w12, VDD, w17);
    pmos p16 (cout, w12, w15);

    nmos n11 (cout, w13, w15);
    nmos n12 (cout, w13, w16);
    nmos n13 (w13, w14, w16);
    nmos n14 (w13, w14, w17);
    nmos n15 (w14, GND, w17);
    nmos n16 (w14, GND, w15);

    // NOT A
    pmos p17 (w15, VDD, a);
    nmos n17 (w15, GND, a);

    // NOT B
    pmos p18 (w16, VDD, b);
    nmos n18 (w16, GND, b);

    // NOT CIN
    pmos p19 (w17, VDD, cin);
    nmos n19 (w17, GND, cin);

endmodule