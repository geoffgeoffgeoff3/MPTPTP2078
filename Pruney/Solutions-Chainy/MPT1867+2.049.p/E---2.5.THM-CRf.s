%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:19:54 EST 2020

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   60 ( 236 expanded)
%              Number of clauses        :   36 ( 102 expanded)
%              Number of leaves         :   12 (  59 expanded)
%              Depth                    :   10
%              Number of atoms          :  164 ( 785 expanded)
%              Number of equality atoms :   34 ( 116 expanded)
%              Maximal formula depth    :   16 (   3 average)
%              Maximal clause size      :   32 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
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

fof(t2_boole,axiom,(
    ! [X1] : k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_boole)).

fof(t48_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).

fof(redefinition_k9_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(X1))
     => k9_subset_1(X1,X2,X3) = k3_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k9_subset_1)).

fof(t4_subset_1,axiom,(
    ! [X1] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_subset_1)).

fof(t3_boole,axiom,(
    ! [X1] : k4_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_boole)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t36_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k4_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_xboole_1)).

fof(cc2_pre_topc,axiom,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v1_xboole_0(X2)
           => v4_pre_topc(X2,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_pre_topc)).

fof(fc1_xboole_0,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(c_0_12,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & v2_pre_topc(X1)
          & l1_pre_topc(X1) )
       => ! [X2] :
            ( ( v1_xboole_0(X2)
              & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
           => v2_tex_2(X2,X1) ) ) ),
    inference(assume_negation,[status(cth)],[t35_tex_2])).

fof(c_0_13,plain,(
    ! [X5] :
      ( ~ v1_xboole_0(X5)
      | X5 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).

fof(c_0_14,negated_conjecture,
    ( ~ v2_struct_0(esk3_0)
    & v2_pre_topc(esk3_0)
    & l1_pre_topc(esk3_0)
    & v1_xboole_0(esk4_0)
    & m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0)))
    & ~ v2_tex_2(esk4_0,esk3_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_12])])])])).

fof(c_0_15,plain,(
    ! [X23,X24,X25,X28] :
      ( ( m1_subset_1(esk1_3(X23,X24,X25),k1_zfmisc_1(u1_struct_0(X23)))
        | ~ r1_tarski(X25,X24)
        | ~ m1_subset_1(X25,k1_zfmisc_1(u1_struct_0(X23)))
        | ~ v2_tex_2(X24,X23)
        | ~ m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))
        | ~ l1_pre_topc(X23) )
      & ( v4_pre_topc(esk1_3(X23,X24,X25),X23)
        | ~ r1_tarski(X25,X24)
        | ~ m1_subset_1(X25,k1_zfmisc_1(u1_struct_0(X23)))
        | ~ v2_tex_2(X24,X23)
        | ~ m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))
        | ~ l1_pre_topc(X23) )
      & ( k9_subset_1(u1_struct_0(X23),X24,esk1_3(X23,X24,X25)) = X25
        | ~ r1_tarski(X25,X24)
        | ~ m1_subset_1(X25,k1_zfmisc_1(u1_struct_0(X23)))
        | ~ v2_tex_2(X24,X23)
        | ~ m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))
        | ~ l1_pre_topc(X23) )
      & ( m1_subset_1(esk2_2(X23,X24),k1_zfmisc_1(u1_struct_0(X23)))
        | v2_tex_2(X24,X23)
        | ~ m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))
        | ~ l1_pre_topc(X23) )
      & ( r1_tarski(esk2_2(X23,X24),X24)
        | v2_tex_2(X24,X23)
        | ~ m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))
        | ~ l1_pre_topc(X23) )
      & ( ~ m1_subset_1(X28,k1_zfmisc_1(u1_struct_0(X23)))
        | ~ v4_pre_topc(X28,X23)
        | k9_subset_1(u1_struct_0(X23),X24,X28) != esk2_2(X23,X24)
        | v2_tex_2(X24,X23)
        | ~ m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))
        | ~ l1_pre_topc(X23) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d6_tex_2])])])])])).

cnf(c_0_16,plain,
    ( X1 = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_17,negated_conjecture,
    ( v1_xboole_0(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_18,plain,(
    ! [X8] : k3_xboole_0(X8,k1_xboole_0) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t2_boole])).

fof(c_0_19,plain,(
    ! [X12,X13] : k4_xboole_0(X12,k4_xboole_0(X12,X13)) = k3_xboole_0(X12,X13) ),
    inference(variable_rename,[status(thm)],[t48_xboole_1])).

fof(c_0_20,plain,(
    ! [X14,X15,X16] :
      ( ~ m1_subset_1(X16,k1_zfmisc_1(X14))
      | k9_subset_1(X14,X15,X16) = k3_xboole_0(X15,X16) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k9_subset_1])])).

cnf(c_0_21,plain,
    ( m1_subset_1(esk2_2(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))
    | v2_tex_2(X2,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_22,negated_conjecture,
    ( l1_pre_topc(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_23,plain,(
    ! [X17] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X17)) ),
    inference(variable_rename,[status(thm)],[t4_subset_1])).

cnf(c_0_24,negated_conjecture,
    ( ~ v2_tex_2(esk4_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_25,negated_conjecture,
    ( esk4_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_26,plain,
    ( k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_27,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

fof(c_0_28,plain,(
    ! [X11] : k4_xboole_0(X11,k1_xboole_0) = X11 ),
    inference(variable_rename,[status(thm)],[t3_boole])).

cnf(c_0_29,plain,
    ( k9_subset_1(X2,X3,X1) = k3_xboole_0(X3,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_30,negated_conjecture,
    ( v2_tex_2(X1,esk3_0)
    | m1_subset_1(esk2_2(esk3_0,X1),k1_zfmisc_1(u1_struct_0(esk3_0)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_31,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_32,negated_conjecture,
    ( ~ v2_tex_2(k1_xboole_0,esk3_0) ),
    inference(rw,[status(thm)],[c_0_24,c_0_25])).

fof(c_0_33,plain,(
    ! [X6,X7] :
      ( ( r1_tarski(X6,X7)
        | X6 != X7 )
      & ( r1_tarski(X7,X6)
        | X6 != X7 )
      & ( ~ r1_tarski(X6,X7)
        | ~ r1_tarski(X7,X6)
        | X6 = X7 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

fof(c_0_34,plain,(
    ! [X9,X10] : r1_tarski(k4_xboole_0(X9,X10),X9) ),
    inference(variable_rename,[status(thm)],[t36_xboole_1])).

cnf(c_0_35,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,k1_xboole_0)) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_36,plain,
    ( k4_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_37,plain,
    ( k9_subset_1(X2,X3,X1) = k4_xboole_0(X3,k4_xboole_0(X3,X1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[c_0_29,c_0_27])).

cnf(c_0_38,negated_conjecture,
    ( m1_subset_1(esk2_2(esk3_0,k1_xboole_0),k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_31]),c_0_32])).

cnf(c_0_39,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_40,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_41,plain,
    ( k4_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_42,plain,
    ( r1_tarski(esk2_2(X1,X2),X2)
    | v2_tex_2(X2,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_43,plain,(
    ! [X21,X22] :
      ( ~ v2_pre_topc(X21)
      | ~ l1_pre_topc(X21)
      | ~ m1_subset_1(X22,k1_zfmisc_1(u1_struct_0(X21)))
      | ~ v1_xboole_0(X22)
      | v4_pre_topc(X22,X21) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_pre_topc])])])).

cnf(c_0_44,plain,
    ( v2_tex_2(X3,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ v4_pre_topc(X1,X2)
    | k9_subset_1(u1_struct_0(X2),X3,X1) != esk2_2(X2,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_45,negated_conjecture,
    ( k9_subset_1(u1_struct_0(esk3_0),X1,esk2_2(esk3_0,k1_xboole_0)) = k4_xboole_0(X1,k4_xboole_0(X1,esk2_2(esk3_0,k1_xboole_0))) ),
    inference(spm,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_46,plain,
    ( k4_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X1,k4_xboole_0(X1,X2)) ),
    inference(spm,[status(thm)],[c_0_39,c_0_40])).

cnf(c_0_47,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(spm,[status(thm)],[c_0_40,c_0_41])).

cnf(c_0_48,negated_conjecture,
    ( v2_tex_2(X1,esk3_0)
    | r1_tarski(esk2_2(esk3_0,X1),X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(spm,[status(thm)],[c_0_42,c_0_22])).

cnf(c_0_49,plain,
    ( v4_pre_topc(X2,X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v1_xboole_0(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_50,negated_conjecture,
    ( v2_pre_topc(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_51,negated_conjecture,
    ( v2_tex_2(X1,esk3_0)
    | k4_xboole_0(X1,k4_xboole_0(X1,esk2_2(esk3_0,k1_xboole_0))) != esk2_2(esk3_0,X1)
    | ~ v4_pre_topc(esk2_2(esk3_0,k1_xboole_0),esk3_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_45]),c_0_22]),c_0_38])])).

cnf(c_0_52,plain,
    ( k4_xboole_0(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_46,c_0_47])).

cnf(c_0_53,negated_conjecture,
    ( r1_tarski(esk2_2(esk3_0,k1_xboole_0),k1_xboole_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_31]),c_0_32])).

cnf(c_0_54,negated_conjecture,
    ( v4_pre_topc(X1,esk3_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0)))
    | ~ v1_xboole_0(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_22]),c_0_50])])).

cnf(c_0_55,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[fc1_xboole_0])).

cnf(c_0_56,negated_conjecture,
    ( esk2_2(esk3_0,k1_xboole_0) != k1_xboole_0
    | ~ v4_pre_topc(esk2_2(esk3_0,k1_xboole_0),esk3_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_52]),c_0_52]),c_0_31])]),c_0_32])).

cnf(c_0_57,negated_conjecture,
    ( esk2_2(esk3_0,k1_xboole_0) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_53]),c_0_47])])).

cnf(c_0_58,negated_conjecture,
    ( v4_pre_topc(k1_xboole_0,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54,c_0_55]),c_0_31])])).

cnf(c_0_59,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_56,c_0_57]),c_0_57]),c_0_58])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.35  % Computer   : n019.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 18:46:07 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.14/0.38  # AutoSched0-Mode selected heuristic G_E___107_B00_00_F1_PI_AE_Q4_CS_SP_PS_S002A
% 0.14/0.38  # and selection function SelectNegativeLiterals.
% 0.14/0.38  #
% 0.14/0.38  # Preprocessing time       : 0.028 s
% 0.14/0.38  # Presaturation interreduction done
% 0.14/0.38  
% 0.14/0.38  # Proof found!
% 0.14/0.38  # SZS status Theorem
% 0.14/0.38  # SZS output start CNFRefutation
% 0.14/0.38  fof(t35_tex_2, conjecture, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:((v1_xboole_0(X2)&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>v2_tex_2(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t35_tex_2)).
% 0.14/0.38  fof(l13_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)=>X1=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l13_xboole_0)).
% 0.14/0.38  fof(d6_tex_2, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v2_tex_2(X2,X1)<=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>~((r1_tarski(X3,X2)&![X4]:(m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))=>~((v4_pre_topc(X4,X1)&k9_subset_1(u1_struct_0(X1),X2,X4)=X3))))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d6_tex_2)).
% 0.14/0.38  fof(t2_boole, axiom, ![X1]:k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_boole)).
% 0.14/0.38  fof(t48_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t48_xboole_1)).
% 0.14/0.38  fof(redefinition_k9_subset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(X1))=>k9_subset_1(X1,X2,X3)=k3_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k9_subset_1)).
% 0.14/0.38  fof(t4_subset_1, axiom, ![X1]:m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t4_subset_1)).
% 0.14/0.38  fof(t3_boole, axiom, ![X1]:k4_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_boole)).
% 0.14/0.38  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.14/0.38  fof(t36_xboole_1, axiom, ![X1, X2]:r1_tarski(k4_xboole_0(X1,X2),X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t36_xboole_1)).
% 0.14/0.38  fof(cc2_pre_topc, axiom, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v1_xboole_0(X2)=>v4_pre_topc(X2,X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc2_pre_topc)).
% 0.14/0.38  fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc1_xboole_0)).
% 0.14/0.38  fof(c_0_12, negated_conjecture, ~(![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:((v1_xboole_0(X2)&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>v2_tex_2(X2,X1)))), inference(assume_negation,[status(cth)],[t35_tex_2])).
% 0.14/0.38  fof(c_0_13, plain, ![X5]:(~v1_xboole_0(X5)|X5=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).
% 0.14/0.38  fof(c_0_14, negated_conjecture, (((~v2_struct_0(esk3_0)&v2_pre_topc(esk3_0))&l1_pre_topc(esk3_0))&((v1_xboole_0(esk4_0)&m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0))))&~v2_tex_2(esk4_0,esk3_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_12])])])])).
% 0.14/0.38  fof(c_0_15, plain, ![X23, X24, X25, X28]:(((m1_subset_1(esk1_3(X23,X24,X25),k1_zfmisc_1(u1_struct_0(X23)))|~r1_tarski(X25,X24)|~m1_subset_1(X25,k1_zfmisc_1(u1_struct_0(X23)))|~v2_tex_2(X24,X23)|~m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))|~l1_pre_topc(X23))&((v4_pre_topc(esk1_3(X23,X24,X25),X23)|~r1_tarski(X25,X24)|~m1_subset_1(X25,k1_zfmisc_1(u1_struct_0(X23)))|~v2_tex_2(X24,X23)|~m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))|~l1_pre_topc(X23))&(k9_subset_1(u1_struct_0(X23),X24,esk1_3(X23,X24,X25))=X25|~r1_tarski(X25,X24)|~m1_subset_1(X25,k1_zfmisc_1(u1_struct_0(X23)))|~v2_tex_2(X24,X23)|~m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))|~l1_pre_topc(X23))))&((m1_subset_1(esk2_2(X23,X24),k1_zfmisc_1(u1_struct_0(X23)))|v2_tex_2(X24,X23)|~m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))|~l1_pre_topc(X23))&((r1_tarski(esk2_2(X23,X24),X24)|v2_tex_2(X24,X23)|~m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))|~l1_pre_topc(X23))&(~m1_subset_1(X28,k1_zfmisc_1(u1_struct_0(X23)))|(~v4_pre_topc(X28,X23)|k9_subset_1(u1_struct_0(X23),X24,X28)!=esk2_2(X23,X24))|v2_tex_2(X24,X23)|~m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))|~l1_pre_topc(X23))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d6_tex_2])])])])])).
% 0.14/0.38  cnf(c_0_16, plain, (X1=k1_xboole_0|~v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.14/0.38  cnf(c_0_17, negated_conjecture, (v1_xboole_0(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.38  fof(c_0_18, plain, ![X8]:k3_xboole_0(X8,k1_xboole_0)=k1_xboole_0, inference(variable_rename,[status(thm)],[t2_boole])).
% 0.14/0.38  fof(c_0_19, plain, ![X12, X13]:k4_xboole_0(X12,k4_xboole_0(X12,X13))=k3_xboole_0(X12,X13), inference(variable_rename,[status(thm)],[t48_xboole_1])).
% 0.14/0.38  fof(c_0_20, plain, ![X14, X15, X16]:(~m1_subset_1(X16,k1_zfmisc_1(X14))|k9_subset_1(X14,X15,X16)=k3_xboole_0(X15,X16)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k9_subset_1])])).
% 0.14/0.38  cnf(c_0_21, plain, (m1_subset_1(esk2_2(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))|v2_tex_2(X2,X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.38  cnf(c_0_22, negated_conjecture, (l1_pre_topc(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.38  fof(c_0_23, plain, ![X17]:m1_subset_1(k1_xboole_0,k1_zfmisc_1(X17)), inference(variable_rename,[status(thm)],[t4_subset_1])).
% 0.14/0.38  cnf(c_0_24, negated_conjecture, (~v2_tex_2(esk4_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.38  cnf(c_0_25, negated_conjecture, (esk4_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.14/0.38  cnf(c_0_26, plain, (k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.14/0.38  cnf(c_0_27, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.14/0.38  fof(c_0_28, plain, ![X11]:k4_xboole_0(X11,k1_xboole_0)=X11, inference(variable_rename,[status(thm)],[t3_boole])).
% 0.14/0.38  cnf(c_0_29, plain, (k9_subset_1(X2,X3,X1)=k3_xboole_0(X3,X1)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.14/0.38  cnf(c_0_30, negated_conjecture, (v2_tex_2(X1,esk3_0)|m1_subset_1(esk2_2(esk3_0,X1),k1_zfmisc_1(u1_struct_0(esk3_0)))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(spm,[status(thm)],[c_0_21, c_0_22])).
% 0.14/0.38  cnf(c_0_31, plain, (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.14/0.38  cnf(c_0_32, negated_conjecture, (~v2_tex_2(k1_xboole_0,esk3_0)), inference(rw,[status(thm)],[c_0_24, c_0_25])).
% 0.14/0.38  fof(c_0_33, plain, ![X6, X7]:(((r1_tarski(X6,X7)|X6!=X7)&(r1_tarski(X7,X6)|X6!=X7))&(~r1_tarski(X6,X7)|~r1_tarski(X7,X6)|X6=X7)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.14/0.38  fof(c_0_34, plain, ![X9, X10]:r1_tarski(k4_xboole_0(X9,X10),X9), inference(variable_rename,[status(thm)],[t36_xboole_1])).
% 0.14/0.38  cnf(c_0_35, plain, (k4_xboole_0(X1,k4_xboole_0(X1,k1_xboole_0))=k1_xboole_0), inference(rw,[status(thm)],[c_0_26, c_0_27])).
% 0.14/0.38  cnf(c_0_36, plain, (k4_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.14/0.38  cnf(c_0_37, plain, (k9_subset_1(X2,X3,X1)=k4_xboole_0(X3,k4_xboole_0(X3,X1))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[c_0_29, c_0_27])).
% 0.14/0.38  cnf(c_0_38, negated_conjecture, (m1_subset_1(esk2_2(esk3_0,k1_xboole_0),k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_31]), c_0_32])).
% 0.14/0.38  cnf(c_0_39, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.14/0.38  cnf(c_0_40, plain, (r1_tarski(k4_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.14/0.38  cnf(c_0_41, plain, (k4_xboole_0(X1,X1)=k1_xboole_0), inference(rw,[status(thm)],[c_0_35, c_0_36])).
% 0.14/0.38  cnf(c_0_42, plain, (r1_tarski(esk2_2(X1,X2),X2)|v2_tex_2(X2,X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.38  fof(c_0_43, plain, ![X21, X22]:(~v2_pre_topc(X21)|~l1_pre_topc(X21)|(~m1_subset_1(X22,k1_zfmisc_1(u1_struct_0(X21)))|(~v1_xboole_0(X22)|v4_pre_topc(X22,X21)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_pre_topc])])])).
% 0.14/0.38  cnf(c_0_44, plain, (v2_tex_2(X3,X2)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))|~v4_pre_topc(X1,X2)|k9_subset_1(u1_struct_0(X2),X3,X1)!=esk2_2(X2,X3)|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.38  cnf(c_0_45, negated_conjecture, (k9_subset_1(u1_struct_0(esk3_0),X1,esk2_2(esk3_0,k1_xboole_0))=k4_xboole_0(X1,k4_xboole_0(X1,esk2_2(esk3_0,k1_xboole_0)))), inference(spm,[status(thm)],[c_0_37, c_0_38])).
% 0.14/0.38  cnf(c_0_46, plain, (k4_xboole_0(X1,X2)=X1|~r1_tarski(X1,k4_xboole_0(X1,X2))), inference(spm,[status(thm)],[c_0_39, c_0_40])).
% 0.14/0.38  cnf(c_0_47, plain, (r1_tarski(k1_xboole_0,X1)), inference(spm,[status(thm)],[c_0_40, c_0_41])).
% 0.14/0.38  cnf(c_0_48, negated_conjecture, (v2_tex_2(X1,esk3_0)|r1_tarski(esk2_2(esk3_0,X1),X1)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(spm,[status(thm)],[c_0_42, c_0_22])).
% 0.14/0.38  cnf(c_0_49, plain, (v4_pre_topc(X2,X1)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~v1_xboole_0(X2)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.14/0.38  cnf(c_0_50, negated_conjecture, (v2_pre_topc(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.38  cnf(c_0_51, negated_conjecture, (v2_tex_2(X1,esk3_0)|k4_xboole_0(X1,k4_xboole_0(X1,esk2_2(esk3_0,k1_xboole_0)))!=esk2_2(esk3_0,X1)|~v4_pre_topc(esk2_2(esk3_0,k1_xboole_0),esk3_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_45]), c_0_22]), c_0_38])])).
% 0.14/0.38  cnf(c_0_52, plain, (k4_xboole_0(k1_xboole_0,X1)=k1_xboole_0), inference(spm,[status(thm)],[c_0_46, c_0_47])).
% 0.14/0.38  cnf(c_0_53, negated_conjecture, (r1_tarski(esk2_2(esk3_0,k1_xboole_0),k1_xboole_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_31]), c_0_32])).
% 0.14/0.38  cnf(c_0_54, negated_conjecture, (v4_pre_topc(X1,esk3_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0)))|~v1_xboole_0(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_22]), c_0_50])])).
% 0.14/0.38  cnf(c_0_55, plain, (v1_xboole_0(k1_xboole_0)), inference(split_conjunct,[status(thm)],[fc1_xboole_0])).
% 0.14/0.38  cnf(c_0_56, negated_conjecture, (esk2_2(esk3_0,k1_xboole_0)!=k1_xboole_0|~v4_pre_topc(esk2_2(esk3_0,k1_xboole_0),esk3_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_52]), c_0_52]), c_0_31])]), c_0_32])).
% 0.14/0.38  cnf(c_0_57, negated_conjecture, (esk2_2(esk3_0,k1_xboole_0)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_53]), c_0_47])])).
% 0.14/0.38  cnf(c_0_58, negated_conjecture, (v4_pre_topc(k1_xboole_0,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54, c_0_55]), c_0_31])])).
% 0.14/0.38  cnf(c_0_59, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_56, c_0_57]), c_0_57]), c_0_58])]), ['proof']).
% 0.14/0.38  # SZS output end CNFRefutation
% 0.14/0.38  # Proof object total steps             : 60
% 0.14/0.38  # Proof object clause steps            : 36
% 0.14/0.38  # Proof object formula steps           : 24
% 0.14/0.38  # Proof object conjectures             : 20
% 0.14/0.38  # Proof object clause conjectures      : 17
% 0.14/0.38  # Proof object formula conjectures     : 3
% 0.14/0.38  # Proof object initial clauses used    : 17
% 0.14/0.38  # Proof object initial formulas used   : 12
% 0.14/0.38  # Proof object generating inferences   : 14
% 0.14/0.38  # Proof object simplifying inferences  : 23
% 0.14/0.38  # Training examples: 0 positive, 0 negative
% 0.14/0.38  # Parsed axioms                        : 13
% 0.14/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.38  # Initial clauses                      : 25
% 0.14/0.38  # Removed in clause preprocessing      : 1
% 0.14/0.38  # Initial clauses in saturation        : 24
% 0.14/0.38  # Processed clauses                    : 70
% 0.14/0.38  # ...of these trivial                  : 1
% 0.14/0.38  # ...subsumed                          : 3
% 0.14/0.38  # ...remaining for further processing  : 66
% 0.14/0.38  # Other redundant clauses eliminated   : 2
% 0.14/0.38  # Clauses deleted for lack of memory   : 0
% 0.14/0.38  # Backward-subsumed                    : 0
% 0.14/0.38  # Backward-rewritten                   : 9
% 0.14/0.38  # Generated clauses                    : 34
% 0.14/0.38  # ...of the previous two non-trivial   : 31
% 0.14/0.38  # Contextual simplify-reflections      : 0
% 0.14/0.38  # Paramodulations                      : 32
% 0.14/0.38  # Factorizations                       : 0
% 0.14/0.38  # Equation resolutions                 : 2
% 0.14/0.38  # Propositional unsat checks           : 0
% 0.14/0.38  #    Propositional check models        : 0
% 0.14/0.38  #    Propositional check unsatisfiable : 0
% 0.14/0.38  #    Propositional clauses             : 0
% 0.14/0.38  #    Propositional clauses after purity: 0
% 0.14/0.38  #    Propositional unsat core size     : 0
% 0.14/0.38  #    Propositional preprocessing time  : 0.000
% 0.14/0.38  #    Propositional encoding time       : 0.000
% 0.14/0.38  #    Propositional solver time         : 0.000
% 0.14/0.38  #    Success case prop preproc time    : 0.000
% 0.14/0.38  #    Success case prop encoding time   : 0.000
% 0.14/0.38  #    Success case prop solver time     : 0.000
% 0.14/0.38  # Current number of processed clauses  : 32
% 0.14/0.38  #    Positive orientable unit clauses  : 14
% 0.14/0.38  #    Positive unorientable unit clauses: 0
% 0.14/0.38  #    Negative unit clauses             : 2
% 0.14/0.38  #    Non-unit-clauses                  : 16
% 0.14/0.38  # Current number of unprocessed clauses: 8
% 0.14/0.38  # ...number of literals in the above   : 22
% 0.14/0.38  # Current number of archived formulas  : 0
% 0.14/0.38  # Current number of archived clauses   : 33
% 0.14/0.38  # Clause-clause subsumption calls (NU) : 69
% 0.14/0.38  # Rec. Clause-clause subsumption calls : 21
% 0.14/0.38  # Non-unit clause-clause subsumptions  : 3
% 0.14/0.38  # Unit Clause-clause subsumption calls : 6
% 0.14/0.38  # Rewrite failures with RHS unbound    : 0
% 0.14/0.38  # BW rewrite match attempts            : 14
% 0.14/0.38  # BW rewrite match successes           : 2
% 0.14/0.38  # Condensation attempts                : 0
% 0.14/0.38  # Condensation successes               : 0
% 0.14/0.38  # Termbank termtop insertions          : 2495
% 0.14/0.38  
% 0.14/0.38  # -------------------------------------------------
% 0.14/0.38  # User time                : 0.028 s
% 0.14/0.38  # System time              : 0.007 s
% 0.14/0.38  # Total time               : 0.035 s
% 0.14/0.38  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
