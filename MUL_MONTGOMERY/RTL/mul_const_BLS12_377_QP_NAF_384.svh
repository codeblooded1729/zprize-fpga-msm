logic [384-1:0] out_p;
logic [384-1:0] out_n;
logic [M-1:0] p_m_o;
logic [M-1:0] n_m_o;
logic [6-1:0][M-1:0] p_m_o_p;
logic [384-1:0] p_s_0_00;
logic [321-1:0] p_s_0_06;
logic [295-1:0] p_s_0_12;
logic [253-1:0] p_s_0_18;
logic [224-1:0] p_s_0_24;
logic [164-1:0] p_s_0_30;
logic [135-1:0] p_s_0_36;
logic [103-1:0] p_s_0_42;
logic [62-1:0] p_s_0_48;
logic [4-1:0] p_s_0_54;
logic [384-1:0] p_s_1_00;
logic [135-1:0] p_s_1_06;
logic [384-1:0] p_s_2_00;
`SHADD_6(384, p_s_0_00,   0,  16,  32,  50,  57,  59, {384'b0, in0[0+:384]}, {384'b0, in0[0+:368]}, {384'b0, in0[0+:352]}, {384'b0, in0[0+:334]}, {384'b0, in0[0+:327]}, {384'b0, in0[0+:325]});
`SHADD_6(321, p_s_0_06,   0,   4,  11,  13,  17,  21, {321'b0, in0[0+:321]}, {321'b0, in0[0+:317]}, {321'b0, in0[0+:310]}, {321'b0, in0[0+:308]}, {321'b0, in0[0+:304]}, {321'b0, in0[0+:300]});
`SHADD_6(295, p_s_0_12,   0,   9,  11,  30,  34,  36, {295'b0, in0[0+:295]}, {295'b0, in0[0+:286]}, {295'b0, in0[0+:284]}, {295'b0, in0[0+:265]}, {295'b0, in0[0+:261]}, {295'b0, in0[0+:259]});
`SHADD_6(253, p_s_0_18,   0,   3,   9,  15,  21,  24, {253'b0, in0[0+:253]}, {253'b0, in0[0+:250]}, {253'b0, in0[0+:244]}, {253'b0, in0[0+:238]}, {253'b0, in0[0+:232]}, {253'b0, in0[0+:229]});
`SHADD_6(224, p_s_0_24,   0,  14,  29,  36,  38,  50, {224'b0, in0[0+:224]}, {224'b0, in0[0+:210]}, {224'b0, in0[0+:195]}, {224'b0, in0[0+:188]}, {224'b0, in0[0+:186]}, {224'b0, in0[0+:174]});
`SHADD_6(164, p_s_0_30,   0,   3,   8,  13,  15,  20, {164'b0, in0[0+:164]}, {164'b0, in0[0+:161]}, {164'b0, in0[0+:156]}, {164'b0, in0[0+:151]}, {164'b0, in0[0+:149]}, {164'b0, in0[0+:144]});
`SHADD_6(135, p_s_0_36,   0,   4,  19,  23,  26,  30, {135'b0, in0[0+:135]}, {135'b0, in0[0+:131]}, {135'b0, in0[0+:116]}, {135'b0, in0[0+:112]}, {135'b0, in0[0+:109]}, {135'b0, in0[0+:105]});
`SHADD_6(103, p_s_0_42,   0,  20,  25,  31,  34,  38, {103'b0, in0[0+:103]}, {103'b0, in0[0+:83]}, {103'b0, in0[0+:78]}, {103'b0, in0[0+:72]}, {103'b0, in0[0+:69]}, {103'b0, in0[0+:65]});
`SHADD_6( 62, p_s_0_48,   0,   2,   5,  33,  38,  45, {62'b0, in0[0+:62]}, {62'b0, in0[0+:60]}, {62'b0, in0[0+:57]}, {62'b0, in0[0+:29]}, {62'b0, in0[0+:24]}, {62'b0, in0[0+:17]});
`SHADD_6(  4, p_s_0_54,   0,   0,   0,   0,   0,   0, {4'b0, in0[0+:4]}, {4'b0, '0}, {4'b0, '0}, {4'b0, '0}, {4'b0, '0}, {4'b0, '0});
`SHADD_6(384, p_s_1_00,   0,  63,  89, 131, 160, 220, {384'b0, p_s_0_00}, {384'b0, p_s_0_06}, {384'b0, p_s_0_12}, {384'b0, p_s_0_18}, {384'b0, p_s_0_24}, {384'b0, p_s_0_30});
`SHADD_6(135, p_s_1_06,   0,  32,  73, 131,   0,   0, {135'b0, p_s_0_36}, {135'b0, p_s_0_42}, {135'b0, p_s_0_48}, {135'b0, p_s_0_54}, {135'b0, '0}, {135'b0, '0});
`SHADD_6(384, p_s_2_00,   0, 249,   0,   0,   0,   0, {384'b0, p_s_1_00}, {384'b0, p_s_1_06}, {384'b0, '0}, {384'b0, '0}, {384'b0, '0}, {384'b0, '0});
assign out_p = p_s_2_00 << 0;
assign p_m_o = p_m_o_p[6-1];
always_ff@(posedge clk) p_m_o_p[0] <= m_i;
always_ff@(posedge clk) p_m_o_p[1] <= p_m_o_p[1-1];
always_ff@(posedge clk) p_m_o_p[2] <= p_m_o_p[2-1];
always_ff@(posedge clk) p_m_o_p[3] <= p_m_o_p[3-1];
always_ff@(posedge clk) p_m_o_p[4] <= p_m_o_p[4-1];
always_ff@(posedge clk) p_m_o_p[5] <= p_m_o_p[5-1];
logic [6-1:0][M-1:0] n_m_o_p;
logic [382-1:0] n_s_0_00;
logic [293-1:0] n_s_0_06;
logic [272-1:0] n_s_0_12;
logic [235-1:0] n_s_0_18;
logic [204-1:0] n_s_0_24;
logic [179-1:0] n_s_0_30;
logic [146-1:0] n_s_0_36;
logic [121-1:0] n_s_0_42;
logic [ 85-1:0] n_s_0_48;
logic [ 48-1:0] n_s_0_54;
logic [ 19-1:0] n_s_0_60;
logic [382-1:0] n_s_1_00;
logic [146-1:0] n_s_1_06;
logic [382-1:0] n_s_2_00;
`SHADD_6(382, n_s_0_00,   0,  16,  32,  50,  67,  84, {382'b0, in0[0+:382]}, {382'b0, in0[0+:366]}, {382'b0, in0[0+:350]}, {382'b0, in0[0+:332]}, {382'b0, in0[0+:315]}, {382'b0, in0[0+:298]});
`SHADD_6(293, n_s_0_06,   0,   2,   5,  12,  15,  18, {293'b0, in0[0+:293]}, {293'b0, in0[0+:291]}, {293'b0, in0[0+:288]}, {293'b0, in0[0+:281]}, {293'b0, in0[0+:278]}, {293'b0, in0[0+:275]});
`SHADD_6(272, n_s_0_12,   0,   2,   4,  24,  26,  32, {272'b0, in0[0+:272]}, {272'b0, in0[0+:270]}, {272'b0, in0[0+:268]}, {272'b0, in0[0+:248]}, {272'b0, in0[0+:246]}, {272'b0, in0[0+:240]});
`SHADD_6(235, n_s_0_18,   0,   9,  15,  19,  23,  27, {235'b0, in0[0+:235]}, {235'b0, in0[0+:226]}, {235'b0, in0[0+:220]}, {235'b0, in0[0+:216]}, {235'b0, in0[0+:212]}, {235'b0, in0[0+:208]});
`SHADD_6(204, n_s_0_24,   0,   4,   7,  14,  20,  22, {204'b0, in0[0+:204]}, {204'b0, in0[0+:200]}, {204'b0, in0[0+:197]}, {204'b0, in0[0+:190]}, {204'b0, in0[0+:184]}, {204'b0, in0[0+:182]});
`SHADD_6(179, n_s_0_30,   0,   3,   7,   9,  11,  20, {179'b0, in0[0+:179]}, {179'b0, in0[0+:176]}, {179'b0, in0[0+:172]}, {179'b0, in0[0+:170]}, {179'b0, in0[0+:168]}, {179'b0, in0[0+:159]});
`SHADD_6(146, n_s_0_36,   0,   4,   6,  13,  21,  23, {146'b0, in0[0+:146]}, {146'b0, in0[0+:142]}, {146'b0, in0[0+:140]}, {146'b0, in0[0+:133]}, {146'b0, in0[0+:125]}, {146'b0, in0[0+:123]});
`SHADD_6(121, n_s_0_42,   0,   7,  14,  22,  25,  33, {121'b0, in0[0+:121]}, {121'b0, in0[0+:114]}, {121'b0, in0[0+:107]}, {121'b0, in0[0+:99]}, {121'b0, in0[0+:96]}, {121'b0, in0[0+:88]});
`SHADD_6( 85, n_s_0_48,   0,   5,   9,  11,  18,  31, {85'b0, in0[0+:85]}, {85'b0, in0[0+:80]}, {85'b0, in0[0+:76]}, {85'b0, in0[0+:74]}, {85'b0, in0[0+:67]}, {85'b0, in0[0+:54]});
`SHADD_6( 48, n_s_0_54,   0,   2,   4,   6,   8,  16, {48'b0, in0[0+:48]}, {48'b0, in0[0+:46]}, {48'b0, in0[0+:44]}, {48'b0, in0[0+:42]}, {48'b0, in0[0+:40]}, {48'b0, in0[0+:32]});
`SHADD_6( 19, n_s_0_60,   0,   7,   9,  11,  17,   0, {19'b0, in0[0+:19]}, {19'b0, in0[0+:12]}, {19'b0, in0[0+:10]}, {19'b0, in0[0+:8]}, {19'b0, in0[0+:2]}, {19'b0, '0});
`SHADD_6(382, n_s_1_00,   0,  89, 110, 147, 178, 203, {382'b0, n_s_0_00}, {382'b0, n_s_0_06}, {382'b0, n_s_0_12}, {382'b0, n_s_0_18}, {382'b0, n_s_0_24}, {382'b0, n_s_0_30});
`SHADD_6(146, n_s_1_06,   0,  25,  61,  98, 127,   0, {146'b0, n_s_0_36}, {146'b0, n_s_0_42}, {146'b0, n_s_0_48}, {146'b0, n_s_0_54}, {146'b0, n_s_0_60}, {146'b0, '0});
`SHADD_6(382, n_s_2_00,   0, 236,   0,   0,   0,   0, {382'b0, n_s_1_00}, {382'b0, n_s_1_06}, {382'b0, '0}, {382'b0, '0}, {382'b0, '0}, {382'b0, '0});
assign out_n = n_s_2_00 << 2;
assign n_m_o = n_m_o_p[6-1];
always_ff@(posedge clk) n_m_o_p[0] <= m_i;
always_ff@(posedge clk) n_m_o_p[1] <= n_m_o_p[1-1];
always_ff@(posedge clk) n_m_o_p[2] <= n_m_o_p[2-1];
always_ff@(posedge clk) n_m_o_p[3] <= n_m_o_p[3-1];
always_ff@(posedge clk) n_m_o_p[4] <= n_m_o_p[4-1];
always_ff@(posedge clk) n_m_o_p[5] <= n_m_o_p[5-1];
always_ff@(posedge clk) out0 <= out_p - out_n + (1 << 384);
always_ff@(posedge clk) m_o <= p_m_o;