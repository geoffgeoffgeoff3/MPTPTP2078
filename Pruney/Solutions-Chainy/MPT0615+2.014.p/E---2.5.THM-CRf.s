%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:52:49 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   33 ( 107 expanded)
%              Number of clauses        :   20 (  45 expanded)
%              Number of leaves         :    6 (  26 expanded)
%              Depth                    :    8
%              Number of atoms          :   74 ( 288 expanded)
%              Number of equality atoms :    8 (  25 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal clause size      :    6 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t219_relat_1,conjecture,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => ( r1_tarski(X1,X2)
          <=> r1_tarski(X1,k7_relat_1(X2,k1_relat_1(X1))) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t219_relat_1)).

fof(t12_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k2_xboole_0(X1,X2) = X2 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_xboole_1)).

fof(t88_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => r1_tarski(k7_relat_1(X2,X1),X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t88_relat_1)).

fof(t98_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k7_relat_1(X1,k1_relat_1(X1)) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t98_relat_1)).

fof(t11_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(k2_xboole_0(X1,X2),X3)
     => r1_tarski(X1,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t11_xboole_1)).

fof(t105_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ! [X3] :
          ( v1_relat_1(X3)
         => ( r1_tarski(X2,X3)
           => r1_tarski(k7_relat_1(X2,X1),k7_relat_1(X3,X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t105_relat_1)).

fof(c_0_6,negated_conjecture,(
    ~ ! [X1] :
        ( v1_relat_1(X1)
       => ! [X2] :
            ( v1_relat_1(X2)
           => ( r1_tarski(X1,X2)
            <=> r1_tarski(X1,k7_relat_1(X2,k1_relat_1(X1))) ) ) ) ),
    inference(assume_negation,[status(cth)],[t219_relat_1])).

fof(c_0_7,plain,(
    ! [X7,X8] :
      ( ~ r1_tarski(X7,X8)
      | k2_xboole_0(X7,X8) = X8 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).

fof(c_0_8,plain,(
    ! [X12,X13] :
      ( ~ v1_relat_1(X13)
      | r1_tarski(k7_relat_1(X13,X12),X13) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t88_relat_1])])).

fof(c_0_9,plain,(
    ! [X14] :
      ( ~ v1_relat_1(X14)
      | k7_relat_1(X14,k1_relat_1(X14)) = X14 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t98_relat_1])])).

fof(c_0_10,negated_conjecture,
    ( v1_relat_1(esk1_0)
    & v1_relat_1(esk2_0)
    & ( ~ r1_tarski(esk1_0,esk2_0)
      | ~ r1_tarski(esk1_0,k7_relat_1(esk2_0,k1_relat_1(esk1_0))) )
    & ( r1_tarski(esk1_0,esk2_0)
      | r1_tarski(esk1_0,k7_relat_1(esk2_0,k1_relat_1(esk1_0))) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).

fof(c_0_11,plain,(
    ! [X4,X5,X6] :
      ( ~ r1_tarski(k2_xboole_0(X4,X5),X6)
      | r1_tarski(X4,X6) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t11_xboole_1])])).

cnf(c_0_12,plain,
    ( k2_xboole_0(X1,X2) = X2
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_13,plain,
    ( r1_tarski(k7_relat_1(X1,X2),X1)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_14,plain,
    ( k7_relat_1(X1,k1_relat_1(X1)) = X1
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_15,negated_conjecture,
    ( r1_tarski(esk1_0,esk2_0)
    | r1_tarski(esk1_0,k7_relat_1(esk2_0,k1_relat_1(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_16,plain,
    ( r1_tarski(X1,X3)
    | ~ r1_tarski(k2_xboole_0(X1,X2),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_17,plain,
    ( k2_xboole_0(k7_relat_1(X1,X2),X1) = X1
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_12,c_0_13])).

cnf(c_0_18,plain,
    ( r1_tarski(X1,X1)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_13,c_0_14])).

cnf(c_0_19,negated_conjecture,
    ( v1_relat_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_20,negated_conjecture,
    ( k2_xboole_0(esk1_0,k7_relat_1(esk2_0,k1_relat_1(esk1_0))) = k7_relat_1(esk2_0,k1_relat_1(esk1_0))
    | r1_tarski(esk1_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_12,c_0_15])).

cnf(c_0_21,plain,
    ( r1_tarski(k7_relat_1(X1,X2),X3)
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(X1,X3) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_22,negated_conjecture,
    ( r1_tarski(esk2_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

fof(c_0_23,plain,(
    ! [X9,X10,X11] :
      ( ~ v1_relat_1(X10)
      | ~ v1_relat_1(X11)
      | ~ r1_tarski(X10,X11)
      | r1_tarski(k7_relat_1(X10,X9),k7_relat_1(X11,X9)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t105_relat_1])])])).

cnf(c_0_24,negated_conjecture,
    ( r1_tarski(esk1_0,esk2_0)
    | r1_tarski(esk1_0,X1)
    | ~ r1_tarski(k7_relat_1(esk2_0,k1_relat_1(esk1_0)),X1) ),
    inference(spm,[status(thm)],[c_0_16,c_0_20])).

cnf(c_0_25,negated_conjecture,
    ( r1_tarski(k7_relat_1(esk2_0,X1),esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21,c_0_22]),c_0_19])])).

cnf(c_0_26,plain,
    ( r1_tarski(k7_relat_1(X1,X3),k7_relat_1(X2,X3))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_27,negated_conjecture,
    ( r1_tarski(esk1_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_28,negated_conjecture,
    ( v1_relat_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_29,negated_conjecture,
    ( ~ r1_tarski(esk1_0,esk2_0)
    | ~ r1_tarski(esk1_0,k7_relat_1(esk2_0,k1_relat_1(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_30,negated_conjecture,
    ( r1_tarski(k7_relat_1(esk1_0,X1),k7_relat_1(esk2_0,X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_19]),c_0_28])])).

cnf(c_0_31,negated_conjecture,
    ( ~ r1_tarski(esk1_0,k7_relat_1(esk2_0,k1_relat_1(esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_29,c_0_27])])).

cnf(c_0_32,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_14]),c_0_28])]),c_0_31]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n010.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 12:15:44 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  # Version: 2.5pre002
% 0.12/0.33  # No SInE strategy applied
% 0.12/0.33  # Trying AutoSched0 for 299 seconds
% 0.12/0.36  # AutoSched0-Mode selected heuristic H_____047_C18_F1_PI_AE_R8_CS_SP_S2S
% 0.12/0.36  # and selection function SelectNewComplexAHP.
% 0.12/0.36  #
% 0.12/0.36  # Preprocessing time       : 0.027 s
% 0.12/0.36  
% 0.12/0.36  # Proof found!
% 0.12/0.36  # SZS status Theorem
% 0.12/0.36  # SZS output start CNFRefutation
% 0.12/0.36  fof(t219_relat_1, conjecture, ![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>(r1_tarski(X1,X2)<=>r1_tarski(X1,k7_relat_1(X2,k1_relat_1(X1)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t219_relat_1)).
% 0.12/0.36  fof(t12_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k2_xboole_0(X1,X2)=X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t12_xboole_1)).
% 0.12/0.36  fof(t88_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>r1_tarski(k7_relat_1(X2,X1),X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t88_relat_1)).
% 0.12/0.36  fof(t98_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>k7_relat_1(X1,k1_relat_1(X1))=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t98_relat_1)).
% 0.12/0.36  fof(t11_xboole_1, axiom, ![X1, X2, X3]:(r1_tarski(k2_xboole_0(X1,X2),X3)=>r1_tarski(X1,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t11_xboole_1)).
% 0.12/0.36  fof(t105_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>![X3]:(v1_relat_1(X3)=>(r1_tarski(X2,X3)=>r1_tarski(k7_relat_1(X2,X1),k7_relat_1(X3,X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t105_relat_1)).
% 0.12/0.36  fof(c_0_6, negated_conjecture, ~(![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>(r1_tarski(X1,X2)<=>r1_tarski(X1,k7_relat_1(X2,k1_relat_1(X1))))))), inference(assume_negation,[status(cth)],[t219_relat_1])).
% 0.12/0.36  fof(c_0_7, plain, ![X7, X8]:(~r1_tarski(X7,X8)|k2_xboole_0(X7,X8)=X8), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).
% 0.12/0.36  fof(c_0_8, plain, ![X12, X13]:(~v1_relat_1(X13)|r1_tarski(k7_relat_1(X13,X12),X13)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t88_relat_1])])).
% 0.12/0.36  fof(c_0_9, plain, ![X14]:(~v1_relat_1(X14)|k7_relat_1(X14,k1_relat_1(X14))=X14), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t98_relat_1])])).
% 0.12/0.36  fof(c_0_10, negated_conjecture, (v1_relat_1(esk1_0)&(v1_relat_1(esk2_0)&((~r1_tarski(esk1_0,esk2_0)|~r1_tarski(esk1_0,k7_relat_1(esk2_0,k1_relat_1(esk1_0))))&(r1_tarski(esk1_0,esk2_0)|r1_tarski(esk1_0,k7_relat_1(esk2_0,k1_relat_1(esk1_0))))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).
% 0.12/0.36  fof(c_0_11, plain, ![X4, X5, X6]:(~r1_tarski(k2_xboole_0(X4,X5),X6)|r1_tarski(X4,X6)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t11_xboole_1])])).
% 0.12/0.36  cnf(c_0_12, plain, (k2_xboole_0(X1,X2)=X2|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.36  cnf(c_0_13, plain, (r1_tarski(k7_relat_1(X1,X2),X1)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.36  cnf(c_0_14, plain, (k7_relat_1(X1,k1_relat_1(X1))=X1|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.36  cnf(c_0_15, negated_conjecture, (r1_tarski(esk1_0,esk2_0)|r1_tarski(esk1_0,k7_relat_1(esk2_0,k1_relat_1(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.12/0.36  cnf(c_0_16, plain, (r1_tarski(X1,X3)|~r1_tarski(k2_xboole_0(X1,X2),X3)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.12/0.36  cnf(c_0_17, plain, (k2_xboole_0(k7_relat_1(X1,X2),X1)=X1|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_12, c_0_13])).
% 0.12/0.36  cnf(c_0_18, plain, (r1_tarski(X1,X1)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_13, c_0_14])).
% 0.12/0.36  cnf(c_0_19, negated_conjecture, (v1_relat_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.12/0.36  cnf(c_0_20, negated_conjecture, (k2_xboole_0(esk1_0,k7_relat_1(esk2_0,k1_relat_1(esk1_0)))=k7_relat_1(esk2_0,k1_relat_1(esk1_0))|r1_tarski(esk1_0,esk2_0)), inference(spm,[status(thm)],[c_0_12, c_0_15])).
% 0.12/0.36  cnf(c_0_21, plain, (r1_tarski(k7_relat_1(X1,X2),X3)|~v1_relat_1(X1)|~r1_tarski(X1,X3)), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.12/0.36  cnf(c_0_22, negated_conjecture, (r1_tarski(esk2_0,esk2_0)), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.12/0.36  fof(c_0_23, plain, ![X9, X10, X11]:(~v1_relat_1(X10)|(~v1_relat_1(X11)|(~r1_tarski(X10,X11)|r1_tarski(k7_relat_1(X10,X9),k7_relat_1(X11,X9))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t105_relat_1])])])).
% 0.12/0.36  cnf(c_0_24, negated_conjecture, (r1_tarski(esk1_0,esk2_0)|r1_tarski(esk1_0,X1)|~r1_tarski(k7_relat_1(esk2_0,k1_relat_1(esk1_0)),X1)), inference(spm,[status(thm)],[c_0_16, c_0_20])).
% 0.12/0.36  cnf(c_0_25, negated_conjecture, (r1_tarski(k7_relat_1(esk2_0,X1),esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21, c_0_22]), c_0_19])])).
% 0.12/0.36  cnf(c_0_26, plain, (r1_tarski(k7_relat_1(X1,X3),k7_relat_1(X2,X3))|~v1_relat_1(X1)|~v1_relat_1(X2)|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.12/0.36  cnf(c_0_27, negated_conjecture, (r1_tarski(esk1_0,esk2_0)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.12/0.36  cnf(c_0_28, negated_conjecture, (v1_relat_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.12/0.36  cnf(c_0_29, negated_conjecture, (~r1_tarski(esk1_0,esk2_0)|~r1_tarski(esk1_0,k7_relat_1(esk2_0,k1_relat_1(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.12/0.36  cnf(c_0_30, negated_conjecture, (r1_tarski(k7_relat_1(esk1_0,X1),k7_relat_1(esk2_0,X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_19]), c_0_28])])).
% 0.12/0.36  cnf(c_0_31, negated_conjecture, (~r1_tarski(esk1_0,k7_relat_1(esk2_0,k1_relat_1(esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_29, c_0_27])])).
% 0.12/0.36  cnf(c_0_32, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_14]), c_0_28])]), c_0_31]), ['proof']).
% 0.12/0.36  # SZS output end CNFRefutation
% 0.12/0.36  # Proof object total steps             : 33
% 0.12/0.36  # Proof object clause steps            : 20
% 0.12/0.36  # Proof object formula steps           : 13
% 0.12/0.36  # Proof object conjectures             : 15
% 0.12/0.36  # Proof object clause conjectures      : 12
% 0.12/0.36  # Proof object formula conjectures     : 3
% 0.12/0.36  # Proof object initial clauses used    : 9
% 0.12/0.36  # Proof object initial formulas used   : 6
% 0.12/0.36  # Proof object generating inferences   : 10
% 0.12/0.36  # Proof object simplifying inferences  : 10
% 0.12/0.36  # Training examples: 0 positive, 0 negative
% 0.12/0.36  # Parsed axioms                        : 6
% 0.12/0.36  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.36  # Initial clauses                      : 9
% 0.12/0.36  # Removed in clause preprocessing      : 0
% 0.12/0.36  # Initial clauses in saturation        : 9
% 0.12/0.36  # Processed clauses                    : 51
% 0.12/0.36  # ...of these trivial                  : 1
% 0.12/0.36  # ...subsumed                          : 8
% 0.12/0.36  # ...remaining for further processing  : 42
% 0.12/0.36  # Other redundant clauses eliminated   : 0
% 0.12/0.36  # Clauses deleted for lack of memory   : 0
% 0.12/0.36  # Backward-subsumed                    : 0
% 0.12/0.36  # Backward-rewritten                   : 5
% 0.12/0.36  # Generated clauses                    : 101
% 0.12/0.36  # ...of the previous two non-trivial   : 68
% 0.12/0.36  # Contextual simplify-reflections      : 0
% 0.12/0.36  # Paramodulations                      : 101
% 0.12/0.36  # Factorizations                       : 0
% 0.12/0.36  # Equation resolutions                 : 0
% 0.12/0.36  # Propositional unsat checks           : 0
% 0.12/0.36  #    Propositional check models        : 0
% 0.12/0.36  #    Propositional check unsatisfiable : 0
% 0.12/0.36  #    Propositional clauses             : 0
% 0.12/0.36  #    Propositional clauses after purity: 0
% 0.12/0.36  #    Propositional unsat core size     : 0
% 0.12/0.36  #    Propositional preprocessing time  : 0.000
% 0.12/0.36  #    Propositional encoding time       : 0.000
% 0.12/0.36  #    Propositional solver time         : 0.000
% 0.12/0.36  #    Success case prop preproc time    : 0.000
% 0.12/0.36  #    Success case prop encoding time   : 0.000
% 0.12/0.36  #    Success case prop solver time     : 0.000
% 0.12/0.36  # Current number of processed clauses  : 37
% 0.12/0.36  #    Positive orientable unit clauses  : 19
% 0.12/0.36  #    Positive unorientable unit clauses: 0
% 0.12/0.36  #    Negative unit clauses             : 1
% 0.12/0.36  #    Non-unit-clauses                  : 17
% 0.12/0.36  # Current number of unprocessed clauses: 22
% 0.12/0.36  # ...number of literals in the above   : 53
% 0.12/0.36  # Current number of archived formulas  : 0
% 0.12/0.36  # Current number of archived clauses   : 5
% 0.12/0.36  # Clause-clause subsumption calls (NU) : 46
% 0.12/0.36  # Rec. Clause-clause subsumption calls : 42
% 0.12/0.36  # Non-unit clause-clause subsumptions  : 8
% 0.12/0.36  # Unit Clause-clause subsumption calls : 6
% 0.12/0.36  # Rewrite failures with RHS unbound    : 0
% 0.12/0.36  # BW rewrite match attempts            : 1
% 0.12/0.36  # BW rewrite match successes           : 1
% 0.12/0.36  # Condensation attempts                : 0
% 0.12/0.36  # Condensation successes               : 0
% 0.12/0.36  # Termbank termtop insertions          : 1806
% 0.12/0.36  
% 0.12/0.36  # -------------------------------------------------
% 0.12/0.36  # User time                : 0.025 s
% 0.12/0.36  # System time              : 0.008 s
% 0.12/0.36  # Total time               : 0.033 s
% 0.12/0.36  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
