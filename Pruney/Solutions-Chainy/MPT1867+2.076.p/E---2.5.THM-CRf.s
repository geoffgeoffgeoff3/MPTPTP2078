%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:19:58 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   73 ( 131 expanded)
%              Number of clauses        :   41 (  57 expanded)
%              Number of leaves         :   16 (  33 expanded)
%              Depth                    :   13
%              Number of atoms          :  182 ( 407 expanded)
%              Number of equality atoms :   30 (  44 expanded)
%              Maximal formula depth    :   16 (   3 average)
%              Maximal clause size      :   32 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(dt_k9_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(X1))
     => m1_subset_1(k9_subset_1(X1,X2,X3),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k9_subset_1)).

fof(t4_subset_1,axiom,(
    ! [X1] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_subset_1)).

fof(t5_subset,axiom,(
    ! [X1,X2,X3] :
      ~ ( r2_hidden(X1,X2)
        & m1_subset_1(X2,k1_zfmisc_1(X3))
        & v1_xboole_0(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t5_subset)).

fof(d1_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
    <=> ! [X2] : ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_xboole_0)).

fof(redefinition_k9_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(X1))
     => k9_subset_1(X1,X2,X3) = k3_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k9_subset_1)).

fof(t35_tex_2,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( ( v1_xboole_0(X2)
            & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
         => v2_tex_2(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t35_tex_2)).

fof(l13_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l13_xboole_0)).

fof(fc1_xboole_0,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(d6_tex_2,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v2_tex_2(X2,X1)
          <=> ! [X3] :
                ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
               => ~ ( r1_tarski(X3,X2)
                    & ! [X4] :
                        ( m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
                       => ~ ( v4_pre_topc(X4,X1)
                            & k9_subset_1(u1_struct_0(X1),X2,X4) = X3 ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d6_tex_2)).

fof(commutativity_k9_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(X1))
     => k9_subset_1(X1,X2,X3) = k9_subset_1(X1,X3,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k9_subset_1)).

fof(dt_l1_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => l1_struct_0(X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_l1_pre_topc)).

fof(t3_xboole_1,axiom,(
    ! [X1] :
      ( r1_tarski(X1,k1_xboole_0)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_xboole_1)).

fof(d3_struct_0,axiom,(
    ! [X1] :
      ( l1_struct_0(X1)
     => k2_struct_0(X1) = u1_struct_0(X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_struct_0)).

fof(dt_k2_subset_1,axiom,(
    ! [X1] : m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_subset_1)).

fof(d4_subset_1,axiom,(
    ! [X1] : k2_subset_1(X1) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_subset_1)).

fof(fc4_pre_topc,axiom,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => v4_pre_topc(k2_struct_0(X1),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc4_pre_topc)).

fof(c_0_16,plain,(
    ! [X16,X17,X18] :
      ( ~ m1_subset_1(X18,k1_zfmisc_1(X16))
      | m1_subset_1(k9_subset_1(X16,X17,X18),k1_zfmisc_1(X16)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k9_subset_1])])).

fof(c_0_17,plain,(
    ! [X22] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X22)) ),
    inference(variable_rename,[status(thm)],[t4_subset_1])).

fof(c_0_18,plain,(
    ! [X26,X27,X28] :
      ( ~ r2_hidden(X26,X27)
      | ~ m1_subset_1(X27,k1_zfmisc_1(X28))
      | ~ v1_xboole_0(X28) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t5_subset])])).

cnf(c_0_19,plain,
    ( m1_subset_1(k9_subset_1(X2,X3,X1),k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_20,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_21,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3))
    | ~ v1_xboole_0(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_22,plain,
    ( m1_subset_1(k9_subset_1(X1,X2,k1_xboole_0),k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_19,c_0_20])).

fof(c_0_23,plain,(
    ! [X5,X6,X7] :
      ( ( ~ v1_xboole_0(X5)
        | ~ r2_hidden(X6,X5) )
      & ( r2_hidden(esk1_1(X7),X7)
        | v1_xboole_0(X7) ) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).

fof(c_0_24,plain,(
    ! [X19,X20,X21] :
      ( ~ m1_subset_1(X21,k1_zfmisc_1(X19))
      | k9_subset_1(X19,X20,X21) = k3_xboole_0(X20,X21) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k9_subset_1])])).

cnf(c_0_25,plain,
    ( ~ r2_hidden(X1,k9_subset_1(X2,X3,k1_xboole_0))
    | ~ v1_xboole_0(X2) ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_26,plain,
    ( r2_hidden(esk1_1(X1),X1)
    | v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_27,plain,
    ( k9_subset_1(X2,X3,X1) = k3_xboole_0(X3,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_28,plain,
    ( v1_xboole_0(k9_subset_1(X1,X2,k1_xboole_0))
    | ~ v1_xboole_0(X1) ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_29,plain,
    ( k9_subset_1(X1,X2,k1_xboole_0) = k3_xboole_0(X2,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_27,c_0_20])).

fof(c_0_30,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & v2_pre_topc(X1)
          & l1_pre_topc(X1) )
       => ! [X2] :
            ( ( v1_xboole_0(X2)
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
           => v2_tex_2(X2,X1) ) ) ),
    inference(assume_negation,[status(cth)],[t35_tex_2])).

fof(c_0_31,plain,(
    ! [X9] :
      ( ~ v1_xboole_0(X9)
      | X9 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).

cnf(c_0_32,plain,
    ( v1_xboole_0(k3_xboole_0(X1,k1_xboole_0))
    | ~ v1_xboole_0(X2) ),
    inference(spm,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_33,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[fc1_xboole_0])).

fof(c_0_34,negated_conjecture,
    ( ~ v2_struct_0(esk4_0)
    & v2_pre_topc(esk4_0)
    & l1_pre_topc(esk4_0)
    & v1_xboole_0(esk5_0)
    & m1_subset_1(esk5_0,k1_zfmisc_1(u1_struct_0(esk4_0)))
    & ~ v2_tex_2(esk5_0,esk4_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_30])])])])).

cnf(c_0_35,plain,
    ( X1 = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_36,plain,
    ( v1_xboole_0(k3_xboole_0(X1,k1_xboole_0)) ),
    inference(spm,[status(thm)],[c_0_32,c_0_33])).

fof(c_0_37,plain,(
    ! [X32,X33,X34,X37] :
      ( ( m1_subset_1(esk2_3(X32,X33,X34),k1_zfmisc_1(u1_struct_0(X32)))
        | ~ r1_tarski(X34,X33)
        | ~ m1_subset_1(X34,k1_zfmisc_1(u1_struct_0(X32)))
        | ~ v2_tex_2(X33,X32)
        | ~ m1_subset_1(X33,k1_zfmisc_1(u1_struct_0(X32)))
        | ~ l1_pre_topc(X32) )
      & ( v4_pre_topc(esk2_3(X32,X33,X34),X32)
        | ~ r1_tarski(X34,X33)
        | ~ m1_subset_1(X34,k1_zfmisc_1(u1_struct_0(X32)))
        | ~ v2_tex_2(X33,X32)
        | ~ m1_subset_1(X33,k1_zfmisc_1(u1_struct_0(X32)))
        | ~ l1_pre_topc(X32) )
      & ( k9_subset_1(u1_struct_0(X32),X33,esk2_3(X32,X33,X34)) = X34
        | ~ r1_tarski(X34,X33)
        | ~ m1_subset_1(X34,k1_zfmisc_1(u1_struct_0(X32)))
        | ~ v2_tex_2(X33,X32)
        | ~ m1_subset_1(X33,k1_zfmisc_1(u1_struct_0(X32)))
        | ~ l1_pre_topc(X32) )
      & ( m1_subset_1(esk3_2(X32,X33),k1_zfmisc_1(u1_struct_0(X32)))
        | v2_tex_2(X33,X32)
        | ~ m1_subset_1(X33,k1_zfmisc_1(u1_struct_0(X32)))
        | ~ l1_pre_topc(X32) )
      & ( r1_tarski(esk3_2(X32,X33),X33)
        | v2_tex_2(X33,X32)
        | ~ m1_subset_1(X33,k1_zfmisc_1(u1_struct_0(X32)))
        | ~ l1_pre_topc(X32) )
      & ( ~ m1_subset_1(X37,k1_zfmisc_1(u1_struct_0(X32)))
        | ~ v4_pre_topc(X37,X32)
        | k9_subset_1(u1_struct_0(X32),X33,X37) != esk3_2(X32,X33)
        | v2_tex_2(X33,X32)
        | ~ m1_subset_1(X33,k1_zfmisc_1(u1_struct_0(X32)))
        | ~ l1_pre_topc(X32) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d6_tex_2])])])])])).

cnf(c_0_38,negated_conjecture,
    ( v1_xboole_0(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

fof(c_0_39,plain,(
    ! [X11,X12,X13] :
      ( ~ m1_subset_1(X13,k1_zfmisc_1(X11))
      | k9_subset_1(X11,X12,X13) = k9_subset_1(X11,X13,X12) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[commutativity_k9_subset_1])])).

cnf(c_0_40,plain,
    ( k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_41,plain,
    ( r1_tarski(esk3_2(X1,X2),X2)
    | v2_tex_2(X2,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_42,negated_conjecture,
    ( ~ v2_tex_2(esk5_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_43,negated_conjecture,
    ( esk5_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_35,c_0_38])).

fof(c_0_44,plain,(
    ! [X30] :
      ( ~ l1_pre_topc(X30)
      | l1_struct_0(X30) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_pre_topc])])).

cnf(c_0_45,plain,
    ( k9_subset_1(X2,X3,X1) = k9_subset_1(X2,X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_46,plain,
    ( k9_subset_1(X1,X2,k1_xboole_0) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_29,c_0_40])).

fof(c_0_47,plain,(
    ! [X10] :
      ( ~ r1_tarski(X10,k1_xboole_0)
      | X10 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_xboole_1])])).

cnf(c_0_48,plain,
    ( v2_tex_2(k1_xboole_0,X1)
    | r1_tarski(esk3_2(X1,k1_xboole_0),k1_xboole_0)
    | ~ l1_pre_topc(X1) ),
    inference(spm,[status(thm)],[c_0_41,c_0_20])).

cnf(c_0_49,negated_conjecture,
    ( l1_pre_topc(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_50,negated_conjecture,
    ( ~ v2_tex_2(k1_xboole_0,esk4_0) ),
    inference(rw,[status(thm)],[c_0_42,c_0_43])).

fof(c_0_51,plain,(
    ! [X29] :
      ( ~ l1_struct_0(X29)
      | k2_struct_0(X29) = u1_struct_0(X29) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).

cnf(c_0_52,plain,
    ( l1_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_53,plain,
    ( v2_tex_2(X3,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ v4_pre_topc(X1,X2)
    | k9_subset_1(u1_struct_0(X2),X3,X1) != esk3_2(X2,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_54,plain,
    ( k9_subset_1(X1,k1_xboole_0,X2) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_46]),c_0_20])])).

cnf(c_0_55,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_56,negated_conjecture,
    ( r1_tarski(esk3_2(esk4_0,k1_xboole_0),k1_xboole_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_49]),c_0_50])).

fof(c_0_57,plain,(
    ! [X15] : m1_subset_1(k2_subset_1(X15),k1_zfmisc_1(X15)) ),
    inference(variable_rename,[status(thm)],[dt_k2_subset_1])).

fof(c_0_58,plain,(
    ! [X14] : k2_subset_1(X14) = X14 ),
    inference(variable_rename,[status(thm)],[d4_subset_1])).

fof(c_0_59,plain,(
    ! [X31] :
      ( ~ v2_pre_topc(X31)
      | ~ l1_pre_topc(X31)
      | v4_pre_topc(k2_struct_0(X31),X31) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc4_pre_topc])])).

cnf(c_0_60,plain,
    ( k2_struct_0(X1) = u1_struct_0(X1)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

cnf(c_0_61,negated_conjecture,
    ( l1_struct_0(esk4_0) ),
    inference(spm,[status(thm)],[c_0_52,c_0_49])).

cnf(c_0_62,plain,
    ( v2_tex_2(k1_xboole_0,X1)
    | esk3_2(X1,k1_xboole_0) != k1_xboole_0
    | ~ v4_pre_topc(X2,X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_54]),c_0_20])])).

cnf(c_0_63,negated_conjecture,
    ( esk3_2(esk4_0,k1_xboole_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_55,c_0_56])).

cnf(c_0_64,plain,
    ( m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_57])).

cnf(c_0_65,plain,
    ( k2_subset_1(X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_66,plain,
    ( v4_pre_topc(k2_struct_0(X1),X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_59])).

cnf(c_0_67,negated_conjecture,
    ( v2_pre_topc(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_68,negated_conjecture,
    ( k2_struct_0(esk4_0) = u1_struct_0(esk4_0) ),
    inference(spm,[status(thm)],[c_0_60,c_0_61])).

cnf(c_0_69,negated_conjecture,
    ( ~ v4_pre_topc(X1,esk4_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk4_0))) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62,c_0_63]),c_0_49])]),c_0_50])).

cnf(c_0_70,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X1)) ),
    inference(rw,[status(thm)],[c_0_64,c_0_65])).

cnf(c_0_71,negated_conjecture,
    ( v4_pre_topc(u1_struct_0(esk4_0),esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66,c_0_67]),c_0_68]),c_0_49])])).

cnf(c_0_72,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_69,c_0_70]),c_0_71])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n020.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 12:16:22 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S049N
% 0.12/0.38  # and selection function PSelectComplexPreferEQ.
% 0.12/0.38  #
% 0.12/0.38  # Preprocessing time       : 0.028 s
% 0.12/0.38  # Presaturation interreduction done
% 0.12/0.38  
% 0.12/0.38  # Proof found!
% 0.12/0.38  # SZS status Theorem
% 0.12/0.38  # SZS output start CNFRefutation
% 0.12/0.38  fof(dt_k9_subset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(X1))=>m1_subset_1(k9_subset_1(X1,X2,X3),k1_zfmisc_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k9_subset_1)).
% 0.12/0.38  fof(t4_subset_1, axiom, ![X1]:m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t4_subset_1)).
% 0.12/0.38  fof(t5_subset, axiom, ![X1, X2, X3]:~(((r2_hidden(X1,X2)&m1_subset_1(X2,k1_zfmisc_1(X3)))&v1_xboole_0(X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t5_subset)).
% 0.12/0.38  fof(d1_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)<=>![X2]:~(r2_hidden(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_xboole_0)).
% 0.12/0.38  fof(redefinition_k9_subset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(X1))=>k9_subset_1(X1,X2,X3)=k3_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k9_subset_1)).
% 0.12/0.38  fof(t35_tex_2, conjecture, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:((v1_xboole_0(X2)&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>v2_tex_2(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t35_tex_2)).
% 0.12/0.38  fof(l13_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)=>X1=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l13_xboole_0)).
% 0.12/0.38  fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc1_xboole_0)).
% 0.12/0.38  fof(d6_tex_2, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v2_tex_2(X2,X1)<=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>~((r1_tarski(X3,X2)&![X4]:(m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))=>~((v4_pre_topc(X4,X1)&k9_subset_1(u1_struct_0(X1),X2,X4)=X3))))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d6_tex_2)).
% 0.12/0.38  fof(commutativity_k9_subset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(X1))=>k9_subset_1(X1,X2,X3)=k9_subset_1(X1,X3,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k9_subset_1)).
% 0.12/0.38  fof(dt_l1_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>l1_struct_0(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_l1_pre_topc)).
% 0.12/0.38  fof(t3_xboole_1, axiom, ![X1]:(r1_tarski(X1,k1_xboole_0)=>X1=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_xboole_1)).
% 0.12/0.38  fof(d3_struct_0, axiom, ![X1]:(l1_struct_0(X1)=>k2_struct_0(X1)=u1_struct_0(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_struct_0)).
% 0.12/0.38  fof(dt_k2_subset_1, axiom, ![X1]:m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k2_subset_1)).
% 0.12/0.38  fof(d4_subset_1, axiom, ![X1]:k2_subset_1(X1)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', d4_subset_1)).
% 0.12/0.38  fof(fc4_pre_topc, axiom, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>v4_pre_topc(k2_struct_0(X1),X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc4_pre_topc)).
% 0.12/0.38  fof(c_0_16, plain, ![X16, X17, X18]:(~m1_subset_1(X18,k1_zfmisc_1(X16))|m1_subset_1(k9_subset_1(X16,X17,X18),k1_zfmisc_1(X16))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k9_subset_1])])).
% 0.12/0.38  fof(c_0_17, plain, ![X22]:m1_subset_1(k1_xboole_0,k1_zfmisc_1(X22)), inference(variable_rename,[status(thm)],[t4_subset_1])).
% 0.12/0.38  fof(c_0_18, plain, ![X26, X27, X28]:(~r2_hidden(X26,X27)|~m1_subset_1(X27,k1_zfmisc_1(X28))|~v1_xboole_0(X28)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t5_subset])])).
% 0.12/0.38  cnf(c_0_19, plain, (m1_subset_1(k9_subset_1(X2,X3,X1),k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.12/0.38  cnf(c_0_20, plain, (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.12/0.38  cnf(c_0_21, plain, (~r2_hidden(X1,X2)|~m1_subset_1(X2,k1_zfmisc_1(X3))|~v1_xboole_0(X3)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.12/0.38  cnf(c_0_22, plain, (m1_subset_1(k9_subset_1(X1,X2,k1_xboole_0),k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_19, c_0_20])).
% 0.12/0.38  fof(c_0_23, plain, ![X5, X6, X7]:((~v1_xboole_0(X5)|~r2_hidden(X6,X5))&(r2_hidden(esk1_1(X7),X7)|v1_xboole_0(X7))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).
% 0.12/0.38  fof(c_0_24, plain, ![X19, X20, X21]:(~m1_subset_1(X21,k1_zfmisc_1(X19))|k9_subset_1(X19,X20,X21)=k3_xboole_0(X20,X21)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k9_subset_1])])).
% 0.12/0.38  cnf(c_0_25, plain, (~r2_hidden(X1,k9_subset_1(X2,X3,k1_xboole_0))|~v1_xboole_0(X2)), inference(spm,[status(thm)],[c_0_21, c_0_22])).
% 0.12/0.38  cnf(c_0_26, plain, (r2_hidden(esk1_1(X1),X1)|v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.12/0.38  cnf(c_0_27, plain, (k9_subset_1(X2,X3,X1)=k3_xboole_0(X3,X1)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.12/0.38  cnf(c_0_28, plain, (v1_xboole_0(k9_subset_1(X1,X2,k1_xboole_0))|~v1_xboole_0(X1)), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.12/0.38  cnf(c_0_29, plain, (k9_subset_1(X1,X2,k1_xboole_0)=k3_xboole_0(X2,k1_xboole_0)), inference(spm,[status(thm)],[c_0_27, c_0_20])).
% 0.12/0.38  fof(c_0_30, negated_conjecture, ~(![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:((v1_xboole_0(X2)&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>v2_tex_2(X2,X1)))), inference(assume_negation,[status(cth)],[t35_tex_2])).
% 0.12/0.38  fof(c_0_31, plain, ![X9]:(~v1_xboole_0(X9)|X9=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).
% 0.12/0.38  cnf(c_0_32, plain, (v1_xboole_0(k3_xboole_0(X1,k1_xboole_0))|~v1_xboole_0(X2)), inference(spm,[status(thm)],[c_0_28, c_0_29])).
% 0.12/0.38  cnf(c_0_33, plain, (v1_xboole_0(k1_xboole_0)), inference(split_conjunct,[status(thm)],[fc1_xboole_0])).
% 0.12/0.38  fof(c_0_34, negated_conjecture, (((~v2_struct_0(esk4_0)&v2_pre_topc(esk4_0))&l1_pre_topc(esk4_0))&((v1_xboole_0(esk5_0)&m1_subset_1(esk5_0,k1_zfmisc_1(u1_struct_0(esk4_0))))&~v2_tex_2(esk5_0,esk4_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_30])])])])).
% 0.12/0.38  cnf(c_0_35, plain, (X1=k1_xboole_0|~v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.12/0.38  cnf(c_0_36, plain, (v1_xboole_0(k3_xboole_0(X1,k1_xboole_0))), inference(spm,[status(thm)],[c_0_32, c_0_33])).
% 0.12/0.38  fof(c_0_37, plain, ![X32, X33, X34, X37]:(((m1_subset_1(esk2_3(X32,X33,X34),k1_zfmisc_1(u1_struct_0(X32)))|~r1_tarski(X34,X33)|~m1_subset_1(X34,k1_zfmisc_1(u1_struct_0(X32)))|~v2_tex_2(X33,X32)|~m1_subset_1(X33,k1_zfmisc_1(u1_struct_0(X32)))|~l1_pre_topc(X32))&((v4_pre_topc(esk2_3(X32,X33,X34),X32)|~r1_tarski(X34,X33)|~m1_subset_1(X34,k1_zfmisc_1(u1_struct_0(X32)))|~v2_tex_2(X33,X32)|~m1_subset_1(X33,k1_zfmisc_1(u1_struct_0(X32)))|~l1_pre_topc(X32))&(k9_subset_1(u1_struct_0(X32),X33,esk2_3(X32,X33,X34))=X34|~r1_tarski(X34,X33)|~m1_subset_1(X34,k1_zfmisc_1(u1_struct_0(X32)))|~v2_tex_2(X33,X32)|~m1_subset_1(X33,k1_zfmisc_1(u1_struct_0(X32)))|~l1_pre_topc(X32))))&((m1_subset_1(esk3_2(X32,X33),k1_zfmisc_1(u1_struct_0(X32)))|v2_tex_2(X33,X32)|~m1_subset_1(X33,k1_zfmisc_1(u1_struct_0(X32)))|~l1_pre_topc(X32))&((r1_tarski(esk3_2(X32,X33),X33)|v2_tex_2(X33,X32)|~m1_subset_1(X33,k1_zfmisc_1(u1_struct_0(X32)))|~l1_pre_topc(X32))&(~m1_subset_1(X37,k1_zfmisc_1(u1_struct_0(X32)))|(~v4_pre_topc(X37,X32)|k9_subset_1(u1_struct_0(X32),X33,X37)!=esk3_2(X32,X33))|v2_tex_2(X33,X32)|~m1_subset_1(X33,k1_zfmisc_1(u1_struct_0(X32)))|~l1_pre_topc(X32))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d6_tex_2])])])])])).
% 0.12/0.38  cnf(c_0_38, negated_conjecture, (v1_xboole_0(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.12/0.38  fof(c_0_39, plain, ![X11, X12, X13]:(~m1_subset_1(X13,k1_zfmisc_1(X11))|k9_subset_1(X11,X12,X13)=k9_subset_1(X11,X13,X12)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[commutativity_k9_subset_1])])).
% 0.12/0.38  cnf(c_0_40, plain, (k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 0.12/0.38  cnf(c_0_41, plain, (r1_tarski(esk3_2(X1,X2),X2)|v2_tex_2(X2,X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.12/0.38  cnf(c_0_42, negated_conjecture, (~v2_tex_2(esk5_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.12/0.38  cnf(c_0_43, negated_conjecture, (esk5_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_35, c_0_38])).
% 0.12/0.38  fof(c_0_44, plain, ![X30]:(~l1_pre_topc(X30)|l1_struct_0(X30)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_pre_topc])])).
% 0.12/0.38  cnf(c_0_45, plain, (k9_subset_1(X2,X3,X1)=k9_subset_1(X2,X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.12/0.38  cnf(c_0_46, plain, (k9_subset_1(X1,X2,k1_xboole_0)=k1_xboole_0), inference(rw,[status(thm)],[c_0_29, c_0_40])).
% 0.12/0.38  fof(c_0_47, plain, ![X10]:(~r1_tarski(X10,k1_xboole_0)|X10=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_xboole_1])])).
% 0.12/0.38  cnf(c_0_48, plain, (v2_tex_2(k1_xboole_0,X1)|r1_tarski(esk3_2(X1,k1_xboole_0),k1_xboole_0)|~l1_pre_topc(X1)), inference(spm,[status(thm)],[c_0_41, c_0_20])).
% 0.12/0.38  cnf(c_0_49, negated_conjecture, (l1_pre_topc(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.12/0.38  cnf(c_0_50, negated_conjecture, (~v2_tex_2(k1_xboole_0,esk4_0)), inference(rw,[status(thm)],[c_0_42, c_0_43])).
% 0.12/0.38  fof(c_0_51, plain, ![X29]:(~l1_struct_0(X29)|k2_struct_0(X29)=u1_struct_0(X29)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).
% 0.12/0.38  cnf(c_0_52, plain, (l1_struct_0(X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.12/0.38  cnf(c_0_53, plain, (v2_tex_2(X3,X2)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))|~v4_pre_topc(X1,X2)|k9_subset_1(u1_struct_0(X2),X3,X1)!=esk3_2(X2,X3)|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.12/0.38  cnf(c_0_54, plain, (k9_subset_1(X1,k1_xboole_0,X2)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_46]), c_0_20])])).
% 0.12/0.38  cnf(c_0_55, plain, (X1=k1_xboole_0|~r1_tarski(X1,k1_xboole_0)), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.12/0.38  cnf(c_0_56, negated_conjecture, (r1_tarski(esk3_2(esk4_0,k1_xboole_0),k1_xboole_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_49]), c_0_50])).
% 0.12/0.38  fof(c_0_57, plain, ![X15]:m1_subset_1(k2_subset_1(X15),k1_zfmisc_1(X15)), inference(variable_rename,[status(thm)],[dt_k2_subset_1])).
% 0.12/0.38  fof(c_0_58, plain, ![X14]:k2_subset_1(X14)=X14, inference(variable_rename,[status(thm)],[d4_subset_1])).
% 0.12/0.38  fof(c_0_59, plain, ![X31]:(~v2_pre_topc(X31)|~l1_pre_topc(X31)|v4_pre_topc(k2_struct_0(X31),X31)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc4_pre_topc])])).
% 0.12/0.38  cnf(c_0_60, plain, (k2_struct_0(X1)=u1_struct_0(X1)|~l1_struct_0(X1)), inference(split_conjunct,[status(thm)],[c_0_51])).
% 0.12/0.38  cnf(c_0_61, negated_conjecture, (l1_struct_0(esk4_0)), inference(spm,[status(thm)],[c_0_52, c_0_49])).
% 0.12/0.38  cnf(c_0_62, plain, (v2_tex_2(k1_xboole_0,X1)|esk3_2(X1,k1_xboole_0)!=k1_xboole_0|~v4_pre_topc(X2,X1)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_54]), c_0_20])])).
% 0.12/0.38  cnf(c_0_63, negated_conjecture, (esk3_2(esk4_0,k1_xboole_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_55, c_0_56])).
% 0.12/0.38  cnf(c_0_64, plain, (m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_57])).
% 0.12/0.38  cnf(c_0_65, plain, (k2_subset_1(X1)=X1), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.12/0.38  cnf(c_0_66, plain, (v4_pre_topc(k2_struct_0(X1),X1)|~v2_pre_topc(X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_59])).
% 0.12/0.38  cnf(c_0_67, negated_conjecture, (v2_pre_topc(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.12/0.38  cnf(c_0_68, negated_conjecture, (k2_struct_0(esk4_0)=u1_struct_0(esk4_0)), inference(spm,[status(thm)],[c_0_60, c_0_61])).
% 0.12/0.38  cnf(c_0_69, negated_conjecture, (~v4_pre_topc(X1,esk4_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk4_0)))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62, c_0_63]), c_0_49])]), c_0_50])).
% 0.12/0.38  cnf(c_0_70, plain, (m1_subset_1(X1,k1_zfmisc_1(X1))), inference(rw,[status(thm)],[c_0_64, c_0_65])).
% 0.12/0.38  cnf(c_0_71, negated_conjecture, (v4_pre_topc(u1_struct_0(esk4_0),esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66, c_0_67]), c_0_68]), c_0_49])])).
% 0.12/0.38  cnf(c_0_72, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_69, c_0_70]), c_0_71])]), ['proof']).
% 0.12/0.38  # SZS output end CNFRefutation
% 0.12/0.38  # Proof object total steps             : 73
% 0.12/0.38  # Proof object clause steps            : 41
% 0.12/0.38  # Proof object formula steps           : 32
% 0.12/0.38  # Proof object conjectures             : 16
% 0.12/0.38  # Proof object clause conjectures      : 13
% 0.12/0.38  # Proof object formula conjectures     : 3
% 0.12/0.38  # Proof object initial clauses used    : 20
% 0.12/0.38  # Proof object initial formulas used   : 16
% 0.12/0.38  # Proof object generating inferences   : 18
% 0.12/0.38  # Proof object simplifying inferences  : 16
% 0.12/0.38  # Training examples: 0 positive, 0 negative
% 0.12/0.38  # Parsed axioms                        : 17
% 0.12/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.38  # Initial clauses                      : 28
% 0.12/0.38  # Removed in clause preprocessing      : 1
% 0.12/0.38  # Initial clauses in saturation        : 27
% 0.12/0.38  # Processed clauses                    : 176
% 0.12/0.38  # ...of these trivial                  : 8
% 0.12/0.38  # ...subsumed                          : 48
% 0.12/0.38  # ...remaining for further processing  : 120
% 0.12/0.38  # Other redundant clauses eliminated   : 0
% 0.12/0.38  # Clauses deleted for lack of memory   : 0
% 0.12/0.38  # Backward-subsumed                    : 10
% 0.12/0.38  # Backward-rewritten                   : 19
% 0.12/0.38  # Generated clauses                    : 279
% 0.12/0.38  # ...of the previous two non-trivial   : 217
% 0.12/0.38  # Contextual simplify-reflections      : 1
% 0.12/0.38  # Paramodulations                      : 279
% 0.12/0.38  # Factorizations                       : 0
% 0.12/0.38  # Equation resolutions                 : 0
% 0.12/0.38  # Propositional unsat checks           : 0
% 0.12/0.38  #    Propositional check models        : 0
% 0.12/0.38  #    Propositional check unsatisfiable : 0
% 0.12/0.38  #    Propositional clauses             : 0
% 0.12/0.38  #    Propositional clauses after purity: 0
% 0.12/0.38  #    Propositional unsat core size     : 0
% 0.12/0.38  #    Propositional preprocessing time  : 0.000
% 0.12/0.38  #    Propositional encoding time       : 0.000
% 0.12/0.38  #    Propositional solver time         : 0.000
% 0.12/0.38  #    Success case prop preproc time    : 0.000
% 0.12/0.38  #    Success case prop encoding time   : 0.000
% 0.12/0.38  #    Success case prop solver time     : 0.000
% 0.12/0.38  # Current number of processed clauses  : 64
% 0.12/0.38  #    Positive orientable unit clauses  : 16
% 0.12/0.38  #    Positive unorientable unit clauses: 1
% 0.12/0.38  #    Negative unit clauses             : 4
% 0.12/0.38  #    Non-unit-clauses                  : 43
% 0.12/0.38  # Current number of unprocessed clauses: 64
% 0.12/0.38  # ...number of literals in the above   : 150
% 0.12/0.38  # Current number of archived formulas  : 0
% 0.12/0.38  # Current number of archived clauses   : 57
% 0.12/0.38  # Clause-clause subsumption calls (NU) : 833
% 0.12/0.38  # Rec. Clause-clause subsumption calls : 270
% 0.12/0.38  # Non-unit clause-clause subsumptions  : 19
% 0.12/0.38  # Unit Clause-clause subsumption calls : 67
% 0.12/0.38  # Rewrite failures with RHS unbound    : 9
% 0.12/0.38  # BW rewrite match attempts            : 50
% 0.12/0.38  # BW rewrite match successes           : 22
% 0.12/0.38  # Condensation attempts                : 0
% 0.12/0.38  # Condensation successes               : 0
% 0.12/0.38  # Termbank termtop insertions          : 5244
% 0.12/0.38  
% 0.12/0.38  # -------------------------------------------------
% 0.12/0.38  # User time                : 0.035 s
% 0.12/0.38  # System time              : 0.005 s
% 0.12/0.38  # Total time               : 0.040 s
% 0.12/0.38  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
