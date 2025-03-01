%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:19:29 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   62 ( 266 expanded)
%              Number of clauses        :   35 (  91 expanded)
%              Number of leaves         :   13 (  67 expanded)
%              Depth                    :   12
%              Number of atoms          :  264 (1235 expanded)
%              Number of equality atoms :   12 (  12 expanded)
%              Maximal formula depth    :   11 (   5 average)
%              Maximal clause size      :   14 (   3 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t20_tex_2,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ( v1_tex_2(k1_tex_2(X1,X2),X1)
          <=> v1_subset_1(k6_domain_1(u1_struct_0(X1),X2),u1_struct_0(X1)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t20_tex_2)).

fof(dt_l1_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => l1_struct_0(X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_l1_pre_topc)).

fof(t9_tex_2,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & ~ v7_struct_0(X1)
        & l1_struct_0(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => v1_subset_1(k6_domain_1(u1_struct_0(X1),X2),u1_struct_0(X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t9_tex_2)).

fof(cc13_tex_2,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & ~ v7_struct_0(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => ( ( ~ v2_struct_0(X2)
              & ~ v1_tex_2(X2,X1) )
           => ( ~ v2_struct_0(X2)
              & ~ v7_struct_0(X2) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc13_tex_2)).

fof(dt_k1_tex_2,axiom,(
    ! [X1,X2] :
      ( ( ~ v2_struct_0(X1)
        & l1_pre_topc(X1)
        & m1_subset_1(X2,u1_struct_0(X1)) )
     => ( ~ v2_struct_0(k1_tex_2(X1,X2))
        & v1_pre_topc(k1_tex_2(X1,X2))
        & m1_pre_topc(k1_tex_2(X1,X2),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k1_tex_2)).

fof(dt_m1_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => l1_pre_topc(X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_m1_pre_topc)).

fof(t8_tex_2,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_struct_0(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ~ ( v1_subset_1(k6_domain_1(u1_struct_0(X1),X2),u1_struct_0(X1))
              & v7_struct_0(X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t8_tex_2)).

fof(cc6_tex_2,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v7_struct_0(X1)
        & l1_struct_0(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( ~ v1_xboole_0(X2)
           => ( ~ v1_xboole_0(X2)
              & ~ v1_subset_1(X2,u1_struct_0(X1)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc6_tex_2)).

fof(d7_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => ( v1_subset_1(X2,X1)
      <=> X2 != X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d7_subset_1)).

fof(t15_tex_2,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => ~ ( u1_struct_0(X2) = u1_struct_0(X1)
              & v1_tex_2(X2,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t15_tex_2)).

fof(fc2_tex_2,axiom,(
    ! [X1,X2] :
      ( ( ~ v2_struct_0(X1)
        & l1_pre_topc(X1)
        & m1_subset_1(X2,u1_struct_0(X1)) )
     => ( ~ v2_struct_0(k1_tex_2(X1,X2))
        & v7_struct_0(k1_tex_2(X1,X2))
        & v1_pre_topc(k1_tex_2(X1,X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc2_tex_2)).

fof(t1_tsep_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X1))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_tsep_1)).

fof(fc2_struct_0,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_struct_0(X1) )
     => ~ v1_xboole_0(u1_struct_0(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc2_struct_0)).

fof(c_0_13,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & l1_pre_topc(X1) )
       => ! [X2] :
            ( m1_subset_1(X2,u1_struct_0(X1))
           => ( v1_tex_2(k1_tex_2(X1,X2),X1)
            <=> v1_subset_1(k6_domain_1(u1_struct_0(X1),X2),u1_struct_0(X1)) ) ) ) ),
    inference(assume_negation,[status(cth)],[t20_tex_2])).

fof(c_0_14,plain,(
    ! [X3] :
      ( ~ l1_pre_topc(X3)
      | l1_struct_0(X3) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_pre_topc])])).

fof(c_0_15,negated_conjecture,
    ( ~ v2_struct_0(esk1_0)
    & l1_pre_topc(esk1_0)
    & m1_subset_1(esk2_0,u1_struct_0(esk1_0))
    & ( ~ v1_tex_2(k1_tex_2(esk1_0,esk2_0),esk1_0)
      | ~ v1_subset_1(k6_domain_1(u1_struct_0(esk1_0),esk2_0),u1_struct_0(esk1_0)) )
    & ( v1_tex_2(k1_tex_2(esk1_0,esk2_0),esk1_0)
      | v1_subset_1(k6_domain_1(u1_struct_0(esk1_0),esk2_0),u1_struct_0(esk1_0)) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_13])])])])).

fof(c_0_16,plain,(
    ! [X23,X24] :
      ( v2_struct_0(X23)
      | v7_struct_0(X23)
      | ~ l1_struct_0(X23)
      | ~ m1_subset_1(X24,u1_struct_0(X23))
      | v1_subset_1(k6_domain_1(u1_struct_0(X23),X24),u1_struct_0(X23)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t9_tex_2])])])])).

cnf(c_0_17,plain,
    ( l1_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_18,negated_conjecture,
    ( l1_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_19,negated_conjecture,
    ( ~ v1_tex_2(k1_tex_2(esk1_0,esk2_0),esk1_0)
    | ~ v1_subset_1(k6_domain_1(u1_struct_0(esk1_0),esk2_0),u1_struct_0(esk1_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_20,plain,
    ( v2_struct_0(X1)
    | v7_struct_0(X1)
    | v1_subset_1(k6_domain_1(u1_struct_0(X1),X2),u1_struct_0(X1))
    | ~ l1_struct_0(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_21,negated_conjecture,
    ( m1_subset_1(esk2_0,u1_struct_0(esk1_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_22,negated_conjecture,
    ( ~ v2_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_23,negated_conjecture,
    ( l1_struct_0(esk1_0) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

fof(c_0_24,plain,(
    ! [X9,X10] :
      ( ( ~ v2_struct_0(X10)
        | v2_struct_0(X10)
        | v1_tex_2(X10,X9)
        | ~ m1_pre_topc(X10,X9)
        | v2_struct_0(X9)
        | v7_struct_0(X9)
        | ~ l1_pre_topc(X9) )
      & ( ~ v7_struct_0(X10)
        | v2_struct_0(X10)
        | v1_tex_2(X10,X9)
        | ~ m1_pre_topc(X10,X9)
        | v2_struct_0(X9)
        | v7_struct_0(X9)
        | ~ l1_pre_topc(X9) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc13_tex_2])])])])])).

fof(c_0_25,plain,(
    ! [X15,X16] :
      ( ( ~ v2_struct_0(k1_tex_2(X15,X16))
        | v2_struct_0(X15)
        | ~ l1_pre_topc(X15)
        | ~ m1_subset_1(X16,u1_struct_0(X15)) )
      & ( v1_pre_topc(k1_tex_2(X15,X16))
        | v2_struct_0(X15)
        | ~ l1_pre_topc(X15)
        | ~ m1_subset_1(X16,u1_struct_0(X15)) )
      & ( m1_pre_topc(k1_tex_2(X15,X16),X15)
        | v2_struct_0(X15)
        | ~ l1_pre_topc(X15)
        | ~ m1_subset_1(X16,u1_struct_0(X15)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_k1_tex_2])])])])).

cnf(c_0_26,negated_conjecture,
    ( v7_struct_0(esk1_0)
    | ~ v1_tex_2(k1_tex_2(esk1_0,esk2_0),esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_21])]),c_0_22]),c_0_23])])).

cnf(c_0_27,plain,
    ( v2_struct_0(X1)
    | v1_tex_2(X1,X2)
    | v2_struct_0(X2)
    | v7_struct_0(X2)
    | ~ v7_struct_0(X1)
    | ~ m1_pre_topc(X1,X2)
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

fof(c_0_28,plain,(
    ! [X4,X5] :
      ( ~ l1_pre_topc(X4)
      | ~ m1_pre_topc(X5,X4)
      | l1_pre_topc(X5) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_m1_pre_topc])])])).

fof(c_0_29,plain,(
    ! [X21,X22] :
      ( v2_struct_0(X21)
      | ~ l1_struct_0(X21)
      | ~ m1_subset_1(X22,u1_struct_0(X21))
      | ~ v1_subset_1(k6_domain_1(u1_struct_0(X21),X22),u1_struct_0(X21))
      | ~ v7_struct_0(X21) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t8_tex_2])])])])).

cnf(c_0_30,plain,
    ( v2_struct_0(X1)
    | ~ v2_struct_0(k1_tex_2(X1,X2))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_31,negated_conjecture,
    ( v7_struct_0(esk1_0)
    | v2_struct_0(k1_tex_2(esk1_0,esk2_0))
    | ~ v7_struct_0(k1_tex_2(esk1_0,esk2_0))
    | ~ m1_pre_topc(k1_tex_2(esk1_0,esk2_0),esk1_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_18])]),c_0_22])).

fof(c_0_32,plain,(
    ! [X11,X12] :
      ( ( ~ v1_xboole_0(X12)
        | v1_xboole_0(X12)
        | ~ m1_subset_1(X12,k1_zfmisc_1(u1_struct_0(X11)))
        | v2_struct_0(X11)
        | ~ v7_struct_0(X11)
        | ~ l1_struct_0(X11) )
      & ( ~ v1_subset_1(X12,u1_struct_0(X11))
        | v1_xboole_0(X12)
        | ~ m1_subset_1(X12,k1_zfmisc_1(u1_struct_0(X11)))
        | v2_struct_0(X11)
        | ~ v7_struct_0(X11)
        | ~ l1_struct_0(X11) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc6_tex_2])])])])])).

fof(c_0_33,plain,(
    ! [X13,X14] :
      ( ( ~ v1_subset_1(X14,X13)
        | X14 != X13
        | ~ m1_subset_1(X14,k1_zfmisc_1(X13)) )
      & ( X14 = X13
        | v1_subset_1(X14,X13)
        | ~ m1_subset_1(X14,k1_zfmisc_1(X13)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_subset_1])])])).

cnf(c_0_34,plain,
    ( l1_pre_topc(X2)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_35,plain,
    ( m1_pre_topc(k1_tex_2(X1,X2),X1)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

fof(c_0_36,plain,(
    ! [X19,X20] :
      ( ~ l1_pre_topc(X19)
      | ~ m1_pre_topc(X20,X19)
      | u1_struct_0(X20) != u1_struct_0(X19)
      | ~ v1_tex_2(X20,X19) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t15_tex_2])])])).

cnf(c_0_37,plain,
    ( v2_struct_0(X1)
    | ~ l1_struct_0(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ v1_subset_1(k6_domain_1(u1_struct_0(X1),X2),u1_struct_0(X1))
    | ~ v7_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_38,negated_conjecture,
    ( v1_tex_2(k1_tex_2(esk1_0,esk2_0),esk1_0)
    | v1_subset_1(k6_domain_1(u1_struct_0(esk1_0),esk2_0),u1_struct_0(esk1_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_39,negated_conjecture,
    ( v7_struct_0(esk1_0)
    | ~ v7_struct_0(k1_tex_2(esk1_0,esk2_0))
    | ~ m1_pre_topc(k1_tex_2(esk1_0,esk2_0),esk1_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_31]),c_0_21]),c_0_18])]),c_0_22])).

fof(c_0_40,plain,(
    ! [X17,X18] :
      ( ( ~ v2_struct_0(k1_tex_2(X17,X18))
        | v2_struct_0(X17)
        | ~ l1_pre_topc(X17)
        | ~ m1_subset_1(X18,u1_struct_0(X17)) )
      & ( v7_struct_0(k1_tex_2(X17,X18))
        | v2_struct_0(X17)
        | ~ l1_pre_topc(X17)
        | ~ m1_subset_1(X18,u1_struct_0(X17)) )
      & ( v1_pre_topc(k1_tex_2(X17,X18))
        | v2_struct_0(X17)
        | ~ l1_pre_topc(X17)
        | ~ m1_subset_1(X18,u1_struct_0(X17)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_tex_2])])])])).

cnf(c_0_41,plain,
    ( v1_xboole_0(X1)
    | v2_struct_0(X2)
    | ~ v1_subset_1(X1,u1_struct_0(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ v7_struct_0(X2)
    | ~ l1_struct_0(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_42,plain,
    ( X1 = X2
    | v1_subset_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

fof(c_0_43,plain,(
    ! [X7,X8] :
      ( ~ l1_pre_topc(X7)
      | ~ m1_pre_topc(X8,X7)
      | m1_subset_1(u1_struct_0(X8),k1_zfmisc_1(u1_struct_0(X7))) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_tsep_1])])])).

fof(c_0_44,plain,(
    ! [X6] :
      ( v2_struct_0(X6)
      | ~ l1_struct_0(X6)
      | ~ v1_xboole_0(u1_struct_0(X6)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_struct_0])])])).

cnf(c_0_45,plain,
    ( v2_struct_0(X1)
    | l1_pre_topc(k1_tex_2(X1,X2))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_pre_topc(X1) ),
    inference(spm,[status(thm)],[c_0_34,c_0_35])).

cnf(c_0_46,plain,
    ( ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1)
    | u1_struct_0(X2) != u1_struct_0(X1)
    | ~ v1_tex_2(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_47,negated_conjecture,
    ( v1_tex_2(k1_tex_2(esk1_0,esk2_0),esk1_0)
    | ~ v7_struct_0(esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_38]),c_0_21])]),c_0_22]),c_0_23])])).

cnf(c_0_48,negated_conjecture,
    ( v7_struct_0(esk1_0)
    | ~ v7_struct_0(k1_tex_2(esk1_0,esk2_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_35]),c_0_21]),c_0_18])]),c_0_22])).

cnf(c_0_49,plain,
    ( v7_struct_0(k1_tex_2(X1,X2))
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

cnf(c_0_50,plain,
    ( X1 = u1_struct_0(X2)
    | v1_xboole_0(X1)
    | v2_struct_0(X2)
    | ~ v7_struct_0(X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ l1_struct_0(X2) ),
    inference(spm,[status(thm)],[c_0_41,c_0_42])).

cnf(c_0_51,plain,
    ( m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_52,plain,
    ( v2_struct_0(X1)
    | ~ l1_struct_0(X1)
    | ~ v1_xboole_0(u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_53,plain,
    ( v2_struct_0(X1)
    | l1_struct_0(k1_tex_2(X1,X2))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_pre_topc(X1) ),
    inference(spm,[status(thm)],[c_0_17,c_0_45])).

cnf(c_0_54,negated_conjecture,
    ( u1_struct_0(k1_tex_2(esk1_0,esk2_0)) != u1_struct_0(esk1_0)
    | ~ v7_struct_0(esk1_0)
    | ~ m1_pre_topc(k1_tex_2(esk1_0,esk2_0),esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46,c_0_47]),c_0_18])])).

cnf(c_0_55,negated_conjecture,
    ( v7_struct_0(esk1_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_49]),c_0_21]),c_0_18])]),c_0_22])).

cnf(c_0_56,plain,
    ( u1_struct_0(X1) = u1_struct_0(X2)
    | v1_xboole_0(u1_struct_0(X1))
    | v2_struct_0(X2)
    | ~ v7_struct_0(X2)
    | ~ m1_pre_topc(X1,X2)
    | ~ l1_pre_topc(X2) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_51]),c_0_17])).

cnf(c_0_57,plain,
    ( v2_struct_0(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ v1_xboole_0(u1_struct_0(k1_tex_2(X1,X2)))
    | ~ l1_pre_topc(X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_52]),c_0_53])).

cnf(c_0_58,negated_conjecture,
    ( u1_struct_0(k1_tex_2(esk1_0,esk2_0)) != u1_struct_0(esk1_0)
    | ~ m1_pre_topc(k1_tex_2(esk1_0,esk2_0),esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_54,c_0_55])])).

cnf(c_0_59,plain,
    ( u1_struct_0(k1_tex_2(X1,X2)) = u1_struct_0(X1)
    | v2_struct_0(X1)
    | ~ v7_struct_0(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ l1_pre_topc(X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_56,c_0_35]),c_0_57])).

cnf(c_0_60,negated_conjecture,
    ( ~ m1_pre_topc(k1_tex_2(esk1_0,esk2_0),esk1_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_59]),c_0_55]),c_0_21]),c_0_18])]),c_0_22])).

cnf(c_0_61,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60,c_0_35]),c_0_21]),c_0_18])]),c_0_22]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n022.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 16:38:10 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic G_E___107_B42_F1_PI_SE_Q4_CS_SP_PS_S0Y
% 0.13/0.38  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.028 s
% 0.13/0.38  # Presaturation interreduction done
% 0.13/0.38  
% 0.13/0.38  # Proof found!
% 0.13/0.38  # SZS status Theorem
% 0.13/0.38  # SZS output start CNFRefutation
% 0.13/0.38  fof(t20_tex_2, conjecture, ![X1]:((~(v2_struct_0(X1))&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>(v1_tex_2(k1_tex_2(X1,X2),X1)<=>v1_subset_1(k6_domain_1(u1_struct_0(X1),X2),u1_struct_0(X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t20_tex_2)).
% 0.13/0.38  fof(dt_l1_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>l1_struct_0(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_l1_pre_topc)).
% 0.13/0.38  fof(t9_tex_2, axiom, ![X1]:(((~(v2_struct_0(X1))&~(v7_struct_0(X1)))&l1_struct_0(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>v1_subset_1(k6_domain_1(u1_struct_0(X1),X2),u1_struct_0(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t9_tex_2)).
% 0.13/0.38  fof(cc13_tex_2, axiom, ![X1]:(((~(v2_struct_0(X1))&~(v7_struct_0(X1)))&l1_pre_topc(X1))=>![X2]:(m1_pre_topc(X2,X1)=>((~(v2_struct_0(X2))&~(v1_tex_2(X2,X1)))=>(~(v2_struct_0(X2))&~(v7_struct_0(X2)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc13_tex_2)).
% 0.13/0.38  fof(dt_k1_tex_2, axiom, ![X1, X2]:(((~(v2_struct_0(X1))&l1_pre_topc(X1))&m1_subset_1(X2,u1_struct_0(X1)))=>((~(v2_struct_0(k1_tex_2(X1,X2)))&v1_pre_topc(k1_tex_2(X1,X2)))&m1_pre_topc(k1_tex_2(X1,X2),X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k1_tex_2)).
% 0.13/0.38  fof(dt_m1_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_pre_topc(X2,X1)=>l1_pre_topc(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_m1_pre_topc)).
% 0.13/0.38  fof(t8_tex_2, axiom, ![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>~((v1_subset_1(k6_domain_1(u1_struct_0(X1),X2),u1_struct_0(X1))&v7_struct_0(X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t8_tex_2)).
% 0.13/0.38  fof(cc6_tex_2, axiom, ![X1]:(((~(v2_struct_0(X1))&v7_struct_0(X1))&l1_struct_0(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(~(v1_xboole_0(X2))=>(~(v1_xboole_0(X2))&~(v1_subset_1(X2,u1_struct_0(X1))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc6_tex_2)).
% 0.13/0.38  fof(d7_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>(v1_subset_1(X2,X1)<=>X2!=X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d7_subset_1)).
% 0.13/0.38  fof(t15_tex_2, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_pre_topc(X2,X1)=>~((u1_struct_0(X2)=u1_struct_0(X1)&v1_tex_2(X2,X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t15_tex_2)).
% 0.13/0.38  fof(fc2_tex_2, axiom, ![X1, X2]:(((~(v2_struct_0(X1))&l1_pre_topc(X1))&m1_subset_1(X2,u1_struct_0(X1)))=>((~(v2_struct_0(k1_tex_2(X1,X2)))&v7_struct_0(k1_tex_2(X1,X2)))&v1_pre_topc(k1_tex_2(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc2_tex_2)).
% 0.13/0.38  fof(t1_tsep_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_pre_topc(X2,X1)=>m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t1_tsep_1)).
% 0.13/0.38  fof(fc2_struct_0, axiom, ![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>~(v1_xboole_0(u1_struct_0(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc2_struct_0)).
% 0.13/0.38  fof(c_0_13, negated_conjecture, ~(![X1]:((~(v2_struct_0(X1))&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>(v1_tex_2(k1_tex_2(X1,X2),X1)<=>v1_subset_1(k6_domain_1(u1_struct_0(X1),X2),u1_struct_0(X1)))))), inference(assume_negation,[status(cth)],[t20_tex_2])).
% 0.13/0.38  fof(c_0_14, plain, ![X3]:(~l1_pre_topc(X3)|l1_struct_0(X3)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_pre_topc])])).
% 0.13/0.38  fof(c_0_15, negated_conjecture, ((~v2_struct_0(esk1_0)&l1_pre_topc(esk1_0))&(m1_subset_1(esk2_0,u1_struct_0(esk1_0))&((~v1_tex_2(k1_tex_2(esk1_0,esk2_0),esk1_0)|~v1_subset_1(k6_domain_1(u1_struct_0(esk1_0),esk2_0),u1_struct_0(esk1_0)))&(v1_tex_2(k1_tex_2(esk1_0,esk2_0),esk1_0)|v1_subset_1(k6_domain_1(u1_struct_0(esk1_0),esk2_0),u1_struct_0(esk1_0)))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_13])])])])).
% 0.13/0.38  fof(c_0_16, plain, ![X23, X24]:(v2_struct_0(X23)|v7_struct_0(X23)|~l1_struct_0(X23)|(~m1_subset_1(X24,u1_struct_0(X23))|v1_subset_1(k6_domain_1(u1_struct_0(X23),X24),u1_struct_0(X23)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t9_tex_2])])])])).
% 0.13/0.38  cnf(c_0_17, plain, (l1_struct_0(X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.38  cnf(c_0_18, negated_conjecture, (l1_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.13/0.38  cnf(c_0_19, negated_conjecture, (~v1_tex_2(k1_tex_2(esk1_0,esk2_0),esk1_0)|~v1_subset_1(k6_domain_1(u1_struct_0(esk1_0),esk2_0),u1_struct_0(esk1_0))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.13/0.38  cnf(c_0_20, plain, (v2_struct_0(X1)|v7_struct_0(X1)|v1_subset_1(k6_domain_1(u1_struct_0(X1),X2),u1_struct_0(X1))|~l1_struct_0(X1)|~m1_subset_1(X2,u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.38  cnf(c_0_21, negated_conjecture, (m1_subset_1(esk2_0,u1_struct_0(esk1_0))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.13/0.38  cnf(c_0_22, negated_conjecture, (~v2_struct_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.13/0.38  cnf(c_0_23, negated_conjecture, (l1_struct_0(esk1_0)), inference(spm,[status(thm)],[c_0_17, c_0_18])).
% 0.13/0.38  fof(c_0_24, plain, ![X9, X10]:((~v2_struct_0(X10)|(v2_struct_0(X10)|v1_tex_2(X10,X9))|~m1_pre_topc(X10,X9)|(v2_struct_0(X9)|v7_struct_0(X9)|~l1_pre_topc(X9)))&(~v7_struct_0(X10)|(v2_struct_0(X10)|v1_tex_2(X10,X9))|~m1_pre_topc(X10,X9)|(v2_struct_0(X9)|v7_struct_0(X9)|~l1_pre_topc(X9)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc13_tex_2])])])])])).
% 0.13/0.38  fof(c_0_25, plain, ![X15, X16]:(((~v2_struct_0(k1_tex_2(X15,X16))|(v2_struct_0(X15)|~l1_pre_topc(X15)|~m1_subset_1(X16,u1_struct_0(X15))))&(v1_pre_topc(k1_tex_2(X15,X16))|(v2_struct_0(X15)|~l1_pre_topc(X15)|~m1_subset_1(X16,u1_struct_0(X15)))))&(m1_pre_topc(k1_tex_2(X15,X16),X15)|(v2_struct_0(X15)|~l1_pre_topc(X15)|~m1_subset_1(X16,u1_struct_0(X15))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_k1_tex_2])])])])).
% 0.13/0.38  cnf(c_0_26, negated_conjecture, (v7_struct_0(esk1_0)|~v1_tex_2(k1_tex_2(esk1_0,esk2_0),esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_20]), c_0_21])]), c_0_22]), c_0_23])])).
% 0.13/0.38  cnf(c_0_27, plain, (v2_struct_0(X1)|v1_tex_2(X1,X2)|v2_struct_0(X2)|v7_struct_0(X2)|~v7_struct_0(X1)|~m1_pre_topc(X1,X2)|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.38  fof(c_0_28, plain, ![X4, X5]:(~l1_pre_topc(X4)|(~m1_pre_topc(X5,X4)|l1_pre_topc(X5))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_m1_pre_topc])])])).
% 0.13/0.38  fof(c_0_29, plain, ![X21, X22]:(v2_struct_0(X21)|~l1_struct_0(X21)|(~m1_subset_1(X22,u1_struct_0(X21))|(~v1_subset_1(k6_domain_1(u1_struct_0(X21),X22),u1_struct_0(X21))|~v7_struct_0(X21)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t8_tex_2])])])])).
% 0.13/0.38  cnf(c_0_30, plain, (v2_struct_0(X1)|~v2_struct_0(k1_tex_2(X1,X2))|~l1_pre_topc(X1)|~m1_subset_1(X2,u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.13/0.38  cnf(c_0_31, negated_conjecture, (v7_struct_0(esk1_0)|v2_struct_0(k1_tex_2(esk1_0,esk2_0))|~v7_struct_0(k1_tex_2(esk1_0,esk2_0))|~m1_pre_topc(k1_tex_2(esk1_0,esk2_0),esk1_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_18])]), c_0_22])).
% 0.13/0.38  fof(c_0_32, plain, ![X11, X12]:((~v1_xboole_0(X12)|v1_xboole_0(X12)|~m1_subset_1(X12,k1_zfmisc_1(u1_struct_0(X11)))|(v2_struct_0(X11)|~v7_struct_0(X11)|~l1_struct_0(X11)))&(~v1_subset_1(X12,u1_struct_0(X11))|v1_xboole_0(X12)|~m1_subset_1(X12,k1_zfmisc_1(u1_struct_0(X11)))|(v2_struct_0(X11)|~v7_struct_0(X11)|~l1_struct_0(X11)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc6_tex_2])])])])])).
% 0.13/0.38  fof(c_0_33, plain, ![X13, X14]:((~v1_subset_1(X14,X13)|X14!=X13|~m1_subset_1(X14,k1_zfmisc_1(X13)))&(X14=X13|v1_subset_1(X14,X13)|~m1_subset_1(X14,k1_zfmisc_1(X13)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_subset_1])])])).
% 0.13/0.38  cnf(c_0_34, plain, (l1_pre_topc(X2)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.13/0.38  cnf(c_0_35, plain, (m1_pre_topc(k1_tex_2(X1,X2),X1)|v2_struct_0(X1)|~l1_pre_topc(X1)|~m1_subset_1(X2,u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.13/0.38  fof(c_0_36, plain, ![X19, X20]:(~l1_pre_topc(X19)|(~m1_pre_topc(X20,X19)|(u1_struct_0(X20)!=u1_struct_0(X19)|~v1_tex_2(X20,X19)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t15_tex_2])])])).
% 0.13/0.38  cnf(c_0_37, plain, (v2_struct_0(X1)|~l1_struct_0(X1)|~m1_subset_1(X2,u1_struct_0(X1))|~v1_subset_1(k6_domain_1(u1_struct_0(X1),X2),u1_struct_0(X1))|~v7_struct_0(X1)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.13/0.38  cnf(c_0_38, negated_conjecture, (v1_tex_2(k1_tex_2(esk1_0,esk2_0),esk1_0)|v1_subset_1(k6_domain_1(u1_struct_0(esk1_0),esk2_0),u1_struct_0(esk1_0))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.13/0.38  cnf(c_0_39, negated_conjecture, (v7_struct_0(esk1_0)|~v7_struct_0(k1_tex_2(esk1_0,esk2_0))|~m1_pre_topc(k1_tex_2(esk1_0,esk2_0),esk1_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_31]), c_0_21]), c_0_18])]), c_0_22])).
% 0.13/0.38  fof(c_0_40, plain, ![X17, X18]:(((~v2_struct_0(k1_tex_2(X17,X18))|(v2_struct_0(X17)|~l1_pre_topc(X17)|~m1_subset_1(X18,u1_struct_0(X17))))&(v7_struct_0(k1_tex_2(X17,X18))|(v2_struct_0(X17)|~l1_pre_topc(X17)|~m1_subset_1(X18,u1_struct_0(X17)))))&(v1_pre_topc(k1_tex_2(X17,X18))|(v2_struct_0(X17)|~l1_pre_topc(X17)|~m1_subset_1(X18,u1_struct_0(X17))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_tex_2])])])])).
% 0.13/0.38  cnf(c_0_41, plain, (v1_xboole_0(X1)|v2_struct_0(X2)|~v1_subset_1(X1,u1_struct_0(X2))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))|~v7_struct_0(X2)|~l1_struct_0(X2)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.13/0.38  cnf(c_0_42, plain, (X1=X2|v1_subset_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.13/0.38  fof(c_0_43, plain, ![X7, X8]:(~l1_pre_topc(X7)|(~m1_pre_topc(X8,X7)|m1_subset_1(u1_struct_0(X8),k1_zfmisc_1(u1_struct_0(X7))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_tsep_1])])])).
% 0.13/0.38  fof(c_0_44, plain, ![X6]:(v2_struct_0(X6)|~l1_struct_0(X6)|~v1_xboole_0(u1_struct_0(X6))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_struct_0])])])).
% 0.13/0.38  cnf(c_0_45, plain, (v2_struct_0(X1)|l1_pre_topc(k1_tex_2(X1,X2))|~m1_subset_1(X2,u1_struct_0(X1))|~l1_pre_topc(X1)), inference(spm,[status(thm)],[c_0_34, c_0_35])).
% 0.13/0.38  cnf(c_0_46, plain, (~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)|u1_struct_0(X2)!=u1_struct_0(X1)|~v1_tex_2(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.13/0.38  cnf(c_0_47, negated_conjecture, (v1_tex_2(k1_tex_2(esk1_0,esk2_0),esk1_0)|~v7_struct_0(esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_38]), c_0_21])]), c_0_22]), c_0_23])])).
% 0.13/0.38  cnf(c_0_48, negated_conjecture, (v7_struct_0(esk1_0)|~v7_struct_0(k1_tex_2(esk1_0,esk2_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_35]), c_0_21]), c_0_18])]), c_0_22])).
% 0.13/0.38  cnf(c_0_49, plain, (v7_struct_0(k1_tex_2(X1,X2))|v2_struct_0(X1)|~l1_pre_topc(X1)|~m1_subset_1(X2,u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_40])).
% 0.13/0.38  cnf(c_0_50, plain, (X1=u1_struct_0(X2)|v1_xboole_0(X1)|v2_struct_0(X2)|~v7_struct_0(X2)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))|~l1_struct_0(X2)), inference(spm,[status(thm)],[c_0_41, c_0_42])).
% 0.13/0.38  cnf(c_0_51, plain, (m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X1)))|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.13/0.38  cnf(c_0_52, plain, (v2_struct_0(X1)|~l1_struct_0(X1)|~v1_xboole_0(u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.13/0.38  cnf(c_0_53, plain, (v2_struct_0(X1)|l1_struct_0(k1_tex_2(X1,X2))|~m1_subset_1(X2,u1_struct_0(X1))|~l1_pre_topc(X1)), inference(spm,[status(thm)],[c_0_17, c_0_45])).
% 0.13/0.38  cnf(c_0_54, negated_conjecture, (u1_struct_0(k1_tex_2(esk1_0,esk2_0))!=u1_struct_0(esk1_0)|~v7_struct_0(esk1_0)|~m1_pre_topc(k1_tex_2(esk1_0,esk2_0),esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46, c_0_47]), c_0_18])])).
% 0.13/0.38  cnf(c_0_55, negated_conjecture, (v7_struct_0(esk1_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_49]), c_0_21]), c_0_18])]), c_0_22])).
% 0.13/0.38  cnf(c_0_56, plain, (u1_struct_0(X1)=u1_struct_0(X2)|v1_xboole_0(u1_struct_0(X1))|v2_struct_0(X2)|~v7_struct_0(X2)|~m1_pre_topc(X1,X2)|~l1_pre_topc(X2)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_51]), c_0_17])).
% 0.13/0.38  cnf(c_0_57, plain, (v2_struct_0(X1)|~m1_subset_1(X2,u1_struct_0(X1))|~v1_xboole_0(u1_struct_0(k1_tex_2(X1,X2)))|~l1_pre_topc(X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_52]), c_0_53])).
% 0.13/0.38  cnf(c_0_58, negated_conjecture, (u1_struct_0(k1_tex_2(esk1_0,esk2_0))!=u1_struct_0(esk1_0)|~m1_pre_topc(k1_tex_2(esk1_0,esk2_0),esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_54, c_0_55])])).
% 0.13/0.38  cnf(c_0_59, plain, (u1_struct_0(k1_tex_2(X1,X2))=u1_struct_0(X1)|v2_struct_0(X1)|~v7_struct_0(X1)|~m1_subset_1(X2,u1_struct_0(X1))|~l1_pre_topc(X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_56, c_0_35]), c_0_57])).
% 0.13/0.38  cnf(c_0_60, negated_conjecture, (~m1_pre_topc(k1_tex_2(esk1_0,esk2_0),esk1_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58, c_0_59]), c_0_55]), c_0_21]), c_0_18])]), c_0_22])).
% 0.13/0.38  cnf(c_0_61, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60, c_0_35]), c_0_21]), c_0_18])]), c_0_22]), ['proof']).
% 0.13/0.38  # SZS output end CNFRefutation
% 0.13/0.38  # Proof object total steps             : 62
% 0.13/0.38  # Proof object clause steps            : 35
% 0.13/0.38  # Proof object formula steps           : 27
% 0.13/0.38  # Proof object conjectures             : 19
% 0.13/0.38  # Proof object clause conjectures      : 16
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 18
% 0.13/0.38  # Proof object initial formulas used   : 13
% 0.13/0.38  # Proof object generating inferences   : 16
% 0.13/0.38  # Proof object simplifying inferences  : 41
% 0.13/0.38  # Training examples: 0 positive, 0 negative
% 0.13/0.38  # Parsed axioms                        : 13
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 24
% 0.13/0.38  # Removed in clause preprocessing      : 2
% 0.13/0.38  # Initial clauses in saturation        : 22
% 0.13/0.38  # Processed clauses                    : 67
% 0.13/0.38  # ...of these trivial                  : 0
% 0.13/0.38  # ...subsumed                          : 3
% 0.13/0.38  # ...remaining for further processing  : 64
% 0.13/0.38  # Other redundant clauses eliminated   : 1
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 2
% 0.13/0.38  # Backward-rewritten                   : 6
% 0.13/0.38  # Generated clauses                    : 39
% 0.13/0.38  # ...of the previous two non-trivial   : 35
% 0.13/0.38  # Contextual simplify-reflections      : 5
% 0.13/0.38  # Paramodulations                      : 38
% 0.13/0.38  # Factorizations                       : 0
% 0.13/0.38  # Equation resolutions                 : 1
% 0.13/0.38  # Propositional unsat checks           : 0
% 0.13/0.38  #    Propositional check models        : 0
% 0.13/0.38  #    Propositional check unsatisfiable : 0
% 0.13/0.38  #    Propositional clauses             : 0
% 0.13/0.38  #    Propositional clauses after purity: 0
% 0.13/0.38  #    Propositional unsat core size     : 0
% 0.13/0.38  #    Propositional preprocessing time  : 0.000
% 0.13/0.38  #    Propositional encoding time       : 0.000
% 0.13/0.38  #    Propositional solver time         : 0.000
% 0.13/0.38  #    Success case prop preproc time    : 0.000
% 0.13/0.38  #    Success case prop encoding time   : 0.000
% 0.13/0.38  #    Success case prop solver time     : 0.000
% 0.13/0.38  # Current number of processed clauses  : 35
% 0.13/0.38  #    Positive orientable unit clauses  : 5
% 0.13/0.38  #    Positive unorientable unit clauses: 0
% 0.13/0.38  #    Negative unit clauses             : 4
% 0.13/0.38  #    Non-unit-clauses                  : 26
% 0.13/0.38  # Current number of unprocessed clauses: 8
% 0.13/0.38  # ...number of literals in the above   : 67
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 28
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 342
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 71
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 10
% 0.13/0.38  # Unit Clause-clause subsumption calls : 3
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 2
% 0.13/0.38  # BW rewrite match successes           : 2
% 0.13/0.38  # Condensation attempts                : 0
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.38  # Termbank termtop insertions          : 3232
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.029 s
% 0.13/0.38  # System time              : 0.006 s
% 0.13/0.38  # Total time               : 0.036 s
% 0.13/0.38  # Maximum resident set size: 1584 pages
%------------------------------------------------------------------------------
