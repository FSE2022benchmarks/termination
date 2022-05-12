; ModuleID = '../bc_file/Incorrect_Cyclic_Invoking_1_T.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsTconInfo = type { i32 }

@cifsTconInfo = common global %struct.cifsTconInfo zeroinitializer, align 4

; Function Attrs: nounwind uwtable
define i32 @CIFSSMBQFSUnixInfo(i32 %xid, %struct.cifsTconInfo* %tcon) #0 {
CIFSSMBQFSUnixInfo_bb0:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @reset_cifs_unix_caps(i32 %xid, %struct.cifsTconInfo* %tcon) #0 {
reset_cifs_unix_caps_bb1:
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_smb_init.exit:
  %t1 = alloca %struct.cifsTconInfo, align 4
  %"0" = call i32 (...)* @__VERIFIER_nondet_int()
  %"1" = getelementptr inbounds %struct.cifsTconInfo* %t1, i32 0, i32 0
  store i32 %"0", i32* %"1", align 4
  %"2" = call i32 (...)* @__VERIFIER_nondet_int()
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare i32 @__kittel_nondef.0()

declare %struct.cifsTconInfo* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
