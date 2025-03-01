%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:51:53 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   36 (  57 expanded)
%              Number of clauses        :   19 (  24 expanded)
%              Number of leaves         :    8 (  15 expanded)
%              Depth                    :    7
%              Number of atoms          :   85 ( 139 expanded)
%              Number of equality atoms :   20 (  35 expanded)
%              Maximal formula depth    :    7 (   4 average)
%              Maximal clause size      :    3 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t167_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => r1_tarski(k10_relat_1(X2,X1),k1_relat_1(X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t167_relat_1)).

fof(t181_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ! [X3] :
          ( v1_relat_1(X3)
         => k10_relat_1(k5_relat_1(X2,X3),X1) = k10_relat_1(X2,k10_relat_1(X3,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t181_relat_1)).

fof(dt_k5_relat_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X1)
        & v1_relat_1(X2) )
     => v1_relat_1(k5_relat_1(X1,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k5_relat_1)).

fof(t178_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( r1_tarski(X1,X2)
       => r1_tarski(k10_relat_1(X3,X1),k10_relat_1(X3,X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t178_relat_1)).

fof(t169_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k10_relat_1(X1,k2_relat_1(X1)) = k1_relat_1(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t169_relat_1)).

fof(t28_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k3_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_xboole_1)).

fof(commutativity_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(t182_relat_1,conjecture,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => k1_relat_1(k5_relat_1(X1,X2)) = k10_relat_1(X1,k1_relat_1(X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t182_relat_1)).

fof(c_0_8,plain,(
    ! [X10,X11] :
      ( ~ v1_relat_1(X11)
      | r1_tarski(k10_relat_1(X11,X10),k1_relat_1(X11)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t167_relat_1])])).

fof(c_0_9,plain,(
    ! [X16,X17,X18] :
      ( ~ v1_relat_1(X17)
      | ~ v1_relat_1(X18)
      | k10_relat_1(k5_relat_1(X17,X18),X16) = k10_relat_1(X17,k10_relat_1(X18,X16)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t181_relat_1])])])).

fof(c_0_10,plain,(
    ! [X8,X9] :
      ( ~ v1_relat_1(X8)
      | ~ v1_relat_1(X9)
      | v1_relat_1(k5_relat_1(X8,X9)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k5_relat_1])])).

fof(c_0_11,plain,(
    ! [X13,X14,X15] :
      ( ~ v1_relat_1(X15)
      | ~ r1_tarski(X13,X14)
      | r1_tarski(k10_relat_1(X15,X13),k10_relat_1(X15,X14)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t178_relat_1])])).

fof(c_0_12,plain,(
    ! [X12] :
      ( ~ v1_relat_1(X12)
      | k10_relat_1(X12,k2_relat_1(X12)) = k1_relat_1(X12) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t169_relat_1])])).

cnf(c_0_13,plain,
    ( r1_tarski(k10_relat_1(X1,X2),k1_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_14,plain,
    ( k10_relat_1(k5_relat_1(X1,X2),X3) = k10_relat_1(X1,k10_relat_1(X2,X3))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_15,plain,
    ( v1_relat_1(k5_relat_1(X1,X2))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_16,plain,
    ( r1_tarski(k10_relat_1(X1,X2),k10_relat_1(X1,X3))
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_17,plain,
    ( k10_relat_1(X1,k2_relat_1(X1)) = k1_relat_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

fof(c_0_18,plain,(
    ! [X6,X7] :
      ( ~ r1_tarski(X6,X7)
      | k3_xboole_0(X6,X7) = X6 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).

cnf(c_0_19,plain,
    ( r1_tarski(k10_relat_1(X1,k10_relat_1(X2,X3)),k1_relat_1(k5_relat_1(X1,X2)))
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_13,c_0_14]),c_0_15])).

cnf(c_0_20,plain,
    ( r1_tarski(k10_relat_1(X1,k10_relat_1(X2,X3)),k10_relat_1(X1,k1_relat_1(X2)))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2) ),
    inference(spm,[status(thm)],[c_0_16,c_0_13])).

cnf(c_0_21,plain,
    ( k10_relat_1(X1,k10_relat_1(X2,k2_relat_1(k5_relat_1(X1,X2)))) = k1_relat_1(k5_relat_1(X1,X2))
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_17,c_0_14]),c_0_15])).

fof(c_0_22,plain,(
    ! [X4,X5] : k3_xboole_0(X4,X5) = k3_xboole_0(X5,X4) ),
    inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).

fof(c_0_23,negated_conjecture,(
    ~ ! [X1] :
        ( v1_relat_1(X1)
       => ! [X2] :
            ( v1_relat_1(X2)
           => k1_relat_1(k5_relat_1(X1,X2)) = k10_relat_1(X1,k1_relat_1(X2)) ) ) ),
    inference(assume_negation,[status(cth)],[t182_relat_1])).

cnf(c_0_24,plain,
    ( k3_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_25,plain,
    ( r1_tarski(k10_relat_1(X1,k1_relat_1(X2)),k1_relat_1(k5_relat_1(X1,X2)))
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_19,c_0_17])).

cnf(c_0_26,plain,
    ( r1_tarski(k1_relat_1(k5_relat_1(X1,X2)),k10_relat_1(X1,k1_relat_1(X2)))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2) ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

cnf(c_0_27,plain,
    ( k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_28,negated_conjecture,
    ( v1_relat_1(esk1_0)
    & v1_relat_1(esk2_0)
    & k1_relat_1(k5_relat_1(esk1_0,esk2_0)) != k10_relat_1(esk1_0,k1_relat_1(esk2_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_23])])])).

cnf(c_0_29,plain,
    ( k3_xboole_0(k10_relat_1(X1,k1_relat_1(X2)),k1_relat_1(k5_relat_1(X1,X2))) = k10_relat_1(X1,k1_relat_1(X2))
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_30,plain,
    ( k3_xboole_0(k10_relat_1(X1,k1_relat_1(X2)),k1_relat_1(k5_relat_1(X1,X2))) = k1_relat_1(k5_relat_1(X1,X2))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_26]),c_0_27])).

cnf(c_0_31,negated_conjecture,
    ( k1_relat_1(k5_relat_1(esk1_0,esk2_0)) != k10_relat_1(esk1_0,k1_relat_1(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_32,plain,
    ( k1_relat_1(k5_relat_1(X1,X2)) = k10_relat_1(X1,k1_relat_1(X2))
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_33,negated_conjecture,
    ( v1_relat_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_34,negated_conjecture,
    ( v1_relat_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_35,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_33]),c_0_34])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.33  % Computer   : n013.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 20:06:54 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.39  # AutoSched0-Mode selected heuristic G_E___208_B07_F1_SE_CS_SP_PS_S4d
% 0.19/0.39  # and selection function SelectCQIPrecWNTNp.
% 0.19/0.39  #
% 0.19/0.39  # Preprocessing time       : 0.050 s
% 0.19/0.39  # Presaturation interreduction done
% 0.19/0.39  
% 0.19/0.39  # Proof found!
% 0.19/0.39  # SZS status Theorem
% 0.19/0.39  # SZS output start CNFRefutation
% 0.19/0.39  fof(t167_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>r1_tarski(k10_relat_1(X2,X1),k1_relat_1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t167_relat_1)).
% 0.19/0.39  fof(t181_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>![X3]:(v1_relat_1(X3)=>k10_relat_1(k5_relat_1(X2,X3),X1)=k10_relat_1(X2,k10_relat_1(X3,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t181_relat_1)).
% 0.19/0.39  fof(dt_k5_relat_1, axiom, ![X1, X2]:((v1_relat_1(X1)&v1_relat_1(X2))=>v1_relat_1(k5_relat_1(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k5_relat_1)).
% 0.19/0.39  fof(t178_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>(r1_tarski(X1,X2)=>r1_tarski(k10_relat_1(X3,X1),k10_relat_1(X3,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t178_relat_1)).
% 0.19/0.39  fof(t169_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>k10_relat_1(X1,k2_relat_1(X1))=k1_relat_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t169_relat_1)).
% 0.19/0.39  fof(t28_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k3_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t28_xboole_1)).
% 0.19/0.39  fof(commutativity_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k3_xboole_0)).
% 0.19/0.39  fof(t182_relat_1, conjecture, ![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>k1_relat_1(k5_relat_1(X1,X2))=k10_relat_1(X1,k1_relat_1(X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t182_relat_1)).
% 0.19/0.39  fof(c_0_8, plain, ![X10, X11]:(~v1_relat_1(X11)|r1_tarski(k10_relat_1(X11,X10),k1_relat_1(X11))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t167_relat_1])])).
% 0.19/0.39  fof(c_0_9, plain, ![X16, X17, X18]:(~v1_relat_1(X17)|(~v1_relat_1(X18)|k10_relat_1(k5_relat_1(X17,X18),X16)=k10_relat_1(X17,k10_relat_1(X18,X16)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t181_relat_1])])])).
% 0.19/0.39  fof(c_0_10, plain, ![X8, X9]:(~v1_relat_1(X8)|~v1_relat_1(X9)|v1_relat_1(k5_relat_1(X8,X9))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k5_relat_1])])).
% 0.19/0.39  fof(c_0_11, plain, ![X13, X14, X15]:(~v1_relat_1(X15)|(~r1_tarski(X13,X14)|r1_tarski(k10_relat_1(X15,X13),k10_relat_1(X15,X14)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t178_relat_1])])).
% 0.19/0.39  fof(c_0_12, plain, ![X12]:(~v1_relat_1(X12)|k10_relat_1(X12,k2_relat_1(X12))=k1_relat_1(X12)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t169_relat_1])])).
% 0.19/0.39  cnf(c_0_13, plain, (r1_tarski(k10_relat_1(X1,X2),k1_relat_1(X1))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.19/0.39  cnf(c_0_14, plain, (k10_relat_1(k5_relat_1(X1,X2),X3)=k10_relat_1(X1,k10_relat_1(X2,X3))|~v1_relat_1(X1)|~v1_relat_1(X2)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.19/0.39  cnf(c_0_15, plain, (v1_relat_1(k5_relat_1(X1,X2))|~v1_relat_1(X1)|~v1_relat_1(X2)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.19/0.39  cnf(c_0_16, plain, (r1_tarski(k10_relat_1(X1,X2),k10_relat_1(X1,X3))|~v1_relat_1(X1)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.19/0.39  cnf(c_0_17, plain, (k10_relat_1(X1,k2_relat_1(X1))=k1_relat_1(X1)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.39  fof(c_0_18, plain, ![X6, X7]:(~r1_tarski(X6,X7)|k3_xboole_0(X6,X7)=X6), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).
% 0.19/0.39  cnf(c_0_19, plain, (r1_tarski(k10_relat_1(X1,k10_relat_1(X2,X3)),k1_relat_1(k5_relat_1(X1,X2)))|~v1_relat_1(X2)|~v1_relat_1(X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_13, c_0_14]), c_0_15])).
% 0.19/0.39  cnf(c_0_20, plain, (r1_tarski(k10_relat_1(X1,k10_relat_1(X2,X3)),k10_relat_1(X1,k1_relat_1(X2)))|~v1_relat_1(X1)|~v1_relat_1(X2)), inference(spm,[status(thm)],[c_0_16, c_0_13])).
% 0.19/0.39  cnf(c_0_21, plain, (k10_relat_1(X1,k10_relat_1(X2,k2_relat_1(k5_relat_1(X1,X2))))=k1_relat_1(k5_relat_1(X1,X2))|~v1_relat_1(X2)|~v1_relat_1(X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_17, c_0_14]), c_0_15])).
% 0.19/0.39  fof(c_0_22, plain, ![X4, X5]:k3_xboole_0(X4,X5)=k3_xboole_0(X5,X4), inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).
% 0.19/0.39  fof(c_0_23, negated_conjecture, ~(![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>k1_relat_1(k5_relat_1(X1,X2))=k10_relat_1(X1,k1_relat_1(X2))))), inference(assume_negation,[status(cth)],[t182_relat_1])).
% 0.19/0.39  cnf(c_0_24, plain, (k3_xboole_0(X1,X2)=X1|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.39  cnf(c_0_25, plain, (r1_tarski(k10_relat_1(X1,k1_relat_1(X2)),k1_relat_1(k5_relat_1(X1,X2)))|~v1_relat_1(X2)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_19, c_0_17])).
% 0.19/0.39  cnf(c_0_26, plain, (r1_tarski(k1_relat_1(k5_relat_1(X1,X2)),k10_relat_1(X1,k1_relat_1(X2)))|~v1_relat_1(X1)|~v1_relat_1(X2)), inference(spm,[status(thm)],[c_0_20, c_0_21])).
% 0.19/0.39  cnf(c_0_27, plain, (k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.19/0.39  fof(c_0_28, negated_conjecture, (v1_relat_1(esk1_0)&(v1_relat_1(esk2_0)&k1_relat_1(k5_relat_1(esk1_0,esk2_0))!=k10_relat_1(esk1_0,k1_relat_1(esk2_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_23])])])).
% 0.19/0.39  cnf(c_0_29, plain, (k3_xboole_0(k10_relat_1(X1,k1_relat_1(X2)),k1_relat_1(k5_relat_1(X1,X2)))=k10_relat_1(X1,k1_relat_1(X2))|~v1_relat_1(X2)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.19/0.39  cnf(c_0_30, plain, (k3_xboole_0(k10_relat_1(X1,k1_relat_1(X2)),k1_relat_1(k5_relat_1(X1,X2)))=k1_relat_1(k5_relat_1(X1,X2))|~v1_relat_1(X1)|~v1_relat_1(X2)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_26]), c_0_27])).
% 0.19/0.39  cnf(c_0_31, negated_conjecture, (k1_relat_1(k5_relat_1(esk1_0,esk2_0))!=k10_relat_1(esk1_0,k1_relat_1(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.19/0.39  cnf(c_0_32, plain, (k1_relat_1(k5_relat_1(X1,X2))=k10_relat_1(X1,k1_relat_1(X2))|~v1_relat_1(X2)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_29, c_0_30])).
% 0.19/0.39  cnf(c_0_33, negated_conjecture, (v1_relat_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.19/0.39  cnf(c_0_34, negated_conjecture, (v1_relat_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.19/0.39  cnf(c_0_35, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_33]), c_0_34])]), ['proof']).
% 0.19/0.39  # SZS output end CNFRefutation
% 0.19/0.39  # Proof object total steps             : 36
% 0.19/0.39  # Proof object clause steps            : 19
% 0.19/0.39  # Proof object formula steps           : 17
% 0.19/0.39  # Proof object conjectures             : 7
% 0.19/0.39  # Proof object clause conjectures      : 4
% 0.19/0.39  # Proof object formula conjectures     : 3
% 0.19/0.39  # Proof object initial clauses used    : 10
% 0.19/0.39  # Proof object initial formulas used   : 8
% 0.19/0.39  # Proof object generating inferences   : 9
% 0.19/0.39  # Proof object simplifying inferences  : 6
% 0.19/0.39  # Training examples: 0 positive, 0 negative
% 0.19/0.39  # Parsed axioms                        : 8
% 0.19/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.39  # Initial clauses                      : 10
% 0.19/0.39  # Removed in clause preprocessing      : 0
% 0.19/0.39  # Initial clauses in saturation        : 10
% 0.19/0.39  # Processed clauses                    : 49
% 0.19/0.39  # ...of these trivial                  : 0
% 0.19/0.39  # ...subsumed                          : 10
% 0.19/0.39  # ...remaining for further processing  : 39
% 0.19/0.39  # Other redundant clauses eliminated   : 0
% 0.19/0.39  # Clauses deleted for lack of memory   : 0
% 0.19/0.39  # Backward-subsumed                    : 0
% 0.19/0.39  # Backward-rewritten                   : 0
% 0.19/0.39  # Generated clauses                    : 92
% 0.19/0.39  # ...of the previous two non-trivial   : 81
% 0.19/0.39  # Contextual simplify-reflections      : 3
% 0.19/0.39  # Paramodulations                      : 92
% 0.19/0.39  # Factorizations                       : 0
% 0.19/0.39  # Equation resolutions                 : 0
% 0.19/0.39  # Propositional unsat checks           : 0
% 0.19/0.39  #    Propositional check models        : 0
% 0.19/0.39  #    Propositional check unsatisfiable : 0
% 0.19/0.39  #    Propositional clauses             : 0
% 0.19/0.39  #    Propositional clauses after purity: 0
% 0.19/0.39  #    Propositional unsat core size     : 0
% 0.19/0.39  #    Propositional preprocessing time  : 0.000
% 0.19/0.39  #    Propositional encoding time       : 0.000
% 0.19/0.39  #    Propositional solver time         : 0.000
% 0.19/0.39  #    Success case prop preproc time    : 0.000
% 0.19/0.39  #    Success case prop encoding time   : 0.000
% 0.19/0.39  #    Success case prop solver time     : 0.000
% 0.19/0.39  # Current number of processed clauses  : 29
% 0.19/0.39  #    Positive orientable unit clauses  : 2
% 0.19/0.39  #    Positive unorientable unit clauses: 1
% 0.19/0.39  #    Negative unit clauses             : 1
% 0.19/0.39  #    Non-unit-clauses                  : 25
% 0.19/0.39  # Current number of unprocessed clauses: 38
% 0.19/0.39  # ...number of literals in the above   : 159
% 0.19/0.39  # Current number of archived formulas  : 0
% 0.19/0.39  # Current number of archived clauses   : 10
% 0.19/0.39  # Clause-clause subsumption calls (NU) : 120
% 0.19/0.39  # Rec. Clause-clause subsumption calls : 113
% 0.19/0.39  # Non-unit clause-clause subsumptions  : 13
% 0.19/0.39  # Unit Clause-clause subsumption calls : 0
% 0.19/0.39  # Rewrite failures with RHS unbound    : 0
% 0.19/0.39  # BW rewrite match attempts            : 0
% 0.19/0.39  # BW rewrite match successes           : 0
% 0.19/0.39  # Condensation attempts                : 0
% 0.19/0.39  # Condensation successes               : 0
% 0.19/0.39  # Termbank termtop insertions          : 2185
% 0.19/0.39  
% 0.19/0.39  # -------------------------------------------------
% 0.19/0.39  # User time                : 0.054 s
% 0.19/0.39  # System time              : 0.005 s
% 0.19/0.39  # Total time               : 0.059 s
% 0.19/0.39  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
