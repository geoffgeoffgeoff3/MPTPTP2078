%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n025.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:57:57 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   41 ( 119 expanded)
%              Number of clauses        :   22 (  48 expanded)
%              Number of leaves         :    9 (  30 expanded)
%              Depth                    :    8
%              Number of atoms          :   98 ( 281 expanded)
%              Number of equality atoms :   17 (  21 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :    8 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t36_relset_1,conjecture,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( r1_tarski(X2,X3)
       => r2_relset_1(X1,X2,k6_relset_1(X1,X2,X3,X4),X4) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t36_relset_1)).

fof(cc2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( v4_relat_1(X3,X1)
        & v5_relat_1(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_relset_1)).

fof(cc2_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X1))
         => v1_relat_1(X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_relat_1)).

fof(fc6_relat_1,axiom,(
    ! [X1,X2] : v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc6_relat_1)).

fof(d19_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v5_relat_1(X2,X1)
      <=> r1_tarski(k2_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d19_relat_1)).

fof(redefinition_k6_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k6_relset_1(X1,X2,X3,X4) = k8_relat_1(X3,X4) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k6_relset_1)).

fof(t129_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( r1_tarski(X1,X2)
       => k8_relat_1(X2,k8_relat_1(X1,X3)) = k8_relat_1(X1,X3) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t129_relat_1)).

fof(t125_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(k2_relat_1(X2),X1)
       => k8_relat_1(X1,X2) = X2 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t125_relat_1)).

fof(redefinition_r2_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( r2_relset_1(X1,X2,X3,X4)
      <=> X3 = X4 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_r2_relset_1)).

fof(c_0_9,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
       => ( r1_tarski(X2,X3)
         => r2_relset_1(X1,X2,k6_relset_1(X1,X2,X3,X4),X4) ) ) ),
    inference(assume_negation,[status(cth)],[t36_relset_1])).

fof(c_0_10,plain,(
    ! [X16,X17,X18] :
      ( ( v4_relat_1(X18,X16)
        | ~ m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(X16,X17))) )
      & ( v5_relat_1(X18,X17)
        | ~ m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(X16,X17))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

fof(c_0_11,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))
    & r1_tarski(esk2_0,esk3_0)
    & ~ r2_relset_1(esk1_0,esk2_0,k6_relset_1(esk1_0,esk2_0,esk3_0,esk4_0),esk4_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_9])])])).

fof(c_0_12,plain,(
    ! [X5,X6] :
      ( ~ v1_relat_1(X5)
      | ~ m1_subset_1(X6,k1_zfmisc_1(X5))
      | v1_relat_1(X6) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).

fof(c_0_13,plain,(
    ! [X9,X10] : v1_relat_1(k2_zfmisc_1(X9,X10)) ),
    inference(variable_rename,[status(thm)],[fc6_relat_1])).

fof(c_0_14,plain,(
    ! [X7,X8] :
      ( ( ~ v5_relat_1(X8,X7)
        | r1_tarski(k2_relat_1(X8),X7)
        | ~ v1_relat_1(X8) )
      & ( ~ r1_tarski(k2_relat_1(X8),X7)
        | v5_relat_1(X8,X7)
        | ~ v1_relat_1(X8) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).

cnf(c_0_15,plain,
    ( v5_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_16,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_17,plain,
    ( v1_relat_1(X2)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_18,plain,
    ( v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_19,plain,(
    ! [X19,X20,X21,X22] :
      ( ~ m1_subset_1(X22,k1_zfmisc_1(k2_zfmisc_1(X19,X20)))
      | k6_relset_1(X19,X20,X21,X22) = k8_relat_1(X21,X22) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k6_relset_1])])).

fof(c_0_20,plain,(
    ! [X13,X14,X15] :
      ( ~ v1_relat_1(X15)
      | ~ r1_tarski(X13,X14)
      | k8_relat_1(X14,k8_relat_1(X13,X15)) = k8_relat_1(X13,X15) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t129_relat_1])])).

fof(c_0_21,plain,(
    ! [X11,X12] :
      ( ~ v1_relat_1(X12)
      | ~ r1_tarski(k2_relat_1(X12),X11)
      | k8_relat_1(X11,X12) = X12 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t125_relat_1])])).

cnf(c_0_22,plain,
    ( r1_tarski(k2_relat_1(X1),X2)
    | ~ v5_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_23,negated_conjecture,
    ( v5_relat_1(esk4_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_24,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17,c_0_16]),c_0_18])])).

fof(c_0_25,plain,(
    ! [X23,X24,X25,X26] :
      ( ( ~ r2_relset_1(X23,X24,X25,X26)
        | X25 = X26
        | ~ m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))
        | ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X23,X24))) )
      & ( X25 != X26
        | r2_relset_1(X23,X24,X25,X26)
        | ~ m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))
        | ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X23,X24))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_r2_relset_1])])])).

cnf(c_0_26,plain,
    ( k6_relset_1(X2,X3,X4,X1) = k8_relat_1(X4,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_27,plain,
    ( k8_relat_1(X3,k8_relat_1(X2,X1)) = k8_relat_1(X2,X1)
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_28,negated_conjecture,
    ( r1_tarski(esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_29,plain,
    ( k8_relat_1(X2,X1) = X1
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k2_relat_1(X1),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_30,negated_conjecture,
    ( r1_tarski(k2_relat_1(esk4_0),esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_23]),c_0_24])])).

cnf(c_0_31,plain,
    ( r2_relset_1(X3,X4,X1,X2)
    | X1 != X2
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_32,negated_conjecture,
    ( ~ r2_relset_1(esk1_0,esk2_0,k6_relset_1(esk1_0,esk2_0,esk3_0,esk4_0),esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_33,negated_conjecture,
    ( k6_relset_1(esk1_0,esk2_0,X1,esk4_0) = k8_relat_1(X1,esk4_0) ),
    inference(spm,[status(thm)],[c_0_26,c_0_16])).

cnf(c_0_34,negated_conjecture,
    ( k8_relat_1(esk3_0,k8_relat_1(esk2_0,X1)) = k8_relat_1(esk2_0,X1)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_35,negated_conjecture,
    ( k8_relat_1(esk2_0,esk4_0) = esk4_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30]),c_0_24])])).

cnf(c_0_36,plain,
    ( r2_relset_1(X1,X2,X3,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(er,[status(thm)],[c_0_31])).

cnf(c_0_37,negated_conjecture,
    ( ~ r2_relset_1(esk1_0,esk2_0,k8_relat_1(esk3_0,esk4_0),esk4_0) ),
    inference(rw,[status(thm)],[c_0_32,c_0_33])).

cnf(c_0_38,negated_conjecture,
    ( k8_relat_1(esk3_0,esk4_0) = esk4_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_24]),c_0_35]),c_0_35])).

cnf(c_0_39,negated_conjecture,
    ( r2_relset_1(esk1_0,esk2_0,esk4_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_36,c_0_16])).

cnf(c_0_40,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_37,c_0_38]),c_0_39])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.33  % Computer   : n025.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 19:10:51 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.33  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.36  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S087N
% 0.13/0.36  # and selection function SelectCQArNpEqFirstUnlessPDom.
% 0.13/0.36  #
% 0.13/0.36  # Preprocessing time       : 0.027 s
% 0.13/0.36  # Presaturation interreduction done
% 0.13/0.36  
% 0.13/0.36  # Proof found!
% 0.13/0.36  # SZS status Theorem
% 0.13/0.36  # SZS output start CNFRefutation
% 0.13/0.36  fof(t36_relset_1, conjecture, ![X1, X2, X3, X4]:(m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(r1_tarski(X2,X3)=>r2_relset_1(X1,X2,k6_relset_1(X1,X2,X3,X4),X4))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t36_relset_1)).
% 0.13/0.36  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.13/0.36  fof(cc2_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>v1_relat_1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relat_1)).
% 0.13/0.36  fof(fc6_relat_1, axiom, ![X1, X2]:v1_relat_1(k2_zfmisc_1(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc6_relat_1)).
% 0.13/0.36  fof(d19_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v5_relat_1(X2,X1)<=>r1_tarski(k2_relat_1(X2),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d19_relat_1)).
% 0.13/0.36  fof(redefinition_k6_relset_1, axiom, ![X1, X2, X3, X4]:(m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k6_relset_1(X1,X2,X3,X4)=k8_relat_1(X3,X4)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k6_relset_1)).
% 0.13/0.36  fof(t129_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>(r1_tarski(X1,X2)=>k8_relat_1(X2,k8_relat_1(X1,X3))=k8_relat_1(X1,X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t129_relat_1)).
% 0.13/0.36  fof(t125_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(r1_tarski(k2_relat_1(X2),X1)=>k8_relat_1(X1,X2)=X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t125_relat_1)).
% 0.13/0.36  fof(redefinition_r2_relset_1, axiom, ![X1, X2, X3, X4]:((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(r2_relset_1(X1,X2,X3,X4)<=>X3=X4)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_r2_relset_1)).
% 0.13/0.36  fof(c_0_9, negated_conjecture, ~(![X1, X2, X3, X4]:(m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(r1_tarski(X2,X3)=>r2_relset_1(X1,X2,k6_relset_1(X1,X2,X3,X4),X4)))), inference(assume_negation,[status(cth)],[t36_relset_1])).
% 0.13/0.36  fof(c_0_10, plain, ![X16, X17, X18]:((v4_relat_1(X18,X16)|~m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(X16,X17))))&(v5_relat_1(X18,X17)|~m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(X16,X17))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.13/0.36  fof(c_0_11, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))&(r1_tarski(esk2_0,esk3_0)&~r2_relset_1(esk1_0,esk2_0,k6_relset_1(esk1_0,esk2_0,esk3_0,esk4_0),esk4_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_9])])])).
% 0.13/0.36  fof(c_0_12, plain, ![X5, X6]:(~v1_relat_1(X5)|(~m1_subset_1(X6,k1_zfmisc_1(X5))|v1_relat_1(X6))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).
% 0.13/0.36  fof(c_0_13, plain, ![X9, X10]:v1_relat_1(k2_zfmisc_1(X9,X10)), inference(variable_rename,[status(thm)],[fc6_relat_1])).
% 0.13/0.36  fof(c_0_14, plain, ![X7, X8]:((~v5_relat_1(X8,X7)|r1_tarski(k2_relat_1(X8),X7)|~v1_relat_1(X8))&(~r1_tarski(k2_relat_1(X8),X7)|v5_relat_1(X8,X7)|~v1_relat_1(X8))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).
% 0.13/0.36  cnf(c_0_15, plain, (v5_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.36  cnf(c_0_16, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.36  cnf(c_0_17, plain, (v1_relat_1(X2)|~v1_relat_1(X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.36  cnf(c_0_18, plain, (v1_relat_1(k2_zfmisc_1(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.36  fof(c_0_19, plain, ![X19, X20, X21, X22]:(~m1_subset_1(X22,k1_zfmisc_1(k2_zfmisc_1(X19,X20)))|k6_relset_1(X19,X20,X21,X22)=k8_relat_1(X21,X22)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k6_relset_1])])).
% 0.13/0.36  fof(c_0_20, plain, ![X13, X14, X15]:(~v1_relat_1(X15)|(~r1_tarski(X13,X14)|k8_relat_1(X14,k8_relat_1(X13,X15))=k8_relat_1(X13,X15))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t129_relat_1])])).
% 0.13/0.36  fof(c_0_21, plain, ![X11, X12]:(~v1_relat_1(X12)|(~r1_tarski(k2_relat_1(X12),X11)|k8_relat_1(X11,X12)=X12)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t125_relat_1])])).
% 0.13/0.36  cnf(c_0_22, plain, (r1_tarski(k2_relat_1(X1),X2)|~v5_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.36  cnf(c_0_23, negated_conjecture, (v5_relat_1(esk4_0,esk2_0)), inference(spm,[status(thm)],[c_0_15, c_0_16])).
% 0.13/0.36  cnf(c_0_24, negated_conjecture, (v1_relat_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17, c_0_16]), c_0_18])])).
% 0.13/0.36  fof(c_0_25, plain, ![X23, X24, X25, X26]:((~r2_relset_1(X23,X24,X25,X26)|X25=X26|(~m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))|~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))))&(X25!=X26|r2_relset_1(X23,X24,X25,X26)|(~m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))|~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_r2_relset_1])])])).
% 0.13/0.36  cnf(c_0_26, plain, (k6_relset_1(X2,X3,X4,X1)=k8_relat_1(X4,X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.13/0.36  cnf(c_0_27, plain, (k8_relat_1(X3,k8_relat_1(X2,X1))=k8_relat_1(X2,X1)|~v1_relat_1(X1)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.36  cnf(c_0_28, negated_conjecture, (r1_tarski(esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.36  cnf(c_0_29, plain, (k8_relat_1(X2,X1)=X1|~v1_relat_1(X1)|~r1_tarski(k2_relat_1(X1),X2)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.13/0.36  cnf(c_0_30, negated_conjecture, (r1_tarski(k2_relat_1(esk4_0),esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_23]), c_0_24])])).
% 0.13/0.36  cnf(c_0_31, plain, (r2_relset_1(X3,X4,X1,X2)|X1!=X2|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.13/0.36  cnf(c_0_32, negated_conjecture, (~r2_relset_1(esk1_0,esk2_0,k6_relset_1(esk1_0,esk2_0,esk3_0,esk4_0),esk4_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.36  cnf(c_0_33, negated_conjecture, (k6_relset_1(esk1_0,esk2_0,X1,esk4_0)=k8_relat_1(X1,esk4_0)), inference(spm,[status(thm)],[c_0_26, c_0_16])).
% 0.13/0.36  cnf(c_0_34, negated_conjecture, (k8_relat_1(esk3_0,k8_relat_1(esk2_0,X1))=k8_relat_1(esk2_0,X1)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.13/0.36  cnf(c_0_35, negated_conjecture, (k8_relat_1(esk2_0,esk4_0)=esk4_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_30]), c_0_24])])).
% 0.13/0.36  cnf(c_0_36, plain, (r2_relset_1(X1,X2,X3,X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(er,[status(thm)],[c_0_31])).
% 0.13/0.36  cnf(c_0_37, negated_conjecture, (~r2_relset_1(esk1_0,esk2_0,k8_relat_1(esk3_0,esk4_0),esk4_0)), inference(rw,[status(thm)],[c_0_32, c_0_33])).
% 0.13/0.36  cnf(c_0_38, negated_conjecture, (k8_relat_1(esk3_0,esk4_0)=esk4_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_24]), c_0_35]), c_0_35])).
% 0.13/0.36  cnf(c_0_39, negated_conjecture, (r2_relset_1(esk1_0,esk2_0,esk4_0,esk4_0)), inference(spm,[status(thm)],[c_0_36, c_0_16])).
% 0.13/0.36  cnf(c_0_40, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_37, c_0_38]), c_0_39])]), ['proof']).
% 0.13/0.36  # SZS output end CNFRefutation
% 0.13/0.36  # Proof object total steps             : 41
% 0.13/0.36  # Proof object clause steps            : 22
% 0.13/0.36  # Proof object formula steps           : 19
% 0.13/0.36  # Proof object conjectures             : 16
% 0.13/0.36  # Proof object clause conjectures      : 13
% 0.13/0.36  # Proof object formula conjectures     : 3
% 0.13/0.36  # Proof object initial clauses used    : 11
% 0.13/0.36  # Proof object initial formulas used   : 9
% 0.13/0.36  # Proof object generating inferences   : 8
% 0.13/0.36  # Proof object simplifying inferences  : 13
% 0.13/0.36  # Training examples: 0 positive, 0 negative
% 0.13/0.36  # Parsed axioms                        : 9
% 0.13/0.36  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.36  # Initial clauses                      : 14
% 0.13/0.36  # Removed in clause preprocessing      : 0
% 0.13/0.36  # Initial clauses in saturation        : 14
% 0.13/0.36  # Processed clauses                    : 40
% 0.13/0.36  # ...of these trivial                  : 0
% 0.13/0.36  # ...subsumed                          : 0
% 0.13/0.36  # ...remaining for further processing  : 40
% 0.13/0.36  # Other redundant clauses eliminated   : 1
% 0.13/0.36  # Clauses deleted for lack of memory   : 0
% 0.13/0.36  # Backward-subsumed                    : 0
% 0.13/0.36  # Backward-rewritten                   : 2
% 0.13/0.36  # Generated clauses                    : 15
% 0.13/0.36  # ...of the previous two non-trivial   : 15
% 0.13/0.36  # Contextual simplify-reflections      : 0
% 0.13/0.36  # Paramodulations                      : 14
% 0.13/0.36  # Factorizations                       : 0
% 0.13/0.36  # Equation resolutions                 : 1
% 0.13/0.36  # Propositional unsat checks           : 0
% 0.13/0.36  #    Propositional check models        : 0
% 0.13/0.36  #    Propositional check unsatisfiable : 0
% 0.13/0.36  #    Propositional clauses             : 0
% 0.13/0.36  #    Propositional clauses after purity: 0
% 0.13/0.36  #    Propositional unsat core size     : 0
% 0.13/0.36  #    Propositional preprocessing time  : 0.000
% 0.13/0.36  #    Propositional encoding time       : 0.000
% 0.13/0.36  #    Propositional solver time         : 0.000
% 0.13/0.36  #    Success case prop preproc time    : 0.000
% 0.13/0.36  #    Success case prop encoding time   : 0.000
% 0.13/0.36  #    Success case prop solver time     : 0.000
% 0.13/0.36  # Current number of processed clauses  : 23
% 0.13/0.36  #    Positive orientable unit clauses  : 11
% 0.13/0.36  #    Positive unorientable unit clauses: 0
% 0.13/0.36  #    Negative unit clauses             : 0
% 0.13/0.36  #    Non-unit-clauses                  : 12
% 0.13/0.36  # Current number of unprocessed clauses: 3
% 0.13/0.36  # ...number of literals in the above   : 3
% 0.13/0.36  # Current number of archived formulas  : 0
% 0.13/0.36  # Current number of archived clauses   : 16
% 0.13/0.36  # Clause-clause subsumption calls (NU) : 24
% 0.13/0.36  # Rec. Clause-clause subsumption calls : 18
% 0.13/0.36  # Non-unit clause-clause subsumptions  : 0
% 0.13/0.36  # Unit Clause-clause subsumption calls : 12
% 0.13/0.36  # Rewrite failures with RHS unbound    : 0
% 0.13/0.36  # BW rewrite match attempts            : 3
% 0.13/0.36  # BW rewrite match successes           : 2
% 0.13/0.36  # Condensation attempts                : 0
% 0.13/0.36  # Condensation successes               : 0
% 0.13/0.36  # Termbank termtop insertions          : 1363
% 0.13/0.36  
% 0.13/0.36  # -------------------------------------------------
% 0.13/0.36  # User time                : 0.027 s
% 0.13/0.36  # System time              : 0.004 s
% 0.13/0.36  # Total time               : 0.032 s
% 0.13/0.36  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
