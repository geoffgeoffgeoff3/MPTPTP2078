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
% DateTime   : Thu Dec  3 10:55:59 EST 2020

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   30 (  52 expanded)
%              Number of clauses        :   17 (  19 expanded)
%              Number of leaves         :    6 (  13 expanded)
%              Depth                    :    8
%              Number of atoms          :  170 ( 272 expanded)
%              Number of equality atoms :   21 (  21 expanded)
%              Maximal formula depth    :   24 (   5 average)
%              Maximal clause size      :   79 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t176_funct_1,conjecture,(
    ! [X1,X2,X3] :
      ( ( v1_relat_1(X3)
        & v5_relat_1(X3,X1)
        & v1_funct_1(X3) )
     => ( r2_hidden(X2,k1_relat_1(X3))
       => m1_subset_1(k1_funct_1(X3,X2),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t176_funct_1)).

fof(d19_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v5_relat_1(X2,X1)
      <=> r1_tarski(k2_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d19_relat_1)).

fof(t85_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ! [X3] :
          ( ( v1_relat_1(X3)
            & v1_funct_1(X3) )
         => ( X2 = k8_relat_1(X1,X3)
          <=> ( ! [X4] :
                  ( r2_hidden(X4,k1_relat_1(X2))
                <=> ( r2_hidden(X4,k1_relat_1(X3))
                    & r2_hidden(k1_funct_1(X3,X4),X1) ) )
              & ! [X4] :
                  ( r2_hidden(X4,k1_relat_1(X2))
                 => k1_funct_1(X2,X4) = k1_funct_1(X3,X4) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t85_funct_1)).

fof(fc9_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( v1_relat_1(k8_relat_1(X1,X2))
        & v1_funct_1(k8_relat_1(X1,X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc9_funct_1)).

fof(t125_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(k2_relat_1(X2),X1)
       => k8_relat_1(X1,X2) = X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t125_relat_1)).

fof(t1_subset,axiom,(
    ! [X1,X2] :
      ( r2_hidden(X1,X2)
     => m1_subset_1(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_subset)).

fof(c_0_6,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( v1_relat_1(X3)
          & v5_relat_1(X3,X1)
          & v1_funct_1(X3) )
       => ( r2_hidden(X2,k1_relat_1(X3))
         => m1_subset_1(k1_funct_1(X3,X2),X1) ) ) ),
    inference(assume_negation,[status(cth)],[t176_funct_1])).

fof(c_0_7,plain,(
    ! [X7,X8] :
      ( ( ~ v5_relat_1(X8,X7)
        | r1_tarski(k2_relat_1(X8),X7)
        | ~ v1_relat_1(X8) )
      & ( ~ r1_tarski(k2_relat_1(X8),X7)
        | v5_relat_1(X8,X7)
        | ~ v1_relat_1(X8) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).

fof(c_0_8,negated_conjecture,
    ( v1_relat_1(esk5_0)
    & v5_relat_1(esk5_0,esk3_0)
    & v1_funct_1(esk5_0)
    & r2_hidden(esk4_0,k1_relat_1(esk5_0))
    & ~ m1_subset_1(k1_funct_1(esk5_0,esk4_0),esk3_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).

fof(c_0_9,plain,(
    ! [X13,X14,X15,X16,X17,X18] :
      ( ( r2_hidden(X16,k1_relat_1(X15))
        | ~ r2_hidden(X16,k1_relat_1(X14))
        | X14 != k8_relat_1(X13,X15)
        | ~ v1_relat_1(X15)
        | ~ v1_funct_1(X15)
        | ~ v1_relat_1(X14)
        | ~ v1_funct_1(X14) )
      & ( r2_hidden(k1_funct_1(X15,X16),X13)
        | ~ r2_hidden(X16,k1_relat_1(X14))
        | X14 != k8_relat_1(X13,X15)
        | ~ v1_relat_1(X15)
        | ~ v1_funct_1(X15)
        | ~ v1_relat_1(X14)
        | ~ v1_funct_1(X14) )
      & ( ~ r2_hidden(X17,k1_relat_1(X15))
        | ~ r2_hidden(k1_funct_1(X15,X17),X13)
        | r2_hidden(X17,k1_relat_1(X14))
        | X14 != k8_relat_1(X13,X15)
        | ~ v1_relat_1(X15)
        | ~ v1_funct_1(X15)
        | ~ v1_relat_1(X14)
        | ~ v1_funct_1(X14) )
      & ( ~ r2_hidden(X18,k1_relat_1(X14))
        | k1_funct_1(X14,X18) = k1_funct_1(X15,X18)
        | X14 != k8_relat_1(X13,X15)
        | ~ v1_relat_1(X15)
        | ~ v1_funct_1(X15)
        | ~ v1_relat_1(X14)
        | ~ v1_funct_1(X14) )
      & ( r2_hidden(esk2_3(X13,X14,X15),k1_relat_1(X14))
        | ~ r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X14))
        | ~ r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X15))
        | ~ r2_hidden(k1_funct_1(X15,esk1_3(X13,X14,X15)),X13)
        | X14 = k8_relat_1(X13,X15)
        | ~ v1_relat_1(X15)
        | ~ v1_funct_1(X15)
        | ~ v1_relat_1(X14)
        | ~ v1_funct_1(X14) )
      & ( k1_funct_1(X14,esk2_3(X13,X14,X15)) != k1_funct_1(X15,esk2_3(X13,X14,X15))
        | ~ r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X14))
        | ~ r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X15))
        | ~ r2_hidden(k1_funct_1(X15,esk1_3(X13,X14,X15)),X13)
        | X14 = k8_relat_1(X13,X15)
        | ~ v1_relat_1(X15)
        | ~ v1_funct_1(X15)
        | ~ v1_relat_1(X14)
        | ~ v1_funct_1(X14) )
      & ( r2_hidden(esk2_3(X13,X14,X15),k1_relat_1(X14))
        | r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X15))
        | r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X14))
        | X14 = k8_relat_1(X13,X15)
        | ~ v1_relat_1(X15)
        | ~ v1_funct_1(X15)
        | ~ v1_relat_1(X14)
        | ~ v1_funct_1(X14) )
      & ( k1_funct_1(X14,esk2_3(X13,X14,X15)) != k1_funct_1(X15,esk2_3(X13,X14,X15))
        | r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X15))
        | r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X14))
        | X14 = k8_relat_1(X13,X15)
        | ~ v1_relat_1(X15)
        | ~ v1_funct_1(X15)
        | ~ v1_relat_1(X14)
        | ~ v1_funct_1(X14) )
      & ( r2_hidden(esk2_3(X13,X14,X15),k1_relat_1(X14))
        | r2_hidden(k1_funct_1(X15,esk1_3(X13,X14,X15)),X13)
        | r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X14))
        | X14 = k8_relat_1(X13,X15)
        | ~ v1_relat_1(X15)
        | ~ v1_funct_1(X15)
        | ~ v1_relat_1(X14)
        | ~ v1_funct_1(X14) )
      & ( k1_funct_1(X14,esk2_3(X13,X14,X15)) != k1_funct_1(X15,esk2_3(X13,X14,X15))
        | r2_hidden(k1_funct_1(X15,esk1_3(X13,X14,X15)),X13)
        | r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X14))
        | X14 = k8_relat_1(X13,X15)
        | ~ v1_relat_1(X15)
        | ~ v1_funct_1(X15)
        | ~ v1_relat_1(X14)
        | ~ v1_funct_1(X14) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[t85_funct_1])])])])])])).

fof(c_0_10,plain,(
    ! [X11,X12] :
      ( ( v1_relat_1(k8_relat_1(X11,X12))
        | ~ v1_relat_1(X12)
        | ~ v1_funct_1(X12) )
      & ( v1_funct_1(k8_relat_1(X11,X12))
        | ~ v1_relat_1(X12)
        | ~ v1_funct_1(X12) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc9_funct_1])])])).

fof(c_0_11,plain,(
    ! [X9,X10] :
      ( ~ v1_relat_1(X10)
      | ~ r1_tarski(k2_relat_1(X10),X9)
      | k8_relat_1(X9,X10) = X10 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t125_relat_1])])).

cnf(c_0_12,plain,
    ( r1_tarski(k2_relat_1(X1),X2)
    | ~ v5_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_13,negated_conjecture,
    ( v5_relat_1(esk5_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_14,negated_conjecture,
    ( v1_relat_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_15,plain,
    ( r2_hidden(k1_funct_1(X1,X2),X3)
    | ~ r2_hidden(X2,k1_relat_1(X4))
    | X4 != k8_relat_1(X3,X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X4)
    | ~ v1_funct_1(X4) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_16,plain,
    ( v1_relat_1(k8_relat_1(X1,X2))
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_17,plain,
    ( v1_funct_1(k8_relat_1(X1,X2))
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_18,plain,
    ( k8_relat_1(X2,X1) = X1
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k2_relat_1(X1),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_19,negated_conjecture,
    ( r1_tarski(k2_relat_1(esk5_0),esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_12,c_0_13]),c_0_14])])).

fof(c_0_20,plain,(
    ! [X5,X6] :
      ( ~ r2_hidden(X5,X6)
      | m1_subset_1(X5,X6) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_subset])])).

cnf(c_0_21,plain,
    ( r2_hidden(k1_funct_1(X1,X2),X3)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ r2_hidden(X2,k1_relat_1(k8_relat_1(X3,X1))) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_15]),c_0_16]),c_0_17])).

cnf(c_0_22,negated_conjecture,
    ( k8_relat_1(esk3_0,esk5_0) = esk5_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18,c_0_19]),c_0_14])])).

cnf(c_0_23,negated_conjecture,
    ( v1_funct_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_24,plain,
    ( m1_subset_1(X1,X2)
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_25,negated_conjecture,
    ( r2_hidden(k1_funct_1(esk5_0,X1),esk3_0)
    | ~ r2_hidden(X1,k1_relat_1(esk5_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21,c_0_22]),c_0_23]),c_0_14])])).

cnf(c_0_26,negated_conjecture,
    ( m1_subset_1(k1_funct_1(esk5_0,X1),esk3_0)
    | ~ r2_hidden(X1,k1_relat_1(esk5_0)) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_27,negated_conjecture,
    ( r2_hidden(esk4_0,k1_relat_1(esk5_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_28,negated_conjecture,
    ( ~ m1_subset_1(k1_funct_1(esk5_0,esk4_0),esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_29,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_28]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.35  % Computer   : n022.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 15:14:10 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.14/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S088I
% 0.14/0.38  # and selection function SelectCQArNTEqFirstUnlessPDom.
% 0.14/0.38  #
% 0.14/0.38  # Preprocessing time       : 0.027 s
% 0.14/0.38  # Presaturation interreduction done
% 0.14/0.38  
% 0.14/0.38  # Proof found!
% 0.14/0.38  # SZS status Theorem
% 0.14/0.38  # SZS output start CNFRefutation
% 0.14/0.38  fof(t176_funct_1, conjecture, ![X1, X2, X3]:(((v1_relat_1(X3)&v5_relat_1(X3,X1))&v1_funct_1(X3))=>(r2_hidden(X2,k1_relat_1(X3))=>m1_subset_1(k1_funct_1(X3,X2),X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t176_funct_1)).
% 0.14/0.38  fof(d19_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v5_relat_1(X2,X1)<=>r1_tarski(k2_relat_1(X2),X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d19_relat_1)).
% 0.14/0.38  fof(t85_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>![X3]:((v1_relat_1(X3)&v1_funct_1(X3))=>(X2=k8_relat_1(X1,X3)<=>(![X4]:(r2_hidden(X4,k1_relat_1(X2))<=>(r2_hidden(X4,k1_relat_1(X3))&r2_hidden(k1_funct_1(X3,X4),X1)))&![X4]:(r2_hidden(X4,k1_relat_1(X2))=>k1_funct_1(X2,X4)=k1_funct_1(X3,X4)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t85_funct_1)).
% 0.14/0.38  fof(fc9_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(v1_relat_1(k8_relat_1(X1,X2))&v1_funct_1(k8_relat_1(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc9_funct_1)).
% 0.14/0.38  fof(t125_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(r1_tarski(k2_relat_1(X2),X1)=>k8_relat_1(X1,X2)=X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t125_relat_1)).
% 0.14/0.38  fof(t1_subset, axiom, ![X1, X2]:(r2_hidden(X1,X2)=>m1_subset_1(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t1_subset)).
% 0.14/0.38  fof(c_0_6, negated_conjecture, ~(![X1, X2, X3]:(((v1_relat_1(X3)&v5_relat_1(X3,X1))&v1_funct_1(X3))=>(r2_hidden(X2,k1_relat_1(X3))=>m1_subset_1(k1_funct_1(X3,X2),X1)))), inference(assume_negation,[status(cth)],[t176_funct_1])).
% 0.14/0.38  fof(c_0_7, plain, ![X7, X8]:((~v5_relat_1(X8,X7)|r1_tarski(k2_relat_1(X8),X7)|~v1_relat_1(X8))&(~r1_tarski(k2_relat_1(X8),X7)|v5_relat_1(X8,X7)|~v1_relat_1(X8))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).
% 0.14/0.38  fof(c_0_8, negated_conjecture, (((v1_relat_1(esk5_0)&v5_relat_1(esk5_0,esk3_0))&v1_funct_1(esk5_0))&(r2_hidden(esk4_0,k1_relat_1(esk5_0))&~m1_subset_1(k1_funct_1(esk5_0,esk4_0),esk3_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).
% 0.14/0.38  fof(c_0_9, plain, ![X13, X14, X15, X16, X17, X18]:(((((r2_hidden(X16,k1_relat_1(X15))|~r2_hidden(X16,k1_relat_1(X14))|X14!=k8_relat_1(X13,X15)|(~v1_relat_1(X15)|~v1_funct_1(X15))|(~v1_relat_1(X14)|~v1_funct_1(X14)))&(r2_hidden(k1_funct_1(X15,X16),X13)|~r2_hidden(X16,k1_relat_1(X14))|X14!=k8_relat_1(X13,X15)|(~v1_relat_1(X15)|~v1_funct_1(X15))|(~v1_relat_1(X14)|~v1_funct_1(X14))))&(~r2_hidden(X17,k1_relat_1(X15))|~r2_hidden(k1_funct_1(X15,X17),X13)|r2_hidden(X17,k1_relat_1(X14))|X14!=k8_relat_1(X13,X15)|(~v1_relat_1(X15)|~v1_funct_1(X15))|(~v1_relat_1(X14)|~v1_funct_1(X14))))&(~r2_hidden(X18,k1_relat_1(X14))|k1_funct_1(X14,X18)=k1_funct_1(X15,X18)|X14!=k8_relat_1(X13,X15)|(~v1_relat_1(X15)|~v1_funct_1(X15))|(~v1_relat_1(X14)|~v1_funct_1(X14))))&(((r2_hidden(esk2_3(X13,X14,X15),k1_relat_1(X14))|(~r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X14))|(~r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X15))|~r2_hidden(k1_funct_1(X15,esk1_3(X13,X14,X15)),X13)))|X14=k8_relat_1(X13,X15)|(~v1_relat_1(X15)|~v1_funct_1(X15))|(~v1_relat_1(X14)|~v1_funct_1(X14)))&(k1_funct_1(X14,esk2_3(X13,X14,X15))!=k1_funct_1(X15,esk2_3(X13,X14,X15))|(~r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X14))|(~r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X15))|~r2_hidden(k1_funct_1(X15,esk1_3(X13,X14,X15)),X13)))|X14=k8_relat_1(X13,X15)|(~v1_relat_1(X15)|~v1_funct_1(X15))|(~v1_relat_1(X14)|~v1_funct_1(X14))))&(((r2_hidden(esk2_3(X13,X14,X15),k1_relat_1(X14))|(r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X15))|r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X14)))|X14=k8_relat_1(X13,X15)|(~v1_relat_1(X15)|~v1_funct_1(X15))|(~v1_relat_1(X14)|~v1_funct_1(X14)))&(k1_funct_1(X14,esk2_3(X13,X14,X15))!=k1_funct_1(X15,esk2_3(X13,X14,X15))|(r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X15))|r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X14)))|X14=k8_relat_1(X13,X15)|(~v1_relat_1(X15)|~v1_funct_1(X15))|(~v1_relat_1(X14)|~v1_funct_1(X14))))&((r2_hidden(esk2_3(X13,X14,X15),k1_relat_1(X14))|(r2_hidden(k1_funct_1(X15,esk1_3(X13,X14,X15)),X13)|r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X14)))|X14=k8_relat_1(X13,X15)|(~v1_relat_1(X15)|~v1_funct_1(X15))|(~v1_relat_1(X14)|~v1_funct_1(X14)))&(k1_funct_1(X14,esk2_3(X13,X14,X15))!=k1_funct_1(X15,esk2_3(X13,X14,X15))|(r2_hidden(k1_funct_1(X15,esk1_3(X13,X14,X15)),X13)|r2_hidden(esk1_3(X13,X14,X15),k1_relat_1(X14)))|X14=k8_relat_1(X13,X15)|(~v1_relat_1(X15)|~v1_funct_1(X15))|(~v1_relat_1(X14)|~v1_funct_1(X14))))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[t85_funct_1])])])])])])).
% 0.14/0.38  fof(c_0_10, plain, ![X11, X12]:((v1_relat_1(k8_relat_1(X11,X12))|(~v1_relat_1(X12)|~v1_funct_1(X12)))&(v1_funct_1(k8_relat_1(X11,X12))|(~v1_relat_1(X12)|~v1_funct_1(X12)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc9_funct_1])])])).
% 0.14/0.38  fof(c_0_11, plain, ![X9, X10]:(~v1_relat_1(X10)|(~r1_tarski(k2_relat_1(X10),X9)|k8_relat_1(X9,X10)=X10)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t125_relat_1])])).
% 0.14/0.38  cnf(c_0_12, plain, (r1_tarski(k2_relat_1(X1),X2)|~v5_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.14/0.38  cnf(c_0_13, negated_conjecture, (v5_relat_1(esk5_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.14/0.38  cnf(c_0_14, negated_conjecture, (v1_relat_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.14/0.38  cnf(c_0_15, plain, (r2_hidden(k1_funct_1(X1,X2),X3)|~r2_hidden(X2,k1_relat_1(X4))|X4!=k8_relat_1(X3,X1)|~v1_relat_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X4)|~v1_funct_1(X4)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.38  cnf(c_0_16, plain, (v1_relat_1(k8_relat_1(X1,X2))|~v1_relat_1(X2)|~v1_funct_1(X2)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.14/0.38  cnf(c_0_17, plain, (v1_funct_1(k8_relat_1(X1,X2))|~v1_relat_1(X2)|~v1_funct_1(X2)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.14/0.38  cnf(c_0_18, plain, (k8_relat_1(X2,X1)=X1|~v1_relat_1(X1)|~r1_tarski(k2_relat_1(X1),X2)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.14/0.38  cnf(c_0_19, negated_conjecture, (r1_tarski(k2_relat_1(esk5_0),esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_12, c_0_13]), c_0_14])])).
% 0.14/0.38  fof(c_0_20, plain, ![X5, X6]:(~r2_hidden(X5,X6)|m1_subset_1(X5,X6)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_subset])])).
% 0.14/0.38  cnf(c_0_21, plain, (r2_hidden(k1_funct_1(X1,X2),X3)|~v1_funct_1(X1)|~v1_relat_1(X1)|~r2_hidden(X2,k1_relat_1(k8_relat_1(X3,X1)))), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_15]), c_0_16]), c_0_17])).
% 0.14/0.38  cnf(c_0_22, negated_conjecture, (k8_relat_1(esk3_0,esk5_0)=esk5_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18, c_0_19]), c_0_14])])).
% 0.14/0.38  cnf(c_0_23, negated_conjecture, (v1_funct_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.14/0.38  cnf(c_0_24, plain, (m1_subset_1(X1,X2)|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.14/0.38  cnf(c_0_25, negated_conjecture, (r2_hidden(k1_funct_1(esk5_0,X1),esk3_0)|~r2_hidden(X1,k1_relat_1(esk5_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21, c_0_22]), c_0_23]), c_0_14])])).
% 0.14/0.38  cnf(c_0_26, negated_conjecture, (m1_subset_1(k1_funct_1(esk5_0,X1),esk3_0)|~r2_hidden(X1,k1_relat_1(esk5_0))), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.14/0.38  cnf(c_0_27, negated_conjecture, (r2_hidden(esk4_0,k1_relat_1(esk5_0))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.14/0.38  cnf(c_0_28, negated_conjecture, (~m1_subset_1(k1_funct_1(esk5_0,esk4_0),esk3_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.14/0.38  cnf(c_0_29, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_28]), ['proof']).
% 0.14/0.38  # SZS output end CNFRefutation
% 0.14/0.38  # Proof object total steps             : 30
% 0.14/0.38  # Proof object clause steps            : 17
% 0.14/0.38  # Proof object formula steps           : 13
% 0.14/0.38  # Proof object conjectures             : 13
% 0.14/0.38  # Proof object clause conjectures      : 10
% 0.14/0.38  # Proof object formula conjectures     : 3
% 0.14/0.38  # Proof object initial clauses used    : 11
% 0.14/0.38  # Proof object initial formulas used   : 6
% 0.14/0.38  # Proof object generating inferences   : 5
% 0.14/0.38  # Proof object simplifying inferences  : 11
% 0.14/0.38  # Training examples: 0 positive, 0 negative
% 0.14/0.38  # Parsed axioms                        : 6
% 0.14/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.38  # Initial clauses                      : 21
% 0.14/0.38  # Removed in clause preprocessing      : 0
% 0.14/0.38  # Initial clauses in saturation        : 21
% 0.14/0.38  # Processed clauses                    : 49
% 0.14/0.38  # ...of these trivial                  : 0
% 0.14/0.38  # ...subsumed                          : 0
% 0.14/0.38  # ...remaining for further processing  : 49
% 0.14/0.38  # Other redundant clauses eliminated   : 4
% 0.14/0.38  # Clauses deleted for lack of memory   : 0
% 0.14/0.38  # Backward-subsumed                    : 0
% 0.14/0.38  # Backward-rewritten                   : 0
% 0.14/0.38  # Generated clauses                    : 23
% 0.14/0.38  # ...of the previous two non-trivial   : 18
% 0.14/0.38  # Contextual simplify-reflections      : 8
% 0.14/0.38  # Paramodulations                      : 16
% 0.14/0.38  # Factorizations                       : 0
% 0.14/0.38  # Equation resolutions                 : 7
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
% 0.14/0.38  # Current number of processed clauses  : 24
% 0.14/0.38  #    Positive orientable unit clauses  : 8
% 0.14/0.38  #    Positive unorientable unit clauses: 0
% 0.14/0.38  #    Negative unit clauses             : 1
% 0.14/0.38  #    Non-unit-clauses                  : 15
% 0.14/0.38  # Current number of unprocessed clauses: 11
% 0.14/0.38  # ...number of literals in the above   : 65
% 0.14/0.38  # Current number of archived formulas  : 0
% 0.14/0.38  # Current number of archived clauses   : 21
% 0.14/0.38  # Clause-clause subsumption calls (NU) : 771
% 0.14/0.38  # Rec. Clause-clause subsumption calls : 33
% 0.14/0.38  # Non-unit clause-clause subsumptions  : 8
% 0.14/0.38  # Unit Clause-clause subsumption calls : 0
% 0.14/0.38  # Rewrite failures with RHS unbound    : 0
% 0.14/0.38  # BW rewrite match attempts            : 0
% 0.14/0.38  # BW rewrite match successes           : 0
% 0.14/0.38  # Condensation attempts                : 0
% 0.14/0.38  # Condensation successes               : 0
% 0.14/0.38  # Termbank termtop insertions          : 2545
% 0.14/0.38  
% 0.14/0.38  # -------------------------------------------------
% 0.14/0.38  # User time                : 0.026 s
% 0.14/0.38  # System time              : 0.007 s
% 0.14/0.38  # Total time               : 0.034 s
% 0.14/0.38  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
