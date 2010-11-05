.loadlib 'perl6_ops'

.HLL "perl6"

.namespace []
.sub "_block90"  :anon :subid("106_1288975715.72644")
    .param pmc param_1111 :slurpy
.annotate 'line', 0
    .const 'Sub' $P95 = "107_1288975715.72644" 
    capture_lex $P95
.annotate 'line', 1
.annotate 'file', 'lib/Text/Wrap.pm'
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P92
    get_hll_global $P93, "!UNIT_START"
    .const 'Sub' $P95 = "107_1288975715.72644" 
    capture_lex $P95
    .lex "@_", param_1111
    $P1112 = $P93($P95, param_1111)
    .return ($P1112)
    .const 'Sub' $P1117 = "181_1288975715.72644" 
    .return ($P1117)
.end


.HLL "perl6"

.namespace []
.sub "_block94"  :anon :subid("107_1288975715.72644") :outer("106_1288975715.72644")
    .param pmc param_103 :optional
    .param int has_param_103 :opt_flag
.annotate 'line', 1
    get_hll_global $P106, ["Text";"Wrap"], "_block105" 
    capture_lex $P106
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P96
    find_lex_skip_current $P97, "$_"
    $P98 = new ['Perl6Scalar'], $P97
    setprop $P98, "rw", true
    .lex "$_", $P98
    find_lex_skip_current $P99, "$/"
    $P100 = new ['Perl6Scalar'], $P99
    setprop $P100, "rw", true
    .lex "$/", $P100
    find_lex_skip_current $P101, "$!"
    $P102 = new ['Perl6Scalar'], $P101
    setprop $P102, "rw", true
    .lex "$!", $P102
    if has_param_103, optparam_183
    new $P104, "Integer"
    assign $P104, 0
    set param_103, $P104
  optparam_183:
    .lex "$MAIN", param_103
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    $P0 = get_hll_global "@!recapture"
  recapture_loop:
    unless $P0 goto recapture_loop_end
    $P1 = shift $P0
    fixup_outer_ctx $P1
    goto recapture_loop
  recapture_loop_end:
    get_hll_global $P106, ["Text";"Wrap"], "_block105" 
    capture_lex $P106
    $P1110 = $P106()
    .return ($P1110)
.end


.HLL "perl6"

.namespace []
.sub "" :load :init :subid("post182") :outer("107_1288975715.72644")
.annotate 'line', 1
    .const 'Sub' $P95 = "107_1288975715.72644" 
    .local pmc block
    set block, $P95
    $P0 = find_name "!UNIT_OUTER"
    unless null $P0 goto have_perl6
    load_language "perl6"
  have_perl6:
    "!UNIT_OUTER"(block)
    "!gen_assign_metaop"("~")
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block105"  :subid("108_1288975715.72644") :outer("107_1288975715.72644")
.annotate 'line', 1
    .const 'Sub' $P935 = "169_1288975715.72644" 
    capture_lex $P935
    .const 'Sub' $P141 = "109_1288975715.72644" 
    capture_lex $P141
    .const 'Sub' $P124 = "64_1288975715.72644" 
    capture_lex $P124
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P107
    find_lex_skip_current $P108, "$_"
    $P109 = new ['Perl6Scalar'], $P108
    setprop $P109, "rw", true
    .lex "$_", $P109
    find_lex_skip_current $P110, "$/"
    $P111 = new ['Perl6Scalar'], $P110
    setprop $P111, "rw", true
    .lex "$/", $P111
    find_lex_skip_current $P112, "$!"
    $P113 = new ['Perl6Scalar'], $P112
    setprop $P113, "rw", true
    .lex "$!", $P113
.annotate 'line', 11
    get_global $P114, "$VERSION"
    unless_null $P114, vivify_185
    new $P114, "Perl6Scalar"
    setprop $P114, "rw", true
    setprop $P114, "scalar", true
    set_global "$VERSION", $P114
  vivify_185:
    .lex "$VERSION", $P114
    get_global $P115, "$columns"
    unless_null $P115, vivify_186
    new $P115, "Perl6Scalar"
    setprop $P115, "rw", true
    setprop $P115, "scalar", true
    set_global "$columns", $P115
  vivify_186:
    .lex "$columns", $P115
    get_global $P116, "$debug"
    unless_null $P116, vivify_187
    new $P116, "Perl6Scalar"
    setprop $P116, "rw", true
    setprop $P116, "scalar", true
    set_global "$debug", $P116
  vivify_187:
    .lex "$debug", $P116
    get_global $P117, "$break"
    unless_null $P117, vivify_188
    new $P117, "Perl6Scalar"
    setprop $P117, "rw", true
    setprop $P117, "scalar", true
    set_global "$break", $P117
  vivify_188:
    .lex "$break", $P117
    get_global $P118, "$huge"
    unless_null $P118, vivify_189
    new $P118, "Perl6Scalar"
    setprop $P118, "rw", true
    setprop $P118, "scalar", true
    set_global "$huge", $P118
  vivify_189:
    .lex "$huge", $P118
    get_global $P119, "$unexpand"
    unless_null $P119, vivify_190
    new $P119, "Perl6Scalar"
    setprop $P119, "rw", true
    setprop $P119, "scalar", true
    set_global "$unexpand", $P119
  vivify_190:
    .lex "$unexpand", $P119
    get_global $P120, "$tabstop"
    unless_null $P120, vivify_191
    new $P120, "Perl6Scalar"
    setprop $P120, "rw", true
    setprop $P120, "scalar", true
    set_global "$tabstop", $P120
  vivify_191:
    .lex "$tabstop", $P120
    get_global $P121, "$separator"
    unless_null $P121, vivify_192
    new $P121, "Perl6Scalar"
    setprop $P121, "rw", true
    setprop $P121, "scalar", true
    set_global "$separator", $P121
  vivify_192:
    .lex "$separator", $P121
    get_global $P122, "$separator2"
    unless_null $P122, vivify_193
    new $P122, "Perl6Scalar"
    setprop $P122, "rw", true
    setprop $P122, "scalar", true
    set_global "$separator2", $P122
  vivify_193:
    .lex "$separator2", $P122
.annotate 'line', 13
    null $P139
    .lex "&expand", $P139
    null $P140
    .lex "&unexpand", $P140
.annotate 'line', 29
    .local pmc code_98
    .const 'Sub' $P141 = "109_1288975715.72644" 
    capture_lex $P141
    get_hll_global $P932, "Sub"
    .const 'Sub' $P933 = "110_1288975715.72644" 
    $P934 = $P141."!get_closure"($P932, $P933, 0)
    set code_98, $P934
    .lex "&wrap", code_98
.annotate 'line', 145
    .local pmc code_105
.annotate 'line', 146
    .const 'Sub' $P935 = "169_1288975715.72644" 
    capture_lex $P935
    get_hll_global $P1076, "Sub"
    .const 'Sub' $P1077 = "170_1288975715.72644" 
    $P1078 = $P935."!get_closure"($P1076, $P1077, 0)
.annotate 'line', 145
    set code_105, $P1078
    .lex "&fill", code_105
.annotate 'line', 1
    get_hll_global $P1079, ["Perl6";"Module"], "Loader"
    $P1079."import"("Text::Tabs")
    find_lex $P1080, "$VERSION"
    unless_null $P1080, vivify_280
    new $P1080, "Perl6Scalar"
  vivify_280:
    find_lex $P1081, "$columns"
    unless_null $P1081, vivify_281
    new $P1081, "Perl6Scalar"
  vivify_281:
    find_lex $P1082, "$debug"
    unless_null $P1082, vivify_282
    new $P1082, "Perl6Scalar"
  vivify_282:
    find_lex $P1083, "$break"
    unless_null $P1083, vivify_283
    new $P1083, "Perl6Scalar"
  vivify_283:
    find_lex $P1084, "$huge"
    unless_null $P1084, vivify_284
    new $P1084, "Perl6Scalar"
  vivify_284:
    find_lex $P1085, "$unexpand"
    unless_null $P1085, vivify_285
    new $P1085, "Perl6Scalar"
  vivify_285:
    find_lex $P1086, "$tabstop"
    unless_null $P1086, vivify_286
    new $P1086, "Perl6Scalar"
  vivify_286:
    find_lex $P1087, "$separator"
    unless_null $P1087, vivify_287
    new $P1087, "Perl6Scalar"
  vivify_287:
    find_lex $P1088, "$separator2"
    unless_null $P1088, vivify_288
    new $P1088, "Perl6Scalar"
  vivify_288:
    "&infix:<,>"($P1080, $P1081, $P1082, $P1083, $P1084, $P1085, $P1086, $P1087, $P1088)
    "!get_phaser_result"("64_1288975715.72644")
.annotate 'line', 18
    find_lex $P1089, "$columns"
    new $P1090, "Int"
    assign $P1090, 76
    "&infix:<=>"($P1089, $P1090)
.annotate 'line', 19
    find_lex $P1091, "$debug"
    new $P1092, "Int"
    assign $P1092, 0
    "&infix:<=>"($P1091, $P1092)
.annotate 'line', 20
    find_lex $P1093, "$break"
    new $P1094, "Str"
    assign $P1094, "\\s"
    "&infix:<=>"($P1093, $P1094)
.annotate 'line', 21
    find_lex $P1095, "$huge"
    new $P1096, "Str"
    assign $P1096, "wrap"
    "&infix:<=>"($P1095, $P1096)
.annotate 'line', 22
    find_lex $P1097, "$unexpand"
    new $P1098, "Int"
    assign $P1098, 1
    "&infix:<=>"($P1097, $P1098)
.annotate 'line', 23
    find_lex $P1099, "$tabstop"
    new $P1100, "Int"
    assign $P1100, 8
    "&infix:<=>"($P1099, $P1100)
.annotate 'line', 24
    find_lex $P1101, "$separator"
    new $P1102, "Str"
    assign $P1102, "\n"
    "&infix:<=>"($P1101, $P1102)
.annotate 'line', 25
    find_lex $P1103, "$separator2"
.annotate 'line', 1
    .return (code_105)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post184") :outer("108_1288975715.72644")
.annotate 'line', 1
    get_hll_global $P106, ["Text";"Wrap"], "_block105" 
    .local pmc block
    set block, $P106
.annotate 'line', 13
    .const 'Sub' $P1104 = "64_1288975715.72644" 
    "!add_phaser"("BEGIN", $P1104)
    "!fire_phasers"("BEGIN")
    get_hll_global $P1105, ["Perl6";"Module"], "Loader"
    $P1106 = "&infix:<,>"()
    $P1107 = "&circumfix:<{ }>"($P1106)
    set $S1108, "$!storage"
    getattribute $P1109, $P1107, $S1108
    $P1105."need"("Text::Tabs", $P1109)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block123"  :anon :subid("64_1288975715.72644") :outer("108_1288975715.72644")
.annotate 'line', 13
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P125
    find_lex_skip_current $P126, "$_"
    $P127 = new ['Perl6Scalar'], $P126
    setprop $P127, "rw", true
    .lex "$_", $P127
    find_lex_skip_current $P128, "$/"
    $P129 = new ['Perl6Scalar'], $P128
    setprop $P129, "rw", true
    .lex "$/", $P129
    find_lex_skip_current $P130, "$!"
    $P131 = new ['Perl6Scalar'], $P130
    setprop $P131, "rw", true
    .lex "$!", $P131
.annotate 'line', 14
    $P132 = "!find_contextual"("@*INC")
    deref_unless_object $P133, $P132
    new $P134, "Str"
    assign $P134, "../"
    $P133."push"($P134)
.annotate 'line', 15
    $P135 = "!find_contextual"("@*INC")
    deref_unless_object $P136, $P135
    new $P137, "Str"
    assign $P137, "lib/"
    $P138 = $P136."push"($P137)
.annotate 'line', 13
    .return ($P138)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.include "except_types.pasm"
.sub "wrap"  :anon :subid("109_1288975715.72644") :outer("108_1288975715.72644")
    .param pmc param_165 :call_sig
.annotate 'line', 29
    .const 'Sub' $P353 = "121_1288975715.72644" 
    capture_lex $P353
    .const 'Sub' $P343 = "120_1288975715.72644" 
    capture_lex $P343
    .const 'Sub' $P291 = "118_1288975715.72644" 
    capture_lex $P291
    .const 'Sub' $P185 = "111_1288975715.72644" 
    capture_lex $P185
    .const 'Sub' $P171 = "110_1288975715.72644" 
    capture_lex $P171
    new $P143, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P143, control_142
    push_eh $P143
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P144
    $P145 = new ['Perl6Scalar']
    setprop $P145, "rw", true
    .lex "$_", $P145
    $P146 = new ['Perl6Scalar']
    setprop $P146, "rw", true
    .lex "$/", $P146
    $P147 = new ['Perl6Scalar']
    setprop $P147, "rw", true
    .lex "$!", $P147
.annotate 'line', 32
    new $P148, "Perl6Scalar"
    setprop $P148, "rw", true
    setprop $P148, "scalar", true
    .lex "$r", $P148
.annotate 'line', 33
    new $P149, "Perl6Scalar"
    setprop $P149, "rw", true
    setprop $P149, "scalar", true
    .lex "$tail", $P149
.annotate 'line', 35
    new $P150, "Array"
    setprop $P150, "rw", true
    set $P0, $P150
    get_hll_global $P151, "ContainerDeclarand"
    $P152 = $P151."new"($P0, "@yo" :named("name"))
    .local pmc declarand
    set declarand, $P152
    transform_to_p6opaque $P0
    $P153 = $P0
    .lex "@yo", $P153
.annotate 'line', 44
    new $P154, "Perl6Scalar"
    setprop $P154, "rw", true
    setprop $P154, "scalar", true
    .lex "$line", $P154
.annotate 'line', 45
    new $P155, "Perl6Scalar"
    setprop $P155, "rw", true
    setprop $P155, "scalar", true
    .lex "$t", $P155
.annotate 'line', 46
    new $P156, "Perl6Scalar"
    setprop $P156, "rw", true
    setprop $P156, "scalar", true
    .lex "$lead", $P156
.annotate 'line', 48
    new $P157, "Perl6Scalar"
    setprop $P157, "rw", true
    setprop $P157, "scalar", true
    .lex "$nll", $P157
.annotate 'line', 55
    new $P158, "Perl6Scalar"
    setprop $P158, "rw", true
    setprop $P158, "scalar", true
    .lex "$ll", $P158
.annotate 'line', 57
    new $P159, "Perl6Scalar"
    setprop $P159, "rw", true
    setprop $P159, "scalar", true
    .lex "$nl", $P159
.annotate 'line', 58
    new $P160, "Perl6Scalar"
    setprop $P160, "rw", true
    setprop $P160, "scalar", true
    .lex "$remainder", $P160
.annotate 'line', 67
    new $P161, "Array"
    setprop $P161, "rw", true
    set $P0, $P161
    get_hll_global $P162, "ContainerDeclarand"
    $P163 = $P162."new"($P0, "@lines" :named("name"))
    .local pmc declarand
    set declarand, $P163
    transform_to_p6opaque $P0
    $P164 = $P0
    .lex "@lines", $P164
    .lex "call_sig", param_165
    new $P166, "Perl6Scalar"
    .lex "$ip", $P166
    new $P167, "Perl6Scalar"
    .lex "$xp", $P167
    new $P168, "Array"
    .lex "@t", $P168
    find_lex $P169, "call_sig"
    bind_llsig $P169
.annotate 'line', 32
    find_lex $P176, "$r"
    new $P177, "Str"
    assign $P177, ""
    "&infix:<=>"($P176, $P177)
.annotate 'line', 33
    find_lex $P178, "$tail"
    find_lex $P179, "@t"
    $P180 = "&pop"($P179)
    "&infix:<=>"($P178, $P180)
.annotate 'line', 35
    find_lex $P181, "@yo"
.annotate 'line', 36
    find_lex $P182, "@t"
    $P183 = "&flat"($P182)
    .const 'Sub' $P185 = "111_1288975715.72644" 
    capture_lex $P185
    get_hll_global $P258, "Block"
    .const 'Sub' $P259 = "112_1288975715.72644" 
    $P260 = $P185."!get_closure"($P258, $P259, 0)
    $P261 = $P183."map"($P260)
    "&eager"($P261)
.annotate 'line', 44
    find_lex $P262, "$line"
    new $P263, "Str"
    assign $P263, ""
    find_lex $P264, "@yo"
    find_lex $P265, "$tail"
    $P266 = "&join"($P263, $P264, $P265)
    "&infix:<=>"($P262, $P266)
.annotate 'line', 45
    find_lex $P267, "$t"
    find_lex $P268, "$line"
    $P269 = "&expand"($P268)
    "&infix:<=>"($P267, $P269)
.annotate 'line', 46
    find_lex $P270, "$lead"
    find_lex $P271, "$ip"
    "&infix:<=>"($P270, $P271)
.annotate 'line', 48
    find_lex $P272, "$nll"
    find_lex $P273, "$columns"
    find_lex $P274, "$xp"
    $P275 = "&expand"($P274)
    deref_unless_object $P276, $P275
    $P277 = $P276."chars"()
    $P278 = "&infix:<->"($P273, $P277)
    new $P279, "Int"
    assign $P279, 1
    $P280 = "&infix:<->"($P278, $P279)
    "&infix:<=>"($P272, $P280)
.annotate 'line', 49
    find_lex $P285, "$nll"
    new $P286, "Int"
    assign $P286, 0
    $P284 = "&infix:<<=>"($P285, $P286)
  chain_end_202:
    if $P284, if_283
    set $P282, $P284
    goto if_283_end
  if_283:
    find_lex $P288, "$xp"
    new $P289, "Str"
    assign $P289, ""
    $P287 = "&infix:<ne>"($P288, $P289)
  chain_end_203:
    set $P282, $P287
  if_283_end:
    unless $P282, if_281_end
    .const 'Sub' $P291 = "118_1288975715.72644" 
    capture_lex $P291
    $P291()
  if_281_end:
.annotate 'line', 55
    find_lex $P319, "$ll"
    find_lex $P320, "$columns"
    find_lex $P321, "$ip"
    $P322 = "&expand"($P321)
    deref_unless_object $P323, $P322
    $P324 = $P323."chars"()
    $P325 = "&infix:<->"($P320, $P324)
    new $P326, "Int"
    assign $P326, 1
    $P327 = "&infix:<->"($P325, $P326)
    "&infix:<=>"($P319, $P327)
.annotate 'line', 56
    find_lex $P330, "$ll"
    new $P331, "Int"
    assign $P331, 0
    $P329 = "&infix:<<>"($P330, $P331)
  chain_end_205:
    if $P329, if_328
    get_hll_global $P334, "Nil"
    goto if_328_end
  if_328:
    find_lex $P332, "$ll"
    new $P333, "Int"
    assign $P333, 0
    "&infix:<=>"($P332, $P333)
  if_328_end:
.annotate 'line', 57
    find_lex $P335, "$nl"
    new $P336, "Str"
    assign $P336, ""
    "&infix:<=>"($P335, $P336)
.annotate 'line', 58
    find_lex $P337, "$remainder"
    new $P338, "Str"
    assign $P338, ""
    "&infix:<=>"($P337, $P338)
.annotate 'line', 67
    find_lex $P339, "@lines"
    find_lex $P340, "$t"
    deref_unless_object $P341, $P340
    .const 'Sub' $P343 = "120_1288975715.72644" 
    capture_lex $P343
    get_hll_global $P347, "Regex"
    $P348 = $P343."!get_closure"($P347, 0)
    $P349 = $P341."comb"($P348)
    "&infix:<=>"($P339, $P349)
.annotate 'line', 68
    find_lex $P350, "@lines"
    $P351 = "&flat"($P350)
    .const 'Sub' $P353 = "121_1288975715.72644" 
    capture_lex $P353
    get_hll_global $P891, "Block"
    .const 'Sub' $P892 = "122_1288975715.72644" 
    $P893 = $P353."!get_closure"($P891, $P892, 0)
    $P894 = $P351."map"($P893)
    "&eager"($P894)
.annotate 'line', 129
    find_lex $P895, "$r"
    find_lex $P896, "$remainder"
    "&infix:<~=>"($P895, $P896)
.annotate 'line', 131
    find_lex $P898, "$debug"
    if $P898, if_897
    get_hll_global $P905, "Nil"
    goto if_897_end
  if_897:
    new $P899, "Str"
    assign $P899, "-----------"
    find_lex $P900, "$r"
    set $S901, $P900
    concat $P902, $P899, $S901
    new $P903, "Str"
    assign $P903, "---------\n"
    concat $P904, $P902, $P903
    "&print"($P904)
  if_897_end:
.annotate 'line', 133
    find_lex $P907, "$debug"
    if $P907, if_906
    get_hll_global $P914, "Nil"
    goto if_906_end
  if_906:
    new $P908, "Str"
    assign $P908, "Finish up with '"
    find_lex $P909, "$lead"
    set $S910, $P909
    concat $P911, $P908, $S910
    new $P912, "Str"
    assign $P912, "'\n"
    concat $P913, $P911, $P912
    "&print"($P913)
  if_906_end:
.annotate 'line', 141
    find_lex $P916, "$debug"
    if $P916, if_915
    get_hll_global $P923, "Nil"
    goto if_915_end
  if_915:
    new $P917, "Str"
    assign $P917, "-----------"
    find_lex $P918, "$r"
    set $S919, $P918
    concat $P920, $P917, $S919
    new $P921, "Str"
    assign $P921, "---------\n"
    concat $P922, $P920, $P921
    "&print"($P922)
  if_915_end:
.annotate 'line', 142
    find_lex $P924, "$r"
    $P925 = "&return"($P924)
.annotate 'line', 29
    .return ($P925)
  control_142:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P926, exception, "payload"
    .return ($P926)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post194") :outer("109_1288975715.72644")
.annotate 'line', 29
    .const 'Sub' $P141 = "109_1288975715.72644" 
    .local pmc block
    set block, $P141
    .local pmc trait_subject
    .const 'Sub' $P927 = "109_1288975715.72644" 
    get_hll_global $P928, "Sub"
    .const 'Sub' $P929 = "110_1288975715.72644" 
    $P930 = $P927."!get_code"($P928, $P929)
    set trait_subject, $P930
    get_hll_global $P931, ["Bool"], "True"
    "&trait_mod:<is>"(trait_subject, $P931 :named("export"))
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block170"  :anon :subid("110_1288975715.72644") :outer("109_1288975715.72644")
.annotate 'line', 67
    $P172 = allocate_llsig 3
    .local pmc signature_97
    set signature_97, $P172
    null $P0
    null $S0
    get_hll_global $P173, "Any"
    set_llsig_elem signature_97, 0, "$ip", 128, $P173, $P0, $P0, $P0, $P0, $P0, $S0
    get_hll_global $P174, "Any"
    set_llsig_elem signature_97, 1, "$xp", 128, $P174, $P0, $P0, $P0, $P0, $P0, $S0
    get_global $P175, "Mu"
    set_llsig_elem signature_97, 2, "@t", 4232, $P175, $P0, $P0, $P0, $P0, $P0, $S0
    .local pmc signature
    set signature, signature_97
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block184"  :anon :subid("111_1288975715.72644") :outer("109_1288975715.72644")
    .param pmc param_191 :call_sig
.annotate 'line', 36
    .const 'Sub' $P234 = "116_1288975715.72644" 
    capture_lex $P234
    .const 'Sub' $P213 = "114_1288975715.72644" 
    capture_lex $P213
    .const 'Sub' $P203 = "113_1288975715.72644" 
    capture_lex $P203
    .const 'Sub' $P195 = "112_1288975715.72644" 
    capture_lex $P195
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P186
    find_lex_skip_current $P187, "$/"
    $P188 = new ['Perl6Scalar'], $P187
    setprop $P188, "rw", true
    .lex "$/", $P188
    find_lex_skip_current $P189, "$!"
    $P190 = new ['Perl6Scalar'], $P189
    setprop $P190, "rw", true
    .lex "$!", $P190
    .lex "call_sig", param_191
    new $P192, "Perl6Scalar"
    .lex "$x", $P192
    find_lex $P193, "call_sig"
    bind_llsig $P193
.annotate 'line', 37
    find_lex $P200, "$_"
    .local pmc old_topic65
    set old_topic65, $P200
    find_lex $P201, "$x"
    store_lex "$_", $P201
    .const 'Sub' $P203 = "113_1288975715.72644" 
    capture_lex $P203
    get_hll_global $P207, "Regex"
    $P208 = $P203."!get_closure"($P207, 0)
    find_lex $P209, "$_"
    $P210 = $P208."ACCEPTS"($P209)
    .lex "sm_result66", $P210
    store_lex "$_", old_topic65
    find_lex $P211, "sm_result66"
    if $P211, if_199
.annotate 'line', 40
    .const 'Sub' $P234 = "116_1288975715.72644" 
    capture_lex $P234
    $P255 = $P234()
    set $P198, $P255
.annotate 'line', 37
    goto if_199_end
  if_199:
    .const 'Sub' $P213 = "114_1288975715.72644" 
    capture_lex $P213
    $P232 = $P213()
    set $P198, $P232
  if_199_end:
.annotate 'line', 36
    .return ($P198)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post195") :outer("111_1288975715.72644")
.annotate 'line', 36
    .const 'Sub' $P185 = "111_1288975715.72644" 
    .local pmc block
    set block, $P185
    .const 'Sub' $P256 = "111_1288975715.72644" 
    .const 'Sub' $P257 = "112_1288975715.72644" 
    setprop $P256, "$!lazysig", $P257
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block194"  :anon :subid("112_1288975715.72644") :outer("111_1288975715.72644")
.annotate 'line', 36
    $P196 = allocate_llsig 1
    .local pmc signature_69
    set signature_69, $P196
    null $P0
    null $S0
    get_hll_global $P197, "Mu"
    set_llsig_elem signature_69, 0, "$x", 128, $P197, $P0, $P0, $P0, $P0, $P0, $S0
    .local pmc signature
    set signature, signature_69
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block202"  :anon :subid("113_1288975715.72644") :method :outer("111_1288975715.72644")
.annotate 'line', 37
    .local string rx204_tgt
    .local int rx204_pos
    .local int rx204_off
    .local int rx204_eos
    .local int rx204_rep
    .local pmc rx204_cur
    .local pmc rx204_debug
    (rx204_cur, rx204_pos, rx204_tgt, $I10) = self."!cursor_start"()
    getattribute rx204_debug, rx204_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx204_cur
    .local pmc match
    .lex "$/", match
    length rx204_eos, rx204_tgt
    gt rx204_pos, rx204_eos, rx204_done
    set rx204_off, 0
    lt rx204_pos, 2, rx204_start
    sub rx204_off, rx204_pos, 1
    substr rx204_tgt, rx204_tgt, rx204_off
  rx204_start:
    eq $I10, 1, rx204_restart
    if_null rx204_debug, debug_196
    rx204_cur."!cursor_debug"("START", "")
  debug_196:
    $I10 = self.'from'()
    ne $I10, -1, rxscan205_done
    goto rxscan205_scan
  rxscan205_loop:
    ($P10) = rx204_cur."from"()
    inc $P10
    set rx204_pos, $P10
    ge rx204_pos, rx204_eos, rxscan205_done
  rxscan205_scan:
    set_addr $I10, rxscan205_loop
    rx204_cur."!mark_push"(0, rx204_pos, $I10)
  rxscan205_done:
  # rx rxquantg206 ** 1..*
  rxquantg206_loop:
  # rx charclass s
    ge rx204_pos, rx204_eos, rx204_fail
    sub $I10, rx204_pos, rx204_off
    is_cclass $I11, 32, rx204_tgt, $I10
    unless $I11, rx204_fail
    inc rx204_pos
    set_addr $I10, rxquantg206_done
    rx204_cur."!mark_push"(rx204_rep, rx204_pos, $I10)
    goto rxquantg206_loop
  rxquantg206_done:
  # rxanchor eos
    ne rx204_pos, rx204_eos, rx204_fail
  # rx pass
    rx204_cur."!cursor_pass"(rx204_pos, "")
    if_null rx204_debug, debug_197
    rx204_cur."!cursor_debug"("PASS", "", " at pos=", rx204_pos)
  debug_197:
    rx204_cur."!cursor_backtrack"()
    .return (rx204_cur)
  rx204_restart:
    if_null rx204_debug, debug_198
    rx204_cur."!cursor_debug"("NEXT", "")
  debug_198:
  rx204_fail:
    (rx204_rep, rx204_pos, $I10, $P10) = rx204_cur."!mark_fail"(0)
    lt rx204_pos, -1, rx204_done
    eq rx204_pos, -1, rx204_fail
    jump $I10
  rx204_done:
    rx204_cur."!cursor_fail"()
    if_null rx204_debug, debug_199
    rx204_cur."!cursor_debug"("FAIL", "")
  debug_199:
    .return (rx204_cur)
    .return ()
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block233"  :anon :subid("116_1288975715.72644") :outer("111_1288975715.72644")
    .param pmc param_242 :call_sig
.annotate 'line', 40
    .const 'Sub' $P245 = "117_1288975715.72644" 
    capture_lex $P245
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P235
    find_lex_skip_current $P236, "$_"
    $P237 = new ['Perl6Scalar'], $P236
    setprop $P237, "rw", true
    .lex "$_", $P237
    find_lex_skip_current $P238, "$/"
    $P239 = new ['Perl6Scalar'], $P238
    setprop $P239, "rw", true
    .lex "$/", $P239
    find_lex_skip_current $P240, "$!"
    $P241 = new ['Perl6Scalar'], $P240
    setprop $P241, "rw", true
    .lex "$!", $P241
    .lex "call_sig", param_242
    find_lex $P243, "call_sig"
    bind_llsig $P243
.annotate 'line', 41
    find_lex $P247, "@yo"
    deref_unless_object $P248, $P247
    find_lex $P249, "$_"
    new $P250, "Str"
    assign $P250, " "
    $P251 = "&infix:<~>"($P249, $P250)
    $P252 = $P248."push"($P251)
.annotate 'line', 40
    .return ($P252)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post200") :outer("116_1288975715.72644")
.annotate 'line', 40
    .const 'Sub' $P234 = "116_1288975715.72644" 
    .local pmc block
    set block, $P234
    .const 'Sub' $P253 = "116_1288975715.72644" 
    .const 'Sub' $P254 = "117_1288975715.72644" 
    setprop $P253, "$!lazysig", $P254
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block244"  :anon :subid("117_1288975715.72644") :outer("116_1288975715.72644")
.annotate 'line', 40
    $P246 = allocate_llsig 0
    .local pmc signature_68
    set signature_68, $P246
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_68
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block212"  :anon :subid("114_1288975715.72644") :outer("111_1288975715.72644")
    .param pmc param_221 :call_sig
.annotate 'line', 37
    .const 'Sub' $P224 = "115_1288975715.72644" 
    capture_lex $P224
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P214
    find_lex_skip_current $P215, "$_"
    $P216 = new ['Perl6Scalar'], $P215
    setprop $P216, "rw", true
    .lex "$_", $P216
    find_lex_skip_current $P217, "$/"
    $P218 = new ['Perl6Scalar'], $P217
    setprop $P218, "rw", true
    .lex "$/", $P218
    find_lex_skip_current $P219, "$!"
    $P220 = new ['Perl6Scalar'], $P219
    setprop $P220, "rw", true
    .lex "$!", $P220
    .lex "call_sig", param_221
    find_lex $P222, "call_sig"
    bind_llsig $P222
.annotate 'line', 38
    find_lex $P226, "@yo"
    deref_unless_object $P227, $P226
    find_lex $P228, "$_"
    $P229 = $P227."push"($P228)
.annotate 'line', 37
    .return ($P229)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post201") :outer("114_1288975715.72644")
.annotate 'line', 37
    .const 'Sub' $P213 = "114_1288975715.72644" 
    .local pmc block
    set block, $P213
    .const 'Sub' $P230 = "114_1288975715.72644" 
    .const 'Sub' $P231 = "115_1288975715.72644" 
    setprop $P230, "$!lazysig", $P231
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block223"  :anon :subid("115_1288975715.72644") :outer("114_1288975715.72644")
.annotate 'line', 37
    $P225 = allocate_llsig 0
    .local pmc signature_67
    set signature_67, $P225
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_67
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block290"  :anon :subid("118_1288975715.72644") :outer("109_1288975715.72644")
    .param pmc param_300 :call_sig
.annotate 'line', 49
    .const 'Sub' $P303 = "119_1288975715.72644" 
    capture_lex $P303
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P292
    find_lex_skip_current $P293, "$_"
    $P294 = new ['Perl6Scalar'], $P293
    setprop $P294, "rw", true
    .lex "$_", $P294
    find_lex_skip_current $P295, "$/"
    $P296 = new ['Perl6Scalar'], $P295
    setprop $P296, "rw", true
    .lex "$/", $P296
    find_lex_skip_current $P297, "$!"
    $P298 = new ['Perl6Scalar'], $P297
    setprop $P298, "rw", true
    .lex "$!", $P298
.annotate 'line', 50
    new $P299, "Perl6Scalar"
    setprop $P299, "rw", true
    setprop $P299, "scalar", true
    .lex "$nc", $P299
    .lex "call_sig", param_300
    find_lex $P301, "call_sig"
    bind_llsig $P301
    find_lex $P305, "$nc"
    find_lex $P306, "$xp"
    $P307 = "&expand"($P306)
    deref_unless_object $P308, $P307
    $P309 = $P308."chars"()
    new $P310, "Int"
    assign $P310, 2
    $P311 = "&infix:<+>"($P309, $P310)
    "&infix:<=>"($P305, $P311)
.annotate 'line', 52
    find_lex $P312, "$columns"
    find_lex $P313, "$nc"
    "&infix:<=>"($P312, $P313)
.annotate 'line', 53
    find_lex $P314, "$nll"
    new $P315, "Int"
    assign $P315, 1
    $P316 = "&infix:<=>"($P314, $P315)
.annotate 'line', 49
    .return ($P316)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post204") :outer("118_1288975715.72644")
.annotate 'line', 49
    .const 'Sub' $P291 = "118_1288975715.72644" 
    .local pmc block
    set block, $P291
    .const 'Sub' $P317 = "118_1288975715.72644" 
    .const 'Sub' $P318 = "119_1288975715.72644" 
    setprop $P317, "$!lazysig", $P318
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block302"  :anon :subid("119_1288975715.72644") :outer("118_1288975715.72644")
.annotate 'line', 50
    $P304 = allocate_llsig 0
    .local pmc signature_70
    set signature_70, $P304
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_70
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block342"  :anon :subid("120_1288975715.72644") :method :outer("109_1288975715.72644")
.annotate 'line', 67
    .local string rx344_tgt
    .local int rx344_pos
    .local int rx344_off
    .local int rx344_eos
    .local int rx344_rep
    .local pmc rx344_cur
    .local pmc rx344_debug
    (rx344_cur, rx344_pos, rx344_tgt, $I10) = self."!cursor_start"()
    getattribute rx344_debug, rx344_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx344_cur
    .local pmc match
    .lex "$/", match
    length rx344_eos, rx344_tgt
    gt rx344_pos, rx344_eos, rx344_done
    set rx344_off, 0
    lt rx344_pos, 2, rx344_start
    sub rx344_off, rx344_pos, 1
    substr rx344_tgt, rx344_tgt, rx344_off
  rx344_start:
    eq $I10, 1, rx344_restart
    if_null rx344_debug, debug_206
    rx344_cur."!cursor_debug"("START", "")
  debug_206:
    $I10 = self.'from'()
    ne $I10, -1, rxscan345_done
    goto rxscan345_scan
  rxscan345_loop:
    ($P10) = rx344_cur."from"()
    inc $P10
    set rx344_pos, $P10
    ge rx344_pos, rx344_eos, rxscan345_done
  rxscan345_scan:
    set_addr $I10, rxscan345_loop
    rx344_cur."!mark_push"(0, rx344_pos, $I10)
  rxscan345_done:
  # rx rxquantg346 ** 1..*
  rxquantg346_loop:
  # rx charclass N
    ge rx344_pos, rx344_eos, rx344_fail
    sub $I10, rx344_pos, rx344_off
    is_cclass $I11, 4096, rx344_tgt, $I10
    if $I11, rx344_fail
    inc rx344_pos
    set_addr $I10, rxquantg346_done
    rx344_cur."!mark_push"(rx344_rep, rx344_pos, $I10)
    goto rxquantg346_loop
  rxquantg346_done:
  # rx pass
    rx344_cur."!cursor_pass"(rx344_pos, "")
    if_null rx344_debug, debug_207
    rx344_cur."!cursor_debug"("PASS", "", " at pos=", rx344_pos)
  debug_207:
    rx344_cur."!cursor_backtrack"()
    .return (rx344_cur)
  rx344_restart:
    if_null rx344_debug, debug_208
    rx344_cur."!cursor_debug"("NEXT", "")
  debug_208:
  rx344_fail:
    (rx344_rep, rx344_pos, $I10, $P10) = rx344_cur."!mark_fail"(0)
    lt rx344_pos, -1, rx344_done
    eq rx344_pos, -1, rx344_fail
    jump $I10
  rx344_done:
    rx344_cur."!cursor_fail"()
    if_null rx344_debug, debug_209
    rx344_cur."!cursor_debug"("FAIL", "")
  debug_209:
    .return (rx344_cur)
    .return ()
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block352"  :anon :subid("121_1288975715.72644") :outer("109_1288975715.72644")
    .param pmc param_359 :call_sig
.annotate 'line', 68
    .const 'Sub' $P870 = "167_1288975715.72644" 
    capture_lex $P870
    .const 'Sub' $P808 = "161_1288975715.72644" 
    capture_lex $P808
    .const 'Sub' $P786 = "159_1288975715.72644" 
    capture_lex $P786
    .const 'Sub' $P762 = "157_1288975715.72644" 
    capture_lex $P762
    .const 'Sub' $P739 = "155_1288975715.72644" 
    capture_lex $P739
    .const 'Sub' $P712 = "153_1288975715.72644" 
    capture_lex $P712
    .const 'Sub' $P637 = "147_1288975715.72644" 
    capture_lex $P637
    .const 'Sub' $P611 = "144_1288975715.72644" 
    capture_lex $P611
    .const 'Sub' $P493 = "134_1288975715.72644" 
    capture_lex $P493
    .const 'Sub' $P478 = "132_1288975715.72644" 
    capture_lex $P478
    .const 'Sub' $P399 = "126_1288975715.72644" 
    capture_lex $P399
    .const 'Sub' $P372 = "123_1288975715.72644" 
    capture_lex $P372
    .const 'Sub' $P363 = "122_1288975715.72644" 
    capture_lex $P363
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P354
    find_lex_skip_current $P355, "$/"
    $P356 = new ['Perl6Scalar'], $P355
    setprop $P356, "rw", true
    .lex "$/", $P356
    find_lex_skip_current $P357, "$!"
    $P358 = new ['Perl6Scalar'], $P357
    setprop $P358, "rw", true
    .lex "$!", $P358
    .lex "call_sig", param_359
    new $P360, "Perl6Scalar"
    .lex "$t", $P360
    find_lex $P361, "call_sig"
    bind_llsig $P361
.annotate 'line', 71
    find_lex $P367, "$_"
    .local pmc old_topic71
    set old_topic71, $P367
    find_lex $P368, "$t"
    store_lex "$_", $P368
    find_lex $P369, "$/"
    find_lex $P370, "$_"
    .const 'Sub' $P372 = "123_1288975715.72644" 
    capture_lex $P372
    get_hll_global $P391, "Regex"
    $P392 = $P372."!get_closure"($P391, 0)
    $P393 = $P370."match"($P392)
    $P394 = "&infix:<:=>"($P369, $P393)
    find_lex $P395, "$_"
    $P396 = $P394."ACCEPTS"($P395)
    .lex "sm_result72", $P396
    store_lex "$_", old_topic71
    find_lex $P397, "sm_result72"
    if $P397, if_366
.annotate 'line', 82
    find_lex $P473, "$huge"
    new $P474, "Str"
    assign $P474, "wrap"
    $P472 = "&infix:<eq>"($P473, $P474)
  chain_end_223:
    if $P472, if_471
    set $P470, $P472
    goto if_471_end
  if_471:
    find_lex $P475, "$_"
    .local pmc old_topic76
    set old_topic76, $P475
    find_lex $P476, "$t"
    store_lex "$_", $P476
    .const 'Sub' $P478 = "132_1288975715.72644" 
    capture_lex $P478
    get_hll_global $P487, "Regex"
    $P488 = $P478."!get_closure"($P487, 0)
    find_lex $P489, "$_"
    $P490 = $P488."ACCEPTS"($P489)
    .lex "sm_result77", $P490
    store_lex "$_", old_topic76
    find_lex $P491, "sm_result77"
    set $P470, $P491
  if_471_end:
    if $P470, if_469
.annotate 'line', 95
    find_lex $P606, "$huge"
    new $P607, "Str"
    assign $P607, "overflow"
    $P605 = "&infix:<eq>"($P606, $P607)
  chain_end_232:
    if $P605, if_604
    set $P603, $P605
    goto if_604_end
  if_604:
    find_lex $P608, "$_"
    .local pmc old_topic83
    set old_topic83, $P608
    find_lex $P609, "$t"
    store_lex "$_", $P609
    .const 'Sub' $P611 = "144_1288975715.72644" 
    capture_lex $P611
    get_hll_global $P631, "Regex"
    $P632 = $P611."!get_closure"($P631, 0)
    find_lex $P633, "$_"
    $P634 = $P632."ACCEPTS"($P633)
    .lex "sm_result84", $P634
    store_lex "$_", old_topic83
    find_lex $P635, "sm_result84"
    set $P603, $P635
  if_604_end:
    if $P603, if_602
.annotate 'line', 103
    find_lex $P709, "$huge"
    new $P710, "Str"
    assign $P710, "die"
    $P708 = "&infix:<eq>"($P709, $P710)
  chain_end_245:
    if $P708, if_707
.annotate 'line', 105
    find_lex $P736, "$columns"
    new $P737, "Int"
    assign $P737, 2
    $P735 = "&infix:<<>"($P736, $P737)
  chain_end_246:
    if $P735, if_734
.annotate 'line', 109
    .const 'Sub' $P762 = "157_1288975715.72644" 
    capture_lex $P762
    $P762()
    goto if_734_end
  if_734:
.annotate 'line', 105
    .const 'Sub' $P739 = "155_1288975715.72644" 
    capture_lex $P739
    $P739()
  if_734_end:
    goto if_707_end
  if_707:
.annotate 'line', 103
    .const 'Sub' $P712 = "153_1288975715.72644" 
    capture_lex $P712
    $P712()
  if_707_end:
    goto if_602_end
  if_602:
.annotate 'line', 95
    .const 'Sub' $P637 = "147_1288975715.72644" 
    capture_lex $P637
    $P637()
  if_602_end:
    goto if_469_end
  if_469:
.annotate 'line', 82
    .const 'Sub' $P493 = "134_1288975715.72644" 
    capture_lex $P493
    $P493()
  if_469_end:
    goto if_366_end
  if_366:
.annotate 'line', 71
    .const 'Sub' $P399 = "126_1288975715.72644" 
    capture_lex $P399
    $P399()
  if_366_end:
.annotate 'line', 113
    find_lex $P779, "$lead"
    find_lex $P780, "$xp"
    "&infix:<=>"($P779, $P780)
.annotate 'line', 114
    find_lex $P781, "$ll"
    find_lex $P782, "$nll"
    "&infix:<=>"($P781, $P782)
.annotate 'line', 115
    find_lex $P784, "$separator2"
    unless $P784, if_783_end
    .const 'Sub' $P786 = "159_1288975715.72644" 
    capture_lex $P786
    $P786()
  if_783_end:
.annotate 'line', 118
    find_lex $P806, "$separator2"
    if $P806, if_805
.annotate 'line', 125
    .const 'Sub' $P870 = "167_1288975715.72644" 
    capture_lex $P870
    $P888 = $P870()
    set $P804, $P888
.annotate 'line', 118
    goto if_805_end
  if_805:
    .const 'Sub' $P808 = "161_1288975715.72644" 
    capture_lex $P808
    $P868 = $P808()
    set $P804, $P868
  if_805_end:
.annotate 'line', 68
    .return ($P804)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post210") :outer("121_1288975715.72644")
.annotate 'line', 68
    .const 'Sub' $P353 = "121_1288975715.72644" 
    .local pmc block
    set block, $P353
    .const 'Sub' $P889 = "121_1288975715.72644" 
    .const 'Sub' $P890 = "122_1288975715.72644" 
    setprop $P889, "$!lazysig", $P890
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block362"  :anon :subid("122_1288975715.72644") :outer("121_1288975715.72644")
.annotate 'line', 68
    $P364 = allocate_llsig 1
    .local pmc signature_96
    set signature_96, $P364
    null $P0
    null $S0
    get_hll_global $P365, "Mu"
    set_llsig_elem signature_96, 0, "$t", 128, $P365, $P0, $P0, $P0, $P0, $P0, $S0
    .local pmc signature
    set signature, signature_96
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block371"  :anon :subid("123_1288975715.72644") :method :outer("121_1288975715.72644")
.annotate 'line', 71
    .const 'Sub' $P382 = "125_1288975715.72644" 
    capture_lex $P382
    .const 'Sub' $P376 = "124_1288975715.72644" 
    capture_lex $P376
    .local string rx373_tgt
    .local int rx373_pos
    .local int rx373_off
    .local int rx373_eos
    .local int rx373_rep
    .local pmc rx373_cur
    .local pmc rx373_debug
    (rx373_cur, rx373_pos, rx373_tgt, $I10) = self."!cursor_start"()
    getattribute rx373_debug, rx373_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx373_cur
    .local pmc match
    .lex "$/", match
    length rx373_eos, rx373_tgt
    gt rx373_pos, rx373_eos, rx373_done
    set rx373_off, 0
    lt rx373_pos, 2, rx373_start
    sub rx373_off, rx373_pos, 1
    substr rx373_tgt, rx373_tgt, rx373_off
  rx373_start:
    eq $I10, 1, rx373_restart
    if_null rx373_debug, debug_211
    rx373_cur."!cursor_debug"("START", "")
  debug_211:
    $I10 = self.'from'()
    ne $I10, -1, rxscan374_done
    goto rxscan374_scan
  rxscan374_loop:
    ($P10) = rx373_cur."from"()
    inc $P10
    set rx373_pos, $P10
    ge rx373_pos, rx373_eos, rxscan374_done
  rxscan374_scan:
    set_addr $I10, rxscan374_loop
    rx373_cur."!mark_push"(0, rx373_pos, $I10)
  rxscan374_done:
  # rx subrule $P376 subtype=capture negate=
    rx373_cur."!cursor_pos"(rx373_pos)
    .const 'Sub' $P376 = "124_1288975715.72644" 
    capture_lex $P376
    $P10 = rx373_cur.$P376()
    unless $P10, rx373_fail
    goto rxsubrule380_pass
  rxsubrule380_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx373_fail
  rxsubrule380_pass:
    set_addr $I10, rxsubrule380_back
    rx373_cur."!mark_push"(0, rx373_pos, $I10, $P10)
    $P10."!cursor_names"(0)
    rx373_pos = $P10."pos"()
  # rx subrule $P382 subtype=capture negate=
    rx373_cur."!cursor_pos"(rx373_pos)
    .const 'Sub' $P382 = "125_1288975715.72644" 
    capture_lex $P382
    $P10 = rx373_cur.$P382()
    unless $P10, rx373_fail
    goto rxsubrule390_pass
  rxsubrule390_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx373_fail
  rxsubrule390_pass:
    set_addr $I10, rxsubrule390_back
    rx373_cur."!mark_push"(0, rx373_pos, $I10, $P10)
    $P10."!cursor_names"("1")
    rx373_pos = $P10."pos"()
  # rx pass
    rx373_cur."!cursor_pass"(rx373_pos, "")
    if_null rx373_debug, debug_220
    rx373_cur."!cursor_debug"("PASS", "", " at pos=", rx373_pos)
  debug_220:
    rx373_cur."!cursor_backtrack"()
    .return (rx373_cur)
  rx373_restart:
    if_null rx373_debug, debug_221
    rx373_cur."!cursor_debug"("NEXT", "")
  debug_221:
  rx373_fail:
    (rx373_rep, rx373_pos, $I10, $P10) = rx373_cur."!mark_fail"(0)
    lt rx373_pos, -1, rx373_done
    eq rx373_pos, -1, rx373_fail
    jump $I10
  rx373_done:
    rx373_cur."!cursor_fail"()
    if_null rx373_debug, debug_222
    rx373_cur."!cursor_debug"("FAIL", "")
  debug_222:
    .return (rx373_cur)
    .return ()
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block375"  :anon :subid("124_1288975715.72644") :method :outer("123_1288975715.72644")
.annotate 'line', 71
    .local string rx377_tgt
    .local int rx377_pos
    .local int rx377_off
    .local int rx377_eos
    .local int rx377_rep
    .local pmc rx377_cur
    .local pmc rx377_debug
    (rx377_cur, rx377_pos, rx377_tgt, $I10) = self."!cursor_start"()
    getattribute rx377_debug, rx377_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx377_cur
    .local pmc match
    .lex "$/", match
    length rx377_eos, rx377_tgt
    gt rx377_pos, rx377_eos, rx377_done
    set rx377_off, 0
    lt rx377_pos, 2, rx377_start
    sub rx377_off, rx377_pos, 1
    substr rx377_tgt, rx377_tgt, rx377_off
  rx377_start:
    eq $I10, 1, rx377_restart
    if_null rx377_debug, debug_212
    rx377_cur."!cursor_debug"("START", "")
  debug_212:
    $I10 = self.'from'()
    ne $I10, -1, rxscan378_done
    goto rxscan378_scan
  rxscan378_loop:
    ($P10) = rx377_cur."from"()
    inc $P10
    set rx377_pos, $P10
    ge rx377_pos, rx377_eos, rxscan378_done
  rxscan378_scan:
    set_addr $I10, rxscan378_loop
    rx377_cur."!mark_push"(0, rx377_pos, $I10)
  rxscan378_done:
  # rx rxquantg379 ** 0..71
    set_addr $I10, rxquantg379_done
    rx377_cur."!mark_push"(0, rx377_pos, $I10)
  rxquantg379_loop:
  # rx charclass N
    ge rx377_pos, rx377_eos, rx377_fail
    sub $I10, rx377_pos, rx377_off
    is_cclass $I11, 4096, rx377_tgt, $I10
    if $I11, rx377_fail
    inc rx377_pos
    set_addr $I10, rxquantg379_done
    (rx377_rep) = rx377_cur."!mark_peek"($I10)
    inc rx377_rep
    ge rx377_rep, 71, rxquantg379_done
    set_addr $I10, rxquantg379_done
    rx377_cur."!mark_push"(rx377_rep, rx377_pos, $I10)
    goto rxquantg379_loop
  rxquantg379_done:
  # rx pass
    rx377_cur."!cursor_pass"(rx377_pos, "")
    if_null rx377_debug, debug_213
    rx377_cur."!cursor_debug"("PASS", "", " at pos=", rx377_pos)
  debug_213:
    rx377_cur."!cursor_backtrack"()
    .return (rx377_cur)
  rx377_restart:
    if_null rx377_debug, debug_214
    rx377_cur."!cursor_debug"("NEXT", "")
  debug_214:
  rx377_fail:
    (rx377_rep, rx377_pos, $I10, $P10) = rx377_cur."!mark_fail"(0)
    lt rx377_pos, -1, rx377_done
    eq rx377_pos, -1, rx377_fail
    jump $I10
  rx377_done:
    rx377_cur."!cursor_fail"()
    if_null rx377_debug, debug_215
    rx377_cur."!cursor_debug"("FAIL", "")
  debug_215:
    .return (rx377_cur)
    .return ()
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block381"  :anon :subid("125_1288975715.72644") :method :outer("123_1288975715.72644")
.annotate 'line', 71
    .local string rx383_tgt
    .local int rx383_pos
    .local int rx383_off
    .local int rx383_eos
    .local int rx383_rep
    .local pmc rx383_cur
    .local pmc rx383_debug
    (rx383_cur, rx383_pos, rx383_tgt, $I10) = self."!cursor_start"()
    getattribute rx383_debug, rx383_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx383_cur
    .local pmc match
    .lex "$/", match
    length rx383_eos, rx383_tgt
    gt rx383_pos, rx383_eos, rx383_done
    set rx383_off, 0
    lt rx383_pos, 2, rx383_start
    sub rx383_off, rx383_pos, 1
    substr rx383_tgt, rx383_tgt, rx383_off
  rx383_start:
    eq $I10, 1, rx383_restart
    if_null rx383_debug, debug_216
    rx383_cur."!cursor_debug"("START", "")
  debug_216:
    $I10 = self.'from'()
    ne $I10, -1, rxscan384_done
    goto rxscan384_scan
  rxscan384_loop:
    ($P10) = rx383_cur."from"()
    inc $P10
    set rx383_pos, $P10
    ge rx383_pos, rx383_eos, rxscan384_done
  rxscan384_scan:
    set_addr $I10, rxscan384_loop
    rx383_cur."!mark_push"(0, rx383_pos, $I10)
  rxscan384_done:
  alt385_0:
    set_addr $I10, alt385_1
    rx383_cur."!mark_push"(0, rx383_pos, $I10)
  # rx subrule "!INTERPOLATE" subtype=method negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    find_lex $P387, "$break"
    $P10 = rx383_cur."!INTERPOLATE"($P387)
    unless $P10, rx383_fail
    goto rxsubrule388_pass
  rxsubrule388_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx383_fail
  rxsubrule388_pass:
    set_addr $I10, rxsubrule388_back
    rx383_cur."!mark_push"(0, rx383_pos, $I10, $P10)
    rx383_pos = $P10."pos"()
    goto alt385_end
  alt385_1:
    set_addr $I10, alt385_2
    rx383_cur."!mark_push"(0, rx383_pos, $I10)
  # rx rxquantg389 ** 1..*
  rxquantg389_loop:
  # rx charclass nl
    ge rx383_pos, rx383_eos, rx383_fail
    sub $I10, rx383_pos, rx383_off
    is_cclass $I11, 4096, rx383_tgt, $I10
    unless $I11, rx383_fail
    substr $S10, rx383_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx383_pos, $I11
    inc rx383_pos
    set_addr $I10, rxquantg389_done
    rx383_cur."!mark_push"(rx383_rep, rx383_pos, $I10)
    goto rxquantg389_loop
  rxquantg389_done:
    goto alt385_end
  alt385_2:
  # rxanchor eos
    ne rx383_pos, rx383_eos, rx383_fail
  alt385_end:
  # rx pass
    rx383_cur."!cursor_pass"(rx383_pos, "")
    if_null rx383_debug, debug_217
    rx383_cur."!cursor_debug"("PASS", "", " at pos=", rx383_pos)
  debug_217:
    rx383_cur."!cursor_backtrack"()
    .return (rx383_cur)
  rx383_restart:
    if_null rx383_debug, debug_218
    rx383_cur."!cursor_debug"("NEXT", "")
  debug_218:
  rx383_fail:
    (rx383_rep, rx383_pos, $I10, $P10) = rx383_cur."!mark_fail"(0)
    lt rx383_pos, -1, rx383_done
    eq rx383_pos, -1, rx383_fail
    jump $I10
  rx383_done:
    rx383_cur."!cursor_fail"()
    if_null rx383_debug, debug_219
    rx383_cur."!cursor_debug"("FAIL", "")
  debug_219:
    .return (rx383_cur)
    .return ()
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block477"  :anon :subid("132_1288975715.72644") :method :outer("121_1288975715.72644")
.annotate 'line', 82
    .const 'Sub' $P482 = "133_1288975715.72644" 
    capture_lex $P482
    .local string rx479_tgt
    .local int rx479_pos
    .local int rx479_off
    .local int rx479_eos
    .local int rx479_rep
    .local pmc rx479_cur
    .local pmc rx479_debug
    (rx479_cur, rx479_pos, rx479_tgt, $I10) = self."!cursor_start"()
    getattribute rx479_debug, rx479_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx479_cur
    .local pmc match
    .lex "$/", match
    length rx479_eos, rx479_tgt
    gt rx479_pos, rx479_eos, rx479_done
    set rx479_off, 0
    lt rx479_pos, 2, rx479_start
    sub rx479_off, rx479_pos, 1
    substr rx479_tgt, rx479_tgt, rx479_off
  rx479_start:
    eq $I10, 1, rx479_restart
    if_null rx479_debug, debug_224
    rx479_cur."!cursor_debug"("START", "")
  debug_224:
    $I10 = self.'from'()
    ne $I10, -1, rxscan480_done
    goto rxscan480_scan
  rxscan480_loop:
    ($P10) = rx479_cur."from"()
    inc $P10
    set rx479_pos, $P10
    ge rx479_pos, rx479_eos, rxscan480_done
  rxscan480_scan:
    set_addr $I10, rxscan480_loop
    rx479_cur."!mark_push"(0, rx479_pos, $I10)
  rxscan480_done:
  # rx subrule $P482 subtype=capture negate=
    rx479_cur."!cursor_pos"(rx479_pos)
    .const 'Sub' $P482 = "133_1288975715.72644" 
    capture_lex $P482
    $P10 = rx479_cur.$P482()
    unless $P10, rx479_fail
    goto rxsubrule486_pass
  rxsubrule486_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx479_fail
  rxsubrule486_pass:
    set_addr $I10, rxsubrule486_back
    rx479_cur."!mark_push"(0, rx479_pos, $I10, $P10)
    $P10."!cursor_names"(0)
    rx479_pos = $P10."pos"()
  # rx pass
    rx479_cur."!cursor_pass"(rx479_pos, "")
    if_null rx479_debug, debug_229
    rx479_cur."!cursor_debug"("PASS", "", " at pos=", rx479_pos)
  debug_229:
    rx479_cur."!cursor_backtrack"()
    .return (rx479_cur)
  rx479_restart:
    if_null rx479_debug, debug_230
    rx479_cur."!cursor_debug"("NEXT", "")
  debug_230:
  rx479_fail:
    (rx479_rep, rx479_pos, $I10, $P10) = rx479_cur."!mark_fail"(0)
    lt rx479_pos, -1, rx479_done
    eq rx479_pos, -1, rx479_fail
    jump $I10
  rx479_done:
    rx479_cur."!cursor_fail"()
    if_null rx479_debug, debug_231
    rx479_cur."!cursor_debug"("FAIL", "")
  debug_231:
    .return (rx479_cur)
    .return ()
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block481"  :anon :subid("133_1288975715.72644") :method :outer("132_1288975715.72644")
.annotate 'line', 82
    .local string rx483_tgt
    .local int rx483_pos
    .local int rx483_off
    .local int rx483_eos
    .local int rx483_rep
    .local pmc rx483_cur
    .local pmc rx483_debug
    (rx483_cur, rx483_pos, rx483_tgt, $I10) = self."!cursor_start"()
    getattribute rx483_debug, rx483_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx483_cur
    .local pmc match
    .lex "$/", match
    length rx483_eos, rx483_tgt
    gt rx483_pos, rx483_eos, rx483_done
    set rx483_off, 0
    lt rx483_pos, 2, rx483_start
    sub rx483_off, rx483_pos, 1
    substr rx483_tgt, rx483_tgt, rx483_off
  rx483_start:
    eq $I10, 1, rx483_restart
    if_null rx483_debug, debug_225
    rx483_cur."!cursor_debug"("START", "")
  debug_225:
    $I10 = self.'from'()
    ne $I10, -1, rxscan484_done
    goto rxscan484_scan
  rxscan484_loop:
    ($P10) = rx483_cur."from"()
    inc $P10
    set rx483_pos, $P10
    ge rx483_pos, rx483_eos, rxscan484_done
  rxscan484_scan:
    set_addr $I10, rxscan484_loop
    rx483_cur."!mark_push"(0, rx483_pos, $I10)
  rxscan484_done:
  # rx rxquantg485 ** 0..2
    set_addr $I10, rxquantg485_done
    rx483_cur."!mark_push"(0, rx483_pos, $I10)
  rxquantg485_loop:
  # rx enumcharlist negate=1 
    ge rx483_pos, rx483_eos, rx483_fail
    sub $I10, rx483_pos, rx483_off
    substr $S10, rx483_tgt, $I10, 1
    index $I11, "n", $S10
    ge $I11, 0, rx483_fail
    inc rx483_pos
    set_addr $I10, rxquantg485_done
    (rx483_rep) = rx483_cur."!mark_peek"($I10)
    inc rx483_rep
    ge rx483_rep, 2, rxquantg485_done
    set_addr $I10, rxquantg485_done
    rx483_cur."!mark_push"(rx483_rep, rx483_pos, $I10)
    goto rxquantg485_loop
  rxquantg485_done:
  # rx pass
    rx483_cur."!cursor_pass"(rx483_pos, "")
    if_null rx483_debug, debug_226
    rx483_cur."!cursor_debug"("PASS", "", " at pos=", rx483_pos)
  debug_226:
    rx483_cur."!cursor_backtrack"()
    .return (rx483_cur)
  rx483_restart:
    if_null rx483_debug, debug_227
    rx483_cur."!cursor_debug"("NEXT", "")
  debug_227:
  rx483_fail:
    (rx483_rep, rx483_pos, $I10, $P10) = rx483_cur."!mark_fail"(0)
    lt rx483_pos, -1, rx483_done
    eq rx483_pos, -1, rx483_fail
    jump $I10
  rx483_done:
    rx483_cur."!cursor_fail"()
    if_null rx483_debug, debug_228
    rx483_cur."!cursor_debug"("FAIL", "")
  debug_228:
    .return (rx483_cur)
    .return ()
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block610"  :anon :subid("144_1288975715.72644") :method :outer("121_1288975715.72644")
.annotate 'line', 95
    .const 'Sub' $P622 = "146_1288975715.72644" 
    capture_lex $P622
    .const 'Sub' $P615 = "145_1288975715.72644" 
    capture_lex $P615
    .local string rx612_tgt
    .local int rx612_pos
    .local int rx612_off
    .local int rx612_eos
    .local int rx612_rep
    .local pmc rx612_cur
    .local pmc rx612_debug
    (rx612_cur, rx612_pos, rx612_tgt, $I10) = self."!cursor_start"()
    getattribute rx612_debug, rx612_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx612_cur
    .local pmc match
    .lex "$/", match
    length rx612_eos, rx612_tgt
    gt rx612_pos, rx612_eos, rx612_done
    set rx612_off, 0
    lt rx612_pos, 2, rx612_start
    sub rx612_off, rx612_pos, 1
    substr rx612_tgt, rx612_tgt, rx612_off
  rx612_start:
    eq $I10, 1, rx612_restart
    if_null rx612_debug, debug_233
    rx612_cur."!cursor_debug"("START", "")
  debug_233:
    $I10 = self.'from'()
    ne $I10, -1, rxscan613_done
    goto rxscan613_scan
  rxscan613_loop:
    ($P10) = rx612_cur."from"()
    inc $P10
    set rx612_pos, $P10
    ge rx612_pos, rx612_eos, rxscan613_done
  rxscan613_scan:
    set_addr $I10, rxscan613_loop
    rx612_cur."!mark_push"(0, rx612_pos, $I10)
  rxscan613_done:
  # rx subrule $P615 subtype=capture negate=
    rx612_cur."!cursor_pos"(rx612_pos)
    .const 'Sub' $P615 = "145_1288975715.72644" 
    capture_lex $P615
    $P10 = rx612_cur.$P615()
    unless $P10, rx612_fail
    goto rxsubrule620_pass
  rxsubrule620_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx612_fail
  rxsubrule620_pass:
    set_addr $I10, rxsubrule620_back
    rx612_cur."!mark_push"(0, rx612_pos, $I10, $P10)
    $P10."!cursor_names"(0)
    rx612_pos = $P10."pos"()
  # rx subrule $P622 subtype=capture negate=
    rx612_cur."!cursor_pos"(rx612_pos)
    .const 'Sub' $P622 = "146_1288975715.72644" 
    capture_lex $P622
    $P10 = rx612_cur.$P622()
    unless $P10, rx612_fail
    goto rxsubrule630_pass
  rxsubrule630_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx612_fail
  rxsubrule630_pass:
    set_addr $I10, rxsubrule630_back
    rx612_cur."!mark_push"(0, rx612_pos, $I10, $P10)
    $P10."!cursor_names"("1")
    rx612_pos = $P10."pos"()
  # rx pass
    rx612_cur."!cursor_pass"(rx612_pos, "")
    if_null rx612_debug, debug_242
    rx612_cur."!cursor_debug"("PASS", "", " at pos=", rx612_pos)
  debug_242:
    rx612_cur."!cursor_backtrack"()
    .return (rx612_cur)
  rx612_restart:
    if_null rx612_debug, debug_243
    rx612_cur."!cursor_debug"("NEXT", "")
  debug_243:
  rx612_fail:
    (rx612_rep, rx612_pos, $I10, $P10) = rx612_cur."!mark_fail"(0)
    lt rx612_pos, -1, rx612_done
    eq rx612_pos, -1, rx612_fail
    jump $I10
  rx612_done:
    rx612_cur."!cursor_fail"()
    if_null rx612_debug, debug_244
    rx612_cur."!cursor_debug"("FAIL", "")
  debug_244:
    .return (rx612_cur)
    .return ()
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block614"  :anon :subid("145_1288975715.72644") :method :outer("144_1288975715.72644")
.annotate 'line', 95
    .local string rx616_tgt
    .local int rx616_pos
    .local int rx616_off
    .local int rx616_eos
    .local int rx616_rep
    .local pmc rx616_cur
    .local pmc rx616_debug
    (rx616_cur, rx616_pos, rx616_tgt, $I10) = self."!cursor_start"()
    getattribute rx616_debug, rx616_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx616_cur
    .local pmc match
    .lex "$/", match
    length rx616_eos, rx616_tgt
    gt rx616_pos, rx616_eos, rx616_done
    set rx616_off, 0
    lt rx616_pos, 2, rx616_start
    sub rx616_off, rx616_pos, 1
    substr rx616_tgt, rx616_tgt, rx616_off
  rx616_start:
    eq $I10, 1, rx616_restart
    if_null rx616_debug, debug_234
    rx616_cur."!cursor_debug"("START", "")
  debug_234:
    $I10 = self.'from'()
    ne $I10, -1, rxscan617_done
    goto rxscan617_scan
  rxscan617_loop:
    ($P10) = rx616_cur."from"()
    inc $P10
    set rx616_pos, $P10
    ge rx616_pos, rx616_eos, rxscan617_done
  rxscan617_scan:
    set_addr $I10, rxscan617_loop
    rx616_cur."!mark_push"(0, rx616_pos, $I10)
  rxscan617_done:
  # rx rxquantf618 ** 0..*
    set_addr $I10, rxquantf618_loop
    rx616_cur."!mark_push"(0, rx616_pos, $I10)
    goto rxquantf618_done
  rxquantf618_loop:
  # rxanchor bos
    ne rx616_pos, 0, rx616_fail
  # rx charclass nl
    ge rx616_pos, rx616_eos, rx616_fail
    sub $I10, rx616_pos, rx616_off
    is_cclass $I11, 4096, rx616_tgt, $I10
    unless $I11, rx616_fail
    substr $S10, rx616_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx616_pos, $I11
    inc rx616_pos
    set_addr $I10, rxquantf618_loop
    rx616_cur."!mark_push"(rx616_rep, rx616_pos, $I10)
  rxquantf618_done:
  # rx pass
    rx616_cur."!cursor_pass"(rx616_pos, "")
    if_null rx616_debug, debug_235
    rx616_cur."!cursor_debug"("PASS", "", " at pos=", rx616_pos)
  debug_235:
    rx616_cur."!cursor_backtrack"()
    .return (rx616_cur)
  rx616_restart:
    if_null rx616_debug, debug_236
    rx616_cur."!cursor_debug"("NEXT", "")
  debug_236:
  rx616_fail:
    (rx616_rep, rx616_pos, $I10, $P10) = rx616_cur."!mark_fail"(0)
    lt rx616_pos, -1, rx616_done
    eq rx616_pos, -1, rx616_fail
    jump $I10
  rx616_done:
    rx616_cur."!cursor_fail"()
    if_null rx616_debug, debug_237
    rx616_cur."!cursor_debug"("FAIL", "")
  debug_237:
    .return (rx616_cur)
    .return ()
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block621"  :anon :subid("146_1288975715.72644") :method :outer("144_1288975715.72644")
.annotate 'line', 95
    .local string rx623_tgt
    .local int rx623_pos
    .local int rx623_off
    .local int rx623_eos
    .local int rx623_rep
    .local pmc rx623_cur
    .local pmc rx623_debug
    (rx623_cur, rx623_pos, rx623_tgt, $I10) = self."!cursor_start"()
    getattribute rx623_debug, rx623_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx623_cur
    .local pmc match
    .lex "$/", match
    length rx623_eos, rx623_tgt
    gt rx623_pos, rx623_eos, rx623_done
    set rx623_off, 0
    lt rx623_pos, 2, rx623_start
    sub rx623_off, rx623_pos, 1
    substr rx623_tgt, rx623_tgt, rx623_off
  rx623_start:
    eq $I10, 1, rx623_restart
    if_null rx623_debug, debug_238
    rx623_cur."!cursor_debug"("START", "")
  debug_238:
    $I10 = self.'from'()
    ne $I10, -1, rxscan624_done
    goto rxscan624_scan
  rxscan624_loop:
    ($P10) = rx623_cur."from"()
    inc $P10
    set rx623_pos, $P10
    ge rx623_pos, rx623_eos, rxscan624_done
  rxscan624_scan:
    set_addr $I10, rxscan624_loop
    rx623_cur."!mark_push"(0, rx623_pos, $I10)
  rxscan624_done:
  alt625_0:
    set_addr $I10, alt625_1
    rx623_cur."!mark_push"(0, rx623_pos, $I10)
  # rx subrule "!INTERPOLATE" subtype=method negate=
    rx623_cur."!cursor_pos"(rx623_pos)
    find_lex $P627, "$break"
    $P10 = rx623_cur."!INTERPOLATE"($P627)
    unless $P10, rx623_fail
    goto rxsubrule628_pass
  rxsubrule628_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx623_fail
  rxsubrule628_pass:
    set_addr $I10, rxsubrule628_back
    rx623_cur."!mark_push"(0, rx623_pos, $I10, $P10)
    rx623_pos = $P10."pos"()
    goto alt625_end
  alt625_1:
    set_addr $I10, alt625_2
    rx623_cur."!mark_push"(0, rx623_pos, $I10)
  # rx rxquantg629 ** 1..*
  rxquantg629_loop:
  # rx charclass nl
    ge rx623_pos, rx623_eos, rx623_fail
    sub $I10, rx623_pos, rx623_off
    is_cclass $I11, 4096, rx623_tgt, $I10
    unless $I11, rx623_fail
    substr $S10, rx623_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx623_pos, $I11
    inc rx623_pos
    set_addr $I10, rxquantg629_done
    rx623_cur."!mark_push"(rx623_rep, rx623_pos, $I10)
    goto rxquantg629_loop
  rxquantg629_done:
    goto alt625_end
  alt625_2:
  # rxanchor eos
    ne rx623_pos, rx623_eos, rx623_fail
  alt625_end:
  # rx pass
    rx623_cur."!cursor_pass"(rx623_pos, "")
    if_null rx623_debug, debug_239
    rx623_cur."!cursor_debug"("PASS", "", " at pos=", rx623_pos)
  debug_239:
    rx623_cur."!cursor_backtrack"()
    .return (rx623_cur)
  rx623_restart:
    if_null rx623_debug, debug_240
    rx623_cur."!cursor_debug"("NEXT", "")
  debug_240:
  rx623_fail:
    (rx623_rep, rx623_pos, $I10, $P10) = rx623_cur."!mark_fail"(0)
    lt rx623_pos, -1, rx623_done
    eq rx623_pos, -1, rx623_fail
    jump $I10
  rx623_done:
    rx623_cur."!cursor_fail"()
    if_null rx623_debug, debug_241
    rx623_cur."!cursor_debug"("FAIL", "")
  debug_241:
    .return (rx623_cur)
    .return ()
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block761"  :anon :subid("157_1288975715.72644") :outer("121_1288975715.72644")
    .param pmc param_770 :call_sig
.annotate 'line', 109
    .const 'Sub' $P773 = "158_1288975715.72644" 
    capture_lex $P773
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P763
    find_lex_skip_current $P764, "$_"
    $P765 = new ['Perl6Scalar'], $P764
    setprop $P765, "rw", true
    .lex "$_", $P765
    find_lex_skip_current $P766, "$/"
    $P767 = new ['Perl6Scalar'], $P766
    setprop $P767, "rw", true
    .lex "$/", $P767
    find_lex_skip_current $P768, "$!"
    $P769 = new ['Perl6Scalar'], $P768
    setprop $P769, "rw", true
    .lex "$!", $P769
    .lex "call_sig", param_770
    find_lex $P771, "call_sig"
    bind_llsig $P771
.annotate 'line', 110
    new $P775, "Str"
    assign $P775, "This shouldn't happen"
    $P776 = "&die"($P775)
.annotate 'line', 109
    .return ($P776)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post247") :outer("157_1288975715.72644")
.annotate 'line', 109
    .const 'Sub' $P762 = "157_1288975715.72644" 
    .local pmc block
    set block, $P762
    .const 'Sub' $P777 = "157_1288975715.72644" 
    .const 'Sub' $P778 = "158_1288975715.72644" 
    setprop $P777, "$!lazysig", $P778
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block772"  :anon :subid("158_1288975715.72644") :outer("157_1288975715.72644")
.annotate 'line', 109
    $P774 = allocate_llsig 0
    .local pmc signature_90
    set signature_90, $P774
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_90
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block738"  :anon :subid("155_1288975715.72644") :outer("121_1288975715.72644")
    .param pmc param_747 :call_sig
.annotate 'line', 105
    .const 'Sub' $P750 = "156_1288975715.72644" 
    capture_lex $P750
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P740
    find_lex_skip_current $P741, "$_"
    $P742 = new ['Perl6Scalar'], $P741
    setprop $P742, "rw", true
    .lex "$_", $P742
    find_lex_skip_current $P743, "$/"
    $P744 = new ['Perl6Scalar'], $P743
    setprop $P744, "rw", true
    .lex "$/", $P744
    find_lex_skip_current $P745, "$!"
    $P746 = new ['Perl6Scalar'], $P745
    setprop $P746, "rw", true
    .lex "$!", $P746
    .lex "call_sig", param_747
    find_lex $P748, "call_sig"
    bind_llsig $P748
.annotate 'line', 107
    find_lex $P752, "$columns"
    new $P753, "Int"
    assign $P753, 2
    "&infix:<=>"($P752, $P753)
.annotate 'line', 108
    find_lex $P754, "$ip"
    find_lex $P755, "$xp"
    find_lex $P756, "@t"
    $P757 = "&infix:<,>"($P754, $P755, $P756)
    $P758 = "&return"($P757)
.annotate 'line', 105
    .return ($P758)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post248") :outer("155_1288975715.72644")
.annotate 'line', 105
    .const 'Sub' $P739 = "155_1288975715.72644" 
    .local pmc block
    set block, $P739
    .const 'Sub' $P759 = "155_1288975715.72644" 
    .const 'Sub' $P760 = "156_1288975715.72644" 
    setprop $P759, "$!lazysig", $P760
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block749"  :anon :subid("156_1288975715.72644") :outer("155_1288975715.72644")
.annotate 'line', 105
    $P751 = allocate_llsig 0
    .local pmc signature_89
    set signature_89, $P751
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_89
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block711"  :anon :subid("153_1288975715.72644") :outer("121_1288975715.72644")
    .param pmc param_720 :call_sig
.annotate 'line', 103
    .const 'Sub' $P723 = "154_1288975715.72644" 
    capture_lex $P723
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P713
    find_lex_skip_current $P714, "$_"
    $P715 = new ['Perl6Scalar'], $P714
    setprop $P715, "rw", true
    .lex "$_", $P715
    find_lex_skip_current $P716, "$/"
    $P717 = new ['Perl6Scalar'], $P716
    setprop $P717, "rw", true
    .lex "$/", $P717
    find_lex_skip_current $P718, "$!"
    $P719 = new ['Perl6Scalar'], $P718
    setprop $P719, "rw", true
    .lex "$!", $P719
    .lex "call_sig", param_720
    find_lex $P721, "call_sig"
    bind_llsig $P721
.annotate 'line', 104
    new $P725, "Str"
    assign $P725, "couldn't wrap '"
    find_lex $P726, "$t"
    set $S727, $P726
    concat $P728, $P725, $S727
    new $P729, "Str"
    assign $P729, "'"
    concat $P730, $P728, $P729
    $P731 = "&die"($P730)
.annotate 'line', 103
    .return ($P731)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post249") :outer("153_1288975715.72644")
.annotate 'line', 103
    .const 'Sub' $P712 = "153_1288975715.72644" 
    .local pmc block
    set block, $P712
    .const 'Sub' $P732 = "153_1288975715.72644" 
    .const 'Sub' $P733 = "154_1288975715.72644" 
    setprop $P732, "$!lazysig", $P733
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block722"  :anon :subid("154_1288975715.72644") :outer("153_1288975715.72644")
.annotate 'line', 103
    $P724 = allocate_llsig 0
    .local pmc signature_88
    set signature_88, $P724
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_88
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block636"  :anon :subid("147_1288975715.72644") :outer("121_1288975715.72644")
    .param pmc param_645 :call_sig
.annotate 'line', 95
    .const 'Sub' $P678 = "151_1288975715.72644" 
    capture_lex $P678
    .const 'Sub' $P653 = "149_1288975715.72644" 
    capture_lex $P653
    .const 'Sub' $P648 = "148_1288975715.72644" 
    capture_lex $P648
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P638
    find_lex_skip_current $P639, "$_"
    $P640 = new ['Perl6Scalar'], $P639
    setprop $P640, "rw", true
    .lex "$_", $P640
    find_lex_skip_current $P641, "$/"
    $P642 = new ['Perl6Scalar'], $P641
    setprop $P642, "rw", true
    .lex "$/", $P642
    find_lex_skip_current $P643, "$!"
    $P644 = new ['Perl6Scalar'], $P643
    setprop $P644, "rw", true
    .lex "$!", $P644
    .lex "call_sig", param_645
    find_lex $P646, "call_sig"
    bind_llsig $P646
.annotate 'line', 96
    find_lex $P651, "$unexpand"
    if $P651, if_650
.annotate 'line', 98
    .const 'Sub' $P678 = "151_1288975715.72644" 
    capture_lex $P678
    $P678()
    goto if_650_end
  if_650:
.annotate 'line', 96
    .const 'Sub' $P653 = "149_1288975715.72644" 
    capture_lex $P653
    $P653()
  if_650_end:
.annotate 'line', 101
    find_lex $P701, "$remainder"
    find_lex $P702, "$/"
    $P703 = "!postcircumfix:<[ ]>"($P702, 1)
    $P704 = "&infix:<=>"($P701, $P703)
.annotate 'line', 95
    .return ($P704)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post250") :outer("147_1288975715.72644")
.annotate 'line', 95
    .const 'Sub' $P637 = "147_1288975715.72644" 
    .local pmc block
    set block, $P637
    .const 'Sub' $P705 = "147_1288975715.72644" 
    .const 'Sub' $P706 = "148_1288975715.72644" 
    setprop $P705, "$!lazysig", $P706
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block647"  :anon :subid("148_1288975715.72644") :outer("147_1288975715.72644")
.annotate 'line', 95
    $P649 = allocate_llsig 0
    .local pmc signature_87
    set signature_87, $P649
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_87
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block677"  :anon :subid("151_1288975715.72644") :outer("147_1288975715.72644")
    .param pmc param_686 :call_sig
.annotate 'line', 98
    .const 'Sub' $P689 = "152_1288975715.72644" 
    capture_lex $P689
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P679
    find_lex_skip_current $P680, "$_"
    $P681 = new ['Perl6Scalar'], $P680
    setprop $P681, "rw", true
    .lex "$_", $P681
    find_lex_skip_current $P682, "$/"
    $P683 = new ['Perl6Scalar'], $P682
    setprop $P683, "rw", true
    .lex "$/", $P683
    find_lex_skip_current $P684, "$!"
    $P685 = new ['Perl6Scalar'], $P684
    setprop $P685, "rw", true
    .lex "$!", $P685
    .lex "call_sig", param_686
    find_lex $P687, "call_sig"
    bind_llsig $P687
.annotate 'line', 99
    find_lex $P691, "$r"
    find_lex $P692, "$nl"
    find_lex $P693, "$lead"
    $P694 = "&infix:<~>"($P692, $P693)
    find_lex $P695, "$/"
    $P696 = "!postcircumfix:<[ ]>"($P695, 0)
    $P697 = "&infix:<~>"($P694, $P696)
    $P698 = "&infix:<~=>"($P691, $P697)
.annotate 'line', 98
    .return ($P698)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post251") :outer("151_1288975715.72644")
.annotate 'line', 98
    .const 'Sub' $P678 = "151_1288975715.72644" 
    .local pmc block
    set block, $P678
    .const 'Sub' $P699 = "151_1288975715.72644" 
    .const 'Sub' $P700 = "152_1288975715.72644" 
    setprop $P699, "$!lazysig", $P700
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block688"  :anon :subid("152_1288975715.72644") :outer("151_1288975715.72644")
.annotate 'line', 98
    $P690 = allocate_llsig 0
    .local pmc signature_86
    set signature_86, $P690
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_86
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block652"  :anon :subid("149_1288975715.72644") :outer("147_1288975715.72644")
    .param pmc param_661 :call_sig
.annotate 'line', 96
    .const 'Sub' $P664 = "150_1288975715.72644" 
    capture_lex $P664
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P654
    find_lex_skip_current $P655, "$_"
    $P656 = new ['Perl6Scalar'], $P655
    setprop $P656, "rw", true
    .lex "$_", $P656
    find_lex_skip_current $P657, "$/"
    $P658 = new ['Perl6Scalar'], $P657
    setprop $P658, "rw", true
    .lex "$/", $P658
    find_lex_skip_current $P659, "$!"
    $P660 = new ['Perl6Scalar'], $P659
    setprop $P660, "rw", true
    .lex "$!", $P660
    .lex "call_sig", param_661
    find_lex $P662, "call_sig"
    bind_llsig $P662
.annotate 'line', 97
    find_lex $P666, "$r"
    find_lex $P667, "$nl"
    find_lex $P668, "$lead"
    $P669 = "&infix:<~>"($P667, $P668)
    find_lex $P670, "$/"
    $P671 = "!postcircumfix:<[ ]>"($P670, 0)
    $P672 = "&infix:<~>"($P669, $P671)
    $P673 = "&unexpand"($P672)
    $P674 = "&infix:<~=>"($P666, $P673)
.annotate 'line', 96
    .return ($P674)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post252") :outer("149_1288975715.72644")
.annotate 'line', 96
    .const 'Sub' $P653 = "149_1288975715.72644" 
    .local pmc block
    set block, $P653
    .const 'Sub' $P675 = "149_1288975715.72644" 
    .const 'Sub' $P676 = "150_1288975715.72644" 
    setprop $P675, "$!lazysig", $P676
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block663"  :anon :subid("150_1288975715.72644") :outer("149_1288975715.72644")
.annotate 'line', 96
    $P665 = allocate_llsig 0
    .local pmc signature_85
    set signature_85, $P665
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_85
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block492"  :anon :subid("134_1288975715.72644") :outer("121_1288975715.72644")
    .param pmc param_501 :call_sig
.annotate 'line', 82
    .const 'Sub' $P581 = "142_1288975715.72644" 
    capture_lex $P581
    .const 'Sub' $P561 = "140_1288975715.72644" 
    capture_lex $P561
    .const 'Sub' $P534 = "138_1288975715.72644" 
    capture_lex $P534
    .const 'Sub' $P509 = "136_1288975715.72644" 
    capture_lex $P509
    .const 'Sub' $P504 = "135_1288975715.72644" 
    capture_lex $P504
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P494
    find_lex_skip_current $P495, "$_"
    $P496 = new ['Perl6Scalar'], $P495
    setprop $P496, "rw", true
    .lex "$_", $P496
    find_lex_skip_current $P497, "$/"
    $P498 = new ['Perl6Scalar'], $P497
    setprop $P498, "rw", true
    .lex "$/", $P498
    find_lex_skip_current $P499, "$!"
    $P500 = new ['Perl6Scalar'], $P499
    setprop $P500, "rw", true
    .lex "$!", $P500
    .lex "call_sig", param_501
    find_lex $P502, "call_sig"
    bind_llsig $P502
.annotate 'line', 83
    find_lex $P507, "$unexpand"
    if $P507, if_506
.annotate 'line', 86
    .const 'Sub' $P534 = "138_1288975715.72644" 
    capture_lex $P534
    $P534()
    goto if_506_end
  if_506:
.annotate 'line', 83
    .const 'Sub' $P509 = "136_1288975715.72644" 
    capture_lex $P509
    $P509()
  if_506_end:
.annotate 'line', 89
    find_lex $P559, "$separator2"
    if $P559, if_558
.annotate 'line', 91
    .const 'Sub' $P581 = "142_1288975715.72644" 
    capture_lex $P581
    $P599 = $P581()
    set $P557, $P599
.annotate 'line', 89
    goto if_558_end
  if_558:
    .const 'Sub' $P561 = "140_1288975715.72644" 
    capture_lex $P561
    $P579 = $P561()
    set $P557, $P579
  if_558_end:
.annotate 'line', 82
    .return ($P557)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post253") :outer("134_1288975715.72644")
.annotate 'line', 82
    .const 'Sub' $P493 = "134_1288975715.72644" 
    .local pmc block
    set block, $P493
    .const 'Sub' $P600 = "134_1288975715.72644" 
    .const 'Sub' $P601 = "135_1288975715.72644" 
    setprop $P600, "$!lazysig", $P601
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block503"  :anon :subid("135_1288975715.72644") :outer("134_1288975715.72644")
.annotate 'line', 82
    $P505 = allocate_llsig 0
    .local pmc signature_82
    set signature_82, $P505
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_82
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block533"  :anon :subid("138_1288975715.72644") :outer("134_1288975715.72644")
    .param pmc param_542 :call_sig
.annotate 'line', 86
    .const 'Sub' $P545 = "139_1288975715.72644" 
    capture_lex $P545
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P535
    find_lex_skip_current $P536, "$_"
    $P537 = new ['Perl6Scalar'], $P536
    setprop $P537, "rw", true
    .lex "$_", $P537
    find_lex_skip_current $P538, "$/"
    $P539 = new ['Perl6Scalar'], $P538
    setprop $P539, "rw", true
    .lex "$/", $P539
    find_lex_skip_current $P540, "$!"
    $P541 = new ['Perl6Scalar'], $P540
    setprop $P541, "rw", true
    .lex "$!", $P541
    .lex "call_sig", param_542
    find_lex $P543, "call_sig"
    bind_llsig $P543
.annotate 'line', 87
    find_lex $P547, "$r"
    find_lex $P548, "$nl"
    find_lex $P549, "$lead"
    $P550 = "&infix:<~>"($P548, $P549)
    find_lex $P551, "$/"
    $P552 = "!postcircumfix:<[ ]>"($P551, 0)
    $P553 = "&infix:<~>"($P550, $P552)
    $P554 = "&infix:<~=>"($P547, $P553)
.annotate 'line', 86
    .return ($P554)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post254") :outer("138_1288975715.72644")
.annotate 'line', 86
    .const 'Sub' $P534 = "138_1288975715.72644" 
    .local pmc block
    set block, $P534
    .const 'Sub' $P555 = "138_1288975715.72644" 
    .const 'Sub' $P556 = "139_1288975715.72644" 
    setprop $P555, "$!lazysig", $P556
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block544"  :anon :subid("139_1288975715.72644") :outer("138_1288975715.72644")
.annotate 'line', 86
    $P546 = allocate_llsig 0
    .local pmc signature_79
    set signature_79, $P546
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_79
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block508"  :anon :subid("136_1288975715.72644") :outer("134_1288975715.72644")
    .param pmc param_517 :call_sig
.annotate 'line', 83
    .const 'Sub' $P520 = "137_1288975715.72644" 
    capture_lex $P520
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P510
    find_lex_skip_current $P511, "$_"
    $P512 = new ['Perl6Scalar'], $P511
    setprop $P512, "rw", true
    .lex "$_", $P512
    find_lex_skip_current $P513, "$/"
    $P514 = new ['Perl6Scalar'], $P513
    setprop $P514, "rw", true
    .lex "$/", $P514
    find_lex_skip_current $P515, "$!"
    $P516 = new ['Perl6Scalar'], $P515
    setprop $P516, "rw", true
    .lex "$!", $P516
    .lex "call_sig", param_517
    find_lex $P518, "call_sig"
    bind_llsig $P518
.annotate 'line', 84
    find_lex $P522, "$r"
    find_lex $P523, "$nl"
    find_lex $P524, "$lead"
    $P525 = "&infix:<~>"($P523, $P524)
    find_lex $P526, "$/"
    $P527 = "!postcircumfix:<[ ]>"($P526, 0)
    $P528 = "&infix:<~>"($P525, $P527)
    $P529 = "&unexpand"($P528)
    $P530 = "&infix:<~=>"($P522, $P529)
.annotate 'line', 83
    .return ($P530)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post255") :outer("136_1288975715.72644")
.annotate 'line', 83
    .const 'Sub' $P509 = "136_1288975715.72644" 
    .local pmc block
    set block, $P509
    .const 'Sub' $P531 = "136_1288975715.72644" 
    .const 'Sub' $P532 = "137_1288975715.72644" 
    setprop $P531, "$!lazysig", $P532
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block519"  :anon :subid("137_1288975715.72644") :outer("136_1288975715.72644")
.annotate 'line', 83
    $P521 = allocate_llsig 0
    .local pmc signature_78
    set signature_78, $P521
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_78
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block580"  :anon :subid("142_1288975715.72644") :outer("134_1288975715.72644")
    .param pmc param_589 :call_sig
.annotate 'line', 91
    .const 'Sub' $P592 = "143_1288975715.72644" 
    capture_lex $P592
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P582
    find_lex_skip_current $P583, "$_"
    $P584 = new ['Perl6Scalar'], $P583
    setprop $P584, "rw", true
    .lex "$_", $P584
    find_lex_skip_current $P585, "$/"
    $P586 = new ['Perl6Scalar'], $P585
    setprop $P586, "rw", true
    .lex "$/", $P586
    find_lex_skip_current $P587, "$!"
    $P588 = new ['Perl6Scalar'], $P587
    setprop $P588, "rw", true
    .lex "$!", $P588
    .lex "call_sig", param_589
    find_lex $P590, "call_sig"
    bind_llsig $P590
.annotate 'line', 92
    find_lex $P594, "$remainder"
    find_lex $P595, "$separator"
    $P596 = "&infix:<=>"($P594, $P595)
.annotate 'line', 91
    .return ($P596)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post256") :outer("142_1288975715.72644")
.annotate 'line', 91
    .const 'Sub' $P581 = "142_1288975715.72644" 
    .local pmc block
    set block, $P581
    .const 'Sub' $P597 = "142_1288975715.72644" 
    .const 'Sub' $P598 = "143_1288975715.72644" 
    setprop $P597, "$!lazysig", $P598
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block591"  :anon :subid("143_1288975715.72644") :outer("142_1288975715.72644")
.annotate 'line', 91
    $P593 = allocate_llsig 0
    .local pmc signature_81
    set signature_81, $P593
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_81
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block560"  :anon :subid("140_1288975715.72644") :outer("134_1288975715.72644")
    .param pmc param_569 :call_sig
.annotate 'line', 89
    .const 'Sub' $P572 = "141_1288975715.72644" 
    capture_lex $P572
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P562
    find_lex_skip_current $P563, "$_"
    $P564 = new ['Perl6Scalar'], $P563
    setprop $P564, "rw", true
    .lex "$_", $P564
    find_lex_skip_current $P565, "$/"
    $P566 = new ['Perl6Scalar'], $P565
    setprop $P566, "rw", true
    .lex "$/", $P566
    find_lex_skip_current $P567, "$!"
    $P568 = new ['Perl6Scalar'], $P567
    setprop $P568, "rw", true
    .lex "$!", $P568
    .lex "call_sig", param_569
    find_lex $P570, "call_sig"
    bind_llsig $P570
.annotate 'line', 90
    find_lex $P574, "$remainder"
    find_lex $P575, "$separator2"
    $P576 = "&infix:<=>"($P574, $P575)
.annotate 'line', 89
    .return ($P576)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post257") :outer("140_1288975715.72644")
.annotate 'line', 89
    .const 'Sub' $P561 = "140_1288975715.72644" 
    .local pmc block
    set block, $P561
    .const 'Sub' $P577 = "140_1288975715.72644" 
    .const 'Sub' $P578 = "141_1288975715.72644" 
    setprop $P577, "$!lazysig", $P578
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block571"  :anon :subid("141_1288975715.72644") :outer("140_1288975715.72644")
.annotate 'line', 89
    $P573 = allocate_llsig 0
    .local pmc signature_80
    set signature_80, $P573
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_80
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block398"  :anon :subid("126_1288975715.72644") :outer("121_1288975715.72644")
    .param pmc param_407 :call_sig
.annotate 'line', 71
    .const 'Sub' $P440 = "130_1288975715.72644" 
    capture_lex $P440
    .const 'Sub' $P415 = "128_1288975715.72644" 
    capture_lex $P415
    .const 'Sub' $P410 = "127_1288975715.72644" 
    capture_lex $P410
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P400
    find_lex_skip_current $P401, "$_"
    $P402 = new ['Perl6Scalar'], $P401
    setprop $P402, "rw", true
    .lex "$_", $P402
    find_lex_skip_current $P403, "$/"
    $P404 = new ['Perl6Scalar'], $P403
    setprop $P404, "rw", true
    .lex "$/", $P404
    find_lex_skip_current $P405, "$!"
    $P406 = new ['Perl6Scalar'], $P405
    setprop $P406, "rw", true
    .lex "$!", $P406
    .lex "call_sig", param_407
    find_lex $P408, "call_sig"
    bind_llsig $P408
.annotate 'line', 72
    find_lex $P413, "$unexpand"
    if $P413, if_412
.annotate 'line', 75
    .const 'Sub' $P440 = "130_1288975715.72644" 
    capture_lex $P440
    $P440()
    goto if_412_end
  if_412:
.annotate 'line', 72
    .const 'Sub' $P415 = "128_1288975715.72644" 
    capture_lex $P415
    $P415()
  if_412_end:
.annotate 'line', 79
    find_lex $P463, "$remainder"
    find_lex $P464, "$/"
    $P465 = "!postcircumfix:<[ ]>"($P464, 1)
    $P466 = "&infix:<=>"($P463, $P465)
.annotate 'line', 71
    .return ($P466)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post258") :outer("126_1288975715.72644")
.annotate 'line', 71
    .const 'Sub' $P399 = "126_1288975715.72644" 
    .local pmc block
    set block, $P399
    .const 'Sub' $P467 = "126_1288975715.72644" 
    .const 'Sub' $P468 = "127_1288975715.72644" 
    setprop $P467, "$!lazysig", $P468
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block409"  :anon :subid("127_1288975715.72644") :outer("126_1288975715.72644")
.annotate 'line', 71
    $P411 = allocate_llsig 0
    .local pmc signature_75
    set signature_75, $P411
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_75
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block439"  :anon :subid("130_1288975715.72644") :outer("126_1288975715.72644")
    .param pmc param_448 :call_sig
.annotate 'line', 75
    .const 'Sub' $P451 = "131_1288975715.72644" 
    capture_lex $P451
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P441
    find_lex_skip_current $P442, "$_"
    $P443 = new ['Perl6Scalar'], $P442
    setprop $P443, "rw", true
    .lex "$_", $P443
    find_lex_skip_current $P444, "$/"
    $P445 = new ['Perl6Scalar'], $P444
    setprop $P445, "rw", true
    .lex "$/", $P445
    find_lex_skip_current $P446, "$!"
    $P447 = new ['Perl6Scalar'], $P446
    setprop $P447, "rw", true
    .lex "$!", $P447
    .lex "call_sig", param_448
    find_lex $P449, "call_sig"
    bind_llsig $P449
.annotate 'line', 76
    find_lex $P453, "$r"
    find_lex $P454, "$nl"
    find_lex $P455, "$lead"
    $P456 = "&infix:<~>"($P454, $P455)
    find_lex $P457, "$/"
    $P458 = "!postcircumfix:<[ ]>"($P457, 0)
    $P459 = "&infix:<~>"($P456, $P458)
    $P460 = "&infix:<~=>"($P453, $P459)
.annotate 'line', 75
    .return ($P460)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post259") :outer("130_1288975715.72644")
.annotate 'line', 75
    .const 'Sub' $P440 = "130_1288975715.72644" 
    .local pmc block
    set block, $P440
    .const 'Sub' $P461 = "130_1288975715.72644" 
    .const 'Sub' $P462 = "131_1288975715.72644" 
    setprop $P461, "$!lazysig", $P462
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block450"  :anon :subid("131_1288975715.72644") :outer("130_1288975715.72644")
.annotate 'line', 75
    $P452 = allocate_llsig 0
    .local pmc signature_74
    set signature_74, $P452
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_74
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block414"  :anon :subid("128_1288975715.72644") :outer("126_1288975715.72644")
    .param pmc param_423 :call_sig
.annotate 'line', 72
    .const 'Sub' $P426 = "129_1288975715.72644" 
    capture_lex $P426
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P416
    find_lex_skip_current $P417, "$_"
    $P418 = new ['Perl6Scalar'], $P417
    setprop $P418, "rw", true
    .lex "$_", $P418
    find_lex_skip_current $P419, "$/"
    $P420 = new ['Perl6Scalar'], $P419
    setprop $P420, "rw", true
    .lex "$/", $P420
    find_lex_skip_current $P421, "$!"
    $P422 = new ['Perl6Scalar'], $P421
    setprop $P422, "rw", true
    .lex "$!", $P422
    .lex "call_sig", param_423
    find_lex $P424, "call_sig"
    bind_llsig $P424
.annotate 'line', 73
    find_lex $P428, "$r"
    find_lex $P429, "$nl"
    find_lex $P430, "$lead"
    $P431 = "&infix:<~>"($P429, $P430)
    find_lex $P432, "$/"
    $P433 = "!postcircumfix:<[ ]>"($P432, 0)
    $P434 = "&infix:<~>"($P431, $P433)
    $P435 = "&unexpand"($P434)
    $P436 = "&infix:<~=>"($P428, $P435)
.annotate 'line', 72
    .return ($P436)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post260") :outer("128_1288975715.72644")
.annotate 'line', 72
    .const 'Sub' $P415 = "128_1288975715.72644" 
    .local pmc block
    set block, $P415
    .const 'Sub' $P437 = "128_1288975715.72644" 
    .const 'Sub' $P438 = "129_1288975715.72644" 
    setprop $P437, "$!lazysig", $P438
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block425"  :anon :subid("129_1288975715.72644") :outer("128_1288975715.72644")
.annotate 'line', 72
    $P427 = allocate_llsig 0
    .local pmc signature_73
    set signature_73, $P427
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_73
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block785"  :anon :subid("159_1288975715.72644") :outer("121_1288975715.72644")
    .param pmc param_794 :call_sig
.annotate 'line', 115
    .const 'Sub' $P797 = "160_1288975715.72644" 
    capture_lex $P797
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P787
    find_lex_skip_current $P788, "$_"
    $P789 = new ['Perl6Scalar'], $P788
    setprop $P789, "rw", true
    .lex "$_", $P789
    find_lex_skip_current $P790, "$/"
    $P791 = new ['Perl6Scalar'], $P790
    setprop $P791, "rw", true
    .lex "$/", $P791
    find_lex_skip_current $P792, "$!"
    $P793 = new ['Perl6Scalar'], $P792
    setprop $P793, "rw", true
    .lex "$!", $P793
    .lex "call_sig", param_794
    find_lex $P795, "call_sig"
    bind_llsig $P795
.annotate 'line', 116
    find_lex $P799, "$nl"
    find_lex $P800, "$remainder"
    $P801 = "&infix:<=>"($P799, $P800)
.annotate 'line', 115
    .return ($P801)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post261") :outer("159_1288975715.72644")
.annotate 'line', 115
    .const 'Sub' $P786 = "159_1288975715.72644" 
    .local pmc block
    set block, $P786
    .const 'Sub' $P802 = "159_1288975715.72644" 
    .const 'Sub' $P803 = "160_1288975715.72644" 
    setprop $P802, "$!lazysig", $P803
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block796"  :anon :subid("160_1288975715.72644") :outer("159_1288975715.72644")
.annotate 'line', 115
    $P798 = allocate_llsig 0
    .local pmc signature_91
    set signature_91, $P798
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_91
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block869"  :anon :subid("167_1288975715.72644") :outer("121_1288975715.72644")
    .param pmc param_878 :call_sig
.annotate 'line', 125
    .const 'Sub' $P881 = "168_1288975715.72644" 
    capture_lex $P881
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P871
    find_lex_skip_current $P872, "$_"
    $P873 = new ['Perl6Scalar'], $P872
    setprop $P873, "rw", true
    .lex "$_", $P873
    find_lex_skip_current $P874, "$/"
    $P875 = new ['Perl6Scalar'], $P874
    setprop $P875, "rw", true
    .lex "$/", $P875
    find_lex_skip_current $P876, "$!"
    $P877 = new ['Perl6Scalar'], $P876
    setprop $P877, "rw", true
    .lex "$!", $P877
    .lex "call_sig", param_878
    find_lex $P879, "call_sig"
    bind_llsig $P879
.annotate 'line', 126
    find_lex $P883, "$nl"
    find_lex $P884, "$separator"
    $P885 = "&infix:<=>"($P883, $P884)
.annotate 'line', 125
    .return ($P885)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post262") :outer("167_1288975715.72644")
.annotate 'line', 125
    .const 'Sub' $P870 = "167_1288975715.72644" 
    .local pmc block
    set block, $P870
    .const 'Sub' $P886 = "167_1288975715.72644" 
    .const 'Sub' $P887 = "168_1288975715.72644" 
    setprop $P886, "$!lazysig", $P887
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block880"  :anon :subid("168_1288975715.72644") :outer("167_1288975715.72644")
.annotate 'line', 125
    $P882 = allocate_llsig 0
    .local pmc signature_95
    set signature_95, $P882
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_95
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block807"  :anon :subid("161_1288975715.72644") :outer("121_1288975715.72644")
    .param pmc param_816 :call_sig
.annotate 'line', 118
    .const 'Sub' $P847 = "165_1288975715.72644" 
    capture_lex $P847
    .const 'Sub' $P827 = "163_1288975715.72644" 
    capture_lex $P827
    .const 'Sub' $P819 = "162_1288975715.72644" 
    capture_lex $P819
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P809
    find_lex_skip_current $P810, "$_"
    $P811 = new ['Perl6Scalar'], $P810
    setprop $P811, "rw", true
    .lex "$_", $P811
    find_lex_skip_current $P812, "$/"
    $P813 = new ['Perl6Scalar'], $P812
    setprop $P813, "rw", true
    .lex "$/", $P813
    find_lex_skip_current $P814, "$!"
    $P815 = new ['Perl6Scalar'], $P814
    setprop $P815, "rw", true
    .lex "$!", $P815
    .lex "call_sig", param_816
    find_lex $P817, "call_sig"
    bind_llsig $P817
.annotate 'line', 119
    find_lex $P824, "$remainder"
    new $P825, "Str"
    assign $P825, "\n"
    $P823 = "&infix:<eq>"($P824, $P825)
  chain_end_264:
    if $P823, if_822
.annotate 'line', 121
    .const 'Sub' $P847 = "165_1288975715.72644" 
    capture_lex $P847
    $P865 = $P847()
    set $P821, $P865
.annotate 'line', 119
    goto if_822_end
  if_822:
    .const 'Sub' $P827 = "163_1288975715.72644" 
    capture_lex $P827
    $P845 = $P827()
    set $P821, $P845
  if_822_end:
.annotate 'line', 118
    .return ($P821)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post263") :outer("161_1288975715.72644")
.annotate 'line', 118
    .const 'Sub' $P808 = "161_1288975715.72644" 
    .local pmc block
    set block, $P808
    .const 'Sub' $P866 = "161_1288975715.72644" 
    .const 'Sub' $P867 = "162_1288975715.72644" 
    setprop $P866, "$!lazysig", $P867
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block818"  :anon :subid("162_1288975715.72644") :outer("161_1288975715.72644")
.annotate 'line', 118
    $P820 = allocate_llsig 0
    .local pmc signature_94
    set signature_94, $P820
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_94
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block846"  :anon :subid("165_1288975715.72644") :outer("161_1288975715.72644")
    .param pmc param_855 :call_sig
.annotate 'line', 121
    .const 'Sub' $P858 = "166_1288975715.72644" 
    capture_lex $P858
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P848
    find_lex_skip_current $P849, "$_"
    $P850 = new ['Perl6Scalar'], $P849
    setprop $P850, "rw", true
    .lex "$_", $P850
    find_lex_skip_current $P851, "$/"
    $P852 = new ['Perl6Scalar'], $P851
    setprop $P852, "rw", true
    .lex "$/", $P852
    find_lex_skip_current $P853, "$!"
    $P854 = new ['Perl6Scalar'], $P853
    setprop $P854, "rw", true
    .lex "$!", $P854
    .lex "call_sig", param_855
    find_lex $P856, "call_sig"
    bind_llsig $P856
.annotate 'line', 122
    find_lex $P860, "$nl"
    find_lex $P861, "$separator2"
    $P862 = "&infix:<=>"($P860, $P861)
.annotate 'line', 121
    .return ($P862)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post265") :outer("165_1288975715.72644")
.annotate 'line', 121
    .const 'Sub' $P847 = "165_1288975715.72644" 
    .local pmc block
    set block, $P847
    .const 'Sub' $P863 = "165_1288975715.72644" 
    .const 'Sub' $P864 = "166_1288975715.72644" 
    setprop $P863, "$!lazysig", $P864
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block857"  :anon :subid("166_1288975715.72644") :outer("165_1288975715.72644")
.annotate 'line', 121
    $P859 = allocate_llsig 0
    .local pmc signature_93
    set signature_93, $P859
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_93
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block826"  :anon :subid("163_1288975715.72644") :outer("161_1288975715.72644")
    .param pmc param_835 :call_sig
.annotate 'line', 119
    .const 'Sub' $P838 = "164_1288975715.72644" 
    capture_lex $P838
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P828
    find_lex_skip_current $P829, "$_"
    $P830 = new ['Perl6Scalar'], $P829
    setprop $P830, "rw", true
    .lex "$_", $P830
    find_lex_skip_current $P831, "$/"
    $P832 = new ['Perl6Scalar'], $P831
    setprop $P832, "rw", true
    .lex "$/", $P832
    find_lex_skip_current $P833, "$!"
    $P834 = new ['Perl6Scalar'], $P833
    setprop $P834, "rw", true
    .lex "$!", $P834
    .lex "call_sig", param_835
    find_lex $P836, "call_sig"
    bind_llsig $P836
.annotate 'line', 120
    find_lex $P840, "$nl"
    new $P841, "Str"
    assign $P841, "\n"
    $P842 = "&infix:<=>"($P840, $P841)
.annotate 'line', 119
    .return ($P842)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post266") :outer("163_1288975715.72644")
.annotate 'line', 119
    .const 'Sub' $P827 = "163_1288975715.72644" 
    .local pmc block
    set block, $P827
    .const 'Sub' $P843 = "163_1288975715.72644" 
    .const 'Sub' $P844 = "164_1288975715.72644" 
    setprop $P843, "$!lazysig", $P844
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block837"  :anon :subid("164_1288975715.72644") :outer("163_1288975715.72644")
.annotate 'line', 119
    $P839 = allocate_llsig 0
    .local pmc signature_92
    set signature_92, $P839
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_92
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.include "except_types.pasm"
.sub "fill"  :anon :subid("169_1288975715.72644") :outer("108_1288975715.72644")
    .param pmc param_947 :call_sig
.annotate 'line', 146
    .const 'Sub' $P1047 = "178_1288975715.72644" 
    capture_lex $P1047
    .const 'Sub' $P1028 = "176_1288975715.72644" 
    capture_lex $P1028
    .const 'Sub' $P972 = "172_1288975715.72644" 
    capture_lex $P972
    .const 'Sub' $P960 = "171_1288975715.72644" 
    capture_lex $P960
    .const 'Sub' $P953 = "170_1288975715.72644" 
    capture_lex $P953
    new $P937, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P937, control_936
    push_eh $P937
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P938
    $P939 = new ['Perl6Scalar']
    setprop $P939, "rw", true
    .lex "$_", $P939
    $P940 = new ['Perl6Scalar']
    setprop $P940, "rw", true
    .lex "$/", $P940
    $P941 = new ['Perl6Scalar']
    setprop $P941, "rw", true
    .lex "$!", $P941
.annotate 'line', 147
    new $P942, "Array"
    setprop $P942, "rw", true
    set $P0, $P942
    get_hll_global $P943, "ContainerDeclarand"
    $P944 = $P943."new"($P0, "@para" :named("name"))
    .local pmc declarand
    set declarand, $P944
    transform_to_p6opaque $P0
    $P945 = $P0
    .lex "@para", $P945
.annotate 'line', 158
    new $P946, "Perl6Scalar"
    setprop $P946, "rw", true
    setprop $P946, "scalar", true
    .lex "$ps", $P946
    .lex "call_sig", param_947
    new $P948, "Perl6Scalar"
    .lex "$ip", $P948
    new $P949, "Perl6Scalar"
    .lex "$xp", $P949
    new $P950, "Array"
    .lex "@raw", $P950
    find_lex $P951, "call_sig"
    bind_llsig $P951
.annotate 'line', 147
    find_lex $P958, "@para"
.annotate 'line', 148
    .const 'Sub' $P960 = "171_1288975715.72644" 
    capture_lex $P960
    get_hll_global $P964, "Regex"
    $P965 = $P960."!get_closure"($P964, 0)
    new $P966, "Str"
    assign $P966, "\n"
    find_lex $P967, "@raw"
    $P968 = "&join"($P966, $P967)
    $P969 = "&split"($P965, $P968)
    $P970 = "&flat"($P969)
    .const 'Sub' $P972 = "172_1288975715.72644" 
    capture_lex $P972
    get_hll_global $P1018, "Block"
    .const 'Sub' $P1019 = "173_1288975715.72644" 
    $P1020 = $P972."!get_closure"($P1018, $P1019, 0)
    $P1021 = $P970."map"($P1020)
    "&eager"($P1021)
.annotate 'line', 158
    find_lex $P1022, "$ps"
.annotate 'line', 159
    find_lex $P1025, "$ip"
    find_lex $P1026, "$xp"
    $P1024 = "&infix:<eq>"($P1025, $P1026)
  chain_end_277:
    if $P1024, if_1023
.annotate 'line', 161
    .const 'Sub' $P1047 = "178_1288975715.72644" 
    capture_lex $P1047
    $P1047()
    goto if_1023_end
  if_1023:
.annotate 'line', 159
    .const 'Sub' $P1028 = "176_1288975715.72644" 
    capture_lex $P1028
    $P1028()
  if_1023_end:
.annotate 'line', 164
    find_lex $P1065, "$ps"
    find_lex $P1066, "@para"
    $P1067 = "&infix:<,>"($P1065, $P1066)
    $P1068 = "&join"($P1067)
    $P1069 = "&return"($P1068)
.annotate 'line', 146
    .return ($P1069)
  control_936:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1070, exception, "payload"
    .return ($P1070)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post267") :outer("169_1288975715.72644")
.annotate 'line', 146
    .const 'Sub' $P935 = "169_1288975715.72644" 
    .local pmc block
    set block, $P935
    .local pmc trait_subject
    .const 'Sub' $P1071 = "169_1288975715.72644" 
    get_hll_global $P1072, "Sub"
    .const 'Sub' $P1073 = "170_1288975715.72644" 
    $P1074 = $P1071."!get_code"($P1072, $P1073)
    set trait_subject, $P1074
    get_hll_global $P1075, ["Bool"], "True"
    "&trait_mod:<is>"(trait_subject, $P1075 :named("export"))
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block952"  :anon :subid("170_1288975715.72644") :outer("169_1288975715.72644")
.annotate 'line', 158
    $P954 = allocate_llsig 3
    .local pmc signature_104
    set signature_104, $P954
    null $P0
    null $S0
    get_hll_global $P955, "Any"
    set_llsig_elem signature_104, 0, "$ip", 128, $P955, $P0, $P0, $P0, $P0, $P0, $S0
    get_hll_global $P956, "Any"
    set_llsig_elem signature_104, 1, "$xp", 128, $P956, $P0, $P0, $P0, $P0, $P0, $S0
    get_global $P957, "Mu"
    set_llsig_elem signature_104, 2, "@raw", 4232, $P957, $P0, $P0, $P0, $P0, $P0, $S0
    .local pmc signature
    set signature, signature_104
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block959"  :anon :subid("171_1288975715.72644") :method :outer("169_1288975715.72644")
.annotate 'line', 148
    .local string rx961_tgt
    .local int rx961_pos
    .local int rx961_off
    .local int rx961_eos
    .local int rx961_rep
    .local pmc rx961_cur
    .local pmc rx961_debug
    (rx961_cur, rx961_pos, rx961_tgt, $I10) = self."!cursor_start"()
    getattribute rx961_debug, rx961_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx961_cur
    .local pmc match
    .lex "$/", match
    length rx961_eos, rx961_tgt
    gt rx961_pos, rx961_eos, rx961_done
    set rx961_off, 0
    lt rx961_pos, 2, rx961_start
    sub rx961_off, rx961_pos, 1
    substr rx961_tgt, rx961_tgt, rx961_off
  rx961_start:
    eq $I10, 1, rx961_restart
    if_null rx961_debug, debug_268
    rx961_cur."!cursor_debug"("START", "")
  debug_268:
    $I10 = self.'from'()
    ne $I10, -1, rxscan962_done
    goto rxscan962_scan
  rxscan962_loop:
    ($P10) = rx961_cur."from"()
    inc $P10
    set rx961_pos, $P10
    ge rx961_pos, rx961_eos, rxscan962_done
  rxscan962_scan:
    set_addr $I10, rxscan962_loop
    rx961_cur."!mark_push"(0, rx961_pos, $I10)
  rxscan962_done:
  # rx charclass nl
    ge rx961_pos, rx961_eos, rx961_fail
    sub $I10, rx961_pos, rx961_off
    is_cclass $I11, 4096, rx961_tgt, $I10
    unless $I11, rx961_fail
    substr $S10, rx961_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx961_pos, $I11
    inc rx961_pos
  # rx rxquantg963 ** 1..*
  rxquantg963_loop:
  # rx charclass s
    ge rx961_pos, rx961_eos, rx961_fail
    sub $I10, rx961_pos, rx961_off
    is_cclass $I11, 32, rx961_tgt, $I10
    unless $I11, rx961_fail
    inc rx961_pos
    set_addr $I10, rxquantg963_done
    rx961_cur."!mark_push"(rx961_rep, rx961_pos, $I10)
    goto rxquantg963_loop
  rxquantg963_done:
  # rx pass
    rx961_cur."!cursor_pass"(rx961_pos, "")
    if_null rx961_debug, debug_269
    rx961_cur."!cursor_debug"("PASS", "", " at pos=", rx961_pos)
  debug_269:
    rx961_cur."!cursor_backtrack"()
    .return (rx961_cur)
  rx961_restart:
    if_null rx961_debug, debug_270
    rx961_cur."!cursor_debug"("NEXT", "")
  debug_270:
  rx961_fail:
    (rx961_rep, rx961_pos, $I10, $P10) = rx961_cur."!mark_fail"(0)
    lt rx961_pos, -1, rx961_done
    eq rx961_pos, -1, rx961_fail
    jump $I10
  rx961_done:
    rx961_cur."!cursor_fail"()
    if_null rx961_debug, debug_271
    rx961_cur."!cursor_debug"("FAIL", "")
  debug_271:
    .return (rx961_cur)
    .return ()
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block971"  :anon :subid("172_1288975715.72644") :outer("169_1288975715.72644")
    .param pmc param_979 :call_sig
.annotate 'line', 148
    .const 'Sub' $P998 = "175_1288975715.72644" 
    capture_lex $P998
    .const 'Sub' $P991 = "174_1288975715.72644" 
    capture_lex $P991
    .const 'Sub' $P983 = "173_1288975715.72644" 
    capture_lex $P983
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P973
    find_lex_skip_current $P974, "$/"
    $P975 = new ['Perl6Scalar'], $P974
    setprop $P975, "rw", true
    .lex "$/", $P975
    find_lex_skip_current $P976, "$!"
    $P977 = new ['Perl6Scalar'], $P976
    setprop $P977, "rw", true
    .lex "$!", $P977
.annotate 'line', 150
    new $P978, "Perl6Scalar"
    setprop $P978, "rw", true
    setprop $P978, "scalar", true
    .lex "$x", $P978
    .lex "call_sig", param_979
    new $P980, "Perl6Scalar"
    .lex "$pp", $P980
    find_lex $P981, "call_sig"
    bind_llsig $P981
.annotate 'line', 148
    find_lex $P986, "$_"
    .local pmc old_topic99
    set old_topic99, $P986
.annotate 'line', 149
    find_lex $P987, "$pp"
    store_lex "$_", $P987
    find_lex $P988, "$_"
    find_lex $P989, "$_"
    .const 'Sub' $P991 = "174_1288975715.72644" 
    capture_lex $P991
    get_hll_global $P995, "Regex"
    $P996 = $P991."!get_closure"($P995, 0)
    .const 'Sub' $P998 = "175_1288975715.72644" 
    capture_lex $P998
    get_hll_global $P1000, "Block"
    $P1001 = $P998."!get_closure"($P1000, 0)
    $P1002 = $P989."subst"($P996, $P1001, 1 :named("g"))
    $P1003 = "&infix:<=>"($P988, $P1002)
    find_lex $P1004, "$_"
    $P1005 = $P1003."ACCEPTS"($P1004)
.annotate 'line', 148
    .lex "sm_result100", $P1005
    store_lex "$_", old_topic99
    find_lex $P1006, "sm_result100"
.annotate 'line', 150
    find_lex $P1007, "$x"
    find_lex $P1008, "$ip"
    find_lex $P1009, "$xp"
    find_lex $P1010, "$pp"
    $P1011 = "&wrap"($P1008, $P1009, $P1010)
    "&infix:<=>"($P1007, $P1011)
.annotate 'line', 151
    find_lex $P1012, "@para"
    deref_unless_object $P1013, $P1012
    find_lex $P1014, "$x"
    $P1015 = $P1013."push"($P1014)
.annotate 'line', 148
    .return ($P1015)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post272") :outer("172_1288975715.72644")
.annotate 'line', 148
    .const 'Sub' $P972 = "172_1288975715.72644" 
    .local pmc block
    set block, $P972
    .const 'Sub' $P1016 = "172_1288975715.72644" 
    .const 'Sub' $P1017 = "173_1288975715.72644" 
    setprop $P1016, "$!lazysig", $P1017
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block982"  :anon :subid("173_1288975715.72644") :outer("172_1288975715.72644")
.annotate 'line', 150
    $P984 = allocate_llsig 1
    .local pmc signature_101
    set signature_101, $P984
    null $P0
    null $S0
    get_hll_global $P985, "Mu"
    set_llsig_elem signature_101, 0, "$pp", 640, $P985, $P0, $P0, $P0, $P0, $P0, $S0
    .local pmc signature
    set signature, signature_101
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block990"  :anon :subid("174_1288975715.72644") :method :outer("172_1288975715.72644")
.annotate 'line', 149
    .local string rx992_tgt
    .local int rx992_pos
    .local int rx992_off
    .local int rx992_eos
    .local int rx992_rep
    .local pmc rx992_cur
    .local pmc rx992_debug
    (rx992_cur, rx992_pos, rx992_tgt, $I10) = self."!cursor_start"()
    getattribute rx992_debug, rx992_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx992_cur
    .local pmc match
    .lex "$/", match
    length rx992_eos, rx992_tgt
    gt rx992_pos, rx992_eos, rx992_done
    set rx992_off, 0
    lt rx992_pos, 2, rx992_start
    sub rx992_off, rx992_pos, 1
    substr rx992_tgt, rx992_tgt, rx992_off
  rx992_start:
    eq $I10, 1, rx992_restart
    if_null rx992_debug, debug_273
    rx992_cur."!cursor_debug"("START", "")
  debug_273:
    $I10 = self.'from'()
    ne $I10, -1, rxscan993_done
    goto rxscan993_scan
  rxscan993_loop:
    ($P10) = rx992_cur."from"()
    inc $P10
    set rx992_pos, $P10
    ge rx992_pos, rx992_eos, rxscan993_done
  rxscan993_scan:
    set_addr $I10, rxscan993_loop
    rx992_cur."!mark_push"(0, rx992_pos, $I10)
  rxscan993_done:
  # rx rxquantg994 ** 1..*
  rxquantg994_loop:
  # rx charclass s
    ge rx992_pos, rx992_eos, rx992_fail
    sub $I10, rx992_pos, rx992_off
    is_cclass $I11, 32, rx992_tgt, $I10
    unless $I11, rx992_fail
    inc rx992_pos
    set_addr $I10, rxquantg994_done
    rx992_cur."!mark_push"(rx992_rep, rx992_pos, $I10)
    goto rxquantg994_loop
  rxquantg994_done:
  # rx pass
    rx992_cur."!cursor_pass"(rx992_pos, "")
    if_null rx992_debug, debug_274
    rx992_cur."!cursor_debug"("PASS", "", " at pos=", rx992_pos)
  debug_274:
    rx992_cur."!cursor_backtrack"()
    .return (rx992_cur)
  rx992_restart:
    if_null rx992_debug, debug_275
    rx992_cur."!cursor_debug"("NEXT", "")
  debug_275:
  rx992_fail:
    (rx992_rep, rx992_pos, $I10, $P10) = rx992_cur."!mark_fail"(0)
    lt rx992_pos, -1, rx992_done
    eq rx992_pos, -1, rx992_fail
    jump $I10
  rx992_done:
    rx992_cur."!cursor_fail"()
    if_null rx992_debug, debug_276
    rx992_cur."!cursor_debug"("FAIL", "")
  debug_276:
    .return (rx992_cur)
    .return ()
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block997"  :anon :subid("175_1288975715.72644") :outer("172_1288975715.72644")
.annotate 'line', 149
    new $P999, "Str"
    assign $P999, " "
    .return ($P999)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block1046"  :anon :subid("178_1288975715.72644") :outer("169_1288975715.72644")
    .param pmc param_1055 :call_sig
.annotate 'line', 161
    .const 'Sub' $P1058 = "179_1288975715.72644" 
    capture_lex $P1058
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P1048
    find_lex_skip_current $P1049, "$_"
    $P1050 = new ['Perl6Scalar'], $P1049
    setprop $P1050, "rw", true
    .lex "$_", $P1050
    find_lex_skip_current $P1051, "$/"
    $P1052 = new ['Perl6Scalar'], $P1051
    setprop $P1052, "rw", true
    .lex "$/", $P1052
    find_lex_skip_current $P1053, "$!"
    $P1054 = new ['Perl6Scalar'], $P1053
    setprop $P1054, "rw", true
    .lex "$!", $P1054
    .lex "call_sig", param_1055
    find_lex $P1056, "call_sig"
    bind_llsig $P1056
.annotate 'line', 162
    find_lex $P1060, "$ps"
    new $P1061, "Str"
    assign $P1061, "\n"
    $P1062 = "&infix:<=>"($P1060, $P1061)
.annotate 'line', 161
    .return ($P1062)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post278") :outer("178_1288975715.72644")
.annotate 'line', 161
    .const 'Sub' $P1047 = "178_1288975715.72644" 
    .local pmc block
    set block, $P1047
    .const 'Sub' $P1063 = "178_1288975715.72644" 
    .const 'Sub' $P1064 = "179_1288975715.72644" 
    setprop $P1063, "$!lazysig", $P1064
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block1057"  :anon :subid("179_1288975715.72644") :outer("178_1288975715.72644")
.annotate 'line', 161
    $P1059 = allocate_llsig 0
    .local pmc signature_103
    set signature_103, $P1059
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_103
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block1027"  :anon :subid("176_1288975715.72644") :outer("169_1288975715.72644")
    .param pmc param_1036 :call_sig
.annotate 'line', 159
    .const 'Sub' $P1039 = "177_1288975715.72644" 
    capture_lex $P1039
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P1029
    find_lex_skip_current $P1030, "$_"
    $P1031 = new ['Perl6Scalar'], $P1030
    setprop $P1031, "rw", true
    .lex "$_", $P1031
    find_lex_skip_current $P1032, "$/"
    $P1033 = new ['Perl6Scalar'], $P1032
    setprop $P1033, "rw", true
    .lex "$/", $P1033
    find_lex_skip_current $P1034, "$!"
    $P1035 = new ['Perl6Scalar'], $P1034
    setprop $P1035, "rw", true
    .lex "$!", $P1035
    .lex "call_sig", param_1036
    find_lex $P1037, "call_sig"
    bind_llsig $P1037
.annotate 'line', 160
    find_lex $P1041, "$ps"
    new $P1042, "Str"
    assign $P1042, "\n\n"
    $P1043 = "&infix:<=>"($P1041, $P1042)
.annotate 'line', 159
    .return ($P1043)
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "" :load :init :subid("post279") :outer("176_1288975715.72644")
.annotate 'line', 159
    .const 'Sub' $P1028 = "176_1288975715.72644" 
    .local pmc block
    set block, $P1028
    .const 'Sub' $P1044 = "176_1288975715.72644" 
    .const 'Sub' $P1045 = "177_1288975715.72644" 
    setprop $P1044, "$!lazysig", $P1045
.end


.HLL "perl6"

.namespace ["Text";"Wrap"]
.sub "_block1038"  :anon :subid("177_1288975715.72644") :outer("176_1288975715.72644")
.annotate 'line', 159
    $P1040 = allocate_llsig 0
    .local pmc signature_102
    set signature_102, $P1040
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_102
    .return (signature)
.end


.HLL "perl6"

.namespace []
.sub "_block1113" :load :init :anon :subid("180_1288975715.72644")
.annotate 'line', 1
    $P1115 = "!fire_phasers"("CHECK")
    .return ($P1115)
.end


.HLL "perl6"

.namespace []
.sub "_block1116" :load :anon :subid("181_1288975715.72644")
.annotate 'line', 1
    .const 'Sub' $P1118 = "106_1288975715.72644" 
    $P1119 = "!UNIT_START"($P1118)
    .return ($P1119)
.end

