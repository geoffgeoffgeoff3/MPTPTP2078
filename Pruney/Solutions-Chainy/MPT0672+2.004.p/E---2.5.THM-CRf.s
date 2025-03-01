%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:54:22 EST 2020

% Result     : Theorem 0.11s
% Output     : CNFRefutation 0.11s
% Verified   : 
% Statistics : Number of formulae       :   31 (  81 expanded)
%              Number of clauses        :   18 (  33 expanded)
%              Number of leaves         :    6 (  19 expanded)
%              Depth                    :    8
%              Number of atoms          :   74 ( 252 expanded)
%              Number of equality atoms :   18 (  82 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal clause size      :    5 (   2 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t97_funct_1,conjecture,(
    ! [X1,X2,X3] :
      ( ( v1_relat_1(X3)
        & v1_funct_1(X3) )
     => ( r1_tarski(X1,X2)
       => ( k8_relat_1(X2,k8_relat_1(X1,X3)) = k8_relat_1(X1,X3)
          & k8_relat_1(X1,k8_relat_1(X2,X3)) = k8_relat_1(X1,X3) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t97_funct_1)).

fof(t130_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( r1_tarski(X1,X2)
       => k8_relat_1(X1,k8_relat_1(X2,X3)) = k8_relat_1(X1,X3) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t130_relat_1)).

fof(t1_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X2,X3) )
     => r1_tarski(X1,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_xboole_1)).

fof(t116_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => r1_tarski(k2_relat_1(k8_relat_1(X1,X2)),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t116_relat_1)).

fof(dt_k8_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => v1_relat_1(k8_relat_1(X1,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k8_relat_1)).

fof(t125_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(k2_relat_1(X2),X1)
       => k8_relat_1(X1,X2) = X2 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t125_relat_1)).

fof(c_0_6,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( v1_relat_1(X3)
          & v1_funct_1(X3) )
       => ( r1_tarski(X1,X2)
         => ( k8_relat_1(X2,k8_relat_1(X1,X3)) = k8_relat_1(X1,X3)
            & k8_relat_1(X1,k8_relat_1(X2,X3)) = k8_relat_1(X1,X3) ) ) ) ),
    inference(assume_negation,[status(cth)],[t97_funct_1])).

fof(c_0_7,plain,(
    ! [X13,X14,X15] :
      ( ~ v1_relat_1(X15)
      | ~ r1_tarski(X13,X14)
      | k8_relat_1(X13,k8_relat_1(X14,X15)) = k8_relat_1(X13,X15) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t130_relat_1])])).

fof(c_0_8,negated_conjecture,
    ( v1_relat_1(esk3_0)
    & v1_funct_1(esk3_0)
    & r1_tarski(esk1_0,esk2_0)
    & ( k8_relat_1(esk2_0,k8_relat_1(esk1_0,esk3_0)) != k8_relat_1(esk1_0,esk3_0)
      | k8_relat_1(esk1_0,k8_relat_1(esk2_0,esk3_0)) != k8_relat_1(esk1_0,esk3_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).

cnf(c_0_9,plain,
    ( k8_relat_1(X2,k8_relat_1(X3,X1)) = k8_relat_1(X2,X1)
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_10,negated_conjecture,
    ( r1_tarski(esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

fof(c_0_11,plain,(
    ! [X4,X5,X6] :
      ( ~ r1_tarski(X4,X5)
      | ~ r1_tarski(X5,X6)
      | r1_tarski(X4,X6) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).

fof(c_0_12,plain,(
    ! [X9,X10] :
      ( ~ v1_relat_1(X10)
      | r1_tarski(k2_relat_1(k8_relat_1(X9,X10)),X9) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t116_relat_1])])).

cnf(c_0_13,negated_conjecture,
    ( k8_relat_1(esk1_0,k8_relat_1(esk2_0,X1)) = k8_relat_1(esk1_0,X1)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_9,c_0_10])).

cnf(c_0_14,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

fof(c_0_15,plain,(
    ! [X7,X8] :
      ( ~ v1_relat_1(X8)
      | v1_relat_1(k8_relat_1(X7,X8)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k8_relat_1])])).

fof(c_0_16,plain,(
    ! [X11,X12] :
      ( ~ v1_relat_1(X12)
      | ~ r1_tarski(k2_relat_1(X12),X11)
      | k8_relat_1(X11,X12) = X12 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t125_relat_1])])).

cnf(c_0_17,plain,
    ( r1_tarski(X1,X3)
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_18,plain,
    ( r1_tarski(k2_relat_1(k8_relat_1(X2,X1)),X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_19,negated_conjecture,
    ( k8_relat_1(esk1_0,k8_relat_1(esk2_0,esk3_0)) = k8_relat_1(esk1_0,esk3_0) ),
    inference(spm,[status(thm)],[c_0_13,c_0_14])).

cnf(c_0_20,plain,
    ( v1_relat_1(k8_relat_1(X2,X1))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_21,plain,
    ( k8_relat_1(X2,X1) = X1
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k2_relat_1(X1),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_22,negated_conjecture,
    ( r1_tarski(X1,esk2_0)
    | ~ r1_tarski(X1,esk1_0) ),
    inference(spm,[status(thm)],[c_0_17,c_0_10])).

cnf(c_0_23,negated_conjecture,
    ( r1_tarski(k2_relat_1(k8_relat_1(esk1_0,esk3_0)),esk1_0)
    | ~ v1_relat_1(k8_relat_1(esk2_0,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_24,negated_conjecture,
    ( v1_relat_1(k8_relat_1(esk1_0,esk3_0))
    | ~ v1_relat_1(k8_relat_1(esk2_0,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_20,c_0_19])).

cnf(c_0_25,negated_conjecture,
    ( k8_relat_1(esk2_0,k8_relat_1(esk1_0,esk3_0)) != k8_relat_1(esk1_0,esk3_0)
    | k8_relat_1(esk1_0,k8_relat_1(esk2_0,esk3_0)) != k8_relat_1(esk1_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_26,negated_conjecture,
    ( k8_relat_1(esk2_0,X1) = X1
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k2_relat_1(X1),esk1_0) ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_27,negated_conjecture,
    ( r1_tarski(k2_relat_1(k8_relat_1(esk1_0,esk3_0)),esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_20]),c_0_14])])).

cnf(c_0_28,negated_conjecture,
    ( v1_relat_1(k8_relat_1(esk1_0,esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_20]),c_0_14])])).

cnf(c_0_29,negated_conjecture,
    ( k8_relat_1(esk2_0,k8_relat_1(esk1_0,esk3_0)) != k8_relat_1(esk1_0,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_25,c_0_19])])).

cnf(c_0_30,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_28])]),c_0_29]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.11/0.33  % Computer   : n003.cluster.edu
% 0.11/0.33  % Model      : x86_64 x86_64
% 0.11/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.11/0.33  % Memory     : 8042.1875MB
% 0.11/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.11/0.33  % CPULimit   : 60
% 0.11/0.33  % WCLimit    : 600
% 0.11/0.33  % DateTime   : Tue Dec  1 16:10:12 EST 2020
% 0.11/0.33  % CPUTime    : 
% 0.11/0.33  # Version: 2.5pre002
% 0.11/0.34  # No SInE strategy applied
% 0.11/0.34  # Trying AutoSched0 for 299 seconds
% 0.11/0.38  # AutoSched0-Mode selected heuristic G_E___107_B00_00_F1_PI_AE_Q4_CS_SP_PS_S04CN
% 0.11/0.38  # and selection function MSelectComplexExceptUniqMaxHorn.
% 0.11/0.38  #
% 0.11/0.38  # Preprocessing time       : 0.039 s
% 0.11/0.38  # Presaturation interreduction done
% 0.11/0.38  
% 0.11/0.38  # Proof found!
% 0.11/0.38  # SZS status Theorem
% 0.11/0.38  # SZS output start CNFRefutation
% 0.11/0.38  fof(t97_funct_1, conjecture, ![X1, X2, X3]:((v1_relat_1(X3)&v1_funct_1(X3))=>(r1_tarski(X1,X2)=>(k8_relat_1(X2,k8_relat_1(X1,X3))=k8_relat_1(X1,X3)&k8_relat_1(X1,k8_relat_1(X2,X3))=k8_relat_1(X1,X3)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t97_funct_1)).
% 0.11/0.38  fof(t130_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>(r1_tarski(X1,X2)=>k8_relat_1(X1,k8_relat_1(X2,X3))=k8_relat_1(X1,X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t130_relat_1)).
% 0.11/0.38  fof(t1_xboole_1, axiom, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_tarski(X2,X3))=>r1_tarski(X1,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t1_xboole_1)).
% 0.11/0.38  fof(t116_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>r1_tarski(k2_relat_1(k8_relat_1(X1,X2)),X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t116_relat_1)).
% 0.11/0.38  fof(dt_k8_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>v1_relat_1(k8_relat_1(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k8_relat_1)).
% 0.11/0.38  fof(t125_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(r1_tarski(k2_relat_1(X2),X1)=>k8_relat_1(X1,X2)=X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t125_relat_1)).
% 0.11/0.38  fof(c_0_6, negated_conjecture, ~(![X1, X2, X3]:((v1_relat_1(X3)&v1_funct_1(X3))=>(r1_tarski(X1,X2)=>(k8_relat_1(X2,k8_relat_1(X1,X3))=k8_relat_1(X1,X3)&k8_relat_1(X1,k8_relat_1(X2,X3))=k8_relat_1(X1,X3))))), inference(assume_negation,[status(cth)],[t97_funct_1])).
% 0.11/0.38  fof(c_0_7, plain, ![X13, X14, X15]:(~v1_relat_1(X15)|(~r1_tarski(X13,X14)|k8_relat_1(X13,k8_relat_1(X14,X15))=k8_relat_1(X13,X15))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t130_relat_1])])).
% 0.11/0.38  fof(c_0_8, negated_conjecture, ((v1_relat_1(esk3_0)&v1_funct_1(esk3_0))&(r1_tarski(esk1_0,esk2_0)&(k8_relat_1(esk2_0,k8_relat_1(esk1_0,esk3_0))!=k8_relat_1(esk1_0,esk3_0)|k8_relat_1(esk1_0,k8_relat_1(esk2_0,esk3_0))!=k8_relat_1(esk1_0,esk3_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).
% 0.11/0.38  cnf(c_0_9, plain, (k8_relat_1(X2,k8_relat_1(X3,X1))=k8_relat_1(X2,X1)|~v1_relat_1(X1)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.11/0.38  cnf(c_0_10, negated_conjecture, (r1_tarski(esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.11/0.38  fof(c_0_11, plain, ![X4, X5, X6]:(~r1_tarski(X4,X5)|~r1_tarski(X5,X6)|r1_tarski(X4,X6)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).
% 0.11/0.38  fof(c_0_12, plain, ![X9, X10]:(~v1_relat_1(X10)|r1_tarski(k2_relat_1(k8_relat_1(X9,X10)),X9)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t116_relat_1])])).
% 0.11/0.38  cnf(c_0_13, negated_conjecture, (k8_relat_1(esk1_0,k8_relat_1(esk2_0,X1))=k8_relat_1(esk1_0,X1)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_9, c_0_10])).
% 0.11/0.38  cnf(c_0_14, negated_conjecture, (v1_relat_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.11/0.38  fof(c_0_15, plain, ![X7, X8]:(~v1_relat_1(X8)|v1_relat_1(k8_relat_1(X7,X8))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k8_relat_1])])).
% 0.11/0.38  fof(c_0_16, plain, ![X11, X12]:(~v1_relat_1(X12)|(~r1_tarski(k2_relat_1(X12),X11)|k8_relat_1(X11,X12)=X12)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t125_relat_1])])).
% 0.11/0.38  cnf(c_0_17, plain, (r1_tarski(X1,X3)|~r1_tarski(X1,X2)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.11/0.38  cnf(c_0_18, plain, (r1_tarski(k2_relat_1(k8_relat_1(X2,X1)),X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.11/0.38  cnf(c_0_19, negated_conjecture, (k8_relat_1(esk1_0,k8_relat_1(esk2_0,esk3_0))=k8_relat_1(esk1_0,esk3_0)), inference(spm,[status(thm)],[c_0_13, c_0_14])).
% 0.11/0.38  cnf(c_0_20, plain, (v1_relat_1(k8_relat_1(X2,X1))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.11/0.38  cnf(c_0_21, plain, (k8_relat_1(X2,X1)=X1|~v1_relat_1(X1)|~r1_tarski(k2_relat_1(X1),X2)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.11/0.38  cnf(c_0_22, negated_conjecture, (r1_tarski(X1,esk2_0)|~r1_tarski(X1,esk1_0)), inference(spm,[status(thm)],[c_0_17, c_0_10])).
% 0.11/0.38  cnf(c_0_23, negated_conjecture, (r1_tarski(k2_relat_1(k8_relat_1(esk1_0,esk3_0)),esk1_0)|~v1_relat_1(k8_relat_1(esk2_0,esk3_0))), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.11/0.38  cnf(c_0_24, negated_conjecture, (v1_relat_1(k8_relat_1(esk1_0,esk3_0))|~v1_relat_1(k8_relat_1(esk2_0,esk3_0))), inference(spm,[status(thm)],[c_0_20, c_0_19])).
% 0.11/0.38  cnf(c_0_25, negated_conjecture, (k8_relat_1(esk2_0,k8_relat_1(esk1_0,esk3_0))!=k8_relat_1(esk1_0,esk3_0)|k8_relat_1(esk1_0,k8_relat_1(esk2_0,esk3_0))!=k8_relat_1(esk1_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.11/0.38  cnf(c_0_26, negated_conjecture, (k8_relat_1(esk2_0,X1)=X1|~v1_relat_1(X1)|~r1_tarski(k2_relat_1(X1),esk1_0)), inference(spm,[status(thm)],[c_0_21, c_0_22])).
% 0.11/0.38  cnf(c_0_27, negated_conjecture, (r1_tarski(k2_relat_1(k8_relat_1(esk1_0,esk3_0)),esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_20]), c_0_14])])).
% 0.11/0.38  cnf(c_0_28, negated_conjecture, (v1_relat_1(k8_relat_1(esk1_0,esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_20]), c_0_14])])).
% 0.11/0.38  cnf(c_0_29, negated_conjecture, (k8_relat_1(esk2_0,k8_relat_1(esk1_0,esk3_0))!=k8_relat_1(esk1_0,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_25, c_0_19])])).
% 0.11/0.38  cnf(c_0_30, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_28])]), c_0_29]), ['proof']).
% 0.11/0.38  # SZS output end CNFRefutation
% 0.11/0.38  # Proof object total steps             : 31
% 0.11/0.38  # Proof object clause steps            : 18
% 0.11/0.38  # Proof object formula steps           : 13
% 0.11/0.38  # Proof object conjectures             : 16
% 0.11/0.38  # Proof object clause conjectures      : 13
% 0.11/0.38  # Proof object formula conjectures     : 3
% 0.11/0.38  # Proof object initial clauses used    : 8
% 0.11/0.38  # Proof object initial formulas used   : 6
% 0.11/0.38  # Proof object generating inferences   : 9
% 0.11/0.38  # Proof object simplifying inferences  : 9
% 0.11/0.38  # Training examples: 0 positive, 0 negative
% 0.11/0.38  # Parsed axioms                        : 6
% 0.11/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.11/0.38  # Initial clauses                      : 9
% 0.11/0.38  # Removed in clause preprocessing      : 0
% 0.11/0.38  # Initial clauses in saturation        : 9
% 0.11/0.38  # Processed clauses                    : 35
% 0.11/0.38  # ...of these trivial                  : 0
% 0.11/0.38  # ...subsumed                          : 1
% 0.11/0.38  # ...remaining for further processing  : 34
% 0.11/0.38  # Other redundant clauses eliminated   : 0
% 0.11/0.38  # Clauses deleted for lack of memory   : 0
% 0.11/0.38  # Backward-subsumed                    : 0
% 0.11/0.38  # Backward-rewritten                   : 3
% 0.11/0.38  # Generated clauses                    : 40
% 0.11/0.38  # ...of the previous two non-trivial   : 34
% 0.11/0.38  # Contextual simplify-reflections      : 0
% 0.11/0.38  # Paramodulations                      : 40
% 0.11/0.38  # Factorizations                       : 0
% 0.11/0.38  # Equation resolutions                 : 0
% 0.11/0.38  # Propositional unsat checks           : 0
% 0.11/0.38  #    Propositional check models        : 0
% 0.11/0.38  #    Propositional check unsatisfiable : 0
% 0.11/0.38  #    Propositional clauses             : 0
% 0.11/0.38  #    Propositional clauses after purity: 0
% 0.11/0.38  #    Propositional unsat core size     : 0
% 0.11/0.38  #    Propositional preprocessing time  : 0.000
% 0.11/0.38  #    Propositional encoding time       : 0.000
% 0.11/0.38  #    Propositional solver time         : 0.000
% 0.11/0.38  #    Success case prop preproc time    : 0.000
% 0.11/0.38  #    Success case prop encoding time   : 0.000
% 0.11/0.38  #    Success case prop solver time     : 0.000
% 0.11/0.38  # Current number of processed clauses  : 22
% 0.11/0.38  #    Positive orientable unit clauses  : 8
% 0.11/0.38  #    Positive unorientable unit clauses: 0
% 0.11/0.38  #    Negative unit clauses             : 1
% 0.11/0.38  #    Non-unit-clauses                  : 13
% 0.11/0.38  # Current number of unprocessed clauses: 16
% 0.11/0.38  # ...number of literals in the above   : 45
% 0.11/0.38  # Current number of archived formulas  : 0
% 0.11/0.38  # Current number of archived clauses   : 12
% 0.11/0.38  # Clause-clause subsumption calls (NU) : 14
% 0.11/0.38  # Rec. Clause-clause subsumption calls : 14
% 0.11/0.38  # Non-unit clause-clause subsumptions  : 1
% 0.11/0.38  # Unit Clause-clause subsumption calls : 0
% 0.11/0.38  # Rewrite failures with RHS unbound    : 0
% 0.11/0.38  # BW rewrite match attempts            : 3
% 0.11/0.38  # BW rewrite match successes           : 3
% 0.11/0.38  # Condensation attempts                : 0
% 0.11/0.38  # Condensation successes               : 0
% 0.11/0.38  # Termbank termtop insertions          : 1336
% 0.11/0.38  
% 0.11/0.38  # -------------------------------------------------
% 0.11/0.38  # User time                : 0.039 s
% 0.11/0.38  # System time              : 0.007 s
% 0.11/0.38  # Total time               : 0.046 s
% 0.11/0.38  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
