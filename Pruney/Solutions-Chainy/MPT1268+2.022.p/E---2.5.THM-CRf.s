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
% DateTime   : Thu Dec  3 11:12:05 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   51 ( 378 expanded)
%              Number of clauses        :   32 ( 130 expanded)
%              Number of leaves         :    9 (  92 expanded)
%              Depth                    :    9
%              Number of atoms          :  162 (2521 expanded)
%              Number of equality atoms :   19 ( 314 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   16 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t86_tops_1,conjecture,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v2_tops_1(X2,X1)
          <=> ! [X3] :
                ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
               => ( ( r1_tarski(X3,X2)
                    & v3_pre_topc(X3,X1) )
                 => X3 = k1_xboole_0 ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t86_tops_1)).

fof(fc9_tops_1,axiom,(
    ! [X1,X2] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1)
        & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
     => v3_pre_topc(k1_tops_1(X1,X2),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc9_tops_1)).

fof(t44_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => r1_tarski(k1_tops_1(X1,X2),X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t44_tops_1)).

fof(dt_k1_tops_1,axiom,(
    ! [X1,X2] :
      ( ( l1_pre_topc(X1)
        & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
     => m1_subset_1(k1_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k1_tops_1)).

fof(t84_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v2_tops_1(X2,X1)
          <=> k1_tops_1(X1,X2) = k1_xboole_0 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t84_tops_1)).

fof(t56_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ! [X3] :
              ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
             => ( ( v3_pre_topc(X2,X1)
                  & r1_tarski(X2,X3) )
               => r1_tarski(X2,k1_tops_1(X1,X3)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t56_tops_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).

fof(t4_subset_1,axiom,(
    ! [X1] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_subset_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(c_0_9,negated_conjecture,(
    ~ ! [X1] :
        ( ( v2_pre_topc(X1)
          & l1_pre_topc(X1) )
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
           => ( v2_tops_1(X2,X1)
            <=> ! [X3] :
                  ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
                 => ( ( r1_tarski(X3,X2)
                      & v3_pre_topc(X3,X1) )
                   => X3 = k1_xboole_0 ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t86_tops_1])).

fof(c_0_10,plain,(
    ! [X14,X15] :
      ( ~ v2_pre_topc(X14)
      | ~ l1_pre_topc(X14)
      | ~ m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X14)))
      | v3_pre_topc(k1_tops_1(X14,X15),X14) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc9_tops_1])])).

fof(c_0_11,negated_conjecture,(
    ! [X26] :
      ( v2_pre_topc(esk1_0)
      & l1_pre_topc(esk1_0)
      & m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))
      & ( m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))
        | ~ v2_tops_1(esk2_0,esk1_0) )
      & ( r1_tarski(esk3_0,esk2_0)
        | ~ v2_tops_1(esk2_0,esk1_0) )
      & ( v3_pre_topc(esk3_0,esk1_0)
        | ~ v2_tops_1(esk2_0,esk1_0) )
      & ( esk3_0 != k1_xboole_0
        | ~ v2_tops_1(esk2_0,esk1_0) )
      & ( v2_tops_1(esk2_0,esk1_0)
        | ~ m1_subset_1(X26,k1_zfmisc_1(u1_struct_0(esk1_0)))
        | ~ r1_tarski(X26,esk2_0)
        | ~ v3_pre_topc(X26,esk1_0)
        | X26 = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_9])])])])])).

fof(c_0_12,plain,(
    ! [X16,X17] :
      ( ~ l1_pre_topc(X16)
      | ~ m1_subset_1(X17,k1_zfmisc_1(u1_struct_0(X16)))
      | r1_tarski(k1_tops_1(X16,X17),X17) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_tops_1])])])).

fof(c_0_13,plain,(
    ! [X12,X13] :
      ( ~ l1_pre_topc(X12)
      | ~ m1_subset_1(X13,k1_zfmisc_1(u1_struct_0(X12)))
      | m1_subset_1(k1_tops_1(X12,X13),k1_zfmisc_1(u1_struct_0(X12))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_tops_1])])).

fof(c_0_14,plain,(
    ! [X21,X22] :
      ( ( ~ v2_tops_1(X22,X21)
        | k1_tops_1(X21,X22) = k1_xboole_0
        | ~ m1_subset_1(X22,k1_zfmisc_1(u1_struct_0(X21)))
        | ~ l1_pre_topc(X21) )
      & ( k1_tops_1(X21,X22) != k1_xboole_0
        | v2_tops_1(X22,X21)
        | ~ m1_subset_1(X22,k1_zfmisc_1(u1_struct_0(X21)))
        | ~ l1_pre_topc(X21) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t84_tops_1])])])])).

cnf(c_0_15,plain,
    ( v3_pre_topc(k1_tops_1(X1,X2),X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_16,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_17,negated_conjecture,
    ( v2_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_18,negated_conjecture,
    ( l1_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_19,plain,
    ( r1_tarski(k1_tops_1(X1,X2),X2)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_20,plain,
    ( m1_subset_1(k1_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_21,plain,
    ( k1_tops_1(X2,X1) = k1_xboole_0
    | ~ v2_tops_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_22,plain,(
    ! [X18,X19,X20] :
      ( ~ l1_pre_topc(X18)
      | ~ m1_subset_1(X19,k1_zfmisc_1(u1_struct_0(X18)))
      | ~ m1_subset_1(X20,k1_zfmisc_1(u1_struct_0(X18)))
      | ~ v3_pre_topc(X19,X18)
      | ~ r1_tarski(X19,X20)
      | r1_tarski(X19,k1_tops_1(X18,X20)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t56_tops_1])])])).

cnf(c_0_23,negated_conjecture,
    ( v2_tops_1(esk2_0,esk1_0)
    | X1 = k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ r1_tarski(X1,esk2_0)
    | ~ v3_pre_topc(X1,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_24,negated_conjecture,
    ( v3_pre_topc(k1_tops_1(esk1_0,esk2_0),esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_15,c_0_16]),c_0_17]),c_0_18])])).

cnf(c_0_25,negated_conjecture,
    ( r1_tarski(k1_tops_1(esk1_0,esk2_0),esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_16]),c_0_18])])).

cnf(c_0_26,negated_conjecture,
    ( m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_16]),c_0_18])])).

cnf(c_0_27,negated_conjecture,
    ( k1_tops_1(esk1_0,esk2_0) = k1_xboole_0
    | ~ v2_tops_1(esk2_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21,c_0_16]),c_0_18])])).

cnf(c_0_28,plain,
    ( r1_tarski(X2,k1_tops_1(X1,X3))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v3_pre_topc(X2,X1)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_29,plain,
    ( v2_tops_1(X2,X1)
    | k1_tops_1(X1,X2) != k1_xboole_0
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_30,negated_conjecture,
    ( k1_tops_1(esk1_0,esk2_0) = k1_xboole_0 ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_24]),c_0_25])]),c_0_26])]),c_0_27])).

cnf(c_0_31,negated_conjecture,
    ( r1_tarski(X1,k1_tops_1(esk1_0,esk2_0))
    | ~ v3_pre_topc(X1,esk1_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ r1_tarski(X1,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_16]),c_0_18])])).

cnf(c_0_32,negated_conjecture,
    ( v3_pre_topc(esk3_0,esk1_0)
    | ~ v2_tops_1(esk2_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_33,negated_conjecture,
    ( v2_tops_1(esk2_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30]),c_0_18]),c_0_16])])).

cnf(c_0_34,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ v2_tops_1(esk2_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_35,negated_conjecture,
    ( r1_tarski(esk3_0,esk2_0)
    | ~ v2_tops_1(esk2_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

fof(c_0_36,plain,(
    ! [X7,X8] :
      ( ( ~ m1_subset_1(X7,k1_zfmisc_1(X8))
        | r1_tarski(X7,X8) )
      & ( ~ r1_tarski(X7,X8)
        | m1_subset_1(X7,k1_zfmisc_1(X8)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

fof(c_0_37,plain,(
    ! [X6] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X6)) ),
    inference(variable_rename,[status(thm)],[t4_subset_1])).

fof(c_0_38,plain,(
    ! [X4,X5] :
      ( ( r1_tarski(X4,X5)
        | X4 != X5 )
      & ( r1_tarski(X5,X4)
        | X4 != X5 )
      & ( ~ r1_tarski(X4,X5)
        | ~ r1_tarski(X5,X4)
        | X4 = X5 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_39,negated_conjecture,
    ( r1_tarski(X1,k1_xboole_0)
    | ~ v3_pre_topc(X1,esk1_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ r1_tarski(X1,esk2_0) ),
    inference(rw,[status(thm)],[c_0_31,c_0_30])).

cnf(c_0_40,negated_conjecture,
    ( v3_pre_topc(esk3_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_32,c_0_33])])).

cnf(c_0_41,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_34,c_0_33])])).

cnf(c_0_42,negated_conjecture,
    ( r1_tarski(esk3_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_35,c_0_33])])).

cnf(c_0_43,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_44,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_45,negated_conjecture,
    ( esk3_0 != k1_xboole_0
    | ~ v2_tops_1(esk2_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_46,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_47,negated_conjecture,
    ( r1_tarski(esk3_0,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_40]),c_0_41]),c_0_42])])).

cnf(c_0_48,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(spm,[status(thm)],[c_0_43,c_0_44])).

cnf(c_0_49,negated_conjecture,
    ( esk3_0 != k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_45,c_0_33])])).

cnf(c_0_50,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46,c_0_47]),c_0_48])]),c_0_49]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 16:31:52 EST 2020
% 0.19/0.34  % CPUTime    : 
% 0.19/0.34  # Version: 2.5pre002
% 0.19/0.35  # No SInE strategy applied
% 0.19/0.35  # Trying AutoSched0 for 299 seconds
% 0.19/0.38  # AutoSched0-Mode selected heuristic H_____047_C18_F1_PI_AE_R8_CS_SP_S2S
% 0.19/0.38  # and selection function SelectNewComplexAHP.
% 0.19/0.38  #
% 0.19/0.38  # Preprocessing time       : 0.028 s
% 0.19/0.38  
% 0.19/0.38  # Proof found!
% 0.19/0.38  # SZS status Theorem
% 0.19/0.38  # SZS output start CNFRefutation
% 0.19/0.38  fof(t86_tops_1, conjecture, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v2_tops_1(X2,X1)<=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>((r1_tarski(X3,X2)&v3_pre_topc(X3,X1))=>X3=k1_xboole_0))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t86_tops_1)).
% 0.19/0.38  fof(fc9_tops_1, axiom, ![X1, X2]:(((v2_pre_topc(X1)&l1_pre_topc(X1))&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>v3_pre_topc(k1_tops_1(X1,X2),X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc9_tops_1)).
% 0.19/0.38  fof(t44_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>r1_tarski(k1_tops_1(X1,X2),X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t44_tops_1)).
% 0.19/0.38  fof(dt_k1_tops_1, axiom, ![X1, X2]:((l1_pre_topc(X1)&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>m1_subset_1(k1_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k1_tops_1)).
% 0.19/0.38  fof(t84_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v2_tops_1(X2,X1)<=>k1_tops_1(X1,X2)=k1_xboole_0))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t84_tops_1)).
% 0.19/0.38  fof(t56_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>((v3_pre_topc(X2,X1)&r1_tarski(X2,X3))=>r1_tarski(X2,k1_tops_1(X1,X3)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t56_tops_1)).
% 0.19/0.38  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_subset)).
% 0.19/0.38  fof(t4_subset_1, axiom, ![X1]:m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t4_subset_1)).
% 0.19/0.38  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.19/0.38  fof(c_0_9, negated_conjecture, ~(![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v2_tops_1(X2,X1)<=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>((r1_tarski(X3,X2)&v3_pre_topc(X3,X1))=>X3=k1_xboole_0)))))), inference(assume_negation,[status(cth)],[t86_tops_1])).
% 0.19/0.38  fof(c_0_10, plain, ![X14, X15]:(~v2_pre_topc(X14)|~l1_pre_topc(X14)|~m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X14)))|v3_pre_topc(k1_tops_1(X14,X15),X14)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc9_tops_1])])).
% 0.19/0.38  fof(c_0_11, negated_conjecture, ![X26]:((v2_pre_topc(esk1_0)&l1_pre_topc(esk1_0))&(m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))&(((m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))|~v2_tops_1(esk2_0,esk1_0))&(((r1_tarski(esk3_0,esk2_0)|~v2_tops_1(esk2_0,esk1_0))&(v3_pre_topc(esk3_0,esk1_0)|~v2_tops_1(esk2_0,esk1_0)))&(esk3_0!=k1_xboole_0|~v2_tops_1(esk2_0,esk1_0))))&(v2_tops_1(esk2_0,esk1_0)|(~m1_subset_1(X26,k1_zfmisc_1(u1_struct_0(esk1_0)))|(~r1_tarski(X26,esk2_0)|~v3_pre_topc(X26,esk1_0)|X26=k1_xboole_0)))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_9])])])])])).
% 0.19/0.38  fof(c_0_12, plain, ![X16, X17]:(~l1_pre_topc(X16)|(~m1_subset_1(X17,k1_zfmisc_1(u1_struct_0(X16)))|r1_tarski(k1_tops_1(X16,X17),X17))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_tops_1])])])).
% 0.19/0.38  fof(c_0_13, plain, ![X12, X13]:(~l1_pre_topc(X12)|~m1_subset_1(X13,k1_zfmisc_1(u1_struct_0(X12)))|m1_subset_1(k1_tops_1(X12,X13),k1_zfmisc_1(u1_struct_0(X12)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_tops_1])])).
% 0.19/0.38  fof(c_0_14, plain, ![X21, X22]:((~v2_tops_1(X22,X21)|k1_tops_1(X21,X22)=k1_xboole_0|~m1_subset_1(X22,k1_zfmisc_1(u1_struct_0(X21)))|~l1_pre_topc(X21))&(k1_tops_1(X21,X22)!=k1_xboole_0|v2_tops_1(X22,X21)|~m1_subset_1(X22,k1_zfmisc_1(u1_struct_0(X21)))|~l1_pre_topc(X21))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t84_tops_1])])])])).
% 0.19/0.38  cnf(c_0_15, plain, (v3_pre_topc(k1_tops_1(X1,X2),X1)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.19/0.38  cnf(c_0_16, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.19/0.38  cnf(c_0_17, negated_conjecture, (v2_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.19/0.38  cnf(c_0_18, negated_conjecture, (l1_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.19/0.38  cnf(c_0_19, plain, (r1_tarski(k1_tops_1(X1,X2),X2)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.38  cnf(c_0_20, plain, (m1_subset_1(k1_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.19/0.38  cnf(c_0_21, plain, (k1_tops_1(X2,X1)=k1_xboole_0|~v2_tops_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.38  fof(c_0_22, plain, ![X18, X19, X20]:(~l1_pre_topc(X18)|(~m1_subset_1(X19,k1_zfmisc_1(u1_struct_0(X18)))|(~m1_subset_1(X20,k1_zfmisc_1(u1_struct_0(X18)))|(~v3_pre_topc(X19,X18)|~r1_tarski(X19,X20)|r1_tarski(X19,k1_tops_1(X18,X20)))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t56_tops_1])])])).
% 0.19/0.38  cnf(c_0_23, negated_conjecture, (v2_tops_1(esk2_0,esk1_0)|X1=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))|~r1_tarski(X1,esk2_0)|~v3_pre_topc(X1,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.19/0.38  cnf(c_0_24, negated_conjecture, (v3_pre_topc(k1_tops_1(esk1_0,esk2_0),esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_15, c_0_16]), c_0_17]), c_0_18])])).
% 0.19/0.38  cnf(c_0_25, negated_conjecture, (r1_tarski(k1_tops_1(esk1_0,esk2_0),esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_16]), c_0_18])])).
% 0.19/0.38  cnf(c_0_26, negated_conjecture, (m1_subset_1(k1_tops_1(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20, c_0_16]), c_0_18])])).
% 0.19/0.38  cnf(c_0_27, negated_conjecture, (k1_tops_1(esk1_0,esk2_0)=k1_xboole_0|~v2_tops_1(esk2_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21, c_0_16]), c_0_18])])).
% 0.19/0.38  cnf(c_0_28, plain, (r1_tarski(X2,k1_tops_1(X1,X3))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~v3_pre_topc(X2,X1)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.19/0.38  cnf(c_0_29, plain, (v2_tops_1(X2,X1)|k1_tops_1(X1,X2)!=k1_xboole_0|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.38  cnf(c_0_30, negated_conjecture, (k1_tops_1(esk1_0,esk2_0)=k1_xboole_0), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_24]), c_0_25])]), c_0_26])]), c_0_27])).
% 0.19/0.38  cnf(c_0_31, negated_conjecture, (r1_tarski(X1,k1_tops_1(esk1_0,esk2_0))|~v3_pre_topc(X1,esk1_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))|~r1_tarski(X1,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_16]), c_0_18])])).
% 0.19/0.38  cnf(c_0_32, negated_conjecture, (v3_pre_topc(esk3_0,esk1_0)|~v2_tops_1(esk2_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.19/0.38  cnf(c_0_33, negated_conjecture, (v2_tops_1(esk2_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_30]), c_0_18]), c_0_16])])).
% 0.19/0.38  cnf(c_0_34, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))|~v2_tops_1(esk2_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.19/0.38  cnf(c_0_35, negated_conjecture, (r1_tarski(esk3_0,esk2_0)|~v2_tops_1(esk2_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.19/0.38  fof(c_0_36, plain, ![X7, X8]:((~m1_subset_1(X7,k1_zfmisc_1(X8))|r1_tarski(X7,X8))&(~r1_tarski(X7,X8)|m1_subset_1(X7,k1_zfmisc_1(X8)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.19/0.38  fof(c_0_37, plain, ![X6]:m1_subset_1(k1_xboole_0,k1_zfmisc_1(X6)), inference(variable_rename,[status(thm)],[t4_subset_1])).
% 0.19/0.38  fof(c_0_38, plain, ![X4, X5]:(((r1_tarski(X4,X5)|X4!=X5)&(r1_tarski(X5,X4)|X4!=X5))&(~r1_tarski(X4,X5)|~r1_tarski(X5,X4)|X4=X5)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.19/0.38  cnf(c_0_39, negated_conjecture, (r1_tarski(X1,k1_xboole_0)|~v3_pre_topc(X1,esk1_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))|~r1_tarski(X1,esk2_0)), inference(rw,[status(thm)],[c_0_31, c_0_30])).
% 0.19/0.38  cnf(c_0_40, negated_conjecture, (v3_pre_topc(esk3_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_32, c_0_33])])).
% 0.19/0.38  cnf(c_0_41, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_34, c_0_33])])).
% 0.19/0.38  cnf(c_0_42, negated_conjecture, (r1_tarski(esk3_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_35, c_0_33])])).
% 0.19/0.38  cnf(c_0_43, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.19/0.38  cnf(c_0_44, plain, (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.19/0.38  cnf(c_0_45, negated_conjecture, (esk3_0!=k1_xboole_0|~v2_tops_1(esk2_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.19/0.38  cnf(c_0_46, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.19/0.38  cnf(c_0_47, negated_conjecture, (r1_tarski(esk3_0,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_40]), c_0_41]), c_0_42])])).
% 0.19/0.38  cnf(c_0_48, plain, (r1_tarski(k1_xboole_0,X1)), inference(spm,[status(thm)],[c_0_43, c_0_44])).
% 0.19/0.38  cnf(c_0_49, negated_conjecture, (esk3_0!=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_45, c_0_33])])).
% 0.19/0.38  cnf(c_0_50, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46, c_0_47]), c_0_48])]), c_0_49]), ['proof']).
% 0.19/0.38  # SZS output end CNFRefutation
% 0.19/0.38  # Proof object total steps             : 51
% 0.19/0.38  # Proof object clause steps            : 32
% 0.19/0.38  # Proof object formula steps           : 19
% 0.19/0.38  # Proof object conjectures             : 25
% 0.19/0.38  # Proof object clause conjectures      : 22
% 0.19/0.38  # Proof object formula conjectures     : 3
% 0.19/0.38  # Proof object initial clauses used    : 17
% 0.19/0.38  # Proof object initial formulas used   : 9
% 0.19/0.38  # Proof object generating inferences   : 10
% 0.19/0.38  # Proof object simplifying inferences  : 34
% 0.19/0.38  # Training examples: 0 positive, 0 negative
% 0.19/0.38  # Parsed axioms                        : 10
% 0.19/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.38  # Initial clauses                      : 21
% 0.19/0.38  # Removed in clause preprocessing      : 0
% 0.19/0.38  # Initial clauses in saturation        : 21
% 0.19/0.38  # Processed clauses                    : 149
% 0.19/0.38  # ...of these trivial                  : 8
% 0.19/0.38  # ...subsumed                          : 23
% 0.19/0.38  # ...remaining for further processing  : 118
% 0.19/0.38  # Other redundant clauses eliminated   : 2
% 0.19/0.38  # Clauses deleted for lack of memory   : 0
% 0.19/0.38  # Backward-subsumed                    : 0
% 0.19/0.38  # Backward-rewritten                   : 37
% 0.19/0.38  # Generated clauses                    : 220
% 0.19/0.38  # ...of the previous two non-trivial   : 197
% 0.19/0.38  # Contextual simplify-reflections      : 2
% 0.19/0.38  # Paramodulations                      : 218
% 0.19/0.38  # Factorizations                       : 0
% 0.19/0.38  # Equation resolutions                 : 2
% 0.19/0.38  # Propositional unsat checks           : 0
% 0.19/0.38  #    Propositional check models        : 0
% 0.19/0.38  #    Propositional check unsatisfiable : 0
% 0.19/0.38  #    Propositional clauses             : 0
% 0.19/0.38  #    Propositional clauses after purity: 0
% 0.19/0.38  #    Propositional unsat core size     : 0
% 0.19/0.38  #    Propositional preprocessing time  : 0.000
% 0.19/0.38  #    Propositional encoding time       : 0.000
% 0.19/0.38  #    Propositional solver time         : 0.000
% 0.19/0.38  #    Success case prop preproc time    : 0.000
% 0.19/0.38  #    Success case prop encoding time   : 0.000
% 0.19/0.38  #    Success case prop solver time     : 0.000
% 0.19/0.38  # Current number of processed clauses  : 79
% 0.19/0.38  #    Positive orientable unit clauses  : 27
% 0.19/0.38  #    Positive unorientable unit clauses: 0
% 0.19/0.38  #    Negative unit clauses             : 1
% 0.19/0.38  #    Non-unit-clauses                  : 51
% 0.19/0.38  # Current number of unprocessed clauses: 54
% 0.19/0.38  # ...number of literals in the above   : 138
% 0.19/0.38  # Current number of archived formulas  : 0
% 0.19/0.38  # Current number of archived clauses   : 37
% 0.19/0.38  # Clause-clause subsumption calls (NU) : 496
% 0.19/0.38  # Rec. Clause-clause subsumption calls : 311
% 0.19/0.38  # Non-unit clause-clause subsumptions  : 25
% 0.19/0.38  # Unit Clause-clause subsumption calls : 85
% 0.19/0.38  # Rewrite failures with RHS unbound    : 0
% 0.19/0.38  # BW rewrite match attempts            : 26
% 0.19/0.38  # BW rewrite match successes           : 3
% 0.19/0.38  # Condensation attempts                : 0
% 0.19/0.38  # Condensation successes               : 0
% 0.19/0.38  # Termbank termtop insertions          : 5522
% 0.19/0.38  
% 0.19/0.38  # -------------------------------------------------
% 0.19/0.38  # User time                : 0.035 s
% 0.19/0.38  # System time              : 0.004 s
% 0.19/0.38  # Total time               : 0.040 s
% 0.19/0.38  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
