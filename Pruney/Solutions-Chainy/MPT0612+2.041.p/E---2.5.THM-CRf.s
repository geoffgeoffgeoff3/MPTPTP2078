%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:52:45 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   33 (  49 expanded)
%              Number of clauses        :   18 (  21 expanded)
%              Number of leaves         :    7 (  12 expanded)
%              Depth                    :    7
%              Number of atoms          :   64 (  98 expanded)
%              Number of equality atoms :   20 (  35 expanded)
%              Maximal formula depth    :    7 (   4 average)
%              Maximal clause size      :    3 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(symmetry_r1_xboole_0,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
     => r1_xboole_0(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).

fof(t85_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(X1,X2)
     => r1_xboole_0(X1,k4_xboole_0(X3,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t85_xboole_1)).

fof(t207_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( r1_xboole_0(X1,X2)
       => k7_relat_1(k7_relat_1(X3,X1),X2) = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t207_relat_1)).

fof(t216_relat_1,conjecture,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( r1_tarski(X1,X2)
       => k7_relat_1(k6_subset_1(X3,k7_relat_1(X3,X2)),X1) = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t216_relat_1)).

fof(t211_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( r1_tarski(k1_relat_1(X3),X1)
       => k6_subset_1(X3,k7_relat_1(X3,X2)) = k7_relat_1(X3,k6_subset_1(X1,X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t211_relat_1)).

fof(redefinition_k6_subset_1,axiom,(
    ! [X1,X2] : k6_subset_1(X1,X2) = k4_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k6_subset_1)).

fof(t7_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_1)).

fof(c_0_7,plain,(
    ! [X4,X5] :
      ( ~ r1_xboole_0(X4,X5)
      | r1_xboole_0(X5,X4) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).

fof(c_0_8,plain,(
    ! [X8,X9,X10] :
      ( ~ r1_tarski(X8,X9)
      | r1_xboole_0(X8,k4_xboole_0(X10,X9)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t85_xboole_1])])).

fof(c_0_9,plain,(
    ! [X13,X14,X15] :
      ( ~ v1_relat_1(X15)
      | ~ r1_xboole_0(X13,X14)
      | k7_relat_1(k7_relat_1(X15,X13),X14) = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t207_relat_1])])).

cnf(c_0_10,plain,
    ( r1_xboole_0(X2,X1)
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_11,plain,
    ( r1_xboole_0(X1,k4_xboole_0(X3,X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

fof(c_0_12,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( v1_relat_1(X3)
       => ( r1_tarski(X1,X2)
         => k7_relat_1(k6_subset_1(X3,k7_relat_1(X3,X2)),X1) = k1_xboole_0 ) ) ),
    inference(assume_negation,[status(cth)],[t216_relat_1])).

fof(c_0_13,plain,(
    ! [X16,X17,X18] :
      ( ~ v1_relat_1(X18)
      | ~ r1_tarski(k1_relat_1(X18),X16)
      | k6_subset_1(X18,k7_relat_1(X18,X17)) = k7_relat_1(X18,k6_subset_1(X16,X17)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t211_relat_1])])).

fof(c_0_14,plain,(
    ! [X11,X12] : k6_subset_1(X11,X12) = k4_xboole_0(X11,X12) ),
    inference(variable_rename,[status(thm)],[redefinition_k6_subset_1])).

cnf(c_0_15,plain,
    ( k7_relat_1(k7_relat_1(X1,X2),X3) = k1_xboole_0
    | ~ v1_relat_1(X1)
    | ~ r1_xboole_0(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_16,plain,
    ( r1_xboole_0(k4_xboole_0(X1,X2),X3)
    | ~ r1_tarski(X3,X2) ),
    inference(spm,[status(thm)],[c_0_10,c_0_11])).

fof(c_0_17,negated_conjecture,
    ( v1_relat_1(esk3_0)
    & r1_tarski(esk1_0,esk2_0)
    & k7_relat_1(k6_subset_1(esk3_0,k7_relat_1(esk3_0,esk2_0)),esk1_0) != k1_xboole_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_12])])])).

cnf(c_0_18,plain,
    ( k6_subset_1(X1,k7_relat_1(X1,X3)) = k7_relat_1(X1,k6_subset_1(X2,X3))
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k1_relat_1(X1),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_19,plain,
    ( k6_subset_1(X1,X2) = k4_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_20,plain,(
    ! [X6,X7] : r1_tarski(X6,k2_xboole_0(X6,X7)) ),
    inference(variable_rename,[status(thm)],[t7_xboole_1])).

cnf(c_0_21,plain,
    ( k7_relat_1(k7_relat_1(X1,k4_xboole_0(X2,X3)),X4) = k1_xboole_0
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(X4,X3) ),
    inference(spm,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_22,negated_conjecture,
    ( r1_tarski(esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_23,plain,
    ( k7_relat_1(X1,k4_xboole_0(X2,X3)) = k4_xboole_0(X1,k7_relat_1(X1,X3))
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k1_relat_1(X1),X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_18,c_0_19]),c_0_19])).

cnf(c_0_24,plain,
    ( r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_25,negated_conjecture,
    ( k7_relat_1(k7_relat_1(X1,k4_xboole_0(X2,esk2_0)),esk1_0) = k1_xboole_0
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_26,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_27,plain,
    ( k7_relat_1(X1,k4_xboole_0(k2_xboole_0(k1_relat_1(X1),X2),X3)) = k4_xboole_0(X1,k7_relat_1(X1,X3))
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_23,c_0_24])).

cnf(c_0_28,negated_conjecture,
    ( k7_relat_1(k6_subset_1(esk3_0,k7_relat_1(esk3_0,esk2_0)),esk1_0) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_29,negated_conjecture,
    ( k7_relat_1(k7_relat_1(esk3_0,k4_xboole_0(X1,esk2_0)),esk1_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_30,negated_conjecture,
    ( k7_relat_1(esk3_0,k4_xboole_0(k2_xboole_0(k1_relat_1(esk3_0),X1),X2)) = k4_xboole_0(esk3_0,k7_relat_1(esk3_0,X2)) ),
    inference(spm,[status(thm)],[c_0_27,c_0_26])).

cnf(c_0_31,negated_conjecture,
    ( k7_relat_1(k4_xboole_0(esk3_0,k7_relat_1(esk3_0,esk2_0)),esk1_0) != k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_28,c_0_19])).

cnf(c_0_32,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30]),c_0_31]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.35  % Computer   : n023.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 16:38:21 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.20/0.38  # AutoSched0-Mode selected heuristic G_E___208_B00_00_F1_SE_CS_SP_PS_S070I
% 0.20/0.38  # and selection function SelectVGNonCR.
% 0.20/0.38  #
% 0.20/0.38  # Preprocessing time       : 0.027 s
% 0.20/0.38  # Presaturation interreduction done
% 0.20/0.38  
% 0.20/0.38  # Proof found!
% 0.20/0.38  # SZS status Theorem
% 0.20/0.38  # SZS output start CNFRefutation
% 0.20/0.38  fof(symmetry_r1_xboole_0, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)=>r1_xboole_0(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', symmetry_r1_xboole_0)).
% 0.20/0.38  fof(t85_xboole_1, axiom, ![X1, X2, X3]:(r1_tarski(X1,X2)=>r1_xboole_0(X1,k4_xboole_0(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t85_xboole_1)).
% 0.20/0.38  fof(t207_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>(r1_xboole_0(X1,X2)=>k7_relat_1(k7_relat_1(X3,X1),X2)=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t207_relat_1)).
% 0.20/0.38  fof(t216_relat_1, conjecture, ![X1, X2, X3]:(v1_relat_1(X3)=>(r1_tarski(X1,X2)=>k7_relat_1(k6_subset_1(X3,k7_relat_1(X3,X2)),X1)=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t216_relat_1)).
% 0.20/0.38  fof(t211_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>(r1_tarski(k1_relat_1(X3),X1)=>k6_subset_1(X3,k7_relat_1(X3,X2))=k7_relat_1(X3,k6_subset_1(X1,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t211_relat_1)).
% 0.20/0.38  fof(redefinition_k6_subset_1, axiom, ![X1, X2]:k6_subset_1(X1,X2)=k4_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k6_subset_1)).
% 0.20/0.38  fof(t7_xboole_1, axiom, ![X1, X2]:r1_tarski(X1,k2_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_xboole_1)).
% 0.20/0.38  fof(c_0_7, plain, ![X4, X5]:(~r1_xboole_0(X4,X5)|r1_xboole_0(X5,X4)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).
% 0.20/0.38  fof(c_0_8, plain, ![X8, X9, X10]:(~r1_tarski(X8,X9)|r1_xboole_0(X8,k4_xboole_0(X10,X9))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t85_xboole_1])])).
% 0.20/0.38  fof(c_0_9, plain, ![X13, X14, X15]:(~v1_relat_1(X15)|(~r1_xboole_0(X13,X14)|k7_relat_1(k7_relat_1(X15,X13),X14)=k1_xboole_0)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t207_relat_1])])).
% 0.20/0.38  cnf(c_0_10, plain, (r1_xboole_0(X2,X1)|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.20/0.38  cnf(c_0_11, plain, (r1_xboole_0(X1,k4_xboole_0(X3,X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.38  fof(c_0_12, negated_conjecture, ~(![X1, X2, X3]:(v1_relat_1(X3)=>(r1_tarski(X1,X2)=>k7_relat_1(k6_subset_1(X3,k7_relat_1(X3,X2)),X1)=k1_xboole_0))), inference(assume_negation,[status(cth)],[t216_relat_1])).
% 0.20/0.38  fof(c_0_13, plain, ![X16, X17, X18]:(~v1_relat_1(X18)|(~r1_tarski(k1_relat_1(X18),X16)|k6_subset_1(X18,k7_relat_1(X18,X17))=k7_relat_1(X18,k6_subset_1(X16,X17)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t211_relat_1])])).
% 0.20/0.38  fof(c_0_14, plain, ![X11, X12]:k6_subset_1(X11,X12)=k4_xboole_0(X11,X12), inference(variable_rename,[status(thm)],[redefinition_k6_subset_1])).
% 0.20/0.38  cnf(c_0_15, plain, (k7_relat_1(k7_relat_1(X1,X2),X3)=k1_xboole_0|~v1_relat_1(X1)|~r1_xboole_0(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.20/0.38  cnf(c_0_16, plain, (r1_xboole_0(k4_xboole_0(X1,X2),X3)|~r1_tarski(X3,X2)), inference(spm,[status(thm)],[c_0_10, c_0_11])).
% 0.20/0.38  fof(c_0_17, negated_conjecture, (v1_relat_1(esk3_0)&(r1_tarski(esk1_0,esk2_0)&k7_relat_1(k6_subset_1(esk3_0,k7_relat_1(esk3_0,esk2_0)),esk1_0)!=k1_xboole_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_12])])])).
% 0.20/0.38  cnf(c_0_18, plain, (k6_subset_1(X1,k7_relat_1(X1,X3))=k7_relat_1(X1,k6_subset_1(X2,X3))|~v1_relat_1(X1)|~r1_tarski(k1_relat_1(X1),X2)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.20/0.38  cnf(c_0_19, plain, (k6_subset_1(X1,X2)=k4_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.20/0.38  fof(c_0_20, plain, ![X6, X7]:r1_tarski(X6,k2_xboole_0(X6,X7)), inference(variable_rename,[status(thm)],[t7_xboole_1])).
% 0.20/0.38  cnf(c_0_21, plain, (k7_relat_1(k7_relat_1(X1,k4_xboole_0(X2,X3)),X4)=k1_xboole_0|~v1_relat_1(X1)|~r1_tarski(X4,X3)), inference(spm,[status(thm)],[c_0_15, c_0_16])).
% 0.20/0.38  cnf(c_0_22, negated_conjecture, (r1_tarski(esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.38  cnf(c_0_23, plain, (k7_relat_1(X1,k4_xboole_0(X2,X3))=k4_xboole_0(X1,k7_relat_1(X1,X3))|~v1_relat_1(X1)|~r1_tarski(k1_relat_1(X1),X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_18, c_0_19]), c_0_19])).
% 0.20/0.38  cnf(c_0_24, plain, (r1_tarski(X1,k2_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.20/0.38  cnf(c_0_25, negated_conjecture, (k7_relat_1(k7_relat_1(X1,k4_xboole_0(X2,esk2_0)),esk1_0)=k1_xboole_0|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_21, c_0_22])).
% 0.20/0.38  cnf(c_0_26, negated_conjecture, (v1_relat_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.38  cnf(c_0_27, plain, (k7_relat_1(X1,k4_xboole_0(k2_xboole_0(k1_relat_1(X1),X2),X3))=k4_xboole_0(X1,k7_relat_1(X1,X3))|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_23, c_0_24])).
% 0.20/0.38  cnf(c_0_28, negated_conjecture, (k7_relat_1(k6_subset_1(esk3_0,k7_relat_1(esk3_0,esk2_0)),esk1_0)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.38  cnf(c_0_29, negated_conjecture, (k7_relat_1(k7_relat_1(esk3_0,k4_xboole_0(X1,esk2_0)),esk1_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.20/0.38  cnf(c_0_30, negated_conjecture, (k7_relat_1(esk3_0,k4_xboole_0(k2_xboole_0(k1_relat_1(esk3_0),X1),X2))=k4_xboole_0(esk3_0,k7_relat_1(esk3_0,X2))), inference(spm,[status(thm)],[c_0_27, c_0_26])).
% 0.20/0.38  cnf(c_0_31, negated_conjecture, (k7_relat_1(k4_xboole_0(esk3_0,k7_relat_1(esk3_0,esk2_0)),esk1_0)!=k1_xboole_0), inference(rw,[status(thm)],[c_0_28, c_0_19])).
% 0.20/0.38  cnf(c_0_32, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_30]), c_0_31]), ['proof']).
% 0.20/0.38  # SZS output end CNFRefutation
% 0.20/0.38  # Proof object total steps             : 33
% 0.20/0.38  # Proof object clause steps            : 18
% 0.20/0.38  # Proof object formula steps           : 15
% 0.20/0.38  # Proof object conjectures             : 11
% 0.20/0.38  # Proof object clause conjectures      : 8
% 0.20/0.38  # Proof object formula conjectures     : 3
% 0.20/0.38  # Proof object initial clauses used    : 9
% 0.20/0.38  # Proof object initial formulas used   : 7
% 0.20/0.38  # Proof object generating inferences   : 7
% 0.20/0.38  # Proof object simplifying inferences  : 4
% 0.20/0.38  # Training examples: 0 positive, 0 negative
% 0.20/0.38  # Parsed axioms                        : 7
% 0.20/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.38  # Initial clauses                      : 9
% 0.20/0.38  # Removed in clause preprocessing      : 1
% 0.20/0.38  # Initial clauses in saturation        : 8
% 0.20/0.38  # Processed clauses                    : 30
% 0.20/0.38  # ...of these trivial                  : 0
% 0.20/0.38  # ...subsumed                          : 1
% 0.20/0.38  # ...remaining for further processing  : 29
% 0.20/0.38  # Other redundant clauses eliminated   : 0
% 0.20/0.38  # Clauses deleted for lack of memory   : 0
% 0.20/0.38  # Backward-subsumed                    : 0
% 0.20/0.38  # Backward-rewritten                   : 0
% 0.20/0.38  # Generated clauses                    : 17
% 0.20/0.38  # ...of the previous two non-trivial   : 15
% 0.20/0.38  # Contextual simplify-reflections      : 0
% 0.20/0.38  # Paramodulations                      : 17
% 0.20/0.38  # Factorizations                       : 0
% 0.20/0.38  # Equation resolutions                 : 0
% 0.20/0.38  # Propositional unsat checks           : 0
% 0.20/0.38  #    Propositional check models        : 0
% 0.20/0.38  #    Propositional check unsatisfiable : 0
% 0.20/0.38  #    Propositional clauses             : 0
% 0.20/0.38  #    Propositional clauses after purity: 0
% 0.20/0.38  #    Propositional unsat core size     : 0
% 0.20/0.38  #    Propositional preprocessing time  : 0.000
% 0.20/0.38  #    Propositional encoding time       : 0.000
% 0.20/0.38  #    Propositional solver time         : 0.000
% 0.20/0.38  #    Success case prop preproc time    : 0.000
% 0.20/0.38  #    Success case prop encoding time   : 0.000
% 0.20/0.38  #    Success case prop solver time     : 0.000
% 0.20/0.38  # Current number of processed clauses  : 21
% 0.20/0.38  #    Positive orientable unit clauses  : 8
% 0.20/0.38  #    Positive unorientable unit clauses: 0
% 0.20/0.38  #    Negative unit clauses             : 1
% 0.20/0.38  #    Non-unit-clauses                  : 12
% 0.20/0.38  # Current number of unprocessed clauses: 0
% 0.20/0.38  # ...number of literals in the above   : 0
% 0.20/0.38  # Current number of archived formulas  : 0
% 0.20/0.38  # Current number of archived clauses   : 9
% 0.20/0.38  # Clause-clause subsumption calls (NU) : 10
% 0.20/0.38  # Rec. Clause-clause subsumption calls : 10
% 0.20/0.38  # Non-unit clause-clause subsumptions  : 1
% 0.20/0.38  # Unit Clause-clause subsumption calls : 9
% 0.20/0.38  # Rewrite failures with RHS unbound    : 0
% 0.20/0.38  # BW rewrite match attempts            : 1
% 0.20/0.38  # BW rewrite match successes           : 0
% 0.20/0.38  # Condensation attempts                : 0
% 0.20/0.38  # Condensation successes               : 0
% 0.20/0.38  # Termbank termtop insertions          : 919
% 0.20/0.38  
% 0.20/0.38  # -------------------------------------------------
% 0.20/0.38  # User time                : 0.031 s
% 0.20/0.38  # System time              : 0.001 s
% 0.20/0.38  # Total time               : 0.032 s
% 0.20/0.38  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
