.loadlib 'perl6_ops'

.HLL "perl6"

.namespace []
.sub "_block74"  :anon :subid("81_1288975658.74625")
    .param pmc param_540 :slurpy
.annotate 'line', 0
    .const 'Sub' $P79 = "82_1288975658.74625" 
    capture_lex $P79
.annotate 'line', 1
.annotate 'file', 'lib/Text/Tabs.pm'
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P76
    get_hll_global $P77, "!UNIT_START"
    .const 'Sub' $P79 = "82_1288975658.74625" 
    capture_lex $P79
    .lex "@_", param_540
    $P541 = $P77($P79, param_540)
    .return ($P541)
    .const 'Sub' $P546 = "113_1288975658.74625" 
    .return ($P546)
.end


.HLL "perl6"

.namespace []
.sub "_block78"  :anon :subid("82_1288975658.74625") :outer("81_1288975658.74625")
    .param pmc param_87 :optional
    .param int has_param_87 :opt_flag
.annotate 'line', 1
    get_hll_global $P90, ["Text";"Tabs"], "_block89" 
    capture_lex $P90
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P80
    find_lex_skip_current $P81, "$_"
    $P82 = new ['Perl6Scalar'], $P81
    setprop $P82, "rw", true
    .lex "$_", $P82
    find_lex_skip_current $P83, "$/"
    $P84 = new ['Perl6Scalar'], $P83
    setprop $P84, "rw", true
    .lex "$/", $P84
    find_lex_skip_current $P85, "$!"
    $P86 = new ['Perl6Scalar'], $P85
    setprop $P86, "rw", true
    .lex "$!", $P86
    if has_param_87, optparam_115
    new $P88, "Integer"
    assign $P88, 0
    set param_87, $P88
  optparam_115:
    .lex "$MAIN", param_87
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
    get_hll_global $P90, ["Text";"Tabs"], "_block89" 
    capture_lex $P90
    $P539 = $P90()
    .return ($P539)
.end


.HLL "perl6"

.namespace []
.sub "" :load :init :subid("post114") :outer("82_1288975658.74625")
.annotate 'line', 1
    .const 'Sub' $P79 = "82_1288975658.74625" 
    .local pmc block
    set block, $P79
    $P0 = find_name "!UNIT_OUTER"
    unless null $P0 goto have_perl6
    load_language "perl6"
  have_perl6:
    "!UNIT_OUTER"(block)
    "!gen_assign_metaop"("+")
    "!gen_assign_metaop"("~")
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block89"  :subid("83_1288975658.74625") :outer("82_1288975658.74625")
.annotate 'line', 1
    .const 'Sub' $P338 = "100_1288975658.74625" 
    capture_lex $P338
    .const 'Sub' $P100 = "84_1288975658.74625" 
    capture_lex $P100
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P91
    find_lex_skip_current $P92, "$_"
    $P93 = new ['Perl6Scalar'], $P92
    setprop $P93, "rw", true
    .lex "$_", $P93
    find_lex_skip_current $P94, "$/"
    $P95 = new ['Perl6Scalar'], $P94
    setprop $P95, "rw", true
    .lex "$/", $P95
    find_lex_skip_current $P96, "$!"
    $P97 = new ['Perl6Scalar'], $P96
    setprop $P97, "rw", true
    .lex "$!", $P97
.annotate 'line', 11
    get_global $P98, "$tabstop"
    unless_null $P98, vivify_116
    new $P98, "Perl6Scalar"
    setprop $P98, "rw", true
    setprop $P98, "scalar", true
    set_global "$tabstop", $P98
  vivify_116:
    .lex "$tabstop", $P98
.annotate 'line', 12
    get_global $P99, "$debug"
    unless_null $P99, vivify_117
    new $P99, "Perl6Scalar"
    setprop $P99, "rw", true
    setprop $P99, "scalar", true
    set_global "$debug", $P99
  vivify_117:
    .lex "$debug", $P99
.annotate 'line', 14
    .local pmc code_73
    .const 'Sub' $P100 = "84_1288975658.74625" 
    capture_lex $P100
    get_hll_global $P335, "Sub"
    .const 'Sub' $P336 = "85_1288975658.74625" 
    $P337 = $P100."!get_closure"($P335, $P336, 0)
    set code_73, $P337
    .lex "&expand", code_73
.annotate 'line', 47
    .local pmc code_80
    .const 'Sub' $P338 = "100_1288975658.74625" 
    capture_lex $P338
    get_hll_global $P532, "Sub"
    .const 'Sub' $P533 = "101_1288975658.74625" 
    $P534 = $P338."!get_closure"($P532, $P533, 0)
    set code_80, $P534
    .lex "&unexpand", code_80
.annotate 'line', 11
    find_lex $P535, "$tabstop"
    new $P536, "Int"
    assign $P536, 8
    "&infix:<=>"($P535, $P536)
.annotate 'line', 12
    find_lex $P537, "$debug"
    new $P538, "Int"
    assign $P538, 0
    "&infix:<=>"($P537, $P538)
.annotate 'line', 1
    .return (code_80)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.include "except_types.pasm"
.sub "expand"  :anon :subid("84_1288975658.74625") :outer("83_1288975658.74625")
    .param pmc param_112 :call_sig
.annotate 'line', 14
    .const 'Sub' $P124 = "86_1288975658.74625" 
    capture_lex $P124
    .const 'Sub' $P116 = "85_1288975658.74625" 
    capture_lex $P116
    new $P102, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P102, control_101
    push_eh $P102
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P103
    $P104 = new ['Perl6Scalar']
    setprop $P104, "rw", true
    .lex "$_", $P104
    $P105 = new ['Perl6Scalar']
    setprop $P105, "rw", true
    .lex "$/", $P105
    $P106 = new ['Perl6Scalar']
    setprop $P106, "rw", true
    .lex "$!", $P106
.annotate 'line', 15
    new $P107, "Array"
    setprop $P107, "rw", true
    set $P0, $P107
    get_hll_global $P108, "ContainerDeclarand"
    $P109 = $P108."new"($P0, "@l" :named("name"))
    .local pmc declarand
    set declarand, $P109
    transform_to_p6opaque $P0
    $P110 = $P0
    .lex "@l", $P110
.annotate 'line', 16
    new $P111, "Perl6Scalar"
    setprop $P111, "rw", true
    setprop $P111, "scalar", true
    .lex "$pad", $P111
    .lex "call_sig", param_112
    new $P113, "Array"
    .lex "@in", $P113
    find_lex $P114, "call_sig"
    bind_llsig $P114
.annotate 'line', 15
    find_lex $P119, "@l"
.annotate 'line', 16
    find_lex $P120, "$pad"
.annotate 'line', 17
    find_lex $P121, "@in"
    $P122 = "&flat"($P121)
    .const 'Sub' $P124 = "86_1288975658.74625" 
    capture_lex $P124
    get_hll_global $P321, "Block"
    .const 'Sub' $P322 = "87_1288975658.74625" 
    $P323 = $P124."!get_closure"($P321, $P322, 0)
    $P324 = $P122."map"($P323)
    "&eager"($P324)
.annotate 'line', 44
    find_lex $P325, "@l"
    new $P326, "Int"
    assign $P326, 0
    $P327 = "!postcircumfix:<[ ]>"($P325, $P326)
    $P328 = "&return"($P327)
.annotate 'line', 14
    .return ($P328)
  control_101:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P329, exception, "payload"
    .return ($P329)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "" :load :init :subid("post118") :outer("84_1288975658.74625")
.annotate 'line', 14
    .const 'Sub' $P100 = "84_1288975658.74625" 
    .local pmc block
    set block, $P100
    .local pmc trait_subject
    .const 'Sub' $P330 = "84_1288975658.74625" 
    get_hll_global $P331, "Sub"
    .const 'Sub' $P332 = "85_1288975658.74625" 
    $P333 = $P330."!get_code"($P331, $P332)
    set trait_subject, $P333
    get_hll_global $P334, ["Bool"], "True"
    "&trait_mod:<is>"(trait_subject, $P334 :named("export"))
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block115"  :anon :subid("85_1288975658.74625") :outer("84_1288975658.74625")
.annotate 'line', 16
    $P117 = allocate_llsig 1
    .local pmc signature_72
    set signature_72, $P117
    null $P0
    null $S0
    get_global $P118, "Mu"
    set_llsig_elem signature_72, 0, "@in", 4232, $P118, $P0, $P0, $P0, $P0, $P0, $S0
    .local pmc signature
    set signature, signature_72
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block123"  :anon :subid("86_1288975658.74625") :outer("84_1288975658.74625")
    .param pmc param_135 :call_sig
.annotate 'line', 17
    .const 'Sub' $P160 = "89_1288975658.74625" 
    capture_lex $P160
    .const 'Sub' $P148 = "88_1288975658.74625" 
    capture_lex $P148
    .const 'Sub' $P139 = "87_1288975658.74625" 
    capture_lex $P139
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P125
    find_lex_skip_current $P126, "$/"
    $P127 = new ['Perl6Scalar'], $P126
    setprop $P127, "rw", true
    .lex "$/", $P127
    find_lex_skip_current $P128, "$!"
    $P129 = new ['Perl6Scalar'], $P128
    setprop $P129, "rw", true
    .lex "$!", $P129
.annotate 'line', 18
    new $P130, "Perl6Scalar"
    setprop $P130, "rw", true
    setprop $P130, "scalar", true
    .lex "$s", $P130
.annotate 'line', 19
    new $P131, "Array"
    setprop $P131, "rw", true
    set $P0, $P131
    get_hll_global $P132, "ContainerDeclarand"
    $P133 = $P132."new"($P0, "@matchs" :named("name"))
    .local pmc declarand
    set declarand, $P133
    transform_to_p6opaque $P0
    $P134 = $P0
    .lex "@matchs", $P134
    .lex "call_sig", param_135
    new $P136, "Perl6Scalar"
    .lex "$x", $P136
    find_lex $P137, "call_sig"
    bind_llsig $P137
.annotate 'line', 18
    find_lex $P142, "$s"
    new $P143, "Str"
    assign $P143, ""
    "&infix:<=>"($P142, $P143)
.annotate 'line', 19
    find_lex $P144, "@matchs"
    find_lex $P145, "$x"
    deref_unless_object $P146, $P145
    .const 'Sub' $P148 = "88_1288975658.74625" 
    capture_lex $P148
    get_hll_global $P154, "Regex"
    $P155 = $P148."!get_closure"($P154, 0)
    $P156 = $P146."comb"($P155)
    "&infix:<=>"($P144, $P156)
.annotate 'line', 20
    find_lex $P157, "@matchs"
    $P158 = "&flat"($P157)
    .const 'Sub' $P160 = "89_1288975658.74625" 
    capture_lex $P160
    get_hll_global $P311, "Block"
    .const 'Sub' $P312 = "90_1288975658.74625" 
    $P313 = $P160."!get_closure"($P311, $P312, 0)
    $P314 = $P158."map"($P313)
    "&eager"($P314)
.annotate 'line', 41
    find_lex $P315, "@l"
    deref_unless_object $P316, $P315
    find_lex $P317, "$s"
    $P318 = $P316."push"($P317)
.annotate 'line', 17
    .return ($P318)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "" :load :init :subid("post119") :outer("86_1288975658.74625")
.annotate 'line', 17
    .const 'Sub' $P124 = "86_1288975658.74625" 
    .local pmc block
    set block, $P124
    .const 'Sub' $P319 = "86_1288975658.74625" 
    .const 'Sub' $P320 = "87_1288975658.74625" 
    setprop $P319, "$!lazysig", $P320
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block138"  :anon :subid("87_1288975658.74625") :outer("86_1288975658.74625")
.annotate 'line', 19
    $P140 = allocate_llsig 1
    .local pmc signature_71
    set signature_71, $P140
    null $P0
    null $S0
    get_hll_global $P141, "Mu"
    set_llsig_elem signature_71, 0, "$x", 128, $P141, $P0, $P0, $P0, $P0, $P0, $S0
    .local pmc signature
    set signature, signature_71
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block147"  :anon :subid("88_1288975658.74625") :method :outer("86_1288975658.74625")
.annotate 'line', 19
    .local string rx149_tgt
    .local int rx149_pos
    .local int rx149_off
    .local int rx149_eos
    .local int rx149_rep
    .local pmc rx149_cur
    .local pmc rx149_debug
    (rx149_cur, rx149_pos, rx149_tgt, $I10) = self."!cursor_start"()
    getattribute rx149_debug, rx149_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx149_cur
    .local pmc match
    .lex "$/", match
    length rx149_eos, rx149_tgt
    gt rx149_pos, rx149_eos, rx149_done
    set rx149_off, 0
    lt rx149_pos, 2, rx149_start
    sub rx149_off, rx149_pos, 1
    substr rx149_tgt, rx149_tgt, rx149_off
  rx149_start:
    eq $I10, 1, rx149_restart
    if_null rx149_debug, debug_120
    rx149_cur."!cursor_debug"("START", "")
  debug_120:
    $I10 = self.'from'()
    ne $I10, -1, rxscan150_done
    goto rxscan150_scan
  rxscan150_loop:
    ($P10) = rx149_cur."from"()
    inc $P10
    set rx149_pos, $P10
    ge rx149_pos, rx149_eos, rxscan150_done
  rxscan150_scan:
    set_addr $I10, rxscan150_loop
    rx149_cur."!mark_push"(0, rx149_pos, $I10)
  rxscan150_done:
  # rxanchor bol
    eq rx149_pos, 0, rxanchor151_done
    ge rx149_pos, rx149_eos, rx149_fail
    sub $I10, rx149_pos, rx149_off
    dec $I10
    is_cclass $I11, 4096, rx149_tgt, $I10
    unless $I11, rx149_fail
  rxanchor151_done:
  # rx rxquantg152 ** 0..*
    set_addr $I10, rxquantg152_done
    rx149_cur."!mark_push"(0, rx149_pos, $I10)
  rxquantg152_loop:
  # rx charclass N
    ge rx149_pos, rx149_eos, rx149_fail
    sub $I10, rx149_pos, rx149_off
    is_cclass $I11, 4096, rx149_tgt, $I10
    if $I11, rx149_fail
    inc rx149_pos
    set_addr $I10, rxquantg152_done
    rx149_cur."!mark_push"(rx149_rep, rx149_pos, $I10)
    goto rxquantg152_loop
  rxquantg152_done:
  # rx rxquantg153 ** 0..1
    set_addr $I10, rxquantg153_done
    rx149_cur."!mark_push"(0, rx149_pos, $I10)
  rxquantg153_loop:
  # rx charclass nl
    ge rx149_pos, rx149_eos, rx149_fail
    sub $I10, rx149_pos, rx149_off
    is_cclass $I11, 4096, rx149_tgt, $I10
    unless $I11, rx149_fail
    substr $S10, rx149_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx149_pos, $I11
    inc rx149_pos
  rxquantg153_done:
  # rx pass
    rx149_cur."!cursor_pass"(rx149_pos, "")
    if_null rx149_debug, debug_121
    rx149_cur."!cursor_debug"("PASS", "", " at pos=", rx149_pos)
  debug_121:
    rx149_cur."!cursor_backtrack"()
    .return (rx149_cur)
  rx149_restart:
    if_null rx149_debug, debug_122
    rx149_cur."!cursor_debug"("NEXT", "")
  debug_122:
  rx149_fail:
    (rx149_rep, rx149_pos, $I10, $P10) = rx149_cur."!mark_fail"(0)
    lt rx149_pos, -1, rx149_done
    eq rx149_pos, -1, rx149_fail
    jump $I10
  rx149_done:
    rx149_cur."!cursor_fail"()
    if_null rx149_debug, debug_123
    rx149_cur."!cursor_debug"("FAIL", "")
  debug_123:
    .return (rx149_cur)
    .return ()
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block159"  :anon :subid("89_1288975658.74625") :outer("86_1288975658.74625")
    .param pmc param_176 :call_sig
.annotate 'line', 20
    .const 'Sub' $P270 = "98_1288975658.74625" 
    capture_lex $P270
    .const 'Sub' $P259 = "96_1288975658.74625" 
    capture_lex $P259
    .const 'Sub' $P202 = "92_1288975658.74625" 
    capture_lex $P202
    .const 'Sub' $P191 = "91_1288975658.74625" 
    capture_lex $P191
    .const 'Sub' $P180 = "90_1288975658.74625" 
    capture_lex $P180
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P161
    find_lex_skip_current $P162, "$/"
    $P163 = new ['Perl6Scalar'], $P162
    setprop $P163, "rw", true
    .lex "$/", $P163
    find_lex_skip_current $P164, "$!"
    $P165 = new ['Perl6Scalar'], $P164
    setprop $P165, "rw", true
    .lex "$!", $P165
.annotate 'line', 21
    new $P166, "Perl6Scalar"
    setprop $P166, "rw", true
    setprop $P166, "scalar", true
    .lex "$offs", $P166
.annotate 'line', 22
    new $P167, "Perl6Scalar"
    setprop $P167, "rw", true
    setprop $P167, "scalar", true
    .lex "$tmp", $P167
.annotate 'line', 25
    new $P168, "Array"
    setprop $P168, "rw", true
    set $P0, $P168
    get_hll_global $P169, "ContainerDeclarand"
    $P170 = $P169."new"($P0, "@a" :named("name"))
    .local pmc declarand
    set declarand, $P170
    transform_to_p6opaque $P0
    $P171 = $P0
    .lex "@a", $P171
.annotate 'line', 26
    new $P172, "Array"
    setprop $P172, "rw", true
    set $P0, $P172
    get_hll_global $P173, "ContainerDeclarand"
    $P174 = $P173."new"($P0, "@pos" :named("name"))
    .local pmc declarand
    set declarand, $P174
    transform_to_p6opaque $P0
    $P175 = $P0
    .lex "@pos", $P175
    .lex "call_sig", param_176
    new $P177, "Perl6Scalar"
    .lex "$y", $P177
    find_lex $P178, "call_sig"
    bind_llsig $P178
.annotate 'line', 21
    find_lex $P183, "$offs"
    new $P184, "Int"
    assign $P184, 0
    "&infix:<=>"($P183, $P184)
.annotate 'line', 22
    find_lex $P185, "$tmp"
    find_lex $P186, "$y"
    "&infix:<=>"($P185, $P186)
.annotate 'line', 25
    find_lex $P187, "@a"
    find_lex $P188, "$tmp"
    deref_unless_object $P189, $P188
    .const 'Sub' $P191 = "91_1288975658.74625" 
    capture_lex $P191
    get_hll_global $P194, "Regex"
    $P195 = $P191."!get_closure"($P194, 0)
    get_hll_global $P196, ["Bool"], "True"
    $P197 = $P189."split"($P195, $P196 :named("all"))
    "&infix:<=>"($P187, $P197)
.annotate 'line', 26
    find_lex $P198, "@pos"
.annotate 'line', 27
    find_lex $P199, "@a"
    $P200 = "&flat"($P199)
    .const 'Sub' $P202 = "92_1288975658.74625" 
    capture_lex $P202
    get_hll_global $P250, "Block"
    .const 'Sub' $P251 = "93_1288975658.74625" 
    $P252 = $P202."!get_closure"($P250, $P251, 0)
    $P253 = $P200."map"($P252)
    "&eager"($P253)
    find_lex $P254, "$_"
    .local pmc old_topic68
    set old_topic68, $P254
.annotate 'line', 34
    find_lex $P255, "$tmp"
    store_lex "$_", $P255
    find_lex $P256, "$_"
    find_lex $P257, "$_"
    .const 'Sub' $P259 = "96_1288975658.74625" 
    capture_lex $P259
    get_hll_global $P267, "Regex"
    $P268 = $P259."!get_closure"($P267, 0)
    .const 'Sub' $P270 = "98_1288975658.74625" 
    capture_lex $P270
    get_hll_global $P299, "Block"
    $P300 = $P270."!get_closure"($P299, 0)
    $P301 = $P257."subst"($P268, $P300, 1 :named("g"))
    $P302 = "&infix:<=>"($P256, $P301)
    find_lex $P303, "$_"
    $P304 = $P302."ACCEPTS"($P303)
.annotate 'line', 27
    .lex "sm_result69", $P304
    store_lex "$_", old_topic68
    find_lex $P305, "sm_result69"
.annotate 'line', 39
    find_lex $P306, "$s"
    find_lex $P307, "$tmp"
    $P308 = "&infix:<~=>"($P306, $P307)
.annotate 'line', 20
    .return ($P308)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "" :load :init :subid("post124") :outer("89_1288975658.74625")
.annotate 'line', 20
    .const 'Sub' $P160 = "89_1288975658.74625" 
    .local pmc block
    set block, $P160
    .const 'Sub' $P309 = "89_1288975658.74625" 
    .const 'Sub' $P310 = "90_1288975658.74625" 
    setprop $P309, "$!lazysig", $P310
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block179"  :anon :subid("90_1288975658.74625") :outer("89_1288975658.74625")
.annotate 'line', 26
    $P181 = allocate_llsig 1
    .local pmc signature_70
    set signature_70, $P181
    null $P0
    null $S0
    get_hll_global $P182, "Mu"
    set_llsig_elem signature_70, 0, "$y", 128, $P182, $P0, $P0, $P0, $P0, $P0, $S0
    .local pmc signature
    set signature, signature_70
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block190"  :anon :subid("91_1288975658.74625") :method :outer("89_1288975658.74625")
.annotate 'line', 25
    .local string rx192_tgt
    .local int rx192_pos
    .local int rx192_off
    .local int rx192_eos
    .local int rx192_rep
    .local pmc rx192_cur
    .local pmc rx192_debug
    (rx192_cur, rx192_pos, rx192_tgt, $I10) = self."!cursor_start"()
    getattribute rx192_debug, rx192_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx192_cur
    .local pmc match
    .lex "$/", match
    length rx192_eos, rx192_tgt
    gt rx192_pos, rx192_eos, rx192_done
    set rx192_off, 0
    lt rx192_pos, 2, rx192_start
    sub rx192_off, rx192_pos, 1
    substr rx192_tgt, rx192_tgt, rx192_off
  rx192_start:
    eq $I10, 1, rx192_restart
    if_null rx192_debug, debug_125
    rx192_cur."!cursor_debug"("START", "")
  debug_125:
    $I10 = self.'from'()
    ne $I10, -1, rxscan193_done
    goto rxscan193_scan
  rxscan193_loop:
    ($P10) = rx192_cur."from"()
    inc $P10
    set rx192_pos, $P10
    ge rx192_pos, rx192_eos, rxscan193_done
  rxscan193_scan:
    set_addr $I10, rxscan193_loop
    rx192_cur."!mark_push"(0, rx192_pos, $I10)
  rxscan193_done:
  # rx enumcharlist negate=0 
    ge rx192_pos, rx192_eos, rx192_fail
    sub $I10, rx192_pos, rx192_off
    substr $S10, rx192_tgt, $I10, 1
    index $I11, "\t", $S10
    lt $I11, 0, rx192_fail
    inc rx192_pos
  # rx pass
    rx192_cur."!cursor_pass"(rx192_pos, "")
    if_null rx192_debug, debug_126
    rx192_cur."!cursor_debug"("PASS", "", " at pos=", rx192_pos)
  debug_126:
    rx192_cur."!cursor_backtrack"()
    .return (rx192_cur)
  rx192_restart:
    if_null rx192_debug, debug_127
    rx192_cur."!cursor_debug"("NEXT", "")
  debug_127:
  rx192_fail:
    (rx192_rep, rx192_pos, $I10, $P10) = rx192_cur."!mark_fail"(0)
    lt rx192_pos, -1, rx192_done
    eq rx192_pos, -1, rx192_fail
    jump $I10
  rx192_done:
    rx192_cur."!cursor_fail"()
    if_null rx192_debug, debug_128
    rx192_cur."!cursor_debug"("FAIL", "")
  debug_128:
    .return (rx192_cur)
    .return ()
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block201"  :anon :subid("92_1288975658.74625") :outer("89_1288975658.74625")
    .param pmc param_208 :call_sig
.annotate 'line', 27
    .const 'Sub' $P226 = "94_1288975658.74625" 
    capture_lex $P226
    .const 'Sub' $P212 = "93_1288975658.74625" 
    capture_lex $P212
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P203
    find_lex_skip_current $P204, "$/"
    $P205 = new ['Perl6Scalar'], $P204
    setprop $P205, "rw", true
    .lex "$/", $P205
    find_lex_skip_current $P206, "$!"
    $P207 = new ['Perl6Scalar'], $P206
    setprop $P207, "rw", true
    .lex "$!", $P207
    .lex "call_sig", param_208
    new $P209, "Perl6Scalar"
    .lex "$x", $P209
    find_lex $P210, "call_sig"
    bind_llsig $P210
.annotate 'line', 28
    find_lex $P217, "$_"
    .local pmc old_topic64
    set old_topic64, $P217
    find_lex $P218, "$x"
    deref_unless_object $P219, $P218
    $P220 = $P219."WHAT"()
    store_lex "$_", $P220
    get_hll_global $P221, "Match"
    unless_null $P221, vivify_130
    $P221 = "!FAIL"("Can not find sub Match")
  vivify_130:
    find_lex $P222, "$_"
    $P223 = $P221."ACCEPTS"($P222)
    .lex "sm_result65", $P223
    store_lex "$_", old_topic64
    find_lex $P224, "sm_result65"
    if $P224, if_216
    set $P215, $P224
    goto if_216_end
  if_216:
    .const 'Sub' $P226 = "94_1288975658.74625" 
    capture_lex $P226
    $P247 = $P226()
    set $P215, $P247
  if_216_end:
.annotate 'line', 27
    .return ($P215)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "" :load :init :subid("post129") :outer("92_1288975658.74625")
.annotate 'line', 27
    .const 'Sub' $P202 = "92_1288975658.74625" 
    .local pmc block
    set block, $P202
    .const 'Sub' $P248 = "92_1288975658.74625" 
    .const 'Sub' $P249 = "93_1288975658.74625" 
    setprop $P248, "$!lazysig", $P249
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block211"  :anon :subid("93_1288975658.74625") :outer("92_1288975658.74625")
.annotate 'line', 27
    $P213 = allocate_llsig 1
    .local pmc signature_67
    set signature_67, $P213
    null $P0
    null $S0
    get_hll_global $P214, "Mu"
    set_llsig_elem signature_67, 0, "$x", 128, $P214, $P0, $P0, $P0, $P0, $P0, $S0
    .local pmc signature
    set signature, signature_67
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block225"  :anon :subid("94_1288975658.74625") :outer("92_1288975658.74625")
    .param pmc param_234 :call_sig
.annotate 'line', 28
    .const 'Sub' $P237 = "95_1288975658.74625" 
    capture_lex $P237
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P227
    find_lex_skip_current $P228, "$_"
    $P229 = new ['Perl6Scalar'], $P228
    setprop $P229, "rw", true
    .lex "$_", $P229
    find_lex_skip_current $P230, "$/"
    $P231 = new ['Perl6Scalar'], $P230
    setprop $P231, "rw", true
    .lex "$/", $P231
    find_lex_skip_current $P232, "$!"
    $P233 = new ['Perl6Scalar'], $P232
    setprop $P233, "rw", true
    .lex "$!", $P233
    .lex "call_sig", param_234
    find_lex $P235, "call_sig"
    bind_llsig $P235
.annotate 'line', 29
    find_lex $P239, "@pos"
    deref_unless_object $P240, $P239
    find_lex $P241, "$x"
    deref_unless_object $P242, $P241
    $P243 = $P242."from"()
    $P244 = $P240."push"($P243)
.annotate 'line', 28
    .return ($P244)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "" :load :init :subid("post131") :outer("94_1288975658.74625")
.annotate 'line', 28
    .const 'Sub' $P226 = "94_1288975658.74625" 
    .local pmc block
    set block, $P226
    .const 'Sub' $P245 = "94_1288975658.74625" 
    .const 'Sub' $P246 = "95_1288975658.74625" 
    setprop $P245, "$!lazysig", $P246
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block236"  :anon :subid("95_1288975658.74625") :outer("94_1288975658.74625")
.annotate 'line', 28
    $P238 = allocate_llsig 0
    .local pmc signature_66
    set signature_66, $P238
    null $P0
    null $S0
    .local pmc signature
    set signature, signature_66
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block258"  :anon :subid("96_1288975658.74625") :method :outer("89_1288975658.74625")
.annotate 'line', 34
    .const 'Sub' $P263 = "97_1288975658.74625" 
    capture_lex $P263
    .local string rx260_tgt
    .local int rx260_pos
    .local int rx260_off
    .local int rx260_eos
    .local int rx260_rep
    .local pmc rx260_cur
    .local pmc rx260_debug
    (rx260_cur, rx260_pos, rx260_tgt, $I10) = self."!cursor_start"()
    getattribute rx260_debug, rx260_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx260_cur
    .local pmc match
    .lex "$/", match
    length rx260_eos, rx260_tgt
    gt rx260_pos, rx260_eos, rx260_done
    set rx260_off, 0
    lt rx260_pos, 2, rx260_start
    sub rx260_off, rx260_pos, 1
    substr rx260_tgt, rx260_tgt, rx260_off
  rx260_start:
    eq $I10, 1, rx260_restart
    if_null rx260_debug, debug_132
    rx260_cur."!cursor_debug"("START", "")
  debug_132:
    $I10 = self.'from'()
    ne $I10, -1, rxscan261_done
    goto rxscan261_scan
  rxscan261_loop:
    ($P10) = rx260_cur."from"()
    inc $P10
    set rx260_pos, $P10
    ge rx260_pos, rx260_eos, rxscan261_done
  rxscan261_scan:
    set_addr $I10, rxscan261_loop
    rx260_cur."!mark_push"(0, rx260_pos, $I10)
  rxscan261_done:
  # rx subrule $P263 subtype=capture negate=
    rx260_cur."!cursor_pos"(rx260_pos)
    .const 'Sub' $P263 = "97_1288975658.74625" 
    capture_lex $P263
    $P10 = rx260_cur.$P263()
    unless $P10, rx260_fail
    goto rxsubrule266_pass
  rxsubrule266_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx260_fail
  rxsubrule266_pass:
    set_addr $I10, rxsubrule266_back
    rx260_cur."!mark_push"(0, rx260_pos, $I10, $P10)
    $P10."!cursor_names"(0)
    rx260_pos = $P10."pos"()
  # rx pass
    rx260_cur."!cursor_pass"(rx260_pos, "")
    if_null rx260_debug, debug_137
    rx260_cur."!cursor_debug"("PASS", "", " at pos=", rx260_pos)
  debug_137:
    rx260_cur."!cursor_backtrack"()
    .return (rx260_cur)
  rx260_restart:
    if_null rx260_debug, debug_138
    rx260_cur."!cursor_debug"("NEXT", "")
  debug_138:
  rx260_fail:
    (rx260_rep, rx260_pos, $I10, $P10) = rx260_cur."!mark_fail"(0)
    lt rx260_pos, -1, rx260_done
    eq rx260_pos, -1, rx260_fail
    jump $I10
  rx260_done:
    rx260_cur."!cursor_fail"()
    if_null rx260_debug, debug_139
    rx260_cur."!cursor_debug"("FAIL", "")
  debug_139:
    .return (rx260_cur)
    .return ()
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block262"  :anon :subid("97_1288975658.74625") :method :outer("96_1288975658.74625")
.annotate 'line', 34
    .local string rx264_tgt
    .local int rx264_pos
    .local int rx264_off
    .local int rx264_eos
    .local int rx264_rep
    .local pmc rx264_cur
    .local pmc rx264_debug
    (rx264_cur, rx264_pos, rx264_tgt, $I10) = self."!cursor_start"()
    getattribute rx264_debug, rx264_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx264_cur
    .local pmc match
    .lex "$/", match
    length rx264_eos, rx264_tgt
    gt rx264_pos, rx264_eos, rx264_done
    set rx264_off, 0
    lt rx264_pos, 2, rx264_start
    sub rx264_off, rx264_pos, 1
    substr rx264_tgt, rx264_tgt, rx264_off
  rx264_start:
    eq $I10, 1, rx264_restart
    if_null rx264_debug, debug_133
    rx264_cur."!cursor_debug"("START", "")
  debug_133:
    $I10 = self.'from'()
    ne $I10, -1, rxscan265_done
    goto rxscan265_scan
  rxscan265_loop:
    ($P10) = rx264_cur."from"()
    inc $P10
    set rx264_pos, $P10
    ge rx264_pos, rx264_eos, rxscan265_done
  rxscan265_scan:
    set_addr $I10, rxscan265_loop
    rx264_cur."!mark_push"(0, rx264_pos, $I10)
  rxscan265_done:
  # rx enumcharlist negate=0 
    ge rx264_pos, rx264_eos, rx264_fail
    sub $I10, rx264_pos, rx264_off
    substr $S10, rx264_tgt, $I10, 1
    index $I11, "\t", $S10
    lt $I11, 0, rx264_fail
    inc rx264_pos
  # rx pass
    rx264_cur."!cursor_pass"(rx264_pos, "")
    if_null rx264_debug, debug_134
    rx264_cur."!cursor_debug"("PASS", "", " at pos=", rx264_pos)
  debug_134:
    rx264_cur."!cursor_backtrack"()
    .return (rx264_cur)
  rx264_restart:
    if_null rx264_debug, debug_135
    rx264_cur."!cursor_debug"("NEXT", "")
  debug_135:
  rx264_fail:
    (rx264_rep, rx264_pos, $I10, $P10) = rx264_cur."!mark_fail"(0)
    lt rx264_pos, -1, rx264_done
    eq rx264_pos, -1, rx264_fail
    jump $I10
  rx264_done:
    rx264_cur."!cursor_fail"()
    if_null rx264_debug, debug_136
    rx264_cur."!cursor_debug"("FAIL", "")
  debug_136:
    .return (rx264_cur)
    .return ()
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block269"  :anon :subid("98_1288975658.74625") :outer("89_1288975658.74625")
.annotate 'line', 34
    .const 'Sub' $P272 = "99_1288975658.74625" 
    capture_lex $P272
    .const 'Sub' $P272 = "99_1288975658.74625" 
    capture_lex $P272
    $P297 = $P272()
    set $S298, $P297
    .return ($S298)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block271"  :anon :subid("99_1288975658.74625") :outer("98_1288975658.74625")
.annotate 'line', 34
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P273
    find_lex_skip_current $P274, "$_"
    $P275 = new ['Perl6Scalar'], $P274
    setprop $P275, "rw", true
    .lex "$_", $P275
    find_lex_skip_current $P276, "$/"
    $P277 = new ['Perl6Scalar'], $P276
    setprop $P277, "rw", true
    .lex "$/", $P277
    find_lex_skip_current $P278, "$!"
    $P279 = new ['Perl6Scalar'], $P278
    setprop $P279, "rw", true
    .lex "$!", $P279
.annotate 'line', 35
    find_lex $P280, "$pad"
    find_lex $P281, "$tabstop"
    find_lex $P282, "@pos"
    deref_unless_object $P283, $P282
    $P284 = $P283."shift"()
    find_lex $P285, "$offs"
    $P286 = "&infix:<+>"($P284, $P285)
    find_lex $P287, "$tabstop"
    $P288 = "&infix:<%>"($P286, $P287)
    $P289 = "&infix:<->"($P281, $P288)
    "&infix:<=>"($P280, $P289)
.annotate 'line', 36
    find_lex $P290, "$offs"
    find_lex $P291, "$pad"
    new $P292, "Int"
    assign $P292, 1
    $P293 = "&infix:<->"($P291, $P292)
    "&infix:<+=>"($P290, $P293)
.annotate 'line', 37
    new $P294, "Str"
    assign $P294, " "
    find_lex $P295, "$pad"
    $P296 = "&infix:<x>"($P294, $P295)
.annotate 'line', 34
    .return ($P296)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.include "except_types.pasm"
.sub "unexpand"  :anon :subid("100_1288975658.74625") :outer("83_1288975658.74625")
    .param pmc param_365 :call_sig
.annotate 'line', 47
    .const 'Sub' $P387 = "102_1288975658.74625" 
    capture_lex $P387
    .const 'Sub' $P369 = "101_1288975658.74625" 
    capture_lex $P369
    new $P340, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P340, control_339
    push_eh $P340
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P341
    $P342 = new ['Perl6Scalar']
    setprop $P342, "rw", true
    .lex "$_", $P342
    $P343 = new ['Perl6Scalar']
    setprop $P343, "rw", true
    .lex "$/", $P343
    $P344 = new ['Perl6Scalar']
    setprop $P344, "rw", true
    .lex "$!", $P344
.annotate 'line', 48
    new $P345, "Array"
    setprop $P345, "rw", true
    set $P0, $P345
    get_hll_global $P346, "ContainerDeclarand"
    $P347 = $P346."new"($P0, "@e" :named("name"))
    .local pmc declarand
    set declarand, $P347
    transform_to_p6opaque $P0
    $P348 = $P0
    .lex "@e", $P348
.annotate 'line', 49
    new $P349, "Perl6Scalar"
    setprop $P349, "rw", true
    setprop $P349, "scalar", true
    .lex "$x", $P349
.annotate 'line', 50
    new $P350, "Perl6Scalar"
    setprop $P350, "rw", true
    setprop $P350, "scalar", true
    .lex "$line", $P350
.annotate 'line', 51
    new $P351, "Array"
    setprop $P351, "rw", true
    set $P0, $P351
    get_hll_global $P352, "ContainerDeclarand"
    $P353 = $P352."new"($P0, "@lines" :named("name"))
    .local pmc declarand
    set declarand, $P353
    transform_to_p6opaque $P0
    $P354 = $P0
    .lex "@lines", $P354
.annotate 'line', 52
    new $P355, "Perl6Scalar"
    setprop $P355, "rw", true
    setprop $P355, "scalar", true
    .lex "$lastbit", $P355
.annotate 'line', 53
    new $P356, "Perl6Scalar"
    setprop $P356, "rw", true
    setprop $P356, "scalar", true
    .lex "$ts_as_space", $P356
.annotate 'line', 54
    new $P357, "Array"
    setprop $P357, "rw", true
    set $P0, $P357
    get_hll_global $P358, "ContainerDeclarand"
    $P359 = $P358."new"($P0, "@l" :named("name"))
    .local pmc declarand
    set declarand, $P359
    transform_to_p6opaque $P0
    $P360 = $P0
    .lex "@l", $P360
.annotate 'line', 55
    new $P361, "Array"
    setprop $P361, "rw", true
    set $P0, $P361
    get_hll_global $P362, "ContainerDeclarand"
    $P363 = $P362."new"($P0, "@input" :named("name"))
    .local pmc declarand
    set declarand, $P363
    transform_to_p6opaque $P0
    $P364 = $P0
    .lex "@input", $P364
    .lex "call_sig", param_365
    new $P366, "Array"
    .lex "@in", $P366
    find_lex $P367, "call_sig"
    bind_llsig $P367
.annotate 'line', 48
    find_lex $P372, "@e"
.annotate 'line', 49
    find_lex $P373, "$x"
.annotate 'line', 50
    find_lex $P374, "$line"
.annotate 'line', 51
    find_lex $P375, "@lines"
.annotate 'line', 52
    find_lex $P376, "$lastbit"
.annotate 'line', 53
    find_lex $P377, "$ts_as_space"
    new $P378, "Str"
    assign $P378, " "
    find_lex $P379, "$tabstop"
    $P380 = "&infix:<x>"($P378, $P379)
    "&infix:<=>"($P377, $P380)
.annotate 'line', 54
    find_lex $P381, "@l"
.annotate 'line', 55
    find_lex $P382, "@input"
    find_lex $P383, "@in"
    "&infix:<=>"($P382, $P383)
.annotate 'line', 56
    find_lex $P384, "@input"
    $P385 = "&flat"($P384)
    .const 'Sub' $P387 = "102_1288975658.74625" 
    capture_lex $P387
    get_hll_global $P518, "Block"
    .const 'Sub' $P519 = "103_1288975658.74625" 
    $P520 = $P387."!get_closure"($P518, $P519, 0)
    $P521 = $P385."map"($P520)
    "&eager"($P521)
.annotate 'line', 79
    find_lex $P522, "@l"
    new $P523, "Int"
    assign $P523, 0
    $P524 = "!postcircumfix:<[ ]>"($P522, $P523)
    $P525 = "&return"($P524)
.annotate 'line', 47
    .return ($P525)
  control_339:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P526, exception, "payload"
    .return ($P526)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "" :load :init :subid("post140") :outer("100_1288975658.74625")
.annotate 'line', 47
    .const 'Sub' $P338 = "100_1288975658.74625" 
    .local pmc block
    set block, $P338
    .local pmc trait_subject
    .const 'Sub' $P527 = "100_1288975658.74625" 
    get_hll_global $P528, "Sub"
    .const 'Sub' $P529 = "101_1288975658.74625" 
    $P530 = $P527."!get_code"($P528, $P529)
    set trait_subject, $P530
    get_hll_global $P531, ["Bool"], "True"
    "&trait_mod:<is>"(trait_subject, $P531 :named("export"))
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block368"  :anon :subid("101_1288975658.74625") :outer("100_1288975658.74625")
.annotate 'line', 55
    $P370 = allocate_llsig 1
    .local pmc signature_79
    set signature_79, $P370
    null $P0
    null $S0
    get_global $P371, "Mu"
    set_llsig_elem signature_79, 0, "@in", 4232, $P371, $P0, $P0, $P0, $P0, $P0, $S0
    .local pmc signature
    set signature, signature_79
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block386"  :anon :subid("102_1288975658.74625") :outer("100_1288975658.74625")
    .param pmc param_393 :call_sig
.annotate 'line', 56
    .const 'Sub' $P407 = "104_1288975658.74625" 
    capture_lex $P407
    .const 'Sub' $P397 = "103_1288975658.74625" 
    capture_lex $P397
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P388
    find_lex_skip_current $P389, "$/"
    $P390 = new ['Perl6Scalar'], $P389
    setprop $P390, "rw", true
    .lex "$/", $P390
    find_lex_skip_current $P391, "$!"
    $P392 = new ['Perl6Scalar'], $P391
    setprop $P392, "rw", true
    .lex "$!", $P392
    .lex "call_sig", param_393
    new $P394, "Perl6Scalar"
    .lex "$x", $P394
    find_lex $P395, "call_sig"
    bind_llsig $P395
.annotate 'line', 57
    find_lex $P400, "@lines"
    new $P401, "Str"
    assign $P401, "\n"
    find_lex $P402, "$x"
    $P403 = "&split"($P401, $P402)
    "&infix:<=>"($P400, $P403)
.annotate 'line', 58
    find_lex $P404, "@lines"
    $P405 = "&flat"($P404)
    .const 'Sub' $P407 = "104_1288975658.74625" 
    capture_lex $P407
    get_hll_global $P506, "Block"
    .const 'Sub' $P507 = "105_1288975658.74625" 
    $P508 = $P407."!get_closure"($P506, $P507, 0)
    $P509 = $P405."map"($P508)
    "&eager"($P509)
.annotate 'line', 76
    find_lex $P510, "@l"
    deref_unless_object $P511, $P510
    new $P512, "Str"
    assign $P512, "\n"
    find_lex $P513, "@lines"
    $P514 = "&join"($P512, $P513)
    $P515 = $P511."push"($P514)
.annotate 'line', 56
    .return ($P515)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "" :load :init :subid("post141") :outer("102_1288975658.74625")
.annotate 'line', 56
    .const 'Sub' $P387 = "102_1288975658.74625" 
    .local pmc block
    set block, $P387
    .const 'Sub' $P516 = "102_1288975658.74625" 
    .const 'Sub' $P517 = "103_1288975658.74625" 
    setprop $P516, "$!lazysig", $P517
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block396"  :anon :subid("103_1288975658.74625") :outer("102_1288975658.74625")
.annotate 'line', 56
    $P398 = allocate_llsig 1
    .local pmc signature_78
    set signature_78, $P398
    null $P0
    null $S0
    get_hll_global $P399, "Mu"
    set_llsig_elem signature_78, 0, "$x", 128, $P399, $P0, $P0, $P0, $P0, $P0, $S0
    .local pmc signature
    set signature, signature_78
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block406"  :anon :subid("104_1288975658.74625") :outer("102_1288975658.74625")
    .param pmc param_413 :call_sig
.annotate 'line', 58
    .const 'Sub' $P458 = "108_1288975658.74625" 
    capture_lex $P458
    .const 'Sub' $P425 = "106_1288975658.74625" 
    capture_lex $P425
    .const 'Sub' $P417 = "105_1288975658.74625" 
    capture_lex $P417
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P408
    find_lex_skip_current $P409, "$/"
    $P410 = new ['Perl6Scalar'], $P409
    setprop $P410, "rw", true
    .lex "$/", $P410
    find_lex_skip_current $P411, "$!"
    $P412 = new ['Perl6Scalar'], $P411
    setprop $P412, "rw", true
    .lex "$!", $P412
    .lex "call_sig", param_413
    new $P414, "Perl6Scalar"
    .lex "$line", $P414
    find_lex $P415, "call_sig"
    bind_llsig $P415
.annotate 'line', 59
    find_lex $P420, "$line"
    find_lex $P421, "$line"
    $P422 = "&expand"($P421)
    "&infix:<=>"($P420, $P422)
.annotate 'line', 60
    find_lex $P423, "@e"
    .const 'Sub' $P425 = "106_1288975658.74625" 
    capture_lex $P425
    get_hll_global $P434, "Regex"
    $P435 = $P425."!get_closure"($P434, 0)
    find_lex $P436, "$line"
    get_hll_global $P437, ["Bool"], "True"
    $P438 = "&split"($P435, $P436, $P437 :named("all"))
    "&infix:<=>"($P423, $P438)
.annotate 'line', 61
    find_lex $P439, "$lastbit"
    find_lex $P440, "@e"
    $P441 = "&pop"($P440)
    "&infix:<=>"($P439, $P441)
.annotate 'line', 63
    find_lex $P443, "$lastbit"
    $P444 = "&prefix:<defined>"($P443)
    unless $P444, unless_442
    get_hll_global $P447, "Nil"
    goto unless_442_end
  unless_442:
.annotate 'line', 62
    find_lex $P445, "$lastbit"
    new $P446, "Str"
    assign $P446, ""
    "&infix:<=>"($P445, $P446)
  unless_442_end:
.annotate 'line', 65
    find_lex $P450, "$lastbit"
    find_lex $P451, "$ts_as_space"
    $P449 = "&infix:<eq>"($P450, $P451)
  chain_end_151:
    if $P449, if_448
    get_hll_global $P454, "Nil"
    goto if_448_end
  if_448:
.annotate 'line', 64
    find_lex $P452, "$lastbit"
    new $P453, "Str"
    assign $P453, "\t"
    "&infix:<=>"($P452, $P453)
  if_448_end:
.annotate 'line', 66
    find_lex $P455, "@e"
    $P456 = "&flat"($P455)
    .const 'Sub' $P458 = "108_1288975658.74625" 
    capture_lex $P458
    get_hll_global $P494, "Block"
    .const 'Sub' $P495 = "109_1288975658.74625" 
    $P496 = $P458."!get_closure"($P494, $P495, 0)
    $P497 = $P456."map"($P496)
    "&eager"($P497)
.annotate 'line', 74
    find_lex $P498, "$line"
    new $P499, "Str"
    assign $P499, ""
    find_lex $P500, "@e"
    find_lex $P501, "$lastbit"
    $P502 = "&join"($P499, $P500, $P501)
    $P503 = "&infix:<=>"($P498, $P502)
.annotate 'line', 58
    .return ($P503)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "" :load :init :subid("post142") :outer("104_1288975658.74625")
.annotate 'line', 58
    .const 'Sub' $P407 = "104_1288975658.74625" 
    .local pmc block
    set block, $P407
    .const 'Sub' $P504 = "104_1288975658.74625" 
    .const 'Sub' $P505 = "105_1288975658.74625" 
    setprop $P504, "$!lazysig", $P505
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block416"  :anon :subid("105_1288975658.74625") :outer("104_1288975658.74625")
.annotate 'line', 58
    $P418 = allocate_llsig 1
    .local pmc signature_77
    set signature_77, $P418
    null $P0
    null $S0
    get_hll_global $P419, "Mu"
    set_llsig_elem signature_77, 0, "$line", 384, $P419, $P0, $P0, $P0, $P0, $P0, $S0
    .local pmc signature
    set signature, signature_77
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block424"  :anon :subid("106_1288975658.74625") :method :outer("104_1288975658.74625")
.annotate 'line', 60
    .const 'Sub' $P429 = "107_1288975658.74625" 
    capture_lex $P429
    .local string rx426_tgt
    .local int rx426_pos
    .local int rx426_off
    .local int rx426_eos
    .local int rx426_rep
    .local pmc rx426_cur
    .local pmc rx426_debug
    (rx426_cur, rx426_pos, rx426_tgt, $I10) = self."!cursor_start"()
    getattribute rx426_debug, rx426_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx426_cur
    .local pmc match
    .lex "$/", match
    length rx426_eos, rx426_tgt
    gt rx426_pos, rx426_eos, rx426_done
    set rx426_off, 0
    lt rx426_pos, 2, rx426_start
    sub rx426_off, rx426_pos, 1
    substr rx426_tgt, rx426_tgt, rx426_off
  rx426_start:
    eq $I10, 1, rx426_restart
    if_null rx426_debug, debug_143
    rx426_cur."!cursor_debug"("START", "")
  debug_143:
    $I10 = self.'from'()
    ne $I10, -1, rxscan427_done
    goto rxscan427_scan
  rxscan427_loop:
    ($P10) = rx426_cur."from"()
    inc $P10
    set rx426_pos, $P10
    ge rx426_pos, rx426_eos, rxscan427_done
  rxscan427_scan:
    set_addr $I10, rxscan427_loop
    rx426_cur."!mark_push"(0, rx426_pos, $I10)
  rxscan427_done:
  # rx subrule $P429 subtype=capture negate=
    rx426_cur."!cursor_pos"(rx426_pos)
    .const 'Sub' $P429 = "107_1288975658.74625" 
    capture_lex $P429
    $P10 = rx426_cur.$P429()
    unless $P10, rx426_fail
    goto rxsubrule433_pass
  rxsubrule433_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx426_fail
  rxsubrule433_pass:
    set_addr $I10, rxsubrule433_back
    rx426_cur."!mark_push"(0, rx426_pos, $I10, $P10)
    $P10."!cursor_names"(0)
    rx426_pos = $P10."pos"()
  # rx pass
    rx426_cur."!cursor_pass"(rx426_pos, "")
    if_null rx426_debug, debug_148
    rx426_cur."!cursor_debug"("PASS", "", " at pos=", rx426_pos)
  debug_148:
    rx426_cur."!cursor_backtrack"()
    .return (rx426_cur)
  rx426_restart:
    if_null rx426_debug, debug_149
    rx426_cur."!cursor_debug"("NEXT", "")
  debug_149:
  rx426_fail:
    (rx426_rep, rx426_pos, $I10, $P10) = rx426_cur."!mark_fail"(0)
    lt rx426_pos, -1, rx426_done
    eq rx426_pos, -1, rx426_fail
    jump $I10
  rx426_done:
    rx426_cur."!cursor_fail"()
    if_null rx426_debug, debug_150
    rx426_cur."!cursor_debug"("FAIL", "")
  debug_150:
    .return (rx426_cur)
    .return ()
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block428"  :anon :subid("107_1288975658.74625") :method :outer("106_1288975658.74625")
.annotate 'line', 60
    .local string rx430_tgt
    .local int rx430_pos
    .local int rx430_off
    .local int rx430_eos
    .local int rx430_rep
    .local pmc rx430_cur
    .local pmc rx430_debug
    (rx430_cur, rx430_pos, rx430_tgt, $I10) = self."!cursor_start"()
    getattribute rx430_debug, rx430_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx430_cur
    .local pmc match
    .lex "$/", match
    length rx430_eos, rx430_tgt
    gt rx430_pos, rx430_eos, rx430_done
    set rx430_off, 0
    lt rx430_pos, 2, rx430_start
    sub rx430_off, rx430_pos, 1
    substr rx430_tgt, rx430_tgt, rx430_off
  rx430_start:
    eq $I10, 1, rx430_restart
    if_null rx430_debug, debug_144
    rx430_cur."!cursor_debug"("START", "")
  debug_144:
    $I10 = self.'from'()
    ne $I10, -1, rxscan431_done
    goto rxscan431_scan
  rxscan431_loop:
    ($P10) = rx430_cur."from"()
    inc $P10
    set rx430_pos, $P10
    ge rx430_pos, rx430_eos, rxscan431_done
  rxscan431_scan:
    set_addr $I10, rxscan431_loop
    rx430_cur."!mark_push"(0, rx430_pos, $I10)
  rxscan431_done:
  # rx rxquantg432 ** 8..8
    set_addr $I10, rxquantg432_done
    rx430_cur."!mark_push"(0, -1, $I10)
  rxquantg432_loop:
  # rx charclass .
    ge rx430_pos, rx430_eos, rx430_fail
    inc rx430_pos
    set_addr $I10, rxquantg432_done
    (rx430_rep) = rx430_cur."!mark_peek"($I10)
    inc rx430_rep
    ge rx430_rep, 8, rxquantg432_done
    set_addr $I10, rxquantg432_done
    rx430_cur."!mark_push"(rx430_rep, rx430_pos, $I10)
    goto rxquantg432_loop
  rxquantg432_done:
    lt rx430_rep, 8, rx430_fail
  # rx pass
    rx430_cur."!cursor_pass"(rx430_pos, "")
    if_null rx430_debug, debug_145
    rx430_cur."!cursor_debug"("PASS", "", " at pos=", rx430_pos)
  debug_145:
    rx430_cur."!cursor_backtrack"()
    .return (rx430_cur)
  rx430_restart:
    if_null rx430_debug, debug_146
    rx430_cur."!cursor_debug"("NEXT", "")
  debug_146:
  rx430_fail:
    (rx430_rep, rx430_pos, $I10, $P10) = rx430_cur."!mark_fail"(0)
    lt rx430_pos, -1, rx430_done
    eq rx430_pos, -1, rx430_fail
    jump $I10
  rx430_done:
    rx430_cur."!cursor_fail"()
    if_null rx430_debug, debug_147
    rx430_cur."!cursor_debug"("FAIL", "")
  debug_147:
    .return (rx430_cur)
    .return ()
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block457"  :anon :subid("108_1288975658.74625") :outer("104_1288975658.74625")
    .param pmc param_464 :call_sig
.annotate 'line', 66
    .const 'Sub' $P483 = "111_1288975658.74625" 
    capture_lex $P483
    .const 'Sub' $P476 = "110_1288975658.74625" 
    capture_lex $P476
    .const 'Sub' $P468 = "109_1288975658.74625" 
    capture_lex $P468
    .local pmc true
    true = get_hll_global 'True'
    .lex "__CANDIDATE_LIST__", $P459
    find_lex_skip_current $P460, "$/"
    $P461 = new ['Perl6Scalar'], $P460
    setprop $P461, "rw", true
    .lex "$/", $P461
    find_lex_skip_current $P462, "$!"
    $P463 = new ['Perl6Scalar'], $P462
    setprop $P463, "rw", true
    .lex "$!", $P463
    .lex "call_sig", param_464
    new $P465, "Perl6Scalar"
    .lex "$y", $P465
    find_lex $P466, "call_sig"
    bind_llsig $P466
    find_lex $P471, "$_"
    .local pmc old_topic74
    set old_topic74, $P471
.annotate 'line', 72
    find_lex $P472, "$y"
    store_lex "$_", $P472
    find_lex $P473, "$_"
    find_lex $P474, "$_"
    .const 'Sub' $P476 = "110_1288975658.74625" 
    capture_lex $P476
    get_hll_global $P480, "Regex"
    $P481 = $P476."!get_closure"($P480, 0)
    .const 'Sub' $P483 = "111_1288975658.74625" 
    capture_lex $P483
    get_hll_global $P485, "Block"
    $P486 = $P483."!get_closure"($P485, 0)
    $P487 = $P474."subst"($P481, $P486)
    $P488 = "&infix:<=>"($P473, $P487)
    find_lex $P489, "$_"
    $P490 = $P488."ACCEPTS"($P489)
.annotate 'line', 66
    .lex "sm_result75", $P490
    store_lex "$_", old_topic74
    find_lex $P491, "sm_result75"
    .return ($P491)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "" :load :init :subid("post152") :outer("108_1288975658.74625")
.annotate 'line', 66
    .const 'Sub' $P458 = "108_1288975658.74625" 
    .local pmc block
    set block, $P458
    .const 'Sub' $P492 = "108_1288975658.74625" 
    .const 'Sub' $P493 = "109_1288975658.74625" 
    setprop $P492, "$!lazysig", $P493
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block467"  :anon :subid("109_1288975658.74625") :outer("108_1288975658.74625")
.annotate 'line', 66
    $P469 = allocate_llsig 1
    .local pmc signature_76
    set signature_76, $P469
    null $P0
    null $S0
    get_hll_global $P470, "Mu"
    set_llsig_elem signature_76, 0, "$y", 384, $P470, $P0, $P0, $P0, $P0, $P0, $S0
    .local pmc signature
    set signature, signature_76
    .return (signature)
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block475"  :anon :subid("110_1288975658.74625") :method :outer("108_1288975658.74625")
.annotate 'line', 72
    .local string rx477_tgt
    .local int rx477_pos
    .local int rx477_off
    .local int rx477_eos
    .local int rx477_rep
    .local pmc rx477_cur
    .local pmc rx477_debug
    (rx477_cur, rx477_pos, rx477_tgt, $I10) = self."!cursor_start"()
    getattribute rx477_debug, rx477_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx477_cur
    .local pmc match
    .lex "$/", match
    length rx477_eos, rx477_tgt
    gt rx477_pos, rx477_eos, rx477_done
    set rx477_off, 0
    lt rx477_pos, 2, rx477_start
    sub rx477_off, rx477_pos, 1
    substr rx477_tgt, rx477_tgt, rx477_off
  rx477_start:
    eq $I10, 1, rx477_restart
    if_null rx477_debug, debug_153
    rx477_cur."!cursor_debug"("START", "")
  debug_153:
    $I10 = self.'from'()
    ne $I10, -1, rxscan478_done
    goto rxscan478_scan
  rxscan478_loop:
    ($P10) = rx477_cur."from"()
    inc $P10
    set rx477_pos, $P10
    ge rx477_pos, rx477_eos, rxscan478_done
  rxscan478_scan:
    set_addr $I10, rxscan478_loop
    rx477_cur."!mark_push"(0, rx477_pos, $I10)
  rxscan478_done:
  # rx rxquantg479 ** 2..*
    set_addr $I10, rxquantg479_done
    rx477_cur."!mark_push"(0, -1, $I10)
  rxquantg479_loop:
  # rx charclass s
    ge rx477_pos, rx477_eos, rx477_fail
    sub $I10, rx477_pos, rx477_off
    is_cclass $I11, 32, rx477_tgt, $I10
    unless $I11, rx477_fail
    inc rx477_pos
    set_addr $I10, rxquantg479_done
    (rx477_rep) = rx477_cur."!mark_peek"($I10)
    inc rx477_rep
    set_addr $I10, rxquantg479_done
    rx477_cur."!mark_push"(rx477_rep, rx477_pos, $I10)
    goto rxquantg479_loop
  rxquantg479_done:
    lt rx477_rep, 2, rx477_fail
  # rx pass
    rx477_cur."!cursor_pass"(rx477_pos, "")
    if_null rx477_debug, debug_154
    rx477_cur."!cursor_debug"("PASS", "", " at pos=", rx477_pos)
  debug_154:
    rx477_cur."!cursor_backtrack"()
    .return (rx477_cur)
  rx477_restart:
    if_null rx477_debug, debug_155
    rx477_cur."!cursor_debug"("NEXT", "")
  debug_155:
  rx477_fail:
    (rx477_rep, rx477_pos, $I10, $P10) = rx477_cur."!mark_fail"(0)
    lt rx477_pos, -1, rx477_done
    eq rx477_pos, -1, rx477_fail
    jump $I10
  rx477_done:
    rx477_cur."!cursor_fail"()
    if_null rx477_debug, debug_156
    rx477_cur."!cursor_debug"("FAIL", "")
  debug_156:
    .return (rx477_cur)
    .return ()
.end


.HLL "perl6"

.namespace ["Text";"Tabs"]
.sub "_block482"  :anon :subid("111_1288975658.74625") :outer("108_1288975658.74625")
.annotate 'line', 72
    new $P484, "Str"
    assign $P484, "\t"
    .return ($P484)
.end


.HLL "perl6"

.namespace []
.sub "_block542" :load :init :anon :subid("112_1288975658.74625")
.annotate 'line', 1
    $P544 = "!fire_phasers"("CHECK")
    .return ($P544)
.end


.HLL "perl6"

.namespace []
.sub "_block545" :load :anon :subid("113_1288975658.74625")
.annotate 'line', 1
    .const 'Sub' $P547 = "81_1288975658.74625" 
    $P548 = "!UNIT_START"($P547)
    .return ($P548)
.end

