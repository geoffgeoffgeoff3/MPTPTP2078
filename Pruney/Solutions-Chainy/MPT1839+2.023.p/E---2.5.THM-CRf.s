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
% DateTime   : Thu Dec  3 11:18:49 EST 2020

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   49 (  72 expanded)
%              Number of clauses        :   27 (  32 expanded)
%              Number of leaves         :   11 (  19 expanded)
%              Depth                    :    8
%              Number of atoms          :   97 ( 151 expanded)
%              Number of equality atoms :   36 (  49 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t2_tex_2,conjecture,(
    ! [X1] :
      ( ( ~ v1_xboole_0(X1)
        & v1_zfmisc_1(X1) )
     => ! [X2] :
          ( ~ v1_xboole_0(k3_xboole_0(X1,X2))
         => r1_tarski(X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_tex_2)).

fof(t12_setfam_1,axiom,(
    ! [X1,X2] : k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_setfam_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(t48_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_xboole_1)).

fof(t1_tex_2,axiom,(
    ! [X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( ( ~ v1_xboole_0(X2)
            & v1_zfmisc_1(X2) )
         => ( r1_tarski(X1,X2)
           => X1 = X2 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_tex_2)).

fof(t36_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k4_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t36_xboole_1)).

fof(t8_boole,axiom,(
    ! [X1,X2] :
      ~ ( v1_xboole_0(X1)
        & X1 != X2
        & v1_xboole_0(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t8_boole)).

fof(l32_xboole_1,axiom,(
    ! [X1,X2] :
      ( k4_xboole_0(X1,X2) = k1_xboole_0
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l32_xboole_1)).

fof(fc1_xboole_0,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(c_0_11,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v1_xboole_0(X1)
          & v1_zfmisc_1(X1) )
       => ! [X2] :
            ( ~ v1_xboole_0(k3_xboole_0(X1,X2))
           => r1_tarski(X1,X2) ) ) ),
    inference(assume_negation,[status(cth)],[t2_tex_2])).

fof(c_0_12,plain,(
    ! [X19,X20] : k1_setfam_1(k2_tarski(X19,X20)) = k3_xboole_0(X19,X20) ),
    inference(variable_rename,[status(thm)],[t12_setfam_1])).

fof(c_0_13,plain,(
    ! [X14,X15] : k1_enumset1(X14,X14,X15) = k2_tarski(X14,X15) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_14,negated_conjecture,
    ( ~ v1_xboole_0(esk1_0)
    & v1_zfmisc_1(esk1_0)
    & ~ v1_xboole_0(k3_xboole_0(esk1_0,esk2_0))
    & ~ r1_tarski(esk1_0,esk2_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_11])])])])).

cnf(c_0_15,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_16,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_17,plain,(
    ! [X16,X17,X18] : k2_enumset1(X16,X16,X17,X18) = k1_enumset1(X16,X17,X18) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_18,plain,(
    ! [X10,X11] : k4_xboole_0(X10,k4_xboole_0(X10,X11)) = k3_xboole_0(X10,X11) ),
    inference(variable_rename,[status(thm)],[t48_xboole_1])).

fof(c_0_19,plain,(
    ! [X21,X22] :
      ( v1_xboole_0(X21)
      | v1_xboole_0(X22)
      | ~ v1_zfmisc_1(X22)
      | ~ r1_tarski(X21,X22)
      | X21 = X22 ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t1_tex_2])])])])).

fof(c_0_20,plain,(
    ! [X8,X9] : r1_tarski(k4_xboole_0(X8,X9),X8) ),
    inference(variable_rename,[status(thm)],[t36_xboole_1])).

cnf(c_0_21,negated_conjecture,
    ( ~ v1_xboole_0(k3_xboole_0(esk1_0,esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_22,plain,
    ( k1_setfam_1(k1_enumset1(X1,X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_23,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_24,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

fof(c_0_25,plain,(
    ! [X12,X13] :
      ( ~ v1_xboole_0(X12)
      | X12 = X13
      | ~ v1_xboole_0(X13) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t8_boole])])).

cnf(c_0_26,plain,
    ( v1_xboole_0(X1)
    | v1_xboole_0(X2)
    | X1 = X2
    | ~ v1_zfmisc_1(X2)
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_27,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_28,negated_conjecture,
    ( ~ v1_xboole_0(k1_setfam_1(k2_enumset1(esk1_0,esk1_0,esk1_0,esk2_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_21,c_0_22]),c_0_23])).

cnf(c_0_29,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k1_setfam_1(k2_enumset1(X1,X1,X1,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24,c_0_22]),c_0_23])).

fof(c_0_30,plain,(
    ! [X6,X7] :
      ( ( k4_xboole_0(X6,X7) != k1_xboole_0
        | r1_tarski(X6,X7) )
      & ( ~ r1_tarski(X6,X7)
        | k4_xboole_0(X6,X7) = k1_xboole_0 ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l32_xboole_1])])).

cnf(c_0_31,plain,
    ( X1 = X2
    | ~ v1_xboole_0(X1)
    | ~ v1_xboole_0(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_32,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[fc1_xboole_0])).

cnf(c_0_33,plain,
    ( k4_xboole_0(X1,X2) = X1
    | v1_xboole_0(k4_xboole_0(X1,X2))
    | v1_xboole_0(X1)
    | ~ v1_zfmisc_1(X1) ),
    inference(spm,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_34,negated_conjecture,
    ( v1_zfmisc_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_35,negated_conjecture,
    ( ~ v1_xboole_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_36,plain,(
    ! [X4,X5] :
      ( ( r1_tarski(X4,X5)
        | X4 != X5 )
      & ( r1_tarski(X5,X4)
        | X4 != X5 )
      & ( ~ r1_tarski(X4,X5)
        | ~ r1_tarski(X5,X4)
        | X4 = X5 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_37,negated_conjecture,
    ( ~ v1_xboole_0(k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,esk2_0))) ),
    inference(rw,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_38,plain,
    ( k4_xboole_0(X1,X2) = k1_xboole_0
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_39,plain,
    ( X1 = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(spm,[status(thm)],[c_0_31,c_0_32])).

cnf(c_0_40,negated_conjecture,
    ( k4_xboole_0(esk1_0,X1) = esk1_0
    | v1_xboole_0(k4_xboole_0(esk1_0,X1)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_35])).

cnf(c_0_41,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_42,negated_conjecture,
    ( ~ r1_tarski(esk1_0,k4_xboole_0(esk1_0,esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_38]),c_0_32])])).

cnf(c_0_43,negated_conjecture,
    ( k4_xboole_0(esk1_0,X1) = esk1_0
    | k4_xboole_0(esk1_0,X1) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_39,c_0_40])).

cnf(c_0_44,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_41])).

cnf(c_0_45,plain,
    ( r1_tarski(X1,X2)
    | k4_xboole_0(X1,X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_46,negated_conjecture,
    ( k4_xboole_0(esk1_0,esk2_0) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42,c_0_43]),c_0_44])])).

cnf(c_0_47,negated_conjecture,
    ( ~ r1_tarski(esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_48,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_46]),c_0_47]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n020.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 19:37:22 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.14/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.14/0.38  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.14/0.38  #
% 0.14/0.38  # Preprocessing time       : 0.027 s
% 0.14/0.38  # Presaturation interreduction done
% 0.14/0.38  
% 0.14/0.38  # Proof found!
% 0.14/0.38  # SZS status Theorem
% 0.14/0.38  # SZS output start CNFRefutation
% 0.14/0.38  fof(t2_tex_2, conjecture, ![X1]:((~(v1_xboole_0(X1))&v1_zfmisc_1(X1))=>![X2]:(~(v1_xboole_0(k3_xboole_0(X1,X2)))=>r1_tarski(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_tex_2)).
% 0.14/0.38  fof(t12_setfam_1, axiom, ![X1, X2]:k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t12_setfam_1)).
% 0.14/0.38  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.14/0.38  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 0.14/0.38  fof(t48_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t48_xboole_1)).
% 0.14/0.38  fof(t1_tex_2, axiom, ![X1]:(~(v1_xboole_0(X1))=>![X2]:((~(v1_xboole_0(X2))&v1_zfmisc_1(X2))=>(r1_tarski(X1,X2)=>X1=X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t1_tex_2)).
% 0.14/0.38  fof(t36_xboole_1, axiom, ![X1, X2]:r1_tarski(k4_xboole_0(X1,X2),X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t36_xboole_1)).
% 0.14/0.38  fof(t8_boole, axiom, ![X1, X2]:~(((v1_xboole_0(X1)&X1!=X2)&v1_xboole_0(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t8_boole)).
% 0.14/0.38  fof(l32_xboole_1, axiom, ![X1, X2]:(k4_xboole_0(X1,X2)=k1_xboole_0<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l32_xboole_1)).
% 0.14/0.38  fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc1_xboole_0)).
% 0.14/0.38  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.14/0.38  fof(c_0_11, negated_conjecture, ~(![X1]:((~(v1_xboole_0(X1))&v1_zfmisc_1(X1))=>![X2]:(~(v1_xboole_0(k3_xboole_0(X1,X2)))=>r1_tarski(X1,X2)))), inference(assume_negation,[status(cth)],[t2_tex_2])).
% 0.14/0.38  fof(c_0_12, plain, ![X19, X20]:k1_setfam_1(k2_tarski(X19,X20))=k3_xboole_0(X19,X20), inference(variable_rename,[status(thm)],[t12_setfam_1])).
% 0.14/0.38  fof(c_0_13, plain, ![X14, X15]:k1_enumset1(X14,X14,X15)=k2_tarski(X14,X15), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.14/0.38  fof(c_0_14, negated_conjecture, ((~v1_xboole_0(esk1_0)&v1_zfmisc_1(esk1_0))&(~v1_xboole_0(k3_xboole_0(esk1_0,esk2_0))&~r1_tarski(esk1_0,esk2_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_11])])])])).
% 0.14/0.38  cnf(c_0_15, plain, (k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.14/0.38  cnf(c_0_16, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.14/0.38  fof(c_0_17, plain, ![X16, X17, X18]:k2_enumset1(X16,X16,X17,X18)=k1_enumset1(X16,X17,X18), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.14/0.38  fof(c_0_18, plain, ![X10, X11]:k4_xboole_0(X10,k4_xboole_0(X10,X11))=k3_xboole_0(X10,X11), inference(variable_rename,[status(thm)],[t48_xboole_1])).
% 0.14/0.38  fof(c_0_19, plain, ![X21, X22]:(v1_xboole_0(X21)|(v1_xboole_0(X22)|~v1_zfmisc_1(X22)|(~r1_tarski(X21,X22)|X21=X22))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t1_tex_2])])])])).
% 0.14/0.38  fof(c_0_20, plain, ![X8, X9]:r1_tarski(k4_xboole_0(X8,X9),X8), inference(variable_rename,[status(thm)],[t36_xboole_1])).
% 0.14/0.38  cnf(c_0_21, negated_conjecture, (~v1_xboole_0(k3_xboole_0(esk1_0,esk2_0))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.38  cnf(c_0_22, plain, (k1_setfam_1(k1_enumset1(X1,X1,X2))=k3_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_15, c_0_16])).
% 0.14/0.38  cnf(c_0_23, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.14/0.38  cnf(c_0_24, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.14/0.38  fof(c_0_25, plain, ![X12, X13]:(~v1_xboole_0(X12)|X12=X13|~v1_xboole_0(X13)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t8_boole])])).
% 0.14/0.38  cnf(c_0_26, plain, (v1_xboole_0(X1)|v1_xboole_0(X2)|X1=X2|~v1_zfmisc_1(X2)|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.14/0.38  cnf(c_0_27, plain, (r1_tarski(k4_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.14/0.38  cnf(c_0_28, negated_conjecture, (~v1_xboole_0(k1_setfam_1(k2_enumset1(esk1_0,esk1_0,esk1_0,esk2_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_21, c_0_22]), c_0_23])).
% 0.14/0.38  cnf(c_0_29, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k1_setfam_1(k2_enumset1(X1,X1,X1,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24, c_0_22]), c_0_23])).
% 0.14/0.38  fof(c_0_30, plain, ![X6, X7]:((k4_xboole_0(X6,X7)!=k1_xboole_0|r1_tarski(X6,X7))&(~r1_tarski(X6,X7)|k4_xboole_0(X6,X7)=k1_xboole_0)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l32_xboole_1])])).
% 0.14/0.38  cnf(c_0_31, plain, (X1=X2|~v1_xboole_0(X1)|~v1_xboole_0(X2)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.14/0.38  cnf(c_0_32, plain, (v1_xboole_0(k1_xboole_0)), inference(split_conjunct,[status(thm)],[fc1_xboole_0])).
% 0.14/0.38  cnf(c_0_33, plain, (k4_xboole_0(X1,X2)=X1|v1_xboole_0(k4_xboole_0(X1,X2))|v1_xboole_0(X1)|~v1_zfmisc_1(X1)), inference(spm,[status(thm)],[c_0_26, c_0_27])).
% 0.14/0.38  cnf(c_0_34, negated_conjecture, (v1_zfmisc_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.38  cnf(c_0_35, negated_conjecture, (~v1_xboole_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.38  fof(c_0_36, plain, ![X4, X5]:(((r1_tarski(X4,X5)|X4!=X5)&(r1_tarski(X5,X4)|X4!=X5))&(~r1_tarski(X4,X5)|~r1_tarski(X5,X4)|X4=X5)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.14/0.38  cnf(c_0_37, negated_conjecture, (~v1_xboole_0(k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,esk2_0)))), inference(rw,[status(thm)],[c_0_28, c_0_29])).
% 0.14/0.38  cnf(c_0_38, plain, (k4_xboole_0(X1,X2)=k1_xboole_0|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.14/0.38  cnf(c_0_39, plain, (X1=k1_xboole_0|~v1_xboole_0(X1)), inference(spm,[status(thm)],[c_0_31, c_0_32])).
% 0.14/0.38  cnf(c_0_40, negated_conjecture, (k4_xboole_0(esk1_0,X1)=esk1_0|v1_xboole_0(k4_xboole_0(esk1_0,X1))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_35])).
% 0.14/0.38  cnf(c_0_41, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.14/0.38  cnf(c_0_42, negated_conjecture, (~r1_tarski(esk1_0,k4_xboole_0(esk1_0,esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_38]), c_0_32])])).
% 0.14/0.38  cnf(c_0_43, negated_conjecture, (k4_xboole_0(esk1_0,X1)=esk1_0|k4_xboole_0(esk1_0,X1)=k1_xboole_0), inference(spm,[status(thm)],[c_0_39, c_0_40])).
% 0.14/0.38  cnf(c_0_44, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_41])).
% 0.14/0.38  cnf(c_0_45, plain, (r1_tarski(X1,X2)|k4_xboole_0(X1,X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.14/0.38  cnf(c_0_46, negated_conjecture, (k4_xboole_0(esk1_0,esk2_0)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_43]), c_0_44])])).
% 0.14/0.38  cnf(c_0_47, negated_conjecture, (~r1_tarski(esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.38  cnf(c_0_48, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_46]), c_0_47]), ['proof']).
% 0.14/0.38  # SZS output end CNFRefutation
% 0.14/0.38  # Proof object total steps             : 49
% 0.14/0.38  # Proof object clause steps            : 27
% 0.14/0.38  # Proof object formula steps           : 22
% 0.14/0.38  # Proof object conjectures             : 14
% 0.14/0.38  # Proof object clause conjectures      : 11
% 0.14/0.38  # Proof object formula conjectures     : 3
% 0.14/0.38  # Proof object initial clauses used    : 15
% 0.14/0.38  # Proof object initial formulas used   : 11
% 0.14/0.38  # Proof object generating inferences   : 7
% 0.14/0.38  # Proof object simplifying inferences  : 13
% 0.14/0.38  # Training examples: 0 positive, 0 negative
% 0.14/0.38  # Parsed axioms                        : 11
% 0.14/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.38  # Initial clauses                      : 17
% 0.14/0.38  # Removed in clause preprocessing      : 3
% 0.14/0.38  # Initial clauses in saturation        : 14
% 0.14/0.38  # Processed clauses                    : 49
% 0.14/0.38  # ...of these trivial                  : 0
% 0.14/0.38  # ...subsumed                          : 6
% 0.14/0.38  # ...remaining for further processing  : 43
% 0.14/0.38  # Other redundant clauses eliminated   : 2
% 0.14/0.38  # Clauses deleted for lack of memory   : 0
% 0.14/0.38  # Backward-subsumed                    : 0
% 0.14/0.38  # Backward-rewritten                   : 5
% 0.14/0.38  # Generated clauses                    : 40
% 0.14/0.38  # ...of the previous two non-trivial   : 31
% 0.14/0.38  # Contextual simplify-reflections      : 0
% 0.14/0.38  # Paramodulations                      : 37
% 0.14/0.38  # Factorizations                       : 1
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
% 0.14/0.38  # Current number of processed clauses  : 23
% 0.14/0.38  #    Positive orientable unit clauses  : 8
% 0.14/0.38  #    Positive unorientable unit clauses: 0
% 0.14/0.38  #    Negative unit clauses             : 3
% 0.14/0.38  #    Non-unit-clauses                  : 12
% 0.14/0.38  # Current number of unprocessed clauses: 6
% 0.14/0.38  # ...number of literals in the above   : 14
% 0.14/0.38  # Current number of archived formulas  : 0
% 0.14/0.38  # Current number of archived clauses   : 21
% 0.14/0.38  # Clause-clause subsumption calls (NU) : 8
% 0.14/0.38  # Rec. Clause-clause subsumption calls : 7
% 0.14/0.38  # Non-unit clause-clause subsumptions  : 1
% 0.14/0.38  # Unit Clause-clause subsumption calls : 3
% 0.14/0.38  # Rewrite failures with RHS unbound    : 0
% 0.14/0.38  # BW rewrite match attempts            : 6
% 0.14/0.38  # BW rewrite match successes           : 4
% 0.14/0.38  # Condensation attempts                : 0
% 0.14/0.38  # Condensation successes               : 0
% 0.14/0.38  # Termbank termtop insertions          : 1220
% 0.14/0.38  
% 0.14/0.38  # -------------------------------------------------
% 0.14/0.38  # User time                : 0.027 s
% 0.14/0.38  # System time              : 0.006 s
% 0.14/0.38  # Total time               : 0.033 s
% 0.14/0.38  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
