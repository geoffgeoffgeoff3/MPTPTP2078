%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:57:27 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   38 (  82 expanded)
%              Number of clauses        :   21 (  32 expanded)
%              Number of leaves         :    8 (  20 expanded)
%              Depth                    :    8
%              Number of atoms          :   92 ( 231 expanded)
%              Number of equality atoms :   19 (  50 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t31_relset_1,conjecture,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
     => ( r1_tarski(k6_relat_1(X2),X3)
       => ( X2 = k1_relset_1(X2,X1,X3)
          & r1_tarski(X2,k2_relset_1(X2,X1,X3)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t31_relset_1)).

fof(cc2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( v4_relat_1(X3,X1)
        & v5_relat_1(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_relset_1)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relset_1)).

fof(t209_relat_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v4_relat_1(X2,X1) )
     => X2 = k7_relat_1(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t209_relat_1)).

fof(t30_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( r1_tarski(k6_relat_1(X3),X4)
       => ( r1_tarski(X3,k1_relset_1(X1,X2,X4))
          & r1_tarski(X3,k2_relset_1(X1,X2,X4)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t30_relset_1)).

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(t87_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => r1_tarski(k1_relat_1(k7_relat_1(X2,X1)),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t87_relat_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(c_0_8,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
       => ( r1_tarski(k6_relat_1(X2),X3)
         => ( X2 = k1_relset_1(X2,X1,X3)
            & r1_tarski(X2,k2_relset_1(X2,X1,X3)) ) ) ) ),
    inference(assume_negation,[status(cth)],[t31_relset_1])).

fof(c_0_9,plain,(
    ! [X14,X15,X16] :
      ( ( v4_relat_1(X16,X14)
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( v5_relat_1(X16,X15)
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

fof(c_0_10,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0)))
    & r1_tarski(k6_relat_1(esk2_0),esk3_0)
    & ( esk2_0 != k1_relset_1(esk2_0,esk1_0,esk3_0)
      | ~ r1_tarski(esk2_0,k2_relset_1(esk2_0,esk1_0,esk3_0)) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_8])])])).

fof(c_0_11,plain,(
    ! [X11,X12,X13] :
      ( ~ m1_subset_1(X13,k1_zfmisc_1(k2_zfmisc_1(X11,X12)))
      | v1_relat_1(X13) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

fof(c_0_12,plain,(
    ! [X7,X8] :
      ( ~ v1_relat_1(X8)
      | ~ v4_relat_1(X8,X7)
      | X8 = k7_relat_1(X8,X7) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).

cnf(c_0_13,plain,
    ( v4_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_14,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_15,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

fof(c_0_16,plain,(
    ! [X20,X21,X22,X23] :
      ( ( r1_tarski(X22,k1_relset_1(X20,X21,X23))
        | ~ r1_tarski(k6_relat_1(X22),X23)
        | ~ m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X20,X21))) )
      & ( r1_tarski(X22,k2_relset_1(X20,X21,X23))
        | ~ r1_tarski(k6_relat_1(X22),X23)
        | ~ m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X20,X21))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t30_relset_1])])])).

fof(c_0_17,plain,(
    ! [X17,X18,X19] :
      ( ~ m1_subset_1(X19,k1_zfmisc_1(k2_zfmisc_1(X17,X18)))
      | k1_relset_1(X17,X18,X19) = k1_relat_1(X19) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

fof(c_0_18,plain,(
    ! [X9,X10] :
      ( ~ v1_relat_1(X10)
      | r1_tarski(k1_relat_1(k7_relat_1(X10,X9)),X9) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t87_relat_1])])).

cnf(c_0_19,plain,
    ( X1 = k7_relat_1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v4_relat_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_20,negated_conjecture,
    ( v4_relat_1(esk3_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_13,c_0_14])).

cnf(c_0_21,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(spm,[status(thm)],[c_0_15,c_0_14])).

cnf(c_0_22,negated_conjecture,
    ( esk2_0 != k1_relset_1(esk2_0,esk1_0,esk3_0)
    | ~ r1_tarski(esk2_0,k2_relset_1(esk2_0,esk1_0,esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_23,plain,
    ( r1_tarski(X1,k2_relset_1(X2,X3,X4))
    | ~ r1_tarski(k6_relat_1(X1),X4)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_24,negated_conjecture,
    ( r1_tarski(k6_relat_1(esk2_0),esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_25,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

fof(c_0_26,plain,(
    ! [X5,X6] :
      ( ( r1_tarski(X5,X6)
        | X5 != X6 )
      & ( r1_tarski(X6,X5)
        | X5 != X6 )
      & ( ~ r1_tarski(X5,X6)
        | ~ r1_tarski(X6,X5)
        | X5 = X6 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_27,plain,
    ( r1_tarski(k1_relat_1(k7_relat_1(X1,X2)),X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_28,negated_conjecture,
    ( k7_relat_1(esk3_0,esk2_0) = esk3_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_21])])).

cnf(c_0_29,negated_conjecture,
    ( k1_relset_1(esk2_0,esk1_0,esk3_0) != esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_23]),c_0_14]),c_0_24])])).

cnf(c_0_30,negated_conjecture,
    ( k1_relset_1(esk2_0,esk1_0,esk3_0) = k1_relat_1(esk3_0) ),
    inference(spm,[status(thm)],[c_0_25,c_0_14])).

cnf(c_0_31,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_32,negated_conjecture,
    ( r1_tarski(k1_relat_1(esk3_0),esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_28]),c_0_21])])).

cnf(c_0_33,negated_conjecture,
    ( k1_relat_1(esk3_0) != esk2_0 ),
    inference(rw,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_34,plain,
    ( r1_tarski(X1,k1_relset_1(X2,X3,X4))
    | ~ r1_tarski(k6_relat_1(X1),X4)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_35,negated_conjecture,
    ( ~ r1_tarski(esk2_0,k1_relat_1(esk3_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_33])).

cnf(c_0_36,negated_conjecture,
    ( r1_tarski(X1,k1_relat_1(esk3_0))
    | ~ r1_tarski(k6_relat_1(X1),esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_30]),c_0_14])])).

cnf(c_0_37,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_36]),c_0_24])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n018.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 18:48:12 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.20/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.20/0.38  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.20/0.38  #
% 0.20/0.38  # Preprocessing time       : 0.028 s
% 0.20/0.38  # Presaturation interreduction done
% 0.20/0.38  
% 0.20/0.38  # Proof found!
% 0.20/0.38  # SZS status Theorem
% 0.20/0.38  # SZS output start CNFRefutation
% 0.20/0.38  fof(t31_relset_1, conjecture, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))=>(r1_tarski(k6_relat_1(X2),X3)=>(X2=k1_relset_1(X2,X1,X3)&r1_tarski(X2,k2_relset_1(X2,X1,X3))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t31_relset_1)).
% 0.20/0.38  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.20/0.38  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.20/0.38  fof(t209_relat_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v4_relat_1(X2,X1))=>X2=k7_relat_1(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t209_relat_1)).
% 0.20/0.38  fof(t30_relset_1, axiom, ![X1, X2, X3, X4]:(m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(r1_tarski(k6_relat_1(X3),X4)=>(r1_tarski(X3,k1_relset_1(X1,X2,X4))&r1_tarski(X3,k2_relset_1(X1,X2,X4))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t30_relset_1)).
% 0.20/0.38  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.20/0.38  fof(t87_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>r1_tarski(k1_relat_1(k7_relat_1(X2,X1)),X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t87_relat_1)).
% 0.20/0.38  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.20/0.38  fof(c_0_8, negated_conjecture, ~(![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))=>(r1_tarski(k6_relat_1(X2),X3)=>(X2=k1_relset_1(X2,X1,X3)&r1_tarski(X2,k2_relset_1(X2,X1,X3)))))), inference(assume_negation,[status(cth)],[t31_relset_1])).
% 0.20/0.38  fof(c_0_9, plain, ![X14, X15, X16]:((v4_relat_1(X16,X14)|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))))&(v5_relat_1(X16,X15)|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.20/0.38  fof(c_0_10, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0)))&(r1_tarski(k6_relat_1(esk2_0),esk3_0)&(esk2_0!=k1_relset_1(esk2_0,esk1_0,esk3_0)|~r1_tarski(esk2_0,k2_relset_1(esk2_0,esk1_0,esk3_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_8])])])).
% 0.20/0.38  fof(c_0_11, plain, ![X11, X12, X13]:(~m1_subset_1(X13,k1_zfmisc_1(k2_zfmisc_1(X11,X12)))|v1_relat_1(X13)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.20/0.38  fof(c_0_12, plain, ![X7, X8]:(~v1_relat_1(X8)|~v4_relat_1(X8,X7)|X8=k7_relat_1(X8,X7)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).
% 0.20/0.38  cnf(c_0_13, plain, (v4_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.20/0.38  cnf(c_0_14, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.20/0.38  cnf(c_0_15, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.38  fof(c_0_16, plain, ![X20, X21, X22, X23]:((r1_tarski(X22,k1_relset_1(X20,X21,X23))|~r1_tarski(k6_relat_1(X22),X23)|~m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X20,X21))))&(r1_tarski(X22,k2_relset_1(X20,X21,X23))|~r1_tarski(k6_relat_1(X22),X23)|~m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X20,X21))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t30_relset_1])])])).
% 0.20/0.38  fof(c_0_17, plain, ![X17, X18, X19]:(~m1_subset_1(X19,k1_zfmisc_1(k2_zfmisc_1(X17,X18)))|k1_relset_1(X17,X18,X19)=k1_relat_1(X19)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.20/0.38  fof(c_0_18, plain, ![X9, X10]:(~v1_relat_1(X10)|r1_tarski(k1_relat_1(k7_relat_1(X10,X9)),X9)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t87_relat_1])])).
% 0.20/0.38  cnf(c_0_19, plain, (X1=k7_relat_1(X1,X2)|~v1_relat_1(X1)|~v4_relat_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.38  cnf(c_0_20, negated_conjecture, (v4_relat_1(esk3_0,esk2_0)), inference(spm,[status(thm)],[c_0_13, c_0_14])).
% 0.20/0.38  cnf(c_0_21, negated_conjecture, (v1_relat_1(esk3_0)), inference(spm,[status(thm)],[c_0_15, c_0_14])).
% 0.20/0.38  cnf(c_0_22, negated_conjecture, (esk2_0!=k1_relset_1(esk2_0,esk1_0,esk3_0)|~r1_tarski(esk2_0,k2_relset_1(esk2_0,esk1_0,esk3_0))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.20/0.38  cnf(c_0_23, plain, (r1_tarski(X1,k2_relset_1(X2,X3,X4))|~r1_tarski(k6_relat_1(X1),X4)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.20/0.38  cnf(c_0_24, negated_conjecture, (r1_tarski(k6_relat_1(esk2_0),esk3_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.20/0.38  cnf(c_0_25, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.38  fof(c_0_26, plain, ![X5, X6]:(((r1_tarski(X5,X6)|X5!=X6)&(r1_tarski(X6,X5)|X5!=X6))&(~r1_tarski(X5,X6)|~r1_tarski(X6,X5)|X5=X6)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.20/0.38  cnf(c_0_27, plain, (r1_tarski(k1_relat_1(k7_relat_1(X1,X2)),X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.38  cnf(c_0_28, negated_conjecture, (k7_relat_1(esk3_0,esk2_0)=esk3_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_20]), c_0_21])])).
% 0.20/0.38  cnf(c_0_29, negated_conjecture, (k1_relset_1(esk2_0,esk1_0,esk3_0)!=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_23]), c_0_14]), c_0_24])])).
% 0.20/0.38  cnf(c_0_30, negated_conjecture, (k1_relset_1(esk2_0,esk1_0,esk3_0)=k1_relat_1(esk3_0)), inference(spm,[status(thm)],[c_0_25, c_0_14])).
% 0.20/0.38  cnf(c_0_31, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.20/0.38  cnf(c_0_32, negated_conjecture, (r1_tarski(k1_relat_1(esk3_0),esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_28]), c_0_21])])).
% 0.20/0.38  cnf(c_0_33, negated_conjecture, (k1_relat_1(esk3_0)!=esk2_0), inference(rw,[status(thm)],[c_0_29, c_0_30])).
% 0.20/0.38  cnf(c_0_34, plain, (r1_tarski(X1,k1_relset_1(X2,X3,X4))|~r1_tarski(k6_relat_1(X1),X4)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.20/0.38  cnf(c_0_35, negated_conjecture, (~r1_tarski(esk2_0,k1_relat_1(esk3_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_33])).
% 0.20/0.38  cnf(c_0_36, negated_conjecture, (r1_tarski(X1,k1_relat_1(esk3_0))|~r1_tarski(k6_relat_1(X1),esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_30]), c_0_14])])).
% 0.20/0.38  cnf(c_0_37, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_36]), c_0_24])]), ['proof']).
% 0.20/0.38  # SZS output end CNFRefutation
% 0.20/0.38  # Proof object total steps             : 38
% 0.20/0.38  # Proof object clause steps            : 21
% 0.20/0.38  # Proof object formula steps           : 17
% 0.20/0.38  # Proof object conjectures             : 16
% 0.20/0.38  # Proof object clause conjectures      : 13
% 0.20/0.38  # Proof object formula conjectures     : 3
% 0.20/0.38  # Proof object initial clauses used    : 11
% 0.20/0.38  # Proof object initial formulas used   : 8
% 0.20/0.38  # Proof object generating inferences   : 9
% 0.20/0.38  # Proof object simplifying inferences  : 13
% 0.20/0.38  # Training examples: 0 positive, 0 negative
% 0.20/0.38  # Parsed axioms                        : 8
% 0.20/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.38  # Initial clauses                      : 14
% 0.20/0.38  # Removed in clause preprocessing      : 0
% 0.20/0.38  # Initial clauses in saturation        : 14
% 0.20/0.38  # Processed clauses                    : 41
% 0.20/0.38  # ...of these trivial                  : 0
% 0.20/0.38  # ...subsumed                          : 1
% 0.20/0.38  # ...remaining for further processing  : 40
% 0.20/0.38  # Other redundant clauses eliminated   : 2
% 0.20/0.38  # Clauses deleted for lack of memory   : 0
% 0.20/0.38  # Backward-subsumed                    : 0
% 0.20/0.38  # Backward-rewritten                   : 2
% 0.20/0.38  # Generated clauses                    : 18
% 0.20/0.38  # ...of the previous two non-trivial   : 18
% 0.20/0.38  # Contextual simplify-reflections      : 0
% 0.20/0.38  # Paramodulations                      : 16
% 0.20/0.38  # Factorizations                       : 0
% 0.20/0.38  # Equation resolutions                 : 2
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
% 0.20/0.38  # Current number of processed clauses  : 23
% 0.20/0.38  #    Positive orientable unit clauses  : 9
% 0.20/0.38  #    Positive unorientable unit clauses: 0
% 0.20/0.38  #    Negative unit clauses             : 2
% 0.20/0.38  #    Non-unit-clauses                  : 12
% 0.20/0.38  # Current number of unprocessed clauses: 4
% 0.20/0.38  # ...number of literals in the above   : 12
% 0.20/0.38  # Current number of archived formulas  : 0
% 0.20/0.38  # Current number of archived clauses   : 15
% 0.20/0.38  # Clause-clause subsumption calls (NU) : 32
% 0.20/0.38  # Rec. Clause-clause subsumption calls : 28
% 0.20/0.38  # Non-unit clause-clause subsumptions  : 0
% 0.20/0.38  # Unit Clause-clause subsumption calls : 3
% 0.20/0.38  # Rewrite failures with RHS unbound    : 0
% 0.20/0.38  # BW rewrite match attempts            : 4
% 0.20/0.38  # BW rewrite match successes           : 1
% 0.20/0.38  # Condensation attempts                : 0
% 0.20/0.38  # Condensation successes               : 0
% 0.20/0.38  # Termbank termtop insertions          : 1221
% 0.20/0.38  
% 0.20/0.38  # -------------------------------------------------
% 0.20/0.38  # User time                : 0.032 s
% 0.20/0.38  # System time              : 0.001 s
% 0.20/0.38  # Total time               : 0.033 s
% 0.20/0.38  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
