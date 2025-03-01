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
% DateTime   : Thu Dec  3 11:03:51 EST 2020

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   37 (  79 expanded)
%              Number of clauses        :   22 (  29 expanded)
%              Number of leaves         :    7 (  19 expanded)
%              Depth                    :    9
%              Number of atoms          :  134 ( 377 expanded)
%              Number of equality atoms :   45 ( 111 expanded)
%              Maximal formula depth    :   14 (   5 average)
%              Maximal clause size      :   26 (   2 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t41_funct_2,conjecture,(
    ! [X1,X2,X3,X4,X5] :
      ( ( v1_funct_1(X5)
        & v1_funct_2(X5,X1,X2)
        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( ( r2_hidden(X3,X1)
          & r2_hidden(k1_funct_1(X5,X3),X4) )
       => ( X2 = k1_xboole_0
          | k1_funct_1(k6_relset_1(X1,X2,X4,X5),X3) = k1_funct_1(X5,X3) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t41_funct_2)).

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(d1_funct_2,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( ( ( X2 = k1_xboole_0
           => X1 = k1_xboole_0 )
         => ( v1_funct_2(X3,X1,X2)
          <=> X1 = k1_relset_1(X1,X2,X3) ) )
        & ( X2 = k1_xboole_0
         => ( X1 = k1_xboole_0
            | ( v1_funct_2(X3,X1,X2)
            <=> X3 = k1_xboole_0 ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_funct_2)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc1_relset_1)).

fof(t86_funct_1,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_relat_1(X3)
        & v1_funct_1(X3) )
     => ( r2_hidden(X1,k1_relat_1(k8_relat_1(X2,X3)))
      <=> ( r2_hidden(X1,k1_relat_1(X3))
          & r2_hidden(k1_funct_1(X3,X1),X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t86_funct_1)).

fof(t87_funct_1,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_relat_1(X3)
        & v1_funct_1(X3) )
     => ( r2_hidden(X1,k1_relat_1(k8_relat_1(X2,X3)))
       => k1_funct_1(k8_relat_1(X2,X3),X1) = k1_funct_1(X3,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t87_funct_1)).

fof(redefinition_k6_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k6_relset_1(X1,X2,X3,X4) = k8_relat_1(X3,X4) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k6_relset_1)).

fof(c_0_7,negated_conjecture,(
    ~ ! [X1,X2,X3,X4,X5] :
        ( ( v1_funct_1(X5)
          & v1_funct_2(X5,X1,X2)
          & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
       => ( ( r2_hidden(X3,X1)
            & r2_hidden(k1_funct_1(X5,X3),X4) )
         => ( X2 = k1_xboole_0
            | k1_funct_1(k6_relset_1(X1,X2,X4,X5),X3) = k1_funct_1(X5,X3) ) ) ) ),
    inference(assume_negation,[status(cth)],[t41_funct_2])).

fof(c_0_8,plain,(
    ! [X15,X16,X17] :
      ( ~ m1_subset_1(X17,k1_zfmisc_1(k2_zfmisc_1(X15,X16)))
      | k1_relset_1(X15,X16,X17) = k1_relat_1(X17) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

fof(c_0_9,negated_conjecture,
    ( v1_funct_1(esk5_0)
    & v1_funct_2(esk5_0,esk1_0,esk2_0)
    & m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))
    & r2_hidden(esk3_0,esk1_0)
    & r2_hidden(k1_funct_1(esk5_0,esk3_0),esk4_0)
    & esk2_0 != k1_xboole_0
    & k1_funct_1(k6_relset_1(esk1_0,esk2_0,esk4_0,esk5_0),esk3_0) != k1_funct_1(esk5_0,esk3_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).

fof(c_0_10,plain,(
    ! [X22,X23,X24] :
      ( ( ~ v1_funct_2(X24,X22,X23)
        | X22 = k1_relset_1(X22,X23,X24)
        | X23 = k1_xboole_0
        | ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))) )
      & ( X22 != k1_relset_1(X22,X23,X24)
        | v1_funct_2(X24,X22,X23)
        | X23 = k1_xboole_0
        | ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))) )
      & ( ~ v1_funct_2(X24,X22,X23)
        | X22 = k1_relset_1(X22,X23,X24)
        | X22 != k1_xboole_0
        | ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))) )
      & ( X22 != k1_relset_1(X22,X23,X24)
        | v1_funct_2(X24,X22,X23)
        | X22 != k1_xboole_0
        | ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))) )
      & ( ~ v1_funct_2(X24,X22,X23)
        | X24 = k1_xboole_0
        | X22 = k1_xboole_0
        | X23 != k1_xboole_0
        | ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))) )
      & ( X24 != k1_xboole_0
        | v1_funct_2(X24,X22,X23)
        | X22 = k1_xboole_0
        | X23 != k1_xboole_0
        | ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).

cnf(c_0_11,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_12,negated_conjecture,
    ( m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

fof(c_0_13,plain,(
    ! [X12,X13,X14] :
      ( ~ m1_subset_1(X14,k1_zfmisc_1(k2_zfmisc_1(X12,X13)))
      | v1_relat_1(X14) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

fof(c_0_14,plain,(
    ! [X6,X7,X8] :
      ( ( r2_hidden(X6,k1_relat_1(X8))
        | ~ r2_hidden(X6,k1_relat_1(k8_relat_1(X7,X8)))
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8) )
      & ( r2_hidden(k1_funct_1(X8,X6),X7)
        | ~ r2_hidden(X6,k1_relat_1(k8_relat_1(X7,X8)))
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8) )
      & ( ~ r2_hidden(X6,k1_relat_1(X8))
        | ~ r2_hidden(k1_funct_1(X8,X6),X7)
        | r2_hidden(X6,k1_relat_1(k8_relat_1(X7,X8)))
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t86_funct_1])])])).

cnf(c_0_15,plain,
    ( X2 = k1_relset_1(X2,X3,X1)
    | X3 = k1_xboole_0
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_16,negated_conjecture,
    ( v1_funct_2(esk5_0,esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_17,negated_conjecture,
    ( k1_relset_1(esk1_0,esk2_0,esk5_0) = k1_relat_1(esk5_0) ),
    inference(spm,[status(thm)],[c_0_11,c_0_12])).

cnf(c_0_18,negated_conjecture,
    ( esk2_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_19,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_20,plain,(
    ! [X9,X10,X11] :
      ( ~ v1_relat_1(X11)
      | ~ v1_funct_1(X11)
      | ~ r2_hidden(X9,k1_relat_1(k8_relat_1(X10,X11)))
      | k1_funct_1(k8_relat_1(X10,X11),X9) = k1_funct_1(X11,X9) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t87_funct_1])])).

cnf(c_0_21,plain,
    ( r2_hidden(X1,k1_relat_1(k8_relat_1(X3,X2)))
    | ~ r2_hidden(X1,k1_relat_1(X2))
    | ~ r2_hidden(k1_funct_1(X2,X1),X3)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_22,negated_conjecture,
    ( k1_relat_1(esk5_0) = esk1_0 ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_15,c_0_16]),c_0_17]),c_0_12])]),c_0_18])).

cnf(c_0_23,negated_conjecture,
    ( v1_funct_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_24,negated_conjecture,
    ( v1_relat_1(esk5_0) ),
    inference(spm,[status(thm)],[c_0_19,c_0_12])).

fof(c_0_25,plain,(
    ! [X18,X19,X20,X21] :
      ( ~ m1_subset_1(X21,k1_zfmisc_1(k2_zfmisc_1(X18,X19)))
      | k6_relset_1(X18,X19,X20,X21) = k8_relat_1(X20,X21) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k6_relset_1])])).

cnf(c_0_26,plain,
    ( k1_funct_1(k8_relat_1(X3,X1),X2) = k1_funct_1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ r2_hidden(X2,k1_relat_1(k8_relat_1(X3,X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_27,negated_conjecture,
    ( r2_hidden(X1,k1_relat_1(k8_relat_1(X2,esk5_0)))
    | ~ r2_hidden(k1_funct_1(esk5_0,X1),X2)
    | ~ r2_hidden(X1,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21,c_0_22]),c_0_23]),c_0_24])])).

cnf(c_0_28,plain,
    ( k6_relset_1(X2,X3,X4,X1) = k8_relat_1(X4,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_29,negated_conjecture,
    ( k1_funct_1(k8_relat_1(X1,esk5_0),X2) = k1_funct_1(esk5_0,X2)
    | ~ r2_hidden(k1_funct_1(esk5_0,X2),X1)
    | ~ r2_hidden(X2,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_23]),c_0_24])])).

cnf(c_0_30,negated_conjecture,
    ( r2_hidden(esk3_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_31,negated_conjecture,
    ( k1_funct_1(k6_relset_1(esk1_0,esk2_0,esk4_0,esk5_0),esk3_0) != k1_funct_1(esk5_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_32,negated_conjecture,
    ( k6_relset_1(esk1_0,esk2_0,X1,esk5_0) = k8_relat_1(X1,esk5_0) ),
    inference(spm,[status(thm)],[c_0_28,c_0_12])).

cnf(c_0_33,negated_conjecture,
    ( k1_funct_1(k8_relat_1(X1,esk5_0),esk3_0) = k1_funct_1(esk5_0,esk3_0)
    | ~ r2_hidden(k1_funct_1(esk5_0,esk3_0),X1) ),
    inference(spm,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_34,negated_conjecture,
    ( r2_hidden(k1_funct_1(esk5_0,esk3_0),esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_35,negated_conjecture,
    ( k1_funct_1(k8_relat_1(esk4_0,esk5_0),esk3_0) != k1_funct_1(esk5_0,esk3_0) ),
    inference(rw,[status(thm)],[c_0_31,c_0_32])).

cnf(c_0_36,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_35]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.13/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.36  % Computer   : n023.cluster.edu
% 0.14/0.36  % Model      : x86_64 x86_64
% 0.14/0.36  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.36  % Memory     : 8042.1875MB
% 0.14/0.36  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.36  % CPULimit   : 60
% 0.14/0.36  % WCLimit    : 600
% 0.14/0.36  % DateTime   : Tue Dec  1 14:14:35 EST 2020
% 0.14/0.36  % CPUTime    : 
% 0.14/0.36  # Version: 2.5pre002
% 0.14/0.36  # No SInE strategy applied
% 0.14/0.36  # Trying AutoSched0 for 299 seconds
% 0.14/0.39  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S088I
% 0.14/0.39  # and selection function SelectCQArNTEqFirstUnlessPDom.
% 0.14/0.39  #
% 0.14/0.39  # Preprocessing time       : 0.028 s
% 0.14/0.39  # Presaturation interreduction done
% 0.14/0.39  
% 0.14/0.39  # Proof found!
% 0.14/0.39  # SZS status Theorem
% 0.14/0.39  # SZS output start CNFRefutation
% 0.14/0.39  fof(t41_funct_2, conjecture, ![X1, X2, X3, X4, X5]:(((v1_funct_1(X5)&v1_funct_2(X5,X1,X2))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>((r2_hidden(X3,X1)&r2_hidden(k1_funct_1(X5,X3),X4))=>(X2=k1_xboole_0|k1_funct_1(k6_relset_1(X1,X2,X4,X5),X3)=k1_funct_1(X5,X3)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t41_funct_2)).
% 0.14/0.39  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.14/0.39  fof(d1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(((X2=k1_xboole_0=>X1=k1_xboole_0)=>(v1_funct_2(X3,X1,X2)<=>X1=k1_relset_1(X1,X2,X3)))&(X2=k1_xboole_0=>(X1=k1_xboole_0|(v1_funct_2(X3,X1,X2)<=>X3=k1_xboole_0))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_funct_2)).
% 0.14/0.39  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.14/0.39  fof(t86_funct_1, axiom, ![X1, X2, X3]:((v1_relat_1(X3)&v1_funct_1(X3))=>(r2_hidden(X1,k1_relat_1(k8_relat_1(X2,X3)))<=>(r2_hidden(X1,k1_relat_1(X3))&r2_hidden(k1_funct_1(X3,X1),X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t86_funct_1)).
% 0.14/0.39  fof(t87_funct_1, axiom, ![X1, X2, X3]:((v1_relat_1(X3)&v1_funct_1(X3))=>(r2_hidden(X1,k1_relat_1(k8_relat_1(X2,X3)))=>k1_funct_1(k8_relat_1(X2,X3),X1)=k1_funct_1(X3,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t87_funct_1)).
% 0.14/0.39  fof(redefinition_k6_relset_1, axiom, ![X1, X2, X3, X4]:(m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k6_relset_1(X1,X2,X3,X4)=k8_relat_1(X3,X4)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k6_relset_1)).
% 0.14/0.39  fof(c_0_7, negated_conjecture, ~(![X1, X2, X3, X4, X5]:(((v1_funct_1(X5)&v1_funct_2(X5,X1,X2))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>((r2_hidden(X3,X1)&r2_hidden(k1_funct_1(X5,X3),X4))=>(X2=k1_xboole_0|k1_funct_1(k6_relset_1(X1,X2,X4,X5),X3)=k1_funct_1(X5,X3))))), inference(assume_negation,[status(cth)],[t41_funct_2])).
% 0.14/0.39  fof(c_0_8, plain, ![X15, X16, X17]:(~m1_subset_1(X17,k1_zfmisc_1(k2_zfmisc_1(X15,X16)))|k1_relset_1(X15,X16,X17)=k1_relat_1(X17)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.14/0.39  fof(c_0_9, negated_conjecture, (((v1_funct_1(esk5_0)&v1_funct_2(esk5_0,esk1_0,esk2_0))&m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0))))&((r2_hidden(esk3_0,esk1_0)&r2_hidden(k1_funct_1(esk5_0,esk3_0),esk4_0))&(esk2_0!=k1_xboole_0&k1_funct_1(k6_relset_1(esk1_0,esk2_0,esk4_0,esk5_0),esk3_0)!=k1_funct_1(esk5_0,esk3_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).
% 0.14/0.39  fof(c_0_10, plain, ![X22, X23, X24]:((((~v1_funct_2(X24,X22,X23)|X22=k1_relset_1(X22,X23,X24)|X23=k1_xboole_0|~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))))&(X22!=k1_relset_1(X22,X23,X24)|v1_funct_2(X24,X22,X23)|X23=k1_xboole_0|~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23)))))&((~v1_funct_2(X24,X22,X23)|X22=k1_relset_1(X22,X23,X24)|X22!=k1_xboole_0|~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))))&(X22!=k1_relset_1(X22,X23,X24)|v1_funct_2(X24,X22,X23)|X22!=k1_xboole_0|~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))))))&((~v1_funct_2(X24,X22,X23)|X24=k1_xboole_0|X22=k1_xboole_0|X23!=k1_xboole_0|~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23))))&(X24!=k1_xboole_0|v1_funct_2(X24,X22,X23)|X22=k1_xboole_0|X23!=k1_xboole_0|~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X22,X23)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).
% 0.14/0.39  cnf(c_0_11, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.14/0.39  cnf(c_0_12, negated_conjecture, (m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.39  fof(c_0_13, plain, ![X12, X13, X14]:(~m1_subset_1(X14,k1_zfmisc_1(k2_zfmisc_1(X12,X13)))|v1_relat_1(X14)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.14/0.39  fof(c_0_14, plain, ![X6, X7, X8]:(((r2_hidden(X6,k1_relat_1(X8))|~r2_hidden(X6,k1_relat_1(k8_relat_1(X7,X8)))|(~v1_relat_1(X8)|~v1_funct_1(X8)))&(r2_hidden(k1_funct_1(X8,X6),X7)|~r2_hidden(X6,k1_relat_1(k8_relat_1(X7,X8)))|(~v1_relat_1(X8)|~v1_funct_1(X8))))&(~r2_hidden(X6,k1_relat_1(X8))|~r2_hidden(k1_funct_1(X8,X6),X7)|r2_hidden(X6,k1_relat_1(k8_relat_1(X7,X8)))|(~v1_relat_1(X8)|~v1_funct_1(X8)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t86_funct_1])])])).
% 0.14/0.39  cnf(c_0_15, plain, (X2=k1_relset_1(X2,X3,X1)|X3=k1_xboole_0|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.14/0.39  cnf(c_0_16, negated_conjecture, (v1_funct_2(esk5_0,esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.39  cnf(c_0_17, negated_conjecture, (k1_relset_1(esk1_0,esk2_0,esk5_0)=k1_relat_1(esk5_0)), inference(spm,[status(thm)],[c_0_11, c_0_12])).
% 0.14/0.39  cnf(c_0_18, negated_conjecture, (esk2_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.39  cnf(c_0_19, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.14/0.39  fof(c_0_20, plain, ![X9, X10, X11]:(~v1_relat_1(X11)|~v1_funct_1(X11)|(~r2_hidden(X9,k1_relat_1(k8_relat_1(X10,X11)))|k1_funct_1(k8_relat_1(X10,X11),X9)=k1_funct_1(X11,X9))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t87_funct_1])])).
% 0.14/0.39  cnf(c_0_21, plain, (r2_hidden(X1,k1_relat_1(k8_relat_1(X3,X2)))|~r2_hidden(X1,k1_relat_1(X2))|~r2_hidden(k1_funct_1(X2,X1),X3)|~v1_relat_1(X2)|~v1_funct_1(X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.39  cnf(c_0_22, negated_conjecture, (k1_relat_1(esk5_0)=esk1_0), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_15, c_0_16]), c_0_17]), c_0_12])]), c_0_18])).
% 0.14/0.39  cnf(c_0_23, negated_conjecture, (v1_funct_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.39  cnf(c_0_24, negated_conjecture, (v1_relat_1(esk5_0)), inference(spm,[status(thm)],[c_0_19, c_0_12])).
% 0.14/0.39  fof(c_0_25, plain, ![X18, X19, X20, X21]:(~m1_subset_1(X21,k1_zfmisc_1(k2_zfmisc_1(X18,X19)))|k6_relset_1(X18,X19,X20,X21)=k8_relat_1(X20,X21)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k6_relset_1])])).
% 0.14/0.39  cnf(c_0_26, plain, (k1_funct_1(k8_relat_1(X3,X1),X2)=k1_funct_1(X1,X2)|~v1_relat_1(X1)|~v1_funct_1(X1)|~r2_hidden(X2,k1_relat_1(k8_relat_1(X3,X1)))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.14/0.39  cnf(c_0_27, negated_conjecture, (r2_hidden(X1,k1_relat_1(k8_relat_1(X2,esk5_0)))|~r2_hidden(k1_funct_1(esk5_0,X1),X2)|~r2_hidden(X1,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21, c_0_22]), c_0_23]), c_0_24])])).
% 0.14/0.39  cnf(c_0_28, plain, (k6_relset_1(X2,X3,X4,X1)=k8_relat_1(X4,X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.14/0.39  cnf(c_0_29, negated_conjecture, (k1_funct_1(k8_relat_1(X1,esk5_0),X2)=k1_funct_1(esk5_0,X2)|~r2_hidden(k1_funct_1(esk5_0,X2),X1)|~r2_hidden(X2,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_23]), c_0_24])])).
% 0.14/0.39  cnf(c_0_30, negated_conjecture, (r2_hidden(esk3_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.39  cnf(c_0_31, negated_conjecture, (k1_funct_1(k6_relset_1(esk1_0,esk2_0,esk4_0,esk5_0),esk3_0)!=k1_funct_1(esk5_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.39  cnf(c_0_32, negated_conjecture, (k6_relset_1(esk1_0,esk2_0,X1,esk5_0)=k8_relat_1(X1,esk5_0)), inference(spm,[status(thm)],[c_0_28, c_0_12])).
% 0.14/0.39  cnf(c_0_33, negated_conjecture, (k1_funct_1(k8_relat_1(X1,esk5_0),esk3_0)=k1_funct_1(esk5_0,esk3_0)|~r2_hidden(k1_funct_1(esk5_0,esk3_0),X1)), inference(spm,[status(thm)],[c_0_29, c_0_30])).
% 0.14/0.39  cnf(c_0_34, negated_conjecture, (r2_hidden(k1_funct_1(esk5_0,esk3_0),esk4_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.39  cnf(c_0_35, negated_conjecture, (k1_funct_1(k8_relat_1(esk4_0,esk5_0),esk3_0)!=k1_funct_1(esk5_0,esk3_0)), inference(rw,[status(thm)],[c_0_31, c_0_32])).
% 0.14/0.39  cnf(c_0_36, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_35]), ['proof']).
% 0.14/0.39  # SZS output end CNFRefutation
% 0.14/0.39  # Proof object total steps             : 37
% 0.14/0.39  # Proof object clause steps            : 22
% 0.14/0.39  # Proof object formula steps           : 15
% 0.14/0.39  # Proof object conjectures             : 19
% 0.14/0.39  # Proof object clause conjectures      : 16
% 0.14/0.39  # Proof object formula conjectures     : 3
% 0.14/0.39  # Proof object initial clauses used    : 13
% 0.14/0.39  # Proof object initial formulas used   : 7
% 0.14/0.39  # Proof object generating inferences   : 8
% 0.14/0.39  # Proof object simplifying inferences  : 12
% 0.14/0.39  # Training examples: 0 positive, 0 negative
% 0.14/0.39  # Parsed axioms                        : 7
% 0.14/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.39  # Initial clauses                      : 20
% 0.14/0.39  # Removed in clause preprocessing      : 0
% 0.14/0.39  # Initial clauses in saturation        : 20
% 0.14/0.39  # Processed clauses                    : 53
% 0.14/0.39  # ...of these trivial                  : 0
% 0.14/0.39  # ...subsumed                          : 0
% 0.14/0.39  # ...remaining for further processing  : 53
% 0.14/0.39  # Other redundant clauses eliminated   : 5
% 0.14/0.39  # Clauses deleted for lack of memory   : 0
% 0.14/0.39  # Backward-subsumed                    : 0
% 0.14/0.39  # Backward-rewritten                   : 2
% 0.14/0.39  # Generated clauses                    : 17
% 0.14/0.39  # ...of the previous two non-trivial   : 15
% 0.14/0.39  # Contextual simplify-reflections      : 0
% 0.14/0.39  # Paramodulations                      : 13
% 0.14/0.39  # Factorizations                       : 0
% 0.14/0.39  # Equation resolutions                 : 5
% 0.14/0.39  # Propositional unsat checks           : 0
% 0.14/0.39  #    Propositional check models        : 0
% 0.14/0.39  #    Propositional check unsatisfiable : 0
% 0.14/0.39  #    Propositional clauses             : 0
% 0.14/0.39  #    Propositional clauses after purity: 0
% 0.14/0.39  #    Propositional unsat core size     : 0
% 0.14/0.39  #    Propositional preprocessing time  : 0.000
% 0.14/0.39  #    Propositional encoding time       : 0.000
% 0.14/0.39  #    Propositional solver time         : 0.000
% 0.14/0.39  #    Success case prop preproc time    : 0.000
% 0.14/0.39  #    Success case prop encoding time   : 0.000
% 0.14/0.39  #    Success case prop solver time     : 0.000
% 0.14/0.39  # Current number of processed clauses  : 27
% 0.14/0.39  #    Positive orientable unit clauses  : 9
% 0.14/0.39  #    Positive unorientable unit clauses: 0
% 0.14/0.39  #    Negative unit clauses             : 2
% 0.14/0.39  #    Non-unit-clauses                  : 16
% 0.14/0.39  # Current number of unprocessed clauses: 1
% 0.14/0.39  # ...number of literals in the above   : 6
% 0.14/0.39  # Current number of archived formulas  : 0
% 0.14/0.39  # Current number of archived clauses   : 22
% 0.14/0.39  # Clause-clause subsumption calls (NU) : 125
% 0.14/0.39  # Rec. Clause-clause subsumption calls : 48
% 0.14/0.39  # Non-unit clause-clause subsumptions  : 0
% 0.14/0.39  # Unit Clause-clause subsumption calls : 3
% 0.14/0.39  # Rewrite failures with RHS unbound    : 0
% 0.14/0.39  # BW rewrite match attempts            : 2
% 0.14/0.39  # BW rewrite match successes           : 2
% 0.14/0.39  # Condensation attempts                : 0
% 0.14/0.39  # Condensation successes               : 0
% 0.14/0.39  # Termbank termtop insertions          : 1935
% 0.14/0.39  
% 0.14/0.39  # -------------------------------------------------
% 0.14/0.39  # User time                : 0.029 s
% 0.14/0.39  # System time              : 0.004 s
% 0.14/0.39  # Total time               : 0.033 s
% 0.14/0.39  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
