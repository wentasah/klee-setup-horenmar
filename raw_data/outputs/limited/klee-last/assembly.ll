; ModuleID = 'single_node.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macan_key = type { [16 x i8] }
%struct.macan_ecu = type { i32, i8* }
%struct.macan_can_ids = type { i32, %struct.macan_ecu* }
%struct.macan_sig_spec = type { i16, i16, i8, i8, i8 }
%struct.macan_node_config = type { i8, %struct.macan_key* }
%struct.macan_ctx = type { %struct.macan_config*, %struct.macan_node_config*, %struct.com_part**, %struct.sig_handle**, %struct.macan_timekeeping, [32 x i8], i32, i32, %struct.macan_ev_loop*, %struct.macan_ev_can, %struct.macan_ev_timer, i8, i8, %union.a
%struct.macan_config = type { i32, %struct.macan_sig_spec*, i8, %struct.macan_can_ids*, i8, i8, i32, i64, i32, i32, i32 }
%struct.com_part = type { i8, %struct.macan_key, i64, i8, [6 x i8], i8, i32, i8, void (%struct.macan_ctx*, i8)* }
%struct.sig_handle = type { i32, i8, i8, void (i8, i32)*, void (i8, i32)* }
%struct.macan_timekeeping = type { i64, i32, i64, i64, [6 x i8], i8 }
%struct.macan_ev_loop = type { %struct.macan_ev_can*, %struct.macan_ev_timer* }
%struct.macan_ev_can = type { void (%struct.macan_ev_loop*, %struct.macan_ev_can*, i32)*, %struct.macan_ev_can*, i32, %struct.can_frame*, i8* }
%struct.can_frame = type { i32, i8, [3 x i8], [8 x i8] }
%struct.macan_ev_timer = type { void (%struct.macan_ev_loop*, %struct.macan_ev_timer*, i32)*, %struct.macan_ev_timer*, i32, i32, i64, i8* }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.macan_ev_timer, i64, %struct.anon.0* }
%struct.anon.0 = type { i8, [6 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@macan_ltk_node1 = internal constant %struct.macan_key { [16 x i8] c"\00\01\02\09\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F" }, align 1
@demo_sig_spec = internal global <{ { i16, i16, i8, i8, i8, i8 }, { i16, i16, i8, i8, i8, i8 } }> <{ { i16, i16, i8, i8, i8, i8 } { i16 0, i16 512, i8 2, i8 3, i8 1, i8 undef }, { i16, i16, i8, i8, i8, i8 } { i16 0, i16 513, i8 3, i8 2, i8 1, i8 undef } 
@.str = private unnamed_addr constant [3 x i8] c"KS\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"TS\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"N1\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"N2\00", align 1
@.compoundliteral = internal global [4 x %struct.macan_ecu] [%struct.macan_ecu { i32 256, i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0) }, %struct.macan_ecu { i32 257, i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0) }, %struct.ma
@demo_can_ids = internal constant %struct.macan_can_ids { i32 0, %struct.macan_ecu* getelementptr inbounds ([4 x %struct.macan_ecu]* @.compoundliteral, i32 0, i32 0) }, align 8
@config = internal global { i32, %struct.macan_sig_spec*, i8, %struct.macan_can_ids*, i8, i8, i32, i64, i32, i32, i32, [4 x i8] } { i32 2, %struct.macan_sig_spec* bitcast (<{ { i16, i16, i8, i8, i8, i8 }, { i16, i16, i8, i8, i8, i8 } }>* @demo_sig_spec t
@node = internal global %struct.macan_node_config { i8 2, %struct.macan_key* @macan_ltk_node1 }, align 8
@macan_ctx = internal global %struct.macan_ctx zeroinitializer, align 8
@0 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [15 x i8] }*, { i16, i16, [6 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([70 x i8]* @17, i32 0, i32 0), i32 569, i32 37 }, { i16, i16, [15 x i8] }* @34, { i16, i16, [6 x 
@.str4 = private unnamed_addr constant [29 x i8] c"Requesting skey for node %s\0A\00", align 1
@1 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [16 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([70 x i8]* @17, i32 0, i32 0), i32 841, i32 36 }, { i16, i16, [16 x i8] }* @33 }
@2 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [16 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([70 x i8]* @17, i32 0, i32 0), i32 864, i32 22 }, { i16, i16, [16 x i8] }* @33 }
@3 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [16 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([70 x i8]* @17, i32 0, i32 0), i32 864, i32 50 }, { i16, i16, [16 x i8] }* @33 }
@.str14 = private unnamed_addr constant [39 x i8] c"node->node_id != config->key_server_id\00", align 1
@__PRETTY_FUNCTION__.macan_init = private unnamed_addr constant [120 x i8] c"int macan_init(struct macan_ctx *, const struct macan_config *, const struct macan_node_config *, macan_ev_loop *, int)\00", align 1
@.str16 = private unnamed_addr constant [40 x i8] c"node->node_id != config->time_server_id\00", align 1
@4 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [15 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([70 x i8]* @17, i32 0, i32 0), i32 1105, i32 38 }, { i16, i16, [15 x i8] }* @34 }
@.str20 = private unnamed_addr constant [49 x i8] c" %s:%d %s(): No key to check signal #%d from %d\0A\00", align 1
@.str21 = private unnamed_addr constant [40 x i8] c" %s:%d %s(): CMAC error for signal #%d\0A\00", align 1
@.str22 = private unnamed_addr constant [32 x i8] c"Received signal #%d, value: %d\0A\00", align 1
@.str26 = private unnamed_addr constant [38 x i8] c"Received auth request for signal #%d\0A\00", align 1
@.str28 = private unnamed_addr constant [17 x i8] c" %s:%d %s(): %s\0A\00", align 1
@.str29 = private unnamed_addr constant [23 x i8] c"error: ACK CMAC failed\00", align 1
@5 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [15 x i8] }*, { i16, i16, [6 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([70 x i8]* @17, i32 0, i32 0), i32 252, i32 23 }, { i16, i16, [15 x i8] }* @34, { i16, i16, [6 x 
@.str31 = private unnamed_addr constant [33 x i8] c"Sending req auth for signal #%d\0A\00", align 1
@6 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [15 x i8] }*, { i16, i16, [6 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([70 x i8]* @17, i32 0, i32 0), i32 108, i32 21 }, { i16, i16, [15 x i8] }* @34, { i16, i16, [6 x 
@7 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [15 x i8] }*, { i16, i16, [6 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([70 x i8]* @17, i32 0, i32 0), i32 108, i32 33 }, { i16, i16, [15 x i8] }* @34, { i16, i16, [6 x 
@.str38 = private unnamed_addr constant [36 x i8] c" %s:%d %s(): unexpected fwd_id %#x\0A\00", align 1
@.str39 = private unnamed_addr constant [37 x i8] c" %s:%d %s(): wrong challenge for %d\0A\00", align 1
@8 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [16 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([70 x i8]* @17, i32 0, i32 0), i32 365, i32 36 }, { i16, i16, [16 x i8] }* @33 }
@9 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [15 x i8] }*, { i16, i16, [6 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([70 x i8]* @17, i32 0, i32 0), i32 374, i32 28 }, { i16, i16, [15 x i8] }* @34, { i16, i16, [6 x 
@.str40 = private unnamed_addr constant [24 x i8] c"new session key for %s\0A\00", align 1
@10 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [16 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([70 x i8]* @17, i32 0, i32 0), i32 299, i32 18 }, { i16, i16, [16 x i8] }* @33 }
@.str42 = private unnamed_addr constant [32 x i8] c"Requesting time authentication\0A\00", align 1
@11 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [32 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([70 x i8]* @17, i32 0, i32 0), i32 882, i32 42 }, { i16, i16, [32 x i8] }* @24 }
@12 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [15 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([70 x i8]* @17, i32 0, i32 0), i32 468, i32 23 }, { i16, i16, [15 x i8] }* @34 }
@13 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [16 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([70 x i8]* @17, i32 0, i32 0), i32 473, i32 25 }, { i16, i16, [16 x i8] }* @33 }
@14 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [16 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([70 x i8]* @17, i32 0, i32 0), i32 475, i32 25 }, { i16, i16, [16 x i8] }* @33 }
@.str47 = private unnamed_addr constant [45 x i8] c"auth. time %u differ from non-auth. time %u\0A\00", align 1
@.str48 = private unnamed_addr constant [28 x i8] c"signed time = %d, offs %lu\0A\00", align 1
@15 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [16 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([70 x i8]* @17, i32 0, i32 0), i32 409, i32 15 }, { i16, i16, [16 x i8] }* @33 }
@16 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [16 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([70 x i8]* @17, i32 0, i32 0), i32 410, i32 36 }, { i16, i16, [16 x i8] }* @33 }
@17 = internal unnamed_addr constant [70 x i8] c"/home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan.c\00", align 1
@18 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [16 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([70 x i8]* @17, i32 0, i32 0), i32 410, i32 52 }, { i16, i16, [16 x i8] }* @33 }
@.str51 = private unnamed_addr constant [50 x i8] c"time out of sync by %llu us  (local:%lu, TS:%lu)\0A\00", align 1
@str = private unnamed_addr constant [14 x i8] c"is_skey_ready\00"
@str57 = private unnamed_addr constant [23 x i8] c"is_skey_ready_is_ready\00"
@str58 = private unnamed_addr constant [10 x i8] c"get_cpart\00"
@str61 = private unnamed_addr constant [18 x i8] c"macan_request_key\00"
@str62 = private unnamed_addr constant [15 x i8] c"macan_ecu_name\00"
@str63 = private unnamed_addr constant [14 x i8] c"gen_challenge\00"
@str64 = private unnamed_addr constant [21 x i8] c"macan_send_challenge\00"
@str65 = private unnamed_addr constant [27 x i8] c"macan_request_expired_keys\00"
@str66 = private unnamed_addr constant [15 x i8] c"macan_get_time\00"
@str67 = private unnamed_addr constant [20 x i8] c"macan_process_frame\00"
@str68 = private unnamed_addr constant [20 x i8] c"receive_time_noauth\00"
@str69 = private unnamed_addr constant [18 x i8] c"receive_time_auth\00"
@str70 = private unnamed_addr constant [39 x i8] c"receive_time_auth after known overflow\00"
@str71 = private unnamed_addr constant [14 x i8] c"cansid2signum\00"
@str72 = private unnamed_addr constant [14 x i8] c"receive_sig32\00"
@str73 = private unnamed_addr constant [18 x i8] c"macan_canid2ecuid\00"
@str74 = private unnamed_addr constant [13 x i8] c"receive_skey\00", align 1
@str75 = private unnamed_addr constant [12 x i8] c"receive_ack\00", align 1
@str76 = private unnamed_addr constant [17 x i8] c"receive_auth_req\00"
@str77 = private unnamed_addr constant [34 x i8] c"error: sig_auth cmac is incorrect\00"
@str78 = private unnamed_addr constant [14 x i8] c"receive_sig16\00"
@str80 = private unnamed_addr constant [12 x i8] c"canid2cpart\00"
@str81 = private unnamed_addr constant [22 x i8] c"macan_housekeeping_cb\00"
@str82 = private unnamed_addr constant [10 x i8] c"can_rx_cb\00"
@str84 = private unnamed_addr constant [19 x i8] c"__macan_init_cpart\00"
@str85 = private unnamed_addr constant [7 x i8] c"append\00"
@str86 = private unnamed_addr constant [14 x i8] c"__receive_sig\00", align 1
@str87 = private unnamed_addr constant [9 x i8] c"send_ack\00", align 1
@str88 = private unnamed_addr constant [16 x i8] c"request_signals\00"
@str90 = private unnamed_addr constant [17 x i8] c"is_channel_ready\00"
@str91 = private unnamed_addr constant [14 x i8] c"send_auth_reg\00"
@str92 = private unnamed_addr constant [18 x i8] c"request_time_auth\00"
@str93 = private unnamed_addr constant [10 x i8] c"send_acks\00"
@19 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [16 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([78 x i8]* @21, i32 0, i32 0), i32 68, i32 29 }, { i16, i16, [16 x i8] }* @33 }
@20 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [16 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([78 x i8]* @21, i32 0, i32 0), i32 93, i32 23 }, { i16, i16, [16 x i8] }* @33 }
@21 = internal unnamed_addr constant [78 x i8] c"/home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/klee/macan_ev.c\00"
@22 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [6 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([78 x i8]* @21, i32 0, i32 0), i32 97, i32 43 }, { i16, i16, [6 x i8] }* @31 }
@macan_ev_loop_default = internal global %struct.macan_ev_loop zeroinitializer, align 8
@str7 = private unnamed_addr constant [25 x i8] c"====FINISHED RUNNING====\00"
@23 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [31 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([71 x i8]* @26, i32 0, i32 0), i32 49, i32 24 }, { i16, i16, [31 x i8] }* @25 }
@24 = internal unnamed_addr constant { i16, i16, [32 x i8] } { i16 0, i16 10, [32 x i8] c"'uint32_t' (aka 'unsigned int')\00" }
@25 = internal unnamed_addr constant { i16, i16, [31 x i8] } { i16 0, i16 12, [31 x i8] c"'size_t' (aka 'unsigned long')\00" }
@.str8 = private unnamed_addr constant [18 x i8] c"\1B[1;32mOK  \1B[0;0m\00", align 1
@.str9 = private unnamed_addr constant [18 x i8] c"\1B[1;33mWARN\1B[0;0m\00", align 1
@.str10 = private unnamed_addr constant [18 x i8] c"\1B[1;31mFAIL\1B[0;0m\00", align 1
@.str11 = private unnamed_addr constant [18 x i8] c"\1B[0;34mREQ \1B[0;0m\00", align 1
@.str12 = private unnamed_addr constant [18 x i8] c"\1B[0;36mINFO\1B[0;0m\00", align 1
@.str13 = private unnamed_addr constant [18 x i8] c"\1B[1;35mSIG \1B[0;0m\00", align 1
@.str1420 = private unnamed_addr constant [5 x i8] c"%-3s\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1
@.str1621 = private unnamed_addr constant [9 x i8] c"%s %3s: \00", align 1
@26 = internal unnamed_addr constant [71 x i8] c"/home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/common.c\00"
@stdout = external global %struct._IO_FILE*
@str23 = private unnamed_addr constant [7 x i8] c"memchk\00"
@27 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [6 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([73 x i8]* @28, i32 0, i32 0), i32 165, i32 12 }, { i16, i16, [6 x i8] }* @31 }
@28 = internal unnamed_addr constant [73 x i8] c"/home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/cryptlib.c\00", align 1
@29 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [6 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([73 x i8]* @28, i32 0, i32 0), i32 164, i32 24 }, { i16, i16, [6 x i8] }* @31 }
@.str830 = private unnamed_addr constant [24 x i8] c"aes unwrap modification\00", align 1
@str10 = private unnamed_addr constant [17 x i8] c"macan_check_cmac\00"
@str11 = private unnamed_addr constant [11 x i8] c"macan_sign\00"
@str12 = private unnamed_addr constant [17 x i8] c"macan_unwrap_key\00"
@str38 = private unnamed_addr constant [15 x i8] c"macan_aes_cmac\00"
@.str45 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str146 = private unnamed_addr constant [19 x i8] c"incoming can frame\00", align 1
@macan_read.counter = internal unnamed_addr global i32 0, align 4
@30 = internal unnamed_addr constant [80 x i8] c"/home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/klee/klee_macan.c\00"
@31 = internal unnamed_addr constant { i16, i16, [6 x i8] } { i16 0, i16 11, [6 x i8] c"'int'\00" }
@32 = internal unnamed_addr global { { i8*, i32, i32 }, { i16, i16, [6 x i8] }* } { { i8*, i32, i32 } { i8* getelementptr inbounds ([80 x i8]* @30, i32 0, i32 0), i32 27, i32 9 }, { i16, i16, [6 x i8] }* @31 }
@33 = internal unnamed_addr constant { i16, i16, [16 x i8] } { i16 0, i16 12, [16 x i8] c"'unsigned long'\00" }
@34 = internal unnamed_addr constant { i16, i16, [15 x i8] } { i16 0, i16 10, [15 x i8] c"'unsigned int'\00" }
@.str5 = private unnamed_addr constant [80 x i8] c"/home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str17 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str210 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str311 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str1412 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str6 = private unnamed_addr constant [71 x i8] c"/home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str1713 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str2814 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %time.i.i = alloca i64, align 8
  %time.i.i.i1 = alloca i64, align 8
  %time.i.i.i = alloca i64, align 8
  %sig_send = alloca %struct.macan_ev_timer, align 8
  %0 = bitcast %struct.macan_ev_timer* %sig_send to i8*, !dbg !2116
  %1 = load i8* getelementptr inbounds (%struct.macan_node_config* @node, i64 0, i32 0), align 8, !dbg !2117, !tbaa !2119
  %2 = load i8* getelementptr inbounds ({ i32, %struct.macan_sig_spec*, i8, %struct.macan_can_ids*, i8, i8, i32, i64, i32, i32, i32, [4 x i8] }* @config, i64 0, i32 4), align 8, !dbg !2117, !tbaa !2119
  %cmp.i = icmp eq i8 %1, %2, !dbg !2117
  br i1 %cmp.i, label %cond.false.i, label %cond.end.i, !dbg !2117

cond.false.i:                                     ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8]* @17, i64 0, i64 0), i32 1098, i8* getelementptr inbounds ([120 x i8]* @__PRETTY_FUNCTION__.macan_init, i64 0, i64 0)) #10, !d
  unreachable, !dbg !2117

cond.end.i:                                       ; preds = %entry
  %3 = load i8* getelementptr inbounds ({ i32, %struct.macan_sig_spec*, i8, %struct.macan_can_ids*, i8, i8, i32, i64, i32, i32, i32, [4 x i8] }* @config, i64 0, i32 5), align 1, !dbg !2121, !tbaa !2119
  %cmp6.i = icmp eq i8 %1, %3, !dbg !2121
  br i1 %cmp6.i, label %cond.false9.i, label %cond.end10.i, !dbg !2121

cond.false9.i:                                    ; preds = %cond.end.i
  call void @__assert_fail(i8* getelementptr inbounds ([40 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8]* @17, i64 0, i64 0), i32 1099, i8* getelementptr inbounds ([120 x i8]* @__PRETTY_FUNCTION__.macan_init, i64 0, i64 0)) #10, !d
  unreachable, !dbg !2121

cond.end10.i:                                     ; preds = %cond.end.i
  %puts.i.i = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str84, i64 0, i64 0)) #1, !dbg !2122
  %4 = call i8* @memset(i8* bitcast (%struct.macan_ctx* @macan_ctx to i8*), i32 0, i64 264)
  store %struct.macan_config* bitcast ({ i32, %struct.macan_sig_spec*, i8, %struct.macan_can_ids*, i8, i8, i32, i64, i32, i32, i32, [4 x i8] }* @config to %struct.macan_config*), %struct.macan_config** getelementptr inbounds (%struct.macan_ctx* @macan_ct
  store %struct.macan_node_config* @node, %struct.macan_node_config** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 1), align 8, !dbg !2126, !tbaa !2125
  %5 = load i8* getelementptr inbounds ({ i32, %struct.macan_sig_spec*, i8, %struct.macan_can_ids*, i8, i8, i32, i64, i32, i32, i32, [4 x i8] }* @config, i64 0, i32 2), align 8, !dbg !2127, !tbaa !2119
  %conv.i.i2 = zext i8 %5 to i64, !dbg !2127
  %call3.i.i = call noalias i8* @calloc(i64 %conv.i.i2, i64 8) #1, !dbg !2127
  %6 = bitcast i8* %call3.i.i to %struct.com_part**, !dbg !2127
  store %struct.com_part** %6, %struct.com_part*** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 2), align 8, !dbg !2127, !tbaa !2125
  %7 = load i32* getelementptr inbounds ({ i32, %struct.macan_sig_spec*, i8, %struct.macan_can_ids*, i8, i8, i32, i64, i32, i32, i32, [4 x i8] }* @config, i64 0, i32 0), align 8, !dbg !2128, !tbaa !2129
  %conv4.i.i = zext i32 %7 to i64, !dbg !2128
  %call5.i.i = call noalias i8* @calloc(i64 %conv4.i.i, i64 8) #1, !dbg !2128
  %8 = bitcast i8* %call5.i.i to %struct.sig_handle**, !dbg !2128
  store %struct.sig_handle** %8, %struct.sig_handle*** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 3), align 8, !dbg !2128, !tbaa !2125
  store i32 0, i32* getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 7), align 4, !dbg !2130, !tbaa !2129
  store %struct.macan_ev_loop* @macan_ev_loop_default, %struct.macan_ev_loop** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 8), align 8, !dbg !2131, !tbaa !2125
  %9 = load i32* getelementptr inbounds ({ i32, %struct.macan_sig_spec*, i8, %struct.macan_can_ids*, i8, i8, i32, i64, i32, i32, i32, [4 x i8] }* @config, i64 0, i32 0), align 8, !dbg !2132, !tbaa !2129
  %cmp11116.i = icmp eq i32 %9, 0, !dbg !2132
  br i1 %cmp11116.i, label %for.end.i, label %for.body.i, !dbg !2132

for.body.i:                                       ; preds = %cond.end10.i, %for.cond.backedge.i
  %i.0117.i = phi i64 [ %38, %for.cond.backedge.i ], [ 0, %cond.end10.i ]
  %idxprom.i = and i64 %i.0117.i, 4294967295, !dbg !2134
  %10 = load %struct.macan_sig_spec** getelementptr inbounds ({ i32, %struct.macan_sig_spec*, i8, %struct.macan_can_ids*, i8, i8, i32, i64, i32, i32, i32, [4 x i8] }* @config, i64 0, i32 1), align 8, !dbg !2134, !tbaa !2125
  %src_id.i = getelementptr inbounds %struct.macan_sig_spec* %10, i64 %idxprom.i, i32 2, !dbg !2134
  %11 = load i8* %src_id.i, align 1, !dbg !2134, !tbaa !2119
  %12 = load i8* getelementptr inbounds (%struct.macan_node_config* @node, i64 0, i32 0), align 8, !dbg !2134, !tbaa !2119
  %cmp16.i = icmp eq i8 %11, %12, !dbg !2134
  br i1 %cmp16.i, label %if.then.i, label %if.end.i, !dbg !2134

if.then.i:                                        ; preds = %for.body.i
  %dst_id.i = getelementptr inbounds %struct.macan_sig_spec* %10, i64 %idxprom.i, i32 3, !dbg !2136
  %13 = load i8* %dst_id.i, align 1, !dbg !2136, !tbaa !2119
  %puts.i92.i = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str84, i64 0, i64 0)) #1, !dbg !2138
  %idxprom.i.i = zext i8 %13 to i64, !dbg !2139
  %14 = load %struct.com_part*** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 2), align 8, !dbg !2139, !tbaa !2125
  %arrayidx.i.i = getelementptr inbounds %struct.com_part** %14, i64 %idxprom.i.i, !dbg !2139
  %15 = load %struct.com_part** %arrayidx.i.i, align 8, !dbg !2139, !tbaa !2125
  %cmp.i.i = icmp eq %struct.com_part* %15, null, !dbg !2139
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i, !dbg !2139

if.then.i.i:                                      ; preds = %if.then.i
  %call1.i.i = call noalias i8* @calloc(i64 1, i64 56) #1, !dbg !2140
  %16 = bitcast i8* %call1.i.i to %struct.com_part*, !dbg !2140
  store %struct.com_part* %16, %struct.com_part** %arrayidx.i.i, align 8, !dbg !2140, !tbaa !2125
  %17 = load %struct.com_part*** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 2), align 8, !dbg !2142, !tbaa !2125
  %arrayidx7.i.i = getelementptr inbounds %struct.com_part** %17, i64 %idxprom.i.i, !dbg !2142
  %18 = load %struct.com_part** %arrayidx7.i.i, align 8, !dbg !2142, !tbaa !2125
  %ecu_id.i.i = getelementptr inbounds %struct.com_part* %18, i64 0, i32 7, !dbg !2142
  store i8 %13, i8* %ecu_id.i.i, align 1, !dbg !2142, !tbaa !2119
  br label %if.end.i, !dbg !2143

if.end.i:                                         ; preds = %if.then.i.i, %if.then.i, %for.body.i
  %19 = load %struct.macan_sig_spec** getelementptr inbounds ({ i32, %struct.macan_sig_spec*, i8, %struct.macan_can_ids*, i8, i8, i32, i64, i32, i32, i32, [4 x i8] }* @config, i64 0, i32 1), align 8, !dbg !2144, !tbaa !2125
  %dst_id24.i = getelementptr inbounds %struct.macan_sig_spec* %19, i64 %idxprom.i, i32 3, !dbg !2144
  %20 = load i8* %dst_id24.i, align 1, !dbg !2144, !tbaa !2119
  %21 = load i8* getelementptr inbounds (%struct.macan_node_config* @node, i64 0, i32 0), align 8, !dbg !2144, !tbaa !2119
  %cmp28.i = icmp eq i8 %20, %21, !dbg !2144
  br i1 %cmp28.i, label %if.then30.i, label %if.end35.i, !dbg !2144

if.then30.i:                                      ; preds = %if.end.i
  %src_id34.i = getelementptr inbounds %struct.macan_sig_spec* %19, i64 %idxprom.i, i32 2, !dbg !2145
  %22 = load i8* %src_id34.i, align 1, !dbg !2145, !tbaa !2119
  %puts.i94.i = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str84, i64 0, i64 0)) #1, !dbg !2146
  %idxprom.i95.i = zext i8 %22 to i64, !dbg !2147
  %23 = load %struct.com_part*** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 2), align 8, !dbg !2147, !tbaa !2125
  %arrayidx.i97.i = getelementptr inbounds %struct.com_part** %23, i64 %idxprom.i95.i, !dbg !2147
  %24 = load %struct.com_part** %arrayidx.i97.i, align 8, !dbg !2147, !tbaa !2125
  %cmp.i98.i = icmp eq %struct.com_part* %24, null, !dbg !2147
  br i1 %cmp.i98.i, label %if.then.i102.i, label %if.end35.i, !dbg !2147

if.then.i102.i:                                   ; preds = %if.then30.i
  %call1.i99.i = call noalias i8* @calloc(i64 1, i64 56) #1, !dbg !2148
  %25 = bitcast i8* %call1.i99.i to %struct.com_part*, !dbg !2148
  store %struct.com_part* %25, %struct.com_part** %arrayidx.i97.i, align 8, !dbg !2148, !tbaa !2125
  %26 = load %struct.com_part*** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 2), align 8, !dbg !2149, !tbaa !2125
  %arrayidx7.i100.i = getelementptr inbounds %struct.com_part** %26, i64 %idxprom.i95.i, !dbg !2149
  %27 = load %struct.com_part** %arrayidx7.i100.i, align 8, !dbg !2149, !tbaa !2125
  %ecu_id.i101.i = getelementptr inbounds %struct.com_part* %27, i64 0, i32 7, !dbg !2149
  store i8 %22, i8* %ecu_id.i101.i, align 1, !dbg !2149, !tbaa !2119
  br label %if.end35.i, !dbg !2150

if.end35.i:                                       ; preds = %if.then.i102.i, %if.then30.i, %if.end.i
  %call.i = call noalias i8* @calloc(i64 1, i64 24) #1, !dbg !2151
  %28 = bitcast i8* %call.i to %struct.sig_handle*, !dbg !2151
  %29 = load %struct.sig_handle*** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 3), align 8, !dbg !2151, !tbaa !2125
  %arrayidx37.i = getelementptr inbounds %struct.sig_handle** %29, i64 %idxprom.i, !dbg !2151
  store %struct.sig_handle* %28, %struct.sig_handle** %arrayidx37.i, align 8, !dbg !2151, !tbaa !2125
  %30 = load %struct.macan_sig_spec** getelementptr inbounds ({ i32, %struct.macan_sig_spec*, i8, %struct.macan_can_ids*, i8, i8, i32, i64, i32, i32, i32, [4 x i8] }* @config, i64 0, i32 1), align 8, !dbg !2152, !tbaa !2125
  %presc.i = getelementptr inbounds %struct.macan_sig_spec* %30, i64 %idxprom.i, i32 4, !dbg !2152
  %31 = load i8* %presc.i, align 1, !dbg !2152, !tbaa !2119
  %conv41.i = zext i8 %31 to i32, !dbg !2152
  %32 = load %struct.sig_handle*** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 3), align 8, !dbg !2152, !tbaa !2125
  %arrayidx44.i = getelementptr inbounds %struct.sig_handle** %32, i64 %idxprom.i, !dbg !2152
  %33 = load %struct.sig_handle** %arrayidx44.i, align 8, !dbg !2152, !tbaa !2125
  %presc45.i = getelementptr inbounds %struct.sig_handle* %33, i64 0, i32 0, !dbg !2152
  store i32 %conv41.i, i32* %presc45.i, align 4, !dbg !2152, !tbaa !2129
  %presc_cnt.i = getelementptr inbounds %struct.sig_handle* %33, i64 0, i32 1, !dbg !2153
  store i8 1, i8* %presc_cnt.i, align 1, !dbg !2153, !tbaa !2119
  %34 = load %struct.sig_handle*** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 3), align 8, !dbg !2154, !tbaa !2125
  %arrayidx51.i = getelementptr inbounds %struct.sig_handle** %34, i64 %idxprom.i, !dbg !2154
  %35 = load %struct.sig_handle** %arrayidx51.i, align 8, !dbg !2154, !tbaa !2125
  %flags.i = getelementptr inbounds %struct.sig_handle* %35, i64 0, i32 2, !dbg !2154
  store i8 0, i8* %flags.i, align 1, !dbg !2154, !tbaa !2119
  %36 = load %struct.sig_handle*** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 3), align 8, !dbg !2155, !tbaa !2125
  %arrayidx54.i = getelementptr inbounds %struct.sig_handle** %36, i64 %idxprom.i, !dbg !2155
  %37 = load %struct.sig_handle** %arrayidx54.i, align 8, !dbg !2155, !tbaa !2125
  %cback.i = getelementptr inbounds %struct.sig_handle* %37, i64 0, i32 3, !dbg !2155
  store void (i8, i32)* null, void (i8, i32)** %cback.i, align 8, !dbg !2155, !tbaa !2125
  %38 = add i64 %idxprom.i, 1
  %39 = icmp ugt i64 %38, 4294967295
  %40 = trunc i64 %38 to i32
  br i1 %39, label %handler.add_overflow.i, label %for.cond.backedge.i, !dbg !2132, !prof !2156

for.cond.backedge.i:                              ; preds = %handler.add_overflow.i, %if.end35.i
  %41 = load i32* getelementptr inbounds ({ i32, %struct.macan_sig_spec*, i8, %struct.macan_can_ids*, i8, i8, i32, i64, i32, i32, i32, [4 x i8] }* @config, i64 0, i32 0), align 8, !dbg !2132, !tbaa !2129
  %cmp11.i = icmp ult i32 %40, %41, !dbg !2132
  br i1 %cmp11.i, label %for.body.i, label %for.end.i, !dbg !2132

handler.add_overflow.i:                           ; preds = %if.end35.i
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [15 x i8] }* }* @4 to i8*), i64 %idxprom.i, i64 1) #1, !dbg !2132
  br label %for.cond.backedge.i, !dbg !2132

for.end.i:                                        ; preds = %for.cond.backedge.i, %cond.end10.i
  %42 = load i8* getelementptr inbounds ({ i32, %struct.macan_sig_spec*, i8, %struct.macan_can_ids*, i8, i8, i32, i64, i32, i32, i32, [4 x i8] }* @config, i64 0, i32 5), align 1, !dbg !2157, !tbaa !2119
  %puts.i104.i = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str84, i64 0, i64 0)) #1, !dbg !2158
  %idxprom.i105.i = zext i8 %42 to i64, !dbg !2159
  %43 = load %struct.com_part*** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 2), align 8, !dbg !2159, !tbaa !2125
  %arrayidx.i107.i = getelementptr inbounds %struct.com_part** %43, i64 %idxprom.i105.i, !dbg !2159
  %44 = load %struct.com_part** %arrayidx.i107.i, align 8, !dbg !2159, !tbaa !2125
  %cmp.i108.i = icmp eq %struct.com_part* %44, null, !dbg !2159
  br i1 %cmp.i108.i, label %if.then.i112.i, label %__macan_init_cpart.exit113.i, !dbg !2159

if.then.i112.i:                                   ; preds = %for.end.i
  %call1.i109.i = call noalias i8* @calloc(i64 1, i64 56) #1, !dbg !2160
  %45 = bitcast i8* %call1.i109.i to %struct.com_part*, !dbg !2160
  store %struct.com_part* %45, %struct.com_part** %arrayidx.i107.i, align 8, !dbg !2160, !tbaa !2125
  %46 = load %struct.com_part*** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 2), align 8, !dbg !2161, !tbaa !2125
  %arrayidx7.i110.i = getelementptr inbounds %struct.com_part** %46, i64 %idxprom.i105.i, !dbg !2161
  %47 = load %struct.com_part** %arrayidx7.i110.i, align 8, !dbg !2161, !tbaa !2125
  %ecu_id.i111.i = getelementptr inbounds %struct.com_part* %47, i64 0, i32 7, !dbg !2161
  store i8 %42, i8* %ecu_id.i111.i, align 1, !dbg !2161, !tbaa !2119
  br label %__macan_init_cpart.exit113.i, !dbg !2162

__macan_init_cpart.exit113.i:                     ; preds = %if.then.i112.i, %for.end.i
  %48 = load i32* getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 7), align 4, !dbg !2163, !tbaa !2129
  store void (%struct.macan_ev_loop*, %struct.macan_ev_can*, i32)* @can_rx_cb, void (%struct.macan_ev_loop*, %struct.macan_ev_can*, i32)** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 9, i32 0), align 8, !dbg !2165, !tbaa !2125
  store i32 %48, i32* getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 9, i32 2), align 8, !dbg !2166, !tbaa !2129
  store i8* bitcast (%struct.macan_ctx* @macan_ctx to i8*), i8** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 9, i32 4), align 8, !dbg !2167, !tbaa !2125
  %49 = load %struct.macan_ev_loop** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 8), align 8, !dbg !2168, !tbaa !2125
  %cans.i.i = getelementptr inbounds %struct.macan_ev_loop* %49, i64 0, i32 0, !dbg !2169
  %50 = load %struct.macan_ev_can** %cans.i.i, align 8, !dbg !2169, !tbaa !2125
  store %struct.macan_ev_can* %50, %struct.macan_ev_can** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 9, i32 1), align 8, !dbg !2169, !tbaa !2125
  store %struct.macan_ev_can* getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 9), %struct.macan_ev_can** %cans.i.i, align 8, !dbg !2170, !tbaa !2125
  store void (%struct.macan_ev_loop*, %struct.macan_ev_timer*, i32)* @macan_housekeeping_cb, void (%struct.macan_ev_loop*, %struct.macan_ev_timer*, i32)** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 10, i32 0), align 8, !dbg !2171, 
  store i32 0, i32* getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 10, i32 2), align 8, !dbg !2174, !tbaa !2129
  store i32 1000000, i32* getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 10, i32 3), align 4, !dbg !2175, !tbaa !2129
  store i8* bitcast (%struct.macan_ctx* @macan_ctx to i8*), i8** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 10, i32 5), align 8, !dbg !2176, !tbaa !2125
  %51 = load %struct.macan_ev_loop** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 8), align 8, !dbg !2177, !tbaa !2125
  %52 = bitcast i64* %time.i.i.i1 to i8*, !dbg !2178
  call void @klee_make_symbolic(i8* %52, i32 8, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #1, !dbg !2178
  %53 = load i64* %time.i.i.i1, align 8, !dbg !2180, !tbaa !2181
  %54 = load i32* getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 10, i32 2), align 8, !dbg !2179, !tbaa !2129
  %55 = zext i64 %53 to i128
  %56 = zext i32 %54 to i128
  %57 = add i128 %56, %55
  %58 = icmp ugt i128 %57, 18446744073709551615
  %59 = trunc i128 %57 to i64
  br i1 %58, label %handler.add_overflow.i.i3, label %macan_init.exit, !dbg !2179, !prof !2156

handler.add_overflow.i.i3:                        ; preds = %__macan_init_cpart.exit113.i
  %conv.i1.i = zext i32 %54 to i64, !dbg !2179
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [16 x i8] }* }* @19 to i8*), i64 %53, i64 %conv.i1.i) #1, !dbg !2179
  br label %macan_init.exit, !dbg !2179

macan_init.exit:                                  ; preds = %__macan_init_cpart.exit113.i, %handler.add_overflow.i.i3
  store i64 %59, i64* getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 10, i32 4), align 8, !dbg !2179, !tbaa !2181
  %timers.i.i4 = getelementptr inbounds %struct.macan_ev_loop* %51, i64 0, i32 1, !dbg !2182
  %60 = load %struct.macan_ev_timer** %timers.i.i4, align 8, !dbg !2182, !tbaa !2125
  store %struct.macan_ev_timer* %60, %struct.macan_ev_timer** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 10, i32 1), align 8, !dbg !2182, !tbaa !2125
  store %struct.macan_ev_timer* getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 10), %struct.macan_ev_timer** %timers.i.i4, align 8, !dbg !2183, !tbaa !2125
  %cb1.i.i = getelementptr inbounds %struct.macan_ev_timer* %sig_send, i64 0, i32 0, !dbg !2184
  store void (%struct.macan_ev_loop*, %struct.macan_ev_timer*, i32)* @send_cb, void (%struct.macan_ev_loop*, %struct.macan_ev_timer*, i32)** %cb1.i.i, align 8, !dbg !2184, !tbaa !2125
  %after_us.i.i = getelementptr inbounds %struct.macan_ev_timer* %sig_send, i64 0, i32 2, !dbg !2187
  store i32 1000000, i32* %after_us.i.i, align 8, !dbg !2187, !tbaa !2129
  %repeat_us.i.i = getelementptr inbounds %struct.macan_ev_timer* %sig_send, i64 0, i32 3, !dbg !2188
  store i32 1000000, i32* %repeat_us.i.i, align 4, !dbg !2188, !tbaa !2129
  %data.i = getelementptr inbounds %struct.macan_ev_timer* %sig_send, i64 0, i32 5, !dbg !2189
  store i8* bitcast (%struct.macan_ctx* @macan_ctx to i8*), i8** %data.i, align 8, !dbg !2189, !tbaa !2125
  %61 = load %struct.macan_ev_loop** getelementptr inbounds (%struct.macan_ctx* @macan_ctx, i64 0, i32 8), align 8, !dbg !2190, !tbaa !2125
  %62 = bitcast i64* %time.i.i.i to i8*, !dbg !2191
  call void @klee_make_symbolic(i8* %62, i32 8, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #1, !dbg !2191
  %63 = load i64* %time.i.i.i, align 8, !dbg !2193, !tbaa !2181
  %64 = load i32* %after_us.i.i, align 8, !dbg !2192, !tbaa !2129
  %65 = zext i64 %63 to i128
  %66 = zext i32 %64 to i128
  %67 = add i128 %66, %65
  %68 = icmp ugt i128 %67, 18446744073709551615
  %69 = trunc i128 %67 to i64
  br i1 %68, label %handler.add_overflow.i.i, label %macan_ev_timer_setup.exit, !dbg !2192, !prof !2156

handler.add_overflow.i.i:                         ; preds = %macan_init.exit
  %conv.i.i = zext i32 %64 to i64, !dbg !2192
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [16 x i8] }* }* @19 to i8*), i64 %63, i64 %conv.i.i) #1, !dbg !2192
  br label %macan_ev_timer_setup.exit, !dbg !2192

macan_ev_timer_setup.exit:                        ; preds = %macan_init.exit, %handler.add_overflow.i.i
  %expire_us.i.i = getelementptr inbounds %struct.macan_ev_timer* %sig_send, i64 0, i32 4, !dbg !2192
  store i64 %69, i64* %expire_us.i.i, align 8, !dbg !2192, !tbaa !2181
  %timers.i.i = getelementptr inbounds %struct.macan_ev_loop* %61, i64 0, i32 1, !dbg !2194
  %70 = load %struct.macan_ev_timer** %timers.i.i, align 8, !dbg !2194, !tbaa !2125
  %next.i.i = getelementptr inbounds %struct.macan_ev_timer* %sig_send, i64 0, i32 1, !dbg !2194
  store %struct.macan_ev_timer* %70, %struct.macan_ev_timer** %next.i.i, align 8, !dbg !2194, !tbaa !2125
  store %struct.macan_ev_timer* %sig_send, %struct.macan_ev_timer** %timers.i.i, align 8, !dbg !2195, !tbaa !2125
  %71 = bitcast i64* %time.i.i to i8*, !dbg !2196
  call void @klee_make_symbolic(i8* %71, i32 8, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #1, !dbg !2196
  %72 = load i64* %time.i.i, align 8, !dbg !2199, !tbaa !2181
  %t.022.i = load %struct.macan_ev_timer** getelementptr inbounds (%struct.macan_ev_loop* @macan_ev_loop_default, i64 0, i32 1), align 8, !dbg !2200
  %tobool23.i = icmp eq %struct.macan_ev_timer* %t.022.i, null, !dbg !2200
  br i1 %tobool23.i, label %for.body5.i, label %for.body.preheader.i, !dbg !2200

for.body.preheader.i:                             ; preds = %macan_ev_timer_setup.exit
  %73 = zext i64 %72 to i128
  br label %for.body.i6, !dbg !2201

for.body.i6:                                      ; preds = %for.inc.i, %for.body.preheader.i
  %t.024.i = phi %struct.macan_ev_timer* [ %t.0.i, %for.inc.i ], [ %t.022.i, %for.body.preheader.i ]
  %expire_us.i = getelementptr inbounds %struct.macan_ev_timer* %t.024.i, i64 0, i32 4, !dbg !2201
  %74 = load i64* %expire_us.i, align 8, !dbg !2201, !tbaa !2181
  %cmp.i5 = icmp ult i64 %72, %74, !dbg !2201
  br i1 %cmp.i5, label %for.inc.i, label %if.then.i7, !dbg !2201

if.then.i7:                                       ; preds = %for.body.i6
  %cb.i = getelementptr inbounds %struct.macan_ev_timer* %t.024.i, i64 0, i32 0, !dbg !2203
  %75 = load void (%struct.macan_ev_loop*, %struct.macan_ev_timer*, i32)** %cb.i, align 8, !dbg !2203, !tbaa !2125
  call void %75(%struct.macan_ev_loop* @macan_ev_loop_default, %struct.macan_ev_timer* %t.024.i, i32 2) #1, !dbg !2203
  %repeat_us.i = getelementptr inbounds %struct.macan_ev_timer* %t.024.i, i64 0, i32 3, !dbg !2205
  %76 = load i32* %repeat_us.i, align 4, !dbg !2205, !tbaa !2129
  %77 = zext i32 %76 to i128
  %78 = add i128 %77, %73
  %79 = icmp ugt i128 %78, 18446744073709551615
  %80 = trunc i128 %78 to i64
  br i1 %79, label %handler.add_overflow.i8, label %cont.i, !dbg !2205, !prof !2156

handler.add_overflow.i8:                          ; preds = %if.then.i7
  %conv.i = zext i32 %76 to i64, !dbg !2205
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [16 x i8] }* }* @20 to i8*), i64 %72, i64 %conv.i) #1, !dbg !2205
  br label %cont.i, !dbg !2205

cont.i:                                           ; preds = %handler.add_overflow.i8, %if.then.i7
  store i64 %80, i64* %expire_us.i, align 8, !dbg !2205, !tbaa !2181
  br label %for.inc.i, !dbg !2206

for.inc.i:                                        ; preds = %cont.i, %for.body.i6
  %next.i = getelementptr inbounds %struct.macan_ev_timer* %t.024.i, i64 0, i32 1, !dbg !2200
  %t.0.i = load %struct.macan_ev_timer** %next.i, align 8, !dbg !2200
  %tobool.i = icmp eq %struct.macan_ev_timer* %t.0.i, null, !dbg !2200
  br i1 %tobool.i, label %for.body5.i, label %for.body.i6, !dbg !2200

for.body5.i:                                      ; preds = %macan_ev_timer_setup.exit, %for.inc.i, %for.cond2.backedge.i
  %i.021.i = phi i32 [ %sadd.result.i, %for.cond2.backedge.i ], [ 0, %for.inc.i ], [ 0, %macan_ev_timer_setup.exit ]
  %81 = load %struct.macan_ev_can** getelementptr inbounds (%struct.macan_ev_loop* @macan_ev_loop_default, i64 0, i32 0), align 8, !dbg !2207, !tbaa !2125
  call void @can_rx_cb(%struct.macan_ev_loop* undef, %struct.macan_ev_can* %81, i32 undef) #1, !dbg !2207
  %82 = sext i32 %i.021.i to i64
  %83 = add i64 %82, 1
  %84 = icmp slt i64 %83, -2147483648
  %85 = icmp sgt i64 %83, 2147483647
  %86 = or i1 %85, %84
  %87 = trunc i64 %83 to i32
  %88 = insertvalue { i32, i1 } undef, i32 %87, 0
  %89 = insertvalue { i32, i1 } %88, i1 %86, 1
  %sadd.result.i = extractvalue { i32, i1 } %89, 0
  %90 = extractvalue { i32, i1 } %89, 1
  br i1 %90, label %handler.add_overflow7.i, label %for.cond2.backedge.i, !dbg !2209, !prof !2156

for.cond2.backedge.i:                             ; preds = %handler.add_overflow7.i, %for.body5.i
  %cmp3.i = icmp slt i32 %sadd.result.i, 3, !dbg !2209
  br i1 %cmp3.i, label %for.body5.i, label %macan_ev_run.exit, !dbg !2209

handler.add_overflow7.i:                          ; preds = %for.body5.i
  %91 = zext i32 %i.021.i to i64, !dbg !2209
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [6 x i8] }* }* @22 to i8*), i64 %91, i64 1) #1, !dbg !2209
  br label %for.cond2.backedge.i, !dbg !2209

macan_ev_run.exit:                                ; preds = %for.cond2.backedge.i
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([25 x i8]* @str7, i64 0, i64 0)) #1, !dbg !2210
  ret i32 0, !dbg !2211
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone uwtable
define internal void @send_cb(%struct.macan_ev_loop* nocapture %loop, %struct.macan_ev_timer* nocapture %w, i32 %revents) #2 {
entry:
  ret void, !dbg !2212
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @is_skey_ready(%struct.macan_ctx* nocapture %ctx, i8 zeroext %dst_id) #0 {
entry:
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str, i64 0, i64 0)), !dbg !2213
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str58, i64 0, i64 0)) #1, !dbg !2214
  %config.i = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 0, !dbg !2216
  %0 = load %struct.macan_config** %config.i, align 8, !dbg !2216, !tbaa !2125
  %node_count.i = getelementptr inbounds %struct.macan_config* %0, i64 0, i32 2, !dbg !2216
  %1 = load i8* %node_count.i, align 1, !dbg !2216, !tbaa !2119
  %cmp.i = icmp ugt i8 %1, %dst_id, !dbg !2216
  br i1 %cmp.i, label %get_cpart.exit, label %return, !dbg !2216

get_cpart.exit:                                   ; preds = %entry
  %idxprom.i = zext i8 %dst_id to i64, !dbg !2217
  %cpart.i = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 2, !dbg !2217
  %2 = load %struct.com_part*** %cpart.i, align 8, !dbg !2217, !tbaa !2125
  %arrayidx.i = getelementptr inbounds %struct.com_part** %2, i64 %idxprom.i, !dbg !2217
  %3 = load %struct.com_part** %arrayidx.i, align 8, !dbg !2217, !tbaa !2125
  %cmp = icmp eq %struct.com_part* %3, null, !dbg !2219
  br i1 %cmp, label %return, label %if.end, !dbg !2219

if.end:                                           ; preds = %get_cpart.exit
  %puts6 = tail call i32 @puts(i8* getelementptr inbounds ([23 x i8]* @str57, i64 0, i64 0)), !dbg !2220
  %group_field = getelementptr inbounds %struct.com_part* %3, i64 0, i32 6, !dbg !2221
  %4 = load i32* %group_field, align 4, !dbg !2221, !tbaa !2129
  %node = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 1, !dbg !2221
  %5 = load %struct.macan_node_config** %node, align 8, !dbg !2221, !tbaa !2125
  %node_id = getelementptr inbounds %struct.macan_node_config* %5, i64 0, i32 0, !dbg !2221
  %6 = load i8* %node_id, align 1, !dbg !2221, !tbaa !2119
  %conv = zext i8 %6 to i32, !dbg !2221
  %7 = icmp ult i8 %6, 32, !dbg !2221
  %int_cast_to_i64.pre = zext i8 %6 to i64
  br i1 %7, label %cont, label %handler.shift_out_of_bounds, !dbg !2221, !prof !2222

handler.shift_out_of_bounds:                      ; preds = %if.end
  tail call void @__ubsan_handle_shift_out_of_bounds(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [15 x i8] }*, { i16, i16, [6 x i8] }* }* @0 to i8*), i64 1, i64 %int_cast_to_i64.pre) #1, !dbg !2221
  br label %cont, !dbg !2221

cont:                                             ; preds = %if.end, %handler.shift_out_of_bounds
  tail call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64.pre) #1, !dbg !2221
  %shl = shl i32 1, %conv, !dbg !2221
  %and = and i32 %shl, %4, !dbg !2221
  %tobool = icmp ne i32 %and, 0, !dbg !2221
  br label %return, !dbg !2221

return:                                           ; preds = %cont, %get_cpart.exit, %entry
  %retval.0 = phi i1 [ %tobool, %cont ], [ false, %get_cpart.exit ], [ false, %entry ]
  ret i1 %retval.0, !dbg !2223
}

; Function Attrs: uwtable
declare void @__ubsan_handle_shift_out_of_bounds(i8*, i64, i64) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @macan_request_key(%struct.macan_ctx* %ctx, i8 zeroext %fwd_id) #0 {
entry:
  %time.i = alloca i64, align 8
  %puts = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str61, i64 0, i64 0)), !dbg !2224
  %idxprom = zext i8 %fwd_id to i64, !dbg !2225
  %cpart1 = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 2, !dbg !2225
  %0 = load %struct.com_part*** %cpart1, align 8, !dbg !2225, !tbaa !2125
  %arrayidx = getelementptr inbounds %struct.com_part** %0, i64 %idxprom, !dbg !2225
  %1 = load %struct.com_part** %arrayidx, align 8, !dbg !2225, !tbaa !2125
  %tobool = icmp eq %struct.com_part* %1, null, !dbg !2226
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2226

land.lhs.true:                                    ; preds = %entry
  %awaiting_skey = getelementptr inbounds %struct.com_part* %1, i64 0, i32 3, !dbg !2226
  %2 = load i8* %awaiting_skey, align 1, !dbg !2226, !tbaa !2227, !range !2228
  %tobool2 = icmp eq i8 %2, 0, !dbg !2226
  br i1 %tobool2, label %if.then, label %if.end, !dbg !2226

if.then:                                          ; preds = %land.lhs.true
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str62, i64 0, i64 0)) #1, !dbg !2229
  %config.i = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 0, !dbg !2232
  %3 = load %struct.macan_config** %config.i, align 8, !dbg !2232, !tbaa !2125
  %canid.i = getelementptr inbounds %struct.macan_config* %3, i64 0, i32 3, !dbg !2232
  %4 = load %struct.macan_can_ids** %canid.i, align 8, !dbg !2232, !tbaa !2125
  %ecu.i = getelementptr inbounds %struct.macan_can_ids* %4, i64 0, i32 1, !dbg !2232
  %5 = load %struct.macan_ecu** %ecu.i, align 8, !dbg !2232, !tbaa !2125
  %name.i = getelementptr inbounds %struct.macan_ecu* %5, i64 %idxprom, i32 1, !dbg !2232
  %6 = load i8** %name.i, align 8, !dbg !2232, !tbaa !2125
  call void (%struct.macan_ctx*, i32, i8*, ...)* @print_msg(%struct.macan_ctx* %ctx, i32 3, i8* getelementptr inbounds ([29 x i8]* @.str4, i64 0, i64 0), i8* %6) #1, !dbg !2230
  %arraydecay = getelementptr inbounds %struct.com_part* %1, i64 0, i32 4, i64 0, !dbg !2233
  %puts.i23 = call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str63, i64 0, i64 0)) #1, !dbg !2234
  %7 = call i8* @memset(i8* %arraydecay, i32 0, i64 6)
  %puts.i24 = call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @str64, i64 0, i64 0)) #1, !dbg !2235
  store i8 1, i8* %awaiting_skey, align 1, !dbg !2237, !tbaa !2227
  %rcvd_skey_seq = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 6, !dbg !2238
  store i32 0, i32* %rcvd_skey_seq, align 4, !dbg !2238, !tbaa !2129
  %8 = bitcast i64* %time.i to i8*, !dbg !2239
  call void @klee_make_symbolic(i8* %8, i32 8, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #1, !dbg !2239
  %9 = load i64* %time.i, align 8, !dbg !2241, !tbaa !2181
  %10 = load %struct.macan_config** %config.i, align 8, !dbg !2240, !tbaa !2125
  %skey_chg_timeout = getelementptr inbounds %struct.macan_config* %10, i64 0, i32 8, !dbg !2240
  %11 = load i32* %skey_chg_timeout, align 4, !dbg !2240, !tbaa !2129
  %12 = zext i64 %9 to i128
  %13 = zext i32 %11 to i128
  %14 = add i128 %13, %12
  %15 = icmp ugt i128 %14, 18446744073709551615
  %16 = trunc i128 %14 to i64
  br i1 %15, label %handler.add_overflow, label %cont, !dbg !2240, !prof !2156

handler.add_overflow:                             ; preds = %if.then
  %conv = zext i32 %11 to i64, !dbg !2240
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [16 x i8] }* }* @1 to i8*), i64 %9, i64 %conv) #1, !dbg !2240
  br label %cont, !dbg !2240

cont:                                             ; preds = %handler.add_overflow, %if.then
  %valid_until = getelementptr inbounds %struct.com_part* %1, i64 0, i32 2, !dbg !2240
  store i64 %16, i64* %valid_until, align 8, !dbg !2240, !tbaa !2181
  br label %if.end, !dbg !2242

if.end:                                           ; preds = %cont, %land.lhs.true, %entry
  ret void, !dbg !2243
}

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(i8*, i64, i64) #3

; Function Attrs: uwtable
declare void @__ubsan_handle_divrem_overflow(i8*, i64, i64) #3

; Function Attrs: nounwind uwtable
define internal void @macan_housekeeping_cb(%struct.macan_ev_loop* nocapture %loop, %struct.macan_ev_timer* nocapture %w, i32 %revents) #0 {
entry:
  %time.i = alloca i64, align 8
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8]* @str81, i64 0, i64 0)), !dbg !2244
  %data = getelementptr inbounds %struct.macan_ev_timer* %w, i64 0, i32 5, !dbg !2245
  %0 = load i8** %data, align 8, !dbg !2245, !tbaa !2125
  %1 = bitcast i8* %0 to %struct.macan_ctx*, !dbg !2245
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([27 x i8]* @str65, i64 0, i64 0)) #1, !dbg !2246
  %cpart1.i = getelementptr inbounds i8* %0, i64 16, !dbg !2248
  %2 = bitcast i8* %cpart1.i to %struct.com_part***, !dbg !2248
  %3 = load %struct.com_part*** %2, align 8, !dbg !2248, !tbaa !2125
  %config.i = bitcast i8* %0 to %struct.macan_config**, !dbg !2249
  %4 = load %struct.macan_config** %config.i, align 8, !dbg !2249, !tbaa !2125
  %node_count16.i = getelementptr inbounds %struct.macan_config* %4, i64 0, i32 2, !dbg !2249
  %5 = load i8* %node_count16.i, align 1, !dbg !2249, !tbaa !2119
  %cmp17.i = icmp eq i8 %5, 0, !dbg !2249
  br i1 %cmp17.i, label %macan_request_expired_keys.exit, label %for.body.i.preheader, !dbg !2249

for.body.i.preheader:                             ; preds = %entry
  %6 = bitcast i64* %time.i to i8*, !dbg !2251
  br label %for.body.i, !dbg !2252

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %i.018.i = phi i8 [ %inc.i, %for.inc.i ], [ 0, %for.body.i.preheader ]
  %idxprom.i = zext i8 %i.018.i to i64, !dbg !2252
  %arrayidx.i = getelementptr inbounds %struct.com_part** %3, i64 %idxprom.i, !dbg !2252
  %7 = load %struct.com_part** %arrayidx.i, align 8, !dbg !2252, !tbaa !2125
  %tobool.i = icmp eq %struct.com_part* %7, null, !dbg !2252
  br i1 %tobool.i, label %for.inc.i, label %land.lhs.true.i, !dbg !2252

land.lhs.true.i:                                  ; preds = %for.body.i
  %valid_until.i = getelementptr inbounds %struct.com_part* %7, i64 0, i32 2, !dbg !2252
  %8 = load i64* %valid_until.i, align 8, !dbg !2252, !tbaa !2181
  call void @klee_make_symbolic(i8* %6, i32 8, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #1, !dbg !2251
  %9 = load i64* %time.i, align 8, !dbg !2253, !tbaa !2181
  %cmp7.i = icmp ugt i64 %8, %9, !dbg !2252
  br i1 %cmp7.i, label %for.inc.i, label %if.then.i, !dbg !2252

if.then.i:                                        ; preds = %land.lhs.true.i
  tail call fastcc void @macan_request_key(%struct.macan_ctx* %1, i8 zeroext %i.018.i) #1, !dbg !2254
  br label %for.inc.i, !dbg !2254

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i, %for.body.i
  %inc.i = add i8 %i.018.i, 1, !dbg !2249
  %10 = load %struct.macan_config** %config.i, align 8, !dbg !2249, !tbaa !2125
  %node_count.i = getelementptr inbounds %struct.macan_config* %10, i64 0, i32 2, !dbg !2249
  %11 = load i8* %node_count.i, align 1, !dbg !2249, !tbaa !2119
  %cmp.i = icmp ult i8 %inc.i, %11, !dbg !2249
  br i1 %cmp.i, label %for.body.i, label %macan_request_expired_keys.exit, !dbg !2249

macan_request_expired_keys.exit:                  ; preds = %for.inc.i, %entry
  ret void, !dbg !2255
}

; Function Attrs: nounwind uwtable
define internal void @can_rx_cb(%struct.macan_ev_loop* nocapture %loop, %struct.macan_ev_can* nocapture %w, i32 %revents) #0 {
entry:
  %time.i25.i = alloca i64, align 8
  %time.i14.i = alloca i64, align 8
  %cmac.i6.i = alloca [16 x i8], align 16
  %time.i5.i = alloca i64, align 8
  %plain.i236.i = alloca [10 x i8], align 4
  %plain.i173.i = alloca [8 x i8], align 1
  %unwrapped.i.i = alloca [24 x i8], align 16
  %plain.i.i = alloca [12 x i8], align 4
  %cf = alloca %struct.can_frame, align 8
  %puts = call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str82, i64 0, i64 0)), !dbg !2256
  %data = getelementptr inbounds %struct.macan_ev_can* %w, i64 0, i32 4, !dbg !2257
  %0 = load i8** %data, align 8, !dbg !2257, !tbaa !2125
  %1 = bitcast i8* %0 to %struct.macan_ctx*, !dbg !2257
  %2 = bitcast %struct.can_frame* %cf to i8*, !dbg !2258
  call void @klee_make_symbolic(i8* %2, i32 16, i8* getelementptr inbounds ([19 x i8]* @.str146, i64 0, i64 0)) #1, !dbg !2258
  %3 = load i32* @macan_read.counter, align 4, !dbg !2260, !tbaa !2129
  %4 = sext i32 %3 to i64
  %5 = add i64 %4, 1
  %6 = icmp slt i64 %5, -2147483648
  %7 = icmp sgt i64 %5, 2147483647
  %8 = or i1 %7, %6
  %9 = trunc i64 %5 to i32
  %10 = insertvalue { i32, i1 } undef, i32 %9, 0
  %11 = insertvalue { i32, i1 } %10, i1 %8, 1
  %sadd.result.i = extractvalue { i32, i1 } %11, 0
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %handler.add_overflow.i, label %macan_read.exit, !dbg !2260, !prof !2156

handler.add_overflow.i:                           ; preds = %entry
  %13 = zext i32 %3 to i64, !dbg !2260
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [6 x i8] }* }* @32 to i8*), i64 %13, i64 1) #1, !dbg !2260
  br label %macan_read.exit, !dbg !2260

macan_read.exit:                                  ; preds = %entry, %handler.add_overflow.i
  call void @klee_div_zero_check(i64 10) #1, !dbg !2261
  %rem.i = srem i32 %sadd.result.i, 10, !dbg !2261
  store i32 %rem.i, i32* @macan_read.counter, align 4, !dbg !2261, !tbaa !2129
  %cmp.i = icmp eq i32 %rem.i, 0, !dbg !2262
  br i1 %cmp.i, label %while.end, label %while.body.preheader, !dbg !2259

while.body.preheader:                             ; preds = %macan_read.exit
  %can_id.i = getelementptr inbounds %struct.can_frame* %cf, i64 0, i32 0, !dbg !2263
  %node.i = getelementptr inbounds i8* %0, i64 8, !dbg !2263
  %14 = bitcast i8* %node.i to %struct.macan_node_config**, !dbg !2263
  %config.i = bitcast i8* %0 to %struct.macan_config**, !dbg !2263
  %can_dlc.i = getelementptr inbounds %struct.can_frame* %cf, i64 0, i32 1, !dbg !2265
  %15 = bitcast i64* %time.i5.i to i8*, !dbg !2267
  %16 = getelementptr inbounds %struct.can_frame* %cf, i64 0, i32 3, i64 0, !dbg !2271
  %time_ts.0.cast.i.i = bitcast i8* %16 to i32*, !dbg !2271
  %offs.i.i = getelementptr inbounds i8* %0, i64 32, !dbg !2272
  %17 = bitcast i8* %offs.i.i to i64*, !dbg !2272
  %18 = getelementptr inbounds i8* %0, i64 70
  %nonauth_ts.i.i = getelementptr inbounds i8* %0, i64 40, !dbg !2273
  %19 = bitcast i8* %nonauth_ts.i.i to i32*, !dbg !2273
  %nonauth_loc.i.i = getelementptr inbounds i8* %0, i64 48, !dbg !2274
  %20 = bitcast i8* %nonauth_loc.i.i to i64*, !dbg !2274
  %21 = getelementptr inbounds [12 x i8]* %plain.i.i, i64 0, i64 0, !dbg !2275
  %data.i.i = getelementptr inbounds %struct.can_frame* %cf, i64 0, i32 3, !dbg !2277
  %time_ts.0.cast.i113.i = bitcast [8 x i8]* %data.i.i to i32*, !dbg !2277
  %time_ts.0.cast32.i.i = bitcast [12 x i8]* %plain.i.i to i32*, !dbg !2278
  %add.ptr.i.i = getelementptr inbounds [12 x i8]* %plain.i.i, i64 0, i64 4, !dbg !2279
  %22 = getelementptr inbounds i8* %0, i64 64, !dbg !2279
  %add.ptr6.i.i = getelementptr inbounds [12 x i8]* %plain.i.i, i64 0, i64 10, !dbg !2280
  %23 = bitcast i8* %add.ptr6.i.i to i16*, !dbg !2280
  %24 = getelementptr inbounds [16 x i8]* %cmac.i6.i, i64 0, i64 0, !dbg !2281
  %25 = bitcast i64* %time.i14.i to i8*, !dbg !2283
  %arrayidx49.i = getelementptr inbounds %struct.can_frame* %cf, i64 0, i32 3, i64 1, !dbg !2286
  %26 = getelementptr inbounds [24 x i8]* %unwrapped.i.i, i64 0, i64 0, !dbg !2287
  %data63.i.i = getelementptr inbounds %struct.can_frame* %cf, i64 0, i32 3, i64 2, !dbg !2289
  %rcvd_skey_seq.i.i = getelementptr inbounds i8* %0, i64 104, !dbg !2290
  %27 = bitcast i8* %rcvd_skey_seq.i.i to i32*, !dbg !2290
  %add.ptr.i16.i = getelementptr inbounds [24 x i8]* %unwrapped.i.i, i64 0, i64 16, !dbg !2291
  %arrayidx76.i.i = getelementptr inbounds [24 x i8]* %unwrapped.i.i, i64 0, i64 17, !dbg !2293
  %cpart.i.i.i = getelementptr inbounds i8* %0, i64 16, !dbg !2294
  %28 = bitcast i8* %cpart.i.i.i to %struct.com_part***, !dbg !2294
  %29 = bitcast i64* %time.i25.i to i8*, !dbg !2296
  %30 = getelementptr inbounds [8 x i8]* %plain.i173.i, i64 0, i64 0, !dbg !2298
  %arrayidx.i181.i = getelementptr inbounds [8 x i8]* %plain.i173.i, i64 0, i64 4, !dbg !2300
  %add.ptr.i182.i = getelementptr inbounds [8 x i8]* %plain.i173.i, i64 0, i64 5, !dbg !2301
  %cmac.i184.i = getelementptr inbounds %struct.can_frame* %cf, i64 0, i32 3, i64 4, !dbg !2302
  %ack_group.0.cast.i.i = bitcast i8* %arrayidx49.i to i24*, !dbg !2303
  %31 = getelementptr inbounds [10 x i8]* %plain.i236.i, i64 0, i64 0, !dbg !2304
  %sig_val.0.cast.i248.i = bitcast i8* %data63.i.i to i16*, !dbg !2306
  %dummy_time.0.cast.i251.i = bitcast [10 x i8]* %plain.i236.i to i32*, !dbg !2307
  %add.ptr.i35.i.i = getelementptr inbounds [10 x i8]* %plain.i236.i, i64 0, i64 4, !dbg !2309
  %add.ptr.i40.i.i = getelementptr inbounds [10 x i8]* %plain.i236.i, i64 0, i64 5, !dbg !2311
  %add.ptr.i45.i.i = getelementptr inbounds [10 x i8]* %plain.i236.i, i64 0, i64 6, !dbg !2313
  %add.ptr.i50.i.i = getelementptr inbounds [10 x i8]* %plain.i236.i, i64 0, i64 7, !dbg !2315
  %32 = bitcast i8* %add.ptr.i50.i.i to i16*, !dbg !2315
  %arrayidx9.i.i = getelementptr inbounds [8 x i8]* %plain.i173.i, i64 0, i64 6, !dbg !2317
  %arrayidx10.i.i = getelementptr inbounds [8 x i8]* %plain.i173.i, i64 0, i64 7, !dbg !2319
  %cmac.i230.i = getelementptr inbounds %struct.can_frame* %cf, i64 0, i32 3, i64 3, !dbg !2320
  %sighand22.i.i = getelementptr inbounds i8* %0, i64 24, !dbg !2321
  %33 = bitcast i8* %sighand22.i.i to %struct.sig_handle***, !dbg !2321
  %dummy_time.0.cast.i.i = bitcast i8* %add.ptr.i.i to i32*, !dbg !2322
  %add.ptr.i38.i.i = getelementptr inbounds [12 x i8]* %plain.i.i, i64 0, i64 8, !dbg !2326
  %can_sid.0.cast.i.i = bitcast i8* %add.ptr.i38.i.i to i32*, !dbg !2326
  br label %while.body, !dbg !2328

while.body:                                       ; preds = %while.body.preheader, %macan_read.exit6
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([20 x i8]* @str67, i64 0, i64 0)) #1, !dbg !2328
  %34 = load i32* %can_id.i, align 8, !dbg !2263, !tbaa !2129
  %35 = load %struct.macan_node_config** %14, align 8, !dbg !2263, !tbaa !2125
  %node_id.i = getelementptr inbounds %struct.macan_node_config* %35, i64 0, i32 0, !dbg !2263
  %36 = load i8* %node_id.i, align 1, !dbg !2263, !tbaa !2119
  %idxprom.i = zext i8 %36 to i64, !dbg !2263
  %37 = load %struct.macan_config** %config.i, align 8, !dbg !2263, !tbaa !2125
  %canid.i = getelementptr inbounds %struct.macan_config* %37, i64 0, i32 3, !dbg !2263
  %38 = load %struct.macan_can_ids** %canid.i, align 8, !dbg !2263, !tbaa !2125
  %ecu.i = getelementptr inbounds %struct.macan_can_ids* %38, i64 0, i32 1, !dbg !2263
  %39 = load %struct.macan_ecu** %ecu.i, align 8, !dbg !2263, !tbaa !2125
  %canid1.i = getelementptr inbounds %struct.macan_ecu* %39, i64 %idxprom.i, i32 0, !dbg !2263
  %40 = load i32* %canid1.i, align 4, !dbg !2263, !tbaa !2129
  %cmp.i7 = icmp eq i32 %34, %40, !dbg !2263
  br i1 %cmp.i7, label %macan_process_frame.exit, label %if.end.i, !dbg !2263

if.end.i:                                         ; preds = %while.body
  %time.i = getelementptr inbounds %struct.macan_can_ids* %38, i64 0, i32 0, !dbg !2329
  %41 = load i32* %time.i, align 4, !dbg !2329, !tbaa !2129
  %cmp5.i = icmp eq i32 %34, %41, !dbg !2329
  %42 = load i8* %can_dlc.i, align 4, !dbg !2265, !tbaa !2119
  br i1 %cmp5.i, label %if.then6.i, label %if.end8.i, !dbg !2329

if.then6.i:                                       ; preds = %if.end.i
  %conv.i = zext i8 %42 to i32, !dbg !2265
  switch i32 %conv.i, label %macan_process_frame.exit [
    i32 4, label %sw.bb.i
    i32 8, label %sw.bb7.i
  ], !dbg !2265

sw.bb.i:                                          ; preds = %if.then6.i
  %puts.i.i = call i32 @puts(i8* getelementptr inbounds ([20 x i8]* @str68, i64 0, i64 0)) #1, !dbg !2330
  call void @klee_make_symbolic(i8* %15, i32 8, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #1, !dbg !2267
  %43 = load i64* %time.i5.i, align 8, !dbg !2331, !tbaa !2181
  %time_ts.0.copyload.i.i = load i32* %time_ts.0.cast.i.i, align 8, !dbg !2271
  %conv.i.i = zext i32 %time_ts.0.copyload.i.i to i64, !dbg !2332
  %44 = load %struct.macan_config** %config.i, align 8, !dbg !2332, !tbaa !2125
  %time_div.i.i = getelementptr inbounds %struct.macan_config* %44, i64 0, i32 6, !dbg !2332
  %45 = load i32* %time_div.i.i, align 4, !dbg !2332, !tbaa !2129
  %conv2.i.i = zext i32 %45 to i64, !dbg !2332
  %umul_with_overflow.i.i = mul nuw i64 %conv2.i.i, %conv.i.i, !dbg !2332
  %46 = load i64* %17, align 8, !dbg !2272, !tbaa !2181
  %47 = zext i64 %43 to i128
  %48 = zext i64 %46 to i128
  %49 = add i128 %48, %47
  %50 = icmp ugt i128 %49, 18446744073709551615
  %51 = trunc i128 %49 to i64
  br i1 %50, label %handler.add_overflow.i.i, label %cont3.i.i, !dbg !2272, !prof !2156

handler.add_overflow.i.i:                         ; preds = %sw.bb.i
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [16 x i8] }* }* @15 to i8*), i64 %43, i64 %46) #1, !dbg !2272
  br label %cont3.i.i, !dbg !2272

cont3.i.i:                                        ; preds = %handler.add_overflow.i.i, %sw.bb.i
  %cmp.i.i = icmp ugt i64 %51, %umul_with_overflow.i.i, !dbg !2333
  br i1 %cmp.i.i, label %cond.true.i.i, label %cond.false.i.i, !dbg !2333

cond.true.i.i:                                    ; preds = %cont3.i.i
  %52 = and i128 %49, 18446744073709551615
  %53 = zext i64 %umul_with_overflow.i.i to i128
  %54 = sub i128 %52, %53
  %55 = icmp ugt i128 %54, 18446744073709551615
  %56 = trunc i128 %54 to i64
  br i1 %55, label %handler.sub_overflow.i.i, label %cond.end.i.i, !dbg !2333, !prof !2156

handler.sub_overflow.i.i:                         ; preds = %cond.true.i.i
  call void @__ubsan_handle_sub_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [16 x i8] }* }* @16 to i8*), i64 %51, i64 %umul_with_overflow.i.i) #1, !dbg !2333
  br label %cond.end.i.i, !dbg !2333

cond.false.i.i:                                   ; preds = %cont3.i.i
  %57 = zext i64 %umul_with_overflow.i.i to i128
  %58 = and i128 %49, 18446744073709551615
  %59 = sub i128 %57, %58
  %60 = icmp ugt i128 %59, 18446744073709551615
  %61 = trunc i128 %59 to i64
  br i1 %60, label %handler.sub_overflow6.i.i, label %cond.end.i.i, !dbg !2333, !prof !2156

handler.sub_overflow6.i.i:                        ; preds = %cond.false.i.i
  call void @__ubsan_handle_sub_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [16 x i8] }* }* @18 to i8*), i64 %umul_with_overflow.i.i, i64 %51) #1, !dbg !2333
  br label %cond.end.i.i, !dbg !2333

cond.end.i.i:                                     ; preds = %handler.sub_overflow6.i.i, %cond.false.i.i, %handler.sub_overflow.i.i, %cond.true.i.i
  %cond.i.i = phi i64 [ %56, %handler.sub_overflow.i.i ], [ %61, %handler.sub_overflow6.i.i ], [ %56, %cond.true.i.i ], [ %61, %cond.false.i.i ], !dbg !2333
  %62 = load %struct.macan_config** %config.i, align 8, !dbg !2334, !tbaa !2125
  %time_delta.i.i = getelementptr inbounds %struct.macan_config* %62, i64 0, i32 10, !dbg !2334
  %63 = load i32* %time_delta.i.i, align 4, !dbg !2334, !tbaa !2129
  %conv9.i.i = zext i32 %63 to i64, !dbg !2334
  %cmp10.i.i = icmp ugt i64 %cond.i.i, %conv9.i.i, !dbg !2334
  %.pre.i.i = load i8* %18, align 1, !dbg !2335, !tbaa !2227
  %phitmp.i.i = icmp eq i8 %.pre.i.i, 0, !dbg !2334
  br i1 %cmp10.i.i, label %if.then.i.i, label %lor.lhs.false.i.i, !dbg !2334

lor.lhs.false.i.i:                                ; preds = %cond.end.i.i
  br i1 %phitmp.i.i, label %if.end.i.i, label %receive_time_nonauth.exit.i, !dbg !2334

if.then.i.i:                                      ; preds = %cond.end.i.i
  br i1 %phitmp.i.i, label %if.end.i.i, label %if.then14.i.i, !dbg !2335

if.then14.i.i:                                    ; preds = %if.then.i.i
  call void (%struct.macan_ctx*, i32, i8*, ...)* @print_msg(%struct.macan_ctx* %1, i32 1, i8* getelementptr inbounds ([50 x i8]* @.str51, i64 0, i64 0), i64 %cond.i.i, i64 %51, i64 %umul_with_overflow.i.i) #1, !dbg !2337
  br label %if.end.i.i, !dbg !2337

if.end.i.i:                                       ; preds = %if.then14.i.i, %if.then.i.i, %lor.lhs.false.i.i
  call fastcc void @request_time_auth(%struct.macan_ctx* %1) #1, !dbg !2338
  br label %receive_time_nonauth.exit.i, !dbg !2339

receive_time_nonauth.exit.i:                      ; preds = %if.end.i.i, %lor.lhs.false.i.i
  store i32 %time_ts.0.copyload.i.i, i32* %19, align 4, !dbg !2273, !tbaa !2129
  store i64 %43, i64* %20, align 8, !dbg !2274, !tbaa !2181
  br label %macan_process_frame.exit, !dbg !2340

sw.bb7.i:                                         ; preds = %if.then6.i
  %puts.i110.i = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str69, i64 0, i64 0)) #1, !dbg !2341
  %64 = load %struct.macan_config** %config.i, align 8, !dbg !2342, !tbaa !2125
  %time_server_id.i.i = getelementptr inbounds %struct.macan_config* %64, i64 0, i32 5, !dbg !2342
  %65 = load i8* %time_server_id.i.i, align 1, !dbg !2342, !tbaa !2119
  %call1.i112.i = call fastcc zeroext i1 @is_skey_ready(%struct.macan_ctx* %1, i8 zeroext %65) #1, !dbg !2342
  br i1 %call1.i112.i, label %if.end.i115.i, label %macan_process_frame.exit, !dbg !2342

if.end.i115.i:                                    ; preds = %sw.bb7.i
  %time_ts.0.copyload.i114.i = load i32* %time_ts.0.cast.i113.i, align 8, !dbg !2277
  %66 = load %struct.macan_config** %config.i, align 8, !dbg !2343, !tbaa !2125
  %time_server_id3.i.i = getelementptr inbounds %struct.macan_config* %66, i64 0, i32 5, !dbg !2343
  store i32 %time_ts.0.copyload.i114.i, i32* %time_ts.0.cast32.i.i, align 4, !dbg !2278
  %67 = call i8* @memcpy(i8* %add.ptr.i.i, i8* %22, i64 6)
  %68 = load i8* %time_server_id3.i.i, align 1, !dbg !2280, !tbaa !2119
  %idxprom9.i.i = zext i8 %68 to i64, !dbg !2280
  %canid.i.i = getelementptr inbounds %struct.macan_config* %66, i64 0, i32 3, !dbg !2280
  %69 = load %struct.macan_can_ids** %canid.i.i, align 8, !dbg !2280, !tbaa !2125
  %ecu.i.i = getelementptr inbounds %struct.macan_can_ids* %69, i64 0, i32 1, !dbg !2280
  %70 = load %struct.macan_ecu** %ecu.i.i, align 8, !dbg !2280, !tbaa !2125
  %canid12.i.i = getelementptr inbounds %struct.macan_ecu* %70, i64 %idxprom9.i.i, i32 0, !dbg !2280
  %71 = bitcast i32* %canid12.i.i to i16*, !dbg !2280
  %72 = load i16* %71, align 1, !dbg !2280
  store i16 %72, i16* %23, align 2, !dbg !2280
  %puts.i7.i = call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @str10, i64 0, i64 0)) #1, !dbg !2281
  %puts.i.i8.i = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str38, i64 0, i64 0)) #1, !dbg !2344
  %73 = call i8* @memset(i8* %24, i32 0, i64 16)
  %puts.i5.i.i = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str23, i64 0, i64 0)) #1, !dbg !2347
  br label %for.body.i.i11.i

for.body.i.i11.i:                                 ; preds = %for.cond.backedge.i.i.i, %if.end.i115.i
  %i.09.i.i.i = phi i64 [ %79, %for.cond.backedge.i.i.i ], [ 0, %if.end.i115.i ]
  %add.ptr15.i.sum.i = add i64 %i.09.i.i.i, 4, !dbg !2349
  %arrayidx.i.i10.i = getelementptr inbounds %struct.can_frame* %cf, i64 0, i32 3, i64 %add.ptr15.i.sum.i, !dbg !2349
  %74 = load i8* %arrayidx.i.i10.i, align 1, !dbg !2349, !tbaa !2119
  %arrayidx1.i.i.i = getelementptr inbounds [16 x i8]* %cmac.i6.i, i64 0, i64 %i.09.i.i.i, !dbg !2349
  %75 = load i8* %arrayidx1.i.i.i, align 1, !dbg !2349, !tbaa !2119
  %cmp3.i.i.i = icmp eq i8 %74, %75, !dbg !2349
  br i1 %cmp3.i.i.i, label %for.inc.i.i12.i, label %macan_process_frame.exit, !dbg !2349

for.inc.i.i12.i:                                  ; preds = %for.body.i.i11.i
  %76 = zext i64 %i.09.i.i.i to i128
  %77 = add i128 %76, 1
  %78 = icmp ugt i128 %77, 18446744073709551615
  %79 = trunc i128 %77 to i64
  br i1 %78, label %handler.add_overflow.i.i.i, label %for.cond.backedge.i.i.i, !dbg !2352, !prof !2156

for.cond.backedge.i.i.i:                          ; preds = %handler.add_overflow.i.i.i, %for.inc.i.i12.i
  %cmp.i.i13.i = icmp ult i64 %79, 4, !dbg !2352
  br i1 %cmp.i.i13.i, label %for.body.i.i11.i, label %if.end19.i.i, !dbg !2352

handler.add_overflow.i.i.i:                       ; preds = %for.inc.i.i12.i
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [31 x i8] }* }* @23 to i8*), i64 %i.09.i.i.i, i64 1) #1, !dbg !2352
  br label %for.cond.backedge.i.i.i, !dbg !2352

if.end19.i.i:                                     ; preds = %for.cond.backedge.i.i.i
  %80 = load %struct.macan_config** %config.i, align 8, !dbg !2353, !tbaa !2125
  %time_div.i116.i = getelementptr inbounds %struct.macan_config* %80, i64 0, i32 6, !dbg !2353
  %81 = load i32* %time_div.i116.i, align 4, !dbg !2353, !tbaa !2129
  %82 = zext i32 %time_ts.0.copyload.i114.i to i64
  %83 = zext i32 %81 to i64
  %84 = mul i64 %83, %82
  %85 = icmp ugt i64 %84, 4294967295
  br i1 %85, label %handler.mul_overflow.i.i, label %cont.i.i, !dbg !2353, !prof !2156

handler.mul_overflow.i.i:                         ; preds = %if.end19.i.i
  call void @__ubsan_handle_mul_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [15 x i8] }* }* @12 to i8*), i64 %82, i64 %83) #1, !dbg !2353
  br label %cont.i.i, !dbg !2353

cont.i.i:                                         ; preds = %handler.mul_overflow.i.i, %if.end19.i.i
  %conv.i117.i = and i64 %84, 4294967295, !dbg !2353
  %puts58.i.i = call i32 @puts(i8* getelementptr inbounds ([39 x i8]* @str70, i64 0, i64 0)) #1, !dbg !2354
  %86 = load i32* %19, align 4, !dbg !2355, !tbaa !2129
  %cmp.i119.i = icmp eq i32 %time_ts.0.copyload.i114.i, %86, !dbg !2355
  br i1 %cmp.i119.i, label %if.then23.i.i, label %if.else.i.i, !dbg !2355

if.then23.i.i:                                    ; preds = %cont.i.i
  %87 = load i64* %20, align 8, !dbg !2356, !tbaa !2181
  %88 = zext i64 %conv.i117.i to i128
  %89 = zext i64 %87 to i128
  %90 = sub i128 %88, %89
  %91 = icmp ugt i128 %90, 18446744073709551615
  %92 = trunc i128 %90 to i64
  br i1 %91, label %handler.sub_overflow.i121.i, label %cont24.i.i, !dbg !2356, !prof !2156

handler.sub_overflow.i121.i:                      ; preds = %if.then23.i.i
  call void @__ubsan_handle_sub_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [16 x i8] }* }* @13 to i8*), i64 %conv.i117.i, i64 %87) #1, !dbg !2356
  br label %cont24.i.i, !dbg !2356

cont24.i.i:                                       ; preds = %handler.sub_overflow.i121.i, %if.then23.i.i
  store i64 %92, i64* %17, align 8, !dbg !2356, !tbaa !2181
  br label %if.end30.i.i, !dbg !2358

if.else.i.i:                                      ; preds = %cont.i.i
  call void @klee_make_symbolic(i8* %25, i32 8, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #1, !dbg !2283
  %93 = load i64* %time.i14.i, align 8, !dbg !2359, !tbaa !2181
  %94 = zext i64 %conv.i117.i to i128
  %95 = zext i64 %93 to i128
  %96 = sub i128 %94, %95
  %97 = icmp ugt i128 %96, 18446744073709551615
  %98 = trunc i128 %96 to i64
  br i1 %97, label %handler.sub_overflow26.i.i, label %cont27.i.i, !dbg !2284, !prof !2156

handler.sub_overflow26.i.i:                       ; preds = %if.else.i.i
  call void @__ubsan_handle_sub_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [16 x i8] }* }* @14 to i8*), i64 %conv.i117.i, i64 %93) #1, !dbg !2284
  br label %cont27.i.i, !dbg !2284

cont27.i.i:                                       ; preds = %handler.sub_overflow26.i.i, %if.else.i.i
  store i64 %98, i64* %17, align 8, !dbg !2284, !tbaa !2181
  %99 = load i32* %19, align 4, !dbg !2360, !tbaa !2129
  call void (%struct.macan_ctx*, i32, i8*, ...)* @print_msg(%struct.macan_ctx* %1, i32 2, i8* getelementptr inbounds ([45 x i8]* @.str47, i64 0, i64 0), i32 %time_ts.0.copyload.i114.i, i32 %99) #1, !dbg !2360
  %.pre.i123.i = load i64* %17, align 8, !dbg !2361, !tbaa !2181
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %cont27.i.i, %cont24.i.i
  %100 = phi i64 [ %.pre.i123.i, %cont27.i.i ], [ %92, %cont24.i.i ]
  store i8 1, i8* %18, align 1, !dbg !2362, !tbaa !2227
  call void (%struct.macan_ctx*, i32, i8*, ...)* @print_msg(%struct.macan_ctx* %1, i32 0, i8* getelementptr inbounds ([28 x i8]* @.str48, i64 0, i64 0), i32 %time_ts.0.copyload.i114.i, i64 %100) #1, !dbg !2361
  %puts.i.i.i = call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str93, i64 0, i64 0)) #1, !dbg !2363
  %101 = load %struct.macan_config** %config.i, align 8, !dbg !2365, !tbaa !2125
  %node_count9.i.i.i = getelementptr inbounds %struct.macan_config* %101, i64 0, i32 2, !dbg !2365
  %102 = load i8* %node_count9.i.i.i, align 1, !dbg !2365, !tbaa !2119
  %cmp10.i.i.i = icmp eq i8 %102, 0, !dbg !2365
  br i1 %cmp10.i.i.i, label %send_acks.exit.i.i, label %for.body.i.i.i, !dbg !2365

for.body.i.i.i:                                   ; preds = %if.end30.i.i, %for.inc.i.i.i
  %i.011.i.i.i = phi i8 [ %inc.i.i.i, %for.inc.i.i.i ], [ 0, %if.end30.i.i ]
  %call3.i.i.i = call fastcc zeroext i1 @is_skey_ready(%struct.macan_ctx* %1, i8 zeroext %i.011.i.i.i) #1, !dbg !2367
  br i1 %call3.i.i.i, label %if.then.i.i.i, label %for.inc.i.i.i, !dbg !2367

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call fastcc void @send_ack(%struct.macan_ctx* %1, i8 zeroext %i.011.i.i.i) #1, !dbg !2368
  br label %for.inc.i.i.i, !dbg !2368

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %for.body.i.i.i
  %inc.i.i.i = add i8 %i.011.i.i.i, 1, !dbg !2365
  %103 = load %struct.macan_config** %config.i, align 8, !dbg !2365, !tbaa !2125
  %node_count.i.i.i = getelementptr inbounds %struct.macan_config* %103, i64 0, i32 2, !dbg !2365
  %104 = load i8* %node_count.i.i.i, align 1, !dbg !2365, !tbaa !2119
  %cmp.i.i.i = icmp ult i8 %inc.i.i.i, %104, !dbg !2365
  br i1 %cmp.i.i.i, label %for.body.i.i.i, label %send_acks.exit.i.i, !dbg !2365

send_acks.exit.i.i:                               ; preds = %for.inc.i.i.i, %if.end30.i.i
  call fastcc void @request_signals(%struct.macan_ctx* %1) #1, !dbg !2369
  br label %macan_process_frame.exit, !dbg !2369

if.end8.i:                                        ; preds = %if.end.i
  %cmp11.i = icmp eq i8 %42, 0, !dbg !2370
  br i1 %cmp11.i, label %macan_process_frame.exit, label %if.end14.i, !dbg !2370

if.end14.i:                                       ; preds = %if.end8.i
  %puts.i124.i = call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str71, i64 0, i64 0)) #1, !dbg !2371
  %105 = load %struct.macan_config** %config.i, align 8, !dbg !2373, !tbaa !2125
  %sig_count14.i.i = getelementptr inbounds %struct.macan_config* %105, i64 0, i32 0, !dbg !2373
  %106 = load i32* %sig_count14.i.i, align 4, !dbg !2373, !tbaa !2129
  %cmp15.i.i = icmp eq i32 %106, 0, !dbg !2373
  br i1 %cmp15.i.i, label %if.end18.i, label %for.body.i.i, !dbg !2373

for.body.i.i:                                     ; preds = %if.end14.i, %for.cond.backedge.i.i
  %107 = phi %struct.macan_config* [ %113, %for.cond.backedge.i.i ], [ %105, %if.end14.i ]
  %i.016.i.i = phi i32 [ %112, %for.cond.backedge.i.i ], [ 0, %if.end14.i ]
  %idxprom.i126.i = zext i32 %i.016.i.i to i64, !dbg !2375
  %sigspec.i.i = getelementptr inbounds %struct.macan_config* %107, i64 0, i32 1, !dbg !2375
  %108 = load %struct.macan_sig_spec** %sigspec.i.i, align 8, !dbg !2375, !tbaa !2125
  %can_sid.i.i = getelementptr inbounds %struct.macan_sig_spec* %108, i64 %idxprom.i126.i, i32 1, !dbg !2375
  %109 = load i16* %can_sid.i.i, align 2, !dbg !2375, !tbaa !2377
  %conv.i127.i = zext i16 %109 to i32, !dbg !2375
  %cmp2.i.i = icmp eq i32 %conv.i127.i, %34, !dbg !2375
  br i1 %cmp2.i.i, label %if.then17.i, label %for.inc.i.i, !dbg !2375

for.inc.i.i:                                      ; preds = %for.body.i.i
  %110 = add i64 %idxprom.i126.i, 1
  %111 = icmp ugt i64 %110, 4294967295
  %112 = trunc i64 %110 to i32
  br i1 %111, label %handler.add_overflow.i131.i, label %for.cond.backedge.i.i, !dbg !2373, !prof !2156

for.cond.backedge.i.i:                            ; preds = %handler.add_overflow.i131.i, %for.inc.i.i
  %113 = phi %struct.macan_config* [ %107, %for.inc.i.i ], [ %.pre.i130.i, %handler.add_overflow.i131.i ], !dbg !2373
  %sig_count.i.i = getelementptr inbounds %struct.macan_config* %113, i64 0, i32 0, !dbg !2373
  %114 = load i32* %sig_count.i.i, align 4, !dbg !2373, !tbaa !2129
  %cmp.i129.i = icmp ult i32 %112, %114, !dbg !2373
  br i1 %cmp.i129.i, label %for.body.i.i, label %if.end18.i, !dbg !2373

handler.add_overflow.i131.i:                      ; preds = %for.inc.i.i
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [32 x i8] }* }* @11 to i8*), i64 %idxprom.i126.i, i64 1) #1, !dbg !2373
  %.pre.i130.i = load %struct.macan_config** %config.i, align 8, !dbg !2373, !tbaa !2125
  br label %for.cond.backedge.i.i, !dbg !2373

if.then17.i:                                      ; preds = %for.body.i.i
  %puts.i133.i = call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str72, i64 0, i64 0)) #1, !dbg !2378
  %115 = load i32* %can_id.i, align 8, !dbg !2379, !tbaa !2129
  %116 = load i8* %can_dlc.i, align 4, !dbg !2380, !tbaa !2119
  %cmp.i134.i = icmp eq i8 %116, 8, !dbg !2380
  br i1 %cmp.i134.i, label %if.end.i139.i, label %macan_process_frame.exit, !dbg !2380

if.end.i139.i:                                    ; preds = %if.then17.i
  %117 = load %struct.macan_config** %config.i, align 8, !dbg !2381, !tbaa !2125
  %sig_count.i137.i = getelementptr inbounds %struct.macan_config* %117, i64 0, i32 0, !dbg !2381
  %118 = load i32* %sig_count.i137.i, align 4, !dbg !2381, !tbaa !2129
  %cmp2.i138.i = icmp ugt i32 %118, %i.016.i.i, !dbg !2381
  br i1 %cmp2.i138.i, label %if.end5.i.i, label %macan_process_frame.exit, !dbg !2381

if.end5.i.i:                                      ; preds = %if.end.i139.i
  %sigspec7.i.i = getelementptr inbounds %struct.macan_config* %117, i64 0, i32 1, !dbg !2382
  %119 = load %struct.macan_sig_spec** %sigspec7.i.i, align 8, !dbg !2382, !tbaa !2125
  %dst_id.i.i = getelementptr inbounds %struct.macan_sig_spec* %119, i64 %idxprom.i126.i, i32 3, !dbg !2383
  %120 = load i8* %dst_id.i.i, align 1, !dbg !2383, !tbaa !2119
  %121 = load %struct.macan_node_config** %14, align 8, !dbg !2383, !tbaa !2125
  %node_id.i.i = getelementptr inbounds %struct.macan_node_config* %121, i64 0, i32 0, !dbg !2383
  %122 = load i8* %node_id.i.i, align 1, !dbg !2383, !tbaa !2119
  %cmp10.i141.i = icmp eq i8 %120, %122, !dbg !2383
  br i1 %cmp10.i141.i, label %append.exit40.i.i, label %macan_process_frame.exit, !dbg !2383

append.exit40.i.i:                                ; preds = %if.end5.i.i
  %sig_val.0.copyload.i.i = load i32* %time_ts.0.cast.i.i, align 8, !dbg !2384
  %puts.i.i142.i = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str85, i64 0, i64 0)) #1, !dbg !2385
  %123 = load i32* %time_ts.0.cast.i.i, align 8, !dbg !2387
  store i32 %123, i32* %time_ts.0.cast32.i.i, align 4, !dbg !2387
  %puts.i31.i.i = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str85, i64 0, i64 0)) #1, !dbg !2388
  store i32 0, i32* %dummy_time.0.cast.i.i, align 4, !dbg !2322
  %puts.i36.i.i = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str85, i64 0, i64 0)) #1, !dbg !2389
  store i32 %115, i32* %can_sid.0.cast.i.i, align 4, !dbg !2326
  call fastcc void @__receive_sig(%struct.macan_ctx* %1, i32 %i.016.i.i, i32 %sig_val.0.copyload.i.i, i8* %cmac.i184.i, i8* %add.ptr.i.i) #1, !dbg !2390
  br label %macan_process_frame.exit, !dbg !2390

if.end18.i:                                       ; preds = %for.cond.backedge.i.i, %if.end14.i
  %124 = phi %struct.macan_config* [ %105, %if.end14.i ], [ %113, %for.cond.backedge.i.i ]
  %125 = load i32* %can_id.i, align 8, !dbg !2391, !tbaa !2129
  %puts.i144.i = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str73, i64 0, i64 0)) #1, !dbg !2392
  %node_count.i.i = getelementptr inbounds %struct.macan_config* %124, i64 0, i32 2, !dbg !2393
  %126 = load i8* %node_count.i.i, align 1, !dbg !2393, !tbaa !2119
  %cmp16.i.i = icmp eq i8 %126, 0, !dbg !2393
  br i1 %cmp16.i.i, label %macan_process_frame.exit, label %for.body.lr.ph.i.i, !dbg !2393

for.body.lr.ph.i.i:                               ; preds = %if.end18.i
  %canid.i145.i = getelementptr inbounds %struct.macan_config* %124, i64 0, i32 3, !dbg !2395
  %127 = load %struct.macan_can_ids** %canid.i145.i, align 8, !dbg !2395, !tbaa !2125
  %ecu.i146.i = getelementptr inbounds %struct.macan_can_ids* %127, i64 0, i32 1, !dbg !2395
  %128 = load %struct.macan_ecu** %ecu.i146.i, align 8, !dbg !2395, !tbaa !2125
  br label %for.body.i149.i, !dbg !2393

for.cond.i.i:                                     ; preds = %for.body.i149.i
  %cmp.i147.i = icmp ult i8 %inc.i.i, %126, !dbg !2393
  br i1 %cmp.i147.i, label %for.body.i149.i, label %macan_process_frame.exit, !dbg !2393

for.body.i149.i:                                  ; preds = %for.cond.i.i, %for.body.lr.ph.i.i
  %i.017.i.i = phi i8 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i ]
  %idxprom.i148.i = zext i8 %i.017.i.i to i64, !dbg !2395
  %canid3.i.i = getelementptr inbounds %struct.macan_ecu* %128, i64 %idxprom.i148.i, i32 0, !dbg !2395
  %129 = load i32* %canid3.i.i, align 4, !dbg !2395, !tbaa !2129
  %cmp4.i.i = icmp eq i32 %129, %125, !dbg !2395
  %inc.i.i = add i8 %i.017.i.i, 1, !dbg !2393
  br i1 %cmp4.i.i, label %if.end26.i, label %for.cond.i.i, !dbg !2395

if.end26.i:                                       ; preds = %for.body.i149.i
  %130 = load i8* %16, align 8, !dbg !2397, !tbaa !2119
  %and.i.i = and i8 %130, 63, !dbg !2397
  %131 = load %struct.macan_node_config** %14, align 8, !dbg !2398, !tbaa !2125
  %node_id30.i = getelementptr inbounds %struct.macan_node_config* %131, i64 0, i32 0, !dbg !2398
  %132 = load i8* %node_id30.i, align 1, !dbg !2398, !tbaa !2119
  %cmp32.i = icmp eq i8 %and.i.i, %132, !dbg !2398
  br i1 %cmp32.i, label %if.end35.i, label %macan_process_frame.exit, !dbg !2398

if.end35.i:                                       ; preds = %if.end26.i
  %conv.i154.i = zext i8 %130 to i32, !dbg !2399
  call void @klee_overshift_check(i64 32, i64 6) #1, !dbg !2399
  %shr1.i.i = lshr i32 %conv.i154.i, 6, !dbg !2399
  switch i32 %shr1.i.i, label %macan_process_frame.exit [
    i32 3, label %sw.bb67.i
    i32 0, label %sw.bb38.i
    i32 2, label %sw.bb58.i
  ], !dbg !2401

sw.bb38.i:                                        ; preds = %if.end35.i
  %133 = load i8* %can_dlc.i, align 4, !dbg !2402, !tbaa !2119
  %cmp41.i = icmp eq i8 %133, 2, !dbg !2402
  br i1 %cmp41.i, label %land.lhs.true.i, label %macan_process_frame.exit, !dbg !2402

land.lhs.true.i:                                  ; preds = %sw.bb38.i
  %134 = load %struct.macan_config** %config.i, align 8, !dbg !2402, !tbaa !2125
  %key_server_id.i = getelementptr inbounds %struct.macan_config* %134, i64 0, i32 4, !dbg !2402
  %135 = load i8* %key_server_id.i, align 1, !dbg !2402, !tbaa !2119
  %cmp46.i = icmp eq i8 %i.017.i.i, %135, !dbg !2402
  br i1 %cmp46.i, label %if.then48.i, label %macan_process_frame.exit, !dbg !2402

if.then48.i:                                      ; preds = %land.lhs.true.i
  %136 = load i8* %arrayidx49.i, align 1, !dbg !2286, !tbaa !2119
  %node_count.i = getelementptr inbounds %struct.macan_config* %134, i64 0, i32 2, !dbg !2403
  %137 = load i8* %node_count.i, align 1, !dbg !2403, !tbaa !2119
  %cmp53.i = icmp ult i8 %136, %137, !dbg !2403
  br i1 %cmp53.i, label %if.end56.i, label %macan_process_frame.exit, !dbg !2403

if.end56.i:                                       ; preds = %if.then48.i
  call fastcc void @macan_request_key(%struct.macan_ctx* %1, i8 zeroext %136) #1, !dbg !2404
  br label %macan_process_frame.exit, !dbg !2405

sw.bb58.i:                                        ; preds = %if.end35.i
  %138 = load %struct.macan_config** %config.i, align 8, !dbg !2406, !tbaa !2125
  %key_server_id61.i = getelementptr inbounds %struct.macan_config* %138, i64 0, i32 4, !dbg !2406
  %139 = load i8* %key_server_id61.i, align 1, !dbg !2406, !tbaa !2119
  %cmp63.i = icmp eq i8 %i.017.i.i, %139, !dbg !2406
  br i1 %cmp63.i, label %if.then65.i, label %if.else.i, !dbg !2406

if.then65.i:                                      ; preds = %sw.bb58.i
  %puts.i155.i = call i32 @puts(i8* getelementptr inbounds ([13 x i8]* @str74, i64 0, i64 0)) #1, !dbg !2407
  %140 = load i8* %can_dlc.i, align 4, !dbg !2408, !tbaa !2119
  %cmp.i158.i = icmp ult i8 %140, 2, !dbg !2408
  br i1 %cmp.i158.i, label %macan_process_frame.exit, label %if.end.i160.i, !dbg !2408

if.end.i160.i:                                    ; preds = %if.then65.i
  %conv.i157.i = zext i8 %140 to i32, !dbg !2408
  %141 = load i8* %arrayidx49.i, align 1, !dbg !2409, !tbaa !2119
  call void @klee_overshift_check(i64 8, i64 4) #1, !dbg !2409
  %shr180.i.i = lshr i8 %141, 4, !dbg !2409
  %and8.i.i = and i8 %141, 15, !dbg !2410
  %142 = zext i8 %and8.i.i to i32
  %143 = add i32 %142, 2
  %cmp14.i.i = icmp ult i32 %conv.i157.i, %143, !dbg !2411
  br i1 %cmp14.i.i, label %macan_process_frame.exit, label %lor.lhs.false.i162.i, !dbg !2411

lor.lhs.false.i162.i:                             ; preds = %if.end.i160.i
  %conv16.i.i = zext i8 %shr180.i.i to i32, !dbg !2411
  %cmp17.i.i = icmp ugt i8 %141, 95, !dbg !2411
  br i1 %cmp17.i.i, label %macan_process_frame.exit, label %if.end20.i.i, !dbg !2411

if.end20.i.i:                                     ; preds = %lor.lhs.false.i162.i
  %cmp22.i.i = icmp eq i8 %shr180.i.i, 5, !dbg !2412
  %.and8.i.i = select i1 %cmp22.i.i, i8 2, i8 %and8.i.i, !dbg !2412
  %cmp27.i.i = icmp ugt i8 %141, 79, !dbg !2413
  %cmp30.i.i = icmp eq i8 %.and8.i.i, 6, !dbg !2413
  %or.cond.i.i = or i1 %cmp27.i.i, %cmp30.i.i, !dbg !2413
  br i1 %or.cond.i.i, label %lor.lhs.false32.i.i, label %macan_process_frame.exit, !dbg !2413

lor.lhs.false32.i.i:                              ; preds = %if.end20.i.i
  %cmp22.not.i.i = xor i1 %cmp22.i.i, true, !dbg !2413
  %cmp38.i.i = icmp eq i8 %.and8.i.i, 2, !dbg !2413
  %or.cond182.i.i = or i1 %cmp38.i.i, %cmp22.not.i.i, !dbg !2413
  br i1 %or.cond182.i.i, label %lor.lhs.false40.i.i, label %macan_process_frame.exit, !dbg !2413

lor.lhs.false40.i.i:                              ; preds = %lor.lhs.false32.i.i
  %144 = load i8* %can_dlc.i, align 4, !dbg !2413, !tbaa !2119
  %conv42.i.i = zext i8 %144 to i32, !dbg !2413
  %145 = zext i8 %.and8.i.i to i32
  %146 = add i32 %145, 2
  %cmp46.i.i = icmp ult i32 %conv42.i.i, %146, !dbg !2413
  br i1 %cmp46.i.i, label %macan_process_frame.exit, label %lor.lhs.false48.i.i, !dbg !2413

lor.lhs.false48.i.i:                              ; preds = %lor.lhs.false40.i.i
  %umul_with_overflow.i163.i = mul nuw i32 %conv16.i.i, 6, !dbg !2413
  %147 = add nuw i32 %145, %umul_with_overflow.i163.i, !dbg !2413
  %cmp55.i.i = icmp ugt i32 %147, 32, !dbg !2413
  br i1 %cmp55.i.i, label %macan_process_frame.exit, label %cont62.i.i, !dbg !2413

cont62.i.i:                                       ; preds = %lor.lhs.false48.i.i
  %idx.ext181.i.i = zext i32 %umul_with_overflow.i163.i to i64, !dbg !2289
  %add.ptr.i164.i = getelementptr inbounds %struct.macan_ctx* %1, i64 0, i32 5, i64 %idx.ext181.i.i, !dbg !2289
  %conv64.i.i = zext i8 %.and8.i.i to i64, !dbg !2289
  %148 = call i8* @memcpy(i8* %add.ptr.i164.i, i8* %data63.i.i, i64 %conv64.i.i)
  %int_cast_to_i642.i = zext i8 %shr180.i.i to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i642.i) #1, !dbg !2290
  %shl.i.i = shl i32 1, %conv16.i.i, !dbg !2290
  %149 = load i32* %27, align 4, !dbg !2290, !tbaa !2129
  %or.i.i = or i32 %149, %shl.i.i, !dbg !2290
  store i32 %or.i.i, i32* %27, align 4, !dbg !2290, !tbaa !2129
  %cmp69.i.i = icmp eq i32 %or.i.i, 63, !dbg !2414
  br i1 %cmp69.i.i, label %if.then71.i.i, label %macan_process_frame.exit, !dbg !2414

if.then71.i.i:                                    ; preds = %cont62.i.i
  store i32 0, i32* %27, align 4, !dbg !2415, !tbaa !2129
  %puts.i15.i = call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @str12, i64 0, i64 0)) #1, !dbg !2416
  call void @klee_make_symbolic(i8* %add.ptr.i16.i, i32 7, i8* getelementptr inbounds ([24 x i8]* @.str830, i64 0, i64 0)) #1, !dbg !2291
  %150 = load i8* %arrayidx76.i.i, align 1, !dbg !2293, !tbaa !2119
  %puts.i.i166.i = call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str58, i64 0, i64 0)) #1, !dbg !2417
  %151 = load %struct.macan_config** %config.i, align 8, !dbg !2418, !tbaa !2125
  %node_count.i.i167.i = getelementptr inbounds %struct.macan_config* %151, i64 0, i32 2, !dbg !2418
  %152 = load i8* %node_count.i.i167.i, align 1, !dbg !2418, !tbaa !2119
  %cmp.i.i168.i = icmp ugt i8 %152, %150, !dbg !2418
  br i1 %cmp.i.i168.i, label %get_cpart.exit.i.i, label %if.then80.i.i, !dbg !2418

get_cpart.exit.i.i:                               ; preds = %if.then71.i.i
  %idxprom.i.i.i = zext i8 %150 to i64, !dbg !2294
  %153 = load %struct.com_part*** %28, align 8, !dbg !2294, !tbaa !2125
  %arrayidx.i.i.i = getelementptr inbounds %struct.com_part** %153, i64 %idxprom.i.i.i, !dbg !2294
  %154 = load %struct.com_part** %arrayidx.i.i.i, align 8, !dbg !2294, !tbaa !2125
  %cmp78.i.i = icmp eq %struct.com_part* %154, null, !dbg !2419
  br i1 %cmp78.i.i, label %if.then80.i.i, label %if.end82.i.i, !dbg !2419

if.then80.i.i:                                    ; preds = %get_cpart.exit.i.i, %if.then71.i.i
  %conv81.i.i = zext i8 %150 to i32, !dbg !2420
  call void (%struct.macan_ctx*, i32, i8*, ...)* @print_msg(%struct.macan_ctx* %1, i32 2, i8* getelementptr inbounds ([36 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8]* @17, i64 0, i64 0), i32 352, i8* getelementptr inbounds ([13 x
  br label %macan_process_frame.exit, !dbg !2422

if.end82.i.i:                                     ; preds = %get_cpart.exit.i.i
  %puts.i17.i = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str23, i64 0, i64 0)) #1, !dbg !2423
  br label %for.body.i19.i

for.body.i19.i:                                   ; preds = %for.cond.backedge.i22.i, %if.end82.i.i
  %i.09.i.i = phi i64 [ %160, %for.cond.backedge.i22.i ], [ 0, %if.end82.i.i ]
  %add.ptr84.i.sum.i = add i64 %i.09.i.i, 18, !dbg !2425
  %arrayidx.i18.i = getelementptr inbounds [24 x i8]* %unwrapped.i.i, i64 0, i64 %add.ptr84.i.sum.i, !dbg !2425
  %155 = load i8* %arrayidx.i18.i, align 1, !dbg !2425, !tbaa !2119
  %arrayidx1.i.i = getelementptr inbounds %struct.com_part* %154, i64 0, i32 4, i64 %i.09.i.i, !dbg !2425
  %156 = load i8* %arrayidx1.i.i, align 1, !dbg !2425, !tbaa !2119
  %cmp3.i.i = icmp eq i8 %155, %156, !dbg !2425
  br i1 %cmp3.i.i, label %for.inc.i20.i, label %if.then87.i.i, !dbg !2425

for.inc.i20.i:                                    ; preds = %for.body.i19.i
  %157 = zext i64 %i.09.i.i to i128
  %158 = add i128 %157, 1
  %159 = icmp ugt i128 %158, 18446744073709551615
  %160 = trunc i128 %158 to i64
  br i1 %159, label %handler.add_overflow.i23.i, label %for.cond.backedge.i22.i, !dbg !2426, !prof !2156

for.cond.backedge.i22.i:                          ; preds = %handler.add_overflow.i23.i, %for.inc.i20.i
  %cmp.i21.i = icmp ult i64 %160, 6, !dbg !2426
  br i1 %cmp.i21.i, label %for.body.i19.i, label %if.end89.i.i, !dbg !2426

handler.add_overflow.i23.i:                       ; preds = %for.inc.i20.i
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [31 x i8] }* }* @23 to i8*), i64 %i.09.i.i, i64 1) #1, !dbg !2426
  br label %for.cond.backedge.i22.i, !dbg !2426

if.then87.i.i:                                    ; preds = %for.body.i19.i
  %conv88.i.i = zext i8 %150 to i32, !dbg !2427
  call void (%struct.macan_ctx*, i32, i8*, ...)* @print_msg(%struct.macan_ctx* %1, i32 2, i8* getelementptr inbounds ([37 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8]* @17, i64 0, i64 0), i32 357, i8* getelementptr inbounds ([13 x
  br label %macan_process_frame.exit, !dbg !2429

if.end89.i.i:                                     ; preds = %for.cond.backedge.i22.i
  %awaiting_skey.i.i = getelementptr inbounds %struct.com_part* %154, i64 0, i32 3, !dbg !2430
  %161 = load i8* %awaiting_skey.i.i, align 1, !dbg !2430, !tbaa !2227, !range !2228
  %tobool90.i.i = icmp eq i8 %161, 0, !dbg !2430
  br i1 %tobool90.i.i, label %macan_process_frame.exit, label %if.end92.i.i, !dbg !2430

if.end92.i.i:                                     ; preds = %if.end89.i.i
  store i8 0, i8* %awaiting_skey.i.i, align 1, !dbg !2431, !tbaa !2227
  call void @klee_make_symbolic(i8* %29, i32 8, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #1, !dbg !2296
  %162 = load i64* %time.i25.i, align 8, !dbg !2432, !tbaa !2181
  %163 = load %struct.macan_config** %config.i, align 8, !dbg !2297, !tbaa !2125
  %skey_validity.i.i = getelementptr inbounds %struct.macan_config* %163, i64 0, i32 7, !dbg !2297
  %164 = load i64* %skey_validity.i.i, align 8, !dbg !2297, !tbaa !2181
  %165 = zext i64 %162 to i128
  %166 = zext i64 %164 to i128
  %167 = add i128 %166, %165
  %168 = icmp ugt i128 %167, 18446744073709551615
  %169 = trunc i128 %167 to i64
  br i1 %168, label %handler.add_overflow95.i.i, label %cont96.i.i, !dbg !2297, !prof !2156

handler.add_overflow95.i.i:                       ; preds = %if.end92.i.i
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [16 x i8] }* }* @8 to i8*), i64 %162, i64 %164) #1, !dbg !2297
  br label %cont96.i.i, !dbg !2297

cont96.i.i:                                       ; preds = %handler.add_overflow95.i.i, %if.end92.i.i
  %valid_until.i.i = getelementptr inbounds %struct.com_part* %154, i64 0, i32 2, !dbg !2297
  store i64 %169, i64* %valid_until.i.i, align 8, !dbg !2297, !tbaa !2181
  %arraydecay98.i.i = getelementptr inbounds %struct.com_part* %154, i64 0, i32 1, i32 0, i64 0, !dbg !2433
  %call100.i.i = call i32 @memcmp(i8* %arraydecay98.i.i, i8* %26, i64 16) #11, !dbg !2433
  %cmp101.i.i = icmp eq i32 %call100.i.i, 0, !dbg !2433
  %key_received.i.i = getelementptr inbounds %struct.com_part* %154, i64 0, i32 0, !dbg !2433
  br i1 %cmp101.i.i, label %lor.lhs.false103.i.i, label %if.then105.i.i, !dbg !2433

lor.lhs.false103.i.i:                             ; preds = %cont96.i.i
  %170 = load i8* %key_received.i.i, align 1, !dbg !2433, !tbaa !2227, !range !2228
  %tobool104.i.i = icmp eq i8 %170, 0, !dbg !2433
  br i1 %tobool104.i.i, label %if.then105.i.i, label %if.end115.i.i, !dbg !2433

if.then105.i.i:                                   ; preds = %lor.lhs.false103.i.i, %cont96.i.i
  store i8 1, i8* %key_received.i.i, align 1, !dbg !2434, !tbaa !2227
  %171 = call i8* @memcpy(i8* %arraydecay98.i.i, i8* %26, i64 16)
  %172 = load %struct.macan_node_config** %14, align 8, !dbg !2436, !tbaa !2125
  %node_id.i170.i = getelementptr inbounds %struct.macan_node_config* %172, i64 0, i32 0, !dbg !2436
  %173 = load i8* %node_id.i170.i, align 1, !dbg !2436, !tbaa !2119
  %conv110.i.i = zext i8 %173 to i32, !dbg !2436
  %174 = icmp ult i8 %173, 32, !dbg !2436
  %int_cast_to_i643.pre.i = zext i8 %173 to i64
  br i1 %174, label %cont112.i.i, label %handler.shift_out_of_bounds111.i.i, !dbg !2436, !prof !2222

handler.shift_out_of_bounds111.i.i:               ; preds = %if.then105.i.i
  call void @__ubsan_handle_shift_out_of_bounds(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [15 x i8] }*, { i16, i16, [6 x i8] }* }* @9 to i8*), i64 1, i64 %int_cast_to_i643.pre.i) #1, !dbg !2436
  br label %cont112.i.i, !dbg !2436

cont112.i.i:                                      ; preds = %handler.shift_out_of_bounds111.i.i, %if.then105.i.i
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i643.pre.i) #1, !dbg !2436
  %shl113.i.i = shl i32 1, %conv110.i.i, !dbg !2436
  %group_field.i.i = getelementptr inbounds %struct.com_part* %154, i64 0, i32 6, !dbg !2436
  store i32 %shl113.i.i, i32* %group_field.i.i, align 4, !dbg !2436, !tbaa !2129
  %puts.i183.i.i = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str62, i64 0, i64 0)) #1, !dbg !2437
  %175 = load %struct.macan_config** %config.i, align 8, !dbg !2439, !tbaa !2125
  %canid.i.i.i = getelementptr inbounds %struct.macan_config* %175, i64 0, i32 3, !dbg !2439
  %176 = load %struct.macan_can_ids** %canid.i.i.i, align 8, !dbg !2439, !tbaa !2125
  %ecu.i.i.i = getelementptr inbounds %struct.macan_can_ids* %176, i64 0, i32 1, !dbg !2439
  %177 = load %struct.macan_ecu** %ecu.i.i.i, align 8, !dbg !2439, !tbaa !2125
  %name.i.i.i = getelementptr inbounds %struct.macan_ecu* %177, i64 %idxprom.i.i.i, i32 1, !dbg !2439
  %178 = load i8** %name.i.i.i, align 8, !dbg !2439, !tbaa !2125
  call void (%struct.macan_ctx*, i32, i8*, ...)* @print_msg(%struct.macan_ctx* %1, i32 0, i8* getelementptr inbounds ([24 x i8]* @.str40, i64 0, i64 0), i8* %178) #1, !dbg !2438
  call fastcc void @send_ack(%struct.macan_ctx* %1, i8 zeroext %150) #1, !dbg !2440
  br label %if.end115.i.i, !dbg !2441

if.end115.i.i:                                    ; preds = %cont112.i.i, %lor.lhs.false103.i.i
  %179 = load i8* %18, align 1, !dbg !2442, !tbaa !2227, !range !2228
  %tobool116.i.i = icmp eq i8 %179, 0, !dbg !2442
  br i1 %tobool116.i.i, label %land.lhs.true117.i.i, label %if.end124.i.i, !dbg !2442

land.lhs.true117.i.i:                             ; preds = %if.end115.i.i
  %180 = load %struct.macan_config** %config.i, align 8, !dbg !2442, !tbaa !2125
  %time_server_id.i172.i = getelementptr inbounds %struct.macan_config* %180, i64 0, i32 5, !dbg !2442
  %181 = load i8* %time_server_id.i172.i, align 1, !dbg !2442, !tbaa !2119
  %cmp121.i.i = icmp eq i8 %150, %181, !dbg !2442
  br i1 %cmp121.i.i, label %if.then123.i.i, label %if.end124.i.i, !dbg !2442

if.then123.i.i:                                   ; preds = %land.lhs.true117.i.i
  call fastcc void @request_time_auth(%struct.macan_ctx* %1) #1, !dbg !2443
  br label %if.end124.i.i, !dbg !2443

if.end124.i.i:                                    ; preds = %if.then123.i.i, %land.lhs.true117.i.i, %if.end115.i.i
  %skey_callback.i.i = getelementptr inbounds %struct.com_part* %154, i64 0, i32 8, !dbg !2444
  %182 = load void (%struct.macan_ctx*, i8)** %skey_callback.i.i, align 8, !dbg !2444, !tbaa !2125
  %tobool125.i.i = icmp eq void (%struct.macan_ctx*, i8)* %182, null, !dbg !2444
  br i1 %tobool125.i.i, label %macan_process_frame.exit, label %if.then126.i.i, !dbg !2444

if.then126.i.i:                                   ; preds = %if.end124.i.i
  call void %182(%struct.macan_ctx* %1, i8 zeroext %150) #1, !dbg !2445
  br label %macan_process_frame.exit, !dbg !2445

if.else.i:                                        ; preds = %sw.bb58.i
  %puts.i174.i = call i32 @puts(i8* getelementptr inbounds ([12 x i8]* @str75, i64 0, i64 0)) #1, !dbg !2446
  %183 = load i32* %can_id.i, align 8, !dbg !2447, !tbaa !2129
  %puts.i.i176.i = call i32 @puts(i8* getelementptr inbounds ([12 x i8]* @str80, i64 0, i64 0)) #1, !dbg !2448
  %184 = load %struct.macan_config** %config.i, align 8, !dbg !2449, !tbaa !2125
  %puts.i.i.i.i = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str73, i64 0, i64 0)) #1, !dbg !2450
  %node_count.i.i.i.i = getelementptr inbounds %struct.macan_config* %184, i64 0, i32 2, !dbg !2451
  %185 = load i8* %node_count.i.i.i.i, align 1, !dbg !2451, !tbaa !2119
  %cmp16.i.i.i.i = icmp eq i8 %185, 0, !dbg !2451
  br i1 %cmp16.i.i.i.i, label %macan_process_frame.exit, label %for.body.lr.ph.i.i.i.i, !dbg !2451

for.body.lr.ph.i.i.i.i:                           ; preds = %if.else.i
  %canid.i.i.i.i = getelementptr inbounds %struct.macan_config* %184, i64 0, i32 3, !dbg !2452
  %186 = load %struct.macan_can_ids** %canid.i.i.i.i, align 8, !dbg !2452, !tbaa !2125
  %ecu.i.i.i.i = getelementptr inbounds %struct.macan_can_ids* %186, i64 0, i32 1, !dbg !2452
  %187 = load %struct.macan_ecu** %ecu.i.i.i.i, align 8, !dbg !2452, !tbaa !2125
  br label %for.body.i.i.i.i, !dbg !2451

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  %cmp.i.i.i.i = icmp ult i8 %inc.i.i.i.i, %185, !dbg !2451
  br i1 %cmp.i.i.i.i, label %for.body.i.i.i.i, label %macan_process_frame.exit, !dbg !2451

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i, %for.body.lr.ph.i.i.i.i
  %i.017.i.i.i.i = phi i8 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %for.cond.i.i.i.i ]
  %idxprom.i.i.i.i = zext i8 %i.017.i.i.i.i to i64, !dbg !2452
  %canid3.i.i.i.i = getelementptr inbounds %struct.macan_ecu* %187, i64 %idxprom.i.i.i.i, i32 0, !dbg !2452
  %188 = load i32* %canid3.i.i.i.i, align 4, !dbg !2452, !tbaa !2129
  %cmp4.i.i.i.i = icmp eq i32 %188, %183, !dbg !2452
  %inc.i.i.i.i = add i8 %i.017.i.i.i.i, 1, !dbg !2451
  br i1 %cmp4.i.i.i.i, label %if.end.i.i.i, label %for.cond.i.i.i.i, !dbg !2452

if.end.i.i.i:                                     ; preds = %for.body.i.i.i.i
  %puts.i4.i.i.i = call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str58, i64 0, i64 0)) #1, !dbg !2453
  %189 = load %struct.macan_config** %config.i, align 8, !dbg !2455, !tbaa !2125
  %node_count.i5.i.i.i = getelementptr inbounds %struct.macan_config* %189, i64 0, i32 2, !dbg !2455
  %190 = load i8* %node_count.i5.i.i.i, align 1, !dbg !2455, !tbaa !2119
  %cmp.i6.i.i.i = icmp ugt i8 %190, %i.017.i.i.i.i, !dbg !2455
  br i1 %cmp.i6.i.i.i, label %canid2cpart.exit.i.i, label %macan_process_frame.exit, !dbg !2455

canid2cpart.exit.i.i:                             ; preds = %if.end.i.i.i
  %191 = load %struct.com_part*** %28, align 8, !dbg !2456, !tbaa !2125
  %arrayidx.i.i.i.i = getelementptr inbounds %struct.com_part** %191, i64 %idxprom.i.i.i.i, !dbg !2456
  %192 = load %struct.com_part** %arrayidx.i.i.i.i, align 8, !dbg !2456, !tbaa !2125
  %tobool.i178.i = icmp eq %struct.com_part* %192, null, !dbg !2457
  br i1 %tobool.i178.i, label %macan_process_frame.exit, label %if.end.i185.i, !dbg !2457

if.end.i185.i:                                    ; preds = %canid2cpart.exit.i.i
  %193 = load i8* %16, align 8, !dbg !2300, !tbaa !2119
  %and.i180.i = and i8 %193, 63, !dbg !2300
  store i8 %and.i180.i, i8* %arrayidx.i181.i, align 1, !dbg !2300, !tbaa !2119
  %194 = call i8* @memcpy(i8* %add.ptr.i182.i, i8* %arrayidx49.i, i64 3)
  %call7.i.i = call fastcc i32 @macan_check_cmac(%struct.macan_ctx* %1, i8* %cmac.i184.i, i8* %30) #1, !dbg !2302
  %tobool8.i.i = icmp eq i32 %call7.i.i, 0, !dbg !2302
  br i1 %tobool8.i.i, label %if.then9.i.i, label %if.end13.i.i, !dbg !2302

if.then9.i.i:                                     ; preds = %if.end.i185.i
  %ecu_id.i.i = getelementptr inbounds %struct.com_part* %192, i64 0, i32 7, !dbg !2458
  %195 = load i8* %ecu_id.i.i, align 1, !dbg !2458, !tbaa !2119
  %call10.i.i = call fastcc zeroext i1 @is_skey_ready(%struct.macan_ctx* %1, i8 zeroext %195) #1, !dbg !2458
  br i1 %call10.i.i, label %if.then11.i.i, label %macan_process_frame.exit, !dbg !2458

if.then11.i.i:                                    ; preds = %if.then9.i.i
  call void (%struct.macan_ctx*, i32, i8*, ...)* @print_msg(%struct.macan_ctx* %1, i32 2, i8* getelementptr inbounds ([17 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8]* @17, i64 0, i64 0), i32 242, i8* getelementptr inbounds ([12 x
  br label %macan_process_frame.exit, !dbg !2460

if.end13.i.i:                                     ; preds = %if.end.i185.i
  %ack_group.0.copyload.i.i = load i24* %ack_group.0.cast.i.i, align 1, !dbg !2303
  %ack_group.0.insert.ext.i.i = zext i24 %ack_group.0.copyload.i.i to i32, !dbg !2303
  %group_field.i186.i = getelementptr inbounds %struct.com_part* %192, i64 0, i32 6, !dbg !2461
  %196 = load i32* %group_field.i186.i, align 4, !dbg !2461, !tbaa !2129
  %or.i187.i = or i32 %196, %ack_group.0.insert.ext.i.i, !dbg !2461
  store i32 %or.i187.i, i32* %group_field.i186.i, align 4, !dbg !2461, !tbaa !2129
  %197 = load %struct.macan_node_config** %14, align 8, !dbg !2462, !tbaa !2125
  %node_id.i189.i = getelementptr inbounds %struct.macan_node_config* %197, i64 0, i32 0, !dbg !2462
  %198 = load i8* %node_id.i189.i, align 1, !dbg !2462, !tbaa !2119
  %conv15.i.i = zext i8 %198 to i32, !dbg !2462
  %199 = icmp ult i8 %198, 32, !dbg !2462
  %int_cast_to_i644.pre.i = zext i8 %198 to i64
  br i1 %199, label %cont.i192.i, label %handler.shift_out_of_bounds.i.i, !dbg !2462, !prof !2222

handler.shift_out_of_bounds.i.i:                  ; preds = %if.end13.i.i
  call void @__ubsan_handle_shift_out_of_bounds(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [15 x i8] }*, { i16, i16, [6 x i8] }* }* @5 to i8*), i64 1, i64 %int_cast_to_i644.pre.i) #1, !dbg !2462
  br label %cont.i192.i, !dbg !2462

cont.i192.i:                                      ; preds = %handler.shift_out_of_bounds.i.i, %if.end13.i.i
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i644.pre.i) #1, !dbg !2462
  %shl.i190.i = shl i32 1, %conv15.i.i, !dbg !2462
  %and16.i.i = and i32 %shl.i190.i, %ack_group.0.insert.ext.i.i, !dbg !2462
  %cmp.i191.i = icmp eq i32 %and16.i.i, 0, !dbg !2462
  br i1 %cmp.i191.i, label %if.then18.i.i, label %if.end20.i193.i, !dbg !2462

if.then18.i.i:                                    ; preds = %cont.i192.i
  %ecu_id19.i.i = getelementptr inbounds %struct.com_part* %192, i64 0, i32 7, !dbg !2463
  %200 = load i8* %ecu_id19.i.i, align 1, !dbg !2463, !tbaa !2119
  call fastcc void @send_ack(%struct.macan_ctx* %1, i8 zeroext %200) #1, !dbg !2463
  br label %if.end20.i193.i, !dbg !2463

if.end20.i193.i:                                  ; preds = %if.then18.i.i, %cont.i192.i
  call fastcc void @request_signals(%struct.macan_ctx* %1) #1, !dbg !2464
  br label %macan_process_frame.exit, !dbg !2464

sw.bb67.i:                                        ; preds = %if.end35.i
  %201 = load i8* %can_dlc.i, align 4, !dbg !2465, !tbaa !2119
  switch i8 %201, label %if.else77.i [
    i8 3, label %if.then76.i
    i8 7, label %if.then76.i
  ], !dbg !2465

if.then76.i:                                      ; preds = %sw.bb67.i, %sw.bb67.i
  %puts.i196.i = call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @str76, i64 0, i64 0)) #1, !dbg !2466
  %202 = load i32* %can_id.i, align 8, !dbg !2467, !tbaa !2129
  %puts.i.i198.i = call i32 @puts(i8* getelementptr inbounds ([12 x i8]* @str80, i64 0, i64 0)) #1, !dbg !2468
  %203 = load %struct.macan_config** %config.i, align 8, !dbg !2469, !tbaa !2125
  %puts.i.i.i200.i = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str73, i64 0, i64 0)) #1, !dbg !2470
  %node_count.i.i.i201.i = getelementptr inbounds %struct.macan_config* %203, i64 0, i32 2, !dbg !2471
  %204 = load i8* %node_count.i.i.i201.i, align 1, !dbg !2471, !tbaa !2119
  %cmp16.i.i.i202.i = icmp eq i8 %204, 0, !dbg !2471
  br i1 %cmp16.i.i.i202.i, label %macan_process_frame.exit, label %for.body.lr.ph.i.i.i205.i, !dbg !2471

for.body.lr.ph.i.i.i205.i:                        ; preds = %if.then76.i
  %canid.i.i.i203.i = getelementptr inbounds %struct.macan_config* %203, i64 0, i32 3, !dbg !2472
  %205 = load %struct.macan_can_ids** %canid.i.i.i203.i, align 8, !dbg !2472, !tbaa !2125
  %ecu.i.i.i204.i = getelementptr inbounds %struct.macan_can_ids* %205, i64 0, i32 1, !dbg !2472
  %206 = load %struct.macan_ecu** %ecu.i.i.i204.i, align 8, !dbg !2472, !tbaa !2125
  br label %for.body.i.i.i213.i, !dbg !2471

for.cond.i.i.i207.i:                              ; preds = %for.body.i.i.i213.i
  %cmp.i.i.i206.i = icmp ult i8 %inc.i.i.i212.i, %204, !dbg !2471
  br i1 %cmp.i.i.i206.i, label %for.body.i.i.i213.i, label %macan_process_frame.exit, !dbg !2471

for.body.i.i.i213.i:                              ; preds = %for.cond.i.i.i207.i, %for.body.lr.ph.i.i.i205.i
  %i.017.i.i.i208.i = phi i8 [ 0, %for.body.lr.ph.i.i.i205.i ], [ %inc.i.i.i212.i, %for.cond.i.i.i207.i ]
  %idxprom.i.i.i209.i = zext i8 %i.017.i.i.i208.i to i64, !dbg !2472
  %canid3.i.i.i210.i = getelementptr inbounds %struct.macan_ecu* %206, i64 %idxprom.i.i.i209.i, i32 0, !dbg !2472
  %207 = load i32* %canid3.i.i.i210.i, align 4, !dbg !2472, !tbaa !2129
  %cmp4.i.i.i211.i = icmp eq i32 %207, %202, !dbg !2472
  %inc.i.i.i212.i = add i8 %i.017.i.i.i208.i, 1, !dbg !2471
  br i1 %cmp4.i.i.i211.i, label %if.end.i.i217.i, label %for.cond.i.i.i207.i, !dbg !2472

if.end.i.i217.i:                                  ; preds = %for.body.i.i.i213.i
  %puts.i4.i.i214.i = call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str58, i64 0, i64 0)) #1, !dbg !2473
  %208 = load %struct.macan_config** %config.i, align 8, !dbg !2475, !tbaa !2125
  %node_count.i5.i.i215.i = getelementptr inbounds %struct.macan_config* %208, i64 0, i32 2, !dbg !2475
  %209 = load i8* %node_count.i5.i.i215.i, align 1, !dbg !2475, !tbaa !2119
  %cmp.i6.i.i216.i = icmp ugt i8 %209, %i.017.i.i.i208.i, !dbg !2475
  br i1 %cmp.i6.i.i216.i, label %canid2cpart.exit.i221.i, label %macan_process_frame.exit, !dbg !2475

canid2cpart.exit.i221.i:                          ; preds = %if.end.i.i217.i
  %210 = load %struct.com_part*** %28, align 8, !dbg !2476, !tbaa !2125
  %arrayidx.i.i.i219.i = getelementptr inbounds %struct.com_part** %210, i64 %idxprom.i.i.i209.i, !dbg !2476
  %211 = load %struct.com_part** %arrayidx.i.i.i219.i, align 8, !dbg !2476, !tbaa !2125
  %tobool.i220.i = icmp eq %struct.com_part* %211, null, !dbg !2467
  br i1 %tobool.i220.i, label %macan_process_frame.exit, label %if.end.i225.i, !dbg !2467

if.end.i225.i:                                    ; preds = %canid2cpart.exit.i221.i
  %212 = load i8* %arrayidx49.i, align 1, !dbg !2477, !tbaa !2119
  %conv.i222.i = zext i8 %212 to i32, !dbg !2477
  %sig_count.i223.i = getelementptr inbounds %struct.macan_config* %208, i64 0, i32 0, !dbg !2477
  %213 = load i32* %sig_count.i223.i, align 4, !dbg !2477, !tbaa !2129
  %cmp.i224.i = icmp ult i32 %conv.i222.i, %213, !dbg !2477
  br i1 %cmp.i224.i, label %if.end5.i231.i, label %macan_process_frame.exit, !dbg !2477

if.end5.i231.i:                                   ; preds = %if.end.i225.i
  %ecu_id.i226.i = getelementptr inbounds %struct.com_part* %211, i64 0, i32 7, !dbg !2478
  %214 = load i8* %ecu_id.i226.i, align 1, !dbg !2478, !tbaa !2119
  store i8 %214, i8* %arrayidx.i181.i, align 1, !dbg !2478, !tbaa !2119
  %215 = load %struct.macan_node_config** %14, align 8, !dbg !2479, !tbaa !2125
  %node_id.i229.i = getelementptr inbounds %struct.macan_node_config* %215, i64 0, i32 0, !dbg !2479
  %216 = load i8* %node_id.i229.i, align 1, !dbg !2479, !tbaa !2119
  store i8 %216, i8* %add.ptr.i182.i, align 1, !dbg !2479, !tbaa !2119
  store i8 %212, i8* %arrayidx9.i.i, align 1, !dbg !2317, !tbaa !2119
  %217 = load i8* %data63.i.i, align 2, !dbg !2319, !tbaa !2119
  store i8 %217, i8* %arrayidx10.i.i, align 1, !dbg !2319, !tbaa !2119
  %call14.i.i = call fastcc i32 @macan_check_cmac(%struct.macan_ctx* %1, i8* %cmac.i230.i, i8* %30) #1, !dbg !2320
  %tobool15.i.i = icmp eq i32 %call14.i.i, 0, !dbg !2320
  br i1 %tobool15.i.i, label %if.then16.i.i, label %if.end18.i.i, !dbg !2320

if.then16.i.i:                                    ; preds = %if.end5.i231.i
  %puts86.i.i = call i32 @puts(i8* getelementptr inbounds ([34 x i8]* @str77, i64 0, i64 0)) #1, !dbg !2480
  br label %macan_process_frame.exit, !dbg !2482

if.end18.i.i:                                     ; preds = %if.end5.i231.i
  %218 = load i8* %arrayidx49.i, align 1, !dbg !2483, !tbaa !2119
  %conv20.i.i = zext i8 %218 to i32, !dbg !2483
  call void (%struct.macan_ctx*, i32, i8*, ...)* @print_msg(%struct.macan_ctx* %1, i32 4, i8* getelementptr inbounds ([38 x i8]* @.str26, i64 0, i64 0), i32 %conv20.i.i) #1, !dbg !2483
  %219 = load i8* %arrayidx49.i, align 1, !dbg !2484, !tbaa !2119
  %idxprom.i232.i = zext i8 %219 to i64, !dbg !2321
  %220 = load %struct.sig_handle*** %33, align 8, !dbg !2321, !tbaa !2125
  %arrayidx23.i.i = getelementptr inbounds %struct.sig_handle** %220, i64 %idxprom.i232.i, !dbg !2321
  %221 = load %struct.sig_handle** %arrayidx23.i.i, align 8, !dbg !2321, !tbaa !2125
  %222 = load %struct.macan_config** %config.i, align 8, !dbg !2485, !tbaa !2125
  %sigspec.i233.i = getelementptr inbounds %struct.macan_config* %222, i64 0, i32 1, !dbg !2485
  %223 = load %struct.macan_sig_spec** %sigspec.i233.i, align 8, !dbg !2485, !tbaa !2125
  %presc.i.i = getelementptr inbounds %struct.macan_sig_spec* %223, i64 %idxprom.i232.i, i32 4, !dbg !2486
  %224 = load i8* %presc.i.i, align 1, !dbg !2486, !tbaa !2119
  %cmp40.i.i = icmp eq i8 %224, 0, !dbg !2486
  br i1 %cmp40.i.i, label %if.end43.i.i, label %macan_process_frame.exit, !dbg !2486

if.end43.i.i:                                     ; preds = %if.end18.i.i
  %can_sid27.i.i = getelementptr inbounds %struct.macan_sig_spec* %223, i64 %idxprom.i232.i, i32 1, !dbg !2485
  %225 = load i16* %can_sid27.i.i, align 2, !dbg !2485, !tbaa !2377
  %can_nsid33.i.i = getelementptr inbounds %struct.macan_sig_spec* %223, i64 %idxprom.i232.i, i32 0, !dbg !2487
  %226 = load i16* %can_nsid33.i.i, align 2, !dbg !2487, !tbaa !2377
  %cmp46.i234.i = icmp eq i16 %225, 0, !dbg !2488
  %227 = or i16 %226, %225, !dbg !2488
  %or.cond.not.i.i = icmp ne i16 %227, 0, !dbg !2488
  %cmp44.not.i.i = icmp ne i16 %226, 0, !dbg !2488
  %or.cond87.i.i = or i1 %cmp44.not.i.i, %cmp46.i234.i, !dbg !2488
  %or.cond89.i.i = and i1 %or.cond.not.i.i, %or.cond87.i.i, !dbg !2488
  br i1 %or.cond89.i.i, label %if.else.i235.i, label %if.then53.i.i, !dbg !2488

if.then53.i.i:                                    ; preds = %if.end43.i.i
  %presc54.i.i = getelementptr inbounds %struct.sig_handle* %221, i64 0, i32 0, !dbg !2489
  store i32 1, i32* %presc54.i.i, align 4, !dbg !2489, !tbaa !2129
  %presc_cnt.i.i = getelementptr inbounds %struct.sig_handle* %221, i64 0, i32 1, !dbg !2491
  store i8 0, i8* %presc_cnt.i.i, align 1, !dbg !2491, !tbaa !2119
  br label %macan_process_frame.exit, !dbg !2492

if.else.i235.i:                                   ; preds = %if.end43.i.i
  %228 = load i8* %data63.i.i, align 2, !dbg !2493, !tbaa !2119
  %conv56.i.i = zext i8 %228 to i32, !dbg !2493
  %presc57.i.i = getelementptr inbounds %struct.sig_handle* %221, i64 0, i32 0, !dbg !2493
  store i32 %conv56.i.i, i32* %presc57.i.i, align 4, !dbg !2493, !tbaa !2129
  %229 = load i8* %data63.i.i, align 2, !dbg !2495, !tbaa !2119
  %presc_cnt59.i.i = getelementptr inbounds %struct.sig_handle* %221, i64 0, i32 1, !dbg !2495
  store i8 %229, i8* %presc_cnt59.i.i, align 1, !dbg !2495, !tbaa !2119
  br label %macan_process_frame.exit

if.else77.i:                                      ; preds = %sw.bb67.i
  %puts.i237.i = call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str78, i64 0, i64 0)) #1, !dbg !2496
  %230 = load i8* %arrayidx49.i, align 1, !dbg !2497, !tbaa !2119
  %conv.i238.i = zext i8 %230 to i32, !dbg !2498
  %231 = load %struct.macan_config** %config.i, align 8, !dbg !2498, !tbaa !2125
  %sig_count.i240.i = getelementptr inbounds %struct.macan_config* %231, i64 0, i32 0, !dbg !2498
  %232 = load i32* %sig_count.i240.i, align 4, !dbg !2498, !tbaa !2129
  %cmp.i241.i = icmp ult i32 %conv.i238.i, %232, !dbg !2498
  br i1 %cmp.i241.i, label %if.end.i246.i, label %macan_process_frame.exit, !dbg !2498

if.end.i246.i:                                    ; preds = %if.else77.i
  %idxprom.i242.i = zext i8 %230 to i64, !dbg !2499
  %sigspec4.i.i = getelementptr inbounds %struct.macan_config* %231, i64 0, i32 1, !dbg !2499
  %233 = load %struct.macan_sig_spec** %sigspec4.i.i, align 8, !dbg !2499, !tbaa !2125
  %dst_id.i243.i = getelementptr inbounds %struct.macan_sig_spec* %233, i64 %idxprom.i242.i, i32 3, !dbg !2500
  %234 = load i8* %dst_id.i243.i, align 1, !dbg !2500, !tbaa !2119
  %235 = load %struct.macan_node_config** %14, align 8, !dbg !2500, !tbaa !2125
  %node_id.i245.i = getelementptr inbounds %struct.macan_node_config* %235, i64 0, i32 0, !dbg !2500
  %236 = load i8* %node_id.i245.i, align 1, !dbg !2500, !tbaa !2119
  %cmp7.i.i = icmp eq i8 %234, %236, !dbg !2500
  br i1 %cmp7.i.i, label %append.exit52.i.i, label %macan_process_frame.exit, !dbg !2500

append.exit52.i.i:                                ; preds = %if.end.i246.i
  %sig_val.0.copyload.i249.i = load i16* %sig_val.0.cast.i248.i, align 2, !dbg !2306
  %sig_val.0.insert.ext.i.i = zext i16 %sig_val.0.copyload.i249.i to i32, !dbg !2306
  %puts.i.i250.i = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str85, i64 0, i64 0)) #1, !dbg !2501
  store i32 0, i32* %dummy_time.0.cast.i251.i, align 4, !dbg !2307
  %src_id.i.i = getelementptr inbounds %struct.macan_sig_spec* %233, i64 %idxprom.i242.i, i32 2, !dbg !2310
  %puts.i33.i.i = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str85, i64 0, i64 0)) #1, !dbg !2502
  %237 = load i8* %src_id.i.i, align 1, !dbg !2309
  store i8 %237, i8* %add.ptr.i35.i.i, align 4, !dbg !2309
  %238 = load %struct.macan_node_config** %14, align 8, !dbg !2312, !tbaa !2125
  %node_id18.i.i = getelementptr inbounds %struct.macan_node_config* %238, i64 0, i32 0, !dbg !2312
  %puts.i38.i.i = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str85, i64 0, i64 0)) #1, !dbg !2503
  %239 = load i8* %node_id18.i.i, align 1, !dbg !2311
  store i8 %239, i8* %add.ptr.i40.i.i, align 1, !dbg !2311
  %puts.i43.i.i = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str85, i64 0, i64 0)) #1, !dbg !2504
  store i8 %230, i8* %add.ptr.i45.i.i, align 2, !dbg !2313
  %puts.i48.i.i = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str85, i64 0, i64 0)) #1, !dbg !2505
  %240 = load i16* %sig_val.0.cast.i248.i, align 2, !dbg !2315
  store i16 %240, i16* %32, align 1, !dbg !2315
  call fastcc void @__receive_sig(%struct.macan_ctx* %1, i32 %conv.i238.i, i32 %sig_val.0.insert.ext.i.i, i8* %cmac.i184.i, i8* %31) #1, !dbg !2506
  br label %macan_process_frame.exit, !dbg !2506

macan_process_frame.exit:                         ; preds = %for.body.i.i11.i, %for.cond.i.i.i.i, %for.cond.i.i.i207.i, %for.cond.i.i, %if.end35.i, %while.body, %if.then6.i, %receive_time_nonauth.exit.i, %sw.bb7.i, %send_acks.exit.i.i, %if.end8.i, %if.th
  call void @klee_make_symbolic(i8* %2, i32 16, i8* getelementptr inbounds ([19 x i8]* @.str146, i64 0, i64 0)) #1, !dbg !2258
  %241 = load i32* @macan_read.counter, align 4, !dbg !2260, !tbaa !2129
  %242 = sext i32 %241 to i64
  %243 = add i64 %242, 1
  %244 = icmp slt i64 %243, -2147483648
  %245 = icmp sgt i64 %243, 2147483647
  %246 = or i1 %245, %244
  %247 = trunc i64 %243 to i32
  %248 = insertvalue { i32, i1 } undef, i32 %247, 0
  %249 = insertvalue { i32, i1 } %248, i1 %246, 1
  %sadd.result.i2 = extractvalue { i32, i1 } %249, 0
  %250 = extractvalue { i32, i1 } %249, 1
  br i1 %250, label %handler.add_overflow.i3, label %macan_read.exit6, !dbg !2260, !prof !2156

handler.add_overflow.i3:                          ; preds = %macan_process_frame.exit
  %251 = zext i32 %241 to i64, !dbg !2260
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [6 x i8] }* }* @32 to i8*), i64 %251, i64 1) #1, !dbg !2260
  br label %macan_read.exit6, !dbg !2260

macan_read.exit6:                                 ; preds = %macan_process_frame.exit, %handler.add_overflow.i3
  call void @klee_div_zero_check(i64 10) #1, !dbg !2261
  %rem.i4 = srem i32 %sadd.result.i2, 10, !dbg !2261
  store i32 %rem.i4, i32* @macan_read.counter, align 4, !dbg !2261, !tbaa !2129
  %cmp.i5 = icmp eq i32 %rem.i4, 0, !dbg !2262
  br i1 %cmp.i5, label %while.end, label %while.body, !dbg !2259

while.end:                                        ; preds = %macan_read.exit6, %macan_read.exit
  ret void, !dbg !2507
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @__receive_sig(%struct.macan_ctx* %ctx, i32 %sig_num, i32 %sig_val, i8* nocapture %cmac, i8* %fill_time) #0 {
entry:
  %puts = call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str86, i64 0, i64 0)), !dbg !2508
  %idxprom = zext i32 %sig_num to i64, !dbg !2509
  %config = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 0, !dbg !2509
  %0 = load %struct.macan_config** %config, align 8, !dbg !2509, !tbaa !2125
  %sigspec1 = getelementptr inbounds %struct.macan_config* %0, i64 0, i32 1, !dbg !2509
  %1 = load %struct.macan_sig_spec** %sigspec1, align 8, !dbg !2509, !tbaa !2125
  %sighand3 = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 3, !dbg !2510
  %2 = load %struct.sig_handle*** %sighand3, align 8, !dbg !2510, !tbaa !2125
  %arrayidx4 = getelementptr inbounds %struct.sig_handle** %2, i64 %idxprom, !dbg !2510
  %3 = load %struct.sig_handle** %arrayidx4, align 8, !dbg !2510, !tbaa !2125
  %src_id = getelementptr inbounds %struct.macan_sig_spec* %1, i64 %idxprom, i32 2, !dbg !2511
  %4 = load i8* %src_id, align 1, !dbg !2511, !tbaa !2119
  %call5 = call fastcc zeroext i1 @is_skey_ready(%struct.macan_ctx* %ctx, i8 zeroext %4), !dbg !2511
  %5 = load i8* %src_id, align 1, !dbg !2512, !tbaa !2119
  br i1 %call5, label %if.end, label %if.then, !dbg !2511

if.then:                                          ; preds = %entry
  %conv = zext i8 %5 to i32, !dbg !2513
  call void (%struct.macan_ctx*, i32, i8*, ...)* @print_msg(%struct.macan_ctx* %ctx, i32 2, i8* getelementptr inbounds ([49 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8]* @17, i64 0, i64 0), i32 804, i8* getelementptr inbounds ([14
  br label %if.end28, !dbg !2515

if.end:                                           ; preds = %entry
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str58, i64 0, i64 0)) #1, !dbg !2516
  %6 = load %struct.macan_config** %config, align 8, !dbg !2517, !tbaa !2125
  %node_count.i = getelementptr inbounds %struct.macan_config* %6, i64 0, i32 2, !dbg !2517
  %7 = load i8* %node_count.i, align 1, !dbg !2517, !tbaa !2119
  %cmp.i = icmp ugt i8 %7, %5, !dbg !2517
  br i1 %cmp.i, label %get_cpart.exit, label %if.end28, !dbg !2517

get_cpart.exit:                                   ; preds = %if.end
  %idxprom.i = zext i8 %5 to i64, !dbg !2518
  %cpart.i = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 2, !dbg !2518
  %8 = load %struct.com_part*** %cpart.i, align 8, !dbg !2518, !tbaa !2125
  %arrayidx.i = getelementptr inbounds %struct.com_part** %8, i64 %idxprom.i, !dbg !2518
  %9 = load %struct.com_part** %arrayidx.i, align 8, !dbg !2518, !tbaa !2125
  %tobool = icmp eq %struct.com_part* %9, null, !dbg !2519
  br i1 %tobool, label %if.end28, label %if.end10, !dbg !2519

if.end10:                                         ; preds = %get_cpart.exit
  %call12 = call fastcc i32 @macan_check_cmac(%struct.macan_ctx* %ctx, i8* %cmac, i8* %fill_time) #1, !dbg !2520
  %tobool13 = icmp eq i32 %call12, 0, !dbg !2520
  br i1 %tobool13, label %if.then14, label %if.end21, !dbg !2520

if.then14:                                        ; preds = %if.end10
  %tobool15 = icmp eq %struct.sig_handle* %3, null, !dbg !2521
  br i1 %tobool15, label %if.else, label %land.lhs.true, !dbg !2521

land.lhs.true:                                    ; preds = %if.then14
  %invalid_cback = getelementptr inbounds %struct.sig_handle* %3, i64 0, i32 4, !dbg !2521
  %10 = load void (i8, i32)** %invalid_cback, align 8, !dbg !2521, !tbaa !2125
  %tobool16 = icmp eq void (i8, i32)* %10, null, !dbg !2521
  br i1 %tobool16, label %if.else, label %if.then17, !dbg !2521

if.then17:                                        ; preds = %land.lhs.true
  %conv19 = trunc i32 %sig_num to i8, !dbg !2523
  call void %10(i8 zeroext %conv19, i32 %sig_val) #1, !dbg !2523
  br label %if.end28, !dbg !2523

if.else:                                          ; preds = %land.lhs.true, %if.then14
  call void (%struct.macan_ctx*, i32, i8*, ...)* @print_msg(%struct.macan_ctx* %ctx, i32 2, i8* getelementptr inbounds ([40 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8]* @17, i64 0, i64 0), i32 817, i8* getelementptr inbounds ([14
  br label %if.end28

if.end21:                                         ; preds = %if.end10
  call void (%struct.macan_ctx*, i32, i8*, ...)* @print_msg(%struct.macan_ctx* %ctx, i32 5, i8* getelementptr inbounds ([32 x i8]* @.str22, i64 0, i64 0), i32 %sig_num, i32 %sig_val) #1, !dbg !2525
  %tobool22 = icmp eq %struct.sig_handle* %3, null, !dbg !2526
  br i1 %tobool22, label %if.end28, label %land.lhs.true23, !dbg !2526

land.lhs.true23:                                  ; preds = %if.end21
  %cback = getelementptr inbounds %struct.sig_handle* %3, i64 0, i32 3, !dbg !2526
  %11 = load void (i8, i32)** %cback, align 8, !dbg !2526, !tbaa !2125
  %tobool24 = icmp eq void (i8, i32)* %11, null, !dbg !2526
  br i1 %tobool24, label %if.end28, label %if.then25, !dbg !2526

if.then25:                                        ; preds = %land.lhs.true23
  %conv27 = trunc i32 %sig_num to i8, !dbg !2527
  call void %11(i8 zeroext %conv27, i32 %sig_val) #1, !dbg !2527
  br label %if.end28, !dbg !2527

if.end28:                                         ; preds = %if.then25, %land.lhs.true23, %if.end21, %if.else, %if.then17, %get_cpart.exit, %if.end, %if.then
  ret void, !dbg !2527
}

; Function Attrs: nounwind uwtable
define internal fastcc void @send_ack(%struct.macan_ctx* nocapture %ctx, i8 zeroext %dst_id) #0 {
entry:
  %time.i = alloca i64, align 8
  %puts = call i32 @puts(i8* getelementptr inbounds ([9 x i8]* @str87, i64 0, i64 0)), !dbg !2528
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str58, i64 0, i64 0)) #1, !dbg !2529
  %config.i = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 0, !dbg !2531
  %0 = load %struct.macan_config** %config.i, align 8, !dbg !2531, !tbaa !2125
  %node_count.i = getelementptr inbounds %struct.macan_config* %0, i64 0, i32 2, !dbg !2531
  %1 = load i8* %node_count.i, align 1, !dbg !2531, !tbaa !2119
  %cmp.i = icmp ugt i8 %1, %dst_id, !dbg !2531
  br i1 %cmp.i, label %get_cpart.exit, label %return, !dbg !2531

get_cpart.exit:                                   ; preds = %entry
  %idxprom.i = zext i8 %dst_id to i64, !dbg !2532
  %cpart.i = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 2, !dbg !2532
  %2 = load %struct.com_part*** %cpart.i, align 8, !dbg !2532, !tbaa !2125
  %arrayidx.i = getelementptr inbounds %struct.com_part** %2, i64 %idxprom.i, !dbg !2532
  %3 = load %struct.com_part** %arrayidx.i, align 8, !dbg !2532, !tbaa !2125
  %tobool = icmp eq %struct.com_part* %3, null, !dbg !2533
  br i1 %tobool, label %return, label %lor.lhs.false, !dbg !2533

lor.lhs.false:                                    ; preds = %get_cpart.exit
  %call12 = call fastcc zeroext i1 @is_skey_ready(%struct.macan_ctx* %ctx, i8 zeroext %dst_id), !dbg !2534
  br i1 %call12, label %lor.lhs.false13, label %return, !dbg !2534

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %ready = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 4, i32 5, !dbg !2534
  %4 = load i8* %ready, align 1, !dbg !2534, !tbaa !2227, !range !2228
  %tobool14 = icmp eq i8 %4, 0, !dbg !2534
  br i1 %tobool14, label %return, label %if.end, !dbg !2534

if.end:                                           ; preds = %lor.lhs.false13
  %puts.i40 = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str66, i64 0, i64 0)) #1, !dbg !2535
  %5 = bitcast i64* %time.i to i8*, !dbg !2537
  call void @klee_make_symbolic(i8* %5, i32 8, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #1, !dbg !2537
  %6 = load i64* %time.i, align 8, !dbg !2539, !tbaa !2181
  %offs.i = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 4, i32 0, !dbg !2538
  %7 = load i64* %offs.i, align 8, !dbg !2538, !tbaa !2181
  %8 = zext i64 %6 to i128
  %9 = zext i64 %7 to i128
  %10 = add i128 %9, %8
  %11 = icmp ugt i128 %10, 18446744073709551615
  %12 = trunc i128 %10 to i64
  br i1 %11, label %handler.add_overflow.i, label %cont.i, !dbg !2538, !prof !2156

handler.add_overflow.i:                           ; preds = %if.end
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [16 x i8] }* }* @2 to i8*), i64 %6, i64 %7) #1, !dbg !2538
  br label %cont.i, !dbg !2538

cont.i:                                           ; preds = %handler.add_overflow.i, %if.end
  %13 = load %struct.macan_config** %config.i, align 8, !dbg !2538, !tbaa !2125
  %time_div.i = getelementptr inbounds %struct.macan_config* %13, i64 0, i32 6, !dbg !2538
  %14 = load i32* %time_div.i, align 4, !dbg !2538, !tbaa !2129
  %conv.i = zext i32 %14 to i64, !dbg !2538
  %15 = icmp eq i32 %14, 0, !dbg !2538
  br i1 %15, label %handler.divrem_overflow.i, label %cond.end, !dbg !2538, !prof !2156

handler.divrem_overflow.i:                        ; preds = %cont.i
  call void @__ubsan_handle_divrem_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [16 x i8] }* }* @3 to i8*), i64 %12, i64 %conv.i) #1, !dbg !2538
  br label %cond.end, !dbg !2538

cond.end:                                         ; preds = %handler.divrem_overflow.i, %cont.i
  call void @klee_div_zero_check(i64 %conv.i) #1, !dbg !2538
  %puts.i42 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str85, i64 0, i64 0)) #1, !dbg !2540
  %puts.i45 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str85, i64 0, i64 0)) #1, !dbg !2542
  %puts.i51 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str85, i64 0, i64 0)) #1, !dbg !2544
  %puts.i1 = call i32 @puts(i8* getelementptr inbounds ([11 x i8]* @str11, i64 0, i64 0)) #1, !dbg !2546
  %puts.i.i = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str38, i64 0, i64 0)) #1, !dbg !2548
  br label %return, !dbg !2550

return:                                           ; preds = %cond.end, %lor.lhs.false13, %lor.lhs.false, %get_cpart.exit, %entry
  ret void, !dbg !2551
}

; Function Attrs: nounwind uwtable
define internal fastcc void @request_signals(%struct.macan_ctx* %ctx) #0 {
entry:
  %time.i = alloca i64, align 8
  %puts = call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @str88, i64 0, i64 0)), !dbg !2552
  %ready = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 4, i32 5, !dbg !2553
  %0 = load i8* %ready, align 1, !dbg !2553, !tbaa !2227, !range !2228
  %tobool = icmp eq i8 %0, 0, !dbg !2553
  br i1 %tobool, label %for.end, label %for.cond.preheader, !dbg !2553

for.cond.preheader:                               ; preds = %entry
  %config = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 0, !dbg !2554
  %1 = load %struct.macan_config** %config, align 8, !dbg !2554, !tbaa !2125
  %sig_count51 = getelementptr inbounds %struct.macan_config* %1, i64 0, i32 0, !dbg !2554
  %2 = load i32* %sig_count51, align 4, !dbg !2554, !tbaa !2129
  %cmp52 = icmp eq i32 %2, 0, !dbg !2554
  br i1 %cmp52, label %for.end, label %for.body.lr.ph, !dbg !2554

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sighand5 = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 3, !dbg !2555
  %node = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 1, !dbg !2556
  %cpart.i.i = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 2, !dbg !2557
  %offs.i.i = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 4, i32 0, !dbg !2560
  %3 = bitcast i64* %time.i to i8*, !dbg !2564
  br label %for.body, !dbg !2554

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %4 = phi %struct.macan_config* [ %1, %for.body.lr.ph ], [ %32, %for.inc ]
  %conv55 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %for.inc ]
  %i.053 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %idxprom = zext i8 %i.053 to i64, !dbg !2565
  %sigspec3 = getelementptr inbounds %struct.macan_config* %4, i64 0, i32 1, !dbg !2565
  %5 = load %struct.macan_sig_spec** %sigspec3, align 8, !dbg !2565, !tbaa !2125
  %6 = load %struct.sig_handle*** %sighand5, align 8, !dbg !2555, !tbaa !2125
  %arrayidx6 = getelementptr inbounds %struct.sig_handle** %6, i64 %idxprom, !dbg !2555
  %7 = load %struct.sig_handle** %arrayidx6, align 8, !dbg !2555, !tbaa !2125
  %dst_id = getelementptr inbounds %struct.macan_sig_spec* %5, i64 %idxprom, i32 3, !dbg !2556
  %8 = load i8* %dst_id, align 1, !dbg !2556, !tbaa !2119
  %9 = load %struct.macan_node_config** %node, align 8, !dbg !2556, !tbaa !2125
  %node_id = getelementptr inbounds %struct.macan_node_config* %9, i64 0, i32 0, !dbg !2556
  %10 = load i8* %node_id, align 1, !dbg !2556, !tbaa !2119
  %cmp9 = icmp eq i8 %8, %10, !dbg !2556
  br i1 %cmp9, label %lor.lhs.false, label %for.inc, !dbg !2556

lor.lhs.false:                                    ; preds = %for.body
  %src_id = getelementptr inbounds %struct.macan_sig_spec* %5, i64 %idxprom, i32 2, !dbg !2559
  %11 = load i8* %src_id, align 1, !dbg !2559, !tbaa !2119
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @str90, i64 0, i64 0)) #1, !dbg !2566
  %puts13.i = call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @str90, i64 0, i64 0)) #1, !dbg !2567
  %puts.i.i = call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str58, i64 0, i64 0)) #1, !dbg !2568
  %12 = load %struct.macan_config** %config, align 8, !dbg !2569, !tbaa !2125
  %node_count.i.i = getelementptr inbounds %struct.macan_config* %12, i64 0, i32 2, !dbg !2569
  %13 = load i8* %node_count.i.i, align 1, !dbg !2569, !tbaa !2119
  %cmp.i.i = icmp ugt i8 %13, %11, !dbg !2569
  br i1 %cmp.i.i, label %get_cpart.exit.i, label %for.inc, !dbg !2569

get_cpart.exit.i:                                 ; preds = %lor.lhs.false
  %idxprom.i.i = zext i8 %11 to i64, !dbg !2557
  %14 = load %struct.com_part*** %cpart.i.i, align 8, !dbg !2557, !tbaa !2125
  %arrayidx.i.i = getelementptr inbounds %struct.com_part** %14, i64 %idxprom.i.i, !dbg !2557
  %15 = load %struct.com_part** %arrayidx.i.i, align 8, !dbg !2557, !tbaa !2125
  %cmp.i = icmp eq %struct.com_part* %15, null, !dbg !2570
  br i1 %cmp.i, label %for.inc, label %if.end.i, !dbg !2570

if.end.i:                                         ; preds = %get_cpart.exit.i
  %conv.i = zext i8 %11 to i32, !dbg !2571
  %16 = icmp ult i8 %11, 32, !dbg !2571
  br i1 %16, label %cont.i, label %handler.shift_out_of_bounds.i, !dbg !2571, !prof !2222

handler.shift_out_of_bounds.i:                    ; preds = %if.end.i
  call void @__ubsan_handle_shift_out_of_bounds(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [15 x i8] }*, { i16, i16, [6 x i8] }* }* @6 to i8*), i64 1, i64 %idxprom.i.i) #1, !dbg !2571
  br label %cont.i, !dbg !2571

cont.i:                                           ; preds = %handler.shift_out_of_bounds.i, %if.end.i
  call void @klee_overshift_check(i64 32, i64 %idxprom.i.i) #1, !dbg !2571
  %shl.i = shl i32 1, %conv.i, !dbg !2571
  %17 = load %struct.macan_node_config** %node, align 8, !dbg !2571, !tbaa !2125
  %node_id.i = getelementptr inbounds %struct.macan_node_config* %17, i64 0, i32 0, !dbg !2571
  %18 = load i8* %node_id.i, align 1, !dbg !2571, !tbaa !2119
  %conv3.i = zext i8 %18 to i32, !dbg !2571
  %19 = icmp ult i8 %18, 32, !dbg !2571
  %int_cast_to_i642.pre = zext i8 %18 to i64
  br i1 %19, label %is_channel_ready.exit, label %handler.shift_out_of_bounds4.i, !dbg !2571, !prof !2222

handler.shift_out_of_bounds4.i:                   ; preds = %cont.i
  call void @__ubsan_handle_shift_out_of_bounds(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [15 x i8] }*, { i16, i16, [6 x i8] }* }* @7 to i8*), i64 1, i64 %int_cast_to_i642.pre) #1, !dbg !2571
  br label %is_channel_ready.exit, !dbg !2571

is_channel_ready.exit:                            ; preds = %cont.i, %handler.shift_out_of_bounds4.i
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i642.pre) #1, !dbg !2571
  %shl6.i = shl i32 1, %conv3.i, !dbg !2571
  %or.i = or i32 %shl6.i, %shl.i, !dbg !2571
  %group_field.i = getelementptr inbounds %struct.com_part* %15, i64 0, i32 6, !dbg !2572
  %20 = load i32* %group_field.i, align 4, !dbg !2572, !tbaa !2129
  %and.i = and i32 %20, %or.i, !dbg !2572
  %cmp7.i = icmp eq i32 %and.i, %or.i, !dbg !2572
  br i1 %cmp7.i, label %if.end13, label %for.inc, !dbg !2559

if.end13:                                         ; preds = %is_channel_ready.exit
  %flags = getelementptr inbounds %struct.sig_handle* %7, i64 0, i32 2, !dbg !2573
  %21 = load i8* %flags, align 1, !dbg !2573, !tbaa !2119
  %and = and i8 %21, 1, !dbg !2573
  %tobool15 = icmp eq i8 %and, 0, !dbg !2573
  br i1 %tobool15, label %if.then16, label %for.inc, !dbg !2573

if.then16:                                        ; preds = %if.end13
  %or = or i8 %21, 1, !dbg !2574
  store i8 %or, i8* %flags, align 1, !dbg !2574, !tbaa !2119
  call void (%struct.macan_ctx*, i32, i8*, ...)* @print_msg(%struct.macan_ctx* %ctx, i32 3, i8* getelementptr inbounds ([33 x i8]* @.str31, i64 0, i64 0), i32 %conv55) #1, !dbg !2575
  %puts.i39 = call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str91, i64 0, i64 0)) #1, !dbg !2576
  %puts.i.i40 = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str66, i64 0, i64 0)) #1, !dbg !2577
  call void @klee_make_symbolic(i8* %3, i32 8, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #1, !dbg !2564
  %22 = load i64* %time.i, align 8, !dbg !2578, !tbaa !2181
  %23 = load i64* %offs.i.i, align 8, !dbg !2560, !tbaa !2181
  %24 = zext i64 %22 to i128
  %25 = zext i64 %23 to i128
  %26 = add i128 %25, %24
  %27 = icmp ugt i128 %26, 18446744073709551615
  %28 = trunc i128 %26 to i64
  br i1 %27, label %handler.add_overflow.i.i, label %cont.i.i, !dbg !2560, !prof !2156

handler.add_overflow.i.i:                         ; preds = %if.then16
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [16 x i8] }* }* @2 to i8*), i64 %22, i64 %23) #1, !dbg !2560
  br label %cont.i.i, !dbg !2560

cont.i.i:                                         ; preds = %handler.add_overflow.i.i, %if.then16
  %29 = load %struct.macan_config** %config, align 8, !dbg !2560, !tbaa !2125
  %time_div.i.i = getelementptr inbounds %struct.macan_config* %29, i64 0, i32 6, !dbg !2560
  %30 = load i32* %time_div.i.i, align 4, !dbg !2560, !tbaa !2129
  %conv.i.i = zext i32 %30 to i64, !dbg !2560
  %31 = icmp eq i32 %30, 0, !dbg !2560
  br i1 %31, label %handler.divrem_overflow.i.i, label %macan_get_time.exit.i, !dbg !2560, !prof !2156

handler.divrem_overflow.i.i:                      ; preds = %cont.i.i
  call void @__ubsan_handle_divrem_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [16 x i8] }* }* @3 to i8*), i64 %28, i64 %conv.i.i) #1, !dbg !2560
  br label %macan_get_time.exit.i, !dbg !2560

macan_get_time.exit.i:                            ; preds = %handler.divrem_overflow.i.i, %cont.i.i
  call void @klee_div_zero_check(i64 %conv.i.i) #1, !dbg !2560
  %puts.i25.i = call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str58, i64 0, i64 0)) #1, !dbg !2579
  %puts.i3 = call i32 @puts(i8* getelementptr inbounds ([11 x i8]* @str11, i64 0, i64 0)) #1, !dbg !2581
  %puts.i.i4 = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str38, i64 0, i64 0)) #1, !dbg !2583
  br label %for.inc, !dbg !2585

for.inc:                                          ; preds = %macan_get_time.exit.i, %if.end13, %is_channel_ready.exit, %get_cpart.exit.i, %lor.lhs.false, %for.body
  %inc = add i8 %i.053, 1, !dbg !2554
  %conv = zext i8 %inc to i32, !dbg !2554
  %32 = load %struct.macan_config** %config, align 8, !dbg !2554, !tbaa !2125
  %sig_count = getelementptr inbounds %struct.macan_config* %32, i64 0, i32 0, !dbg !2554
  %33 = load i32* %sig_count, align 4, !dbg !2554, !tbaa !2129
  %cmp = icmp ult i32 %conv, %33, !dbg !2554
  br i1 %cmp, label %for.body, label %for.end, !dbg !2554

for.end:                                          ; preds = %for.inc, %for.cond.preheader, %entry
  ret void, !dbg !2586
}

; Function Attrs: uwtable
declare void @__ubsan_handle_mul_overflow(i8*, i64, i64) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @request_time_auth(%struct.macan_ctx* %ctx) #0 {
entry:
  %time.i1 = alloca i64, align 8
  %time.i = alloca i64, align 8
  %puts = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str92, i64 0, i64 0)), !dbg !2587
  %config = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 0, !dbg !2588
  %0 = load %struct.macan_config** %config, align 8, !dbg !2588, !tbaa !2125
  %time_server_id = getelementptr inbounds %struct.macan_config* %0, i64 0, i32 5, !dbg !2588
  %1 = load i8* %time_server_id, align 1, !dbg !2588, !tbaa !2119
  %node = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 1, !dbg !2589
  %2 = load %struct.macan_node_config** %node, align 8, !dbg !2589, !tbaa !2125
  %node_id = getelementptr inbounds %struct.macan_node_config* %2, i64 0, i32 0, !dbg !2589
  %3 = load i8* %node_id, align 1, !dbg !2589, !tbaa !2119
  %cmp = icmp eq i8 %3, %1, !dbg !2589
  br i1 %cmp, label %if.end26, label %lor.lhs.false, !dbg !2589

lor.lhs.false:                                    ; preds = %entry
  %call3 = call fastcc zeroext i1 @is_skey_ready(%struct.macan_ctx* %ctx, i8 zeroext %1), !dbg !2590
  br i1 %call3, label %lor.lhs.false4, label %if.end26, !dbg !2590

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %nonauth_loc = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 4, i32 2, !dbg !2590
  %4 = load i64* %nonauth_loc, align 8, !dbg !2590, !tbaa !2181
  %cmp5 = icmp eq i64 %4, 0, !dbg !2590
  br i1 %cmp5, label %if.end26, label %if.end, !dbg !2590

if.end:                                           ; preds = %lor.lhs.false4
  %5 = bitcast i64* %time.i to i8*, !dbg !2591
  call void @klee_make_symbolic(i8* %5, i32 8, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #1, !dbg !2591
  %6 = load i64* %time.i, align 8, !dbg !2593, !tbaa !2181
  %chal_ts = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 4, i32 3, !dbg !2592
  %7 = load i64* %chal_ts, align 8, !dbg !2592, !tbaa !2181
  %8 = zext i64 %6 to i128
  %9 = zext i64 %7 to i128
  %10 = sub i128 %8, %9
  %11 = icmp ugt i128 %10, 18446744073709551615
  %12 = trunc i128 %10 to i64
  br i1 %11, label %handler.sub_overflow, label %cont, !dbg !2592, !prof !2156

handler.sub_overflow:                             ; preds = %if.end
  call void @__ubsan_handle_sub_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [16 x i8] }* }* @10 to i8*), i64 %6, i64 %7) #1, !dbg !2592
  br label %cont, !dbg !2592

cont:                                             ; preds = %handler.sub_overflow, %if.end
  %13 = load %struct.macan_config** %config, align 8, !dbg !2592, !tbaa !2125
  %time_timeout = getelementptr inbounds %struct.macan_config* %13, i64 0, i32 9, !dbg !2592
  %14 = load i32* %time_timeout, align 4, !dbg !2592, !tbaa !2129
  %conv10 = zext i32 %14 to i64, !dbg !2592
  %cmp11 = icmp ugt i64 %12, %conv10, !dbg !2592
  br i1 %cmp11, label %if.then18, label %lor.lhs.false13, !dbg !2592

lor.lhs.false13:                                  ; preds = %cont
  %15 = load i64* %chal_ts, align 8, !dbg !2592, !tbaa !2181
  %cmp16 = icmp eq i64 %15, 0, !dbg !2592
  br i1 %cmp16, label %if.then18, label %if.end26, !dbg !2592

if.then18:                                        ; preds = %lor.lhs.false13, %cont
  call void (%struct.macan_ctx*, i32, i8*, ...)* @print_msg(%struct.macan_ctx* %ctx, i32 3, i8* getelementptr inbounds ([32 x i8]* @.str42, i64 0, i64 0)) #1, !dbg !2594
  %16 = bitcast i64* %time.i1 to i8*, !dbg !2596
  call void @klee_make_symbolic(i8* %16, i32 8, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #1, !dbg !2596
  %17 = load i64* %time.i1, align 8, !dbg !2598, !tbaa !2181
  store i64 %17, i64* %chal_ts, align 8, !dbg !2597, !tbaa !2181
  %arraydecay = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 4, i32 4, i64 0, !dbg !2599
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str63, i64 0, i64 0)) #1, !dbg !2600
  %18 = call i8* @memset(i8* %arraydecay, i32 0, i64 6)
  %puts.i41 = call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @str64, i64 0, i64 0)) #1, !dbg !2601
  br label %if.end26, !dbg !2603

if.end26:                                         ; preds = %if.then18, %lor.lhs.false13, %lor.lhs.false4, %lor.lhs.false, %entry
  ret void, !dbg !2604
}

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(i8*, i64, i64) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture, ...) #4

; Function Attrs: nounwind uwtable
define internal void @print_msg(%struct.macan_ctx* %ctx, i32 %type, i8* nocapture %format, ...) #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %nodestr = alloca i32, align 4, !dbg !2605
  %msg_type_strings = alloca [6 x i8*], align 16
  store i32 4144931, i32* %nodestr, align 4, !dbg !2605
  %0 = bitcast [6 x i8*]* %msg_type_strings to i8*, !dbg !2606
  %1 = call i8* @memset(i8* %0, i32 0, i64 48)
  %2 = getelementptr [6 x i8*]* %msg_type_strings, i64 0, i64 0, !dbg !2606
  store i8* getelementptr inbounds ([18 x i8]* @.str8, i64 0, i64 0), i8** %2, align 16, !dbg !2606
  %3 = getelementptr [6 x i8*]* %msg_type_strings, i64 0, i64 1, !dbg !2606
  store i8* getelementptr inbounds ([18 x i8]* @.str9, i64 0, i64 0), i8** %3, align 8, !dbg !2606
  %4 = getelementptr [6 x i8*]* %msg_type_strings, i64 0, i64 2, !dbg !2606
  store i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i8** %4, align 16, !dbg !2606
  %5 = getelementptr [6 x i8*]* %msg_type_strings, i64 0, i64 3, !dbg !2606
  store i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0), i8** %5, align 8, !dbg !2606
  %6 = getelementptr [6 x i8*]* %msg_type_strings, i64 0, i64 4, !dbg !2606
  store i8* getelementptr inbounds ([18 x i8]* @.str12, i64 0, i64 0), i8** %6, align 16, !dbg !2606
  %7 = getelementptr [6 x i8*]* %msg_type_strings, i64 0, i64 5, !dbg !2606
  store i8* getelementptr inbounds ([18 x i8]* @.str13, i64 0, i64 0), i8** %7, align 8, !dbg !2606
  %tobool = icmp eq %struct.macan_ctx* %ctx, null, !dbg !2607
  br i1 %tobool, label %if.end14, label %land.lhs.true, !dbg !2607

land.lhs.true:                                    ; preds = %entry
  %print_msg_enabled = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 11, !dbg !2607
  %8 = load i8* %print_msg_enabled, align 1, !dbg !2607, !tbaa !2227, !range !2228
  %tobool1 = icmp eq i8 %8, 0, !dbg !2607
  br i1 %tobool1, label %cleanup, label %land.lhs.true3, !dbg !2607

land.lhs.true3:                                   ; preds = %land.lhs.true
  %config = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 0, !dbg !2608
  %9 = load %struct.macan_config** %config, align 8, !dbg !2608, !tbaa !2125
  %tobool4 = icmp eq %struct.macan_config* %9, null, !dbg !2608
  br i1 %tobool4, label %if.end14, label %if.then5, !dbg !2608

if.then5:                                         ; preds = %land.lhs.true3
  %node = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 1, !dbg !2609
  %10 = load %struct.macan_node_config** %node, align 8, !dbg !2609, !tbaa !2125
  %node_id = getelementptr inbounds %struct.macan_node_config* %10, i64 0, i32 0, !dbg !2609
  %11 = load i8* %node_id, align 1, !dbg !2609, !tbaa !2119
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str62, i64 0, i64 0)) #1, !dbg !2610
  %idxprom.i = zext i8 %11 to i64, !dbg !2611
  %12 = load %struct.macan_config** %config, align 8, !dbg !2611, !tbaa !2125
  %canid.i = getelementptr inbounds %struct.macan_config* %12, i64 0, i32 3, !dbg !2611
  %13 = load %struct.macan_can_ids** %canid.i, align 8, !dbg !2611, !tbaa !2125
  %ecu.i = getelementptr inbounds %struct.macan_can_ids* %13, i64 0, i32 1, !dbg !2611
  %14 = load %struct.macan_ecu** %ecu.i, align 8, !dbg !2611, !tbaa !2125
  %name.i = getelementptr inbounds %struct.macan_ecu* %14, i64 %idxprom.i, i32 1, !dbg !2611
  %15 = load i8** %name.i, align 8, !dbg !2611, !tbaa !2125
  %tobool6 = icmp eq i8* %15, null, !dbg !2612
  %arraydecay = bitcast i32* %nodestr to i8*, !dbg !2613
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !2612

if.then7:                                         ; preds = %if.then5
  %call8 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %arraydecay, i64 4, i8* getelementptr inbounds ([5 x i8]* @.str1420, i64 0, i64 0), i8* %15) #1, !dbg !2613
  br label %if.end14, !dbg !2613

if.else:                                          ; preds = %if.then5
  %16 = load %struct.macan_node_config** %node, align 8, !dbg !2614, !tbaa !2125
  %node_id11 = getelementptr inbounds %struct.macan_node_config* %16, i64 0, i32 0, !dbg !2614
  %17 = load i8* %node_id11, align 1, !dbg !2614, !tbaa !2119
  %conv = zext i8 %17 to i32, !dbg !2614
  %call12 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %arraydecay, i64 4, i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i32 %conv) #1, !dbg !2614
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then7, %land.lhs.true3, %entry
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !2615
  %arraydecay1516 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2615
  call void @llvm.va_start(i8* %arraydecay1516), !dbg !2615
  %idxprom = zext i32 %type to i64, !dbg !2616
  %arrayidx = getelementptr inbounds [6 x i8*]* %msg_type_strings, i64 0, i64 %idxprom, !dbg !2616
  %18 = load i8** %arrayidx, align 8, !dbg !2616, !tbaa !2125
  %call18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str1621, i64 0, i64 0), i8* %18, i32* %nodestr) #1, !dbg !2616
  %19 = load %struct._IO_FILE** @stdout, align 8, !dbg !2617, !tbaa !2125
  %call.i = call i32 @vfprintf(%struct._IO_FILE* %19, i8* %format, %struct.__va_list_tag* %arraydecay15) #1, !dbg !2617
  br label %cleanup, !dbg !2619

cleanup:                                          ; preds = %if.end14, %land.lhs.true
  ret void, !dbg !2620
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare i32 @vfprintf(%struct._IO_FILE* nocapture, i8* nocapture, %struct.__va_list_tag*) #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @macan_check_cmac(%struct.macan_ctx* nocapture %ctx, i8* nocapture %cmac4, i8* %fill_time) #0 {
entry:
  %time.i.i = alloca i64, align 8
  %cmac = alloca [16 x i8], align 16
  %puts = call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @str10, i64 0, i64 0)), !dbg !2621
  %0 = bitcast i8* %fill_time to i32*, !dbg !2622
  %tobool = icmp eq i8* %fill_time, null, !dbg !2623
  br i1 %tobool, label %if.then, label %if.end, !dbg !2623

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [16 x i8]* %cmac, i64 0, i64 0, !dbg !2624
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str38, i64 0, i64 0)) #1, !dbg !2625
  %1 = call i8* @memset(i8* %arraydecay, i32 0, i64 16)
  %puts.i5 = call i32 @puts(i8* getelementptr inbounds ([7 x i8]* @str23, i64 0, i64 0)) #1, !dbg !2626
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i, %if.then
  %i.09.i = phi i64 [ %7, %for.cond.backedge.i ], [ 0, %if.then ]
  %arrayidx.i = getelementptr inbounds i8* %cmac4, i64 %i.09.i, !dbg !2628
  %2 = load i8* %arrayidx.i, align 1, !dbg !2628, !tbaa !2119
  %arrayidx1.i = getelementptr inbounds [16 x i8]* %cmac, i64 0, i64 %i.09.i, !dbg !2628
  %3 = load i8* %arrayidx1.i, align 1, !dbg !2628, !tbaa !2119
  %cmp3.i = icmp eq i8 %2, %3, !dbg !2628
  br i1 %cmp3.i, label %for.inc.i, label %return, !dbg !2628

for.inc.i:                                        ; preds = %for.body.i
  %4 = zext i64 %i.09.i to i128
  %5 = add i128 %4, 1
  %6 = icmp ugt i128 %5, 18446744073709551615
  %7 = trunc i128 %5 to i64
  br i1 %6, label %handler.add_overflow.i, label %for.cond.backedge.i, !dbg !2629, !prof !2156

for.cond.backedge.i:                              ; preds = %handler.add_overflow.i, %for.inc.i
  %cmp.i = icmp ult i64 %7, 4, !dbg !2629
  br i1 %cmp.i, label %for.body.i, label %return, !dbg !2629

handler.add_overflow.i:                           ; preds = %for.inc.i
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [31 x i8] }* }* @23 to i8*), i64 %i.09.i, i64 1) #1, !dbg !2629
  br label %for.cond.backedge.i, !dbg !2629

if.end:                                           ; preds = %entry
  %puts.i1 = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str66, i64 0, i64 0)) #1, !dbg !2630
  %8 = bitcast i64* %time.i.i to i8*, !dbg !2632
  call void @klee_make_symbolic(i8* %8, i32 8, i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0)) #1, !dbg !2632
  %9 = load i64* %time.i.i, align 8, !dbg !2634, !tbaa !2181
  %offs.i = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 4, i32 0, !dbg !2633
  %10 = load i64* %offs.i, align 8, !dbg !2633, !tbaa !2181
  %11 = zext i64 %9 to i128
  %12 = zext i64 %10 to i128
  %13 = add i128 %12, %11
  %14 = icmp ugt i128 %13, 18446744073709551615
  %15 = trunc i128 %13 to i64
  br i1 %14, label %handler.add_overflow.i2, label %cont.i, !dbg !2633, !prof !2156

handler.add_overflow.i2:                          ; preds = %if.end
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [16 x i8] }* }* @2 to i8*), i64 %9, i64 %10) #1, !dbg !2633
  br label %cont.i, !dbg !2633

cont.i:                                           ; preds = %handler.add_overflow.i2, %if.end
  %config.i = getelementptr inbounds %struct.macan_ctx* %ctx, i64 0, i32 0, !dbg !2633
  %16 = load %struct.macan_config** %config.i, align 8, !dbg !2633, !tbaa !2125
  %time_div.i = getelementptr inbounds %struct.macan_config* %16, i64 0, i32 6, !dbg !2633
  %17 = load i32* %time_div.i, align 4, !dbg !2633, !tbaa !2129
  %conv.i = zext i32 %17 to i64, !dbg !2633
  %18 = icmp eq i32 %17, 0, !dbg !2633
  br i1 %18, label %handler.divrem_overflow.i, label %macan_get_time.exit, !dbg !2633, !prof !2156

handler.divrem_overflow.i:                        ; preds = %cont.i
  call void @__ubsan_handle_divrem_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [16 x i8] }* }* @3 to i8*), i64 %15, i64 %conv.i) #1, !dbg !2633
  br label %macan_get_time.exit, !dbg !2633

macan_get_time.exit:                              ; preds = %cont.i, %handler.divrem_overflow.i
  call void @klee_div_zero_check(i64 %conv.i) #1, !dbg !2633
  %div.i = udiv i64 %15, %conv.i, !dbg !2633
  %19 = and i64 %div.i, 4294967295, !dbg !2635
  %arraydecay8 = getelementptr inbounds [16 x i8]* %cmac, i64 0, i64 0, !dbg !2638
  %.trunc = trunc i64 %div.i to i32
  br label %for.body, !dbg !2639

for.body:                                         ; preds = %for.cond.backedge, %macan_get_time.exit
  %i.024 = phi i32 [ -1, %macan_get_time.exit ], [ %sadd.result4, %for.cond.backedge ]
  %20 = sext i32 %.trunc to i64
  %21 = sext i32 %i.024 to i64
  %22 = add i64 %20, %21
  %23 = icmp slt i64 %22, -2147483648
  %24 = icmp sgt i64 %22, 2147483647
  %25 = or i1 %24, %23
  %26 = trunc i64 %22 to i32
  %27 = insertvalue { i32, i1 } undef, i32 %26, 0
  %28 = insertvalue { i32, i1 } %27, i1 %25, 1
  %sadd.result = extractvalue { i32, i1 } %28, 0
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %handler.add_overflow, label %cont6, !dbg !2635, !prof !2156

handler.add_overflow:                             ; preds = %for.body
  %30 = zext i32 %i.024 to i64, !dbg !2635
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [6 x i8] }* }* @27 to i8*), i64 %19, i64 %30) #1, !dbg !2635
  br label %cont6, !dbg !2635

cont6:                                            ; preds = %handler.add_overflow, %for.body
  store i32 %sadd.result, i32* %0, align 4, !dbg !2635, !tbaa !2129
  %puts.i6 = call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str38, i64 0, i64 0)) #1, !dbg !2640
  %31 = call i8* @memset(i8* %arraydecay8, i32 0, i64 16)
  %call10 = call i32 @memcmp(i8* %cmac4, i8* %arraydecay8, i64 4) #11, !dbg !2641
  %cmp11 = icmp eq i32 %call10, 0, !dbg !2641
  br i1 %cmp11, label %return, label %for.inc, !dbg !2641

for.inc:                                          ; preds = %cont6
  %32 = sext i32 %i.024 to i64
  %33 = add i64 %32, 1
  %34 = icmp slt i64 %33, -2147483648
  %35 = icmp sgt i64 %33, 2147483647
  %36 = or i1 %35, %34
  %37 = trunc i64 %33 to i32
  %38 = insertvalue { i32, i1 } undef, i32 %37, 0
  %39 = insertvalue { i32, i1 } %38, i1 %36, 1
  %sadd.result4 = extractvalue { i32, i1 } %39, 0
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %handler.add_overflow15, label %for.cond.backedge, !dbg !2639, !prof !2156

for.cond.backedge:                                ; preds = %handler.add_overflow15, %for.inc
  %cmp = icmp slt i32 %sadd.result4, 2, !dbg !2639
  br i1 %cmp, label %for.body, label %return, !dbg !2639

handler.add_overflow15:                           ; preds = %for.inc
  %41 = zext i32 %i.024 to i64, !dbg !2639
  call void @__ubsan_handle_add_overflow(i8* bitcast ({ { i8*, i32, i32 }, { i16, i16, [6 x i8] }* }* @29 to i8*), i64 %41, i64 1) #1, !dbg !2639
  br label %for.cond.backedge, !dbg !2639

return:                                           ; preds = %for.cond.backedge, %cont6, %for.cond.backedge.i, %for.body.i
  %retval.0 = phi i32 [ 1, %for.cond.backedge.i ], [ 0, %for.body.i ], [ 0, %for.cond.backedge ], [ 1, %cont6 ]
  ret i32 %retval.0, !dbg !2642
}

declare void @klee_make_symbolic(i8*, i32, i8*) #7

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #8

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #0 {
entry:
  %cmp = icmp eq i64 %z, 0, !dbg !2643
  br i1 %cmp, label %if.then, label %if.end, !dbg !2643

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([80 x i8]* @.str5, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str210, i64 0, i64 0)) #12, !dbg !2644
  unreachable, !dbg !2644

if.end:                                           ; preds = %entry
  ret void, !dbg !2645
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #9

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #8

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #0 {
entry:
  %x = alloca i32, align 4
  %0 = bitcast i32* %x to i8*, !dbg !2646
  call void bitcast (void (i8*, i32, i8*)* @klee_make_symbolic to void (i8*, i64, i8*)*)(i8* %0, i64 4, i8* %name) #13, !dbg !2646
  %1 = load i32* %x, align 4, !dbg !2647, !tbaa !2129
  ret i32 %1, !dbg !2647
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #8

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #0 {
entry:
  %cmp = icmp ult i64 %shift, %bitWidth, !dbg !2648
  br i1 %cmp, label %if.end, label %if.then, !dbg !2648

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str311, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str1412, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #12, !dbg !2649
  unreachable, !dbg !2649

if.end:                                           ; preds = %entry
  ret void, !dbg !2651
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #0 {
entry:
  %x = alloca i32, align 4
  %cmp = icmp slt i32 %start, %end, !dbg !2652
  br i1 %cmp, label %if.end, label %if.then, !dbg !2652

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([71 x i8]* @.str6, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str1713, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2814, i64 0, i64 0)) #12, !dbg !2653
  unreachable, !dbg !2653

if.end:                                           ; preds = %entry
  %add = add nsw i32 %start, 1, !dbg !2654
  %cmp1 = icmp eq i32 %add, %end, !dbg !2654
  br i1 %cmp1, label %return, label %if.else, !dbg !2654

if.else:                                          ; preds = %if.end
  %0 = bitcast i32* %x to i8*, !dbg !2655
  call void bitcast (void (i8*, i32, i8*)* @klee_make_symbolic to void (i8*, i64, i8*)*)(i8* %0, i64 4, i8* %name) #13, !dbg !2655
  %cmp3 = icmp eq i32 %start, 0, !dbg !2657
  %1 = load i32* %x, align 4, !dbg !2658, !tbaa !2129
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !2657

if.then4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %1, %end, !dbg !2658
  %conv6 = zext i1 %cmp5 to i64, !dbg !2658
  call void @klee_assume(i64 %conv6) #13, !dbg !2658
  br label %if.end14, !dbg !2660

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp sge i32 %1, %start, !dbg !2661
  %conv10 = zext i1 %cmp8 to i64, !dbg !2661
  call void @klee_assume(i64 %conv10) #13, !dbg !2661
  %2 = load i32* %x, align 4, !dbg !2663, !tbaa !2129
  %cmp11 = icmp slt i32 %2, %end, !dbg !2663
  %conv13 = zext i1 %cmp11 to i64, !dbg !2663
  call void @klee_assume(i64 %conv13) #13, !dbg !2663
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.then4
  %3 = load i32* %x, align 4, !dbg !2664, !tbaa !2129
  br label %return, !dbg !2664

return:                                           ; preds = %if.end14, %if.end
  %retval.0 = phi i32 [ %3, %if.end14 ], [ %start, %if.end ]
  ret i32 %retval.0, !dbg !2665
}

declare void @klee_assume(i64) #7

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #0 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !2666
  br i1 %cmp3, label %while.end, label %while.body, !dbg !2666

while.body:                                       ; preds = %while.body, %entry
  %src.06 = phi i8* [ %incdec.ptr, %while.body ], [ %srcaddr, %entry ]
  %dest.05 = phi i8* [ %incdec.ptr1, %while.body ], [ %destaddr, %entry ]
  %len.addr.04 = phi i64 [ %dec, %while.body ], [ %len, %entry ]
  %dec = add i64 %len.addr.04, -1, !dbg !2666
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !2667
  %0 = load i8* %src.06, align 1, !dbg !2667, !tbaa !2119
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !2667
  store i8 %0, i8* %dest.05, align 1, !dbg !2667, !tbaa !2119
  %cmp = icmp eq i64 %dec, 0, !dbg !2666
  br i1 %cmp, label %while.end, label %while.body, !dbg !2666

while.end:                                        ; preds = %while.body, %entry
  ret i8* %destaddr, !dbg !2668
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #0 {
entry:
  %cmp = icmp eq i8* %src, %dst, !dbg !2669
  br i1 %cmp, label %return, label %if.end, !dbg !2669

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i8* %src, %dst, !dbg !2670
  br i1 %cmp1, label %while.cond.preheader, label %if.else, !dbg !2670

while.cond.preheader:                             ; preds = %if.end
  %tobool27 = icmp eq i64 %count, 0, !dbg !2671
  br i1 %tobool27, label %return, label %while.body, !dbg !2671

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %b.030 = phi i8* [ %incdec.ptr, %while.body ], [ %src, %while.cond.preheader ]
  %a.029 = phi i8* [ %incdec.ptr3, %while.body ], [ %dst, %while.cond.preheader ]
  %count.addr.028 = phi i64 [ %dec, %while.body ], [ %count, %while.cond.preheader ]
  %dec = add i64 %count.addr.028, -1, !dbg !2671
  %incdec.ptr = getelementptr inbounds i8* %b.030, i64 1, !dbg !2671
  %0 = load i8* %b.030, align 1, !dbg !2671, !tbaa !2119
  %incdec.ptr3 = getelementptr inbounds i8* %a.029, i64 1, !dbg !2671
  store i8 %0, i8* %a.029, align 1, !dbg !2671, !tbaa !2119
  %tobool = icmp eq i64 %dec, 0, !dbg !2671
  br i1 %tobool, label %return, label %while.body, !dbg !2671

if.else:                                          ; preds = %if.end
  %sub = add i64 %count, -1, !dbg !2673
  %tobool832 = icmp eq i64 %count, 0, !dbg !2675
  br i1 %tobool832, label %return, label %while.body9.lr.ph, !dbg !2675

while.body9.lr.ph:                                ; preds = %if.else
  %add.ptr5 = getelementptr inbounds i8* %src, i64 %sub, !dbg !2676
  %add.ptr = getelementptr inbounds i8* %dst, i64 %sub, !dbg !2673
  br label %while.body9, !dbg !2675

while.body9:                                      ; preds = %while.body9, %while.body9.lr.ph
  %b.135 = phi i8* [ %add.ptr5, %while.body9.lr.ph ], [ %incdec.ptr10, %while.body9 ]
  %a.134 = phi i8* [ %add.ptr, %while.body9.lr.ph ], [ %incdec.ptr11, %while.body9 ]
  %count.addr.133 = phi i64 [ %count, %while.body9.lr.ph ], [ %dec7, %while.body9 ]
  %dec7 = add i64 %count.addr.133, -1, !dbg !2675
  %incdec.ptr10 = getelementptr inbounds i8* %b.135, i64 -1, !dbg !2675
  %1 = load i8* %b.135, align 1, !dbg !2675, !tbaa !2119
  %incdec.ptr11 = getelementptr inbounds i8* %a.134, i64 -1, !dbg !2675
  store i8 %1, i8* %a.134, align 1, !dbg !2675, !tbaa !2119
  %tobool8 = icmp eq i64 %dec7, 0, !dbg !2675
  br i1 %tobool8, label %return, label %while.body9, !dbg !2675

return:                                           ; preds = %while.body9, %if.else, %while.body, %while.cond.preheader, %entry
  ret i8* %dst, !dbg !2677
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #0 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !2678
  br i1 %cmp3, label %while.end, label %while.body, !dbg !2678

while.body:                                       ; preds = %while.body, %entry
  %src.06 = phi i8* [ %incdec.ptr, %while.body ], [ %srcaddr, %entry ]
  %dest.05 = phi i8* [ %incdec.ptr1, %while.body ], [ %destaddr, %entry ]
  %len.addr.04 = phi i64 [ %dec, %while.body ], [ %len, %entry ]
  %dec = add i64 %len.addr.04, -1, !dbg !2678
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !2679
  %0 = load i8* %src.06, align 1, !dbg !2679, !tbaa !2119
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !2679
  store i8 %0, i8* %dest.05, align 1, !dbg !2679, !tbaa !2119
  %cmp = icmp eq i64 %dec, 0, !dbg !2678
  br i1 %cmp, label %while.cond.while.end_crit_edge, label %while.body, !dbg !2678

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %while.end, !dbg !2678

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %dest.0.lcssa = phi i8* [ %scevgep, %while.cond.while.end_crit_edge ], [ %destaddr, %entry ]
  ret i8* %dest.0.lcssa, !dbg !2680
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #0 {
entry:
  %cmp2 = icmp eq i64 %count, 0, !dbg !2681
  br i1 %cmp2, label %while.end, label %while.body.lr.ph, !dbg !2681

while.body.lr.ph:                                 ; preds = %entry
  %conv = trunc i32 %s to i8, !dbg !2682
  br label %while.body, !dbg !2681

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %a.04 = phi i8* [ %dst, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %count.addr.03 = phi i64 [ %count, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add i64 %count.addr.03, -1, !dbg !2681
  %incdec.ptr = getelementptr inbounds i8* %a.04, i64 1, !dbg !2682
  store volatile i8 %conv, i8* %a.04, align 1, !dbg !2682, !tbaa !2119
  %cmp = icmp eq i64 %dec, 0, !dbg !2681
  br i1 %cmp, label %while.end, label %while.body, !dbg !2681

while.end:                                        ; preds = %while.body, %entry
  ret i8* %dst, !dbg !2683
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { uwtable }
attributes #4 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readonly }
attributes #12 = { nobuiltin noreturn nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0, !226, !834, !932, !1185, !1435, !1478, !1673, !1757, !1819, !1847, !1869, !1893, !1934, !1970, !1982, !2015, !2025, !2035, !2046, !2058, !2073, !2087, !2101}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !81, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/horenma
!1 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/node/node.c", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/node"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !16, metadata !74}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"sig_callback", metadata !"sig_callback", metadata !"", i32 122, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !13, i32 122} ; [ DW_TAG_sub
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/node//home/horenmar/thesis-setup-stable/macan/build/klee/node/node.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !11}
!8 = metadata !{i32 786454, metadata !9, null, metadata !"uint8_t", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [uint8_t] [line 48, size 0, align 0, offset 0] [from unsigned char]
!9 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_compiled/include/macan.h", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/node"}
!10 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!11 = metadata !{i32 786454, metadata !9, null, metadata !"uint32_t", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [uint32_t] [line 51, size 0, align 0, offset 0] [from unsigned int]
!12 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!13 = metadata !{metadata !14, metadata !15}
!14 = metadata !{i32 786689, metadata !4, metadata !"sig_num", metadata !5, i32 16777338, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sig_num] [line 122]
!15 = metadata !{i32 786689, metadata !4, metadata !"sig_val", metadata !5, i32 33554554, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sig_val] [line 122]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 124, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 ()* @main, null, null, metadata !20, i32 125} ; [ DW_TAG_subprogram
!17 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!20 = metadata !{metadata !21, metadata !73}
!21 = metadata !{i32 786688, metadata !16, metadata !"loop", metadata !5, i32 127, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loop] [line 127]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_loop]
!23 = metadata !{i32 786454, metadata !1, null, metadata !"macan_ev_loop", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ] [macan_ev_loop] [line 55, size 0, align 0, offset 0] [from macan_ev_loop]
!24 = metadata !{i32 786451, metadata !25, null, metadata !"macan_ev_loop", i32 52, i64 128, i64 64, i32 0, i32 0, null, metadata !26, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ev_loop] [line 52, size 128, align 64, offset 0] [from ]
!25 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_compiled/include/macan_ev.h", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/node"}
!26 = metadata !{metadata !27, metadata !56}
!27 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"cans", i32 53, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [cans] [line 53, size 64, align 64, offset 0] [from ]
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_can]
!29 = metadata !{i32 786454, metadata !25, null, metadata !"macan_ev_can", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [macan_ev_can] [line 41, size 0, align 0, offset 0] [from macan_ev_can]
!30 = metadata !{i32 786451, metadata !25, null, metadata !"macan_ev_can", i32 35, i64 320, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ev_can] [line 35, size 320, align 64, offset 0] [from ]
!31 = metadata !{metadata !32, metadata !38, metadata !39, metadata !40, metadata !54}
!32 = metadata !{i32 786445, metadata !25, metadata !30, metadata !"cb", i32 36, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [cb] [line 36, size 64, align 64, offset 0] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!34 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!35 = metadata !{null, metadata !36, metadata !37, metadata !19}
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_loop]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_can]
!38 = metadata !{i32 786445, metadata !25, metadata !30, metadata !"next", i32 37, i64 64, i64 64, i64 64, i32 0, metadata !37} ; [ DW_TAG_member ] [next] [line 37, size 64, align 64, offset 64] [from ]
!39 = metadata !{i32 786445, metadata !25, metadata !30, metadata !"canfd", i32 38, i64 32, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [canfd] [line 38, size 32, align 32, offset 128] [from int]
!40 = metadata !{i32 786445, metadata !25, metadata !30, metadata !"received", i32 39, i64 64, i64 64, i64 192, i32 0, metadata !41} ; [ DW_TAG_member ] [received] [line 39, size 64, align 64, offset 192] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from can_frame]
!42 = metadata !{i32 786451, metadata !43, null, metadata !"can_frame", i32 68, i64 128, i64 64, i32 0, i32 0, null, metadata !44, i32 0, null, null} ; [ DW_TAG_structure_type ] [can_frame] [line 68, size 128, align 64, offset 0] [from ]
!43 = metadata !{metadata !"/usr/local/include/linux/can.h", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/node"}
!44 = metadata !{metadata !45, metadata !48, metadata !50}
!45 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"can_id", i32 69, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_member ] [can_id] [line 69, size 32, align 32, offset 0] [from canid_t]
!46 = metadata !{i32 786454, metadata !43, null, metadata !"canid_t", i32 39, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ] [canid_t] [line 39, size 0, align 0, offset 0] [from __u32]
!47 = metadata !{i32 786454, metadata !43, null, metadata !"__u32", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [__u32] [line 26, size 0, align 0, offset 0] [from unsigned int]
!48 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"can_dlc", i32 70, i64 8, i64 8, i64 32, i32 0, metadata !49} ; [ DW_TAG_member ] [can_dlc] [line 70, size 8, align 8, offset 32] [from __u8]
!49 = metadata !{i32 786454, metadata !43, null, metadata !"__u8", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [__u8] [line 20, size 0, align 0, offset 0] [from unsigned char]
!50 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"data", i32 71, i64 64, i64 8, i64 64, i32 0, metadata !51} ; [ DW_TAG_member ] [data] [line 71, size 64, align 8, offset 64] [from ]
!51 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 8, i32 0, i32 0, metadata !49, metadata !52, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from __u8]
!52 = metadata !{metadata !53}
!53 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!54 = metadata !{i32 786445, metadata !25, metadata !30, metadata !"data", i32 40, i64 64, i64 64, i64 256, i32 0, metadata !55} ; [ DW_TAG_member ] [data] [line 40, size 64, align 64, offset 256] [from ]
!55 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!56 = metadata !{i32 786445, metadata !25, metadata !24, metadata !"timers", i32 54, i64 64, i64 64, i64 64, i32 0, metadata !57} ; [ DW_TAG_member ] [timers] [line 54, size 64, align 64, offset 64] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_timer]
!58 = metadata !{i32 786454, metadata !25, null, metadata !"macan_ev_timer", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [macan_ev_timer] [line 50, size 0, align 0, offset 0] [from macan_ev_timer]
!59 = metadata !{i32 786451, metadata !25, null, metadata !"macan_ev_timer", i32 43, i64 320, i64 64, i32 0, i32 0, null, metadata !60, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ev_timer] [line 43, size 320, align 64, offset 0] [from ]
!60 = metadata !{metadata !61, metadata !66, metadata !67, metadata !68, metadata !69, metadata !72}
!61 = metadata !{i32 786445, metadata !25, metadata !59, metadata !"cb", i32 44, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [cb] [line 44, size 64, align 64, offset 0] [from ]
!62 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!63 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!64 = metadata !{null, metadata !36, metadata !65, metadata !19}
!65 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_timer]
!66 = metadata !{i32 786445, metadata !25, metadata !59, metadata !"next", i32 45, i64 64, i64 64, i64 64, i32 0, metadata !65} ; [ DW_TAG_member ] [next] [line 45, size 64, align 64, offset 64] [from ]
!67 = metadata !{i32 786445, metadata !25, metadata !59, metadata !"after_us", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !12} ; [ DW_TAG_member ] [after_us] [line 46, size 32, align 32, offset 128] [from unsigned int]
!68 = metadata !{i32 786445, metadata !25, metadata !59, metadata !"repeat_us", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !12} ; [ DW_TAG_member ] [repeat_us] [line 47, size 32, align 32, offset 160] [from unsigned int]
!69 = metadata !{i32 786445, metadata !25, metadata !59, metadata !"expire_us", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !70} ; [ DW_TAG_member ] [expire_us] [line 48, size 64, align 64, offset 192] [from uint64_t]
!70 = metadata !{i32 786454, metadata !9, null, metadata !"uint64_t", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [uint64_t] [line 55, size 0, align 0, offset 0] [from long unsigned int]
!71 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!72 = metadata !{i32 786445, metadata !25, metadata !59, metadata !"data", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !55} ; [ DW_TAG_member ] [data] [line 49, size 64, align 64, offset 256] [from ]
!73 = metadata !{i32 786688, metadata !16, metadata !"sig_send", metadata !5, i32 128, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sig_send] [line 128]
!74 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"send_cb", metadata !"send_cb", metadata !"", i32 121, metadata !75, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.macan_ev_loop*, %struct.macan_ev_timer*, i32)* @se
!75 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!76 = metadata !{null, metadata !22, metadata !57, metadata !19}
!77 = metadata !{metadata !78, metadata !79, metadata !80}
!78 = metadata !{i32 786689, metadata !74, metadata !"loop", metadata !5, i32 16777337, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loop] [line 121]
!79 = metadata !{i32 786689, metadata !74, metadata !"w", metadata !5, i32 33554553, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [w] [line 121]
!80 = metadata !{i32 786689, metadata !74, metadata !"revents", metadata !5, i32 50331769, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [revents] [line 121]
!81 = metadata !{metadata !82, metadata !90, metadata !103, metadata !117, metadata !135, metadata !141}
!82 = metadata !{i32 786484, i32 0, null, metadata !"macan_ltk_node1", metadata !"macan_ltk_node1", metadata !"", metadata !5, i32 78, metadata !83, i32 0, i32 1, %struct.macan_key* @macan_ltk_node1, null} ; [ DW_TAG_variable ] [macan_ltk_node1] [line 78
!83 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_key]
!84 = metadata !{i32 786451, metadata !9, null, metadata !"macan_key", i32 97, i64 128, i64 8, i32 0, i32 0, null, metadata !85, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_key] [line 97, size 128, align 8, offset 0] [from ]
!85 = metadata !{metadata !86}
!86 = metadata !{i32 786445, metadata !9, metadata !84, metadata !"data", i32 98, i64 128, i64 8, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [data] [line 98, size 128, align 8, offset 0] [from ]
!87 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 8, i32 0, i32 0, metadata !8, metadata !88, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from uint8_t]
!88 = metadata !{metadata !89}
!89 = metadata !{i32 786465, i64 0, i64 16}       ; [ DW_TAG_subrange_type ] [0, 15]
!90 = metadata !{i32 786484, i32 0, null, metadata !"demo_sig_spec", metadata !"demo_sig_spec", metadata !"", metadata !5, i32 83, metadata !91, i32 0, i32 1, <{ { i16, i16, i8, i8, i8, i8 }, { i16, i16, i8, i8, i8, i8 } }>* @demo_sig_spec, null} ; [ DW_
!91 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 16, i32 0, i32 0, metadata !92, metadata !101, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 16, offset 0] [from macan_sig_spec]
!92 = metadata !{i32 786451, metadata !9, null, metadata !"macan_sig_spec", i32 51, i64 64, i64 16, i32 0, i32 0, null, metadata !93, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_sig_spec] [line 51, size 64, align 16, offset 0] [from ]
!93 = metadata !{metadata !94, metadata !97, metadata !98, metadata !99, metadata !100}
!94 = metadata !{i32 786445, metadata !9, metadata !92, metadata !"can_nsid", i32 52, i64 16, i64 16, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [can_nsid] [line 52, size 16, align 16, offset 0] [from uint16_t]
!95 = metadata !{i32 786454, metadata !9, null, metadata !"uint16_t", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [uint16_t] [line 49, size 0, align 0, offset 0] [from unsigned short]
!96 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!97 = metadata !{i32 786445, metadata !9, metadata !92, metadata !"can_sid", i32 53, i64 16, i64 16, i64 16, i32 0, metadata !95} ; [ DW_TAG_member ] [can_sid] [line 53, size 16, align 16, offset 16] [from uint16_t]
!98 = metadata !{i32 786445, metadata !9, metadata !92, metadata !"src_id", i32 54, i64 8, i64 8, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [src_id] [line 54, size 8, align 8, offset 32] [from uint8_t]
!99 = metadata !{i32 786445, metadata !9, metadata !92, metadata !"dst_id", i32 55, i64 8, i64 8, i64 40, i32 0, metadata !8} ; [ DW_TAG_member ] [dst_id] [line 55, size 8, align 8, offset 40] [from uint8_t]
!100 = metadata !{i32 786445, metadata !9, metadata !92, metadata !"presc", i32 56, i64 8, i64 8, i64 48, i32 0, metadata !8} ; [ DW_TAG_member ] [presc] [line 56, size 8, align 8, offset 48] [from uint8_t]
!101 = metadata !{metadata !102}
!102 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!103 = metadata !{i32 786484, i32 0, null, metadata !"demo_can_ids", metadata !"demo_can_ids", metadata !"", metadata !5, i32 88, metadata !104, i32 0, i32 1, %struct.macan_can_ids* @demo_can_ids, null} ; [ DW_TAG_variable ] [demo_can_ids] [line 88] [def
!104 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !105} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_can_ids]
!105 = metadata !{i32 786451, metadata !9, null, metadata !"macan_can_ids", i32 64, i64 128, i64 64, i32 0, i32 0, null, metadata !106, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_can_ids] [line 64, size 128, align 64, offset 0] [from ]
!106 = metadata !{metadata !107, metadata !108}
!107 = metadata !{i32 786445, metadata !9, metadata !105, metadata !"time", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [time] [line 65, size 32, align 32, offset 0] [from uint32_t]
!108 = metadata !{i32 786445, metadata !9, metadata !105, metadata !"ecu", i32 66, i64 64, i64 64, i64 64, i32 0, metadata !109} ; [ DW_TAG_member ] [ecu] [line 66, size 64, align 64, offset 64] [from ]
!109 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !110} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ecu]
!110 = metadata !{i32 786451, metadata !9, null, metadata !"macan_ecu", i32 59, i64 128, i64 64, i32 0, i32 0, null, metadata !111, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ecu] [line 59, size 128, align 64, offset 0] [from ]
!111 = metadata !{metadata !112, metadata !113}
!112 = metadata !{i32 786445, metadata !9, metadata !110, metadata !"canid", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [canid] [line 60, size 32, align 32, offset 0] [from uint32_t]
!113 = metadata !{i32 786445, metadata !9, metadata !110, metadata !"name", i32 61, i64 64, i64 64, i64 64, i32 0, metadata !114} ; [ DW_TAG_member ] [name] [line 61, size 64, align 64, offset 64] [from ]
!114 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !115} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!115 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !116} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!116 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!117 = metadata !{i32 786484, i32 0, null, metadata !"config", metadata !"config", metadata !"", metadata !5, i32 98, metadata !118, i32 0, i32 1, { i32, %struct.macan_sig_spec*, i8, %struct.macan_can_ids*, i8, i8, i32, i64, i32, i32, i32, [4 x i8] }* @c
!118 = metadata !{i32 786451, metadata !9, null, metadata !"macan_config", i32 72, i64 512, i64 64, i32 0, i32 0, null, metadata !119, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_config] [line 72, size 512, align 64, offset 0] [from ]
!119 = metadata !{metadata !120, metadata !121, metadata !124, metadata !125, metadata !127, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134}
!120 = metadata !{i32 786445, metadata !9, metadata !118, metadata !"sig_count", i32 73, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [sig_count] [line 73, size 32, align 32, offset 0] [from uint32_t]
!121 = metadata !{i32 786445, metadata !9, metadata !118, metadata !"sigspec", i32 74, i64 64, i64 64, i64 64, i32 0, metadata !122} ; [ DW_TAG_member ] [sigspec] [line 74, size 64, align 64, offset 64] [from ]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !123} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!123 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_sig_spec]
!124 = metadata !{i32 786445, metadata !9, metadata !118, metadata !"node_count", i32 75, i64 8, i64 8, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [node_count] [line 75, size 8, align 8, offset 128] [from uint8_t]
!125 = metadata !{i32 786445, metadata !9, metadata !118, metadata !"canid", i32 76, i64 64, i64 64, i64 192, i32 0, metadata !126} ; [ DW_TAG_member ] [canid] [line 76, size 64, align 64, offset 192] [from ]
!126 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!127 = metadata !{i32 786445, metadata !9, metadata !118, metadata !"key_server_id", i32 77, i64 8, i64 8, i64 256, i32 0, metadata !128} ; [ DW_TAG_member ] [key_server_id] [line 77, size 8, align 8, offset 256] [from macan_ecuid]
!128 = metadata !{i32 786454, metadata !9, null, metadata !"macan_ecuid", i32 37, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [macan_ecuid] [line 37, size 0, align 0, offset 0] [from uint8_t]
!129 = metadata !{i32 786445, metadata !9, metadata !118, metadata !"time_server_id", i32 78, i64 8, i64 8, i64 264, i32 0, metadata !128} ; [ DW_TAG_member ] [time_server_id] [line 78, size 8, align 8, offset 264] [from macan_ecuid]
!130 = metadata !{i32 786445, metadata !9, metadata !118, metadata !"time_div", i32 79, i64 32, i64 32, i64 288, i32 0, metadata !11} ; [ DW_TAG_member ] [time_div] [line 79, size 32, align 32, offset 288] [from uint32_t]
!131 = metadata !{i32 786445, metadata !9, metadata !118, metadata !"skey_validity", i32 80, i64 64, i64 64, i64 320, i32 0, metadata !70} ; [ DW_TAG_member ] [skey_validity] [line 80, size 64, align 64, offset 320] [from uint64_t]
!132 = metadata !{i32 786445, metadata !9, metadata !118, metadata !"skey_chg_timeout", i32 81, i64 32, i64 32, i64 384, i32 0, metadata !11} ; [ DW_TAG_member ] [skey_chg_timeout] [line 81, size 32, align 32, offset 384] [from uint32_t]
!133 = metadata !{i32 786445, metadata !9, metadata !118, metadata !"time_timeout", i32 82, i64 32, i64 32, i64 416, i32 0, metadata !11} ; [ DW_TAG_member ] [time_timeout] [line 82, size 32, align 32, offset 416] [from uint32_t]
!134 = metadata !{i32 786445, metadata !9, metadata !118, metadata !"time_delta", i32 83, i64 32, i64 32, i64 448, i32 0, metadata !11} ; [ DW_TAG_member ] [time_delta] [line 83, size 32, align 32, offset 448] [from uint32_t]
!135 = metadata !{i32 786484, i32 0, null, metadata !"node", metadata !"node", metadata !"", metadata !5, i32 112, metadata !136, i32 0, i32 1, %struct.macan_node_config* @node, null} ; [ DW_TAG_variable ] [node] [line 112] [def]
!136 = metadata !{i32 786451, metadata !9, null, metadata !"macan_node_config", i32 89, i64 128, i64 64, i32 0, i32 0, null, metadata !137, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_node_config] [line 89, size 128, align 64, offset 0] [from ]
!137 = metadata !{metadata !138, metadata !139}
!138 = metadata !{i32 786445, metadata !9, metadata !136, metadata !"node_id", i32 90, i64 8, i64 8, i64 0, i32 0, metadata !128} ; [ DW_TAG_member ] [node_id] [line 90, size 8, align 8, offset 0] [from macan_ecuid]
!139 = metadata !{i32 786445, metadata !9, metadata !136, metadata !"ltk", i32 91, i64 64, i64 64, i64 64, i32 0, metadata !140} ; [ DW_TAG_member ] [ltk] [line 91, size 64, align 64, offset 64] [from ]
!140 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!141 = metadata !{i32 786484, i32 0, null, metadata !"macan_ctx", metadata !"macan_ctx", metadata !"", metadata !5, i32 117, metadata !142, i32 1, i32 1, %struct.macan_ctx* @macan_ctx, null} ; [ DW_TAG_variable ] [macan_ctx] [line 117] [local] [def]
!142 = metadata !{i32 786451, metadata !143, null, metadata !"macan_ctx", i32 150, i64 2112, i64 64, i32 0, i32 0, null, metadata !144, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ctx] [line 150, size 2112, align 64, offset 0] [from ]
!143 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_compiled/include/macan_private.h", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/node"}
!144 = metadata !{metadata !145, metadata !148, metadata !151, metadata !173, metadata !184, metadata !193, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204}
!145 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"config", i32 151, i64 64, i64 64, i64 0, i32 0, metadata !146} ; [ DW_TAG_member ] [config] [line 151, size 64, align 64, offset 0] [from ]
!146 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !147} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!147 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !118} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_config]
!148 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"node", i32 152, i64 64, i64 64, i64 64, i32 0, metadata !149} ; [ DW_TAG_member ] [node] [line 152, size 64, align 64, offset 64] [from ]
!149 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !150} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!150 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !136} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_node_config]
!151 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"cpart", i32 153, i64 64, i64 64, i64 128, i32 0, metadata !152} ; [ DW_TAG_member ] [cpart] [line 153, size 64, align 64, offset 128] [from ]
!152 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!153 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !154} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from com_part]
!154 = metadata !{i32 786451, metadata !143, null, metadata !"com_part", i32 113, i64 448, i64 64, i32 0, i32 0, null, metadata !155, i32 0, null, null} ; [ DW_TAG_structure_type ] [com_part] [line 113, size 448, align 64, offset 0] [from ]
!155 = metadata !{metadata !156, metadata !158, metadata !159, metadata !160, metadata !161, metadata !165, metadata !166, metadata !167, metadata !168}
!156 = metadata !{i32 786445, metadata !143, metadata !154, metadata !"key_received", i32 114, i64 8, i64 8, i64 0, i32 0, metadata !157} ; [ DW_TAG_member ] [key_received] [line 114, size 8, align 8, offset 0] [from _Bool]
!157 = metadata !{i32 786468, null, null, metadata !"_Bool", i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ] [_Bool] [line 0, size 8, align 8, offset 0, enc DW_ATE_boolean]
!158 = metadata !{i32 786445, metadata !143, metadata !154, metadata !"skey", i32 115, i64 128, i64 8, i64 8, i32 0, metadata !84} ; [ DW_TAG_member ] [skey] [line 115, size 128, align 8, offset 8] [from macan_key]
!159 = metadata !{i32 786445, metadata !143, metadata !154, metadata !"valid_until", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !70} ; [ DW_TAG_member ] [valid_until] [line 116, size 64, align 64, offset 192] [from uint64_t]
!160 = metadata !{i32 786445, metadata !143, metadata !154, metadata !"awaiting_skey", i32 117, i64 8, i64 8, i64 256, i32 0, metadata !157} ; [ DW_TAG_member ] [awaiting_skey] [line 117, size 8, align 8, offset 256] [from _Bool]
!161 = metadata !{i32 786445, metadata !143, metadata !154, metadata !"chg", i32 118, i64 48, i64 8, i64 264, i32 0, metadata !162} ; [ DW_TAG_member ] [chg] [line 118, size 48, align 8, offset 264] [from ]
!162 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !8, metadata !163, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from uint8_t]
!163 = metadata !{metadata !164}
!164 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!165 = metadata !{i32 786445, metadata !143, metadata !154, metadata !"flags", i32 119, i64 8, i64 8, i64 312, i32 0, metadata !8} ; [ DW_TAG_member ] [flags] [line 119, size 8, align 8, offset 312] [from uint8_t]
!166 = metadata !{i32 786445, metadata !143, metadata !154, metadata !"group_field", i32 120, i64 32, i64 32, i64 320, i32 0, metadata !11} ; [ DW_TAG_member ] [group_field] [line 120, size 32, align 32, offset 320] [from uint32_t]
!167 = metadata !{i32 786445, metadata !143, metadata !154, metadata !"ecu_id", i32 121, i64 8, i64 8, i64 352, i32 0, metadata !128} ; [ DW_TAG_member ] [ecu_id] [line 121, size 8, align 8, offset 352] [from macan_ecuid]
!168 = metadata !{i32 786445, metadata !143, metadata !154, metadata !"skey_callback", i32 122, i64 64, i64 64, i64 384, i32 0, metadata !169} ; [ DW_TAG_member ] [skey_callback] [line 122, size 64, align 64, offset 384] [from ]
!169 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !170} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!170 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !171, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!171 = metadata !{null, metadata !172, metadata !128}
!172 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !142} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ctx]
!173 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"sighand", i32 154, i64 64, i64 64, i64 192, i32 0, metadata !174} ; [ DW_TAG_member ] [sighand] [line 154, size 64, align 64, offset 192] [from ]
!174 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !175} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!175 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !176} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sig_handle]
!176 = metadata !{i32 786451, metadata !143, null, metadata !"sig_handle", i32 130, i64 192, i64 64, i32 0, i32 0, null, metadata !177, i32 0, null, null} ; [ DW_TAG_structure_type ] [sig_handle] [line 130, size 192, align 64, offset 0] [from ]
!177 = metadata !{metadata !178, metadata !179, metadata !180, metadata !181, metadata !183}
!178 = metadata !{i32 786445, metadata !143, metadata !176, metadata !"presc", i32 131, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [presc] [line 131, size 32, align 32, offset 0] [from int]
!179 = metadata !{i32 786445, metadata !143, metadata !176, metadata !"presc_cnt", i32 133, i64 8, i64 8, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [presc_cnt] [line 133, size 8, align 8, offset 32] [from uint8_t]
!180 = metadata !{i32 786445, metadata !143, metadata !176, metadata !"flags", i32 135, i64 8, i64 8, i64 40, i32 0, metadata !8} ; [ DW_TAG_member ] [flags] [line 135, size 8, align 8, offset 40] [from uint8_t]
!181 = metadata !{i32 786445, metadata !143, metadata !176, metadata !"cback", i32 136, i64 64, i64 64, i64 64, i32 0, metadata !182} ; [ DW_TAG_member ] [cback] [line 136, size 64, align 64, offset 64] [from ]
!182 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!183 = metadata !{i32 786445, metadata !143, metadata !176, metadata !"invalid_cback", i32 137, i64 64, i64 64, i64 128, i32 0, metadata !182} ; [ DW_TAG_member ] [invalid_cback] [line 137, size 64, align 64, offset 128] [from ]
!184 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"time", i32 155, i64 320, i64 64, i64 256, i32 0, metadata !185} ; [ DW_TAG_member ] [time] [line 155, size 320, align 64, offset 256] [from macan_timekeeping]
!185 = metadata !{i32 786451, metadata !143, null, metadata !"macan_timekeeping", i32 93, i64 320, i64 64, i32 0, i32 0, null, metadata !186, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_timekeeping] [line 93, size 320, align 64, offset 0] [from
!186 = metadata !{metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192}
!187 = metadata !{i32 786445, metadata !143, metadata !185, metadata !"offs", i32 94, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_member ] [offs] [line 94, size 64, align 64, offset 0] [from uint64_t]
!188 = metadata !{i32 786445, metadata !143, metadata !185, metadata !"nonauth_ts", i32 96, i64 32, i64 32, i64 64, i32 0, metadata !11} ; [ DW_TAG_member ] [nonauth_ts] [line 96, size 32, align 32, offset 64] [from uint32_t]
!189 = metadata !{i32 786445, metadata !143, metadata !185, metadata !"nonauth_loc", i32 97, i64 64, i64 64, i64 128, i32 0, metadata !70} ; [ DW_TAG_member ] [nonauth_loc] [line 97, size 64, align 64, offset 128] [from uint64_t]
!190 = metadata !{i32 786445, metadata !143, metadata !185, metadata !"chal_ts", i32 99, i64 64, i64 64, i64 192, i32 0, metadata !70} ; [ DW_TAG_member ] [chal_ts] [line 99, size 64, align 64, offset 192] [from uint64_t]
!191 = metadata !{i32 786445, metadata !143, metadata !185, metadata !"chg", i32 100, i64 48, i64 8, i64 256, i32 0, metadata !162} ; [ DW_TAG_member ] [chg] [line 100, size 48, align 8, offset 256] [from ]
!192 = metadata !{i32 786445, metadata !143, metadata !185, metadata !"ready", i32 101, i64 8, i64 8, i64 304, i32 0, metadata !157} ; [ DW_TAG_member ] [ready] [line 101, size 8, align 8, offset 304] [from _Bool]
!193 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"keywrap", i32 156, i64 256, i64 8, i64 576, i32 0, metadata !194} ; [ DW_TAG_member ] [keywrap] [line 156, size 256, align 8, offset 576] [from ]
!194 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !8, metadata !195, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from uint8_t]
!195 = metadata !{metadata !196}
!196 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!197 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"rcvd_skey_seq", i32 157, i64 32, i64 32, i64 832, i32 0, metadata !12} ; [ DW_TAG_member ] [rcvd_skey_seq] [line 157, size 32, align 32, offset 832] [from unsigned int]
!198 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"sockfd", i32 158, i64 32, i64 32, i64 864, i32 0, metadata !19} ; [ DW_TAG_member ] [sockfd] [line 158, size 32, align 32, offset 864] [from int]
!199 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"loop", i32 159, i64 64, i64 64, i64 896, i32 0, metadata !22} ; [ DW_TAG_member ] [loop] [line 159, size 64, align 64, offset 896] [from ]
!200 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"can_watcher", i32 160, i64 320, i64 64, i64 960, i32 0, metadata !29} ; [ DW_TAG_member ] [can_watcher] [line 160, size 320, align 64, offset 960] [from macan_ev_can]
!201 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"housekeeping", i32 161, i64 320, i64 64, i64 1280, i32 0, metadata !58} ; [ DW_TAG_member ] [housekeeping] [line 161, size 320, align 64, offset 1280] [from macan_ev_timer]
!202 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"print_msg_enabled", i32 162, i64 8, i64 8, i64 1600, i32 0, metadata !157} ; [ DW_TAG_member ] [print_msg_enabled] [line 162, size 8, align 8, offset 1600] [from _Bool]
!203 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"dump_disabled", i32 164, i64 8, i64 8, i64 1608, i32 0, metadata !157} ; [ DW_TAG_member ] [dump_disabled] [line 164, size 8, align 8, offset 1608] [from _Bool]
!204 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"", i32 166, i64 448, i64 64, i64 1664, i32 0, metadata !205} ; [ DW_TAG_member ] [line 166, size 448, align 64, offset 1664] [from ]
!205 = metadata !{i32 786455, metadata !143, metadata !142, metadata !"", i32 166, i64 448, i64 64, i64 0, i32 0, null, metadata !206, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 166, size 448, align 64, offset 0] [from ]
!206 = metadata !{metadata !207, metadata !218}
!207 = metadata !{i32 786445, metadata !143, metadata !205, metadata !"ts", i32 174, i64 448, i64 64, i64 0, i32 0, metadata !208} ; [ DW_TAG_member ] [ts] [line 174, size 448, align 64, offset 0] [from ]
!208 = metadata !{i32 786451, metadata !143, metadata !205, metadata !"", i32 167, i64 448, i64 64, i32 0, i32 0, null, metadata !209, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 167, size 448, align 64, offset 0] [from ]
!209 = metadata !{metadata !210, metadata !211, metadata !212}
!210 = metadata !{i32 786445, metadata !143, metadata !208, metadata !"time_bcast", i32 168, i64 320, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_member ] [time_bcast] [line 168, size 320, align 64, offset 0] [from macan_ev_timer]
!211 = metadata !{i32 786445, metadata !143, metadata !208, metadata !"bcast_time", i32 169, i64 64, i64 64, i64 320, i32 0, metadata !70} ; [ DW_TAG_member ] [bcast_time] [line 169, size 64, align 64, offset 320] [from uint64_t]
!212 = metadata !{i32 786445, metadata !143, metadata !208, metadata !"auth_req", i32 173, i64 64, i64 64, i64 384, i32 0, metadata !213} ; [ DW_TAG_member ] [auth_req] [line 173, size 64, align 64, offset 384] [from ]
!213 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !214} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!214 = metadata !{i32 786451, metadata !143, metadata !208, metadata !"", i32 170, i64 56, i64 8, i32 0, i32 0, null, metadata !215, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 170, size 56, align 8, offset 0] [from ]
!215 = metadata !{metadata !216, metadata !217}
!216 = metadata !{i32 786445, metadata !143, metadata !214, metadata !"pending", i32 171, i64 8, i64 8, i64 0, i32 0, metadata !157} ; [ DW_TAG_member ] [pending] [line 171, size 8, align 8, offset 0] [from _Bool]
!217 = metadata !{i32 786445, metadata !143, metadata !214, metadata !"chg", i32 172, i64 48, i64 8, i64 8, i32 0, metadata !162} ; [ DW_TAG_member ] [chg] [line 172, size 48, align 8, offset 8] [from ]
!218 = metadata !{i32 786445, metadata !143, metadata !205, metadata !"ks", i32 179, i64 448, i64 64, i64 0, i32 0, metadata !219} ; [ DW_TAG_member ] [ks] [line 179, size 448, align 64, offset 0] [from ]
!219 = metadata !{i32 786451, metadata !143, metadata !205, metadata !"", i32 175, i64 448, i64 64, i32 0, i32 0, null, metadata !220, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 175, size 448, align 64, offset 0] [from ]
!220 = metadata !{metadata !221, metadata !224, metadata !225}
!221 = metadata !{i32 786445, metadata !143, metadata !219, metadata !"ltk", i32 176, i64 64, i64 64, i64 0, i32 0, metadata !222} ; [ DW_TAG_member ] [ltk] [line 176, size 64, align 64, offset 0] [from ]
!222 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !223} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!223 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!224 = metadata !{i32 786445, metadata !143, metadata !219, metadata !"time_bcast", i32 177, i64 320, i64 64, i64 64, i32 0, metadata !58} ; [ DW_TAG_member ] [time_bcast] [line 177, size 320, align 64, offset 64] [from macan_ev_timer]
!225 = metadata !{i32 786445, metadata !143, metadata !219, metadata !"bcast_time", i32 178, i64 64, i64 64, i64 384, i32 0, metadata !70} ; [ DW_TAG_member ] [bcast_time] [line 178, size 64, align 64, offset 384] [from uint64_t]
!226 = metadata !{i32 786449, metadata !227, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !228, metadata !2, metadata !244, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/
!227 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan.c", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src"}
!228 = metadata !{metadata !229, metadata !238}
!229 = metadata !{i32 786436, metadata !230, null, metadata !"", i32 47, i64 32, i64 32, i32 0, i32 0, null, metadata !231, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 47, size 32, align 32, offset 0] [from ]
!230 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_compiled/include/common.h", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src"}
!231 = metadata !{metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237}
!232 = metadata !{i32 786472, metadata !"MSG_OK", i64 0} ; [ DW_TAG_enumerator ] [MSG_OK :: 0]
!233 = metadata !{i32 786472, metadata !"MSG_WARN", i64 1} ; [ DW_TAG_enumerator ] [MSG_WARN :: 1]
!234 = metadata !{i32 786472, metadata !"MSG_FAIL", i64 2} ; [ DW_TAG_enumerator ] [MSG_FAIL :: 2]
!235 = metadata !{i32 786472, metadata !"MSG_REQUEST", i64 3} ; [ DW_TAG_enumerator ] [MSG_REQUEST :: 3]
!236 = metadata !{i32 786472, metadata !"MSG_INFO", i64 4} ; [ DW_TAG_enumerator ] [MSG_INFO :: 4]
!237 = metadata !{i32 786472, metadata !"MSG_SIGNAL", i64 5} ; [ DW_TAG_enumerator ] [MSG_SIGNAL :: 5]
!238 = metadata !{i32 786436, metadata !239, null, metadata !"macan_process_status", i32 106, i64 32, i64 32, i32 0, i32 0, null, metadata !240, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [macan_process_status] [line 106, size 32, align 32, offset 0] [f
!239 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_compiled/include/macan.h", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src"}
!240 = metadata !{metadata !241, metadata !242, metadata !243}
!241 = metadata !{i32 786472, metadata !"MACAN_FRAME_UNKNOWN", i64 0} ; [ DW_TAG_enumerator ] [MACAN_FRAME_UNKNOWN :: 0]
!242 = metadata !{i32 786472, metadata !"MACAN_FRAME_PROCESSED", i64 1} ; [ DW_TAG_enumerator ] [MACAN_FRAME_PROCESSED :: 1]
!243 = metadata !{i32 786472, metadata !"MACAN_FRAME_CHALLENGE", i64 2} ; [ DW_TAG_enumerator ] [MACAN_FRAME_CHALLENGE :: 2]
!244 = metadata !{metadata !245, metadata !430, metadata !437, metadata !447, metadata !452, metadata !459, metadata !464, metadata !477, metadata !483, metadata !492, metadata !499, metadata !507, metadata !516, metadata !520, metadata !529, metadata !5
!245 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"macan_reg_callback", metadata !"macan_reg_callback", metadata !"", i32 79, metadata !247, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !425, i32
!246 = metadata !{i32 786473, metadata !227}      ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan.c]
!247 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !248, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!248 = metadata !{metadata !19, metadata !249, metadata !269, metadata !424, metadata !424}
!249 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !250} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ctx]
!250 = metadata !{i32 786451, metadata !251, null, metadata !"macan_ctx", i32 150, i64 2112, i64 64, i32 0, i32 0, null, metadata !252, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ctx] [line 150, size 2112, align 64, offset 0] [from ]
!251 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_compiled/include/macan_private.h", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src"}
!252 = metadata !{metadata !253, metadata !294, metadata !307, metadata !325, metadata !338, metadata !347, metadata !349, metadata !350, metadata !351, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402}
!253 = metadata !{i32 786445, metadata !251, metadata !250, metadata !"config", i32 151, i64 64, i64 64, i64 0, i32 0, metadata !254} ; [ DW_TAG_member ] [config] [line 151, size 64, align 64, offset 0] [from ]
!254 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !255} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!255 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !256} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_config]
!256 = metadata !{i32 786451, metadata !239, null, metadata !"macan_config", i32 72, i64 512, i64 64, i32 0, i32 0, null, metadata !257, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_config] [line 72, size 512, align 64, offset 0] [from ]
!257 = metadata !{metadata !258, metadata !260, metadata !272, metadata !273, metadata !285, metadata !287, metadata !288, metadata !289, metadata !291, metadata !292, metadata !293}
!258 = metadata !{i32 786445, metadata !239, metadata !256, metadata !"sig_count", i32 73, i64 32, i64 32, i64 0, i32 0, metadata !259} ; [ DW_TAG_member ] [sig_count] [line 73, size 32, align 32, offset 0] [from uint32_t]
!259 = metadata !{i32 786454, metadata !239, null, metadata !"uint32_t", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [uint32_t] [line 51, size 0, align 0, offset 0] [from unsigned int]
!260 = metadata !{i32 786445, metadata !239, metadata !256, metadata !"sigspec", i32 74, i64 64, i64 64, i64 64, i32 0, metadata !261} ; [ DW_TAG_member ] [sigspec] [line 74, size 64, align 64, offset 64] [from ]
!261 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !262} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!262 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !263} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_sig_spec]
!263 = metadata !{i32 786451, metadata !239, null, metadata !"macan_sig_spec", i32 51, i64 64, i64 16, i32 0, i32 0, null, metadata !264, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_sig_spec] [line 51, size 64, align 16, offset 0] [from ]
!264 = metadata !{metadata !265, metadata !267, metadata !268, metadata !270, metadata !271}
!265 = metadata !{i32 786445, metadata !239, metadata !263, metadata !"can_nsid", i32 52, i64 16, i64 16, i64 0, i32 0, metadata !266} ; [ DW_TAG_member ] [can_nsid] [line 52, size 16, align 16, offset 0] [from uint16_t]
!266 = metadata !{i32 786454, metadata !239, null, metadata !"uint16_t", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [uint16_t] [line 49, size 0, align 0, offset 0] [from unsigned short]
!267 = metadata !{i32 786445, metadata !239, metadata !263, metadata !"can_sid", i32 53, i64 16, i64 16, i64 16, i32 0, metadata !266} ; [ DW_TAG_member ] [can_sid] [line 53, size 16, align 16, offset 16] [from uint16_t]
!268 = metadata !{i32 786445, metadata !239, metadata !263, metadata !"src_id", i32 54, i64 8, i64 8, i64 32, i32 0, metadata !269} ; [ DW_TAG_member ] [src_id] [line 54, size 8, align 8, offset 32] [from uint8_t]
!269 = metadata !{i32 786454, metadata !239, null, metadata !"uint8_t", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [uint8_t] [line 48, size 0, align 0, offset 0] [from unsigned char]
!270 = metadata !{i32 786445, metadata !239, metadata !263, metadata !"dst_id", i32 55, i64 8, i64 8, i64 40, i32 0, metadata !269} ; [ DW_TAG_member ] [dst_id] [line 55, size 8, align 8, offset 40] [from uint8_t]
!271 = metadata !{i32 786445, metadata !239, metadata !263, metadata !"presc", i32 56, i64 8, i64 8, i64 48, i32 0, metadata !269} ; [ DW_TAG_member ] [presc] [line 56, size 8, align 8, offset 48] [from uint8_t]
!272 = metadata !{i32 786445, metadata !239, metadata !256, metadata !"node_count", i32 75, i64 8, i64 8, i64 128, i32 0, metadata !269} ; [ DW_TAG_member ] [node_count] [line 75, size 8, align 8, offset 128] [from uint8_t]
!273 = metadata !{i32 786445, metadata !239, metadata !256, metadata !"canid", i32 76, i64 64, i64 64, i64 192, i32 0, metadata !274} ; [ DW_TAG_member ] [canid] [line 76, size 64, align 64, offset 192] [from ]
!274 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !275} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!275 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !276} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_can_ids]
!276 = metadata !{i32 786451, metadata !239, null, metadata !"macan_can_ids", i32 64, i64 128, i64 64, i32 0, i32 0, null, metadata !277, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_can_ids] [line 64, size 128, align 64, offset 0] [from ]
!277 = metadata !{metadata !278, metadata !279}
!278 = metadata !{i32 786445, metadata !239, metadata !276, metadata !"time", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !259} ; [ DW_TAG_member ] [time] [line 65, size 32, align 32, offset 0] [from uint32_t]
!279 = metadata !{i32 786445, metadata !239, metadata !276, metadata !"ecu", i32 66, i64 64, i64 64, i64 64, i32 0, metadata !280} ; [ DW_TAG_member ] [ecu] [line 66, size 64, align 64, offset 64] [from ]
!280 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !281} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ecu]
!281 = metadata !{i32 786451, metadata !239, null, metadata !"macan_ecu", i32 59, i64 128, i64 64, i32 0, i32 0, null, metadata !282, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ecu] [line 59, size 128, align 64, offset 0] [from ]
!282 = metadata !{metadata !283, metadata !284}
!283 = metadata !{i32 786445, metadata !239, metadata !281, metadata !"canid", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !259} ; [ DW_TAG_member ] [canid] [line 60, size 32, align 32, offset 0] [from uint32_t]
!284 = metadata !{i32 786445, metadata !239, metadata !281, metadata !"name", i32 61, i64 64, i64 64, i64 64, i32 0, metadata !114} ; [ DW_TAG_member ] [name] [line 61, size 64, align 64, offset 64] [from ]
!285 = metadata !{i32 786445, metadata !239, metadata !256, metadata !"key_server_id", i32 77, i64 8, i64 8, i64 256, i32 0, metadata !286} ; [ DW_TAG_member ] [key_server_id] [line 77, size 8, align 8, offset 256] [from macan_ecuid]
!286 = metadata !{i32 786454, metadata !239, null, metadata !"macan_ecuid", i32 37, i64 0, i64 0, i64 0, i32 0, metadata !269} ; [ DW_TAG_typedef ] [macan_ecuid] [line 37, size 0, align 0, offset 0] [from uint8_t]
!287 = metadata !{i32 786445, metadata !239, metadata !256, metadata !"time_server_id", i32 78, i64 8, i64 8, i64 264, i32 0, metadata !286} ; [ DW_TAG_member ] [time_server_id] [line 78, size 8, align 8, offset 264] [from macan_ecuid]
!288 = metadata !{i32 786445, metadata !239, metadata !256, metadata !"time_div", i32 79, i64 32, i64 32, i64 288, i32 0, metadata !259} ; [ DW_TAG_member ] [time_div] [line 79, size 32, align 32, offset 288] [from uint32_t]
!289 = metadata !{i32 786445, metadata !239, metadata !256, metadata !"skey_validity", i32 80, i64 64, i64 64, i64 320, i32 0, metadata !290} ; [ DW_TAG_member ] [skey_validity] [line 80, size 64, align 64, offset 320] [from uint64_t]
!290 = metadata !{i32 786454, metadata !239, null, metadata !"uint64_t", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [uint64_t] [line 55, size 0, align 0, offset 0] [from long unsigned int]
!291 = metadata !{i32 786445, metadata !239, metadata !256, metadata !"skey_chg_timeout", i32 81, i64 32, i64 32, i64 384, i32 0, metadata !259} ; [ DW_TAG_member ] [skey_chg_timeout] [line 81, size 32, align 32, offset 384] [from uint32_t]
!292 = metadata !{i32 786445, metadata !239, metadata !256, metadata !"time_timeout", i32 82, i64 32, i64 32, i64 416, i32 0, metadata !259} ; [ DW_TAG_member ] [time_timeout] [line 82, size 32, align 32, offset 416] [from uint32_t]
!293 = metadata !{i32 786445, metadata !239, metadata !256, metadata !"time_delta", i32 83, i64 32, i64 32, i64 448, i32 0, metadata !259} ; [ DW_TAG_member ] [time_delta] [line 83, size 32, align 32, offset 448] [from uint32_t]
!294 = metadata !{i32 786445, metadata !251, metadata !250, metadata !"node", i32 152, i64 64, i64 64, i64 64, i32 0, metadata !295} ; [ DW_TAG_member ] [node] [line 152, size 64, align 64, offset 64] [from ]
!295 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !296} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!296 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !297} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_node_config]
!297 = metadata !{i32 786451, metadata !239, null, metadata !"macan_node_config", i32 89, i64 128, i64 64, i32 0, i32 0, null, metadata !298, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_node_config] [line 89, size 128, align 64, offset 0] [from
!298 = metadata !{metadata !299, metadata !300}
!299 = metadata !{i32 786445, metadata !239, metadata !297, metadata !"node_id", i32 90, i64 8, i64 8, i64 0, i32 0, metadata !286} ; [ DW_TAG_member ] [node_id] [line 90, size 8, align 8, offset 0] [from macan_ecuid]
!300 = metadata !{i32 786445, metadata !239, metadata !297, metadata !"ltk", i32 91, i64 64, i64 64, i64 64, i32 0, metadata !301} ; [ DW_TAG_member ] [ltk] [line 91, size 64, align 64, offset 64] [from ]
!301 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !302} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!302 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !303} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_key]
!303 = metadata !{i32 786451, metadata !239, null, metadata !"macan_key", i32 97, i64 128, i64 8, i32 0, i32 0, null, metadata !304, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_key] [line 97, size 128, align 8, offset 0] [from ]
!304 = metadata !{metadata !305}
!305 = metadata !{i32 786445, metadata !239, metadata !303, metadata !"data", i32 98, i64 128, i64 8, i64 0, i32 0, metadata !306} ; [ DW_TAG_member ] [data] [line 98, size 128, align 8, offset 0] [from ]
!306 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 8, i32 0, i32 0, metadata !269, metadata !88, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from uint8_t]
!307 = metadata !{i32 786445, metadata !251, metadata !250, metadata !"cpart", i32 153, i64 64, i64 64, i64 128, i32 0, metadata !308} ; [ DW_TAG_member ] [cpart] [line 153, size 64, align 64, offset 128] [from ]
!308 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !309} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!309 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !310} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from com_part]
!310 = metadata !{i32 786451, metadata !251, null, metadata !"com_part", i32 113, i64 448, i64 64, i32 0, i32 0, null, metadata !311, i32 0, null, null} ; [ DW_TAG_structure_type ] [com_part] [line 113, size 448, align 64, offset 0] [from ]
!311 = metadata !{metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !318, metadata !319, metadata !320, metadata !321}
!312 = metadata !{i32 786445, metadata !251, metadata !310, metadata !"key_received", i32 114, i64 8, i64 8, i64 0, i32 0, metadata !157} ; [ DW_TAG_member ] [key_received] [line 114, size 8, align 8, offset 0] [from _Bool]
!313 = metadata !{i32 786445, metadata !251, metadata !310, metadata !"skey", i32 115, i64 128, i64 8, i64 8, i32 0, metadata !303} ; [ DW_TAG_member ] [skey] [line 115, size 128, align 8, offset 8] [from macan_key]
!314 = metadata !{i32 786445, metadata !251, metadata !310, metadata !"valid_until", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !290} ; [ DW_TAG_member ] [valid_until] [line 116, size 64, align 64, offset 192] [from uint64_t]
!315 = metadata !{i32 786445, metadata !251, metadata !310, metadata !"awaiting_skey", i32 117, i64 8, i64 8, i64 256, i32 0, metadata !157} ; [ DW_TAG_member ] [awaiting_skey] [line 117, size 8, align 8, offset 256] [from _Bool]
!316 = metadata !{i32 786445, metadata !251, metadata !310, metadata !"chg", i32 118, i64 48, i64 8, i64 264, i32 0, metadata !317} ; [ DW_TAG_member ] [chg] [line 118, size 48, align 8, offset 264] [from ]
!317 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !269, metadata !163, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from uint8_t]
!318 = metadata !{i32 786445, metadata !251, metadata !310, metadata !"flags", i32 119, i64 8, i64 8, i64 312, i32 0, metadata !269} ; [ DW_TAG_member ] [flags] [line 119, size 8, align 8, offset 312] [from uint8_t]
!319 = metadata !{i32 786445, metadata !251, metadata !310, metadata !"group_field", i32 120, i64 32, i64 32, i64 320, i32 0, metadata !259} ; [ DW_TAG_member ] [group_field] [line 120, size 32, align 32, offset 320] [from uint32_t]
!320 = metadata !{i32 786445, metadata !251, metadata !310, metadata !"ecu_id", i32 121, i64 8, i64 8, i64 352, i32 0, metadata !286} ; [ DW_TAG_member ] [ecu_id] [line 121, size 8, align 8, offset 352] [from macan_ecuid]
!321 = metadata !{i32 786445, metadata !251, metadata !310, metadata !"skey_callback", i32 122, i64 64, i64 64, i64 384, i32 0, metadata !322} ; [ DW_TAG_member ] [skey_callback] [line 122, size 64, align 64, offset 384] [from ]
!322 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !323} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!323 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !324, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!324 = metadata !{null, metadata !249, metadata !286}
!325 = metadata !{i32 786445, metadata !251, metadata !250, metadata !"sighand", i32 154, i64 64, i64 64, i64 192, i32 0, metadata !326} ; [ DW_TAG_member ] [sighand] [line 154, size 64, align 64, offset 192] [from ]
!326 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !327} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!327 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !328} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sig_handle]
!328 = metadata !{i32 786451, metadata !251, null, metadata !"sig_handle", i32 130, i64 192, i64 64, i32 0, i32 0, null, metadata !329, i32 0, null, null} ; [ DW_TAG_structure_type ] [sig_handle] [line 130, size 192, align 64, offset 0] [from ]
!329 = metadata !{metadata !330, metadata !331, metadata !332, metadata !333, metadata !337}
!330 = metadata !{i32 786445, metadata !251, metadata !328, metadata !"presc", i32 131, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [presc] [line 131, size 32, align 32, offset 0] [from int]
!331 = metadata !{i32 786445, metadata !251, metadata !328, metadata !"presc_cnt", i32 133, i64 8, i64 8, i64 32, i32 0, metadata !269} ; [ DW_TAG_member ] [presc_cnt] [line 133, size 8, align 8, offset 32] [from uint8_t]
!332 = metadata !{i32 786445, metadata !251, metadata !328, metadata !"flags", i32 135, i64 8, i64 8, i64 40, i32 0, metadata !269} ; [ DW_TAG_member ] [flags] [line 135, size 8, align 8, offset 40] [from uint8_t]
!333 = metadata !{i32 786445, metadata !251, metadata !328, metadata !"cback", i32 136, i64 64, i64 64, i64 64, i32 0, metadata !334} ; [ DW_TAG_member ] [cback] [line 136, size 64, align 64, offset 64] [from ]
!334 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !335} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!335 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !336, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!336 = metadata !{null, metadata !269, metadata !259}
!337 = metadata !{i32 786445, metadata !251, metadata !328, metadata !"invalid_cback", i32 137, i64 64, i64 64, i64 128, i32 0, metadata !334} ; [ DW_TAG_member ] [invalid_cback] [line 137, size 64, align 64, offset 128] [from ]
!338 = metadata !{i32 786445, metadata !251, metadata !250, metadata !"time", i32 155, i64 320, i64 64, i64 256, i32 0, metadata !339} ; [ DW_TAG_member ] [time] [line 155, size 320, align 64, offset 256] [from macan_timekeeping]
!339 = metadata !{i32 786451, metadata !251, null, metadata !"macan_timekeeping", i32 93, i64 320, i64 64, i32 0, i32 0, null, metadata !340, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_timekeeping] [line 93, size 320, align 64, offset 0] [from
!340 = metadata !{metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346}
!341 = metadata !{i32 786445, metadata !251, metadata !339, metadata !"offs", i32 94, i64 64, i64 64, i64 0, i32 0, metadata !290} ; [ DW_TAG_member ] [offs] [line 94, size 64, align 64, offset 0] [from uint64_t]
!342 = metadata !{i32 786445, metadata !251, metadata !339, metadata !"nonauth_ts", i32 96, i64 32, i64 32, i64 64, i32 0, metadata !259} ; [ DW_TAG_member ] [nonauth_ts] [line 96, size 32, align 32, offset 64] [from uint32_t]
!343 = metadata !{i32 786445, metadata !251, metadata !339, metadata !"nonauth_loc", i32 97, i64 64, i64 64, i64 128, i32 0, metadata !290} ; [ DW_TAG_member ] [nonauth_loc] [line 97, size 64, align 64, offset 128] [from uint64_t]
!344 = metadata !{i32 786445, metadata !251, metadata !339, metadata !"chal_ts", i32 99, i64 64, i64 64, i64 192, i32 0, metadata !290} ; [ DW_TAG_member ] [chal_ts] [line 99, size 64, align 64, offset 192] [from uint64_t]
!345 = metadata !{i32 786445, metadata !251, metadata !339, metadata !"chg", i32 100, i64 48, i64 8, i64 256, i32 0, metadata !317} ; [ DW_TAG_member ] [chg] [line 100, size 48, align 8, offset 256] [from ]
!346 = metadata !{i32 786445, metadata !251, metadata !339, metadata !"ready", i32 101, i64 8, i64 8, i64 304, i32 0, metadata !157} ; [ DW_TAG_member ] [ready] [line 101, size 8, align 8, offset 304] [from _Bool]
!347 = metadata !{i32 786445, metadata !251, metadata !250, metadata !"keywrap", i32 156, i64 256, i64 8, i64 576, i32 0, metadata !348} ; [ DW_TAG_member ] [keywrap] [line 156, size 256, align 8, offset 576] [from ]
!348 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !269, metadata !195, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from uint8_t]
!349 = metadata !{i32 786445, metadata !251, metadata !250, metadata !"rcvd_skey_seq", i32 157, i64 32, i64 32, i64 832, i32 0, metadata !12} ; [ DW_TAG_member ] [rcvd_skey_seq] [line 157, size 32, align 32, offset 832] [from unsigned int]
!350 = metadata !{i32 786445, metadata !251, metadata !250, metadata !"sockfd", i32 158, i64 32, i64 32, i64 864, i32 0, metadata !19} ; [ DW_TAG_member ] [sockfd] [line 158, size 32, align 32, offset 864] [from int]
!351 = metadata !{i32 786445, metadata !251, metadata !250, metadata !"loop", i32 159, i64 64, i64 64, i64 896, i32 0, metadata !352} ; [ DW_TAG_member ] [loop] [line 159, size 64, align 64, offset 896] [from ]
!352 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !353} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_loop]
!353 = metadata !{i32 786454, metadata !251, null, metadata !"macan_ev_loop", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !354} ; [ DW_TAG_typedef ] [macan_ev_loop] [line 55, size 0, align 0, offset 0] [from macan_ev_loop]
!354 = metadata !{i32 786451, metadata !355, null, metadata !"macan_ev_loop", i32 52, i64 128, i64 64, i32 0, i32 0, null, metadata !356, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ev_loop] [line 52, size 128, align 64, offset 0] [from ]
!355 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_compiled/include/macan_ev.h", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src"}
!356 = metadata !{metadata !357, metadata !383}
!357 = metadata !{i32 786445, metadata !355, metadata !354, metadata !"cans", i32 53, i64 64, i64 64, i64 0, i32 0, metadata !358} ; [ DW_TAG_member ] [cans] [line 53, size 64, align 64, offset 0] [from ]
!358 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !359} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_can]
!359 = metadata !{i32 786454, metadata !355, null, metadata !"macan_ev_can", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !360} ; [ DW_TAG_typedef ] [macan_ev_can] [line 41, size 0, align 0, offset 0] [from macan_ev_can]
!360 = metadata !{i32 786451, metadata !355, null, metadata !"macan_ev_can", i32 35, i64 320, i64 64, i32 0, i32 0, null, metadata !361, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ev_can] [line 35, size 320, align 64, offset 0] [from ]
!361 = metadata !{metadata !362, metadata !368, metadata !369, metadata !370, metadata !382}
!362 = metadata !{i32 786445, metadata !355, metadata !360, metadata !"cb", i32 36, i64 64, i64 64, i64 0, i32 0, metadata !363} ; [ DW_TAG_member ] [cb] [line 36, size 64, align 64, offset 0] [from ]
!363 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !364} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!364 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !365, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!365 = metadata !{null, metadata !366, metadata !367, metadata !19}
!366 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !354} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_loop]
!367 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !360} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_can]
!368 = metadata !{i32 786445, metadata !355, metadata !360, metadata !"next", i32 37, i64 64, i64 64, i64 64, i32 0, metadata !367} ; [ DW_TAG_member ] [next] [line 37, size 64, align 64, offset 64] [from ]
!369 = metadata !{i32 786445, metadata !355, metadata !360, metadata !"canfd", i32 38, i64 32, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [canfd] [line 38, size 32, align 32, offset 128] [from int]
!370 = metadata !{i32 786445, metadata !355, metadata !360, metadata !"received", i32 39, i64 64, i64 64, i64 192, i32 0, metadata !371} ; [ DW_TAG_member ] [received] [line 39, size 64, align 64, offset 192] [from ]
!371 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !372} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from can_frame]
!372 = metadata !{i32 786451, metadata !373, null, metadata !"can_frame", i32 68, i64 128, i64 64, i32 0, i32 0, null, metadata !374, i32 0, null, null} ; [ DW_TAG_structure_type ] [can_frame] [line 68, size 128, align 64, offset 0] [from ]
!373 = metadata !{metadata !"/usr/local/include/linux/can.h", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src"}
!374 = metadata !{metadata !375, metadata !378, metadata !380}
!375 = metadata !{i32 786445, metadata !373, metadata !372, metadata !"can_id", i32 69, i64 32, i64 32, i64 0, i32 0, metadata !376} ; [ DW_TAG_member ] [can_id] [line 69, size 32, align 32, offset 0] [from canid_t]
!376 = metadata !{i32 786454, metadata !373, null, metadata !"canid_t", i32 39, i64 0, i64 0, i64 0, i32 0, metadata !377} ; [ DW_TAG_typedef ] [canid_t] [line 39, size 0, align 0, offset 0] [from __u32]
!377 = metadata !{i32 786454, metadata !373, null, metadata !"__u32", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [__u32] [line 26, size 0, align 0, offset 0] [from unsigned int]
!378 = metadata !{i32 786445, metadata !373, metadata !372, metadata !"can_dlc", i32 70, i64 8, i64 8, i64 32, i32 0, metadata !379} ; [ DW_TAG_member ] [can_dlc] [line 70, size 8, align 8, offset 32] [from __u8]
!379 = metadata !{i32 786454, metadata !373, null, metadata !"__u8", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [__u8] [line 20, size 0, align 0, offset 0] [from unsigned char]
!380 = metadata !{i32 786445, metadata !373, metadata !372, metadata !"data", i32 71, i64 64, i64 8, i64 64, i32 0, metadata !381} ; [ DW_TAG_member ] [data] [line 71, size 64, align 8, offset 64] [from ]
!381 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 8, i32 0, i32 0, metadata !379, metadata !52, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from __u8]
!382 = metadata !{i32 786445, metadata !355, metadata !360, metadata !"data", i32 40, i64 64, i64 64, i64 256, i32 0, metadata !55} ; [ DW_TAG_member ] [data] [line 40, size 64, align 64, offset 256] [from ]
!383 = metadata !{i32 786445, metadata !355, metadata !354, metadata !"timers", i32 54, i64 64, i64 64, i64 64, i32 0, metadata !384} ; [ DW_TAG_member ] [timers] [line 54, size 64, align 64, offset 64] [from ]
!384 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !385} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_timer]
!385 = metadata !{i32 786454, metadata !355, null, metadata !"macan_ev_timer", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !386} ; [ DW_TAG_typedef ] [macan_ev_timer] [line 50, size 0, align 0, offset 0] [from macan_ev_timer]
!386 = metadata !{i32 786451, metadata !355, null, metadata !"macan_ev_timer", i32 43, i64 320, i64 64, i32 0, i32 0, null, metadata !387, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ev_timer] [line 43, size 320, align 64, offset 0] [from ]
!387 = metadata !{metadata !388, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397}
!388 = metadata !{i32 786445, metadata !355, metadata !386, metadata !"cb", i32 44, i64 64, i64 64, i64 0, i32 0, metadata !389} ; [ DW_TAG_member ] [cb] [line 44, size 64, align 64, offset 0] [from ]
!389 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !390} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!390 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !391, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!391 = metadata !{null, metadata !366, metadata !392, metadata !19}
!392 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !386} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_timer]
!393 = metadata !{i32 786445, metadata !355, metadata !386, metadata !"next", i32 45, i64 64, i64 64, i64 64, i32 0, metadata !392} ; [ DW_TAG_member ] [next] [line 45, size 64, align 64, offset 64] [from ]
!394 = metadata !{i32 786445, metadata !355, metadata !386, metadata !"after_us", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !12} ; [ DW_TAG_member ] [after_us] [line 46, size 32, align 32, offset 128] [from unsigned int]
!395 = metadata !{i32 786445, metadata !355, metadata !386, metadata !"repeat_us", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !12} ; [ DW_TAG_member ] [repeat_us] [line 47, size 32, align 32, offset 160] [from unsigned int]
!396 = metadata !{i32 786445, metadata !355, metadata !386, metadata !"expire_us", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !290} ; [ DW_TAG_member ] [expire_us] [line 48, size 64, align 64, offset 192] [from uint64_t]
!397 = metadata !{i32 786445, metadata !355, metadata !386, metadata !"data", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !55} ; [ DW_TAG_member ] [data] [line 49, size 64, align 64, offset 256] [from ]
!398 = metadata !{i32 786445, metadata !251, metadata !250, metadata !"can_watcher", i32 160, i64 320, i64 64, i64 960, i32 0, metadata !359} ; [ DW_TAG_member ] [can_watcher] [line 160, size 320, align 64, offset 960] [from macan_ev_can]
!399 = metadata !{i32 786445, metadata !251, metadata !250, metadata !"housekeeping", i32 161, i64 320, i64 64, i64 1280, i32 0, metadata !385} ; [ DW_TAG_member ] [housekeeping] [line 161, size 320, align 64, offset 1280] [from macan_ev_timer]
!400 = metadata !{i32 786445, metadata !251, metadata !250, metadata !"print_msg_enabled", i32 162, i64 8, i64 8, i64 1600, i32 0, metadata !157} ; [ DW_TAG_member ] [print_msg_enabled] [line 162, size 8, align 8, offset 1600] [from _Bool]
!401 = metadata !{i32 786445, metadata !251, metadata !250, metadata !"dump_disabled", i32 164, i64 8, i64 8, i64 1608, i32 0, metadata !157} ; [ DW_TAG_member ] [dump_disabled] [line 164, size 8, align 8, offset 1608] [from _Bool]
!402 = metadata !{i32 786445, metadata !251, metadata !250, metadata !"", i32 166, i64 448, i64 64, i64 1664, i32 0, metadata !403} ; [ DW_TAG_member ] [line 166, size 448, align 64, offset 1664] [from ]
!403 = metadata !{i32 786455, metadata !251, metadata !250, metadata !"", i32 166, i64 448, i64 64, i64 0, i32 0, null, metadata !404, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 166, size 448, align 64, offset 0] [from ]
!404 = metadata !{metadata !405, metadata !416}
!405 = metadata !{i32 786445, metadata !251, metadata !403, metadata !"ts", i32 174, i64 448, i64 64, i64 0, i32 0, metadata !406} ; [ DW_TAG_member ] [ts] [line 174, size 448, align 64, offset 0] [from ]
!406 = metadata !{i32 786451, metadata !251, metadata !403, metadata !"", i32 167, i64 448, i64 64, i32 0, i32 0, null, metadata !407, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 167, size 448, align 64, offset 0] [from ]
!407 = metadata !{metadata !408, metadata !409, metadata !410}
!408 = metadata !{i32 786445, metadata !251, metadata !406, metadata !"time_bcast", i32 168, i64 320, i64 64, i64 0, i32 0, metadata !385} ; [ DW_TAG_member ] [time_bcast] [line 168, size 320, align 64, offset 0] [from macan_ev_timer]
!409 = metadata !{i32 786445, metadata !251, metadata !406, metadata !"bcast_time", i32 169, i64 64, i64 64, i64 320, i32 0, metadata !290} ; [ DW_TAG_member ] [bcast_time] [line 169, size 64, align 64, offset 320] [from uint64_t]
!410 = metadata !{i32 786445, metadata !251, metadata !406, metadata !"auth_req", i32 173, i64 64, i64 64, i64 384, i32 0, metadata !411} ; [ DW_TAG_member ] [auth_req] [line 173, size 64, align 64, offset 384] [from ]
!411 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !412} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!412 = metadata !{i32 786451, metadata !251, metadata !406, metadata !"", i32 170, i64 56, i64 8, i32 0, i32 0, null, metadata !413, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 170, size 56, align 8, offset 0] [from ]
!413 = metadata !{metadata !414, metadata !415}
!414 = metadata !{i32 786445, metadata !251, metadata !412, metadata !"pending", i32 171, i64 8, i64 8, i64 0, i32 0, metadata !157} ; [ DW_TAG_member ] [pending] [line 171, size 8, align 8, offset 0] [from _Bool]
!415 = metadata !{i32 786445, metadata !251, metadata !412, metadata !"chg", i32 172, i64 48, i64 8, i64 8, i32 0, metadata !317} ; [ DW_TAG_member ] [chg] [line 172, size 48, align 8, offset 8] [from ]
!416 = metadata !{i32 786445, metadata !251, metadata !403, metadata !"ks", i32 179, i64 448, i64 64, i64 0, i32 0, metadata !417} ; [ DW_TAG_member ] [ks] [line 179, size 448, align 64, offset 0] [from ]
!417 = metadata !{i32 786451, metadata !251, metadata !403, metadata !"", i32 175, i64 448, i64 64, i32 0, i32 0, null, metadata !418, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 175, size 448, align 64, offset 0] [from ]
!418 = metadata !{metadata !419, metadata !422, metadata !423}
!419 = metadata !{i32 786445, metadata !251, metadata !417, metadata !"ltk", i32 176, i64 64, i64 64, i64 0, i32 0, metadata !420} ; [ DW_TAG_member ] [ltk] [line 176, size 64, align 64, offset 0] [from ]
!420 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !421} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!421 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !301} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!422 = metadata !{i32 786445, metadata !251, metadata !417, metadata !"time_bcast", i32 177, i64 320, i64 64, i64 64, i32 0, metadata !385} ; [ DW_TAG_member ] [time_bcast] [line 177, size 320, align 64, offset 64] [from macan_ev_timer]
!423 = metadata !{i32 786445, metadata !251, metadata !417, metadata !"bcast_time", i32 178, i64 64, i64 64, i64 384, i32 0, metadata !290} ; [ DW_TAG_member ] [bcast_time] [line 178, size 64, align 64, offset 384] [from uint64_t]
!424 = metadata !{i32 786454, metadata !227, null, metadata !"macan_sig_cback", i32 104, i64 0, i64 0, i64 0, i32 0, metadata !334} ; [ DW_TAG_typedef ] [macan_sig_cback] [line 104, size 0, align 0, offset 0] [from ]
!425 = metadata !{metadata !426, metadata !427, metadata !428, metadata !429}
!426 = metadata !{i32 786689, metadata !245, metadata !"ctx", metadata !246, i32 16777295, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 79]
!427 = metadata !{i32 786689, metadata !245, metadata !"sig_num", metadata !246, i32 33554511, metadata !269, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sig_num] [line 79]
!428 = metadata !{i32 786689, metadata !245, metadata !"fnc", metadata !246, i32 50331727, metadata !424, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnc] [line 79]
!429 = metadata !{i32 786689, metadata !245, metadata !"invalid_cmac", metadata !246, i32 67108943, metadata !424, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [invalid_cmac] [line 79]
!430 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"is_skey_ready", metadata !"is_skey_ready", metadata !"", i32 558, metadata !431, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i1 (%struct.macan_ctx*, i8)* @is_skey_ready, 
!431 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !432, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!432 = metadata !{metadata !157, metadata !249, metadata !286}
!433 = metadata !{metadata !434, metadata !435, metadata !436}
!434 = metadata !{i32 786689, metadata !430, metadata !"ctx", metadata !246, i32 16777774, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 558]
!435 = metadata !{i32 786689, metadata !430, metadata !"dst_id", metadata !246, i32 33554990, metadata !286, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst_id] [line 558]
!436 = metadata !{i32 786688, metadata !430, metadata !"cpart", metadata !246, i32 562, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cpart] [line 562]
!437 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"macan_send_sig", metadata !"macan_send_sig", metadata !"", i32 658, metadata !438, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !440, i32 659} ;
!438 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !439, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!439 = metadata !{null, metadata !249, metadata !269, metadata !259}
!440 = metadata !{metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446}
!441 = metadata !{i32 786689, metadata !437, metadata !"ctx", metadata !246, i32 16777874, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 658]
!442 = metadata !{i32 786689, metadata !437, metadata !"sig_num", metadata !246, i32 33555090, metadata !269, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sig_num] [line 658]
!443 = metadata !{i32 786689, metadata !437, metadata !"sig_val", metadata !246, i32 50332306, metadata !259, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sig_val] [line 658]
!444 = metadata !{i32 786688, metadata !437, metadata !"dst_id", metadata !246, i32 663, metadata !286, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst_id] [line 663]
!445 = metadata !{i32 786688, metadata !437, metadata !"sighand", metadata !246, i32 664, metadata !326, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sighand] [line 664]
!446 = metadata !{i32 786688, metadata !437, metadata !"sigspec", metadata !246, i32 665, metadata !261, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sigspec] [line 665]
!447 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"macan_request_key", metadata !"macan_request_key", metadata !"", i32 827, metadata !323, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.macan_ctx*, i8)* @macan
!448 = metadata !{metadata !449, metadata !450, metadata !451}
!449 = metadata !{i32 786689, metadata !447, metadata !"ctx", metadata !246, i32 16778043, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 827]
!450 = metadata !{i32 786689, metadata !447, metadata !"fwd_id", metadata !246, i32 33555259, metadata !286, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fwd_id] [line 827]
!451 = metadata !{i32 786688, metadata !447, metadata !"cpart", metadata !246, i32 830, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cpart] [line 830]
!452 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"macan_request_expired_keys", metadata !"macan_request_expired_keys", metadata !"", i32 847, metadata !453, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, m
!453 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !454, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!454 = metadata !{null, metadata !249}
!455 = metadata !{metadata !456, metadata !457, metadata !458}
!456 = metadata !{i32 786689, metadata !452, metadata !"ctx", metadata !246, i32 16778063, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 847]
!457 = metadata !{i32 786688, metadata !452, metadata !"i", metadata !246, i32 850, metadata !269, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 850]
!458 = metadata !{i32 786688, metadata !452, metadata !"cpart", metadata !246, i32 851, metadata !308, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cpart] [line 851]
!459 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"macan_get_time", metadata !"macan_get_time", metadata !"", i32 861, metadata !460, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !462, i32 862} ;
!460 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !461, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!461 = metadata !{metadata !290, metadata !249}
!462 = metadata !{metadata !463}
!463 = metadata !{i32 786689, metadata !459, metadata !"ctx", metadata !246, i32 16778077, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 861]
!464 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"macan_process_frame", metadata !"macan_process_frame", metadata !"", i32 904, metadata !465, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !469, 
!465 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !466, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!466 = metadata !{metadata !238, metadata !249, metadata !467}
!467 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !468} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!468 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !372} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from can_frame]
!469 = metadata !{metadata !470, metadata !471, metadata !472, metadata !473, metadata !474}
!470 = metadata !{i32 786689, metadata !464, metadata !"ctx", metadata !246, i32 16778120, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 904]
!471 = metadata !{i32 786689, metadata !464, metadata !"cf", metadata !246, i32 33555336, metadata !467, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 904]
!472 = metadata !{i32 786688, metadata !464, metadata !"sig32_num", metadata !246, i32 906, metadata !259, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sig32_num] [line 906]
!473 = metadata !{i32 786688, metadata !464, metadata !"src", metadata !246, i32 907, metadata !286, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 907]
!474 = metadata !{i32 786688, metadata !475, metadata !"fwd_id", metadata !246, i32 948, metadata !286, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fwd_id] [line 948]
!475 = metadata !{i32 786443, metadata !227, metadata !476, i32 946, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan.c
!476 = metadata !{i32 786443, metadata !227, metadata !464, i32 941, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan.c
!477 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"is_32bit_signal", metadata !"is_32bit_signal", metadata !"", i32 984, metadata !478, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !480, i32 985}
!478 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !479, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!479 = metadata !{metadata !157, metadata !249, metadata !269}
!480 = metadata !{metadata !481, metadata !482}
!481 = metadata !{i32 786689, metadata !477, metadata !"ctx", metadata !246, i32 16778200, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 984]
!482 = metadata !{i32 786689, metadata !477, metadata !"sig_num", metadata !246, i32 33555416, metadata !269, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sig_num] [line 984]
!483 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"macan_canid2ecuid", metadata !"macan_canid2ecuid", metadata !"", i32 999, metadata !484, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !487, i32 
!484 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !485, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!485 = metadata !{metadata !157, metadata !254, metadata !259, metadata !486}
!486 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !286} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ecuid]
!487 = metadata !{metadata !488, metadata !489, metadata !490, metadata !491}
!488 = metadata !{i32 786689, metadata !483, metadata !"cfg", metadata !246, i32 16778215, metadata !254, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cfg] [line 999]
!489 = metadata !{i32 786689, metadata !483, metadata !"can_id", metadata !246, i32 33555431, metadata !259, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [can_id] [line 999]
!490 = metadata !{i32 786689, metadata !483, metadata !"ecu_id", metadata !246, i32 50332647, metadata !486, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ecu_id] [line 999]
!491 = metadata !{i32 786688, metadata !483, metadata !"i", metadata !246, i32 1001, metadata !286, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1001]
!492 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"canid2cpart", metadata !"canid2cpart", metadata !"", i32 1025, metadata !493, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !495, i32 1026} ; [ D
!493 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !494, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!494 = metadata !{metadata !309, metadata !249, metadata !259}
!495 = metadata !{metadata !496, metadata !497, metadata !498}
!496 = metadata !{i32 786689, metadata !492, metadata !"ctx", metadata !246, i32 16778241, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 1025]
!497 = metadata !{i32 786689, metadata !492, metadata !"can_id", metadata !246, i32 33555457, metadata !259, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [can_id] [line 1025]
!498 = metadata !{i32 786688, metadata !492, metadata !"ecu_id", metadata !246, i32 1027, metadata !286, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ecu_id] [line 1027]
!499 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"macan_housekeeping_cb", metadata !"macan_housekeeping_cb", metadata !"", i32 1043, metadata !500, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.macan_ev_loop*
!500 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !501, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!501 = metadata !{null, metadata !352, metadata !384, metadata !19}
!502 = metadata !{metadata !503, metadata !504, metadata !505, metadata !506}
!503 = metadata !{i32 786689, metadata !499, metadata !"loop", metadata !246, i32 16778259, metadata !352, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loop] [line 1043]
!504 = metadata !{i32 786689, metadata !499, metadata !"w", metadata !246, i32 33555475, metadata !384, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [w] [line 1043]
!505 = metadata !{i32 786689, metadata !499, metadata !"revents", metadata !246, i32 50332691, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [revents] [line 1043]
!506 = metadata !{i32 786688, metadata !499, metadata !"ctx", metadata !246, i32 1047, metadata !249, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 1047]
!507 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"can_rx_cb", metadata !"can_rx_cb", metadata !"", i32 1053, metadata !508, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.macan_ev_loop*, %struct.macan_ev_can*,
!508 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !509, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!509 = metadata !{null, metadata !352, metadata !358, metadata !19}
!510 = metadata !{metadata !511, metadata !512, metadata !513, metadata !514, metadata !515}
!511 = metadata !{i32 786689, metadata !507, metadata !"loop", metadata !246, i32 16778269, metadata !352, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loop] [line 1053]
!512 = metadata !{i32 786689, metadata !507, metadata !"w", metadata !246, i32 33555485, metadata !358, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [w] [line 1053]
!513 = metadata !{i32 786689, metadata !507, metadata !"revents", metadata !246, i32 50332701, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [revents] [line 1053]
!514 = metadata !{i32 786688, metadata !507, metadata !"ctx", metadata !246, i32 1057, metadata !249, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 1057]
!515 = metadata !{i32 786688, metadata !507, metadata !"cf", metadata !246, i32 1058, metadata !372, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cf] [line 1058]
!516 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"__macan_init_cpart", metadata !"__macan_init_cpart", metadata !"", i32 1064, metadata !323, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !517, i
!517 = metadata !{metadata !518, metadata !519}
!518 = metadata !{i32 786689, metadata !516, metadata !"ctx", metadata !246, i32 16778280, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 1064]
!519 = metadata !{i32 786689, metadata !516, metadata !"i", metadata !246, i32 33555496, metadata !286, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 1064]
!520 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"__macan_init", metadata !"__macan_init", metadata !"", i32 1073, metadata !521, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !523, i32 1074} ; [
!521 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !522, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!522 = metadata !{null, metadata !249, metadata !254, metadata !295, metadata !352, metadata !19}
!523 = metadata !{metadata !524, metadata !525, metadata !526, metadata !527, metadata !528}
!524 = metadata !{i32 786689, metadata !520, metadata !"ctx", metadata !246, i32 16778289, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 1073]
!525 = metadata !{i32 786689, metadata !520, metadata !"config", metadata !246, i32 33555505, metadata !254, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [config] [line 1073]
!526 = metadata !{i32 786689, metadata !520, metadata !"node", metadata !246, i32 50332721, metadata !295, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 1073]
!527 = metadata !{i32 786689, metadata !520, metadata !"loop", metadata !246, i32 67109937, metadata !352, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loop] [line 1073]
!528 = metadata !{i32 786689, metadata !520, metadata !"sockfd", metadata !246, i32 83887153, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sockfd] [line 1073]
!529 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"macan_init", metadata !"macan_init", metadata !"", i32 1096, metadata !530, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !532, i32 1097} ; [ DW_
!530 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !531, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!531 = metadata !{metadata !19, metadata !249, metadata !254, metadata !295, metadata !352, metadata !19}
!532 = metadata !{metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538}
!533 = metadata !{i32 786689, metadata !529, metadata !"ctx", metadata !246, i32 16778312, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 1096]
!534 = metadata !{i32 786689, metadata !529, metadata !"config", metadata !246, i32 33555528, metadata !254, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [config] [line 1096]
!535 = metadata !{i32 786689, metadata !529, metadata !"node", metadata !246, i32 50332744, metadata !295, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 1096]
!536 = metadata !{i32 786689, metadata !529, metadata !"loop", metadata !246, i32 67109960, metadata !352, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loop] [line 1096]
!537 = metadata !{i32 786689, metadata !529, metadata !"sockfd", metadata !246, i32 83887176, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sockfd] [line 1096]
!538 = metadata !{i32 786688, metadata !529, metadata !"i", metadata !246, i32 1102, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1102]
!539 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"macan_ev_timer_setup", metadata !"macan_ev_timer_setup", metadata !"", i32 1130, metadata !540, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !54
!540 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !541, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!541 = metadata !{null, metadata !249, metadata !384, metadata !542, metadata !12, metadata !12}
!542 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !500} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!543 = metadata !{metadata !544, metadata !545, metadata !546, metadata !547, metadata !548}
!544 = metadata !{i32 786689, metadata !539, metadata !"ctx", metadata !246, i32 16778346, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 1130]
!545 = metadata !{i32 786689, metadata !539, metadata !"ev", metadata !246, i32 33555562, metadata !384, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ev] [line 1130]
!546 = metadata !{i32 786689, metadata !539, metadata !"cb", metadata !246, i32 50332779, metadata !542, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cb] [line 1131]
!547 = metadata !{i32 786689, metadata !539, metadata !"after_ms", metadata !246, i32 67109996, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [after_ms] [line 1132]
!548 = metadata !{i32 786689, metadata !539, metadata !"repeat_ms", metadata !246, i32 83887212, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [repeat_ms] [line 1132]
!549 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"macan_ev_canrx_setup", metadata !"macan_ev_canrx_setup", metadata !"", i32 1140, metadata !550, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !55
!550 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !551, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!551 = metadata !{null, metadata !249, metadata !358, metadata !552}
!552 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !508} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!553 = metadata !{metadata !554, metadata !555, metadata !556}
!554 = metadata !{i32 786689, metadata !549, metadata !"ctx", metadata !246, i32 16778356, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 1140]
!555 = metadata !{i32 786689, metadata !549, metadata !"ev", metadata !246, i32 33555572, metadata !358, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ev] [line 1140]
!556 = metadata !{i32 786689, metadata !549, metadata !"cb", metadata !246, i32 50332789, metadata !552, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cb] [line 1141]
!557 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"macan_ecu_name", metadata !"macan_ecu_name", metadata !"", i32 1152, metadata !558, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !560, i32 1153}
!558 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !559, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!559 = metadata !{metadata !114, metadata !249, metadata !286}
!560 = metadata !{metadata !561, metadata !562}
!561 = metadata !{i32 786689, metadata !557, metadata !"ctx", metadata !246, i32 16778368, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 1152]
!562 = metadata !{i32 786689, metadata !557, metadata !"id", metadata !246, i32 33555584, metadata !286, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [id] [line 1152]
!563 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"receive_sig16", metadata !"receive_sig16", metadata !"", i32 749, metadata !564, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !566, i32 750} ; [ 
!564 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !565, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!565 = metadata !{null, metadata !249, metadata !467}
!566 = metadata !{metadata !567, metadata !568, metadata !569, metadata !573, metadata !575, metadata !576, metadata !577, metadata !578, metadata !579, metadata !580, metadata !581}
!567 = metadata !{i32 786689, metadata !563, metadata !"ctx", metadata !246, i32 16777965, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 749]
!568 = metadata !{i32 786689, metadata !563, metadata !"cf", metadata !246, i32 33555181, metadata !467, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 749]
!569 = metadata !{i32 786688, metadata !563, metadata !"plain", metadata !246, i32 754, metadata !570, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [plain] [line 754]
!570 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 80, i64 8, i32 0, i32 0, metadata !269, metadata !571, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 80, align 8, offset 0] [from uint8_t]
!571 = metadata !{metadata !572}
!572 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!573 = metadata !{i32 786688, metadata !563, metadata !"fill_time", metadata !246, i32 755, metadata !574, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fill_time] [line 755]
!574 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !269} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from uint8_t]
!575 = metadata !{i32 786688, metadata !563, metadata !"sig_num", metadata !246, i32 756, metadata !269, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sig_num] [line 756]
!576 = metadata !{i32 786688, metadata !563, metadata !"sig_val", metadata !246, i32 757, metadata !259, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sig_val] [line 757]
!577 = metadata !{i32 786688, metadata !563, metadata !"cmac_ptr", metadata !246, i32 758, metadata !574, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmac_ptr] [line 758]
!578 = metadata !{i32 786688, metadata !563, metadata !"plain_length", metadata !246, i32 759, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [plain_length] [line 759]
!579 = metadata !{i32 786688, metadata !563, metadata !"dummy_time", metadata !246, i32 760, metadata !259, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dummy_time] [line 760]
!580 = metadata !{i32 786688, metadata !563, metadata !"sigspec", metadata !246, i32 761, metadata !261, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sigspec] [line 761]
!581 = metadata !{i32 786688, metadata !563, metadata !"sig16", metadata !246, i32 763, metadata !582, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sig16] [line 763]
!582 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !583} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_signal_ex]
!583 = metadata !{i32 786451, metadata !251, null, metadata !"macan_signal_ex", i32 83, i64 64, i64 8, i32 0, i32 0, null, metadata !584, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_signal_ex] [line 83, size 64, align 8, offset 0] [from ]
!584 = metadata !{metadata !585, metadata !586, metadata !587, metadata !589}
!585 = metadata !{i32 786445, metadata !251, metadata !583, metadata !"flags_and_dst_id", i32 84, i64 8, i64 8, i64 0, i32 0, metadata !269} ; [ DW_TAG_member ] [flags_and_dst_id] [line 84, size 8, align 8, offset 0] [from uint8_t]
!586 = metadata !{i32 786445, metadata !251, metadata !583, metadata !"sig_num", i32 85, i64 8, i64 8, i64 8, i32 0, metadata !269} ; [ DW_TAG_member ] [sig_num] [line 85, size 8, align 8, offset 8] [from uint8_t]
!587 = metadata !{i32 786445, metadata !251, metadata !583, metadata !"sig_val", i32 86, i64 16, i64 8, i64 16, i32 0, metadata !588} ; [ DW_TAG_member ] [sig_val] [line 86, size 16, align 8, offset 16] [from ]
!588 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16, i64 8, i32 0, i32 0, metadata !269, metadata !101, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 16, align 8, offset 0] [from uint8_t]
!589 = metadata !{i32 786445, metadata !251, metadata !583, metadata !"cmac", i32 87, i64 32, i64 8, i64 32, i32 0, metadata !590} ; [ DW_TAG_member ] [cmac] [line 87, size 32, align 8, offset 32] [from ]
!590 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 8, i32 0, i32 0, metadata !269, metadata !591, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32, align 8, offset 0] [from uint8_t]
!591 = metadata !{metadata !592}
!592 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!593 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"__receive_sig", metadata !"__receive_sig", metadata !"", i32 792, metadata !594, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.macan_ctx*, i32, i32, i8*, i8*)*
!594 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !595, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!595 = metadata !{null, metadata !249, metadata !259, metadata !259, metadata !574, metadata !574, metadata !574, metadata !12}
!596 = metadata !{metadata !597, metadata !598, metadata !599, metadata !600, metadata !601, metadata !602, metadata !603, metadata !604, metadata !605, metadata !606, metadata !607}
!597 = metadata !{i32 786689, metadata !593, metadata !"ctx", metadata !246, i32 16778008, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 792]
!598 = metadata !{i32 786689, metadata !593, metadata !"sig_num", metadata !246, i32 33555224, metadata !259, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sig_num] [line 792]
!599 = metadata !{i32 786689, metadata !593, metadata !"sig_val", metadata !246, i32 50332440, metadata !259, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sig_val] [line 792]
!600 = metadata !{i32 786689, metadata !593, metadata !"cmac", metadata !246, i32 67109656, metadata !574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmac] [line 792]
!601 = metadata !{i32 786689, metadata !593, metadata !"plain", metadata !246, i32 83886873, metadata !574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [plain] [line 793]
!602 = metadata !{i32 786689, metadata !593, metadata !"fill_time", metadata !246, i32 100664089, metadata !574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fill_time] [line 793]
!603 = metadata !{i32 786689, metadata !593, metadata !"plain_length", metadata !246, i32 117441305, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [plain_length] [line 793]
!604 = metadata !{i32 786688, metadata !593, metadata !"skey", metadata !246, i32 796, metadata !303, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [skey] [line 796]
!605 = metadata !{i32 786688, metadata !593, metadata !"cp", metadata !246, i32 797, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cp] [line 797]
!606 = metadata !{i32 786688, metadata !593, metadata !"sigspec", metadata !246, i32 798, metadata !261, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sigspec] [line 798]
!607 = metadata !{i32 786688, metadata !593, metadata !"sighand", metadata !246, i32 799, metadata !327, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sighand] [line 799]
!608 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"append", metadata !"append", metadata !"", i32 113, metadata !609, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !614, i32 114} ; [ DW_TAG_subprog
!609 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !610, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!610 = metadata !{null, metadata !55, metadata !611, metadata !612, metadata !12}
!611 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned int]
!612 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !613} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!613 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!614 = metadata !{metadata !615, metadata !616, metadata !617, metadata !618}
!615 = metadata !{i32 786689, metadata !608, metadata !"dst", metadata !246, i32 16777329, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 113]
!616 = metadata !{i32 786689, metadata !608, metadata !"dstlen", metadata !246, i32 33554545, metadata !611, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dstlen] [line 113]
!617 = metadata !{i32 786689, metadata !608, metadata !"src", metadata !246, i32 50331761, metadata !612, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 113]
!618 = metadata !{i32 786689, metadata !608, metadata !"srclen", metadata !246, i32 67108977, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srclen] [line 113]
!619 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"receive_auth_req", metadata !"receive_auth_req", metadata !"", i32 491, metadata !564, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !620, i32 492
!620 = metadata !{metadata !621, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626, metadata !634, metadata !635, metadata !636, metadata !638}
!621 = metadata !{i32 786689, metadata !619, metadata !"ctx", metadata !246, i32 16777707, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 491]
!622 = metadata !{i32 786689, metadata !619, metadata !"cf", metadata !246, i32 33554923, metadata !467, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 491]
!623 = metadata !{i32 786688, metadata !619, metadata !"sig_num", metadata !246, i32 496, metadata !269, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sig_num] [line 496]
!624 = metadata !{i32 786688, metadata !619, metadata !"can_sid", metadata !246, i32 497, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [can_sid] [line 497]
!625 = metadata !{i32 786688, metadata !619, metadata !"can_nsid", metadata !246, i32 497, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [can_nsid] [line 497]
!626 = metadata !{i32 786688, metadata !619, metadata !"areq", metadata !246, i32 498, metadata !627, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [areq] [line 498]
!627 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !628} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_sig_auth_req]
!628 = metadata !{i32 786451, metadata !251, null, metadata !"macan_sig_auth_req", i32 71, i64 56, i64 8, i32 0, i32 0, null, metadata !629, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_sig_auth_req] [line 71, size 56, align 8, offset 0] [from ]
!629 = metadata !{metadata !630, metadata !631, metadata !632, metadata !633}
!630 = metadata !{i32 786445, metadata !251, metadata !628, metadata !"flags_and_dst_id", i32 72, i64 8, i64 8, i64 0, i32 0, metadata !269} ; [ DW_TAG_member ] [flags_and_dst_id] [line 72, size 8, align 8, offset 0] [from uint8_t]
!631 = metadata !{i32 786445, metadata !251, metadata !628, metadata !"sig_num", i32 73, i64 8, i64 8, i64 8, i32 0, metadata !269} ; [ DW_TAG_member ] [sig_num] [line 73, size 8, align 8, offset 8] [from uint8_t]
!632 = metadata !{i32 786445, metadata !251, metadata !628, metadata !"prescaler", i32 74, i64 8, i64 8, i64 16, i32 0, metadata !269} ; [ DW_TAG_member ] [prescaler] [line 74, size 8, align 8, offset 16] [from uint8_t]
!633 = metadata !{i32 786445, metadata !251, metadata !628, metadata !"cmac", i32 75, i64 32, i64 8, i64 24, i32 0, metadata !590} ; [ DW_TAG_member ] [cmac] [line 75, size 32, align 8, offset 24] [from ]
!634 = metadata !{i32 786688, metadata !619, metadata !"cp", metadata !246, i32 499, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cp] [line 499]
!635 = metadata !{i32 786688, metadata !619, metadata !"sighand", metadata !246, i32 500, metadata !327, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sighand] [line 500]
!636 = metadata !{i32 786688, metadata !619, metadata !"plain", metadata !246, i32 512, metadata !637, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [plain] [line 512]
!637 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 8, i32 0, i32 0, metadata !269, metadata !52, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from uint8_t]
!638 = metadata !{i32 786688, metadata !619, metadata !"skey", metadata !246, i32 513, metadata !303, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [skey] [line 513]
!639 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"receive_ack", metadata !"receive_ack", metadata !"", i32 227, metadata !564, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !640, i32 228} ; [ DW_T
!640 = metadata !{metadata !641, metadata !642, metadata !643, metadata !644, metadata !654, metadata !655}
!641 = metadata !{i32 786689, metadata !639, metadata !"ctx", metadata !246, i32 16777443, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 227]
!642 = metadata !{i32 786689, metadata !639, metadata !"cf", metadata !246, i32 33554659, metadata !467, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 227]
!643 = metadata !{i32 786688, metadata !639, metadata !"cp", metadata !246, i32 230, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cp] [line 230]
!644 = metadata !{i32 786688, metadata !639, metadata !"ack", metadata !246, i32 231, metadata !645, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ack] [line 231]
!645 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !646} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ack]
!646 = metadata !{i32 786451, metadata !251, null, metadata !"macan_ack", i32 65, i64 64, i64 8, i32 0, i32 0, null, metadata !647, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ack] [line 65, size 64, align 8, offset 0] [from ]
!647 = metadata !{metadata !648, metadata !649, metadata !653}
!648 = metadata !{i32 786445, metadata !251, metadata !646, metadata !"flags_and_dst_id", i32 66, i64 8, i64 8, i64 0, i32 0, metadata !269} ; [ DW_TAG_member ] [flags_and_dst_id] [line 66, size 8, align 8, offset 0] [from uint8_t]
!649 = metadata !{i32 786445, metadata !251, metadata !646, metadata !"group", i32 67, i64 24, i64 8, i64 8, i32 0, metadata !650} ; [ DW_TAG_member ] [group] [line 67, size 24, align 8, offset 8] [from ]
!650 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24, i64 8, i32 0, i32 0, metadata !269, metadata !651, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24, align 8, offset 0] [from uint8_t]
!651 = metadata !{metadata !652}
!652 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!653 = metadata !{i32 786445, metadata !251, metadata !646, metadata !"cmac", i32 68, i64 32, i64 8, i64 32, i32 0, metadata !590} ; [ DW_TAG_member ] [cmac] [line 68, size 32, align 8, offset 32] [from ]
!654 = metadata !{i32 786688, metadata !639, metadata !"plain", metadata !246, i32 232, metadata !637, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [plain] [line 232]
!655 = metadata !{i32 786688, metadata !639, metadata !"ack_group", metadata !246, i32 246, metadata !259, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ack_group] [line 246]
!656 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"request_signals", metadata !"request_signals", metadata !"", i32 153, metadata !453, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.macan_ctx*)* @request_signal
!657 = metadata !{metadata !658, metadata !659, metadata !660, metadata !663}
!658 = metadata !{i32 786689, metadata !656, metadata !"ctx", metadata !246, i32 16777369, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 153]
!659 = metadata !{i32 786688, metadata !656, metadata !"i", metadata !246, i32 156, metadata !269, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 156]
!660 = metadata !{i32 786688, metadata !661, metadata !"sigspec", metadata !246, i32 163, metadata !261, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sigspec] [line 163]
!661 = metadata !{i32 786443, metadata !227, metadata !662, i32 162, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan.
!662 = metadata !{i32 786443, metadata !227, metadata !656, i32 162, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan.
!663 = metadata !{i32 786688, metadata !661, metadata !"sighand", metadata !246, i32 164, metadata !327, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sighand] [line 164]
!664 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"send_auth_req", metadata !"send_auth_req", metadata !"", i32 121, metadata !665, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !667, i32 122} ; [ 
!665 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !666, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!666 = metadata !{null, metadata !249, metadata !286, metadata !269, metadata !269}
!667 = metadata !{metadata !668, metadata !669, metadata !670, metadata !671, metadata !672, metadata !673, metadata !674, metadata !675, metadata !676}
!668 = metadata !{i32 786689, metadata !664, metadata !"ctx", metadata !246, i32 16777337, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 121]
!669 = metadata !{i32 786689, metadata !664, metadata !"dst_id", metadata !246, i32 33554553, metadata !286, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst_id] [line 121]
!670 = metadata !{i32 786689, metadata !664, metadata !"sig_num", metadata !246, i32 50331769, metadata !269, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sig_num] [line 121]
!671 = metadata !{i32 786689, metadata !664, metadata !"prescaler", metadata !246, i32 67108985, metadata !269, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prescaler] [line 121]
!672 = metadata !{i32 786688, metadata !664, metadata !"t", metadata !246, i32 125, metadata !290, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 125]
!673 = metadata !{i32 786688, metadata !664, metadata !"plain", metadata !246, i32 126, metadata !637, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [plain] [line 126]
!674 = metadata !{i32 786688, metadata !664, metadata !"skey", metadata !246, i32 127, metadata !303, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [skey] [line 127]
!675 = metadata !{i32 786688, metadata !664, metadata !"cf", metadata !246, i32 128, metadata !372, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cf] [line 128]
!676 = metadata !{i32 786688, metadata !664, metadata !"areq", metadata !246, i32 129, metadata !628, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [areq] [line 129]
!677 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"is_channel_ready", metadata !"is_channel_ready", metadata !"", i32 94, metadata !431, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !678, i32 95} 
!678 = metadata !{metadata !679, metadata !680, metadata !681, metadata !682}
!679 = metadata !{i32 786689, metadata !677, metadata !"ctx", metadata !246, i32 16777310, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 94]
!680 = metadata !{i32 786689, metadata !677, metadata !"dst", metadata !246, i32 33554526, metadata !286, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 94]
!681 = metadata !{i32 786688, metadata !677, metadata !"cp", metadata !246, i32 104, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cp] [line 104]
!682 = metadata !{i32 786688, metadata !677, metadata !"both", metadata !246, i32 108, metadata !259, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [both] [line 108]
!683 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"send_ack", metadata !"send_ack", metadata !"", i32 181, metadata !323, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.macan_ctx*, i8)* @send_ack, null, null, me
!684 = metadata !{metadata !685, metadata !686, metadata !687, metadata !688, metadata !689, metadata !690, metadata !691, metadata !692, metadata !693}
!685 = metadata !{i32 786689, metadata !683, metadata !"ctx", metadata !246, i32 16777397, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 181]
!686 = metadata !{i32 786689, metadata !683, metadata !"dst_id", metadata !246, i32 33554613, metadata !286, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst_id] [line 181]
!687 = metadata !{i32 786688, metadata !683, metadata !"ack", metadata !246, i32 190, metadata !646, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ack] [line 190]
!688 = metadata !{i32 786688, metadata !683, metadata !"plain", metadata !246, i32 191, metadata !637, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [plain] [line 191]
!689 = metadata !{i32 786688, metadata !683, metadata !"pl", metadata !246, i32 192, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pl] [line 192]
!690 = metadata !{i32 786688, metadata !683, metadata !"cf", metadata !246, i32 193, metadata !372, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cf] [line 193]
!691 = metadata !{i32 786688, metadata !683, metadata !"cpart", metadata !246, i32 194, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cpart] [line 194]
!692 = metadata !{i32 786688, metadata !683, metadata !"group_field", metadata !246, i32 201, metadata !259, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group_field] [line 201]
!693 = metadata !{i32 786688, metadata !683, metadata !"time", metadata !246, i32 203, metadata !259, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [time] [line 203]
!694 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"receive_skey", metadata !"receive_skey", metadata !"", i32 314, metadata !564, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !695, i32 315} ; [ DW
!695 = metadata !{metadata !696, metadata !697, metadata !698, metadata !705, metadata !709, metadata !710, metadata !711, metadata !713}
!696 = metadata !{i32 786689, metadata !694, metadata !"ctx", metadata !246, i32 16777530, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 314]
!697 = metadata !{i32 786689, metadata !694, metadata !"cf", metadata !246, i32 33554746, metadata !467, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 314]
!698 = metadata !{i32 786688, metadata !694, metadata !"sk", metadata !246, i32 317, metadata !699, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sk] [line 317]
!699 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !700} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_sess_key]
!700 = metadata !{i32 786451, metadata !251, null, metadata !"macan_sess_key", i32 59, i64 64, i64 8, i32 0, i32 0, null, metadata !701, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_sess_key] [line 59, size 64, align 8, offset 0] [from ]
!701 = metadata !{metadata !702, metadata !703, metadata !704}
!702 = metadata !{i32 786445, metadata !251, metadata !700, metadata !"flags_and_dst_id", i32 60, i64 8, i64 8, i64 0, i32 0, metadata !269} ; [ DW_TAG_member ] [flags_and_dst_id] [line 60, size 8, align 8, offset 0] [from uint8_t]
!703 = metadata !{i32 786445, metadata !251, metadata !700, metadata !"seq_and_len", i32 61, i64 8, i64 8, i64 8, i32 0, metadata !269} ; [ DW_TAG_member ] [seq_and_len] [line 61, size 8, align 8, offset 8] [from uint8_t]
!704 = metadata !{i32 786445, metadata !251, metadata !700, metadata !"data", i32 62, i64 48, i64 8, i64 16, i32 0, metadata !317} ; [ DW_TAG_member ] [data] [line 62, size 48, align 8, offset 16] [from ]
!705 = metadata !{i32 786688, metadata !694, metadata !"unwrapped", metadata !246, i32 318, metadata !706, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [unwrapped] [line 318]
!706 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 8, i32 0, i32 0, metadata !269, metadata !707, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 8, offset 0] [from uint8_t]
!707 = metadata !{metadata !708}
!708 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!709 = metadata !{i32 786688, metadata !694, metadata !"seq", metadata !246, i32 319, metadata !269, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seq] [line 319]
!710 = metadata !{i32 786688, metadata !694, metadata !"len", metadata !246, i32 319, metadata !269, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 319]
!711 = metadata !{i32 786688, metadata !712, metadata !"fwd_id", metadata !246, i32 348, metadata !286, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fwd_id] [line 348]
!712 = metadata !{i32 786443, metadata !227, metadata !694, i32 344, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan.
!713 = metadata !{i32 786688, metadata !712, metadata !"cpart", metadata !246, i32 349, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cpart] [line 349]
!714 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"request_time_auth", metadata !"request_time_auth", metadata !"", i32 288, metadata !453, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.macan_ctx*)* @request_ti
!715 = metadata !{metadata !716, metadata !717}
!716 = metadata !{i32 786689, metadata !714, metadata !"ctx", metadata !246, i32 16777504, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 288]
!717 = metadata !{i32 786688, metadata !714, metadata !"ts_id", metadata !246, i32 291, metadata !286, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts_id] [line 291]
!718 = metadata !{i32 786478, metadata !251, metadata !719, metadata !"macan_crypt_flags", metadata !"macan_crypt_flags", metadata !"", i32 204, metadata !720, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !722, i32 2
!719 = metadata !{i32 786473, metadata !251}      ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/_compiled/include/macan_private.h]
!720 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !721, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!721 = metadata !{metadata !12, metadata !467}
!722 = metadata !{metadata !723}
!723 = metadata !{i32 786689, metadata !718, metadata !"cf", metadata !719, i32 16777420, metadata !467, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 204]
!724 = metadata !{i32 786478, metadata !251, metadata !719, metadata !"macan_crypt_dst", metadata !"macan_crypt_dst", metadata !"", i32 199, metadata !725, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !727, i32 200} 
!725 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !726, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!726 = metadata !{metadata !286, metadata !467}
!727 = metadata !{metadata !728}
!728 = metadata !{i32 786689, metadata !724, metadata !"cf", metadata !719, i32 16777415, metadata !467, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 199]
!729 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"receive_sig32", metadata !"receive_sig32", metadata !"", i32 702, metadata !730, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !732, i32 703} ; [ 
!730 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !731, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!731 = metadata !{null, metadata !249, metadata !467, metadata !259}
!732 = metadata !{metadata !733, metadata !734, metadata !735, metadata !736, metadata !741, metadata !742, metadata !743, metadata !744, metadata !745, metadata !746, metadata !747, metadata !748}
!733 = metadata !{i32 786689, metadata !729, metadata !"ctx", metadata !246, i32 16777918, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 702]
!734 = metadata !{i32 786689, metadata !729, metadata !"cf", metadata !246, i32 33555134, metadata !467, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 702]
!735 = metadata !{i32 786689, metadata !729, metadata !"sig_num", metadata !246, i32 50332350, metadata !259, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sig_num] [line 702]
!736 = metadata !{i32 786688, metadata !737, metadata !"plain", metadata !246, i32 707, metadata !738, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [plain] [line 707]
!737 = metadata !{i32 786443, metadata !227, metadata !729} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan.c]
!738 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 8, i32 0, i32 0, metadata !269, metadata !739, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 8, offset 0] [from uint8_t]
!739 = metadata !{metadata !740}
!740 = metadata !{i32 786465, i64 0, i64 12}      ; [ DW_TAG_subrange_type ] [0, 11]
!741 = metadata !{i32 786688, metadata !737, metadata !"fill_time", metadata !246, i32 708, metadata !574, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fill_time] [line 708]
!742 = metadata !{i32 786688, metadata !737, metadata !"sig_val", metadata !246, i32 709, metadata !259, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sig_val] [line 709]
!743 = metadata !{i32 786688, metadata !737, metadata !"cmac_ptr", metadata !246, i32 710, metadata !574, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmac_ptr] [line 710]
!744 = metadata !{i32 786688, metadata !737, metadata !"plain_length", metadata !246, i32 711, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [plain_length] [line 711]
!745 = metadata !{i32 786688, metadata !737, metadata !"dummy_time", metadata !246, i32 712, metadata !259, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dummy_time] [line 712]
!746 = metadata !{i32 786688, metadata !737, metadata !"can_sid", metadata !246, i32 713, metadata !259, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [can_sid] [line 713]
!747 = metadata !{i32 786688, metadata !737, metadata !"sigspec", metadata !246, i32 714, metadata !261, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sigspec] [line 714]
!748 = metadata !{i32 786688, metadata !737, metadata !"sig32", metadata !246, i32 720, metadata !749, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sig32] [line 720]
!749 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !750} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_signal]
!750 = metadata !{i32 786451, metadata !251, null, metadata !"macan_signal", i32 78, i64 64, i64 8, i32 0, i32 0, null, metadata !751, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_signal] [line 78, size 64, align 8, offset 0] [from ]
!751 = metadata !{metadata !752, metadata !753}
!752 = metadata !{i32 786445, metadata !251, metadata !750, metadata !"sig", i32 79, i64 32, i64 8, i64 0, i32 0, metadata !590} ; [ DW_TAG_member ] [sig] [line 79, size 32, align 8, offset 0] [from ]
!753 = metadata !{i32 786445, metadata !251, metadata !750, metadata !"cmac", i32 80, i64 32, i64 8, i64 32, i32 0, metadata !590} ; [ DW_TAG_member ] [cmac] [line 80, size 32, align 8, offset 32] [from ]
!754 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"cansid2signum", metadata !"cansid2signum", metadata !"", i32 876, metadata !755, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !758, i32 877} ; [ 
!755 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !756, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!756 = metadata !{metadata !157, metadata !249, metadata !259, metadata !757}
!757 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !259} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from uint32_t]
!758 = metadata !{metadata !759, metadata !760, metadata !761, metadata !762}
!759 = metadata !{i32 786689, metadata !754, metadata !"ctx", metadata !246, i32 16778092, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 876]
!760 = metadata !{i32 786689, metadata !754, metadata !"can_id", metadata !246, i32 33555308, metadata !259, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [can_id] [line 876]
!761 = metadata !{i32 786689, metadata !754, metadata !"sig_num", metadata !246, i32 50332524, metadata !757, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sig_num] [line 876]
!762 = metadata !{i32 786688, metadata !754, metadata !"i", metadata !246, i32 878, metadata !259, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 878]
!763 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"receive_time_auth", metadata !"receive_time_auth", metadata !"", i32 440, metadata !564, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !764, i32 4
!764 = metadata !{metadata !765, metadata !766, metadata !767, metadata !769, metadata !770, metadata !771, metadata !772}
!765 = metadata !{i32 786689, metadata !763, metadata !"ctx", metadata !246, i32 16777656, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 440]
!766 = metadata !{i32 786689, metadata !763, metadata !"cf", metadata !246, i32 33554872, metadata !467, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 440]
!767 = metadata !{i32 786688, metadata !763, metadata !"t", metadata !246, i32 445, metadata !768, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 445]
!768 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !339} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_timekeeping]
!769 = metadata !{i32 786688, metadata !763, metadata !"time_ts", metadata !246, i32 446, metadata !259, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [time_ts] [line 446]
!770 = metadata !{i32 786688, metadata !763, metadata !"plain", metadata !246, i32 447, metadata !738, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [plain] [line 447]
!771 = metadata !{i32 786688, metadata !763, metadata !"skey", metadata !246, i32 448, metadata !303, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [skey] [line 448]
!772 = metadata !{i32 786688, metadata !763, metadata !"time_ts_us", metadata !246, i32 449, metadata !290, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [time_ts_us] [line 449]
!773 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"send_acks", metadata !"send_acks", metadata !"", i32 425, metadata !453, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !774, i32 426} ; [ DW_TAG_s
!774 = metadata !{metadata !775, metadata !776}
!775 = metadata !{i32 786689, metadata !773, metadata !"ctx", metadata !246, i32 16777641, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 425]
!776 = metadata !{i32 786688, metadata !773, metadata !"i", metadata !246, i32 428, metadata !286, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 428]
!777 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"receive_time_nonauth", metadata !"receive_time_nonauth", metadata !"", i32 396, metadata !564, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !778,
!778 = metadata !{metadata !779, metadata !780, metadata !781, metadata !782, metadata !783, metadata !784, metadata !785, metadata !786}
!779 = metadata !{i32 786689, metadata !777, metadata !"ctx", metadata !246, i32 16777612, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 396]
!780 = metadata !{i32 786689, metadata !777, metadata !"cf", metadata !246, i32 33554828, metadata !467, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 396]
!781 = metadata !{i32 786688, metadata !777, metadata !"t", metadata !246, i32 399, metadata !768, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 399]
!782 = metadata !{i32 786688, metadata !777, metadata !"time_ts", metadata !246, i32 400, metadata !259, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [time_ts] [line 400]
!783 = metadata !{i32 786688, metadata !777, metadata !"loc_us", metadata !246, i32 401, metadata !290, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc_us] [line 401]
!784 = metadata !{i32 786688, metadata !777, metadata !"ts_us", metadata !246, i32 402, metadata !290, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts_us] [line 402]
!785 = metadata !{i32 786688, metadata !777, metadata !"delta", metadata !246, i32 403, metadata !290, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [delta] [line 403]
!786 = metadata !{i32 786688, metadata !777, metadata !"now", metadata !246, i32 404, metadata !290, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [now] [line 404]
!787 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"macan_send_challenge", metadata !"macan_send_challenge", metadata !"", i32 269, metadata !788, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !790,
!788 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !789, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!789 = metadata !{null, metadata !249, metadata !286, metadata !286, metadata !574}
!790 = metadata !{metadata !791, metadata !792, metadata !793, metadata !794, metadata !795, metadata !796}
!791 = metadata !{i32 786689, metadata !787, metadata !"ctx", metadata !246, i32 16777485, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 269]
!792 = metadata !{i32 786689, metadata !787, metadata !"dst_id", metadata !246, i32 33554701, metadata !286, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst_id] [line 269]
!793 = metadata !{i32 786689, metadata !787, metadata !"fwd_id", metadata !246, i32 50331917, metadata !286, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fwd_id] [line 269]
!794 = metadata !{i32 786689, metadata !787, metadata !"chg", metadata !246, i32 67109133, metadata !574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chg] [line 269]
!795 = metadata !{i32 786688, metadata !787, metadata !"cf", metadata !246, i32 272, metadata !372, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cf] [line 272]
!796 = metadata !{i32 786688, metadata !787, metadata !"chal", metadata !246, i32 273, metadata !797, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chal] [line 273]
!797 = metadata !{i32 786451, metadata !251, null, metadata !"macan_challenge", i32 53, i64 64, i64 8, i32 0, i32 0, null, metadata !798, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_challenge] [line 53, size 64, align 8, offset 0] [from ]
!798 = metadata !{metadata !799, metadata !800, metadata !801}
!799 = metadata !{i32 786445, metadata !251, metadata !797, metadata !"flags_and_dst_id", i32 54, i64 8, i64 8, i64 0, i32 0, metadata !269} ; [ DW_TAG_member ] [flags_and_dst_id] [line 54, size 8, align 8, offset 0] [from uint8_t]
!800 = metadata !{i32 786445, metadata !251, metadata !797, metadata !"fwd_id", i32 55, i64 8, i64 8, i64 8, i32 0, metadata !286} ; [ DW_TAG_member ] [fwd_id] [line 55, size 8, align 8, offset 8] [from macan_ecuid]
!801 = metadata !{i32 786445, metadata !251, metadata !797, metadata !"chg", i32 56, i64 48, i64 8, i64 16, i32 0, metadata !317} ; [ DW_TAG_member ] [chg] [line 56, size 48, align 8, offset 16] [from ]
!802 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"gen_challenge", metadata !"gen_challenge", metadata !"", i32 259, metadata !803, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !805, i32 260} ; [ 
!803 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !804, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!804 = metadata !{null, metadata !249, metadata !574}
!805 = metadata !{metadata !806, metadata !807}
!806 = metadata !{i32 786689, metadata !802, metadata !"ctx", metadata !246, i32 16777475, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 259]
!807 = metadata !{i32 786689, metadata !802, metadata !"chal", metadata !246, i32 33554691, metadata !574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chal] [line 259]
!808 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"__macan_send_sig", metadata !"__macan_send_sig", metadata !"", i32 578, metadata !809, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !811, i32 579
!809 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !810, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!810 = metadata !{metadata !19, metadata !249, metadata !286, metadata !269, metadata !259}
!811 = metadata !{metadata !812, metadata !813, metadata !814, metadata !815, metadata !816, metadata !817, metadata !818, metadata !819, metadata !820, metadata !821, metadata !822, metadata !823, metadata !825, metadata !826}
!812 = metadata !{i32 786689, metadata !808, metadata !"ctx", metadata !246, i32 16777794, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 578]
!813 = metadata !{i32 786689, metadata !808, metadata !"dst_id", metadata !246, i32 33555010, metadata !286, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst_id] [line 578]
!814 = metadata !{i32 786689, metadata !808, metadata !"sig_num", metadata !246, i32 50332226, metadata !269, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sig_num] [line 578]
!815 = metadata !{i32 786689, metadata !808, metadata !"sig_val", metadata !246, i32 67109442, metadata !259, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sig_val] [line 578]
!816 = metadata !{i32 786688, metadata !808, metadata !"cf", metadata !246, i32 583, metadata !372, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cf] [line 583]
!817 = metadata !{i32 786688, metadata !808, metadata !"plain", metadata !246, i32 584, metadata !738, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [plain] [line 584]
!818 = metadata !{i32 786688, metadata !808, metadata !"sig", metadata !246, i32 584, metadata !637, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sig] [line 584]
!819 = metadata !{i32 786688, metadata !808, metadata !"plain_length", metadata !246, i32 585, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [plain_length] [line 585]
!820 = metadata !{i32 786688, metadata !808, metadata !"t", metadata !246, i32 586, metadata !259, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 586]
!821 = metadata !{i32 786688, metadata !808, metadata !"skey", metadata !246, i32 587, metadata !303, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [skey] [line 587]
!822 = metadata !{i32 786688, metadata !808, metadata !"cmac_ptr", metadata !246, i32 588, metadata !574, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmac_ptr] [line 588]
!823 = metadata !{i32 786688, metadata !824, metadata !"can_sid", metadata !246, i32 601, metadata !259, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [can_sid] [line 601]
!824 = metadata !{i32 786443, metadata !227, metadata !808, i32 600, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan.
!825 = metadata !{i32 786688, metadata !824, metadata !"sig32", metadata !246, i32 612, metadata !749, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sig32] [line 612]
!826 = metadata !{i32 786688, metadata !827, metadata !"sig16", metadata !246, i32 625, metadata !582, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sig16] [line 625]
!827 = metadata !{i32 786443, metadata !227, metadata !808, i32 616, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan.
!828 = metadata !{i32 786478, metadata !227, metadata !246, metadata !"get_cpart", metadata !"get_cpart", metadata !"", i32 61, metadata !829, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !831, i32 62} ; [ DW_TAG_sub
!829 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !830, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!830 = metadata !{metadata !309, metadata !249, metadata !286}
!831 = metadata !{metadata !832, metadata !833}
!832 = metadata !{i32 786689, metadata !828, metadata !"ctx", metadata !246, i32 16777277, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 61]
!833 = metadata !{i32 786689, metadata !828, metadata !"i", metadata !246, i32 33554493, metadata !286, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 61]
!834 = metadata !{i32 786449, metadata !835, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !836, metadata !930, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/
!835 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/klee/macan_ev.c", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src"}
!836 = metadata !{metadata !837, metadata !893, metadata !899, metadata !910, metadata !916, metadata !920}
!837 = metadata !{i32 786478, metadata !835, metadata !838, metadata !"macan_ev_can_init", metadata !"macan_ev_can_init", metadata !"", i32 39, metadata !839, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !888, i32 4
!838 = metadata !{i32 786473, metadata !835}      ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/klee/macan_ev.c]
!839 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !840, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!840 = metadata !{null, metadata !841, metadata !883, metadata !19, metadata !19}
!841 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !842} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_can]
!842 = metadata !{i32 786454, metadata !835, null, metadata !"macan_ev_can", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !843} ; [ DW_TAG_typedef ] [macan_ev_can] [line 41, size 0, align 0, offset 0] [from macan_ev_can]
!843 = metadata !{i32 786451, metadata !844, null, metadata !"macan_ev_can", i32 35, i64 320, i64 64, i32 0, i32 0, null, metadata !845, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ev_can] [line 35, size 320, align 64, offset 0] [from ]
!844 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/klee/macan_ev.h", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src"}
!845 = metadata !{metadata !846, metadata !873, metadata !874, metadata !875, metadata !882}
!846 = metadata !{i32 786445, metadata !844, metadata !843, metadata !"cb", i32 36, i64 64, i64 64, i64 0, i32 0, metadata !847} ; [ DW_TAG_member ] [cb] [line 36, size 64, align 64, offset 0] [from ]
!847 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !848} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!848 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !849, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!849 = metadata !{null, metadata !850, metadata !872, metadata !19}
!850 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !851} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_loop]
!851 = metadata !{i32 786451, metadata !844, null, metadata !"macan_ev_loop", i32 52, i64 128, i64 64, i32 0, i32 0, null, metadata !852, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ev_loop] [line 52, size 128, align 64, offset 0] [from ]
!852 = metadata !{metadata !853, metadata !856}
!853 = metadata !{i32 786445, metadata !844, metadata !851, metadata !"cans", i32 53, i64 64, i64 64, i64 0, i32 0, metadata !854} ; [ DW_TAG_member ] [cans] [line 53, size 64, align 64, offset 0] [from ]
!854 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !855} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_can]
!855 = metadata !{i32 786454, metadata !844, null, metadata !"macan_ev_can", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !843} ; [ DW_TAG_typedef ] [macan_ev_can] [line 41, size 0, align 0, offset 0] [from macan_ev_can]
!856 = metadata !{i32 786445, metadata !844, metadata !851, metadata !"timers", i32 54, i64 64, i64 64, i64 64, i32 0, metadata !857} ; [ DW_TAG_member ] [timers] [line 54, size 64, align 64, offset 64] [from ]
!857 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !858} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_timer]
!858 = metadata !{i32 786454, metadata !844, null, metadata !"macan_ev_timer", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !859} ; [ DW_TAG_typedef ] [macan_ev_timer] [line 50, size 0, align 0, offset 0] [from macan_ev_timer]
!859 = metadata !{i32 786451, metadata !844, null, metadata !"macan_ev_timer", i32 43, i64 320, i64 64, i32 0, i32 0, null, metadata !860, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ev_timer] [line 43, size 320, align 64, offset 0] [from ]
!860 = metadata !{metadata !861, metadata !866, metadata !867, metadata !868, metadata !869, metadata !871}
!861 = metadata !{i32 786445, metadata !844, metadata !859, metadata !"cb", i32 44, i64 64, i64 64, i64 0, i32 0, metadata !862} ; [ DW_TAG_member ] [cb] [line 44, size 64, align 64, offset 0] [from ]
!862 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !863} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!863 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !864, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!864 = metadata !{null, metadata !850, metadata !865, metadata !19}
!865 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !859} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_timer]
!866 = metadata !{i32 786445, metadata !844, metadata !859, metadata !"next", i32 45, i64 64, i64 64, i64 64, i32 0, metadata !865} ; [ DW_TAG_member ] [next] [line 45, size 64, align 64, offset 64] [from ]
!867 = metadata !{i32 786445, metadata !844, metadata !859, metadata !"after_us", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !12} ; [ DW_TAG_member ] [after_us] [line 46, size 32, align 32, offset 128] [from unsigned int]
!868 = metadata !{i32 786445, metadata !844, metadata !859, metadata !"repeat_us", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !12} ; [ DW_TAG_member ] [repeat_us] [line 47, size 32, align 32, offset 160] [from unsigned int]
!869 = metadata !{i32 786445, metadata !844, metadata !859, metadata !"expire_us", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !870} ; [ DW_TAG_member ] [expire_us] [line 48, size 64, align 64, offset 192] [from uint64_t]
!870 = metadata !{i32 786454, metadata !844, null, metadata !"uint64_t", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [uint64_t] [line 55, size 0, align 0, offset 0] [from long unsigned int]
!871 = metadata !{i32 786445, metadata !844, metadata !859, metadata !"data", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !55} ; [ DW_TAG_member ] [data] [line 49, size 64, align 64, offset 256] [from ]
!872 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !843} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_can]
!873 = metadata !{i32 786445, metadata !844, metadata !843, metadata !"next", i32 37, i64 64, i64 64, i64 64, i32 0, metadata !872} ; [ DW_TAG_member ] [next] [line 37, size 64, align 64, offset 64] [from ]
!874 = metadata !{i32 786445, metadata !844, metadata !843, metadata !"canfd", i32 38, i64 32, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [canfd] [line 38, size 32, align 32, offset 128] [from int]
!875 = metadata !{i32 786445, metadata !844, metadata !843, metadata !"received", i32 39, i64 64, i64 64, i64 192, i32 0, metadata !876} ; [ DW_TAG_member ] [received] [line 39, size 64, align 64, offset 192] [from ]
!876 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !877} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from can_frame]
!877 = metadata !{i32 786451, metadata !373, null, metadata !"can_frame", i32 68, i64 128, i64 64, i32 0, i32 0, null, metadata !878, i32 0, null, null} ; [ DW_TAG_structure_type ] [can_frame] [line 68, size 128, align 64, offset 0] [from ]
!878 = metadata !{metadata !879, metadata !880, metadata !881}
!879 = metadata !{i32 786445, metadata !373, metadata !877, metadata !"can_id", i32 69, i64 32, i64 32, i64 0, i32 0, metadata !376} ; [ DW_TAG_member ] [can_id] [line 69, size 32, align 32, offset 0] [from canid_t]
!880 = metadata !{i32 786445, metadata !373, metadata !877, metadata !"can_dlc", i32 70, i64 8, i64 8, i64 32, i32 0, metadata !379} ; [ DW_TAG_member ] [can_dlc] [line 70, size 8, align 8, offset 32] [from __u8]
!881 = metadata !{i32 786445, metadata !373, metadata !877, metadata !"data", i32 71, i64 64, i64 8, i64 64, i32 0, metadata !381} ; [ DW_TAG_member ] [data] [line 71, size 64, align 8, offset 64] [from ]
!882 = metadata !{i32 786445, metadata !844, metadata !843, metadata !"data", i32 40, i64 64, i64 64, i64 256, i32 0, metadata !55} ; [ DW_TAG_member ] [data] [line 40, size 64, align 64, offset 256] [from ]
!883 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !884} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!884 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !885, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!885 = metadata !{null, metadata !886, metadata !841, metadata !19}
!886 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !887} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_loop]
!887 = metadata !{i32 786454, metadata !835, null, metadata !"macan_ev_loop", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !851} ; [ DW_TAG_typedef ] [macan_ev_loop] [line 55, size 0, align 0, offset 0] [from macan_ev_loop]
!888 = metadata !{metadata !889, metadata !890, metadata !891, metadata !892}
!889 = metadata !{i32 786689, metadata !837, metadata !"ev", metadata !838, i32 16777255, metadata !841, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ev] [line 39]
!890 = metadata !{i32 786689, metadata !837, metadata !"cb", metadata !838, i32 33554472, metadata !883, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cb] [line 40]
!891 = metadata !{i32 786689, metadata !837, metadata !"canfd", metadata !838, i32 50331689, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [canfd] [line 41]
!892 = metadata !{i32 786689, metadata !837, metadata !"events", metadata !838, i32 67108905, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [events] [line 41]
!893 = metadata !{i32 786478, metadata !835, metadata !838, metadata !"macan_ev_can_start", metadata !"macan_ev_can_start", metadata !"", i32 49, metadata !894, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !896, i32
!894 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !895, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!895 = metadata !{null, metadata !886, metadata !841}
!896 = metadata !{metadata !897, metadata !898}
!897 = metadata !{i32 786689, metadata !893, metadata !"loop", metadata !838, i32 16777265, metadata !886, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loop] [line 49]
!898 = metadata !{i32 786689, metadata !893, metadata !"w", metadata !838, i32 33554481, metadata !841, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [w] [line 49]
!899 = metadata !{i32 786478, metadata !835, metadata !838, metadata !"macan_ev_timer_init", metadata !"macan_ev_timer_init", metadata !"", i32 56, metadata !900, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !905, i
!900 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !901, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!901 = metadata !{null, metadata !857, metadata !902, metadata !12, metadata !12}
!902 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !903} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!903 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !904, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!904 = metadata !{null, metadata !886, metadata !857, metadata !19}
!905 = metadata !{metadata !906, metadata !907, metadata !908, metadata !909}
!906 = metadata !{i32 786689, metadata !899, metadata !"ev", metadata !838, i32 16777272, metadata !857, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ev] [line 56]
!907 = metadata !{i32 786689, metadata !899, metadata !"cb", metadata !838, i32 33554489, metadata !902, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cb] [line 57]
!908 = metadata !{i32 786689, metadata !899, metadata !"after_ms", metadata !838, i32 50331706, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [after_ms] [line 58]
!909 = metadata !{i32 786689, metadata !899, metadata !"repeat_ms", metadata !838, i32 67108922, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [repeat_ms] [line 58]
!910 = metadata !{i32 786478, metadata !835, metadata !838, metadata !"macan_ev_timer_start", metadata !"macan_ev_timer_start", metadata !"", i32 66, metadata !911, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !913,
!911 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !912, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!912 = metadata !{null, metadata !886, metadata !857}
!913 = metadata !{metadata !914, metadata !915}
!914 = metadata !{i32 786689, metadata !910, metadata !"loop", metadata !838, i32 16777282, metadata !886, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loop] [line 66]
!915 = metadata !{i32 786689, metadata !910, metadata !"w", metadata !838, i32 33554498, metadata !857, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [w] [line 66]
!916 = metadata !{i32 786478, metadata !835, metadata !838, metadata !"macan_ev_timer_again", metadata !"macan_ev_timer_again", metadata !"", i32 74, metadata !911, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !917,
!917 = metadata !{metadata !918, metadata !919}
!918 = metadata !{i32 786689, metadata !916, metadata !"loop", metadata !838, i32 16777290, metadata !886, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loop] [line 74]
!919 = metadata !{i32 786689, metadata !916, metadata !"w", metadata !838, i32 33554506, metadata !857, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [w] [line 74]
!920 = metadata !{i32 786478, metadata !835, metadata !838, metadata !"macan_ev_run", metadata !"macan_ev_run", metadata !"", i32 83, metadata !921, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !923, i32 84} ; [ DW_
!921 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !922, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!922 = metadata !{metadata !157, metadata !886}
!923 = metadata !{metadata !924, metadata !925, metadata !926, metadata !928}
!924 = metadata !{i32 786689, metadata !920, metadata !"loop", metadata !838, i32 16777299, metadata !886, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loop] [line 83]
!925 = metadata !{i32 786688, metadata !920, metadata !"now", metadata !838, i32 88, metadata !870, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [now] [line 88]
!926 = metadata !{i32 786688, metadata !927, metadata !"t", metadata !838, i32 90, metadata !857, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 90]
!927 = metadata !{i32 786443, metadata !835, metadata !920, i32 90, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/klee/mac
!928 = metadata !{i32 786688, metadata !929, metadata !"i", metadata !838, i32 97, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 97]
!929 = metadata !{i32 786443, metadata !835, metadata !920, i32 97, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/klee/mac
!930 = metadata !{metadata !931}
!931 = metadata !{i32 786484, i32 0, null, metadata !"macan_ev_loop_default", metadata !"macan_ev_loop_default", metadata !"", metadata !838, i32 29, metadata !887, i32 0, i32 1, %struct.macan_ev_loop* @macan_ev_loop_default, null} ; [ DW_TAG_variable ] 
!932 = metadata !{i32 786449, metadata !933, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !934, metadata !2, metadata !935, metadata !1183, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/ho
!933 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/common.c", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src"}
!934 = metadata !{metadata !229}
!935 = metadata !{metadata !936, metadata !949, metadata !957, metadata !963, metadata !974, metadata !1167, metadata !1173}
!936 = metadata !{i32 786478, metadata !933, metadata !937, metadata !"print_hexn", metadata !"print_hexn", metadata !"", i32 31, metadata !938, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !941, i32 32} ; [ DW_TAG_
!937 = metadata !{i32 786473, metadata !933}      ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/common.c]
!938 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !939, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!939 = metadata !{null, metadata !612, metadata !940}
!940 = metadata !{i32 786454, metadata !933, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!941 = metadata !{metadata !942, metadata !943, metadata !944, metadata !945}
!942 = metadata !{i32 786689, metadata !936, metadata !"data", metadata !937, i32 16777247, metadata !612, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 31]
!943 = metadata !{i32 786689, metadata !936, metadata !"len", metadata !937, i32 33554463, metadata !940, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 31]
!944 = metadata !{i32 786688, metadata !936, metadata !"i", metadata !937, i32 33, metadata !940, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 33]
!945 = metadata !{i32 786688, metadata !936, metadata !"d", metadata !937, i32 34, metadata !946, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 34]
!946 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !947} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!947 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !948} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from uint8_t]
!948 = metadata !{i32 786454, metadata !933, null, metadata !"uint8_t", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [uint8_t] [line 48, size 0, align 0, offset 0] [from unsigned char]
!949 = metadata !{i32 786478, metadata !933, metadata !937, metadata !"memchk", metadata !"memchk", metadata !"", i32 44, metadata !950, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !952, i32 45} ; [ DW_TAG_subprogr
!950 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !951, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!951 = metadata !{metadata !19, metadata !946, metadata !946, metadata !940}
!952 = metadata !{metadata !953, metadata !954, metadata !955, metadata !956}
!953 = metadata !{i32 786689, metadata !949, metadata !"a", metadata !937, i32 16777260, metadata !946, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 44]
!954 = metadata !{i32 786689, metadata !949, metadata !"b", metadata !937, i32 33554476, metadata !946, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 44]
!955 = metadata !{i32 786689, metadata !949, metadata !"len", metadata !937, i32 50331692, metadata !940, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 44]
!956 = metadata !{i32 786688, metadata !949, metadata !"i", metadata !937, i32 46, metadata !940, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 46]
!957 = metadata !{i32 786478, metadata !933, metadata !937, metadata !"eval", metadata !"eval", metadata !"", i32 57, metadata !958, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !960, i32 58} ; [ DW_TAG_subprogram ]
!958 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !959, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!959 = metadata !{null, metadata !114, metadata !19}
!960 = metadata !{metadata !961, metadata !962}
!961 = metadata !{i32 786689, metadata !957, metadata !"tname", metadata !937, i32 16777273, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tname] [line 57]
!962 = metadata !{i32 786689, metadata !957, metadata !"b", metadata !937, i32 33554489, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 57]
!963 = metadata !{i32 786478, metadata !933, metadata !937, metadata !"memcpy_bw", metadata !"memcpy_bw", metadata !"", i32 72, metadata !964, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !966, i32 72} ; [ DW_TAG_su
!964 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !965, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!965 = metadata !{null, metadata !55, metadata !612, metadata !940}
!966 = metadata !{metadata !967, metadata !968, metadata !969, metadata !970, metadata !971, metadata !973}
!967 = metadata !{i32 786689, metadata !963, metadata !"dst", metadata !937, i32 16777288, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 72]
!968 = metadata !{i32 786689, metadata !963, metadata !"src", metadata !937, i32 33554504, metadata !612, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 72]
!969 = metadata !{i32 786689, metadata !963, metadata !"len", metadata !937, i32 50331720, metadata !940, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 72]
!970 = metadata !{i32 786688, metadata !963, metadata !"i", metadata !937, i32 74, metadata !940, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 74]
!971 = metadata !{i32 786688, metadata !963, metadata !"dst8", metadata !937, i32 75, metadata !972, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst8] [line 75]
!972 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !948} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from uint8_t]
!973 = metadata !{i32 786688, metadata !963, metadata !"src8", metadata !937, i32 76, metadata !946, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src8] [line 76]
!974 = metadata !{i32 786478, metadata !933, metadata !937, metadata !"print_msg", metadata !"print_msg", metadata !"", i32 82, metadata !975, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.macan_ctx*, i32, i8*, ...)* @print_msg, 
!975 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !976, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!976 = metadata !{null, metadata !977, metadata !1142, metadata !114}
!977 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !978} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ctx]
!978 = metadata !{i32 786451, metadata !251, null, metadata !"macan_ctx", i32 150, i64 2112, i64 64, i32 0, i32 0, null, metadata !979, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ctx] [line 150, size 2112, align 64, offset 0] [from ]
!979 = metadata !{metadata !980, metadata !1018, metadata !1031, metadata !1049, metadata !1062, metadata !1071, metadata !1073, metadata !1074, metadata !1075, metadata !1116, metadata !1117, metadata !1118, metadata !1119, metadata !1120}
!980 = metadata !{i32 786445, metadata !251, metadata !978, metadata !"config", i32 151, i64 64, i64 64, i64 0, i32 0, metadata !981} ; [ DW_TAG_member ] [config] [line 151, size 64, align 64, offset 0] [from ]
!981 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !982} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!982 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !983} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_config]
!983 = metadata !{i32 786451, metadata !239, null, metadata !"macan_config", i32 72, i64 512, i64 64, i32 0, i32 0, null, metadata !984, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_config] [line 72, size 512, align 64, offset 0] [from ]
!984 = metadata !{metadata !985, metadata !987, metadata !997, metadata !998, metadata !1010, metadata !1012, metadata !1013, metadata !1014, metadata !1015, metadata !1016, metadata !1017}
!985 = metadata !{i32 786445, metadata !239, metadata !983, metadata !"sig_count", i32 73, i64 32, i64 32, i64 0, i32 0, metadata !986} ; [ DW_TAG_member ] [sig_count] [line 73, size 32, align 32, offset 0] [from uint32_t]
!986 = metadata !{i32 786454, metadata !933, null, metadata !"uint32_t", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [uint32_t] [line 51, size 0, align 0, offset 0] [from unsigned int]
!987 = metadata !{i32 786445, metadata !239, metadata !983, metadata !"sigspec", i32 74, i64 64, i64 64, i64 64, i32 0, metadata !988} ; [ DW_TAG_member ] [sigspec] [line 74, size 64, align 64, offset 64] [from ]
!988 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !989} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!989 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !990} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_sig_spec]
!990 = metadata !{i32 786451, metadata !239, null, metadata !"macan_sig_spec", i32 51, i64 64, i64 16, i32 0, i32 0, null, metadata !991, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_sig_spec] [line 51, size 64, align 16, offset 0] [from ]
!991 = metadata !{metadata !992, metadata !993, metadata !994, metadata !995, metadata !996}
!992 = metadata !{i32 786445, metadata !239, metadata !990, metadata !"can_nsid", i32 52, i64 16, i64 16, i64 0, i32 0, metadata !266} ; [ DW_TAG_member ] [can_nsid] [line 52, size 16, align 16, offset 0] [from uint16_t]
!993 = metadata !{i32 786445, metadata !239, metadata !990, metadata !"can_sid", i32 53, i64 16, i64 16, i64 16, i32 0, metadata !266} ; [ DW_TAG_member ] [can_sid] [line 53, size 16, align 16, offset 16] [from uint16_t]
!994 = metadata !{i32 786445, metadata !239, metadata !990, metadata !"src_id", i32 54, i64 8, i64 8, i64 32, i32 0, metadata !948} ; [ DW_TAG_member ] [src_id] [line 54, size 8, align 8, offset 32] [from uint8_t]
!995 = metadata !{i32 786445, metadata !239, metadata !990, metadata !"dst_id", i32 55, i64 8, i64 8, i64 40, i32 0, metadata !948} ; [ DW_TAG_member ] [dst_id] [line 55, size 8, align 8, offset 40] [from uint8_t]
!996 = metadata !{i32 786445, metadata !239, metadata !990, metadata !"presc", i32 56, i64 8, i64 8, i64 48, i32 0, metadata !948} ; [ DW_TAG_member ] [presc] [line 56, size 8, align 8, offset 48] [from uint8_t]
!997 = metadata !{i32 786445, metadata !239, metadata !983, metadata !"node_count", i32 75, i64 8, i64 8, i64 128, i32 0, metadata !948} ; [ DW_TAG_member ] [node_count] [line 75, size 8, align 8, offset 128] [from uint8_t]
!998 = metadata !{i32 786445, metadata !239, metadata !983, metadata !"canid", i32 76, i64 64, i64 64, i64 192, i32 0, metadata !999} ; [ DW_TAG_member ] [canid] [line 76, size 64, align 64, offset 192] [from ]
!999 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1000} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1000 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1001} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_can_ids]
!1001 = metadata !{i32 786451, metadata !239, null, metadata !"macan_can_ids", i32 64, i64 128, i64 64, i32 0, i32 0, null, metadata !1002, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_can_ids] [line 64, size 128, align 64, offset 0] [from ]
!1002 = metadata !{metadata !1003, metadata !1004}
!1003 = metadata !{i32 786445, metadata !239, metadata !1001, metadata !"time", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !986} ; [ DW_TAG_member ] [time] [line 65, size 32, align 32, offset 0] [from uint32_t]
!1004 = metadata !{i32 786445, metadata !239, metadata !1001, metadata !"ecu", i32 66, i64 64, i64 64, i64 64, i32 0, metadata !1005} ; [ DW_TAG_member ] [ecu] [line 66, size 64, align 64, offset 64] [from ]
!1005 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1006} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ecu]
!1006 = metadata !{i32 786451, metadata !239, null, metadata !"macan_ecu", i32 59, i64 128, i64 64, i32 0, i32 0, null, metadata !1007, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ecu] [line 59, size 128, align 64, offset 0] [from ]
!1007 = metadata !{metadata !1008, metadata !1009}
!1008 = metadata !{i32 786445, metadata !239, metadata !1006, metadata !"canid", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !986} ; [ DW_TAG_member ] [canid] [line 60, size 32, align 32, offset 0] [from uint32_t]
!1009 = metadata !{i32 786445, metadata !239, metadata !1006, metadata !"name", i32 61, i64 64, i64 64, i64 64, i32 0, metadata !114} ; [ DW_TAG_member ] [name] [line 61, size 64, align 64, offset 64] [from ]
!1010 = metadata !{i32 786445, metadata !239, metadata !983, metadata !"key_server_id", i32 77, i64 8, i64 8, i64 256, i32 0, metadata !1011} ; [ DW_TAG_member ] [key_server_id] [line 77, size 8, align 8, offset 256] [from macan_ecuid]
!1011 = metadata !{i32 786454, metadata !239, null, metadata !"macan_ecuid", i32 37, i64 0, i64 0, i64 0, i32 0, metadata !948} ; [ DW_TAG_typedef ] [macan_ecuid] [line 37, size 0, align 0, offset 0] [from uint8_t]
!1012 = metadata !{i32 786445, metadata !239, metadata !983, metadata !"time_server_id", i32 78, i64 8, i64 8, i64 264, i32 0, metadata !1011} ; [ DW_TAG_member ] [time_server_id] [line 78, size 8, align 8, offset 264] [from macan_ecuid]
!1013 = metadata !{i32 786445, metadata !239, metadata !983, metadata !"time_div", i32 79, i64 32, i64 32, i64 288, i32 0, metadata !986} ; [ DW_TAG_member ] [time_div] [line 79, size 32, align 32, offset 288] [from uint32_t]
!1014 = metadata !{i32 786445, metadata !239, metadata !983, metadata !"skey_validity", i32 80, i64 64, i64 64, i64 320, i32 0, metadata !290} ; [ DW_TAG_member ] [skey_validity] [line 80, size 64, align 64, offset 320] [from uint64_t]
!1015 = metadata !{i32 786445, metadata !239, metadata !983, metadata !"skey_chg_timeout", i32 81, i64 32, i64 32, i64 384, i32 0, metadata !986} ; [ DW_TAG_member ] [skey_chg_timeout] [line 81, size 32, align 32, offset 384] [from uint32_t]
!1016 = metadata !{i32 786445, metadata !239, metadata !983, metadata !"time_timeout", i32 82, i64 32, i64 32, i64 416, i32 0, metadata !986} ; [ DW_TAG_member ] [time_timeout] [line 82, size 32, align 32, offset 416] [from uint32_t]
!1017 = metadata !{i32 786445, metadata !239, metadata !983, metadata !"time_delta", i32 83, i64 32, i64 32, i64 448, i32 0, metadata !986} ; [ DW_TAG_member ] [time_delta] [line 83, size 32, align 32, offset 448] [from uint32_t]
!1018 = metadata !{i32 786445, metadata !251, metadata !978, metadata !"node", i32 152, i64 64, i64 64, i64 64, i32 0, metadata !1019} ; [ DW_TAG_member ] [node] [line 152, size 64, align 64, offset 64] [from ]
!1019 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1020} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1020 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1021} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_node_config]
!1021 = metadata !{i32 786451, metadata !239, null, metadata !"macan_node_config", i32 89, i64 128, i64 64, i32 0, i32 0, null, metadata !1022, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_node_config] [line 89, size 128, align 64, offset 0] [fr
!1022 = metadata !{metadata !1023, metadata !1024}
!1023 = metadata !{i32 786445, metadata !239, metadata !1021, metadata !"node_id", i32 90, i64 8, i64 8, i64 0, i32 0, metadata !1011} ; [ DW_TAG_member ] [node_id] [line 90, size 8, align 8, offset 0] [from macan_ecuid]
!1024 = metadata !{i32 786445, metadata !239, metadata !1021, metadata !"ltk", i32 91, i64 64, i64 64, i64 64, i32 0, metadata !1025} ; [ DW_TAG_member ] [ltk] [line 91, size 64, align 64, offset 64] [from ]
!1025 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1026} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1026 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1027} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_key]
!1027 = metadata !{i32 786451, metadata !239, null, metadata !"macan_key", i32 97, i64 128, i64 8, i32 0, i32 0, null, metadata !1028, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_key] [line 97, size 128, align 8, offset 0] [from ]
!1028 = metadata !{metadata !1029}
!1029 = metadata !{i32 786445, metadata !239, metadata !1027, metadata !"data", i32 98, i64 128, i64 8, i64 0, i32 0, metadata !1030} ; [ DW_TAG_member ] [data] [line 98, size 128, align 8, offset 0] [from ]
!1030 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 8, i32 0, i32 0, metadata !948, metadata !88, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from uint8_t]
!1031 = metadata !{i32 786445, metadata !251, metadata !978, metadata !"cpart", i32 153, i64 64, i64 64, i64 128, i32 0, metadata !1032} ; [ DW_TAG_member ] [cpart] [line 153, size 64, align 64, offset 128] [from ]
!1032 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1033} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1033 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1034} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from com_part]
!1034 = metadata !{i32 786451, metadata !251, null, metadata !"com_part", i32 113, i64 448, i64 64, i32 0, i32 0, null, metadata !1035, i32 0, null, null} ; [ DW_TAG_structure_type ] [com_part] [line 113, size 448, align 64, offset 0] [from ]
!1035 = metadata !{metadata !1036, metadata !1037, metadata !1038, metadata !1039, metadata !1040, metadata !1042, metadata !1043, metadata !1044, metadata !1045}
!1036 = metadata !{i32 786445, metadata !251, metadata !1034, metadata !"key_received", i32 114, i64 8, i64 8, i64 0, i32 0, metadata !157} ; [ DW_TAG_member ] [key_received] [line 114, size 8, align 8, offset 0] [from _Bool]
!1037 = metadata !{i32 786445, metadata !251, metadata !1034, metadata !"skey", i32 115, i64 128, i64 8, i64 8, i32 0, metadata !1027} ; [ DW_TAG_member ] [skey] [line 115, size 128, align 8, offset 8] [from macan_key]
!1038 = metadata !{i32 786445, metadata !251, metadata !1034, metadata !"valid_until", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !290} ; [ DW_TAG_member ] [valid_until] [line 116, size 64, align 64, offset 192] [from uint64_t]
!1039 = metadata !{i32 786445, metadata !251, metadata !1034, metadata !"awaiting_skey", i32 117, i64 8, i64 8, i64 256, i32 0, metadata !157} ; [ DW_TAG_member ] [awaiting_skey] [line 117, size 8, align 8, offset 256] [from _Bool]
!1040 = metadata !{i32 786445, metadata !251, metadata !1034, metadata !"chg", i32 118, i64 48, i64 8, i64 264, i32 0, metadata !1041} ; [ DW_TAG_member ] [chg] [line 118, size 48, align 8, offset 264] [from ]
!1041 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !948, metadata !163, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from uint8_t]
!1042 = metadata !{i32 786445, metadata !251, metadata !1034, metadata !"flags", i32 119, i64 8, i64 8, i64 312, i32 0, metadata !948} ; [ DW_TAG_member ] [flags] [line 119, size 8, align 8, offset 312] [from uint8_t]
!1043 = metadata !{i32 786445, metadata !251, metadata !1034, metadata !"group_field", i32 120, i64 32, i64 32, i64 320, i32 0, metadata !986} ; [ DW_TAG_member ] [group_field] [line 120, size 32, align 32, offset 320] [from uint32_t]
!1044 = metadata !{i32 786445, metadata !251, metadata !1034, metadata !"ecu_id", i32 121, i64 8, i64 8, i64 352, i32 0, metadata !1011} ; [ DW_TAG_member ] [ecu_id] [line 121, size 8, align 8, offset 352] [from macan_ecuid]
!1045 = metadata !{i32 786445, metadata !251, metadata !1034, metadata !"skey_callback", i32 122, i64 64, i64 64, i64 384, i32 0, metadata !1046} ; [ DW_TAG_member ] [skey_callback] [line 122, size 64, align 64, offset 384] [from ]
!1046 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1047} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1047 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1048, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1048 = metadata !{null, metadata !977, metadata !1011}
!1049 = metadata !{i32 786445, metadata !251, metadata !978, metadata !"sighand", i32 154, i64 64, i64 64, i64 192, i32 0, metadata !1050} ; [ DW_TAG_member ] [sighand] [line 154, size 64, align 64, offset 192] [from ]
!1050 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1051} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1051 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1052} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sig_handle]
!1052 = metadata !{i32 786451, metadata !251, null, metadata !"sig_handle", i32 130, i64 192, i64 64, i32 0, i32 0, null, metadata !1053, i32 0, null, null} ; [ DW_TAG_structure_type ] [sig_handle] [line 130, size 192, align 64, offset 0] [from ]
!1053 = metadata !{metadata !1054, metadata !1055, metadata !1056, metadata !1057, metadata !1061}
!1054 = metadata !{i32 786445, metadata !251, metadata !1052, metadata !"presc", i32 131, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [presc] [line 131, size 32, align 32, offset 0] [from int]
!1055 = metadata !{i32 786445, metadata !251, metadata !1052, metadata !"presc_cnt", i32 133, i64 8, i64 8, i64 32, i32 0, metadata !948} ; [ DW_TAG_member ] [presc_cnt] [line 133, size 8, align 8, offset 32] [from uint8_t]
!1056 = metadata !{i32 786445, metadata !251, metadata !1052, metadata !"flags", i32 135, i64 8, i64 8, i64 40, i32 0, metadata !948} ; [ DW_TAG_member ] [flags] [line 135, size 8, align 8, offset 40] [from uint8_t]
!1057 = metadata !{i32 786445, metadata !251, metadata !1052, metadata !"cback", i32 136, i64 64, i64 64, i64 64, i32 0, metadata !1058} ; [ DW_TAG_member ] [cback] [line 136, size 64, align 64, offset 64] [from ]
!1058 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1059} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1059 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1060, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1060 = metadata !{null, metadata !948, metadata !986}
!1061 = metadata !{i32 786445, metadata !251, metadata !1052, metadata !"invalid_cback", i32 137, i64 64, i64 64, i64 128, i32 0, metadata !1058} ; [ DW_TAG_member ] [invalid_cback] [line 137, size 64, align 64, offset 128] [from ]
!1062 = metadata !{i32 786445, metadata !251, metadata !978, metadata !"time", i32 155, i64 320, i64 64, i64 256, i32 0, metadata !1063} ; [ DW_TAG_member ] [time] [line 155, size 320, align 64, offset 256] [from macan_timekeeping]
!1063 = metadata !{i32 786451, metadata !251, null, metadata !"macan_timekeeping", i32 93, i64 320, i64 64, i32 0, i32 0, null, metadata !1064, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_timekeeping] [line 93, size 320, align 64, offset 0] [fr
!1064 = metadata !{metadata !1065, metadata !1066, metadata !1067, metadata !1068, metadata !1069, metadata !1070}
!1065 = metadata !{i32 786445, metadata !251, metadata !1063, metadata !"offs", i32 94, i64 64, i64 64, i64 0, i32 0, metadata !290} ; [ DW_TAG_member ] [offs] [line 94, size 64, align 64, offset 0] [from uint64_t]
!1066 = metadata !{i32 786445, metadata !251, metadata !1063, metadata !"nonauth_ts", i32 96, i64 32, i64 32, i64 64, i32 0, metadata !986} ; [ DW_TAG_member ] [nonauth_ts] [line 96, size 32, align 32, offset 64] [from uint32_t]
!1067 = metadata !{i32 786445, metadata !251, metadata !1063, metadata !"nonauth_loc", i32 97, i64 64, i64 64, i64 128, i32 0, metadata !290} ; [ DW_TAG_member ] [nonauth_loc] [line 97, size 64, align 64, offset 128] [from uint64_t]
!1068 = metadata !{i32 786445, metadata !251, metadata !1063, metadata !"chal_ts", i32 99, i64 64, i64 64, i64 192, i32 0, metadata !290} ; [ DW_TAG_member ] [chal_ts] [line 99, size 64, align 64, offset 192] [from uint64_t]
!1069 = metadata !{i32 786445, metadata !251, metadata !1063, metadata !"chg", i32 100, i64 48, i64 8, i64 256, i32 0, metadata !1041} ; [ DW_TAG_member ] [chg] [line 100, size 48, align 8, offset 256] [from ]
!1070 = metadata !{i32 786445, metadata !251, metadata !1063, metadata !"ready", i32 101, i64 8, i64 8, i64 304, i32 0, metadata !157} ; [ DW_TAG_member ] [ready] [line 101, size 8, align 8, offset 304] [from _Bool]
!1071 = metadata !{i32 786445, metadata !251, metadata !978, metadata !"keywrap", i32 156, i64 256, i64 8, i64 576, i32 0, metadata !1072} ; [ DW_TAG_member ] [keywrap] [line 156, size 256, align 8, offset 576] [from ]
!1072 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !948, metadata !195, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from uint8_t]
!1073 = metadata !{i32 786445, metadata !251, metadata !978, metadata !"rcvd_skey_seq", i32 157, i64 32, i64 32, i64 832, i32 0, metadata !12} ; [ DW_TAG_member ] [rcvd_skey_seq] [line 157, size 32, align 32, offset 832] [from unsigned int]
!1074 = metadata !{i32 786445, metadata !251, metadata !978, metadata !"sockfd", i32 158, i64 32, i64 32, i64 864, i32 0, metadata !19} ; [ DW_TAG_member ] [sockfd] [line 158, size 32, align 32, offset 864] [from int]
!1075 = metadata !{i32 786445, metadata !251, metadata !978, metadata !"loop", i32 159, i64 64, i64 64, i64 896, i32 0, metadata !1076} ; [ DW_TAG_member ] [loop] [line 159, size 64, align 64, offset 896] [from ]
!1076 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1077} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_loop]
!1077 = metadata !{i32 786454, metadata !251, null, metadata !"macan_ev_loop", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !1078} ; [ DW_TAG_typedef ] [macan_ev_loop] [line 55, size 0, align 0, offset 0] [from macan_ev_loop]
!1078 = metadata !{i32 786451, metadata !355, null, metadata !"macan_ev_loop", i32 52, i64 128, i64 64, i32 0, i32 0, null, metadata !1079, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ev_loop] [line 52, size 128, align 64, offset 0] [from ]
!1079 = metadata !{metadata !1080, metadata !1101}
!1080 = metadata !{i32 786445, metadata !355, metadata !1078, metadata !"cans", i32 53, i64 64, i64 64, i64 0, i32 0, metadata !1081} ; [ DW_TAG_member ] [cans] [line 53, size 64, align 64, offset 0] [from ]
!1081 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1082} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_can]
!1082 = metadata !{i32 786454, metadata !355, null, metadata !"macan_ev_can", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !1083} ; [ DW_TAG_typedef ] [macan_ev_can] [line 41, size 0, align 0, offset 0] [from macan_ev_can]
!1083 = metadata !{i32 786451, metadata !355, null, metadata !"macan_ev_can", i32 35, i64 320, i64 64, i32 0, i32 0, null, metadata !1084, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ev_can] [line 35, size 320, align 64, offset 0] [from ]
!1084 = metadata !{metadata !1085, metadata !1091, metadata !1092, metadata !1093, metadata !1100}
!1085 = metadata !{i32 786445, metadata !355, metadata !1083, metadata !"cb", i32 36, i64 64, i64 64, i64 0, i32 0, metadata !1086} ; [ DW_TAG_member ] [cb] [line 36, size 64, align 64, offset 0] [from ]
!1086 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1087} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1087 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1088, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1088 = metadata !{null, metadata !1089, metadata !1090, metadata !19}
!1089 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1078} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_loop]
!1090 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1083} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_can]
!1091 = metadata !{i32 786445, metadata !355, metadata !1083, metadata !"next", i32 37, i64 64, i64 64, i64 64, i32 0, metadata !1090} ; [ DW_TAG_member ] [next] [line 37, size 64, align 64, offset 64] [from ]
!1092 = metadata !{i32 786445, metadata !355, metadata !1083, metadata !"canfd", i32 38, i64 32, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [canfd] [line 38, size 32, align 32, offset 128] [from int]
!1093 = metadata !{i32 786445, metadata !355, metadata !1083, metadata !"received", i32 39, i64 64, i64 64, i64 192, i32 0, metadata !1094} ; [ DW_TAG_member ] [received] [line 39, size 64, align 64, offset 192] [from ]
!1094 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1095} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from can_frame]
!1095 = metadata !{i32 786451, metadata !373, null, metadata !"can_frame", i32 68, i64 128, i64 64, i32 0, i32 0, null, metadata !1096, i32 0, null, null} ; [ DW_TAG_structure_type ] [can_frame] [line 68, size 128, align 64, offset 0] [from ]
!1096 = metadata !{metadata !1097, metadata !1098, metadata !1099}
!1097 = metadata !{i32 786445, metadata !373, metadata !1095, metadata !"can_id", i32 69, i64 32, i64 32, i64 0, i32 0, metadata !376} ; [ DW_TAG_member ] [can_id] [line 69, size 32, align 32, offset 0] [from canid_t]
!1098 = metadata !{i32 786445, metadata !373, metadata !1095, metadata !"can_dlc", i32 70, i64 8, i64 8, i64 32, i32 0, metadata !379} ; [ DW_TAG_member ] [can_dlc] [line 70, size 8, align 8, offset 32] [from __u8]
!1099 = metadata !{i32 786445, metadata !373, metadata !1095, metadata !"data", i32 71, i64 64, i64 8, i64 64, i32 0, metadata !381} ; [ DW_TAG_member ] [data] [line 71, size 64, align 8, offset 64] [from ]
!1100 = metadata !{i32 786445, metadata !355, metadata !1083, metadata !"data", i32 40, i64 64, i64 64, i64 256, i32 0, metadata !55} ; [ DW_TAG_member ] [data] [line 40, size 64, align 64, offset 256] [from ]
!1101 = metadata !{i32 786445, metadata !355, metadata !1078, metadata !"timers", i32 54, i64 64, i64 64, i64 64, i32 0, metadata !1102} ; [ DW_TAG_member ] [timers] [line 54, size 64, align 64, offset 64] [from ]
!1102 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1103} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_timer]
!1103 = metadata !{i32 786454, metadata !355, null, metadata !"macan_ev_timer", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !1104} ; [ DW_TAG_typedef ] [macan_ev_timer] [line 50, size 0, align 0, offset 0] [from macan_ev_timer]
!1104 = metadata !{i32 786451, metadata !355, null, metadata !"macan_ev_timer", i32 43, i64 320, i64 64, i32 0, i32 0, null, metadata !1105, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ev_timer] [line 43, size 320, align 64, offset 0] [from ]
!1105 = metadata !{metadata !1106, metadata !1111, metadata !1112, metadata !1113, metadata !1114, metadata !1115}
!1106 = metadata !{i32 786445, metadata !355, metadata !1104, metadata !"cb", i32 44, i64 64, i64 64, i64 0, i32 0, metadata !1107} ; [ DW_TAG_member ] [cb] [line 44, size 64, align 64, offset 0] [from ]
!1107 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1108} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1108 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1109 = metadata !{null, metadata !1089, metadata !1110, metadata !19}
!1110 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1104} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_timer]
!1111 = metadata !{i32 786445, metadata !355, metadata !1104, metadata !"next", i32 45, i64 64, i64 64, i64 64, i32 0, metadata !1110} ; [ DW_TAG_member ] [next] [line 45, size 64, align 64, offset 64] [from ]
!1112 = metadata !{i32 786445, metadata !355, metadata !1104, metadata !"after_us", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !12} ; [ DW_TAG_member ] [after_us] [line 46, size 32, align 32, offset 128] [from unsigned int]
!1113 = metadata !{i32 786445, metadata !355, metadata !1104, metadata !"repeat_us", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !12} ; [ DW_TAG_member ] [repeat_us] [line 47, size 32, align 32, offset 160] [from unsigned int]
!1114 = metadata !{i32 786445, metadata !355, metadata !1104, metadata !"expire_us", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !290} ; [ DW_TAG_member ] [expire_us] [line 48, size 64, align 64, offset 192] [from uint64_t]
!1115 = metadata !{i32 786445, metadata !355, metadata !1104, metadata !"data", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !55} ; [ DW_TAG_member ] [data] [line 49, size 64, align 64, offset 256] [from ]
!1116 = metadata !{i32 786445, metadata !251, metadata !978, metadata !"can_watcher", i32 160, i64 320, i64 64, i64 960, i32 0, metadata !1082} ; [ DW_TAG_member ] [can_watcher] [line 160, size 320, align 64, offset 960] [from macan_ev_can]
!1117 = metadata !{i32 786445, metadata !251, metadata !978, metadata !"housekeeping", i32 161, i64 320, i64 64, i64 1280, i32 0, metadata !1103} ; [ DW_TAG_member ] [housekeeping] [line 161, size 320, align 64, offset 1280] [from macan_ev_timer]
!1118 = metadata !{i32 786445, metadata !251, metadata !978, metadata !"print_msg_enabled", i32 162, i64 8, i64 8, i64 1600, i32 0, metadata !157} ; [ DW_TAG_member ] [print_msg_enabled] [line 162, size 8, align 8, offset 1600] [from _Bool]
!1119 = metadata !{i32 786445, metadata !251, metadata !978, metadata !"dump_disabled", i32 164, i64 8, i64 8, i64 1608, i32 0, metadata !157} ; [ DW_TAG_member ] [dump_disabled] [line 164, size 8, align 8, offset 1608] [from _Bool]
!1120 = metadata !{i32 786445, metadata !251, metadata !978, metadata !"", i32 166, i64 448, i64 64, i64 1664, i32 0, metadata !1121} ; [ DW_TAG_member ] [line 166, size 448, align 64, offset 1664] [from ]
!1121 = metadata !{i32 786455, metadata !251, metadata !978, metadata !"", i32 166, i64 448, i64 64, i64 0, i32 0, null, metadata !1122, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 166, size 448, align 64, offset 0] [from ]
!1122 = metadata !{metadata !1123, metadata !1134}
!1123 = metadata !{i32 786445, metadata !251, metadata !1121, metadata !"ts", i32 174, i64 448, i64 64, i64 0, i32 0, metadata !1124} ; [ DW_TAG_member ] [ts] [line 174, size 448, align 64, offset 0] [from ]
!1124 = metadata !{i32 786451, metadata !251, metadata !1121, metadata !"", i32 167, i64 448, i64 64, i32 0, i32 0, null, metadata !1125, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 167, size 448, align 64, offset 0] [from ]
!1125 = metadata !{metadata !1126, metadata !1127, metadata !1128}
!1126 = metadata !{i32 786445, metadata !251, metadata !1124, metadata !"time_bcast", i32 168, i64 320, i64 64, i64 0, i32 0, metadata !1103} ; [ DW_TAG_member ] [time_bcast] [line 168, size 320, align 64, offset 0] [from macan_ev_timer]
!1127 = metadata !{i32 786445, metadata !251, metadata !1124, metadata !"bcast_time", i32 169, i64 64, i64 64, i64 320, i32 0, metadata !290} ; [ DW_TAG_member ] [bcast_time] [line 169, size 64, align 64, offset 320] [from uint64_t]
!1128 = metadata !{i32 786445, metadata !251, metadata !1124, metadata !"auth_req", i32 173, i64 64, i64 64, i64 384, i32 0, metadata !1129} ; [ DW_TAG_member ] [auth_req] [line 173, size 64, align 64, offset 384] [from ]
!1129 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1130} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1130 = metadata !{i32 786451, metadata !251, metadata !1124, metadata !"", i32 170, i64 56, i64 8, i32 0, i32 0, null, metadata !1131, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 170, size 56, align 8, offset 0] [from ]
!1131 = metadata !{metadata !1132, metadata !1133}
!1132 = metadata !{i32 786445, metadata !251, metadata !1130, metadata !"pending", i32 171, i64 8, i64 8, i64 0, i32 0, metadata !157} ; [ DW_TAG_member ] [pending] [line 171, size 8, align 8, offset 0] [from _Bool]
!1133 = metadata !{i32 786445, metadata !251, metadata !1130, metadata !"chg", i32 172, i64 48, i64 8, i64 8, i32 0, metadata !1041} ; [ DW_TAG_member ] [chg] [line 172, size 48, align 8, offset 8] [from ]
!1134 = metadata !{i32 786445, metadata !251, metadata !1121, metadata !"ks", i32 179, i64 448, i64 64, i64 0, i32 0, metadata !1135} ; [ DW_TAG_member ] [ks] [line 179, size 448, align 64, offset 0] [from ]
!1135 = metadata !{i32 786451, metadata !251, metadata !1121, metadata !"", i32 175, i64 448, i64 64, i32 0, i32 0, null, metadata !1136, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 175, size 448, align 64, offset 0] [from ]
!1136 = metadata !{metadata !1137, metadata !1140, metadata !1141}
!1137 = metadata !{i32 786445, metadata !251, metadata !1135, metadata !"ltk", i32 176, i64 64, i64 64, i64 0, i32 0, metadata !1138} ; [ DW_TAG_member ] [ltk] [line 176, size 64, align 64, offset 0] [from ]
!1138 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1139} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1139 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1025} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!1140 = metadata !{i32 786445, metadata !251, metadata !1135, metadata !"time_bcast", i32 177, i64 320, i64 64, i64 64, i32 0, metadata !1103} ; [ DW_TAG_member ] [time_bcast] [line 177, size 320, align 64, offset 64] [from macan_ev_timer]
!1141 = metadata !{i32 786445, metadata !251, metadata !1135, metadata !"bcast_time", i32 178, i64 64, i64 64, i64 384, i32 0, metadata !290} ; [ DW_TAG_member ] [bcast_time] [line 178, size 64, align 64, offset 384] [from uint64_t]
!1142 = metadata !{i32 786454, metadata !933, null, metadata !"msg_type", i32 54, i64 0, i64 0, i64 0, i32 0, metadata !229} ; [ DW_TAG_typedef ] [msg_type] [line 54, size 0, align 0, offset 0] [from ]
!1143 = metadata !{metadata !1144, metadata !1145, metadata !1146, metadata !1147, metadata !1161, metadata !1163, metadata !1165}
!1144 = metadata !{i32 786689, metadata !974, metadata !"ctx", metadata !937, i32 16777298, metadata !977, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 82]
!1145 = metadata !{i32 786689, metadata !974, metadata !"type", metadata !937, i32 33554514, metadata !1142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 82]
!1146 = metadata !{i32 786689, metadata !974, metadata !"format", metadata !937, i32 50331730, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [format] [line 82]
!1147 = metadata !{i32 786688, metadata !974, metadata !"ap", metadata !937, i32 84, metadata !1148, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 84]
!1148 = metadata !{i32 786454, metadata !933, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !1149} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!1149 = metadata !{i32 786454, metadata !933, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !1150} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!1150 = metadata !{i32 786454, metadata !933, null, metadata !"__builtin_va_list", i32 84, i64 0, i64 0, i64 0, i32 0, metadata !1151} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 84, size 0, align 0, offset 0] [from ]
!1151 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !1152, metadata !1159, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!1152 = metadata !{i32 786454, metadata !933, null, metadata !"__va_list_tag", i32 84, i64 0, i64 0, i64 0, i32 0, metadata !1153} ; [ DW_TAG_typedef ] [__va_list_tag] [line 84, size 0, align 0, offset 0] [from __va_list_tag]
!1153 = metadata !{i32 786451, metadata !933, null, metadata !"__va_list_tag", i32 84, i64 192, i64 64, i32 0, i32 0, null, metadata !1154, i32 0, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 84, size 192, align 64, offset 0] [from ]
!1154 = metadata !{metadata !1155, metadata !1156, metadata !1157, metadata !1158}
!1155 = metadata !{i32 786445, metadata !933, metadata !1153, metadata !"gp_offset", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_member ] [gp_offset] [line 84, size 32, align 32, offset 0] [from unsigned int]
!1156 = metadata !{i32 786445, metadata !933, metadata !1153, metadata !"fp_offset", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !12} ; [ DW_TAG_member ] [fp_offset] [line 84, size 32, align 32, offset 32] [from unsigned int]
!1157 = metadata !{i32 786445, metadata !933, metadata !1153, metadata !"overflow_arg_area", i32 84, i64 64, i64 64, i64 64, i32 0, metadata !55} ; [ DW_TAG_member ] [overflow_arg_area] [line 84, size 64, align 64, offset 64] [from ]
!1158 = metadata !{i32 786445, metadata !933, metadata !1153, metadata !"reg_save_area", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !55} ; [ DW_TAG_member ] [reg_save_area] [line 84, size 64, align 64, offset 128] [from ]
!1159 = metadata !{metadata !1160}
!1160 = metadata !{i32 786465, i64 0, i64 1}      ; [ DW_TAG_subrange_type ] [0, 0]
!1161 = metadata !{i32 786688, metadata !974, metadata !"nodestr", metadata !937, i32 85, metadata !1162, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodestr] [line 85]
!1162 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 8, i32 0, i32 0, metadata !116, metadata !591, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32, align 8, offset 0] [from char]
!1163 = metadata !{i32 786688, metadata !974, metadata !"msg_type_strings", metadata !937, i32 86, metadata !1164, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg_type_strings] [line 86]
!1164 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !114, metadata !163, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from ]
!1165 = metadata !{i32 786688, metadata !1166, metadata !"name", metadata !937, i32 98, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 98]
!1166 = metadata !{i32 786443, metadata !933, metadata !974, i32 97, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/common.
!1167 = metadata !{i32 786478, metadata !933, metadata !937, metadata !"print_can_frame", metadata !"print_can_frame", metadata !"", i32 110, metadata !1168, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1170, i32 1
!1168 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1169, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1169 = metadata !{null, metadata !1094}
!1170 = metadata !{metadata !1171, metadata !1172}
!1171 = metadata !{i32 786689, metadata !1167, metadata !"cf", metadata !937, i32 16777326, metadata !1094, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 110]
!1172 = metadata !{i32 786688, metadata !1167, metadata !"i", metadata !937, i32 112, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 112]
!1173 = metadata !{i32 786478, metadata !1174, metadata !1175, metadata !"vprintf", metadata !"vprintf", metadata !"", i32 36, metadata !1176, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1180, i32 37} ; [ DW_TAG_s
!1174 = metadata !{metadata !"/usr/include/x86_64-linux-gnu/bits/stdio.h", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src"}
!1175 = metadata !{i32 786473, metadata !1174}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//usr/include/x86_64-linux-gnu/bits/stdio.h]
!1176 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1177, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1177 = metadata !{metadata !19, metadata !1178, metadata !1179}
!1178 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!1179 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1152} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __va_list_tag]
!1180 = metadata !{metadata !1181, metadata !1182}
!1181 = metadata !{i32 786689, metadata !1173, metadata !"__fmt", metadata !1175, i32 16777252, metadata !1178, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__fmt] [line 36]
!1182 = metadata !{i32 786689, metadata !1173, metadata !"__arg", metadata !1175, i32 33554468, metadata !1179, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__arg] [line 36]
!1183 = metadata !{metadata !1184}
!1184 = metadata !{i32 786484, i32 0, metadata !957, metadata !"tcnt", metadata !"tcnt", metadata !"", metadata !937, i32 59, metadata !986, i32 1, i32 1, null, null}
!1185 = metadata !{i32 786449, metadata !1186, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !1187, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!1186 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/cryptlib.c", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src"}
!1187 = metadata !{metadata !1188, metadata !1222, metadata !1246, metadata !1418, metadata !1427}
!1188 = metadata !{i32 786478, metadata !1186, metadata !1189, metadata !"macan_aes_wrap", metadata !"macan_aes_wrap", metadata !"", i32 49, metadata !1190, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1200, i32 50
!1189 = metadata !{i32 786473, metadata !1186}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/cryptlib.c]
!1190 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1191 = metadata !{null, metadata !1192, metadata !1197, metadata !574, metadata !1198}
!1192 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1193} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1193 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1194} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_key]
!1194 = metadata !{i32 786451, metadata !239, null, metadata !"macan_key", i32 97, i64 128, i64 8, i32 0, i32 0, null, metadata !1195, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_key] [line 97, size 128, align 8, offset 0] [from ]
!1195 = metadata !{metadata !1196}
!1196 = metadata !{i32 786445, metadata !239, metadata !1194, metadata !"data", i32 98, i64 128, i64 8, i64 0, i32 0, metadata !306} ; [ DW_TAG_member ] [data] [line 98, size 128, align 8, offset 0] [from ]
!1197 = metadata !{i32 786454, metadata !1186, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1198 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1199} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1199 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !269} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from uint8_t]
!1200 = metadata !{metadata !1201, metadata !1202, metadata !1203, metadata !1204, metadata !1205, metadata !1206, metadata !1207, metadata !1208, metadata !1209, metadata !1210, metadata !1213, metadata !1214, metadata !1215, metadata !1221}
!1201 = metadata !{i32 786689, metadata !1188, metadata !"key", metadata !1189, i32 16777265, metadata !1192, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 49]
!1202 = metadata !{i32 786689, metadata !1188, metadata !"length", metadata !1189, i32 33554481, metadata !1197, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 49]
!1203 = metadata !{i32 786689, metadata !1188, metadata !"dst", metadata !1189, i32 50331697, metadata !574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 49]
!1204 = metadata !{i32 786689, metadata !1188, metadata !"src", metadata !1189, i32 67108913, metadata !1198, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 49]
!1205 = metadata !{i32 786688, metadata !1188, metadata !"a", metadata !1189, i32 52, metadata !637, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 52]
!1206 = metadata !{i32 786688, metadata !1188, metadata !"b", metadata !1189, i32 53, metadata !306, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 53]
!1207 = metadata !{i32 786688, metadata !1188, metadata !"block_size", metadata !1189, i32 54, metadata !1197, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_size] [line 54]
!1208 = metadata !{i32 786688, metadata !1188, metadata !"t", metadata !1189, i32 55, metadata !1197, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 55]
!1209 = metadata !{i32 786688, metadata !1188, metadata !"n", metadata !1189, i32 55, metadata !1197, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 55]
!1210 = metadata !{i32 786688, metadata !1188, metadata !"af", metadata !1189, i32 56, metadata !1211, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [af] [line 56]
!1211 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1212} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from uint32_t]
!1212 = metadata !{i32 786454, metadata !1186, null, metadata !"uint32_t", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [uint32_t] [line 51, size 0, align 0, offset 0] [from unsigned int]
!1213 = metadata !{i32 786688, metadata !1188, metadata !"i", metadata !1189, i32 57, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 57]
!1214 = metadata !{i32 786688, metadata !1188, metadata !"j", metadata !1189, i32 57, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 57]
!1215 = metadata !{i32 786688, metadata !1216, metadata !"__v", metadata !1189, i32 73, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__v] [line 73]
!1216 = metadata !{i32 786443, metadata !1186, metadata !1217, i32 73, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/crypt
!1217 = metadata !{i32 786443, metadata !1186, metadata !1218, i32 65, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/crypt
!1218 = metadata !{i32 786443, metadata !1186, metadata !1219, i32 65, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/crypt
!1219 = metadata !{i32 786443, metadata !1186, metadata !1220, i32 64, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/crypt
!1220 = metadata !{i32 786443, metadata !1186, metadata !1188, i32 64, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/crypt
!1221 = metadata !{i32 786688, metadata !1216, metadata !"__x", metadata !1189, i32 73, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__x] [line 73]
!1222 = metadata !{i32 786478, metadata !1186, metadata !1189, metadata !"macan_aes_unwrap", metadata !"macan_aes_unwrap", metadata !"", i32 93, metadata !1223, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1225, i3
!1223 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1224, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1224 = metadata !{metadata !19, metadata !1192, metadata !1197, metadata !574, metadata !574, metadata !574}
!1225 = metadata !{metadata !1226, metadata !1227, metadata !1228, metadata !1229, metadata !1230, metadata !1231, metadata !1232, metadata !1233, metadata !1234, metadata !1235, metadata !1236, metadata !1237, metadata !1238, metadata !1239, metadata !1
!1226 = metadata !{i32 786689, metadata !1222, metadata !"key", metadata !1189, i32 16777309, metadata !1192, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 93]
!1227 = metadata !{i32 786689, metadata !1222, metadata !"length", metadata !1189, i32 33554525, metadata !1197, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 93]
!1228 = metadata !{i32 786689, metadata !1222, metadata !"dst", metadata !1189, i32 50331741, metadata !574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 93]
!1229 = metadata !{i32 786689, metadata !1222, metadata !"src", metadata !1189, i32 67108957, metadata !574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 93]
!1230 = metadata !{i32 786689, metadata !1222, metadata !"tmp", metadata !1189, i32 83886173, metadata !574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tmp] [line 93]
!1231 = metadata !{i32 786688, metadata !1222, metadata !"iv", metadata !1189, i32 96, metadata !637, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iv] [line 96]
!1232 = metadata !{i32 786688, metadata !1222, metadata !"b", metadata !1189, i32 97, metadata !306, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 97]
!1233 = metadata !{i32 786688, metadata !1222, metadata !"block_size", metadata !1189, i32 98, metadata !1197, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_size] [line 98]
!1234 = metadata !{i32 786688, metadata !1222, metadata !"t", metadata !1189, i32 99, metadata !1212, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 99]
!1235 = metadata !{i32 786688, metadata !1222, metadata !"n", metadata !1189, i32 99, metadata !1212, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 99]
!1236 = metadata !{i32 786688, metadata !1222, metadata !"i", metadata !1189, i32 100, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 100]
!1237 = metadata !{i32 786688, metadata !1222, metadata !"j", metadata !1189, i32 101, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 101]
!1238 = metadata !{i32 786688, metadata !1222, metadata !"k", metadata !1189, i32 101, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 101]
!1239 = metadata !{i32 786688, metadata !1240, metadata !"__v", metadata !1189, i32 111, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__v] [line 111]
!1240 = metadata !{i32 786443, metadata !1186, metadata !1241, i32 111, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/cryp
!1241 = metadata !{i32 786443, metadata !1186, metadata !1242, i32 109, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/cryp
!1242 = metadata !{i32 786443, metadata !1186, metadata !1243, i32 109, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/cryp
!1243 = metadata !{i32 786443, metadata !1186, metadata !1244, i32 108, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/cryp
!1244 = metadata !{i32 786443, metadata !1186, metadata !1222, i32 108, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/cryp
!1245 = metadata !{i32 786688, metadata !1240, metadata !"__x", metadata !1189, i32 111, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__x] [line 111]
!1246 = metadata !{i32 786478, metadata !1186, metadata !1189, metadata !"macan_check_cmac", metadata !"macan_check_cmac", metadata !"", i32 148, metadata !1247, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.macan_ctx*, i8*, i8*)*
!1247 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1248, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1248 = metadata !{metadata !19, metadata !1249, metadata !1404, metadata !1198, metadata !574, metadata !574, metadata !12}
!1249 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1250} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ctx]
!1250 = metadata !{i32 786451, metadata !251, null, metadata !"macan_ctx", i32 150, i64 2112, i64 64, i32 0, i32 0, null, metadata !1251, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ctx] [line 150, size 2112, align 64, offset 0] [from ]
!1251 = metadata !{metadata !1252, metadata !1288, metadata !1295, metadata !1312, metadata !1325, metadata !1334, metadata !1335, metadata !1336, metadata !1337, metadata !1378, metadata !1379, metadata !1380, metadata !1381, metadata !1382}
!1252 = metadata !{i32 786445, metadata !251, metadata !1250, metadata !"config", i32 151, i64 64, i64 64, i64 0, i32 0, metadata !1253} ; [ DW_TAG_member ] [config] [line 151, size 64, align 64, offset 0] [from ]
!1253 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1254} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1254 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1255} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_config]
!1255 = metadata !{i32 786451, metadata !239, null, metadata !"macan_config", i32 72, i64 512, i64 64, i32 0, i32 0, null, metadata !1256, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_config] [line 72, size 512, align 64, offset 0] [from ]
!1256 = metadata !{metadata !1257, metadata !1258, metadata !1268, metadata !1269, metadata !1281, metadata !1282, metadata !1283, metadata !1284, metadata !1285, metadata !1286, metadata !1287}
!1257 = metadata !{i32 786445, metadata !239, metadata !1255, metadata !"sig_count", i32 73, i64 32, i64 32, i64 0, i32 0, metadata !1212} ; [ DW_TAG_member ] [sig_count] [line 73, size 32, align 32, offset 0] [from uint32_t]
!1258 = metadata !{i32 786445, metadata !239, metadata !1255, metadata !"sigspec", i32 74, i64 64, i64 64, i64 64, i32 0, metadata !1259} ; [ DW_TAG_member ] [sigspec] [line 74, size 64, align 64, offset 64] [from ]
!1259 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1260} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1260 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1261} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_sig_spec]
!1261 = metadata !{i32 786451, metadata !239, null, metadata !"macan_sig_spec", i32 51, i64 64, i64 16, i32 0, i32 0, null, metadata !1262, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_sig_spec] [line 51, size 64, align 16, offset 0] [from ]
!1262 = metadata !{metadata !1263, metadata !1264, metadata !1265, metadata !1266, metadata !1267}
!1263 = metadata !{i32 786445, metadata !239, metadata !1261, metadata !"can_nsid", i32 52, i64 16, i64 16, i64 0, i32 0, metadata !266} ; [ DW_TAG_member ] [can_nsid] [line 52, size 16, align 16, offset 0] [from uint16_t]
!1264 = metadata !{i32 786445, metadata !239, metadata !1261, metadata !"can_sid", i32 53, i64 16, i64 16, i64 16, i32 0, metadata !266} ; [ DW_TAG_member ] [can_sid] [line 53, size 16, align 16, offset 16] [from uint16_t]
!1265 = metadata !{i32 786445, metadata !239, metadata !1261, metadata !"src_id", i32 54, i64 8, i64 8, i64 32, i32 0, metadata !269} ; [ DW_TAG_member ] [src_id] [line 54, size 8, align 8, offset 32] [from uint8_t]
!1266 = metadata !{i32 786445, metadata !239, metadata !1261, metadata !"dst_id", i32 55, i64 8, i64 8, i64 40, i32 0, metadata !269} ; [ DW_TAG_member ] [dst_id] [line 55, size 8, align 8, offset 40] [from uint8_t]
!1267 = metadata !{i32 786445, metadata !239, metadata !1261, metadata !"presc", i32 56, i64 8, i64 8, i64 48, i32 0, metadata !269} ; [ DW_TAG_member ] [presc] [line 56, size 8, align 8, offset 48] [from uint8_t]
!1268 = metadata !{i32 786445, metadata !239, metadata !1255, metadata !"node_count", i32 75, i64 8, i64 8, i64 128, i32 0, metadata !269} ; [ DW_TAG_member ] [node_count] [line 75, size 8, align 8, offset 128] [from uint8_t]
!1269 = metadata !{i32 786445, metadata !239, metadata !1255, metadata !"canid", i32 76, i64 64, i64 64, i64 192, i32 0, metadata !1270} ; [ DW_TAG_member ] [canid] [line 76, size 64, align 64, offset 192] [from ]
!1270 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1271} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1271 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1272} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_can_ids]
!1272 = metadata !{i32 786451, metadata !239, null, metadata !"macan_can_ids", i32 64, i64 128, i64 64, i32 0, i32 0, null, metadata !1273, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_can_ids] [line 64, size 128, align 64, offset 0] [from ]
!1273 = metadata !{metadata !1274, metadata !1275}
!1274 = metadata !{i32 786445, metadata !239, metadata !1272, metadata !"time", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !1212} ; [ DW_TAG_member ] [time] [line 65, size 32, align 32, offset 0] [from uint32_t]
!1275 = metadata !{i32 786445, metadata !239, metadata !1272, metadata !"ecu", i32 66, i64 64, i64 64, i64 64, i32 0, metadata !1276} ; [ DW_TAG_member ] [ecu] [line 66, size 64, align 64, offset 64] [from ]
!1276 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1277} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ecu]
!1277 = metadata !{i32 786451, metadata !239, null, metadata !"macan_ecu", i32 59, i64 128, i64 64, i32 0, i32 0, null, metadata !1278, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ecu] [line 59, size 128, align 64, offset 0] [from ]
!1278 = metadata !{metadata !1279, metadata !1280}
!1279 = metadata !{i32 786445, metadata !239, metadata !1277, metadata !"canid", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !1212} ; [ DW_TAG_member ] [canid] [line 60, size 32, align 32, offset 0] [from uint32_t]
!1280 = metadata !{i32 786445, metadata !239, metadata !1277, metadata !"name", i32 61, i64 64, i64 64, i64 64, i32 0, metadata !114} ; [ DW_TAG_member ] [name] [line 61, size 64, align 64, offset 64] [from ]
!1281 = metadata !{i32 786445, metadata !239, metadata !1255, metadata !"key_server_id", i32 77, i64 8, i64 8, i64 256, i32 0, metadata !286} ; [ DW_TAG_member ] [key_server_id] [line 77, size 8, align 8, offset 256] [from macan_ecuid]
!1282 = metadata !{i32 786445, metadata !239, metadata !1255, metadata !"time_server_id", i32 78, i64 8, i64 8, i64 264, i32 0, metadata !286} ; [ DW_TAG_member ] [time_server_id] [line 78, size 8, align 8, offset 264] [from macan_ecuid]
!1283 = metadata !{i32 786445, metadata !239, metadata !1255, metadata !"time_div", i32 79, i64 32, i64 32, i64 288, i32 0, metadata !1212} ; [ DW_TAG_member ] [time_div] [line 79, size 32, align 32, offset 288] [from uint32_t]
!1284 = metadata !{i32 786445, metadata !239, metadata !1255, metadata !"skey_validity", i32 80, i64 64, i64 64, i64 320, i32 0, metadata !290} ; [ DW_TAG_member ] [skey_validity] [line 80, size 64, align 64, offset 320] [from uint64_t]
!1285 = metadata !{i32 786445, metadata !239, metadata !1255, metadata !"skey_chg_timeout", i32 81, i64 32, i64 32, i64 384, i32 0, metadata !1212} ; [ DW_TAG_member ] [skey_chg_timeout] [line 81, size 32, align 32, offset 384] [from uint32_t]
!1286 = metadata !{i32 786445, metadata !239, metadata !1255, metadata !"time_timeout", i32 82, i64 32, i64 32, i64 416, i32 0, metadata !1212} ; [ DW_TAG_member ] [time_timeout] [line 82, size 32, align 32, offset 416] [from uint32_t]
!1287 = metadata !{i32 786445, metadata !239, metadata !1255, metadata !"time_delta", i32 83, i64 32, i64 32, i64 448, i32 0, metadata !1212} ; [ DW_TAG_member ] [time_delta] [line 83, size 32, align 32, offset 448] [from uint32_t]
!1288 = metadata !{i32 786445, metadata !251, metadata !1250, metadata !"node", i32 152, i64 64, i64 64, i64 64, i32 0, metadata !1289} ; [ DW_TAG_member ] [node] [line 152, size 64, align 64, offset 64] [from ]
!1289 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1290} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1290 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1291} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_node_config]
!1291 = metadata !{i32 786451, metadata !239, null, metadata !"macan_node_config", i32 89, i64 128, i64 64, i32 0, i32 0, null, metadata !1292, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_node_config] [line 89, size 128, align 64, offset 0] [fr
!1292 = metadata !{metadata !1293, metadata !1294}
!1293 = metadata !{i32 786445, metadata !239, metadata !1291, metadata !"node_id", i32 90, i64 8, i64 8, i64 0, i32 0, metadata !286} ; [ DW_TAG_member ] [node_id] [line 90, size 8, align 8, offset 0] [from macan_ecuid]
!1294 = metadata !{i32 786445, metadata !239, metadata !1291, metadata !"ltk", i32 91, i64 64, i64 64, i64 64, i32 0, metadata !1192} ; [ DW_TAG_member ] [ltk] [line 91, size 64, align 64, offset 64] [from ]
!1295 = metadata !{i32 786445, metadata !251, metadata !1250, metadata !"cpart", i32 153, i64 64, i64 64, i64 128, i32 0, metadata !1296} ; [ DW_TAG_member ] [cpart] [line 153, size 64, align 64, offset 128] [from ]
!1296 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1297} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1297 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1298} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from com_part]
!1298 = metadata !{i32 786451, metadata !251, null, metadata !"com_part", i32 113, i64 448, i64 64, i32 0, i32 0, null, metadata !1299, i32 0, null, null} ; [ DW_TAG_structure_type ] [com_part] [line 113, size 448, align 64, offset 0] [from ]
!1299 = metadata !{metadata !1300, metadata !1301, metadata !1302, metadata !1303, metadata !1304, metadata !1305, metadata !1306, metadata !1307, metadata !1308}
!1300 = metadata !{i32 786445, metadata !251, metadata !1298, metadata !"key_received", i32 114, i64 8, i64 8, i64 0, i32 0, metadata !157} ; [ DW_TAG_member ] [key_received] [line 114, size 8, align 8, offset 0] [from _Bool]
!1301 = metadata !{i32 786445, metadata !251, metadata !1298, metadata !"skey", i32 115, i64 128, i64 8, i64 8, i32 0, metadata !1194} ; [ DW_TAG_member ] [skey] [line 115, size 128, align 8, offset 8] [from macan_key]
!1302 = metadata !{i32 786445, metadata !251, metadata !1298, metadata !"valid_until", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !290} ; [ DW_TAG_member ] [valid_until] [line 116, size 64, align 64, offset 192] [from uint64_t]
!1303 = metadata !{i32 786445, metadata !251, metadata !1298, metadata !"awaiting_skey", i32 117, i64 8, i64 8, i64 256, i32 0, metadata !157} ; [ DW_TAG_member ] [awaiting_skey] [line 117, size 8, align 8, offset 256] [from _Bool]
!1304 = metadata !{i32 786445, metadata !251, metadata !1298, metadata !"chg", i32 118, i64 48, i64 8, i64 264, i32 0, metadata !317} ; [ DW_TAG_member ] [chg] [line 118, size 48, align 8, offset 264] [from ]
!1305 = metadata !{i32 786445, metadata !251, metadata !1298, metadata !"flags", i32 119, i64 8, i64 8, i64 312, i32 0, metadata !269} ; [ DW_TAG_member ] [flags] [line 119, size 8, align 8, offset 312] [from uint8_t]
!1306 = metadata !{i32 786445, metadata !251, metadata !1298, metadata !"group_field", i32 120, i64 32, i64 32, i64 320, i32 0, metadata !1212} ; [ DW_TAG_member ] [group_field] [line 120, size 32, align 32, offset 320] [from uint32_t]
!1307 = metadata !{i32 786445, metadata !251, metadata !1298, metadata !"ecu_id", i32 121, i64 8, i64 8, i64 352, i32 0, metadata !286} ; [ DW_TAG_member ] [ecu_id] [line 121, size 8, align 8, offset 352] [from macan_ecuid]
!1308 = metadata !{i32 786445, metadata !251, metadata !1298, metadata !"skey_callback", i32 122, i64 64, i64 64, i64 384, i32 0, metadata !1309} ; [ DW_TAG_member ] [skey_callback] [line 122, size 64, align 64, offset 384] [from ]
!1309 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1310} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1310 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1311, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1311 = metadata !{null, metadata !1249, metadata !286}
!1312 = metadata !{i32 786445, metadata !251, metadata !1250, metadata !"sighand", i32 154, i64 64, i64 64, i64 192, i32 0, metadata !1313} ; [ DW_TAG_member ] [sighand] [line 154, size 64, align 64, offset 192] [from ]
!1313 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1314} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1314 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1315} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sig_handle]
!1315 = metadata !{i32 786451, metadata !251, null, metadata !"sig_handle", i32 130, i64 192, i64 64, i32 0, i32 0, null, metadata !1316, i32 0, null, null} ; [ DW_TAG_structure_type ] [sig_handle] [line 130, size 192, align 64, offset 0] [from ]
!1316 = metadata !{metadata !1317, metadata !1318, metadata !1319, metadata !1320, metadata !1324}
!1317 = metadata !{i32 786445, metadata !251, metadata !1315, metadata !"presc", i32 131, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [presc] [line 131, size 32, align 32, offset 0] [from int]
!1318 = metadata !{i32 786445, metadata !251, metadata !1315, metadata !"presc_cnt", i32 133, i64 8, i64 8, i64 32, i32 0, metadata !269} ; [ DW_TAG_member ] [presc_cnt] [line 133, size 8, align 8, offset 32] [from uint8_t]
!1319 = metadata !{i32 786445, metadata !251, metadata !1315, metadata !"flags", i32 135, i64 8, i64 8, i64 40, i32 0, metadata !269} ; [ DW_TAG_member ] [flags] [line 135, size 8, align 8, offset 40] [from uint8_t]
!1320 = metadata !{i32 786445, metadata !251, metadata !1315, metadata !"cback", i32 136, i64 64, i64 64, i64 64, i32 0, metadata !1321} ; [ DW_TAG_member ] [cback] [line 136, size 64, align 64, offset 64] [from ]
!1321 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1322} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1322 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1323, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1323 = metadata !{null, metadata !269, metadata !1212}
!1324 = metadata !{i32 786445, metadata !251, metadata !1315, metadata !"invalid_cback", i32 137, i64 64, i64 64, i64 128, i32 0, metadata !1321} ; [ DW_TAG_member ] [invalid_cback] [line 137, size 64, align 64, offset 128] [from ]
!1325 = metadata !{i32 786445, metadata !251, metadata !1250, metadata !"time", i32 155, i64 320, i64 64, i64 256, i32 0, metadata !1326} ; [ DW_TAG_member ] [time] [line 155, size 320, align 64, offset 256] [from macan_timekeeping]
!1326 = metadata !{i32 786451, metadata !251, null, metadata !"macan_timekeeping", i32 93, i64 320, i64 64, i32 0, i32 0, null, metadata !1327, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_timekeeping] [line 93, size 320, align 64, offset 0] [fr
!1327 = metadata !{metadata !1328, metadata !1329, metadata !1330, metadata !1331, metadata !1332, metadata !1333}
!1328 = metadata !{i32 786445, metadata !251, metadata !1326, metadata !"offs", i32 94, i64 64, i64 64, i64 0, i32 0, metadata !290} ; [ DW_TAG_member ] [offs] [line 94, size 64, align 64, offset 0] [from uint64_t]
!1329 = metadata !{i32 786445, metadata !251, metadata !1326, metadata !"nonauth_ts", i32 96, i64 32, i64 32, i64 64, i32 0, metadata !1212} ; [ DW_TAG_member ] [nonauth_ts] [line 96, size 32, align 32, offset 64] [from uint32_t]
!1330 = metadata !{i32 786445, metadata !251, metadata !1326, metadata !"nonauth_loc", i32 97, i64 64, i64 64, i64 128, i32 0, metadata !290} ; [ DW_TAG_member ] [nonauth_loc] [line 97, size 64, align 64, offset 128] [from uint64_t]
!1331 = metadata !{i32 786445, metadata !251, metadata !1326, metadata !"chal_ts", i32 99, i64 64, i64 64, i64 192, i32 0, metadata !290} ; [ DW_TAG_member ] [chal_ts] [line 99, size 64, align 64, offset 192] [from uint64_t]
!1332 = metadata !{i32 786445, metadata !251, metadata !1326, metadata !"chg", i32 100, i64 48, i64 8, i64 256, i32 0, metadata !317} ; [ DW_TAG_member ] [chg] [line 100, size 48, align 8, offset 256] [from ]
!1333 = metadata !{i32 786445, metadata !251, metadata !1326, metadata !"ready", i32 101, i64 8, i64 8, i64 304, i32 0, metadata !157} ; [ DW_TAG_member ] [ready] [line 101, size 8, align 8, offset 304] [from _Bool]
!1334 = metadata !{i32 786445, metadata !251, metadata !1250, metadata !"keywrap", i32 156, i64 256, i64 8, i64 576, i32 0, metadata !348} ; [ DW_TAG_member ] [keywrap] [line 156, size 256, align 8, offset 576] [from ]
!1335 = metadata !{i32 786445, metadata !251, metadata !1250, metadata !"rcvd_skey_seq", i32 157, i64 32, i64 32, i64 832, i32 0, metadata !12} ; [ DW_TAG_member ] [rcvd_skey_seq] [line 157, size 32, align 32, offset 832] [from unsigned int]
!1336 = metadata !{i32 786445, metadata !251, metadata !1250, metadata !"sockfd", i32 158, i64 32, i64 32, i64 864, i32 0, metadata !19} ; [ DW_TAG_member ] [sockfd] [line 158, size 32, align 32, offset 864] [from int]
!1337 = metadata !{i32 786445, metadata !251, metadata !1250, metadata !"loop", i32 159, i64 64, i64 64, i64 896, i32 0, metadata !1338} ; [ DW_TAG_member ] [loop] [line 159, size 64, align 64, offset 896] [from ]
!1338 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1339} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_loop]
!1339 = metadata !{i32 786454, metadata !251, null, metadata !"macan_ev_loop", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !1340} ; [ DW_TAG_typedef ] [macan_ev_loop] [line 55, size 0, align 0, offset 0] [from macan_ev_loop]
!1340 = metadata !{i32 786451, metadata !355, null, metadata !"macan_ev_loop", i32 52, i64 128, i64 64, i32 0, i32 0, null, metadata !1341, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ev_loop] [line 52, size 128, align 64, offset 0] [from ]
!1341 = metadata !{metadata !1342, metadata !1363}
!1342 = metadata !{i32 786445, metadata !355, metadata !1340, metadata !"cans", i32 53, i64 64, i64 64, i64 0, i32 0, metadata !1343} ; [ DW_TAG_member ] [cans] [line 53, size 64, align 64, offset 0] [from ]
!1343 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1344} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_can]
!1344 = metadata !{i32 786454, metadata !355, null, metadata !"macan_ev_can", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !1345} ; [ DW_TAG_typedef ] [macan_ev_can] [line 41, size 0, align 0, offset 0] [from macan_ev_can]
!1345 = metadata !{i32 786451, metadata !355, null, metadata !"macan_ev_can", i32 35, i64 320, i64 64, i32 0, i32 0, null, metadata !1346, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ev_can] [line 35, size 320, align 64, offset 0] [from ]
!1346 = metadata !{metadata !1347, metadata !1353, metadata !1354, metadata !1355, metadata !1362}
!1347 = metadata !{i32 786445, metadata !355, metadata !1345, metadata !"cb", i32 36, i64 64, i64 64, i64 0, i32 0, metadata !1348} ; [ DW_TAG_member ] [cb] [line 36, size 64, align 64, offset 0] [from ]
!1348 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1349} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1349 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1350, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1350 = metadata !{null, metadata !1351, metadata !1352, metadata !19}
!1351 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1340} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_loop]
!1352 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1345} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_can]
!1353 = metadata !{i32 786445, metadata !355, metadata !1345, metadata !"next", i32 37, i64 64, i64 64, i64 64, i32 0, metadata !1352} ; [ DW_TAG_member ] [next] [line 37, size 64, align 64, offset 64] [from ]
!1354 = metadata !{i32 786445, metadata !355, metadata !1345, metadata !"canfd", i32 38, i64 32, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [canfd] [line 38, size 32, align 32, offset 128] [from int]
!1355 = metadata !{i32 786445, metadata !355, metadata !1345, metadata !"received", i32 39, i64 64, i64 64, i64 192, i32 0, metadata !1356} ; [ DW_TAG_member ] [received] [line 39, size 64, align 64, offset 192] [from ]
!1356 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1357} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from can_frame]
!1357 = metadata !{i32 786451, metadata !373, null, metadata !"can_frame", i32 68, i64 128, i64 64, i32 0, i32 0, null, metadata !1358, i32 0, null, null} ; [ DW_TAG_structure_type ] [can_frame] [line 68, size 128, align 64, offset 0] [from ]
!1358 = metadata !{metadata !1359, metadata !1360, metadata !1361}
!1359 = metadata !{i32 786445, metadata !373, metadata !1357, metadata !"can_id", i32 69, i64 32, i64 32, i64 0, i32 0, metadata !376} ; [ DW_TAG_member ] [can_id] [line 69, size 32, align 32, offset 0] [from canid_t]
!1360 = metadata !{i32 786445, metadata !373, metadata !1357, metadata !"can_dlc", i32 70, i64 8, i64 8, i64 32, i32 0, metadata !379} ; [ DW_TAG_member ] [can_dlc] [line 70, size 8, align 8, offset 32] [from __u8]
!1361 = metadata !{i32 786445, metadata !373, metadata !1357, metadata !"data", i32 71, i64 64, i64 8, i64 64, i32 0, metadata !381} ; [ DW_TAG_member ] [data] [line 71, size 64, align 8, offset 64] [from ]
!1362 = metadata !{i32 786445, metadata !355, metadata !1345, metadata !"data", i32 40, i64 64, i64 64, i64 256, i32 0, metadata !55} ; [ DW_TAG_member ] [data] [line 40, size 64, align 64, offset 256] [from ]
!1363 = metadata !{i32 786445, metadata !355, metadata !1340, metadata !"timers", i32 54, i64 64, i64 64, i64 64, i32 0, metadata !1364} ; [ DW_TAG_member ] [timers] [line 54, size 64, align 64, offset 64] [from ]
!1364 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1365} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_timer]
!1365 = metadata !{i32 786454, metadata !355, null, metadata !"macan_ev_timer", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !1366} ; [ DW_TAG_typedef ] [macan_ev_timer] [line 50, size 0, align 0, offset 0] [from macan_ev_timer]
!1366 = metadata !{i32 786451, metadata !355, null, metadata !"macan_ev_timer", i32 43, i64 320, i64 64, i32 0, i32 0, null, metadata !1367, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ev_timer] [line 43, size 320, align 64, offset 0] [from ]
!1367 = metadata !{metadata !1368, metadata !1373, metadata !1374, metadata !1375, metadata !1376, metadata !1377}
!1368 = metadata !{i32 786445, metadata !355, metadata !1366, metadata !"cb", i32 44, i64 64, i64 64, i64 0, i32 0, metadata !1369} ; [ DW_TAG_member ] [cb] [line 44, size 64, align 64, offset 0] [from ]
!1369 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1370} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1370 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1371, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1371 = metadata !{null, metadata !1351, metadata !1372, metadata !19}
!1372 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1366} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_timer]
!1373 = metadata !{i32 786445, metadata !355, metadata !1366, metadata !"next", i32 45, i64 64, i64 64, i64 64, i32 0, metadata !1372} ; [ DW_TAG_member ] [next] [line 45, size 64, align 64, offset 64] [from ]
!1374 = metadata !{i32 786445, metadata !355, metadata !1366, metadata !"after_us", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !12} ; [ DW_TAG_member ] [after_us] [line 46, size 32, align 32, offset 128] [from unsigned int]
!1375 = metadata !{i32 786445, metadata !355, metadata !1366, metadata !"repeat_us", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !12} ; [ DW_TAG_member ] [repeat_us] [line 47, size 32, align 32, offset 160] [from unsigned int]
!1376 = metadata !{i32 786445, metadata !355, metadata !1366, metadata !"expire_us", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !290} ; [ DW_TAG_member ] [expire_us] [line 48, size 64, align 64, offset 192] [from uint64_t]
!1377 = metadata !{i32 786445, metadata !355, metadata !1366, metadata !"data", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !55} ; [ DW_TAG_member ] [data] [line 49, size 64, align 64, offset 256] [from ]
!1378 = metadata !{i32 786445, metadata !251, metadata !1250, metadata !"can_watcher", i32 160, i64 320, i64 64, i64 960, i32 0, metadata !1344} ; [ DW_TAG_member ] [can_watcher] [line 160, size 320, align 64, offset 960] [from macan_ev_can]
!1379 = metadata !{i32 786445, metadata !251, metadata !1250, metadata !"housekeeping", i32 161, i64 320, i64 64, i64 1280, i32 0, metadata !1365} ; [ DW_TAG_member ] [housekeeping] [line 161, size 320, align 64, offset 1280] [from macan_ev_timer]
!1380 = metadata !{i32 786445, metadata !251, metadata !1250, metadata !"print_msg_enabled", i32 162, i64 8, i64 8, i64 1600, i32 0, metadata !157} ; [ DW_TAG_member ] [print_msg_enabled] [line 162, size 8, align 8, offset 1600] [from _Bool]
!1381 = metadata !{i32 786445, metadata !251, metadata !1250, metadata !"dump_disabled", i32 164, i64 8, i64 8, i64 1608, i32 0, metadata !157} ; [ DW_TAG_member ] [dump_disabled] [line 164, size 8, align 8, offset 1608] [from _Bool]
!1382 = metadata !{i32 786445, metadata !251, metadata !1250, metadata !"", i32 166, i64 448, i64 64, i64 1664, i32 0, metadata !1383} ; [ DW_TAG_member ] [line 166, size 448, align 64, offset 1664] [from ]
!1383 = metadata !{i32 786455, metadata !251, metadata !1250, metadata !"", i32 166, i64 448, i64 64, i64 0, i32 0, null, metadata !1384, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 166, size 448, align 64, offset 0] [from ]
!1384 = metadata !{metadata !1385, metadata !1396}
!1385 = metadata !{i32 786445, metadata !251, metadata !1383, metadata !"ts", i32 174, i64 448, i64 64, i64 0, i32 0, metadata !1386} ; [ DW_TAG_member ] [ts] [line 174, size 448, align 64, offset 0] [from ]
!1386 = metadata !{i32 786451, metadata !251, metadata !1383, metadata !"", i32 167, i64 448, i64 64, i32 0, i32 0, null, metadata !1387, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 167, size 448, align 64, offset 0] [from ]
!1387 = metadata !{metadata !1388, metadata !1389, metadata !1390}
!1388 = metadata !{i32 786445, metadata !251, metadata !1386, metadata !"time_bcast", i32 168, i64 320, i64 64, i64 0, i32 0, metadata !1365} ; [ DW_TAG_member ] [time_bcast] [line 168, size 320, align 64, offset 0] [from macan_ev_timer]
!1389 = metadata !{i32 786445, metadata !251, metadata !1386, metadata !"bcast_time", i32 169, i64 64, i64 64, i64 320, i32 0, metadata !290} ; [ DW_TAG_member ] [bcast_time] [line 169, size 64, align 64, offset 320] [from uint64_t]
!1390 = metadata !{i32 786445, metadata !251, metadata !1386, metadata !"auth_req", i32 173, i64 64, i64 64, i64 384, i32 0, metadata !1391} ; [ DW_TAG_member ] [auth_req] [line 173, size 64, align 64, offset 384] [from ]
!1391 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1392} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1392 = metadata !{i32 786451, metadata !251, metadata !1386, metadata !"", i32 170, i64 56, i64 8, i32 0, i32 0, null, metadata !1393, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 170, size 56, align 8, offset 0] [from ]
!1393 = metadata !{metadata !1394, metadata !1395}
!1394 = metadata !{i32 786445, metadata !251, metadata !1392, metadata !"pending", i32 171, i64 8, i64 8, i64 0, i32 0, metadata !157} ; [ DW_TAG_member ] [pending] [line 171, size 8, align 8, offset 0] [from _Bool]
!1395 = metadata !{i32 786445, metadata !251, metadata !1392, metadata !"chg", i32 172, i64 48, i64 8, i64 8, i32 0, metadata !317} ; [ DW_TAG_member ] [chg] [line 172, size 48, align 8, offset 8] [from ]
!1396 = metadata !{i32 786445, metadata !251, metadata !1383, metadata !"ks", i32 179, i64 448, i64 64, i64 0, i32 0, metadata !1397} ; [ DW_TAG_member ] [ks] [line 179, size 448, align 64, offset 0] [from ]
!1397 = metadata !{i32 786451, metadata !251, metadata !1383, metadata !"", i32 175, i64 448, i64 64, i32 0, i32 0, null, metadata !1398, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 175, size 448, align 64, offset 0] [from ]
!1398 = metadata !{metadata !1399, metadata !1402, metadata !1403}
!1399 = metadata !{i32 786445, metadata !251, metadata !1397, metadata !"ltk", i32 176, i64 64, i64 64, i64 0, i32 0, metadata !1400} ; [ DW_TAG_member ] [ltk] [line 176, size 64, align 64, offset 0] [from ]
!1400 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1401} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1401 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1192} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!1402 = metadata !{i32 786445, metadata !251, metadata !1397, metadata !"time_bcast", i32 177, i64 320, i64 64, i64 64, i32 0, metadata !1365} ; [ DW_TAG_member ] [time_bcast] [line 177, size 320, align 64, offset 64] [from macan_ev_timer]
!1403 = metadata !{i32 786445, metadata !251, metadata !1397, metadata !"bcast_time", i32 178, i64 64, i64 64, i64 384, i32 0, metadata !290} ; [ DW_TAG_member ] [bcast_time] [line 178, size 64, align 64, offset 384] [from uint64_t]
!1404 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1194} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_key]
!1405 = metadata !{metadata !1406, metadata !1407, metadata !1408, metadata !1409, metadata !1410, metadata !1411, metadata !1412, metadata !1413, metadata !1414, metadata !1417}
!1406 = metadata !{i32 786689, metadata !1246, metadata !"ctx", metadata !1189, i32 16777364, metadata !1249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 148]
!1407 = metadata !{i32 786689, metadata !1246, metadata !"skey", metadata !1189, i32 33554580, metadata !1404, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [skey] [line 148]
!1408 = metadata !{i32 786689, metadata !1246, metadata !"cmac4", metadata !1189, i32 50331796, metadata !1198, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmac4] [line 148]
!1409 = metadata !{i32 786689, metadata !1246, metadata !"plain", metadata !1189, i32 67109012, metadata !574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [plain] [line 148]
!1410 = metadata !{i32 786689, metadata !1246, metadata !"fill_time", metadata !1189, i32 83886228, metadata !574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fill_time] [line 148]
!1411 = metadata !{i32 786689, metadata !1246, metadata !"len", metadata !1189, i32 100663444, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 148]
!1412 = metadata !{i32 786688, metadata !1246, metadata !"cmac", metadata !1189, i32 151, metadata !306, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmac] [line 151]
!1413 = metadata !{i32 786688, metadata !1246, metadata !"time", metadata !1189, i32 152, metadata !290, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [time] [line 152]
!1414 = metadata !{i32 786688, metadata !1246, metadata !"ftime", metadata !1189, i32 153, metadata !1415, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ftime] [line 153]
!1415 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1416} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int32_t]
!1416 = metadata !{i32 786454, metadata !1186, null, metadata !"int32_t", i32 38, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [int32_t] [line 38, size 0, align 0, offset 0] [from int]
!1417 = metadata !{i32 786688, metadata !1246, metadata !"i", metadata !1189, i32 154, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 154]
!1418 = metadata !{i32 786478, metadata !1186, metadata !1189, metadata !"macan_sign", metadata !"macan_sign", metadata !"", i32 183, metadata !1419, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1421, i32 184} ; [ 
!1419 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1420, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1420 = metadata !{null, metadata !1404, metadata !574, metadata !574, metadata !12}
!1421 = metadata !{metadata !1422, metadata !1423, metadata !1424, metadata !1425, metadata !1426}
!1422 = metadata !{i32 786689, metadata !1418, metadata !"skey", metadata !1189, i32 16777399, metadata !1404, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [skey] [line 183]
!1423 = metadata !{i32 786689, metadata !1418, metadata !"cmac4", metadata !1189, i32 33554615, metadata !574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmac4] [line 183]
!1424 = metadata !{i32 786689, metadata !1418, metadata !"plain", metadata !1189, i32 50331831, metadata !574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [plain] [line 183]
!1425 = metadata !{i32 786689, metadata !1418, metadata !"len", metadata !1189, i32 67109047, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 183]
!1426 = metadata !{i32 786688, metadata !1418, metadata !"cmac", metadata !1189, i32 186, metadata !306, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmac] [line 186]
!1427 = metadata !{i32 786478, metadata !1186, metadata !1189, metadata !"macan_unwrap_key", metadata !"macan_unwrap_key", metadata !"", i32 194, metadata !1428, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1430, i
!1428 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1429, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1429 = metadata !{null, metadata !1192, metadata !1197, metadata !574, metadata !574}
!1430 = metadata !{metadata !1431, metadata !1432, metadata !1433, metadata !1434}
!1431 = metadata !{i32 786689, metadata !1427, metadata !"key", metadata !1189, i32 16777410, metadata !1192, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 194]
!1432 = metadata !{i32 786689, metadata !1427, metadata !"srclen", metadata !1189, i32 33554626, metadata !1197, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srclen] [line 194]
!1433 = metadata !{i32 786689, metadata !1427, metadata !"dst", metadata !1189, i32 50331842, metadata !574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 194]
!1434 = metadata !{i32 786689, metadata !1427, metadata !"src", metadata !1189, i32 67109058, metadata !574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 194]
!1435 = metadata !{i32 786449, metadata !1436, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !1437, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!1436 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/klee/klee_cryptlib.c", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src"}
!1437 = metadata !{metadata !1438, metadata !1453, metadata !1471}
!1438 = metadata !{i32 786478, metadata !1436, metadata !1439, metadata !"macan_aes_cmac", metadata !"macan_aes_cmac", metadata !"", i32 12, metadata !1440, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1448, i32 13
!1439 = metadata !{i32 786473, metadata !1436}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/klee/klee_cryptlib.c]
!1440 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1441, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1441 = metadata !{null, metadata !1442, metadata !1447, metadata !574, metadata !574}
!1442 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1443} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1443 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1444} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_key]
!1444 = metadata !{i32 786451, metadata !239, null, metadata !"macan_key", i32 97, i64 128, i64 8, i32 0, i32 0, null, metadata !1445, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_key] [line 97, size 128, align 8, offset 0] [from ]
!1445 = metadata !{metadata !1446}
!1446 = metadata !{i32 786445, metadata !239, metadata !1444, metadata !"data", i32 98, i64 128, i64 8, i64 0, i32 0, metadata !306} ; [ DW_TAG_member ] [data] [line 98, size 128, align 8, offset 0] [from ]
!1447 = metadata !{i32 786454, metadata !1436, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1448 = metadata !{metadata !1449, metadata !1450, metadata !1451, metadata !1452}
!1449 = metadata !{i32 786689, metadata !1438, metadata !"key", metadata !1439, i32 16777228, metadata !1442, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 12]
!1450 = metadata !{i32 786689, metadata !1438, metadata !"length", metadata !1439, i32 33554444, metadata !1447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 12]
!1451 = metadata !{i32 786689, metadata !1438, metadata !"dst", metadata !1439, i32 50331660, metadata !574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!1452 = metadata !{i32 786689, metadata !1438, metadata !"src", metadata !1439, i32 67108876, metadata !574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!1453 = metadata !{i32 786478, metadata !1436, metadata !1439, metadata !"macan_aes_encrypt", metadata !"macan_aes_encrypt", metadata !"", i32 22, metadata !1454, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1456, 
!1454 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1455, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1455 = metadata !{null, metadata !1442, metadata !1447, metadata !574, metadata !1198}
!1456 = metadata !{metadata !1457, metadata !1458, metadata !1459, metadata !1460, metadata !1461}
!1457 = metadata !{i32 786689, metadata !1453, metadata !"key", metadata !1439, i32 16777238, metadata !1442, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 22]
!1458 = metadata !{i32 786689, metadata !1453, metadata !"len", metadata !1439, i32 33554454, metadata !1447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 22]
!1459 = metadata !{i32 786689, metadata !1453, metadata !"dst", metadata !1439, i32 50331670, metadata !574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 22]
!1460 = metadata !{i32 786689, metadata !1453, metadata !"src", metadata !1439, i32 67108886, metadata !1198, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 22]
!1461 = metadata !{i32 786688, metadata !1453, metadata !"cipher", metadata !1439, i32 25, metadata !1462, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cipher] [line 25]
!1462 = metadata !{i32 786451, metadata !1463, null, metadata !"aes_ctx", i32 83, i64 1952, i64 32, i32 0, i32 0, null, metadata !1464, i32 0, null, null} ; [ DW_TAG_structure_type ] [aes_ctx] [line 83, size 1952, align 32, offset 0] [from ]
!1463 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_compiled/include/aes.h", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src"}
!1464 = metadata !{metadata !1465, metadata !1466}
!1465 = metadata !{i32 786445, metadata !1463, metadata !1462, metadata !"rounds", i32 85, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_member ] [rounds] [line 85, size 32, align 32, offset 0] [from unsigned int]
!1466 = metadata !{i32 786445, metadata !1463, metadata !1462, metadata !"keys", i32 86, i64 1920, i64 32, i64 32, i32 0, metadata !1467} ; [ DW_TAG_member ] [keys] [line 86, size 1920, align 32, offset 32] [from ]
!1467 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1920, i64 32, i32 0, i32 0, metadata !1468, metadata !1469, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1920, align 32, offset 0] [from uint32_t]
!1468 = metadata !{i32 786454, metadata !1463, null, metadata !"uint32_t", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [uint32_t] [line 51, size 0, align 0, offset 0] [from unsigned int]
!1469 = metadata !{metadata !1470}
!1470 = metadata !{i32 786465, i64 0, i64 60}     ; [ DW_TAG_subrange_type ] [0, 59]
!1471 = metadata !{i32 786478, metadata !1436, metadata !1439, metadata !"macan_aes_decrypt", metadata !"macan_aes_decrypt", metadata !"", i32 34, metadata !1454, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1472, 
!1472 = metadata !{metadata !1473, metadata !1474, metadata !1475, metadata !1476, metadata !1477}
!1473 = metadata !{i32 786689, metadata !1471, metadata !"key", metadata !1439, i32 16777250, metadata !1442, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 34]
!1474 = metadata !{i32 786689, metadata !1471, metadata !"len", metadata !1439, i32 33554466, metadata !1447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 34]
!1475 = metadata !{i32 786689, metadata !1471, metadata !"dst", metadata !1439, i32 50331682, metadata !574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 34]
!1476 = metadata !{i32 786689, metadata !1471, metadata !"src", metadata !1439, i32 67108898, metadata !1198, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 34]
!1477 = metadata !{i32 786688, metadata !1471, metadata !"cipher", metadata !1439, i32 36, metadata !1462, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cipher] [line 36]
!1478 = metadata !{i32 786449, metadata !1479, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !1480, metadata !1671, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!1479 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/klee/klee_macan.c", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src"}
!1480 = metadata !{metadata !1481, metadata !1488, metadata !1495, metadata !1658, metadata !1663}
!1481 = metadata !{i32 786478, metadata !1479, metadata !1482, metadata !"read_time", metadata !"read_time", metadata !"", i32 10, metadata !1483, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1486, i32 10} ; [ DW_T
!1482 = metadata !{i32 786473, metadata !1479}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/klee/klee_macan.c]
!1483 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1484, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1484 = metadata !{metadata !1485}
!1485 = metadata !{i32 786454, metadata !1479, null, metadata !"uint64_t", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [uint64_t] [line 55, size 0, align 0, offset 0] [from long unsigned int]
!1486 = metadata !{metadata !1487}
!1487 = metadata !{i32 786688, metadata !1481, metadata !"time", metadata !1482, i32 11, metadata !1485, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [time] [line 11]
!1488 = metadata !{i32 786478, metadata !1479, metadata !1482, metadata !"gen_rand_data", metadata !"gen_rand_data", metadata !"", i32 16, metadata !1489, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1492, i32 16} 
!1489 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1490, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1490 = metadata !{metadata !157, metadata !55, metadata !1491}
!1491 = metadata !{i32 786454, metadata !1479, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1492 = metadata !{metadata !1493, metadata !1494}
!1493 = metadata !{i32 786689, metadata !1488, metadata !"dest", metadata !1482, i32 16777232, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 16]
!1494 = metadata !{i32 786689, metadata !1488, metadata !"len", metadata !1482, i32 33554448, metadata !1491, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 16]
!1495 = metadata !{i32 786478, metadata !1479, metadata !1482, metadata !"macan_read", metadata !"macan_read", metadata !"", i32 22, metadata !1496, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1655, i32 22} ; [ DW
!1496 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1497, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1497 = metadata !{metadata !157, metadata !1498, metadata !1607}
!1498 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1499} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ctx]
!1499 = metadata !{i32 786451, metadata !251, null, metadata !"macan_ctx", i32 150, i64 2112, i64 64, i32 0, i32 0, null, metadata !1500, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ctx] [line 150, size 2112, align 64, offset 0] [from ]
!1500 = metadata !{metadata !1501, metadata !1537, metadata !1549, metadata !1566, metadata !1576, metadata !1585, metadata !1586, metadata !1587, metadata !1588, metadata !1629, metadata !1630, metadata !1631, metadata !1632, metadata !1633}
!1501 = metadata !{i32 786445, metadata !251, metadata !1499, metadata !"config", i32 151, i64 64, i64 64, i64 0, i32 0, metadata !1502} ; [ DW_TAG_member ] [config] [line 151, size 64, align 64, offset 0] [from ]
!1502 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1503} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1503 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1504} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_config]
!1504 = metadata !{i32 786451, metadata !239, null, metadata !"macan_config", i32 72, i64 512, i64 64, i32 0, i32 0, null, metadata !1505, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_config] [line 72, size 512, align 64, offset 0] [from ]
!1505 = metadata !{metadata !1506, metadata !1507, metadata !1517, metadata !1518, metadata !1530, metadata !1531, metadata !1532, metadata !1533, metadata !1534, metadata !1535, metadata !1536}
!1506 = metadata !{i32 786445, metadata !239, metadata !1504, metadata !"sig_count", i32 73, i64 32, i64 32, i64 0, i32 0, metadata !259} ; [ DW_TAG_member ] [sig_count] [line 73, size 32, align 32, offset 0] [from uint32_t]
!1507 = metadata !{i32 786445, metadata !239, metadata !1504, metadata !"sigspec", i32 74, i64 64, i64 64, i64 64, i32 0, metadata !1508} ; [ DW_TAG_member ] [sigspec] [line 74, size 64, align 64, offset 64] [from ]
!1508 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1509} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1509 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1510} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_sig_spec]
!1510 = metadata !{i32 786451, metadata !239, null, metadata !"macan_sig_spec", i32 51, i64 64, i64 16, i32 0, i32 0, null, metadata !1511, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_sig_spec] [line 51, size 64, align 16, offset 0] [from ]
!1511 = metadata !{metadata !1512, metadata !1513, metadata !1514, metadata !1515, metadata !1516}
!1512 = metadata !{i32 786445, metadata !239, metadata !1510, metadata !"can_nsid", i32 52, i64 16, i64 16, i64 0, i32 0, metadata !266} ; [ DW_TAG_member ] [can_nsid] [line 52, size 16, align 16, offset 0] [from uint16_t]
!1513 = metadata !{i32 786445, metadata !239, metadata !1510, metadata !"can_sid", i32 53, i64 16, i64 16, i64 16, i32 0, metadata !266} ; [ DW_TAG_member ] [can_sid] [line 53, size 16, align 16, offset 16] [from uint16_t]
!1514 = metadata !{i32 786445, metadata !239, metadata !1510, metadata !"src_id", i32 54, i64 8, i64 8, i64 32, i32 0, metadata !269} ; [ DW_TAG_member ] [src_id] [line 54, size 8, align 8, offset 32] [from uint8_t]
!1515 = metadata !{i32 786445, metadata !239, metadata !1510, metadata !"dst_id", i32 55, i64 8, i64 8, i64 40, i32 0, metadata !269} ; [ DW_TAG_member ] [dst_id] [line 55, size 8, align 8, offset 40] [from uint8_t]
!1516 = metadata !{i32 786445, metadata !239, metadata !1510, metadata !"presc", i32 56, i64 8, i64 8, i64 48, i32 0, metadata !269} ; [ DW_TAG_member ] [presc] [line 56, size 8, align 8, offset 48] [from uint8_t]
!1517 = metadata !{i32 786445, metadata !239, metadata !1504, metadata !"node_count", i32 75, i64 8, i64 8, i64 128, i32 0, metadata !269} ; [ DW_TAG_member ] [node_count] [line 75, size 8, align 8, offset 128] [from uint8_t]
!1518 = metadata !{i32 786445, metadata !239, metadata !1504, metadata !"canid", i32 76, i64 64, i64 64, i64 192, i32 0, metadata !1519} ; [ DW_TAG_member ] [canid] [line 76, size 64, align 64, offset 192] [from ]
!1519 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1520} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1520 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1521} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_can_ids]
!1521 = metadata !{i32 786451, metadata !239, null, metadata !"macan_can_ids", i32 64, i64 128, i64 64, i32 0, i32 0, null, metadata !1522, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_can_ids] [line 64, size 128, align 64, offset 0] [from ]
!1522 = metadata !{metadata !1523, metadata !1524}
!1523 = metadata !{i32 786445, metadata !239, metadata !1521, metadata !"time", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !259} ; [ DW_TAG_member ] [time] [line 65, size 32, align 32, offset 0] [from uint32_t]
!1524 = metadata !{i32 786445, metadata !239, metadata !1521, metadata !"ecu", i32 66, i64 64, i64 64, i64 64, i32 0, metadata !1525} ; [ DW_TAG_member ] [ecu] [line 66, size 64, align 64, offset 64] [from ]
!1525 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1526} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ecu]
!1526 = metadata !{i32 786451, metadata !239, null, metadata !"macan_ecu", i32 59, i64 128, i64 64, i32 0, i32 0, null, metadata !1527, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ecu] [line 59, size 128, align 64, offset 0] [from ]
!1527 = metadata !{metadata !1528, metadata !1529}
!1528 = metadata !{i32 786445, metadata !239, metadata !1526, metadata !"canid", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !259} ; [ DW_TAG_member ] [canid] [line 60, size 32, align 32, offset 0] [from uint32_t]
!1529 = metadata !{i32 786445, metadata !239, metadata !1526, metadata !"name", i32 61, i64 64, i64 64, i64 64, i32 0, metadata !114} ; [ DW_TAG_member ] [name] [line 61, size 64, align 64, offset 64] [from ]
!1530 = metadata !{i32 786445, metadata !239, metadata !1504, metadata !"key_server_id", i32 77, i64 8, i64 8, i64 256, i32 0, metadata !286} ; [ DW_TAG_member ] [key_server_id] [line 77, size 8, align 8, offset 256] [from macan_ecuid]
!1531 = metadata !{i32 786445, metadata !239, metadata !1504, metadata !"time_server_id", i32 78, i64 8, i64 8, i64 264, i32 0, metadata !286} ; [ DW_TAG_member ] [time_server_id] [line 78, size 8, align 8, offset 264] [from macan_ecuid]
!1532 = metadata !{i32 786445, metadata !239, metadata !1504, metadata !"time_div", i32 79, i64 32, i64 32, i64 288, i32 0, metadata !259} ; [ DW_TAG_member ] [time_div] [line 79, size 32, align 32, offset 288] [from uint32_t]
!1533 = metadata !{i32 786445, metadata !239, metadata !1504, metadata !"skey_validity", i32 80, i64 64, i64 64, i64 320, i32 0, metadata !1485} ; [ DW_TAG_member ] [skey_validity] [line 80, size 64, align 64, offset 320] [from uint64_t]
!1534 = metadata !{i32 786445, metadata !239, metadata !1504, metadata !"skey_chg_timeout", i32 81, i64 32, i64 32, i64 384, i32 0, metadata !259} ; [ DW_TAG_member ] [skey_chg_timeout] [line 81, size 32, align 32, offset 384] [from uint32_t]
!1535 = metadata !{i32 786445, metadata !239, metadata !1504, metadata !"time_timeout", i32 82, i64 32, i64 32, i64 416, i32 0, metadata !259} ; [ DW_TAG_member ] [time_timeout] [line 82, size 32, align 32, offset 416] [from uint32_t]
!1536 = metadata !{i32 786445, metadata !239, metadata !1504, metadata !"time_delta", i32 83, i64 32, i64 32, i64 448, i32 0, metadata !259} ; [ DW_TAG_member ] [time_delta] [line 83, size 32, align 32, offset 448] [from uint32_t]
!1537 = metadata !{i32 786445, metadata !251, metadata !1499, metadata !"node", i32 152, i64 64, i64 64, i64 64, i32 0, metadata !1538} ; [ DW_TAG_member ] [node] [line 152, size 64, align 64, offset 64] [from ]
!1538 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1539} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1539 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1540} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_node_config]
!1540 = metadata !{i32 786451, metadata !239, null, metadata !"macan_node_config", i32 89, i64 128, i64 64, i32 0, i32 0, null, metadata !1541, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_node_config] [line 89, size 128, align 64, offset 0] [fr
!1541 = metadata !{metadata !1542, metadata !1543}
!1542 = metadata !{i32 786445, metadata !239, metadata !1540, metadata !"node_id", i32 90, i64 8, i64 8, i64 0, i32 0, metadata !286} ; [ DW_TAG_member ] [node_id] [line 90, size 8, align 8, offset 0] [from macan_ecuid]
!1543 = metadata !{i32 786445, metadata !239, metadata !1540, metadata !"ltk", i32 91, i64 64, i64 64, i64 64, i32 0, metadata !1544} ; [ DW_TAG_member ] [ltk] [line 91, size 64, align 64, offset 64] [from ]
!1544 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1545} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1545 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1546} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from macan_key]
!1546 = metadata !{i32 786451, metadata !239, null, metadata !"macan_key", i32 97, i64 128, i64 8, i32 0, i32 0, null, metadata !1547, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_key] [line 97, size 128, align 8, offset 0] [from ]
!1547 = metadata !{metadata !1548}
!1548 = metadata !{i32 786445, metadata !239, metadata !1546, metadata !"data", i32 98, i64 128, i64 8, i64 0, i32 0, metadata !306} ; [ DW_TAG_member ] [data] [line 98, size 128, align 8, offset 0] [from ]
!1549 = metadata !{i32 786445, metadata !251, metadata !1499, metadata !"cpart", i32 153, i64 64, i64 64, i64 128, i32 0, metadata !1550} ; [ DW_TAG_member ] [cpart] [line 153, size 64, align 64, offset 128] [from ]
!1550 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1551} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1551 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1552} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from com_part]
!1552 = metadata !{i32 786451, metadata !251, null, metadata !"com_part", i32 113, i64 448, i64 64, i32 0, i32 0, null, metadata !1553, i32 0, null, null} ; [ DW_TAG_structure_type ] [com_part] [line 113, size 448, align 64, offset 0] [from ]
!1553 = metadata !{metadata !1554, metadata !1555, metadata !1556, metadata !1557, metadata !1558, metadata !1559, metadata !1560, metadata !1561, metadata !1562}
!1554 = metadata !{i32 786445, metadata !251, metadata !1552, metadata !"key_received", i32 114, i64 8, i64 8, i64 0, i32 0, metadata !157} ; [ DW_TAG_member ] [key_received] [line 114, size 8, align 8, offset 0] [from _Bool]
!1555 = metadata !{i32 786445, metadata !251, metadata !1552, metadata !"skey", i32 115, i64 128, i64 8, i64 8, i32 0, metadata !1546} ; [ DW_TAG_member ] [skey] [line 115, size 128, align 8, offset 8] [from macan_key]
!1556 = metadata !{i32 786445, metadata !251, metadata !1552, metadata !"valid_until", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !1485} ; [ DW_TAG_member ] [valid_until] [line 116, size 64, align 64, offset 192] [from uint64_t]
!1557 = metadata !{i32 786445, metadata !251, metadata !1552, metadata !"awaiting_skey", i32 117, i64 8, i64 8, i64 256, i32 0, metadata !157} ; [ DW_TAG_member ] [awaiting_skey] [line 117, size 8, align 8, offset 256] [from _Bool]
!1558 = metadata !{i32 786445, metadata !251, metadata !1552, metadata !"chg", i32 118, i64 48, i64 8, i64 264, i32 0, metadata !317} ; [ DW_TAG_member ] [chg] [line 118, size 48, align 8, offset 264] [from ]
!1559 = metadata !{i32 786445, metadata !251, metadata !1552, metadata !"flags", i32 119, i64 8, i64 8, i64 312, i32 0, metadata !269} ; [ DW_TAG_member ] [flags] [line 119, size 8, align 8, offset 312] [from uint8_t]
!1560 = metadata !{i32 786445, metadata !251, metadata !1552, metadata !"group_field", i32 120, i64 32, i64 32, i64 320, i32 0, metadata !259} ; [ DW_TAG_member ] [group_field] [line 120, size 32, align 32, offset 320] [from uint32_t]
!1561 = metadata !{i32 786445, metadata !251, metadata !1552, metadata !"ecu_id", i32 121, i64 8, i64 8, i64 352, i32 0, metadata !286} ; [ DW_TAG_member ] [ecu_id] [line 121, size 8, align 8, offset 352] [from macan_ecuid]
!1562 = metadata !{i32 786445, metadata !251, metadata !1552, metadata !"skey_callback", i32 122, i64 64, i64 64, i64 384, i32 0, metadata !1563} ; [ DW_TAG_member ] [skey_callback] [line 122, size 64, align 64, offset 384] [from ]
!1563 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1564} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1564 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1565, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1565 = metadata !{null, metadata !1498, metadata !286}
!1566 = metadata !{i32 786445, metadata !251, metadata !1499, metadata !"sighand", i32 154, i64 64, i64 64, i64 192, i32 0, metadata !1567} ; [ DW_TAG_member ] [sighand] [line 154, size 64, align 64, offset 192] [from ]
!1567 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1568} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1568 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1569} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sig_handle]
!1569 = metadata !{i32 786451, metadata !251, null, metadata !"sig_handle", i32 130, i64 192, i64 64, i32 0, i32 0, null, metadata !1570, i32 0, null, null} ; [ DW_TAG_structure_type ] [sig_handle] [line 130, size 192, align 64, offset 0] [from ]
!1570 = metadata !{metadata !1571, metadata !1572, metadata !1573, metadata !1574, metadata !1575}
!1571 = metadata !{i32 786445, metadata !251, metadata !1569, metadata !"presc", i32 131, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [presc] [line 131, size 32, align 32, offset 0] [from int]
!1572 = metadata !{i32 786445, metadata !251, metadata !1569, metadata !"presc_cnt", i32 133, i64 8, i64 8, i64 32, i32 0, metadata !269} ; [ DW_TAG_member ] [presc_cnt] [line 133, size 8, align 8, offset 32] [from uint8_t]
!1573 = metadata !{i32 786445, metadata !251, metadata !1569, metadata !"flags", i32 135, i64 8, i64 8, i64 40, i32 0, metadata !269} ; [ DW_TAG_member ] [flags] [line 135, size 8, align 8, offset 40] [from uint8_t]
!1574 = metadata !{i32 786445, metadata !251, metadata !1569, metadata !"cback", i32 136, i64 64, i64 64, i64 64, i32 0, metadata !334} ; [ DW_TAG_member ] [cback] [line 136, size 64, align 64, offset 64] [from ]
!1575 = metadata !{i32 786445, metadata !251, metadata !1569, metadata !"invalid_cback", i32 137, i64 64, i64 64, i64 128, i32 0, metadata !334} ; [ DW_TAG_member ] [invalid_cback] [line 137, size 64, align 64, offset 128] [from ]
!1576 = metadata !{i32 786445, metadata !251, metadata !1499, metadata !"time", i32 155, i64 320, i64 64, i64 256, i32 0, metadata !1577} ; [ DW_TAG_member ] [time] [line 155, size 320, align 64, offset 256] [from macan_timekeeping]
!1577 = metadata !{i32 786451, metadata !251, null, metadata !"macan_timekeeping", i32 93, i64 320, i64 64, i32 0, i32 0, null, metadata !1578, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_timekeeping] [line 93, size 320, align 64, offset 0] [fr
!1578 = metadata !{metadata !1579, metadata !1580, metadata !1581, metadata !1582, metadata !1583, metadata !1584}
!1579 = metadata !{i32 786445, metadata !251, metadata !1577, metadata !"offs", i32 94, i64 64, i64 64, i64 0, i32 0, metadata !1485} ; [ DW_TAG_member ] [offs] [line 94, size 64, align 64, offset 0] [from uint64_t]
!1580 = metadata !{i32 786445, metadata !251, metadata !1577, metadata !"nonauth_ts", i32 96, i64 32, i64 32, i64 64, i32 0, metadata !259} ; [ DW_TAG_member ] [nonauth_ts] [line 96, size 32, align 32, offset 64] [from uint32_t]
!1581 = metadata !{i32 786445, metadata !251, metadata !1577, metadata !"nonauth_loc", i32 97, i64 64, i64 64, i64 128, i32 0, metadata !1485} ; [ DW_TAG_member ] [nonauth_loc] [line 97, size 64, align 64, offset 128] [from uint64_t]
!1582 = metadata !{i32 786445, metadata !251, metadata !1577, metadata !"chal_ts", i32 99, i64 64, i64 64, i64 192, i32 0, metadata !1485} ; [ DW_TAG_member ] [chal_ts] [line 99, size 64, align 64, offset 192] [from uint64_t]
!1583 = metadata !{i32 786445, metadata !251, metadata !1577, metadata !"chg", i32 100, i64 48, i64 8, i64 256, i32 0, metadata !317} ; [ DW_TAG_member ] [chg] [line 100, size 48, align 8, offset 256] [from ]
!1584 = metadata !{i32 786445, metadata !251, metadata !1577, metadata !"ready", i32 101, i64 8, i64 8, i64 304, i32 0, metadata !157} ; [ DW_TAG_member ] [ready] [line 101, size 8, align 8, offset 304] [from _Bool]
!1585 = metadata !{i32 786445, metadata !251, metadata !1499, metadata !"keywrap", i32 156, i64 256, i64 8, i64 576, i32 0, metadata !348} ; [ DW_TAG_member ] [keywrap] [line 156, size 256, align 8, offset 576] [from ]
!1586 = metadata !{i32 786445, metadata !251, metadata !1499, metadata !"rcvd_skey_seq", i32 157, i64 32, i64 32, i64 832, i32 0, metadata !12} ; [ DW_TAG_member ] [rcvd_skey_seq] [line 157, size 32, align 32, offset 832] [from unsigned int]
!1587 = metadata !{i32 786445, metadata !251, metadata !1499, metadata !"sockfd", i32 158, i64 32, i64 32, i64 864, i32 0, metadata !19} ; [ DW_TAG_member ] [sockfd] [line 158, size 32, align 32, offset 864] [from int]
!1588 = metadata !{i32 786445, metadata !251, metadata !1499, metadata !"loop", i32 159, i64 64, i64 64, i64 896, i32 0, metadata !1589} ; [ DW_TAG_member ] [loop] [line 159, size 64, align 64, offset 896] [from ]
!1589 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1590} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_loop]
!1590 = metadata !{i32 786454, metadata !251, null, metadata !"macan_ev_loop", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !1591} ; [ DW_TAG_typedef ] [macan_ev_loop] [line 55, size 0, align 0, offset 0] [from macan_ev_loop]
!1591 = metadata !{i32 786451, metadata !355, null, metadata !"macan_ev_loop", i32 52, i64 128, i64 64, i32 0, i32 0, null, metadata !1592, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ev_loop] [line 52, size 128, align 64, offset 0] [from ]
!1592 = metadata !{metadata !1593, metadata !1614}
!1593 = metadata !{i32 786445, metadata !355, metadata !1591, metadata !"cans", i32 53, i64 64, i64 64, i64 0, i32 0, metadata !1594} ; [ DW_TAG_member ] [cans] [line 53, size 64, align 64, offset 0] [from ]
!1594 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1595} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_can]
!1595 = metadata !{i32 786454, metadata !355, null, metadata !"macan_ev_can", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !1596} ; [ DW_TAG_typedef ] [macan_ev_can] [line 41, size 0, align 0, offset 0] [from macan_ev_can]
!1596 = metadata !{i32 786451, metadata !355, null, metadata !"macan_ev_can", i32 35, i64 320, i64 64, i32 0, i32 0, null, metadata !1597, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ev_can] [line 35, size 320, align 64, offset 0] [from ]
!1597 = metadata !{metadata !1598, metadata !1604, metadata !1605, metadata !1606, metadata !1613}
!1598 = metadata !{i32 786445, metadata !355, metadata !1596, metadata !"cb", i32 36, i64 64, i64 64, i64 0, i32 0, metadata !1599} ; [ DW_TAG_member ] [cb] [line 36, size 64, align 64, offset 0] [from ]
!1599 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1600} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1600 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1601, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1601 = metadata !{null, metadata !1602, metadata !1603, metadata !19}
!1602 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1591} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_loop]
!1603 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1596} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_can]
!1604 = metadata !{i32 786445, metadata !355, metadata !1596, metadata !"next", i32 37, i64 64, i64 64, i64 64, i32 0, metadata !1603} ; [ DW_TAG_member ] [next] [line 37, size 64, align 64, offset 64] [from ]
!1605 = metadata !{i32 786445, metadata !355, metadata !1596, metadata !"canfd", i32 38, i64 32, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [canfd] [line 38, size 32, align 32, offset 128] [from int]
!1606 = metadata !{i32 786445, metadata !355, metadata !1596, metadata !"received", i32 39, i64 64, i64 64, i64 192, i32 0, metadata !1607} ; [ DW_TAG_member ] [received] [line 39, size 64, align 64, offset 192] [from ]
!1607 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1608} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from can_frame]
!1608 = metadata !{i32 786451, metadata !373, null, metadata !"can_frame", i32 68, i64 128, i64 64, i32 0, i32 0, null, metadata !1609, i32 0, null, null} ; [ DW_TAG_structure_type ] [can_frame] [line 68, size 128, align 64, offset 0] [from ]
!1609 = metadata !{metadata !1610, metadata !1611, metadata !1612}
!1610 = metadata !{i32 786445, metadata !373, metadata !1608, metadata !"can_id", i32 69, i64 32, i64 32, i64 0, i32 0, metadata !376} ; [ DW_TAG_member ] [can_id] [line 69, size 32, align 32, offset 0] [from canid_t]
!1611 = metadata !{i32 786445, metadata !373, metadata !1608, metadata !"can_dlc", i32 70, i64 8, i64 8, i64 32, i32 0, metadata !379} ; [ DW_TAG_member ] [can_dlc] [line 70, size 8, align 8, offset 32] [from __u8]
!1612 = metadata !{i32 786445, metadata !373, metadata !1608, metadata !"data", i32 71, i64 64, i64 8, i64 64, i32 0, metadata !381} ; [ DW_TAG_member ] [data] [line 71, size 64, align 8, offset 64] [from ]
!1613 = metadata !{i32 786445, metadata !355, metadata !1596, metadata !"data", i32 40, i64 64, i64 64, i64 256, i32 0, metadata !55} ; [ DW_TAG_member ] [data] [line 40, size 64, align 64, offset 256] [from ]
!1614 = metadata !{i32 786445, metadata !355, metadata !1591, metadata !"timers", i32 54, i64 64, i64 64, i64 64, i32 0, metadata !1615} ; [ DW_TAG_member ] [timers] [line 54, size 64, align 64, offset 64] [from ]
!1615 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1616} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_timer]
!1616 = metadata !{i32 786454, metadata !355, null, metadata !"macan_ev_timer", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !1617} ; [ DW_TAG_typedef ] [macan_ev_timer] [line 50, size 0, align 0, offset 0] [from macan_ev_timer]
!1617 = metadata !{i32 786451, metadata !355, null, metadata !"macan_ev_timer", i32 43, i64 320, i64 64, i32 0, i32 0, null, metadata !1618, i32 0, null, null} ; [ DW_TAG_structure_type ] [macan_ev_timer] [line 43, size 320, align 64, offset 0] [from ]
!1618 = metadata !{metadata !1619, metadata !1624, metadata !1625, metadata !1626, metadata !1627, metadata !1628}
!1619 = metadata !{i32 786445, metadata !355, metadata !1617, metadata !"cb", i32 44, i64 64, i64 64, i64 0, i32 0, metadata !1620} ; [ DW_TAG_member ] [cb] [line 44, size 64, align 64, offset 0] [from ]
!1620 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1621} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1621 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1622, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1622 = metadata !{null, metadata !1602, metadata !1623, metadata !19}
!1623 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1617} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macan_ev_timer]
!1624 = metadata !{i32 786445, metadata !355, metadata !1617, metadata !"next", i32 45, i64 64, i64 64, i64 64, i32 0, metadata !1623} ; [ DW_TAG_member ] [next] [line 45, size 64, align 64, offset 64] [from ]
!1625 = metadata !{i32 786445, metadata !355, metadata !1617, metadata !"after_us", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !12} ; [ DW_TAG_member ] [after_us] [line 46, size 32, align 32, offset 128] [from unsigned int]
!1626 = metadata !{i32 786445, metadata !355, metadata !1617, metadata !"repeat_us", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !12} ; [ DW_TAG_member ] [repeat_us] [line 47, size 32, align 32, offset 160] [from unsigned int]
!1627 = metadata !{i32 786445, metadata !355, metadata !1617, metadata !"expire_us", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !1485} ; [ DW_TAG_member ] [expire_us] [line 48, size 64, align 64, offset 192] [from uint64_t]
!1628 = metadata !{i32 786445, metadata !355, metadata !1617, metadata !"data", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !55} ; [ DW_TAG_member ] [data] [line 49, size 64, align 64, offset 256] [from ]
!1629 = metadata !{i32 786445, metadata !251, metadata !1499, metadata !"can_watcher", i32 160, i64 320, i64 64, i64 960, i32 0, metadata !1595} ; [ DW_TAG_member ] [can_watcher] [line 160, size 320, align 64, offset 960] [from macan_ev_can]
!1630 = metadata !{i32 786445, metadata !251, metadata !1499, metadata !"housekeeping", i32 161, i64 320, i64 64, i64 1280, i32 0, metadata !1616} ; [ DW_TAG_member ] [housekeeping] [line 161, size 320, align 64, offset 1280] [from macan_ev_timer]
!1631 = metadata !{i32 786445, metadata !251, metadata !1499, metadata !"print_msg_enabled", i32 162, i64 8, i64 8, i64 1600, i32 0, metadata !157} ; [ DW_TAG_member ] [print_msg_enabled] [line 162, size 8, align 8, offset 1600] [from _Bool]
!1632 = metadata !{i32 786445, metadata !251, metadata !1499, metadata !"dump_disabled", i32 164, i64 8, i64 8, i64 1608, i32 0, metadata !157} ; [ DW_TAG_member ] [dump_disabled] [line 164, size 8, align 8, offset 1608] [from _Bool]
!1633 = metadata !{i32 786445, metadata !251, metadata !1499, metadata !"", i32 166, i64 448, i64 64, i64 1664, i32 0, metadata !1634} ; [ DW_TAG_member ] [line 166, size 448, align 64, offset 1664] [from ]
!1634 = metadata !{i32 786455, metadata !251, metadata !1499, metadata !"", i32 166, i64 448, i64 64, i64 0, i32 0, null, metadata !1635, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 166, size 448, align 64, offset 0] [from ]
!1635 = metadata !{metadata !1636, metadata !1647}
!1636 = metadata !{i32 786445, metadata !251, metadata !1634, metadata !"ts", i32 174, i64 448, i64 64, i64 0, i32 0, metadata !1637} ; [ DW_TAG_member ] [ts] [line 174, size 448, align 64, offset 0] [from ]
!1637 = metadata !{i32 786451, metadata !251, metadata !1634, metadata !"", i32 167, i64 448, i64 64, i32 0, i32 0, null, metadata !1638, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 167, size 448, align 64, offset 0] [from ]
!1638 = metadata !{metadata !1639, metadata !1640, metadata !1641}
!1639 = metadata !{i32 786445, metadata !251, metadata !1637, metadata !"time_bcast", i32 168, i64 320, i64 64, i64 0, i32 0, metadata !1616} ; [ DW_TAG_member ] [time_bcast] [line 168, size 320, align 64, offset 0] [from macan_ev_timer]
!1640 = metadata !{i32 786445, metadata !251, metadata !1637, metadata !"bcast_time", i32 169, i64 64, i64 64, i64 320, i32 0, metadata !1485} ; [ DW_TAG_member ] [bcast_time] [line 169, size 64, align 64, offset 320] [from uint64_t]
!1641 = metadata !{i32 786445, metadata !251, metadata !1637, metadata !"auth_req", i32 173, i64 64, i64 64, i64 384, i32 0, metadata !1642} ; [ DW_TAG_member ] [auth_req] [line 173, size 64, align 64, offset 384] [from ]
!1642 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1643} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1643 = metadata !{i32 786451, metadata !251, metadata !1637, metadata !"", i32 170, i64 56, i64 8, i32 0, i32 0, null, metadata !1644, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 170, size 56, align 8, offset 0] [from ]
!1644 = metadata !{metadata !1645, metadata !1646}
!1645 = metadata !{i32 786445, metadata !251, metadata !1643, metadata !"pending", i32 171, i64 8, i64 8, i64 0, i32 0, metadata !157} ; [ DW_TAG_member ] [pending] [line 171, size 8, align 8, offset 0] [from _Bool]
!1646 = metadata !{i32 786445, metadata !251, metadata !1643, metadata !"chg", i32 172, i64 48, i64 8, i64 8, i32 0, metadata !317} ; [ DW_TAG_member ] [chg] [line 172, size 48, align 8, offset 8] [from ]
!1647 = metadata !{i32 786445, metadata !251, metadata !1634, metadata !"ks", i32 179, i64 448, i64 64, i64 0, i32 0, metadata !1648} ; [ DW_TAG_member ] [ks] [line 179, size 448, align 64, offset 0] [from ]
!1648 = metadata !{i32 786451, metadata !251, metadata !1634, metadata !"", i32 175, i64 448, i64 64, i32 0, i32 0, null, metadata !1649, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 175, size 448, align 64, offset 0] [from ]
!1649 = metadata !{metadata !1650, metadata !1653, metadata !1654}
!1650 = metadata !{i32 786445, metadata !251, metadata !1648, metadata !"ltk", i32 176, i64 64, i64 64, i64 0, i32 0, metadata !1651} ; [ DW_TAG_member ] [ltk] [line 176, size 64, align 64, offset 0] [from ]
!1651 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1652} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1652 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1544} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!1653 = metadata !{i32 786445, metadata !251, metadata !1648, metadata !"time_bcast", i32 177, i64 320, i64 64, i64 64, i32 0, metadata !1616} ; [ DW_TAG_member ] [time_bcast] [line 177, size 320, align 64, offset 64] [from macan_ev_timer]
!1654 = metadata !{i32 786445, metadata !251, metadata !1648, metadata !"bcast_time", i32 178, i64 64, i64 64, i64 384, i32 0, metadata !1485} ; [ DW_TAG_member ] [bcast_time] [line 178, size 64, align 64, offset 384] [from uint64_t]
!1655 = metadata !{metadata !1656, metadata !1657}
!1656 = metadata !{i32 786689, metadata !1495, metadata !"ctx", metadata !1482, i32 16777238, metadata !1498, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 22]
!1657 = metadata !{i32 786689, metadata !1495, metadata !"cf", metadata !1482, i32 33554454, metadata !1607, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 22]
!1658 = metadata !{i32 786478, metadata !1479, metadata !1482, metadata !"macan_target_init", metadata !"macan_target_init", metadata !"", i32 33, metadata !1659, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1661, 
!1659 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1660, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1660 = metadata !{null, metadata !1498}
!1661 = metadata !{metadata !1662}
!1662 = metadata !{i32 786689, metadata !1658, metadata !"ctx", metadata !1482, i32 16777249, metadata !1498, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 33]
!1663 = metadata !{i32 786478, metadata !1479, metadata !1482, metadata !"macan_send", metadata !"macan_send", metadata !"", i32 38, metadata !1664, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1668, i32 38} ; [ DW
!1664 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1665, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1665 = metadata !{metadata !157, metadata !1498, metadata !1666}
!1666 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1667} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1667 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1608} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from can_frame]
!1668 = metadata !{metadata !1669, metadata !1670}
!1669 = metadata !{i32 786689, metadata !1663, metadata !"ctx", metadata !1482, i32 16777254, metadata !1498, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 38]
!1670 = metadata !{i32 786689, metadata !1663, metadata !"cf", metadata !1482, i32 33554470, metadata !1666, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 38]
!1671 = metadata !{metadata !1672}
!1672 = metadata !{i32 786484, i32 0, metadata !1495, metadata !"counter", metadata !"counter", metadata !"", metadata !1482, i32 26, metadata !19, i32 1, i32 1, i32* @macan_read.counter, null} ; [ DW_TAG_variable ] [counter] [line 26] [local] [def]
!1673 = metadata !{i32 786449, metadata !1674, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !1675, metadata !1744, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!1674 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-decrypt.c", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle"}
!1675 = metadata !{metadata !1676, metadata !1699, metadata !1715, metadata !1731}
!1676 = metadata !{i32 786478, metadata !1674, metadata !1677, metadata !"nettle_aes_decrypt", metadata !"nettle_aes_decrypt", metadata !"", i32 348, metadata !1678, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !169
!1677 = metadata !{i32 786473, metadata !1674}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-decrypt.c]
!1678 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1679, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1679 = metadata !{null, metadata !1680, metadata !1689, metadata !1690, metadata !1692}
!1680 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1681} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1681 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1682} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from aes_ctx]
!1682 = metadata !{i32 786451, metadata !1683, null, metadata !"aes_ctx", i32 83, i64 1952, i64 32, i32 0, i32 0, null, metadata !1684, i32 0, null, null} ; [ DW_TAG_structure_type ] [aes_ctx] [line 83, size 1952, align 32, offset 0] [from ]
!1683 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes.h", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle"}
!1684 = metadata !{metadata !1685, metadata !1686}
!1685 = metadata !{i32 786445, metadata !1683, metadata !1682, metadata !"rounds", i32 85, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_member ] [rounds] [line 85, size 32, align 32, offset 0] [from unsigned int]
!1686 = metadata !{i32 786445, metadata !1683, metadata !1682, metadata !"keys", i32 86, i64 1920, i64 32, i64 32, i32 0, metadata !1687} ; [ DW_TAG_member ] [keys] [line 86, size 1920, align 32, offset 32] [from ]
!1687 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1920, i64 32, i32 0, i32 0, metadata !1688, metadata !1469, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1920, align 32, offset 0] [from uint32_t]
!1688 = metadata !{i32 786454, metadata !1683, null, metadata !"uint32_t", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [uint32_t] [line 51, size 0, align 0, offset 0] [from unsigned int]
!1689 = metadata !{i32 786454, metadata !1674, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1690 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1691} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from uint8_t]
!1691 = metadata !{i32 786454, metadata !1674, null, metadata !"uint8_t", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [uint8_t] [line 48, size 0, align 0, offset 0] [from unsigned char]
!1692 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1693} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1693 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1691} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from uint8_t]
!1694 = metadata !{metadata !1695, metadata !1696, metadata !1697, metadata !1698}
!1695 = metadata !{i32 786689, metadata !1676, metadata !"ctx", metadata !1677, i32 16777564, metadata !1680, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 348]
!1696 = metadata !{i32 786689, metadata !1676, metadata !"length", metadata !1677, i32 33554781, metadata !1689, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 349]
!1697 = metadata !{i32 786689, metadata !1676, metadata !"dst", metadata !1677, i32 50331997, metadata !1690, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 349]
!1698 = metadata !{i32 786689, metadata !1676, metadata !"src", metadata !1677, i32 67109214, metadata !1692, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 350]
!1699 = metadata !{i32 786478, metadata !1674, metadata !1677, metadata !"nettle_aes128_decrypt", metadata !"nettle_aes128_decrypt", metadata !"", i32 358, metadata !1700, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadat
!1700 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1701, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1701 = metadata !{null, metadata !1702, metadata !1689, metadata !1690, metadata !1692}
!1702 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1703} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1703 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1704} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from aes128_ctx]
!1704 = metadata !{i32 786451, metadata !1683, null, metadata !"aes128_ctx", i32 110, i64 1408, i64 32, i32 0, i32 0, null, metadata !1705, i32 0, null, null} ; [ DW_TAG_structure_type ] [aes128_ctx] [line 110, size 1408, align 32, offset 0] [from ]
!1705 = metadata !{metadata !1706}
!1706 = metadata !{i32 786445, metadata !1683, metadata !1704, metadata !"keys", i32 112, i64 1408, i64 32, i64 0, i32 0, metadata !1707} ; [ DW_TAG_member ] [keys] [line 112, size 1408, align 32, offset 0] [from ]
!1707 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1408, i64 32, i32 0, i32 0, metadata !1688, metadata !1708, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1408, align 32, offset 0] [from uint32_t]
!1708 = metadata !{metadata !1709}
!1709 = metadata !{i32 786465, i64 0, i64 44}     ; [ DW_TAG_subrange_type ] [0, 43]
!1710 = metadata !{metadata !1711, metadata !1712, metadata !1713, metadata !1714}
!1711 = metadata !{i32 786689, metadata !1699, metadata !"ctx", metadata !1677, i32 16777574, metadata !1702, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 358]
!1712 = metadata !{i32 786689, metadata !1699, metadata !"length", metadata !1677, i32 33554791, metadata !1689, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 359]
!1713 = metadata !{i32 786689, metadata !1699, metadata !"dst", metadata !1677, i32 50332007, metadata !1690, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 359]
!1714 = metadata !{i32 786689, metadata !1699, metadata !"src", metadata !1677, i32 67109224, metadata !1692, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 360]
!1715 = metadata !{i32 786478, metadata !1674, metadata !1677, metadata !"nettle_aes192_decrypt", metadata !"nettle_aes192_decrypt", metadata !"", i32 368, metadata !1716, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadat
!1716 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1717, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1717 = metadata !{null, metadata !1718, metadata !1689, metadata !1690, metadata !1692}
!1718 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1719} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1719 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1720} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from aes192_ctx]
!1720 = metadata !{i32 786451, metadata !1683, null, metadata !"aes192_ctx", i32 131, i64 1664, i64 32, i32 0, i32 0, null, metadata !1721, i32 0, null, null} ; [ DW_TAG_structure_type ] [aes192_ctx] [line 131, size 1664, align 32, offset 0] [from ]
!1721 = metadata !{metadata !1722}
!1722 = metadata !{i32 786445, metadata !1683, metadata !1720, metadata !"keys", i32 133, i64 1664, i64 32, i64 0, i32 0, metadata !1723} ; [ DW_TAG_member ] [keys] [line 133, size 1664, align 32, offset 0] [from ]
!1723 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1664, i64 32, i32 0, i32 0, metadata !1688, metadata !1724, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1664, align 32, offset 0] [from uint32_t]
!1724 = metadata !{metadata !1725}
!1725 = metadata !{i32 786465, i64 0, i64 52}     ; [ DW_TAG_subrange_type ] [0, 51]
!1726 = metadata !{metadata !1727, metadata !1728, metadata !1729, metadata !1730}
!1727 = metadata !{i32 786689, metadata !1715, metadata !"ctx", metadata !1677, i32 16777584, metadata !1718, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 368]
!1728 = metadata !{i32 786689, metadata !1715, metadata !"length", metadata !1677, i32 33554801, metadata !1689, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 369]
!1729 = metadata !{i32 786689, metadata !1715, metadata !"dst", metadata !1677, i32 50332017, metadata !1690, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 369]
!1730 = metadata !{i32 786689, metadata !1715, metadata !"src", metadata !1677, i32 67109234, metadata !1692, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 370]
!1731 = metadata !{i32 786478, metadata !1674, metadata !1677, metadata !"nettle_aes256_decrypt", metadata !"nettle_aes256_decrypt", metadata !"", i32 378, metadata !1732, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadat
!1732 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1733, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1733 = metadata !{null, metadata !1734, metadata !1689, metadata !1690, metadata !1692}
!1734 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1735} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1735 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1736} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from aes256_ctx]
!1736 = metadata !{i32 786451, metadata !1683, null, metadata !"aes256_ctx", i32 152, i64 1920, i64 32, i32 0, i32 0, null, metadata !1737, i32 0, null, null} ; [ DW_TAG_structure_type ] [aes256_ctx] [line 152, size 1920, align 32, offset 0] [from ]
!1737 = metadata !{metadata !1738}
!1738 = metadata !{i32 786445, metadata !1683, metadata !1736, metadata !"keys", i32 154, i64 1920, i64 32, i64 0, i32 0, metadata !1687} ; [ DW_TAG_member ] [keys] [line 154, size 1920, align 32, offset 0] [from ]
!1739 = metadata !{metadata !1740, metadata !1741, metadata !1742, metadata !1743}
!1740 = metadata !{i32 786689, metadata !1731, metadata !"ctx", metadata !1677, i32 16777594, metadata !1734, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 378]
!1741 = metadata !{i32 786689, metadata !1731, metadata !"length", metadata !1677, i32 33554811, metadata !1689, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 379]
!1742 = metadata !{i32 786689, metadata !1731, metadata !"dst", metadata !1677, i32 50332027, metadata !1690, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 379]
!1743 = metadata !{i32 786689, metadata !1731, metadata !"src", metadata !1677, i32 67109244, metadata !1692, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 380]
!1744 = metadata !{metadata !1745}
!1745 = metadata !{i32 786484, i32 0, null, metadata !"_aes_decrypt_table", metadata !"_aes_decrypt_table", metadata !"", metadata !1677, i32 43, metadata !1746, i32 1, i32 1, null, null}
!1746 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1747} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from aes_table]
!1747 = metadata !{i32 786451, metadata !1748, null, metadata !"aes_table", i32 57, i64 34816, i64 32, i32 0, i32 0, null, metadata !1749, i32 0, null, null} ; [ DW_TAG_structure_type ] [aes_table] [line 57, size 34816, align 32, offset 0] [from ]
!1748 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-internal.h", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle"}
!1749 = metadata !{metadata !1750, metadata !1754}
!1750 = metadata !{i32 786445, metadata !1748, metadata !1747, metadata !"sbox", i32 59, i64 2048, i64 8, i64 0, i32 0, metadata !1751} ; [ DW_TAG_member ] [sbox] [line 59, size 2048, align 8, offset 0] [from ]
!1751 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !1691, metadata !1752, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from uint8_t]
!1752 = metadata !{metadata !1753}
!1753 = metadata !{i32 786465, i64 0, i64 256}    ; [ DW_TAG_subrange_type ] [0, 255]
!1754 = metadata !{i32 786445, metadata !1748, metadata !1747, metadata !"table", i32 60, i64 32768, i64 32, i64 2048, i32 0, metadata !1755} ; [ DW_TAG_member ] [table] [line 60, size 32768, align 32, offset 2048] [from ]
!1755 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !1688, metadata !1756, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 32, offset 0] [from uint32_t]
!1756 = metadata !{metadata !592, metadata !1753}
!1757 = metadata !{i32 786449, metadata !1758, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !1759, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!1758 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-encrypt.c", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle"}
!1759 = metadata !{metadata !1760, metadata !1780, metadata !1793, metadata !1806}
!1760 = metadata !{i32 786478, metadata !1758, metadata !1761, metadata !"nettle_aes_encrypt", metadata !"nettle_aes_encrypt", metadata !"", i32 46, metadata !1762, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1775
!1761 = metadata !{i32 786473, metadata !1758}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-encrypt.c]
!1762 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1763, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1763 = metadata !{null, metadata !1764, metadata !1770, metadata !1771, metadata !1773}
!1764 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1765} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1765 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1766} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from aes_ctx]
!1766 = metadata !{i32 786451, metadata !1683, null, metadata !"aes_ctx", i32 83, i64 1952, i64 32, i32 0, i32 0, null, metadata !1767, i32 0, null, null} ; [ DW_TAG_structure_type ] [aes_ctx] [line 83, size 1952, align 32, offset 0] [from ]
!1767 = metadata !{metadata !1768, metadata !1769}
!1768 = metadata !{i32 786445, metadata !1683, metadata !1766, metadata !"rounds", i32 85, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_member ] [rounds] [line 85, size 32, align 32, offset 0] [from unsigned int]
!1769 = metadata !{i32 786445, metadata !1683, metadata !1766, metadata !"keys", i32 86, i64 1920, i64 32, i64 32, i32 0, metadata !1687} ; [ DW_TAG_member ] [keys] [line 86, size 1920, align 32, offset 32] [from ]
!1770 = metadata !{i32 786454, metadata !1758, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1771 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1772} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from uint8_t]
!1772 = metadata !{i32 786454, metadata !1758, null, metadata !"uint8_t", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [uint8_t] [line 48, size 0, align 0, offset 0] [from unsigned char]
!1773 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1774} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1774 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1772} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from uint8_t]
!1775 = metadata !{metadata !1776, metadata !1777, metadata !1778, metadata !1779}
!1776 = metadata !{i32 786689, metadata !1760, metadata !"ctx", metadata !1761, i32 16777262, metadata !1764, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 46]
!1777 = metadata !{i32 786689, metadata !1760, metadata !"length", metadata !1761, i32 33554479, metadata !1770, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 47]
!1778 = metadata !{i32 786689, metadata !1760, metadata !"dst", metadata !1761, i32 50331695, metadata !1771, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 47]
!1779 = metadata !{i32 786689, metadata !1760, metadata !"src", metadata !1761, i32 67108912, metadata !1773, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 48]
!1780 = metadata !{i32 786478, metadata !1758, metadata !1761, metadata !"nettle_aes128_encrypt", metadata !"nettle_aes128_encrypt", metadata !"", i32 56, metadata !1781, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata
!1781 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1782, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1782 = metadata !{null, metadata !1783, metadata !1770, metadata !1771, metadata !1773}
!1783 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1784} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1784 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1785} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from aes128_ctx]
!1785 = metadata !{i32 786451, metadata !1683, null, metadata !"aes128_ctx", i32 110, i64 1408, i64 32, i32 0, i32 0, null, metadata !1786, i32 0, null, null} ; [ DW_TAG_structure_type ] [aes128_ctx] [line 110, size 1408, align 32, offset 0] [from ]
!1786 = metadata !{metadata !1787}
!1787 = metadata !{i32 786445, metadata !1683, metadata !1785, metadata !"keys", i32 112, i64 1408, i64 32, i64 0, i32 0, metadata !1707} ; [ DW_TAG_member ] [keys] [line 112, size 1408, align 32, offset 0] [from ]
!1788 = metadata !{metadata !1789, metadata !1790, metadata !1791, metadata !1792}
!1789 = metadata !{i32 786689, metadata !1780, metadata !"ctx", metadata !1761, i32 16777272, metadata !1783, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 56]
!1790 = metadata !{i32 786689, metadata !1780, metadata !"length", metadata !1761, i32 33554489, metadata !1770, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 57]
!1791 = metadata !{i32 786689, metadata !1780, metadata !"dst", metadata !1761, i32 50331705, metadata !1771, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 57]
!1792 = metadata !{i32 786689, metadata !1780, metadata !"src", metadata !1761, i32 67108922, metadata !1773, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 58]
!1793 = metadata !{i32 786478, metadata !1758, metadata !1761, metadata !"nettle_aes192_encrypt", metadata !"nettle_aes192_encrypt", metadata !"", i32 66, metadata !1794, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata
!1794 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1795, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1795 = metadata !{null, metadata !1796, metadata !1770, metadata !1771, metadata !1773}
!1796 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1797} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1797 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1798} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from aes192_ctx]
!1798 = metadata !{i32 786451, metadata !1683, null, metadata !"aes192_ctx", i32 131, i64 1664, i64 32, i32 0, i32 0, null, metadata !1799, i32 0, null, null} ; [ DW_TAG_structure_type ] [aes192_ctx] [line 131, size 1664, align 32, offset 0] [from ]
!1799 = metadata !{metadata !1800}
!1800 = metadata !{i32 786445, metadata !1683, metadata !1798, metadata !"keys", i32 133, i64 1664, i64 32, i64 0, i32 0, metadata !1723} ; [ DW_TAG_member ] [keys] [line 133, size 1664, align 32, offset 0] [from ]
!1801 = metadata !{metadata !1802, metadata !1803, metadata !1804, metadata !1805}
!1802 = metadata !{i32 786689, metadata !1793, metadata !"ctx", metadata !1761, i32 16777282, metadata !1796, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 66]
!1803 = metadata !{i32 786689, metadata !1793, metadata !"length", metadata !1761, i32 33554499, metadata !1770, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 67]
!1804 = metadata !{i32 786689, metadata !1793, metadata !"dst", metadata !1761, i32 50331715, metadata !1771, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 67]
!1805 = metadata !{i32 786689, metadata !1793, metadata !"src", metadata !1761, i32 67108932, metadata !1773, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 68]
!1806 = metadata !{i32 786478, metadata !1758, metadata !1761, metadata !"nettle_aes256_encrypt", metadata !"nettle_aes256_encrypt", metadata !"", i32 76, metadata !1807, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata
!1807 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1808, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1808 = metadata !{null, metadata !1809, metadata !1770, metadata !1771, metadata !1773}
!1809 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1810} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1810 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1811} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from aes256_ctx]
!1811 = metadata !{i32 786451, metadata !1683, null, metadata !"aes256_ctx", i32 152, i64 1920, i64 32, i32 0, i32 0, null, metadata !1812, i32 0, null, null} ; [ DW_TAG_structure_type ] [aes256_ctx] [line 152, size 1920, align 32, offset 0] [from ]
!1812 = metadata !{metadata !1813}
!1813 = metadata !{i32 786445, metadata !1683, metadata !1811, metadata !"keys", i32 154, i64 1920, i64 32, i64 0, i32 0, metadata !1687} ; [ DW_TAG_member ] [keys] [line 154, size 1920, align 32, offset 0] [from ]
!1814 = metadata !{metadata !1815, metadata !1816, metadata !1817, metadata !1818}
!1815 = metadata !{i32 786689, metadata !1806, metadata !"ctx", metadata !1761, i32 16777292, metadata !1809, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 76]
!1816 = metadata !{i32 786689, metadata !1806, metadata !"length", metadata !1761, i32 33554509, metadata !1770, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 77]
!1817 = metadata !{i32 786689, metadata !1806, metadata !"dst", metadata !1761, i32 50331725, metadata !1771, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 77]
!1818 = metadata !{i32 786689, metadata !1806, metadata !"src", metadata !1761, i32 67108942, metadata !1773, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 78]
!1819 = metadata !{i32 786449, metadata !1820, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !1821, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!1820 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-set-decrypt-key.c", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle"}
!1821 = metadata !{metadata !1822, metadata !1836}
!1822 = metadata !{i32 786478, metadata !1820, metadata !1823, metadata !"nettle_aes_invert_key", metadata !"nettle_aes_invert_key", metadata !"", i32 42, metadata !1824, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata
!1823 = metadata !{i32 786473, metadata !1820}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-set-decrypt-key.c]
!1824 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1825, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1825 = metadata !{null, metadata !1826, metadata !1831}
!1826 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1827} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from aes_ctx]
!1827 = metadata !{i32 786451, metadata !1683, null, metadata !"aes_ctx", i32 83, i64 1952, i64 32, i32 0, i32 0, null, metadata !1828, i32 0, null, null} ; [ DW_TAG_structure_type ] [aes_ctx] [line 83, size 1952, align 32, offset 0] [from ]
!1828 = metadata !{metadata !1829, metadata !1830}
!1829 = metadata !{i32 786445, metadata !1683, metadata !1827, metadata !"rounds", i32 85, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_member ] [rounds] [line 85, size 32, align 32, offset 0] [from unsigned int]
!1830 = metadata !{i32 786445, metadata !1683, metadata !1827, metadata !"keys", i32 86, i64 1920, i64 32, i64 32, i32 0, metadata !1687} ; [ DW_TAG_member ] [keys] [line 86, size 1920, align 32, offset 32] [from ]
!1831 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1832} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1832 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1827} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from aes_ctx]
!1833 = metadata !{metadata !1834, metadata !1835}
!1834 = metadata !{i32 786689, metadata !1822, metadata !"dst", metadata !1823, i32 16777258, metadata !1826, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 42]
!1835 = metadata !{i32 786689, metadata !1822, metadata !"src", metadata !1823, i32 33554475, metadata !1831, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 43]
!1836 = metadata !{i32 786478, metadata !1820, metadata !1823, metadata !"nettle_aes_set_decrypt_key", metadata !"nettle_aes_set_decrypt_key", metadata !"", i32 50, metadata !1837, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null
!1837 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1838, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1838 = metadata !{null, metadata !1826, metadata !1839, metadata !1840}
!1839 = metadata !{i32 786454, metadata !1820, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1840 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1841} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1841 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1842} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from uint8_t]
!1842 = metadata !{i32 786454, metadata !1820, null, metadata !"uint8_t", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [uint8_t] [line 48, size 0, align 0, offset 0] [from unsigned char]
!1843 = metadata !{metadata !1844, metadata !1845, metadata !1846}
!1844 = metadata !{i32 786689, metadata !1836, metadata !"ctx", metadata !1823, i32 16777266, metadata !1826, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 50]
!1845 = metadata !{i32 786689, metadata !1836, metadata !"keysize", metadata !1823, i32 33554483, metadata !1839, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [keysize] [line 51]
!1846 = metadata !{i32 786689, metadata !1836, metadata !"key", metadata !1823, i32 50331699, metadata !1840, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 51]
!1847 = metadata !{i32 786449, metadata !1848, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !1849, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!1848 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-set-encrypt-key.c", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle"}
!1849 = metadata !{metadata !1850}
!1850 = metadata !{i32 786478, metadata !1848, metadata !1851, metadata !"nettle_aes_set_encrypt_key", metadata !"nettle_aes_set_encrypt_key", metadata !"", i32 44, metadata !1852, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null
!1851 = metadata !{i32 786473, metadata !1848}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-set-encrypt-key.c]
!1852 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1853, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1853 = metadata !{null, metadata !1854, metadata !1859, metadata !1860}
!1854 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1855} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from aes_ctx]
!1855 = metadata !{i32 786451, metadata !1683, null, metadata !"aes_ctx", i32 83, i64 1952, i64 32, i32 0, i32 0, null, metadata !1856, i32 0, null, null} ; [ DW_TAG_structure_type ] [aes_ctx] [line 83, size 1952, align 32, offset 0] [from ]
!1856 = metadata !{metadata !1857, metadata !1858}
!1857 = metadata !{i32 786445, metadata !1683, metadata !1855, metadata !"rounds", i32 85, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_member ] [rounds] [line 85, size 32, align 32, offset 0] [from unsigned int]
!1858 = metadata !{i32 786445, metadata !1683, metadata !1855, metadata !"keys", i32 86, i64 1920, i64 32, i64 32, i32 0, metadata !1687} ; [ DW_TAG_member ] [keys] [line 86, size 1920, align 32, offset 32] [from ]
!1859 = metadata !{i32 786454, metadata !1848, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1860 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1861} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1861 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1862} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from uint8_t]
!1862 = metadata !{i32 786454, metadata !1848, null, metadata !"uint8_t", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [uint8_t] [line 48, size 0, align 0, offset 0] [from unsigned char]
!1863 = metadata !{metadata !1864, metadata !1865, metadata !1866, metadata !1867, metadata !1868}
!1864 = metadata !{i32 786689, metadata !1850, metadata !"ctx", metadata !1851, i32 16777260, metadata !1854, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 44]
!1865 = metadata !{i32 786689, metadata !1850, metadata !"keysize", metadata !1851, i32 33554477, metadata !1859, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [keysize] [line 45]
!1866 = metadata !{i32 786689, metadata !1850, metadata !"key", metadata !1851, i32 50331693, metadata !1860, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 45]
!1867 = metadata !{i32 786688, metadata !1850, metadata !"nk", metadata !1851, i32 47, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nk] [line 47]
!1868 = metadata !{i32 786688, metadata !1850, metadata !"nr", metadata !1851, i32 47, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nr] [line 47]
!1869 = metadata !{i32 786449, metadata !1870, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !1871, metadata !1890, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!1870 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-set-key-internal.c", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle"}
!1871 = metadata !{metadata !1872}
!1872 = metadata !{i32 786478, metadata !1870, metadata !1873, metadata !"_nettle_aes_set_key", metadata !"_nettle_aes_set_key", metadata !"", i32 45, metadata !1874, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !18
!1873 = metadata !{i32 786473, metadata !1870}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-set-key-internal.c]
!1874 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1875, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1875 = metadata !{null, metadata !12, metadata !12, metadata !1876, metadata !1878}
!1876 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1877} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from uint32_t]
!1877 = metadata !{i32 786454, metadata !1870, null, metadata !"uint32_t", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [uint32_t] [line 51, size 0, align 0, offset 0] [from unsigned int]
!1878 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1879} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1879 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1880} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from uint8_t]
!1880 = metadata !{i32 786454, metadata !1870, null, metadata !"uint8_t", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [uint8_t] [line 48, size 0, align 0, offset 0] [from unsigned char]
!1881 = metadata !{metadata !1882, metadata !1883, metadata !1884, metadata !1885, metadata !1886, metadata !1887, metadata !1888, metadata !1889}
!1882 = metadata !{i32 786689, metadata !1872, metadata !"nr", metadata !1873, i32 16777261, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 45]
!1883 = metadata !{i32 786689, metadata !1872, metadata !"nk", metadata !1873, i32 33554477, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nk] [line 45]
!1884 = metadata !{i32 786689, metadata !1872, metadata !"subkeys", metadata !1873, i32 50331694, metadata !1876, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [subkeys] [line 46]
!1885 = metadata !{i32 786689, metadata !1872, metadata !"key", metadata !1873, i32 67108910, metadata !1878, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 46]
!1886 = metadata !{i32 786688, metadata !1872, metadata !"rp", metadata !1873, i32 51, metadata !1878, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rp] [line 51]
!1887 = metadata !{i32 786688, metadata !1872, metadata !"lastkey", metadata !1873, i32 52, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastkey] [line 52]
!1888 = metadata !{i32 786688, metadata !1872, metadata !"i", metadata !1873, i32 52, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 52]
!1889 = metadata !{i32 786688, metadata !1872, metadata !"t", metadata !1873, i32 53, metadata !1877, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 53]
!1890 = metadata !{metadata !1891}
!1891 = metadata !{i32 786484, i32 0, metadata !1872, metadata !"rcon", metadata !"rcon", metadata !"", metadata !1873, i32 48, metadata !1892, i32 1, i32 1, null, null}
!1892 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 80, i64 8, i32 0, i32 0, metadata !1879, metadata !571, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 80, align 8, offset 0] [from ]
!1893 = metadata !{i32 786449, metadata !1894, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !1895, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!1894 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-decrypt-internal.c", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle"}
!1895 = metadata !{metadata !1896}
!1896 = metadata !{i32 786478, metadata !1894, metadata !1897, metadata !"_nettle_aes_decrypt", metadata !"_nettle_aes_decrypt", metadata !"", i32 44, metadata !1898, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !19
!1897 = metadata !{i32 786473, metadata !1894}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-decrypt-internal.c]
!1898 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1899, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1899 = metadata !{null, metadata !12, metadata !1900, metadata !1903, metadata !1912, metadata !1913, metadata !1914}
!1900 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1901} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1901 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1902} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from uint32_t]
!1902 = metadata !{i32 786454, metadata !1894, null, metadata !"uint32_t", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [uint32_t] [line 51, size 0, align 0, offset 0] [from unsigned int]
!1903 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1904} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1904 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1905} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from aes_table]
!1905 = metadata !{i32 786451, metadata !1748, null, metadata !"aes_table", i32 57, i64 34816, i64 32, i32 0, i32 0, null, metadata !1906, i32 0, null, null} ; [ DW_TAG_structure_type ] [aes_table] [line 57, size 34816, align 32, offset 0] [from ]
!1906 = metadata !{metadata !1907, metadata !1910}
!1907 = metadata !{i32 786445, metadata !1748, metadata !1905, metadata !"sbox", i32 59, i64 2048, i64 8, i64 0, i32 0, metadata !1908} ; [ DW_TAG_member ] [sbox] [line 59, size 2048, align 8, offset 0] [from ]
!1908 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !1909, metadata !1752, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from uint8_t]
!1909 = metadata !{i32 786454, metadata !1748, null, metadata !"uint8_t", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [uint8_t] [line 48, size 0, align 0, offset 0] [from unsigned char]
!1910 = metadata !{i32 786445, metadata !1748, metadata !1905, metadata !"table", i32 60, i64 32768, i64 32, i64 2048, i32 0, metadata !1911} ; [ DW_TAG_member ] [table] [line 60, size 32768, align 32, offset 2048] [from ]
!1911 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !1902, metadata !1756, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 32, offset 0] [from uint32_t]
!1912 = metadata !{i32 786454, metadata !1894, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1913 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1909} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from uint8_t]
!1914 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1915} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1915 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1909} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from uint8_t]
!1916 = metadata !{metadata !1917, metadata !1918, metadata !1919, metadata !1920, metadata !1921, metadata !1922, metadata !1923, metadata !1926, metadata !1927, metadata !1928, metadata !1929, metadata !1930, metadata !1931, metadata !1932, metadata !1
!1917 = metadata !{i32 786689, metadata !1896, metadata !"rounds", metadata !1897, i32 16777260, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rounds] [line 44]
!1918 = metadata !{i32 786689, metadata !1896, metadata !"keys", metadata !1897, i32 33554476, metadata !1900, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [keys] [line 44]
!1919 = metadata !{i32 786689, metadata !1896, metadata !"T", metadata !1897, i32 50331693, metadata !1903, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [T] [line 45]
!1920 = metadata !{i32 786689, metadata !1896, metadata !"length", metadata !1897, i32 67108910, metadata !1912, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 46]
!1921 = metadata !{i32 786689, metadata !1896, metadata !"dst", metadata !1897, i32 83886126, metadata !1913, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 46]
!1922 = metadata !{i32 786689, metadata !1896, metadata !"src", metadata !1897, i32 100663343, metadata !1914, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 47]
!1923 = metadata !{i32 786688, metadata !1924, metadata !"w0", metadata !1897, i32 51, metadata !1902, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w0] [line 51]
!1924 = metadata !{i32 786443, metadata !1894, metadata !1925, i32 50, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-decrypt
!1925 = metadata !{i32 786443, metadata !1894, metadata !1896, i32 49, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-decrypt
!1926 = metadata !{i32 786688, metadata !1924, metadata !"w1", metadata !1897, i32 51, metadata !1902, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w1] [line 51]
!1927 = metadata !{i32 786688, metadata !1924, metadata !"w2", metadata !1897, i32 51, metadata !1902, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w2] [line 51]
!1928 = metadata !{i32 786688, metadata !1924, metadata !"w3", metadata !1897, i32 51, metadata !1902, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w3] [line 51]
!1929 = metadata !{i32 786688, metadata !1924, metadata !"t0", metadata !1897, i32 52, metadata !1902, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t0] [line 52]
!1930 = metadata !{i32 786688, metadata !1924, metadata !"t1", metadata !1897, i32 52, metadata !1902, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t1] [line 52]
!1931 = metadata !{i32 786688, metadata !1924, metadata !"t2", metadata !1897, i32 52, metadata !1902, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t2] [line 52]
!1932 = metadata !{i32 786688, metadata !1924, metadata !"t3", metadata !1897, i32 52, metadata !1902, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t3] [line 52]
!1933 = metadata !{i32 786688, metadata !1924, metadata !"i", metadata !1897, i32 53, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 53]
!1934 = metadata !{i32 786449, metadata !1935, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !1936, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!1935 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-encrypt-internal.c", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle"}
!1936 = metadata !{metadata !1937}
!1937 = metadata !{i32 786478, metadata !1935, metadata !1938, metadata !"_nettle_aes_encrypt", metadata !"_nettle_aes_encrypt", metadata !"", i32 44, metadata !1939, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !19
!1938 = metadata !{i32 786473, metadata !1935}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-encrypt-internal.c]
!1939 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1940, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1940 = metadata !{null, metadata !12, metadata !1941, metadata !1944, metadata !1951, metadata !1913, metadata !1914}
!1941 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1942} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1942 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1943} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from uint32_t]
!1943 = metadata !{i32 786454, metadata !1935, null, metadata !"uint32_t", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [uint32_t] [line 51, size 0, align 0, offset 0] [from unsigned int]
!1944 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1945} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1945 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1946} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from aes_table]
!1946 = metadata !{i32 786451, metadata !1748, null, metadata !"aes_table", i32 57, i64 34816, i64 32, i32 0, i32 0, null, metadata !1947, i32 0, null, null} ; [ DW_TAG_structure_type ] [aes_table] [line 57, size 34816, align 32, offset 0] [from ]
!1947 = metadata !{metadata !1948, metadata !1949}
!1948 = metadata !{i32 786445, metadata !1748, metadata !1946, metadata !"sbox", i32 59, i64 2048, i64 8, i64 0, i32 0, metadata !1908} ; [ DW_TAG_member ] [sbox] [line 59, size 2048, align 8, offset 0] [from ]
!1949 = metadata !{i32 786445, metadata !1748, metadata !1946, metadata !"table", i32 60, i64 32768, i64 32, i64 2048, i32 0, metadata !1950} ; [ DW_TAG_member ] [table] [line 60, size 32768, align 32, offset 2048] [from ]
!1950 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !1943, metadata !1756, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 32, offset 0] [from uint32_t]
!1951 = metadata !{i32 786454, metadata !1935, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!1952 = metadata !{metadata !1953, metadata !1954, metadata !1955, metadata !1956, metadata !1957, metadata !1958, metadata !1959, metadata !1962, metadata !1963, metadata !1964, metadata !1965, metadata !1966, metadata !1967, metadata !1968, metadata !1
!1953 = metadata !{i32 786689, metadata !1937, metadata !"rounds", metadata !1938, i32 16777260, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rounds] [line 44]
!1954 = metadata !{i32 786689, metadata !1937, metadata !"keys", metadata !1938, i32 33554476, metadata !1941, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [keys] [line 44]
!1955 = metadata !{i32 786689, metadata !1937, metadata !"T", metadata !1938, i32 50331693, metadata !1944, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [T] [line 45]
!1956 = metadata !{i32 786689, metadata !1937, metadata !"length", metadata !1938, i32 67108910, metadata !1951, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 46]
!1957 = metadata !{i32 786689, metadata !1937, metadata !"dst", metadata !1938, i32 83886126, metadata !1913, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 46]
!1958 = metadata !{i32 786689, metadata !1937, metadata !"src", metadata !1938, i32 100663343, metadata !1914, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 47]
!1959 = metadata !{i32 786688, metadata !1960, metadata !"w0", metadata !1938, i32 51, metadata !1943, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w0] [line 51]
!1960 = metadata !{i32 786443, metadata !1935, metadata !1961, i32 50, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-encrypt
!1961 = metadata !{i32 786443, metadata !1935, metadata !1937, i32 49, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-encrypt
!1962 = metadata !{i32 786688, metadata !1960, metadata !"w1", metadata !1938, i32 51, metadata !1943, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w1] [line 51]
!1963 = metadata !{i32 786688, metadata !1960, metadata !"w2", metadata !1938, i32 51, metadata !1943, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w2] [line 51]
!1964 = metadata !{i32 786688, metadata !1960, metadata !"w3", metadata !1938, i32 51, metadata !1943, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w3] [line 51]
!1965 = metadata !{i32 786688, metadata !1960, metadata !"t0", metadata !1938, i32 52, metadata !1943, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t0] [line 52]
!1966 = metadata !{i32 786688, metadata !1960, metadata !"t1", metadata !1938, i32 52, metadata !1943, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t1] [line 52]
!1967 = metadata !{i32 786688, metadata !1960, metadata !"t2", metadata !1938, i32 52, metadata !1943, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t2] [line 52]
!1968 = metadata !{i32 786688, metadata !1960, metadata !"t3", metadata !1938, i32 52, metadata !1943, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t3] [line 52]
!1969 = metadata !{i32 786688, metadata !1960, metadata !"i", metadata !1938, i32 53, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 53]
!1970 = metadata !{i32 786449, metadata !1971, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !2, metadata !1972, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!1971 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-encrypt-table.c", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle"}
!1972 = metadata !{metadata !1973}
!1973 = metadata !{i32 786484, i32 0, null, metadata !"_nettle_aes_encrypt_table", metadata !"_nettle_aes_encrypt_table", metadata !"", metadata !1974, i32 52, metadata !1975, i32 0, i32 1, null, null}
!1974 = metadata !{i32 786473, metadata !1971}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-encrypt-table.c]
!1975 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1976} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from aes_table]
!1976 = metadata !{i32 786451, metadata !1748, null, metadata !"aes_table", i32 57, i64 34816, i64 32, i32 0, i32 0, null, metadata !1977, i32 0, null, null} ; [ DW_TAG_structure_type ] [aes_table] [line 57, size 34816, align 32, offset 0] [from ]
!1977 = metadata !{metadata !1978, metadata !1979}
!1978 = metadata !{i32 786445, metadata !1748, metadata !1976, metadata !"sbox", i32 59, i64 2048, i64 8, i64 0, i32 0, metadata !1908} ; [ DW_TAG_member ] [sbox] [line 59, size 2048, align 8, offset 0] [from ]
!1979 = metadata !{i32 786445, metadata !1748, metadata !1976, metadata !"table", i32 60, i64 32768, i64 32, i64 2048, i32 0, metadata !1980} ; [ DW_TAG_member ] [table] [line 60, size 32768, align 32, offset 2048] [from ]
!1980 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !1981, metadata !1756, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 32, offset 0] [from uint32_t]
!1981 = metadata !{i32 786454, metadata !1748, null, metadata !"uint32_t", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [uint32_t] [line 51, size 0, align 0, offset 0] [from unsigned int]
!1982 = metadata !{i32 786449, metadata !1983, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !1984, metadata !2012, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!1983 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-invert-internal.c", metadata !"/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle"}
!1984 = metadata !{metadata !1985}
!1985 = metadata !{i32 786478, metadata !1983, metadata !1986, metadata !"_nettle_aes_invert", metadata !"_nettle_aes_invert", metadata !"", i32 135, metadata !1987, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !199
!1986 = metadata !{i32 786473, metadata !1983}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-invert-internal.c]
!1987 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1988, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1988 = metadata !{null, metadata !12, metadata !1989, metadata !1991}
!1989 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1990} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from uint32_t]
!1990 = metadata !{i32 786454, metadata !1983, null, metadata !"uint32_t", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [uint32_t] [line 51, size 0, align 0, offset 0] [from unsigned int]
!1991 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1992} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1992 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1990} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from uint32_t]
!1993 = metadata !{metadata !1994, metadata !1995, metadata !1996, metadata !1997, metadata !1998, metadata !2000, metadata !2001, metadata !2005, metadata !2007, metadata !2010, metadata !2011}
!1994 = metadata !{i32 786689, metadata !1985, metadata !"rounds", metadata !1986, i32 16777351, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rounds] [line 135]
!1995 = metadata !{i32 786689, metadata !1985, metadata !"dst", metadata !1986, i32 33554567, metadata !1989, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 135]
!1996 = metadata !{i32 786689, metadata !1985, metadata !"src", metadata !1986, i32 50331783, metadata !1991, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 135]
!1997 = metadata !{i32 786688, metadata !1985, metadata !"i", metadata !1986, i32 137, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 137]
!1998 = metadata !{i32 786688, metadata !1999, metadata !"j", metadata !1986, i32 144, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 144]
!1999 = metadata !{i32 786443, metadata !1983, metadata !1985, i32 143, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-invert
!2000 = metadata !{i32 786688, metadata !1999, metadata !"k", metadata !1986, i32 144, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 144]
!2001 = metadata !{i32 786688, metadata !2002, metadata !"t_swap", metadata !1986, i32 150, metadata !1990, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t_swap] [line 150]
!2002 = metadata !{i32 786443, metadata !1983, metadata !2003, i32 150, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-invert
!2003 = metadata !{i32 786443, metadata !1983, metadata !2004, i32 149, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-invert
!2004 = metadata !{i32 786443, metadata !1983, metadata !1999, i32 146, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-invert
!2005 = metadata !{i32 786688, metadata !2006, metadata !"k", metadata !1986, i32 154, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 154]
!2006 = metadata !{i32 786443, metadata !1983, metadata !1985, i32 153, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-invert
!2007 = metadata !{i32 786688, metadata !2008, metadata !"_k", metadata !1986, i32 163, metadata !1990, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_k] [line 163]
!2008 = metadata !{i32 786443, metadata !1983, metadata !2009, i32 163, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-invert
!2009 = metadata !{i32 786443, metadata !1983, metadata !1985, i32 162, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/nettle//home/horenmar/thesis-setup-stable/macan/build/klee/nettle/aes-invert
!2010 = metadata !{i32 786688, metadata !2008, metadata !"_nk", metadata !1986, i32 163, metadata !1990, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_nk] [line 163]
!2011 = metadata !{i32 786688, metadata !2008, metadata !"_t", metadata !1986, i32 163, metadata !1990, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_t] [line 163]
!2012 = metadata !{metadata !2013}
!2013 = metadata !{i32 786484, i32 0, null, metadata !"mtable", metadata !"mtable", metadata !"", metadata !1986, i32 46, metadata !2014, i32 1, i32 1, null, null}
!2014 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !1992, metadata !1752, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from ]
!2015 = metadata !{i32 786449, metadata !2016, i32 1, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !2017, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/
!2016 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic"}
!2017 = metadata !{metadata !2018}
!2018 = metadata !{i32 786478, metadata !2016, metadata !2019, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !2020, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_che
!2019 = metadata !{i32 786473, metadata !2016}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic//home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/klee_div_zero_check.c]
!2020 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2021, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2021 = metadata !{null, metadata !2022}
!2022 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!2023 = metadata !{metadata !2024}
!2024 = metadata !{i32 786689, metadata !2018, metadata !"z", metadata !2019, i32 16777228, metadata !2022, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!2025 = metadata !{i32 786449, metadata !2026, i32 1, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !2027, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/
!2026 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic"}
!2027 = metadata !{metadata !2028}
!2028 = metadata !{i32 786478, metadata !2026, metadata !2029, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !2030, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !2032, i3
!2029 = metadata !{i32 786473, metadata !2026}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic//home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/klee_int.c]
!2030 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2031, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2031 = metadata !{metadata !19, metadata !114}
!2032 = metadata !{metadata !2033, metadata !2034}
!2033 = metadata !{i32 786689, metadata !2028, metadata !"name", metadata !2029, i32 16777229, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!2034 = metadata !{i32 786688, metadata !2028, metadata !"x", metadata !2029, i32 14, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!2035 = metadata !{i32 786449, metadata !2036, i32 1, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !2037, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/
!2036 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic"}
!2037 = metadata !{metadata !2038}
!2038 = metadata !{i32 786478, metadata !2036, metadata !2039, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !2040, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overs
!2039 = metadata !{i32 786473, metadata !2036}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic//home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/klee_overshift_check.c]
!2040 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2041, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2041 = metadata !{null, metadata !2042, metadata !2042}
!2042 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!2043 = metadata !{metadata !2044, metadata !2045}
!2044 = metadata !{i32 786689, metadata !2038, metadata !"bitWidth", metadata !2039, i32 16777236, metadata !2042, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!2045 = metadata !{i32 786689, metadata !2038, metadata !"shift", metadata !2039, i32 33554452, metadata !2042, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!2046 = metadata !{i32 786449, metadata !2047, i32 1, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !2048, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/
!2047 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic"}
!2048 = metadata !{metadata !2049}
!2049 = metadata !{i32 786478, metadata !2047, metadata !2050, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !2051, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, me
!2050 = metadata !{i32 786473, metadata !2047}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic//home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/klee_range.c]
!2051 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2052, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2052 = metadata !{metadata !19, metadata !19, metadata !19, metadata !114}
!2053 = metadata !{metadata !2054, metadata !2055, metadata !2056, metadata !2057}
!2054 = metadata !{i32 786689, metadata !2049, metadata !"start", metadata !2050, i32 16777229, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!2055 = metadata !{i32 786689, metadata !2049, metadata !"end", metadata !2050, i32 33554445, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!2056 = metadata !{i32 786689, metadata !2049, metadata !"name", metadata !2050, i32 50331661, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!2057 = metadata !{i32 786688, metadata !2049, metadata !"x", metadata !2050, i32 14, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!2058 = metadata !{i32 786449, metadata !2059, i32 1, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !2060, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/
!2059 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic"}
!2060 = metadata !{metadata !2061}
!2061 = metadata !{i32 786478, metadata !2059, metadata !2062, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !2063, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !2066
!2062 = metadata !{i32 786473, metadata !2059}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic//home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/memcpy.c]
!2063 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2064, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2064 = metadata !{metadata !55, metadata !55, metadata !612, metadata !2065}
!2065 = metadata !{i32 786454, metadata !2059, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!2066 = metadata !{metadata !2067, metadata !2068, metadata !2069, metadata !2070, metadata !2072}
!2067 = metadata !{i32 786689, metadata !2061, metadata !"destaddr", metadata !2062, i32 16777228, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!2068 = metadata !{i32 786689, metadata !2061, metadata !"srcaddr", metadata !2062, i32 33554444, metadata !612, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!2069 = metadata !{i32 786689, metadata !2061, metadata !"len", metadata !2062, i32 50331660, metadata !2065, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!2070 = metadata !{i32 786688, metadata !2061, metadata !"dest", metadata !2062, i32 13, metadata !2071, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!2071 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !116} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!2072 = metadata !{i32 786688, metadata !2061, metadata !"src", metadata !2062, i32 14, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!2073 = metadata !{i32 786449, metadata !2074, i32 1, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !2075, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/
!2074 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/memmove.c", metadata !"/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic"}
!2075 = metadata !{metadata !2076}
!2076 = metadata !{i32 786478, metadata !2074, metadata !2077, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !2078, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !2
!2077 = metadata !{i32 786473, metadata !2074}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic//home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/memmove.c]
!2078 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2079, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2079 = metadata !{metadata !55, metadata !55, metadata !612, metadata !2080}
!2080 = metadata !{i32 786454, metadata !2074, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!2081 = metadata !{metadata !2082, metadata !2083, metadata !2084, metadata !2085, metadata !2086}
!2082 = metadata !{i32 786689, metadata !2076, metadata !"dst", metadata !2077, i32 16777228, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!2083 = metadata !{i32 786689, metadata !2076, metadata !"src", metadata !2077, i32 33554444, metadata !612, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!2084 = metadata !{i32 786689, metadata !2076, metadata !"count", metadata !2077, i32 50331660, metadata !2080, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!2085 = metadata !{i32 786688, metadata !2076, metadata !"a", metadata !2077, i32 13, metadata !2071, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!2086 = metadata !{i32 786688, metadata !2076, metadata !"b", metadata !2077, i32 14, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!2087 = metadata !{i32 786449, metadata !2088, i32 1, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !2089, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/
!2088 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic"}
!2089 = metadata !{metadata !2090}
!2090 = metadata !{i32 786478, metadata !2088, metadata !2091, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !2092, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !2
!2091 = metadata !{i32 786473, metadata !2088}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic//home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/mempcpy.c]
!2092 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2093, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2093 = metadata !{metadata !55, metadata !55, metadata !612, metadata !2094}
!2094 = metadata !{i32 786454, metadata !2088, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!2095 = metadata !{metadata !2096, metadata !2097, metadata !2098, metadata !2099, metadata !2100}
!2096 = metadata !{i32 786689, metadata !2090, metadata !"destaddr", metadata !2091, i32 16777227, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!2097 = metadata !{i32 786689, metadata !2090, metadata !"srcaddr", metadata !2091, i32 33554443, metadata !612, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!2098 = metadata !{i32 786689, metadata !2090, metadata !"len", metadata !2091, i32 50331659, metadata !2094, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!2099 = metadata !{i32 786688, metadata !2090, metadata !"dest", metadata !2091, i32 12, metadata !2071, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!2100 = metadata !{i32 786688, metadata !2090, metadata !"src", metadata !2091, i32 13, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!2101 = metadata !{i32 786449, metadata !2102, i32 1, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !2103, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/
!2102 = metadata !{metadata !"/home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/memset.c", metadata !"/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic"}
!2103 = metadata !{metadata !2104}
!2104 = metadata !{i32 786478, metadata !2102, metadata !2105, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !2106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !2109
!2105 = metadata !{i32 786473, metadata !2102}    ; [ DW_TAG_file_type ] [/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic//home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/memset.c]
!2106 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2107 = metadata !{metadata !55, metadata !55, metadata !19, metadata !2108}
!2108 = metadata !{i32 786454, metadata !2102, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!2109 = metadata !{metadata !2110, metadata !2111, metadata !2112, metadata !2113}
!2110 = metadata !{i32 786689, metadata !2104, metadata !"dst", metadata !2105, i32 16777227, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!2111 = metadata !{i32 786689, metadata !2104, metadata !"s", metadata !2105, i32 33554443, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!2112 = metadata !{i32 786689, metadata !2104, metadata !"count", metadata !2105, i32 50331659, metadata !2108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!2113 = metadata !{i32 786688, metadata !2104, metadata !"a", metadata !2105, i32 12, metadata !2114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!2114 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !2115} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!2115 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !116} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!2116 = metadata !{i32 128, i32 0, metadata !16, null}
!2117 = metadata !{i32 1098, i32 0, metadata !529, metadata !2118}
!2118 = metadata !{i32 131, i32 0, metadata !16, null}
!2119 = metadata !{metadata !"omnipotent char", metadata !2120}
!2120 = metadata !{metadata !"Simple C/C++ TBAA"}
!2121 = metadata !{i32 1099, i32 0, metadata !529, metadata !2118}
!2122 = metadata !{i32 1075, i32 0, metadata !520, metadata !2123}
!2123 = metadata !{i32 1101, i32 0, metadata !529, metadata !2118}
!2124 = metadata !{i32 1077, i32 0, metadata !520, metadata !2123}
!2125 = metadata !{metadata !"any pointer", metadata !2119}
!2126 = metadata !{i32 1078, i32 0, metadata !520, metadata !2123}
!2127 = metadata !{i32 1079, i32 0, metadata !520, metadata !2123}
!2128 = metadata !{i32 1080, i32 0, metadata !520, metadata !2123}
!2129 = metadata !{metadata !"int", metadata !2119}
!2130 = metadata !{i32 1081, i32 0, metadata !520, metadata !2123}
!2131 = metadata !{i32 1082, i32 0, metadata !520, metadata !2123}
!2132 = metadata !{i32 1105, i32 0, metadata !2133, metadata !2118}
!2133 = metadata !{i32 786443, metadata !227, metadata !529, i32 1105, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/maca
!2134 = metadata !{i32 1106, i32 0, metadata !2135, metadata !2118}
!2135 = metadata !{i32 786443, metadata !227, metadata !2133, i32 1105, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/mac
!2136 = metadata !{i32 1107, i32 0, metadata !2137, metadata !2118}
!2137 = metadata !{i32 786443, metadata !227, metadata !2135, i32 1106, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/mac
!2138 = metadata !{i32 1066, i32 0, metadata !516, metadata !2136}
!2139 = metadata !{i32 1067, i32 0, metadata !516, metadata !2136}
!2140 = metadata !{i32 1068, i32 0, metadata !2141, metadata !2136}
!2141 = metadata !{i32 786443, metadata !227, metadata !516, i32 1067, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/maca
!2142 = metadata !{i32 1069, i32 0, metadata !2141, metadata !2136}
!2143 = metadata !{i32 1070, i32 0, metadata !2141, metadata !2136}
!2144 = metadata !{i32 1109, i32 0, metadata !2135, metadata !2118}
!2145 = metadata !{i32 1110, i32 0, metadata !2135, metadata !2118}
!2146 = metadata !{i32 1066, i32 0, metadata !516, metadata !2145}
!2147 = metadata !{i32 1067, i32 0, metadata !516, metadata !2145}
!2148 = metadata !{i32 1068, i32 0, metadata !2141, metadata !2145}
!2149 = metadata !{i32 1069, i32 0, metadata !2141, metadata !2145}
!2150 = metadata !{i32 1070, i32 0, metadata !2141, metadata !2145}
!2151 = metadata !{i32 1112, i32 0, metadata !2135, metadata !2118}
!2152 = metadata !{i32 1113, i32 0, metadata !2135, metadata !2118}
!2153 = metadata !{i32 1114, i32 0, metadata !2135, metadata !2118}
!2154 = metadata !{i32 1115, i32 0, metadata !2135, metadata !2118}
!2155 = metadata !{i32 1116, i32 0, metadata !2135, metadata !2118}
!2156 = metadata !{metadata !"branch_weights", i32 1, i32 1048575}
!2157 = metadata !{i32 1120, i32 0, metadata !529, metadata !2118}
!2158 = metadata !{i32 1066, i32 0, metadata !516, metadata !2157}
!2159 = metadata !{i32 1067, i32 0, metadata !516, metadata !2157}
!2160 = metadata !{i32 1068, i32 0, metadata !2141, metadata !2157}
!2161 = metadata !{i32 1069, i32 0, metadata !2141, metadata !2157}
!2162 = metadata !{i32 1070, i32 0, metadata !2141, metadata !2157}
!2163 = metadata !{i32 1144, i32 0, metadata !549, metadata !2164}
!2164 = metadata !{i32 1123, i32 0, metadata !529, metadata !2118}
!2165 = metadata !{i32 44, i32 0, metadata !837, metadata !2163}
!2166 = metadata !{i32 45, i32 0, metadata !837, metadata !2163}
!2167 = metadata !{i32 1148, i32 0, metadata !549, metadata !2164}
!2168 = metadata !{i32 1149, i32 0, metadata !549, metadata !2164}
!2169 = metadata !{i32 51, i32 0, metadata !893, metadata !2168}
!2170 = metadata !{i32 52, i32 0, metadata !893, metadata !2168}
!2171 = metadata !{i32 60, i32 0, metadata !899, metadata !2172}
!2172 = metadata !{i32 1134, i32 0, metadata !539, metadata !2173}
!2173 = metadata !{i32 1124, i32 0, metadata !529, metadata !2118}
!2174 = metadata !{i32 61, i32 0, metadata !899, metadata !2172}
!2175 = metadata !{i32 62, i32 0, metadata !899, metadata !2172}
!2176 = metadata !{i32 1135, i32 0, metadata !539, metadata !2173}
!2177 = metadata !{i32 1136, i32 0, metadata !539, metadata !2173}
!2178 = metadata !{i32 12, i32 0, metadata !1481, metadata !2179}
!2179 = metadata !{i32 68, i32 0, metadata !910, metadata !2177}
!2180 = metadata !{i32 13, i32 0, metadata !1481, metadata !2179}
!2181 = metadata !{metadata !"long", metadata !2119}
!2182 = metadata !{i32 69, i32 0, metadata !910, metadata !2177}
!2183 = metadata !{i32 70, i32 0, metadata !910, metadata !2177}
!2184 = metadata !{i32 60, i32 0, metadata !899, metadata !2185}
!2185 = metadata !{i32 1134, i32 0, metadata !539, metadata !2186}
!2186 = metadata !{i32 133, i32 0, metadata !16, null}
!2187 = metadata !{i32 61, i32 0, metadata !899, metadata !2185}
!2188 = metadata !{i32 62, i32 0, metadata !899, metadata !2185}
!2189 = metadata !{i32 1135, i32 0, metadata !539, metadata !2186}
!2190 = metadata !{i32 1136, i32 0, metadata !539, metadata !2186}
!2191 = metadata !{i32 12, i32 0, metadata !1481, metadata !2192}
!2192 = metadata !{i32 68, i32 0, metadata !910, metadata !2190}
!2193 = metadata !{i32 13, i32 0, metadata !1481, metadata !2192}
!2194 = metadata !{i32 69, i32 0, metadata !910, metadata !2190}
!2195 = metadata !{i32 70, i32 0, metadata !910, metadata !2190}
!2196 = metadata !{i32 12, i32 0, metadata !1481, metadata !2197}
!2197 = metadata !{i32 88, i32 0, metadata !920, metadata !2198}
!2198 = metadata !{i32 135, i32 0, metadata !16, null}
!2199 = metadata !{i32 13, i32 0, metadata !1481, metadata !2197}
!2200 = metadata !{i32 90, i32 0, metadata !927, metadata !2198}
!2201 = metadata !{i32 91, i32 0, metadata !2202, metadata !2198}
!2202 = metadata !{i32 786443, metadata !835, metadata !927, i32 90, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/klee/ma
!2203 = metadata !{i32 92, i32 0, metadata !2204, metadata !2198}
!2204 = metadata !{i32 786443, metadata !835, metadata !2202, i32 91, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/klee/m
!2205 = metadata !{i32 93, i32 0, metadata !2204, metadata !2198}
!2206 = metadata !{i32 94, i32 0, metadata !2204, metadata !2198}
!2207 = metadata !{i32 98, i32 0, metadata !2208, metadata !2198}
!2208 = metadata !{i32 786443, metadata !835, metadata !929, i32 97, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/klee/ma
!2209 = metadata !{i32 97, i32 0, metadata !929, metadata !2198}
!2210 = metadata !{i32 100, i32 0, metadata !920, metadata !2198}
!2211 = metadata !{i32 138, i32 0, metadata !16, null}
!2212 = metadata !{i32 121, i32 0, metadata !74, null}
!2213 = metadata !{i32 560, i32 0, metadata !430, null}
!2214 = metadata !{i32 63, i32 0, metadata !828, metadata !2215}
!2215 = metadata !{i32 562, i32 27, metadata !430, null}
!2216 = metadata !{i32 64, i32 0, metadata !828, metadata !2215}
!2217 = metadata !{i32 65, i32 0, metadata !2218, metadata !2215}
!2218 = metadata !{i32 786443, metadata !227, metadata !828, i32 64, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan.
!2219 = metadata !{i32 564, i32 0, metadata !430, null}
!2220 = metadata !{i32 567, i32 0, metadata !430, null}
!2221 = metadata !{i32 569, i32 0, metadata !430, null}
!2222 = metadata !{metadata !"branch_weights", i32 1048575, i32 1}
!2223 = metadata !{i32 570, i32 0, metadata !430, null}
!2224 = metadata !{i32 829, i32 0, metadata !447, null}
!2225 = metadata !{i32 830, i32 0, metadata !447, null}
!2226 = metadata !{i32 833, i32 0, metadata !447, null}
!2227 = metadata !{metadata !"_Bool", metadata !2119}
!2228 = metadata !{i8 0, i8 2}
!2229 = metadata !{i32 1154, i32 0, metadata !557, metadata !2230}
!2230 = metadata !{i32 834, i32 0, metadata !2231, null}
!2231 = metadata !{i32 786443, metadata !227, metadata !447, i32 833, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan.
!2232 = metadata !{i32 1155, i32 0, metadata !557, metadata !2230}
!2233 = metadata !{i32 835, i32 0, metadata !2231, null}
!2234 = metadata !{i32 261, i32 0, metadata !802, metadata !2233}
!2235 = metadata !{i32 271, i32 0, metadata !787, metadata !2236}
!2236 = metadata !{i32 836, i32 0, metadata !2231, null}
!2237 = metadata !{i32 837, i32 0, metadata !2231, null}
!2238 = metadata !{i32 838, i32 0, metadata !2231, null}
!2239 = metadata !{i32 12, i32 0, metadata !1481, metadata !2240}
!2240 = metadata !{i32 841, i32 0, metadata !2231, null}
!2241 = metadata !{i32 13, i32 0, metadata !1481, metadata !2240}
!2242 = metadata !{i32 842, i32 0, metadata !2231, null}
!2243 = metadata !{i32 844, i32 0, metadata !447, null}
!2244 = metadata !{i32 1045, i32 0, metadata !499, null}
!2245 = metadata !{i32 1047, i32 0, metadata !499, null}
!2246 = metadata !{i32 849, i32 0, metadata !452, metadata !2247}
!2247 = metadata !{i32 1049, i32 0, metadata !499, null}
!2248 = metadata !{i32 851, i32 0, metadata !452, metadata !2247}
!2249 = metadata !{i32 853, i32 0, metadata !2250, metadata !2247}
!2250 = metadata !{i32 786443, metadata !227, metadata !452, i32 853, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan.
!2251 = metadata !{i32 12, i32 0, metadata !1481, metadata !2252}
!2252 = metadata !{i32 854, i32 0, metadata !2250, metadata !2247}
!2253 = metadata !{i32 13, i32 0, metadata !1481, metadata !2252}
!2254 = metadata !{i32 855, i32 0, metadata !2250, metadata !2247}
!2255 = metadata !{i32 1050, i32 0, metadata !499, null}
!2256 = metadata !{i32 1055, i32 0, metadata !507, null}
!2257 = metadata !{i32 1057, i32 0, metadata !507, null}
!2258 = metadata !{i32 25, i32 0, metadata !1495, metadata !2259}
!2259 = metadata !{i32 1060, i32 0, metadata !507, null}
!2260 = metadata !{i32 27, i32 0, metadata !1495, metadata !2259}
!2261 = metadata !{i32 28, i32 0, metadata !1495, metadata !2259}
!2262 = metadata !{i32 29, i32 0, metadata !1495, metadata !2259}
!2263 = metadata !{i32 911, i32 0, metadata !464, metadata !2264}
!2264 = metadata !{i32 1061, i32 0, metadata !507, null}
!2265 = metadata !{i32 915, i32 0, metadata !2266, metadata !2264}
!2266 = metadata !{i32 786443, metadata !227, metadata !464, i32 914, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan.
!2267 = metadata !{i32 12, i32 0, metadata !1481, metadata !2268}
!2268 = metadata !{i32 404, i32 0, metadata !777, metadata !2269}
!2269 = metadata !{i32 917, i32 0, metadata !2270, metadata !2264}
!2270 = metadata !{i32 786443, metadata !227, metadata !2266, i32 915, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan
!2271 = metadata !{i32 406, i32 0, metadata !777, metadata !2269}
!2272 = metadata !{i32 409, i32 0, metadata !777, metadata !2269}
!2273 = metadata !{i32 421, i32 0, metadata !777, metadata !2269}
!2274 = metadata !{i32 422, i32 0, metadata !777, metadata !2269}
!2275 = metadata !{i32 440, i32 0, metadata !763, metadata !2276}
!2276 = metadata !{i32 920, i32 0, metadata !2270, metadata !2264}
!2277 = metadata !{i32 454, i32 0, metadata !763, metadata !2276}
!2278 = metadata !{i32 457, i32 0, metadata !763, metadata !2276}
!2279 = metadata !{i32 458, i32 0, metadata !763, metadata !2276}
!2280 = metadata !{i32 459, i32 0, metadata !763, metadata !2276}
!2281 = metadata !{i32 150, i32 0, metadata !1246, metadata !2282}
!2282 = metadata !{i32 461, i32 0, metadata !763, metadata !2276}
!2283 = metadata !{i32 12, i32 0, metadata !1481, metadata !2284}
!2284 = metadata !{i32 475, i32 0, metadata !2285, metadata !2276}
!2285 = metadata !{i32 786443, metadata !227, metadata !763, i32 474, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan
!2286 = metadata !{i32 948, i32 0, metadata !475, metadata !2264}
!2287 = metadata !{i32 314, i32 0, metadata !694, metadata !2288}
!2288 = metadata !{i32 959, i32 0, metadata !476, metadata !2264}
!2289 = metadata !{i32 341, i32 0, metadata !694, metadata !2288}
!2290 = metadata !{i32 342, i32 0, metadata !694, metadata !2288}
!2291 = metadata !{i32 199, i32 0, metadata !1427, metadata !2292}
!2292 = metadata !{i32 347, i32 0, metadata !712, metadata !2288}
!2293 = metadata !{i32 348, i32 0, metadata !712, metadata !2288}
!2294 = metadata !{i32 65, i32 0, metadata !2218, metadata !2295}
!2295 = metadata !{i32 349, i32 28, metadata !712, metadata !2288}
!2296 = metadata !{i32 12, i32 0, metadata !1481, metadata !2297}
!2297 = metadata !{i32 365, i32 0, metadata !712, metadata !2288}
!2298 = metadata !{i32 227, i32 0, metadata !639, metadata !2299}
!2299 = metadata !{i32 961, i32 0, metadata !476, metadata !2264}
!2300 = metadata !{i32 237, i32 0, metadata !639, metadata !2299}
!2301 = metadata !{i32 238, i32 0, metadata !639, metadata !2299}
!2302 = metadata !{i32 240, i32 0, metadata !639, metadata !2299}
!2303 = metadata !{i32 247, i32 0, metadata !639, metadata !2299}
!2304 = metadata !{i32 749, i32 0, metadata !563, metadata !2305}
!2305 = metadata !{i32 970, i32 0, metadata !476, metadata !2264}
!2306 = metadata !{i32 776, i32 0, metadata !563, metadata !2305}
!2307 = metadata !{i32 116, i32 0, metadata !608, metadata !2308}
!2308 = metadata !{i32 781, i32 0, metadata !563, metadata !2305}
!2309 = metadata !{i32 116, i32 0, metadata !608, metadata !2310}
!2310 = metadata !{i32 782, i32 0, metadata !563, metadata !2305}
!2311 = metadata !{i32 116, i32 0, metadata !608, metadata !2312}
!2312 = metadata !{i32 783, i32 0, metadata !563, metadata !2305}
!2313 = metadata !{i32 116, i32 0, metadata !608, metadata !2314}
!2314 = metadata !{i32 785, i32 0, metadata !563, metadata !2305}
!2315 = metadata !{i32 116, i32 0, metadata !608, metadata !2316}
!2316 = metadata !{i32 787, i32 0, metadata !563, metadata !2305}
!2317 = metadata !{i32 518, i32 0, metadata !619, metadata !2318}
!2318 = metadata !{i32 968, i32 0, metadata !476, metadata !2264}
!2319 = metadata !{i32 519, i32 0, metadata !619, metadata !2318}
!2320 = metadata !{i32 521, i32 0, metadata !619, metadata !2318}
!2321 = metadata !{i32 534, i32 0, metadata !619, metadata !2318}
!2322 = metadata !{i32 116, i32 0, metadata !608, metadata !2323}
!2323 = metadata !{i32 737, i32 0, metadata !737, metadata !2324}
!2324 = metadata !{i32 931, i32 0, metadata !2325, metadata !2264}
!2325 = metadata !{i32 786443, metadata !227, metadata !464, i32 930, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan.
!2326 = metadata !{i32 116, i32 0, metadata !608, metadata !2327}
!2327 = metadata !{i32 743, i32 0, metadata !737, metadata !2324}
!2328 = metadata !{i32 909, i32 0, metadata !464, metadata !2264}
!2329 = metadata !{i32 914, i32 0, metadata !464, metadata !2264}
!2330 = metadata !{i32 398, i32 0, metadata !777, metadata !2269}
!2331 = metadata !{i32 13, i32 0, metadata !1481, metadata !2268}
!2332 = metadata !{i32 408, i32 0, metadata !777, metadata !2269}
!2333 = metadata !{i32 410, i32 0, metadata !777, metadata !2269}
!2334 = metadata !{i32 413, i32 0, metadata !777, metadata !2269}
!2335 = metadata !{i32 414, i32 0, metadata !2336, metadata !2269}
!2336 = metadata !{i32 786443, metadata !227, metadata !777, i32 413, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan
!2337 = metadata !{i32 415, i32 0, metadata !2336, metadata !2269}
!2338 = metadata !{i32 417, i32 0, metadata !2336, metadata !2269}
!2339 = metadata !{i32 418, i32 0, metadata !2336, metadata !2269}
!2340 = metadata !{i32 918, i32 0, metadata !2270, metadata !2264}
!2341 = metadata !{i32 443, i32 0, metadata !763, metadata !2276}
!2342 = metadata !{i32 451, i32 0, metadata !763, metadata !2276}
!2343 = metadata !{i32 456, i32 0, metadata !763, metadata !2276}
!2344 = metadata !{i32 14, i32 0, metadata !1438, metadata !2345}
!2345 = metadata !{i32 157, i32 0, metadata !2346, metadata !2282}
!2346 = metadata !{i32 786443, metadata !1186, metadata !1246, i32 156, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/cry
!2347 = metadata !{i32 47, i32 0, metadata !949, metadata !2348}
!2348 = metadata !{i32 159, i32 0, metadata !2346, metadata !2282}
!2349 = metadata !{i32 50, i32 0, metadata !2350, metadata !2348}
!2350 = metadata !{i32 786443, metadata !933, metadata !2351, i32 49, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/common
!2351 = metadata !{i32 786443, metadata !933, metadata !949, i32 49, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/common.
!2352 = metadata !{i32 49, i32 0, metadata !2351, metadata !2348}
!2353 = metadata !{i32 468, i32 0, metadata !763, metadata !2276}
!2354 = metadata !{i32 470, i32 0, metadata !763, metadata !2276}
!2355 = metadata !{i32 472, i32 0, metadata !763, metadata !2276}
!2356 = metadata !{i32 473, i32 0, metadata !2357, metadata !2276}
!2357 = metadata !{i32 786443, metadata !227, metadata !763, i32 472, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan
!2358 = metadata !{i32 474, i32 0, metadata !2357, metadata !2276}
!2359 = metadata !{i32 13, i32 0, metadata !1481, metadata !2284}
!2360 = metadata !{i32 476, i32 0, metadata !2285, metadata !2276}
!2361 = metadata !{i32 481, i32 0, metadata !763, metadata !2276}
!2362 = metadata !{i32 479, i32 0, metadata !763, metadata !2276}
!2363 = metadata !{i32 427, i32 0, metadata !773, metadata !2364}
!2364 = metadata !{i32 486, i32 0, metadata !763, metadata !2276}
!2365 = metadata !{i32 429, i32 0, metadata !2366, metadata !2364}
!2366 = metadata !{i32 786443, metadata !227, metadata !773, i32 429, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan
!2367 = metadata !{i32 430, i32 0, metadata !2366, metadata !2364}
!2368 = metadata !{i32 431, i32 0, metadata !2366, metadata !2364}
!2369 = metadata !{i32 487, i32 0, metadata !763, metadata !2276}
!2370 = metadata !{i32 927, i32 0, metadata !464, metadata !2264}
!2371 = metadata !{i32 880, i32 0, metadata !754, metadata !2372}
!2372 = metadata !{i32 930, i32 0, metadata !464, metadata !2264}
!2373 = metadata !{i32 882, i32 0, metadata !2374, metadata !2372}
!2374 = metadata !{i32 786443, metadata !227, metadata !754, i32 882, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan
!2375 = metadata !{i32 883, i32 0, metadata !2376, metadata !2372}
!2376 = metadata !{i32 786443, metadata !227, metadata !2374, i32 882, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/maca
!2377 = metadata !{metadata !"short", metadata !2119}
!2378 = metadata !{i32 705, i32 0, metadata !737, metadata !2324}
!2379 = metadata !{i32 713, i32 0, metadata !737, metadata !2324}
!2380 = metadata !{i32 716, i32 0, metadata !737, metadata !2324}
!2381 = metadata !{i32 722, i32 0, metadata !737, metadata !2324}
!2382 = metadata !{i32 725, i32 0, metadata !737, metadata !2324}
!2383 = metadata !{i32 726, i32 0, metadata !737, metadata !2324}
!2384 = metadata !{i32 731, i32 0, metadata !737, metadata !2324}
!2385 = metadata !{i32 115, i32 0, metadata !608, metadata !2386}
!2386 = metadata !{i32 735, i32 0, metadata !737, metadata !2324}
!2387 = metadata !{i32 116, i32 0, metadata !608, metadata !2386}
!2388 = metadata !{i32 115, i32 0, metadata !608, metadata !2323}
!2389 = metadata !{i32 115, i32 0, metadata !608, metadata !2327}
!2390 = metadata !{i32 745, i32 0, metadata !737, metadata !2324}
!2391 = metadata !{i32 935, i32 0, metadata !464, metadata !2264}
!2392 = metadata !{i32 1003, i32 0, metadata !483, metadata !2391}
!2393 = metadata !{i32 1005, i32 0, metadata !2394, metadata !2391}
!2394 = metadata !{i32 786443, metadata !227, metadata !483, i32 1005, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/maca
!2395 = metadata !{i32 1006, i32 0, metadata !2396, metadata !2391}
!2396 = metadata !{i32 786443, metadata !227, metadata !2394, i32 1005, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/mac
!2397 = metadata !{i32 201, i32 0, metadata !724, metadata !2398}
!2398 = metadata !{i32 938, i32 6, metadata !464, metadata !2264}
!2399 = metadata !{i32 206, i32 0, metadata !2400, metadata !2401}
!2400 = metadata !{i32 786443, metadata !251, metadata !718} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/_compiled/include/macan_private.h]
!2401 = metadata !{i32 941, i32 10, metadata !464, metadata !2264}
!2402 = metadata !{i32 946, i32 0, metadata !476, metadata !2264}
!2403 = metadata !{i32 950, i32 0, metadata !475, metadata !2264}
!2404 = metadata !{i32 953, i32 0, metadata !475, metadata !2264}
!2405 = metadata !{i32 954, i32 0, metadata !475, metadata !2264}
!2406 = metadata !{i32 958, i32 0, metadata !476, metadata !2264}
!2407 = metadata !{i32 316, i32 0, metadata !694, metadata !2288}
!2408 = metadata !{i32 321, i32 0, metadata !694, metadata !2288}
!2409 = metadata !{i32 326, i32 0, metadata !694, metadata !2288}
!2410 = metadata !{i32 327, i32 0, metadata !694, metadata !2288}
!2411 = metadata !{i32 329, i32 0, metadata !694, metadata !2288}
!2412 = metadata !{i32 333, i32 0, metadata !694, metadata !2288}
!2413 = metadata !{i32 335, i32 0, metadata !694, metadata !2288}
!2414 = metadata !{i32 344, i32 0, metadata !694, metadata !2288}
!2415 = metadata !{i32 346, i32 0, metadata !712, metadata !2288}
!2416 = metadata !{i32 196, i32 0, metadata !1427, metadata !2292}
!2417 = metadata !{i32 63, i32 0, metadata !828, metadata !2295}
!2418 = metadata !{i32 64, i32 0, metadata !828, metadata !2295}
!2419 = metadata !{i32 351, i32 0, metadata !712, metadata !2288}
!2420 = metadata !{i32 352, i32 0, metadata !2421, metadata !2288}
!2421 = metadata !{i32 786443, metadata !227, metadata !712, i32 351, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan
!2422 = metadata !{i32 353, i32 0, metadata !2421, metadata !2288}
!2423 = metadata !{i32 47, i32 0, metadata !949, metadata !2424}
!2424 = metadata !{i32 356, i32 0, metadata !712, metadata !2288}
!2425 = metadata !{i32 50, i32 0, metadata !2350, metadata !2424}
!2426 = metadata !{i32 49, i32 0, metadata !2351, metadata !2424}
!2427 = metadata !{i32 357, i32 0, metadata !2428, metadata !2288}
!2428 = metadata !{i32 786443, metadata !227, metadata !712, i32 356, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan
!2429 = metadata !{i32 358, i32 0, metadata !2428, metadata !2288}
!2430 = metadata !{i32 361, i32 0, metadata !712, metadata !2288}
!2431 = metadata !{i32 364, i32 0, metadata !712, metadata !2288}
!2432 = metadata !{i32 13, i32 0, metadata !1481, metadata !2297}
!2433 = metadata !{i32 367, i32 0, metadata !712, metadata !2288}
!2434 = metadata !{i32 370, i32 0, metadata !2435, metadata !2288}
!2435 = metadata !{i32 786443, metadata !227, metadata !712, i32 368, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan
!2436 = metadata !{i32 374, i32 0, metadata !2435, metadata !2288}
!2437 = metadata !{i32 1154, i32 0, metadata !557, metadata !2438}
!2438 = metadata !{i32 376, i32 0, metadata !2435, metadata !2288}
!2439 = metadata !{i32 1155, i32 0, metadata !557, metadata !2438}
!2440 = metadata !{i32 378, i32 0, metadata !2435, metadata !2288}
!2441 = metadata !{i32 379, i32 0, metadata !2435, metadata !2288}
!2442 = metadata !{i32 381, i32 0, metadata !712, metadata !2288}
!2443 = metadata !{i32 382, i32 0, metadata !712, metadata !2288}
!2444 = metadata !{i32 384, i32 0, metadata !712, metadata !2288}
!2445 = metadata !{i32 385, i32 0, metadata !712, metadata !2288}
!2446 = metadata !{i32 229, i32 0, metadata !639, metadata !2299}
!2447 = metadata !{i32 230, i32 0, metadata !639, metadata !2299}
!2448 = metadata !{i32 1029, i32 0, metadata !492, metadata !2447}
!2449 = metadata !{i32 1031, i32 0, metadata !492, metadata !2447}
!2450 = metadata !{i32 1003, i32 0, metadata !483, metadata !2449}
!2451 = metadata !{i32 1005, i32 0, metadata !2394, metadata !2449}
!2452 = metadata !{i32 1006, i32 0, metadata !2396, metadata !2449}
!2453 = metadata !{i32 63, i32 0, metadata !828, metadata !2454}
!2454 = metadata !{i32 1039, i32 9, metadata !492, metadata !2447}
!2455 = metadata !{i32 64, i32 0, metadata !828, metadata !2454}
!2456 = metadata !{i32 65, i32 0, metadata !2218, metadata !2454}
!2457 = metadata !{i32 234, i32 0, metadata !639, metadata !2299}
!2458 = metadata !{i32 241, i32 0, metadata !2459, metadata !2299}
!2459 = metadata !{i32 786443, metadata !227, metadata !639, i32 240, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan
!2460 = metadata !{i32 242, i32 0, metadata !2459, metadata !2299}
!2461 = metadata !{i32 250, i32 0, metadata !639, metadata !2299}
!2462 = metadata !{i32 252, i32 0, metadata !639, metadata !2299}
!2463 = metadata !{i32 253, i32 0, metadata !639, metadata !2299}
!2464 = metadata !{i32 255, i32 0, metadata !639, metadata !2299}
!2465 = metadata !{i32 966, i32 0, metadata !476, metadata !2264}
!2466 = metadata !{i32 494, i32 0, metadata !619, metadata !2318}
!2467 = metadata !{i32 502, i32 0, metadata !619, metadata !2318}
!2468 = metadata !{i32 1029, i32 0, metadata !492, metadata !2467}
!2469 = metadata !{i32 1031, i32 0, metadata !492, metadata !2467}
!2470 = metadata !{i32 1003, i32 0, metadata !483, metadata !2469}
!2471 = metadata !{i32 1005, i32 0, metadata !2394, metadata !2469}
!2472 = metadata !{i32 1006, i32 0, metadata !2396, metadata !2469}
!2473 = metadata !{i32 63, i32 0, metadata !828, metadata !2474}
!2474 = metadata !{i32 1039, i32 9, metadata !492, metadata !2467}
!2475 = metadata !{i32 64, i32 0, metadata !828, metadata !2474}
!2476 = metadata !{i32 65, i32 0, metadata !2218, metadata !2474}
!2477 = metadata !{i32 507, i32 0, metadata !619, metadata !2318}
!2478 = metadata !{i32 516, i32 0, metadata !619, metadata !2318}
!2479 = metadata !{i32 517, i32 0, metadata !619, metadata !2318}
!2480 = metadata !{i32 522, i32 0, metadata !2481, metadata !2318}
!2481 = metadata !{i32 786443, metadata !227, metadata !619, i32 521, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan
!2482 = metadata !{i32 523, i32 0, metadata !2481, metadata !2318}
!2483 = metadata !{i32 527, i32 0, metadata !619, metadata !2318}
!2484 = metadata !{i32 532, i32 0, metadata !619, metadata !2318}
!2485 = metadata !{i32 535, i32 0, metadata !619, metadata !2318}
!2486 = metadata !{i32 538, i32 0, metadata !619, metadata !2318}
!2487 = metadata !{i32 536, i32 0, metadata !619, metadata !2318}
!2488 = metadata !{i32 541, i32 0, metadata !619, metadata !2318}
!2489 = metadata !{i32 544, i32 0, metadata !2490, metadata !2318}
!2490 = metadata !{i32 786443, metadata !227, metadata !619, i32 542, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan
!2491 = metadata !{i32 545, i32 0, metadata !2490, metadata !2318}
!2492 = metadata !{i32 546, i32 0, metadata !2490, metadata !2318}
!2493 = metadata !{i32 547, i32 0, metadata !2494, metadata !2318}
!2494 = metadata !{i32 786443, metadata !227, metadata !619, i32 546, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan
!2495 = metadata !{i32 548, i32 0, metadata !2494, metadata !2318}
!2496 = metadata !{i32 752, i32 0, metadata !563, metadata !2305}
!2497 = metadata !{i32 764, i32 0, metadata !563, metadata !2305}
!2498 = metadata !{i32 766, i32 0, metadata !563, metadata !2305}
!2499 = metadata !{i32 769, i32 0, metadata !563, metadata !2305}
!2500 = metadata !{i32 771, i32 0, metadata !563, metadata !2305}
!2501 = metadata !{i32 115, i32 0, metadata !608, metadata !2308}
!2502 = metadata !{i32 115, i32 0, metadata !608, metadata !2310}
!2503 = metadata !{i32 115, i32 0, metadata !608, metadata !2312}
!2504 = metadata !{i32 115, i32 0, metadata !608, metadata !2314}
!2505 = metadata !{i32 115, i32 0, metadata !608, metadata !2316}
!2506 = metadata !{i32 789, i32 0, metadata !563, metadata !2305}
!2507 = metadata !{i32 1062, i32 0, metadata !507, null}
!2508 = metadata !{i32 795, i32 0, metadata !593, null}
!2509 = metadata !{i32 798, i32 0, metadata !593, null}
!2510 = metadata !{i32 801, i32 0, metadata !593, null}
!2511 = metadata !{i32 803, i32 0, metadata !593, null}
!2512 = metadata !{i32 808, i32 7, metadata !593, null}
!2513 = metadata !{i32 804, i32 0, metadata !2514, null}
!2514 = metadata !{i32 786443, metadata !227, metadata !593, i32 803, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan
!2515 = metadata !{i32 805, i32 0, metadata !2514, null}
!2516 = metadata !{i32 63, i32 0, metadata !828, metadata !2512}
!2517 = metadata !{i32 64, i32 0, metadata !828, metadata !2512}
!2518 = metadata !{i32 65, i32 0, metadata !2218, metadata !2512}
!2519 = metadata !{i32 809, i32 0, metadata !593, null}
!2520 = metadata !{i32 813, i32 0, metadata !593, null}
!2521 = metadata !{i32 814, i32 0, metadata !2522, null}
!2522 = metadata !{i32 786443, metadata !227, metadata !593, i32 813, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan
!2523 = metadata !{i32 815, i32 0, metadata !2522, null}
!2524 = metadata !{i32 817, i32 0, metadata !2522, null}
!2525 = metadata !{i32 821, i32 0, metadata !593, null}
!2526 = metadata !{i32 823, i32 0, metadata !593, null}
!2527 = metadata !{i32 824, i32 0, metadata !593, null}
!2528 = metadata !{i32 188, i32 0, metadata !683, null}
!2529 = metadata !{i32 63, i32 0, metadata !828, metadata !2530}
!2530 = metadata !{i32 194, i32 27, metadata !683, null}
!2531 = metadata !{i32 64, i32 0, metadata !828, metadata !2530}
!2532 = metadata !{i32 65, i32 0, metadata !2218, metadata !2530}
!2533 = metadata !{i32 196, i32 0, metadata !683, null}
!2534 = metadata !{i32 197, i32 0, metadata !683, null}
!2535 = metadata !{i32 863, i32 0, metadata !459, metadata !2536}
!2536 = metadata !{i32 203, i32 0, metadata !683, null}
!2537 = metadata !{i32 12, i32 0, metadata !1481, metadata !2538}
!2538 = metadata !{i32 864, i32 0, metadata !459, metadata !2536}
!2539 = metadata !{i32 13, i32 0, metadata !1481, metadata !2538}
!2540 = metadata !{i32 115, i32 0, metadata !608, metadata !2541}
!2541 = metadata !{i32 205, i32 0, metadata !683, null}
!2542 = metadata !{i32 115, i32 0, metadata !608, metadata !2543}
!2543 = metadata !{i32 206, i32 0, metadata !683, null}
!2544 = metadata !{i32 115, i32 0, metadata !608, metadata !2545}
!2545 = metadata !{i32 207, i32 0, metadata !683, null}
!2546 = metadata !{i32 185, i32 0, metadata !1418, metadata !2547}
!2547 = metadata !{i32 214, i32 0, metadata !683, null}
!2548 = metadata !{i32 14, i32 0, metadata !1438, metadata !2549}
!2549 = metadata !{i32 187, i32 0, metadata !1418, metadata !2547}
!2550 = metadata !{i32 220, i32 0, metadata !683, null}
!2551 = metadata !{i32 224, i32 0, metadata !683, null}
!2552 = metadata !{i32 155, i32 0, metadata !656, null}
!2553 = metadata !{i32 158, i32 0, metadata !656, null}
!2554 = metadata !{i32 162, i32 0, metadata !662, null}
!2555 = metadata !{i32 164, i32 0, metadata !661, null}
!2556 = metadata !{i32 166, i32 0, metadata !661, null}
!2557 = metadata !{i32 65, i32 0, metadata !2218, metadata !2558}
!2558 = metadata !{i32 104, i32 24, metadata !677, metadata !2559}
!2559 = metadata !{i32 167, i32 0, metadata !661, null}
!2560 = metadata !{i32 864, i32 0, metadata !459, metadata !2561}
!2561 = metadata !{i32 131, i32 0, metadata !664, metadata !2562}
!2562 = metadata !{i32 173, i32 0, metadata !2563, null}
!2563 = metadata !{i32 786443, metadata !227, metadata !661, i32 170, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan
!2564 = metadata !{i32 12, i32 0, metadata !1481, metadata !2560}
!2565 = metadata !{i32 163, i32 0, metadata !661, null}
!2566 = metadata !{i32 96, i32 0, metadata !677, metadata !2559}
!2567 = metadata !{i32 102, i32 0, metadata !677, metadata !2559}
!2568 = metadata !{i32 63, i32 0, metadata !828, metadata !2558}
!2569 = metadata !{i32 64, i32 0, metadata !828, metadata !2558}
!2570 = metadata !{i32 105, i32 0, metadata !677, metadata !2559}
!2571 = metadata !{i32 108, i32 0, metadata !677, metadata !2559}
!2572 = metadata !{i32 109, i32 0, metadata !677, metadata !2559}
!2573 = metadata !{i32 170, i32 0, metadata !661, null}
!2574 = metadata !{i32 171, i32 0, metadata !2563, null}
!2575 = metadata !{i32 172, i32 0, metadata !2563, null}
!2576 = metadata !{i32 123, i32 0, metadata !664, metadata !2562}
!2577 = metadata !{i32 863, i32 0, metadata !459, metadata !2561}
!2578 = metadata !{i32 13, i32 0, metadata !1481, metadata !2560}
!2579 = metadata !{i32 63, i32 0, metadata !828, metadata !2580}
!2580 = metadata !{i32 132, i32 9, metadata !664, metadata !2562}
!2581 = metadata !{i32 185, i32 0, metadata !1418, metadata !2582}
!2582 = metadata !{i32 143, i32 0, metadata !664, metadata !2562}
!2583 = metadata !{i32 14, i32 0, metadata !1438, metadata !2584}
!2584 = metadata !{i32 187, i32 0, metadata !1418, metadata !2582}
!2585 = metadata !{i32 174, i32 0, metadata !2563, null}
!2586 = metadata !{i32 162, i32 0, metadata !656, null}
!2587 = metadata !{i32 290, i32 0, metadata !714, null}
!2588 = metadata !{i32 291, i32 0, metadata !714, null}
!2589 = metadata !{i32 293, i32 0, metadata !714, null}
!2590 = metadata !{i32 294, i32 0, metadata !714, null}
!2591 = metadata !{i32 12, i32 0, metadata !1481, metadata !2592}
!2592 = metadata !{i32 299, i32 0, metadata !714, null}
!2593 = metadata !{i32 13, i32 0, metadata !1481, metadata !2592}
!2594 = metadata !{i32 301, i32 0, metadata !2595, null}
!2595 = metadata !{i32 786443, metadata !227, metadata !714, i32 300, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/macan
!2596 = metadata !{i32 12, i32 0, metadata !1481, metadata !2597}
!2597 = metadata !{i32 302, i32 0, metadata !2595, null}
!2598 = metadata !{i32 13, i32 0, metadata !1481, metadata !2597}
!2599 = metadata !{i32 303, i32 0, metadata !2595, null}
!2600 = metadata !{i32 261, i32 0, metadata !802, metadata !2599}
!2601 = metadata !{i32 271, i32 0, metadata !787, metadata !2602}
!2602 = metadata !{i32 304, i32 0, metadata !2595, null}
!2603 = metadata !{i32 305, i32 0, metadata !2595, null}
!2604 = metadata !{i32 304, i32 0, metadata !714, null}
!2605 = metadata !{i32 85, i32 0, metadata !974, null}
!2606 = metadata !{i32 94, i32 0, metadata !974, null}
!2607 = metadata !{i32 95, i32 0, metadata !974, null}
!2608 = metadata !{i32 97, i32 0, metadata !974, null}
!2609 = metadata !{i32 98, i32 0, metadata !1166, null}
!2610 = metadata !{i32 1154, i32 0, metadata !557, metadata !2609}
!2611 = metadata !{i32 1155, i32 0, metadata !557, metadata !2609}
!2612 = metadata !{i32 99, i32 0, metadata !1166, null}
!2613 = metadata !{i32 100, i32 0, metadata !1166, null}
!2614 = metadata !{i32 102, i32 0, metadata !1166, null}
!2615 = metadata !{i32 105, i32 0, metadata !974, null}
!2616 = metadata !{i32 106, i32 0, metadata !974, null}
!2617 = metadata !{i32 38, i32 0, metadata !2618, metadata !2619}
!2618 = metadata !{i32 786443, metadata !1174, metadata !1173} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//usr/include/x86_64-linux-gnu/bits/stdio.h]
!2619 = metadata !{i32 107, i32 0, metadata !974, null}
!2620 = metadata !{i32 108, i32 0, metadata !974, null}
!2621 = metadata !{i32 150, i32 0, metadata !1246, null}
!2622 = metadata !{i32 153, i32 0, metadata !1246, null}
!2623 = metadata !{i32 156, i32 0, metadata !1246, null}
!2624 = metadata !{i32 157, i32 0, metadata !2346, null}
!2625 = metadata !{i32 14, i32 0, metadata !1438, metadata !2624}
!2626 = metadata !{i32 47, i32 0, metadata !949, metadata !2627}
!2627 = metadata !{i32 159, i32 0, metadata !2346, null}
!2628 = metadata !{i32 50, i32 0, metadata !2350, metadata !2627}
!2629 = metadata !{i32 49, i32 0, metadata !2351, metadata !2627}
!2630 = metadata !{i32 863, i32 0, metadata !459, metadata !2631}
!2631 = metadata !{i32 162, i32 0, metadata !1246, null}
!2632 = metadata !{i32 12, i32 0, metadata !1481, metadata !2633}
!2633 = metadata !{i32 864, i32 0, metadata !459, metadata !2631}
!2634 = metadata !{i32 13, i32 0, metadata !1481, metadata !2633}
!2635 = metadata !{i32 165, i32 0, metadata !2636, null}
!2636 = metadata !{i32 786443, metadata !1186, metadata !2637, i32 164, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/cry
!2637 = metadata !{i32 786443, metadata !1186, metadata !1246, i32 164, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/macan/build/klee/_build/user/macan/src//home/horenmar/thesis-setup-stable/macan/build/klee/macan/src/cry
!2638 = metadata !{i32 166, i32 0, metadata !2636, null}
!2639 = metadata !{i32 164, i32 0, metadata !2637, null}
!2640 = metadata !{i32 14, i32 0, metadata !1438, metadata !2638}
!2641 = metadata !{i32 168, i32 0, metadata !2636, null}
!2642 = metadata !{i32 174, i32 0, metadata !1246, null}
!2643 = metadata !{i32 13, i32 0, metadata !2018, null}
!2644 = metadata !{i32 14, i32 0, metadata !2018, null}
!2645 = metadata !{i32 15, i32 0, metadata !2018, null}
!2646 = metadata !{i32 15, i32 0, metadata !2028, null}
!2647 = metadata !{i32 16, i32 0, metadata !2028, null}
!2648 = metadata !{i32 21, i32 0, metadata !2038, null}
!2649 = metadata !{i32 27, i32 0, metadata !2650, null}
!2650 = metadata !{i32 786443, metadata !2036, metadata !2038, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic//home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/klee_overshift_che
!2651 = metadata !{i32 29, i32 0, metadata !2038, null}
!2652 = metadata !{i32 16, i32 0, metadata !2049, null}
!2653 = metadata !{i32 17, i32 0, metadata !2049, null}
!2654 = metadata !{i32 19, i32 0, metadata !2049, null}
!2655 = metadata !{i32 22, i32 0, metadata !2656, null}
!2656 = metadata !{i32 786443, metadata !2047, metadata !2049, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic//home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/klee_range.c]
!2657 = metadata !{i32 25, i32 0, metadata !2656, null}
!2658 = metadata !{i32 26, i32 0, metadata !2659, null}
!2659 = metadata !{i32 786443, metadata !2047, metadata !2656, i32 25, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic//home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/klee_range.c]
!2660 = metadata !{i32 27, i32 0, metadata !2659, null}
!2661 = metadata !{i32 28, i32 0, metadata !2662, null}
!2662 = metadata !{i32 786443, metadata !2047, metadata !2656, i32 27, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic//home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/klee_range.c]
!2663 = metadata !{i32 29, i32 0, metadata !2662, null}
!2664 = metadata !{i32 32, i32 0, metadata !2656, null}
!2665 = metadata !{i32 34, i32 0, metadata !2049, null}
!2666 = metadata !{i32 16, i32 0, metadata !2061, null}
!2667 = metadata !{i32 17, i32 0, metadata !2061, null}
!2668 = metadata !{i32 18, i32 0, metadata !2061, null}
!2669 = metadata !{i32 16, i32 0, metadata !2076, null}
!2670 = metadata !{i32 19, i32 0, metadata !2076, null}
!2671 = metadata !{i32 20, i32 0, metadata !2672, null}
!2672 = metadata !{i32 786443, metadata !2074, metadata !2076, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic//home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/memmove.c]
!2673 = metadata !{i32 22, i32 0, metadata !2674, null}
!2674 = metadata !{i32 786443, metadata !2074, metadata !2076, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/horenmar/thesis-setup-stable/klee/_build/runtime/Intrinsic//home/horenmar/thesis-setup-stable/klee/runtime/Intrinsic/memmove.c]
!2675 = metadata !{i32 24, i32 0, metadata !2674, null}
!2676 = metadata !{i32 23, i32 0, metadata !2674, null}
!2677 = metadata !{i32 28, i32 0, metadata !2076, null}
!2678 = metadata !{i32 15, i32 0, metadata !2090, null}
!2679 = metadata !{i32 16, i32 0, metadata !2090, null}
!2680 = metadata !{i32 17, i32 0, metadata !2090, null}
!2681 = metadata !{i32 13, i32 0, metadata !2104, null}
!2682 = metadata !{i32 14, i32 0, metadata !2104, null}
!2683 = metadata !{i32 15, i32 0, metadata !2104, null}
