module gatelevel (Z, a, b, c, d, e);

output Z;
input a, b, c, d, e;

wire DandEnot, DnotandE, DorEnot, DnotorE, Dnot, Enot;

not(Dnot, d);
not(Enot, e);

not(DandEnot, DnotorE);
and(DnotandE, Dnot, e);
not(DorEnot, DnotandE);
or(DnotorE, Dnot, e);

mux8to1 mux(Z, DnotorE, Dnot, DnotandE, DorEnot, DnotandE, DnotandE, DandEnot, d, a, b, c);

endmodule