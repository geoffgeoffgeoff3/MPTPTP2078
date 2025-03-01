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
% DateTime   : Thu Dec  3 10:51:58 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   42 (  96 expanded)
%              Number of clauses        :   25 (  44 expanded)
%              Number of leaves         :    8 (  23 expanded)
%              Depth                    :    9
%              Number of atoms          :   72 ( 164 expanded)
%              Number of equality atoms :   40 (  91 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal clause size      :    7 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t12_setfam_1,axiom,(
    ! [X1,X2] : k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_setfam_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t90_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => k1_relat_1(k7_relat_1(X2,X1)) = k3_xboole_0(k1_relat_1(X2),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t90_relat_1)).

fof(t189_relat_1,conjecture,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => k7_relat_1(X1,k1_relat_1(X2)) = k7_relat_1(X1,k1_relat_1(k7_relat_1(X2,k1_relat_1(X1)))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t189_relat_1)).

fof(commutativity_k2_tarski,axiom,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(t100_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => k7_relat_1(k7_relat_1(X3,X1),X2) = k7_relat_1(X3,k3_xboole_0(X1,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_relat_1)).

fof(t97_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(k1_relat_1(X2),X1)
       => k7_relat_1(X2,X1) = X2 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t97_relat_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(c_0_8,plain,(
    ! [X10,X11] : k1_setfam_1(k2_tarski(X10,X11)) = k3_xboole_0(X10,X11) ),
    inference(variable_rename,[status(thm)],[t12_setfam_1])).

fof(c_0_9,plain,(
    ! [X8,X9] : k1_enumset1(X8,X8,X9) = k2_tarski(X8,X9) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_10,plain,(
    ! [X15,X16] :
      ( ~ v1_relat_1(X16)
      | k1_relat_1(k7_relat_1(X16,X15)) = k3_xboole_0(k1_relat_1(X16),X15) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t90_relat_1])])).

cnf(c_0_11,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_12,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

fof(c_0_13,negated_conjecture,(
    ~ ! [X1] :
        ( v1_relat_1(X1)
       => ! [X2] :
            ( v1_relat_1(X2)
           => k7_relat_1(X1,k1_relat_1(X2)) = k7_relat_1(X1,k1_relat_1(k7_relat_1(X2,k1_relat_1(X1)))) ) ) ),
    inference(assume_negation,[status(cth)],[t189_relat_1])).

cnf(c_0_14,plain,
    ( k1_relat_1(k7_relat_1(X1,X2)) = k3_xboole_0(k1_relat_1(X1),X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_15,plain,
    ( k1_setfam_1(k1_enumset1(X1,X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_11,c_0_12])).

fof(c_0_16,negated_conjecture,
    ( v1_relat_1(esk1_0)
    & v1_relat_1(esk2_0)
    & k7_relat_1(esk1_0,k1_relat_1(esk2_0)) != k7_relat_1(esk1_0,k1_relat_1(k7_relat_1(esk2_0,k1_relat_1(esk1_0)))) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_13])])])).

fof(c_0_17,plain,(
    ! [X6,X7] : k2_tarski(X6,X7) = k2_tarski(X7,X6) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).

cnf(c_0_18,plain,
    ( k1_relat_1(k7_relat_1(X1,X2)) = k1_setfam_1(k1_enumset1(k1_relat_1(X1),k1_relat_1(X1),X2))
    | ~ v1_relat_1(X1) ),
    inference(rw,[status(thm)],[c_0_14,c_0_15])).

cnf(c_0_19,negated_conjecture,
    ( v1_relat_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_20,plain,
    ( k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

fof(c_0_21,plain,(
    ! [X12,X13,X14] :
      ( ~ v1_relat_1(X14)
      | k7_relat_1(k7_relat_1(X14,X12),X13) = k7_relat_1(X14,k3_xboole_0(X12,X13)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t100_relat_1])])).

fof(c_0_22,plain,(
    ! [X17,X18] :
      ( ~ v1_relat_1(X18)
      | ~ r1_tarski(k1_relat_1(X18),X17)
      | k7_relat_1(X18,X17) = X18 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t97_relat_1])])).

fof(c_0_23,plain,(
    ! [X4,X5] :
      ( ( r1_tarski(X4,X5)
        | X4 != X5 )
      & ( r1_tarski(X5,X4)
        | X4 != X5 )
      & ( ~ r1_tarski(X4,X5)
        | ~ r1_tarski(X5,X4)
        | X4 = X5 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_24,negated_conjecture,
    ( v1_relat_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_25,negated_conjecture,
    ( k1_setfam_1(k1_enumset1(k1_relat_1(esk2_0),k1_relat_1(esk2_0),X1)) = k1_relat_1(k7_relat_1(esk2_0,X1)) ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_26,plain,
    ( k1_enumset1(X1,X1,X2) = k1_enumset1(X2,X2,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20,c_0_12]),c_0_12])).

cnf(c_0_27,plain,
    ( k7_relat_1(k7_relat_1(X1,X2),X3) = k7_relat_1(X1,k3_xboole_0(X2,X3))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_28,plain,
    ( k7_relat_1(X1,X2) = X1
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k1_relat_1(X1),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_29,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_30,negated_conjecture,
    ( k1_setfam_1(k1_enumset1(k1_relat_1(esk1_0),k1_relat_1(esk1_0),X1)) = k1_relat_1(k7_relat_1(esk1_0,X1)) ),
    inference(spm,[status(thm)],[c_0_18,c_0_24])).

cnf(c_0_31,negated_conjecture,
    ( k1_setfam_1(k1_enumset1(X1,X1,k1_relat_1(esk2_0))) = k1_relat_1(k7_relat_1(esk2_0,X1)) ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_32,plain,
    ( k7_relat_1(k7_relat_1(X1,X2),X3) = k7_relat_1(X1,k1_setfam_1(k1_enumset1(X2,X2,X3)))
    | ~ v1_relat_1(X1) ),
    inference(rw,[status(thm)],[c_0_27,c_0_15])).

cnf(c_0_33,negated_conjecture,
    ( k7_relat_1(esk1_0,X1) = esk1_0
    | ~ r1_tarski(k1_relat_1(esk1_0),X1) ),
    inference(spm,[status(thm)],[c_0_28,c_0_24])).

cnf(c_0_34,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_29])).

cnf(c_0_35,negated_conjecture,
    ( k7_relat_1(esk1_0,k1_relat_1(esk2_0)) != k7_relat_1(esk1_0,k1_relat_1(k7_relat_1(esk2_0,k1_relat_1(esk1_0)))) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_36,negated_conjecture,
    ( k1_relat_1(k7_relat_1(esk2_0,k1_relat_1(esk1_0))) = k1_relat_1(k7_relat_1(esk1_0,k1_relat_1(esk2_0))) ),
    inference(spm,[status(thm)],[c_0_30,c_0_31])).

cnf(c_0_37,negated_conjecture,
    ( k7_relat_1(esk1_0,k1_setfam_1(k1_enumset1(X1,X1,X2))) = k7_relat_1(k7_relat_1(esk1_0,X1),X2) ),
    inference(spm,[status(thm)],[c_0_32,c_0_24])).

cnf(c_0_38,negated_conjecture,
    ( k7_relat_1(esk1_0,k1_relat_1(esk1_0)) = esk1_0 ),
    inference(spm,[status(thm)],[c_0_33,c_0_34])).

cnf(c_0_39,negated_conjecture,
    ( k7_relat_1(esk1_0,k1_relat_1(k7_relat_1(esk1_0,k1_relat_1(esk2_0)))) != k7_relat_1(esk1_0,k1_relat_1(esk2_0)) ),
    inference(rw,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_40,negated_conjecture,
    ( k7_relat_1(esk1_0,k1_relat_1(k7_relat_1(esk1_0,X1))) = k7_relat_1(esk1_0,X1) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_30]),c_0_38])).

cnf(c_0_41,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_39,c_0_40])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 16:39:52 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S089A
% 0.13/0.37  # and selection function SelectCQPrecW.
% 0.13/0.37  #
% 0.13/0.37  # Preprocessing time       : 0.027 s
% 0.13/0.37  # Presaturation interreduction done
% 0.13/0.37  
% 0.13/0.37  # Proof found!
% 0.13/0.37  # SZS status Theorem
% 0.13/0.37  # SZS output start CNFRefutation
% 0.13/0.37  fof(t12_setfam_1, axiom, ![X1, X2]:k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t12_setfam_1)).
% 0.13/0.37  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.13/0.37  fof(t90_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>k1_relat_1(k7_relat_1(X2,X1))=k3_xboole_0(k1_relat_1(X2),X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t90_relat_1)).
% 0.13/0.37  fof(t189_relat_1, conjecture, ![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>k7_relat_1(X1,k1_relat_1(X2))=k7_relat_1(X1,k1_relat_1(k7_relat_1(X2,k1_relat_1(X1)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t189_relat_1)).
% 0.13/0.37  fof(commutativity_k2_tarski, axiom, ![X1, X2]:k2_tarski(X1,X2)=k2_tarski(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k2_tarski)).
% 0.13/0.37  fof(t100_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>k7_relat_1(k7_relat_1(X3,X1),X2)=k7_relat_1(X3,k3_xboole_0(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t100_relat_1)).
% 0.13/0.37  fof(t97_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(r1_tarski(k1_relat_1(X2),X1)=>k7_relat_1(X2,X1)=X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t97_relat_1)).
% 0.13/0.37  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.13/0.37  fof(c_0_8, plain, ![X10, X11]:k1_setfam_1(k2_tarski(X10,X11))=k3_xboole_0(X10,X11), inference(variable_rename,[status(thm)],[t12_setfam_1])).
% 0.13/0.37  fof(c_0_9, plain, ![X8, X9]:k1_enumset1(X8,X8,X9)=k2_tarski(X8,X9), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.13/0.37  fof(c_0_10, plain, ![X15, X16]:(~v1_relat_1(X16)|k1_relat_1(k7_relat_1(X16,X15))=k3_xboole_0(k1_relat_1(X16),X15)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t90_relat_1])])).
% 0.13/0.37  cnf(c_0_11, plain, (k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.37  cnf(c_0_12, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.37  fof(c_0_13, negated_conjecture, ~(![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>k7_relat_1(X1,k1_relat_1(X2))=k7_relat_1(X1,k1_relat_1(k7_relat_1(X2,k1_relat_1(X1))))))), inference(assume_negation,[status(cth)],[t189_relat_1])).
% 0.13/0.37  cnf(c_0_14, plain, (k1_relat_1(k7_relat_1(X1,X2))=k3_xboole_0(k1_relat_1(X1),X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.37  cnf(c_0_15, plain, (k1_setfam_1(k1_enumset1(X1,X1,X2))=k3_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_11, c_0_12])).
% 0.13/0.37  fof(c_0_16, negated_conjecture, (v1_relat_1(esk1_0)&(v1_relat_1(esk2_0)&k7_relat_1(esk1_0,k1_relat_1(esk2_0))!=k7_relat_1(esk1_0,k1_relat_1(k7_relat_1(esk2_0,k1_relat_1(esk1_0)))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_13])])])).
% 0.13/0.37  fof(c_0_17, plain, ![X6, X7]:k2_tarski(X6,X7)=k2_tarski(X7,X6), inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).
% 0.13/0.37  cnf(c_0_18, plain, (k1_relat_1(k7_relat_1(X1,X2))=k1_setfam_1(k1_enumset1(k1_relat_1(X1),k1_relat_1(X1),X2))|~v1_relat_1(X1)), inference(rw,[status(thm)],[c_0_14, c_0_15])).
% 0.13/0.37  cnf(c_0_19, negated_conjecture, (v1_relat_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.37  cnf(c_0_20, plain, (k2_tarski(X1,X2)=k2_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.13/0.37  fof(c_0_21, plain, ![X12, X13, X14]:(~v1_relat_1(X14)|k7_relat_1(k7_relat_1(X14,X12),X13)=k7_relat_1(X14,k3_xboole_0(X12,X13))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t100_relat_1])])).
% 0.13/0.37  fof(c_0_22, plain, ![X17, X18]:(~v1_relat_1(X18)|(~r1_tarski(k1_relat_1(X18),X17)|k7_relat_1(X18,X17)=X18)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t97_relat_1])])).
% 0.13/0.37  fof(c_0_23, plain, ![X4, X5]:(((r1_tarski(X4,X5)|X4!=X5)&(r1_tarski(X5,X4)|X4!=X5))&(~r1_tarski(X4,X5)|~r1_tarski(X5,X4)|X4=X5)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.13/0.37  cnf(c_0_24, negated_conjecture, (v1_relat_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.37  cnf(c_0_25, negated_conjecture, (k1_setfam_1(k1_enumset1(k1_relat_1(esk2_0),k1_relat_1(esk2_0),X1))=k1_relat_1(k7_relat_1(esk2_0,X1))), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.13/0.37  cnf(c_0_26, plain, (k1_enumset1(X1,X1,X2)=k1_enumset1(X2,X2,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20, c_0_12]), c_0_12])).
% 0.13/0.37  cnf(c_0_27, plain, (k7_relat_1(k7_relat_1(X1,X2),X3)=k7_relat_1(X1,k3_xboole_0(X2,X3))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.13/0.37  cnf(c_0_28, plain, (k7_relat_1(X1,X2)=X1|~v1_relat_1(X1)|~r1_tarski(k1_relat_1(X1),X2)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.13/0.37  cnf(c_0_29, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.37  cnf(c_0_30, negated_conjecture, (k1_setfam_1(k1_enumset1(k1_relat_1(esk1_0),k1_relat_1(esk1_0),X1))=k1_relat_1(k7_relat_1(esk1_0,X1))), inference(spm,[status(thm)],[c_0_18, c_0_24])).
% 0.13/0.37  cnf(c_0_31, negated_conjecture, (k1_setfam_1(k1_enumset1(X1,X1,k1_relat_1(esk2_0)))=k1_relat_1(k7_relat_1(esk2_0,X1))), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.13/0.37  cnf(c_0_32, plain, (k7_relat_1(k7_relat_1(X1,X2),X3)=k7_relat_1(X1,k1_setfam_1(k1_enumset1(X2,X2,X3)))|~v1_relat_1(X1)), inference(rw,[status(thm)],[c_0_27, c_0_15])).
% 0.13/0.37  cnf(c_0_33, negated_conjecture, (k7_relat_1(esk1_0,X1)=esk1_0|~r1_tarski(k1_relat_1(esk1_0),X1)), inference(spm,[status(thm)],[c_0_28, c_0_24])).
% 0.13/0.37  cnf(c_0_34, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_29])).
% 0.13/0.37  cnf(c_0_35, negated_conjecture, (k7_relat_1(esk1_0,k1_relat_1(esk2_0))!=k7_relat_1(esk1_0,k1_relat_1(k7_relat_1(esk2_0,k1_relat_1(esk1_0))))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.37  cnf(c_0_36, negated_conjecture, (k1_relat_1(k7_relat_1(esk2_0,k1_relat_1(esk1_0)))=k1_relat_1(k7_relat_1(esk1_0,k1_relat_1(esk2_0)))), inference(spm,[status(thm)],[c_0_30, c_0_31])).
% 0.13/0.37  cnf(c_0_37, negated_conjecture, (k7_relat_1(esk1_0,k1_setfam_1(k1_enumset1(X1,X1,X2)))=k7_relat_1(k7_relat_1(esk1_0,X1),X2)), inference(spm,[status(thm)],[c_0_32, c_0_24])).
% 0.13/0.37  cnf(c_0_38, negated_conjecture, (k7_relat_1(esk1_0,k1_relat_1(esk1_0))=esk1_0), inference(spm,[status(thm)],[c_0_33, c_0_34])).
% 0.13/0.37  cnf(c_0_39, negated_conjecture, (k7_relat_1(esk1_0,k1_relat_1(k7_relat_1(esk1_0,k1_relat_1(esk2_0))))!=k7_relat_1(esk1_0,k1_relat_1(esk2_0))), inference(rw,[status(thm)],[c_0_35, c_0_36])).
% 0.13/0.37  cnf(c_0_40, negated_conjecture, (k7_relat_1(esk1_0,k1_relat_1(k7_relat_1(esk1_0,X1)))=k7_relat_1(esk1_0,X1)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_30]), c_0_38])).
% 0.13/0.37  cnf(c_0_41, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_39, c_0_40])]), ['proof']).
% 0.13/0.37  # SZS output end CNFRefutation
% 0.13/0.37  # Proof object total steps             : 42
% 0.13/0.37  # Proof object clause steps            : 25
% 0.13/0.37  # Proof object formula steps           : 17
% 0.13/0.37  # Proof object conjectures             : 16
% 0.13/0.37  # Proof object clause conjectures      : 13
% 0.13/0.37  # Proof object formula conjectures     : 3
% 0.13/0.37  # Proof object initial clauses used    : 10
% 0.13/0.37  # Proof object initial formulas used   : 8
% 0.13/0.37  # Proof object generating inferences   : 8
% 0.13/0.37  # Proof object simplifying inferences  : 10
% 0.13/0.37  # Training examples: 0 positive, 0 negative
% 0.13/0.37  # Parsed axioms                        : 8
% 0.13/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.37  # Initial clauses                      : 12
% 0.13/0.37  # Removed in clause preprocessing      : 2
% 0.13/0.37  # Initial clauses in saturation        : 10
% 0.13/0.37  # Processed clauses                    : 40
% 0.13/0.37  # ...of these trivial                  : 1
% 0.13/0.37  # ...subsumed                          : 0
% 0.13/0.37  # ...remaining for further processing  : 39
% 0.13/0.37  # Other redundant clauses eliminated   : 2
% 0.13/0.37  # Clauses deleted for lack of memory   : 0
% 0.13/0.37  # Backward-subsumed                    : 0
% 0.13/0.37  # Backward-rewritten                   : 3
% 0.13/0.37  # Generated clauses                    : 52
% 0.13/0.37  # ...of the previous two non-trivial   : 34
% 0.13/0.37  # Contextual simplify-reflections      : 0
% 0.13/0.37  # Paramodulations                      : 50
% 0.13/0.37  # Factorizations                       : 0
% 0.13/0.37  # Equation resolutions                 : 2
% 0.13/0.37  # Propositional unsat checks           : 0
% 0.13/0.37  #    Propositional check models        : 0
% 0.13/0.37  #    Propositional check unsatisfiable : 0
% 0.13/0.37  #    Propositional clauses             : 0
% 0.13/0.37  #    Propositional clauses after purity: 0
% 0.13/0.37  #    Propositional unsat core size     : 0
% 0.13/0.37  #    Propositional preprocessing time  : 0.000
% 0.13/0.37  #    Propositional encoding time       : 0.000
% 0.13/0.37  #    Propositional solver time         : 0.000
% 0.13/0.37  #    Success case prop preproc time    : 0.000
% 0.13/0.37  #    Success case prop encoding time   : 0.000
% 0.13/0.37  #    Success case prop solver time     : 0.000
% 0.13/0.37  # Current number of processed clauses  : 25
% 0.13/0.37  #    Positive orientable unit clauses  : 18
% 0.13/0.37  #    Positive unorientable unit clauses: 1
% 0.13/0.37  #    Negative unit clauses             : 0
% 0.13/0.37  #    Non-unit-clauses                  : 6
% 0.13/0.37  # Current number of unprocessed clauses: 13
% 0.13/0.37  # ...number of literals in the above   : 13
% 0.13/0.37  # Current number of archived formulas  : 0
% 0.13/0.37  # Current number of archived clauses   : 14
% 0.13/0.37  # Clause-clause subsumption calls (NU) : 0
% 0.13/0.37  # Rec. Clause-clause subsumption calls : 0
% 0.13/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.13/0.37  # Unit Clause-clause subsumption calls : 4
% 0.13/0.37  # Rewrite failures with RHS unbound    : 0
% 0.13/0.37  # BW rewrite match attempts            : 19
% 0.13/0.37  # BW rewrite match successes           : 2
% 0.13/0.37  # Condensation attempts                : 0
% 0.13/0.37  # Condensation successes               : 0
% 0.13/0.37  # Termbank termtop insertions          : 1422
% 0.13/0.37  
% 0.13/0.37  # -------------------------------------------------
% 0.13/0.37  # User time                : 0.028 s
% 0.13/0.37  # System time              : 0.005 s
% 0.13/0.37  # Total time               : 0.032 s
% 0.13/0.37  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
