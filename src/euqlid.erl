-module(euqlid).

-export([gen_v7/0]).

gen_v7() ->
    T48 = erlang:system_time(millisecond),
    <<_:4, C1:4, C2:4, C3:4, _:2, D:2, 
    SixtyTwo_3_1:4,
    SixtyTwo_3_2:4,
    SixtyTwo_3_3:4,
    SixtyTwo_12_1:4,
    SixtyTwo_12_2:4,
    SixtyTwo_12_3:4,
    SixtyTwo_12_4:4,
    SixtyTwo_12_5:4,
    SixtyTwo_12_6:4,
    SixtyTwo_12_7:4,
    SixtyTwo_12_8:4,
    SixtyTwo_12_9:4,
    SixtyTwo_12_10:4,
    SixtyTwo_12_11:4,
    SixtyTwo_12_12:4
    >> = crypto:strong_rand_bytes(10),
    <<Var:4>> = <<0:2, D:2>>,
    <<
        T11:4,
        T12:4,
        T21:4,
        T22:4,
        T31:4,
        T32:4,
        T41:4,
        T42:4,
        T51:4,
        T52:4,
        T61:4,
        T62:4
    >> = << T48:48 >>,
    <<
    (hexinate(T11)), 
    (hexinate(T12)), 
    (hexinate(T21)), 
    (hexinate(T22)), 
    (hexinate(T31)), 
    (hexinate(T32)), 
    (hexinate(T41)), 
    (hexinate(T42)),
    "-",
    (hexinate(T51)), 
    (hexinate(T52)), 
    (hexinate(T61)), 
    (hexinate(T62)),
    "-7",
    (hexinate(C1)),
    (hexinate(C2)),
    (hexinate(C3)),
    "-",
    (hexinate(Var)), 
    (hexinate(SixtyTwo_3_1)),
    (hexinate(SixtyTwo_3_2)),
    (hexinate(SixtyTwo_3_3)),
    "-",
    (hexinate(SixtyTwo_12_1)),
    (hexinate(SixtyTwo_12_2)),
    (hexinate(SixtyTwo_12_3)),
    (hexinate(SixtyTwo_12_4)),
    (hexinate(SixtyTwo_12_5)),
    (hexinate(SixtyTwo_12_6)),
    (hexinate(SixtyTwo_12_7)),
    (hexinate(SixtyTwo_12_8)),
    (hexinate(SixtyTwo_12_9)),
    (hexinate(SixtyTwo_12_10)),
    (hexinate(SixtyTwo_12_11)),
    (hexinate(SixtyTwo_12_12))
    >>.

hexinate(ForBit) when ForBit < 10 -> $0+ForBit;
hexinate(ForBit) -> 
    $a+(ForBit-10).
