%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:57:25 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   61 ( 103 expanded)
%              Number of clauses        :   36 (  46 expanded)
%              Number of leaves         :   12 (  25 expanded)
%              Depth                    :    9
%              Number of atoms          :  156 ( 285 expanded)
%              Number of equality atoms :   19 (  28 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t30_relset_1,conjecture,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( r1_tarski(k6_relat_1(X3),X4)
       => ( r1_tarski(X3,k1_relset_1(X1,X2,X4))
          & r1_tarski(X3,k2_relset_1(X1,X2,X4)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t30_relset_1)).

fof(cc5_relat_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v4_relat_1(X2,X1) )
     => ! [X3] :
          ( m1_subset_1(X3,k1_zfmisc_1(X2))
         => v4_relat_1(X3,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc5_relat_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).

fof(d18_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v4_relat_1(X2,X1)
      <=> r1_tarski(k1_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d18_relat_1)).

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(t71_relat_1,axiom,(
    ! [X1] :
      ( k1_relat_1(k6_relat_1(X1)) = X1
      & k2_relat_1(k6_relat_1(X1)) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_relat_1)).

fof(dt_k6_relat_1,axiom,(
    ! [X1] : v1_relat_1(k6_relat_1(X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k6_relat_1)).

fof(cc6_relat_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v5_relat_1(X2,X1) )
     => ! [X3] :
          ( m1_subset_1(X3,k1_zfmisc_1(X2))
         => v5_relat_1(X3,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc6_relat_1)).

fof(d19_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v5_relat_1(X2,X1)
      <=> r1_tarski(k2_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d19_relat_1)).

fof(redefinition_k2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k2_relset_1(X1,X2,X3) = k2_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k2_relset_1)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relset_1)).

fof(c_0_12,plain,(
    ! [X5,X6] :
      ( ( r1_tarski(X5,X6)
        | X5 != X6 )
      & ( r1_tarski(X6,X5)
        | X5 != X6 )
      & ( ~ r1_tarski(X5,X6)
        | ~ r1_tarski(X6,X5)
        | X5 = X6 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

fof(c_0_13,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
       => ( r1_tarski(k6_relat_1(X3),X4)
         => ( r1_tarski(X3,k1_relset_1(X1,X2,X4))
            & r1_tarski(X3,k2_relset_1(X1,X2,X4)) ) ) ) ),
    inference(assume_negation,[status(cth)],[t30_relset_1])).

fof(c_0_14,plain,(
    ! [X9,X10,X11] :
      ( ~ v1_relat_1(X10)
      | ~ v4_relat_1(X10,X9)
      | ~ m1_subset_1(X11,k1_zfmisc_1(X10))
      | v4_relat_1(X11,X9) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc5_relat_1])])])).

fof(c_0_15,plain,(
    ! [X7,X8] :
      ( ( ~ m1_subset_1(X7,k1_zfmisc_1(X8))
        | r1_tarski(X7,X8) )
      & ( ~ r1_tarski(X7,X8)
        | m1_subset_1(X7,k1_zfmisc_1(X8)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

fof(c_0_16,plain,(
    ! [X15,X16] :
      ( ( ~ v4_relat_1(X16,X15)
        | r1_tarski(k1_relat_1(X16),X15)
        | ~ v1_relat_1(X16) )
      & ( ~ r1_tarski(k1_relat_1(X16),X15)
        | v4_relat_1(X16,X15)
        | ~ v1_relat_1(X16) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d18_relat_1])])])).

cnf(c_0_17,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

fof(c_0_18,plain,(
    ! [X24,X25,X26] :
      ( ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25)))
      | k1_relset_1(X24,X25,X26) = k1_relat_1(X26) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

fof(c_0_19,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))
    & r1_tarski(k6_relat_1(esk3_0),esk4_0)
    & ( ~ r1_tarski(esk3_0,k1_relset_1(esk1_0,esk2_0,esk4_0))
      | ~ r1_tarski(esk3_0,k2_relset_1(esk1_0,esk2_0,esk4_0)) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_13])])])).

fof(c_0_20,plain,(
    ! [X20] :
      ( k1_relat_1(k6_relat_1(X20)) = X20
      & k2_relat_1(k6_relat_1(X20)) = X20 ) ),
    inference(variable_rename,[status(thm)],[t71_relat_1])).

fof(c_0_21,plain,(
    ! [X19] : v1_relat_1(k6_relat_1(X19)) ),
    inference(variable_rename,[status(thm)],[dt_k6_relat_1])).

cnf(c_0_22,plain,
    ( v4_relat_1(X3,X2)
    | ~ v1_relat_1(X1)
    | ~ v4_relat_1(X1,X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_23,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_24,plain,
    ( v4_relat_1(X1,X2)
    | ~ r1_tarski(k1_relat_1(X1),X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_25,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_17])).

fof(c_0_26,plain,(
    ! [X12,X13,X14] :
      ( ~ v1_relat_1(X13)
      | ~ v5_relat_1(X13,X12)
      | ~ m1_subset_1(X14,k1_zfmisc_1(X13))
      | v5_relat_1(X14,X12) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc6_relat_1])])])).

fof(c_0_27,plain,(
    ! [X17,X18] :
      ( ( ~ v5_relat_1(X18,X17)
        | r1_tarski(k2_relat_1(X18),X17)
        | ~ v1_relat_1(X18) )
      & ( ~ r1_tarski(k2_relat_1(X18),X17)
        | v5_relat_1(X18,X17)
        | ~ v1_relat_1(X18) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).

cnf(c_0_28,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_29,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

fof(c_0_30,plain,(
    ! [X27,X28,X29] :
      ( ~ m1_subset_1(X29,k1_zfmisc_1(k2_zfmisc_1(X27,X28)))
      | k2_relset_1(X27,X28,X29) = k2_relat_1(X29) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).

cnf(c_0_31,plain,
    ( r1_tarski(k1_relat_1(X1),X2)
    | ~ v4_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_32,plain,
    ( k1_relat_1(k6_relat_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_33,plain,
    ( v1_relat_1(k6_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_34,plain,
    ( v4_relat_1(X1,X2)
    | ~ v4_relat_1(X3,X2)
    | ~ v1_relat_1(X3)
    | ~ r1_tarski(X1,X3) ),
    inference(spm,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_35,plain,
    ( v4_relat_1(X1,k1_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

fof(c_0_36,plain,(
    ! [X21,X22,X23] :
      ( ~ m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22)))
      | v1_relat_1(X23) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

cnf(c_0_37,plain,
    ( v5_relat_1(X3,X2)
    | ~ v1_relat_1(X1)
    | ~ v5_relat_1(X1,X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_38,plain,
    ( v5_relat_1(X1,X2)
    | ~ r1_tarski(k2_relat_1(X1),X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_39,negated_conjecture,
    ( ~ r1_tarski(esk3_0,k1_relset_1(esk1_0,esk2_0,esk4_0))
    | ~ r1_tarski(esk3_0,k2_relset_1(esk1_0,esk2_0,esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_40,negated_conjecture,
    ( k1_relset_1(esk1_0,esk2_0,esk4_0) = k1_relat_1(esk4_0) ),
    inference(spm,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_41,plain,
    ( k2_relset_1(X2,X3,X1) = k2_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_42,plain,
    ( r1_tarski(X1,X2)
    | ~ v4_relat_1(k6_relat_1(X1),X2) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_33])])).

cnf(c_0_43,plain,
    ( v4_relat_1(X1,k1_relat_1(X2))
    | ~ v1_relat_1(X2)
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_34,c_0_35])).

cnf(c_0_44,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_45,plain,
    ( r1_tarski(k2_relat_1(X1),X2)
    | ~ v5_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_46,plain,
    ( k2_relat_1(k6_relat_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_47,plain,
    ( v5_relat_1(X1,X2)
    | ~ v5_relat_1(X3,X2)
    | ~ v1_relat_1(X3)
    | ~ r1_tarski(X1,X3) ),
    inference(spm,[status(thm)],[c_0_37,c_0_23])).

cnf(c_0_48,plain,
    ( v5_relat_1(X1,k2_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_38,c_0_25])).

cnf(c_0_49,negated_conjecture,
    ( ~ r1_tarski(esk3_0,k2_relset_1(esk1_0,esk2_0,esk4_0))
    | ~ r1_tarski(esk3_0,k1_relat_1(esk4_0)) ),
    inference(rw,[status(thm)],[c_0_39,c_0_40])).

cnf(c_0_50,negated_conjecture,
    ( k2_relset_1(esk1_0,esk2_0,esk4_0) = k2_relat_1(esk4_0) ),
    inference(spm,[status(thm)],[c_0_41,c_0_29])).

cnf(c_0_51,plain,
    ( r1_tarski(X1,k1_relat_1(X2))
    | ~ v1_relat_1(X2)
    | ~ r1_tarski(k6_relat_1(X1),X2) ),
    inference(spm,[status(thm)],[c_0_42,c_0_43])).

cnf(c_0_52,negated_conjecture,
    ( r1_tarski(k6_relat_1(esk3_0),esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_53,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(spm,[status(thm)],[c_0_44,c_0_29])).

cnf(c_0_54,plain,
    ( r1_tarski(X1,X2)
    | ~ v5_relat_1(k6_relat_1(X1),X2) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_46]),c_0_33])])).

cnf(c_0_55,plain,
    ( v5_relat_1(X1,k2_relat_1(X2))
    | ~ v1_relat_1(X2)
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_47,c_0_48])).

cnf(c_0_56,negated_conjecture,
    ( ~ r1_tarski(esk3_0,k2_relat_1(esk4_0))
    | ~ r1_tarski(esk3_0,k1_relat_1(esk4_0)) ),
    inference(rw,[status(thm)],[c_0_49,c_0_50])).

cnf(c_0_57,negated_conjecture,
    ( r1_tarski(esk3_0,k1_relat_1(esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_52]),c_0_53])])).

cnf(c_0_58,plain,
    ( r1_tarski(X1,k2_relat_1(X2))
    | ~ v1_relat_1(X2)
    | ~ r1_tarski(k6_relat_1(X1),X2) ),
    inference(spm,[status(thm)],[c_0_54,c_0_55])).

cnf(c_0_59,negated_conjecture,
    ( ~ r1_tarski(esk3_0,k2_relat_1(esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_56,c_0_57])])).

cnf(c_0_60,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_52]),c_0_53])]),c_0_59]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.35  % Computer   : n024.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 15:07:36 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.13/0.39  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.13/0.39  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.13/0.39  #
% 0.13/0.39  # Preprocessing time       : 0.027 s
% 0.13/0.39  # Presaturation interreduction done
% 0.13/0.39  
% 0.13/0.39  # Proof found!
% 0.13/0.39  # SZS status Theorem
% 0.13/0.39  # SZS output start CNFRefutation
% 0.13/0.39  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.13/0.39  fof(t30_relset_1, conjecture, ![X1, X2, X3, X4]:(m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(r1_tarski(k6_relat_1(X3),X4)=>(r1_tarski(X3,k1_relset_1(X1,X2,X4))&r1_tarski(X3,k2_relset_1(X1,X2,X4))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t30_relset_1)).
% 0.13/0.39  fof(cc5_relat_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v4_relat_1(X2,X1))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(X2))=>v4_relat_1(X3,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc5_relat_1)).
% 0.13/0.39  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_subset)).
% 0.13/0.39  fof(d18_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v4_relat_1(X2,X1)<=>r1_tarski(k1_relat_1(X2),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d18_relat_1)).
% 0.13/0.39  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.13/0.39  fof(t71_relat_1, axiom, ![X1]:(k1_relat_1(k6_relat_1(X1))=X1&k2_relat_1(k6_relat_1(X1))=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_relat_1)).
% 0.13/0.39  fof(dt_k6_relat_1, axiom, ![X1]:v1_relat_1(k6_relat_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k6_relat_1)).
% 0.13/0.39  fof(cc6_relat_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v5_relat_1(X2,X1))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(X2))=>v5_relat_1(X3,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc6_relat_1)).
% 0.13/0.39  fof(d19_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v5_relat_1(X2,X1)<=>r1_tarski(k2_relat_1(X2),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d19_relat_1)).
% 0.13/0.39  fof(redefinition_k2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k2_relset_1(X1,X2,X3)=k2_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k2_relset_1)).
% 0.13/0.39  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.13/0.39  fof(c_0_12, plain, ![X5, X6]:(((r1_tarski(X5,X6)|X5!=X6)&(r1_tarski(X6,X5)|X5!=X6))&(~r1_tarski(X5,X6)|~r1_tarski(X6,X5)|X5=X6)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.13/0.39  fof(c_0_13, negated_conjecture, ~(![X1, X2, X3, X4]:(m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(r1_tarski(k6_relat_1(X3),X4)=>(r1_tarski(X3,k1_relset_1(X1,X2,X4))&r1_tarski(X3,k2_relset_1(X1,X2,X4)))))), inference(assume_negation,[status(cth)],[t30_relset_1])).
% 0.13/0.39  fof(c_0_14, plain, ![X9, X10, X11]:(~v1_relat_1(X10)|~v4_relat_1(X10,X9)|(~m1_subset_1(X11,k1_zfmisc_1(X10))|v4_relat_1(X11,X9))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc5_relat_1])])])).
% 0.13/0.39  fof(c_0_15, plain, ![X7, X8]:((~m1_subset_1(X7,k1_zfmisc_1(X8))|r1_tarski(X7,X8))&(~r1_tarski(X7,X8)|m1_subset_1(X7,k1_zfmisc_1(X8)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.13/0.39  fof(c_0_16, plain, ![X15, X16]:((~v4_relat_1(X16,X15)|r1_tarski(k1_relat_1(X16),X15)|~v1_relat_1(X16))&(~r1_tarski(k1_relat_1(X16),X15)|v4_relat_1(X16,X15)|~v1_relat_1(X16))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d18_relat_1])])])).
% 0.13/0.39  cnf(c_0_17, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.39  fof(c_0_18, plain, ![X24, X25, X26]:(~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25)))|k1_relset_1(X24,X25,X26)=k1_relat_1(X26)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.13/0.39  fof(c_0_19, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))&(r1_tarski(k6_relat_1(esk3_0),esk4_0)&(~r1_tarski(esk3_0,k1_relset_1(esk1_0,esk2_0,esk4_0))|~r1_tarski(esk3_0,k2_relset_1(esk1_0,esk2_0,esk4_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_13])])])).
% 0.13/0.39  fof(c_0_20, plain, ![X20]:(k1_relat_1(k6_relat_1(X20))=X20&k2_relat_1(k6_relat_1(X20))=X20), inference(variable_rename,[status(thm)],[t71_relat_1])).
% 0.13/0.39  fof(c_0_21, plain, ![X19]:v1_relat_1(k6_relat_1(X19)), inference(variable_rename,[status(thm)],[dt_k6_relat_1])).
% 0.13/0.39  cnf(c_0_22, plain, (v4_relat_1(X3,X2)|~v1_relat_1(X1)|~v4_relat_1(X1,X2)|~m1_subset_1(X3,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.39  cnf(c_0_23, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.13/0.39  cnf(c_0_24, plain, (v4_relat_1(X1,X2)|~r1_tarski(k1_relat_1(X1),X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.39  cnf(c_0_25, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_17])).
% 0.13/0.39  fof(c_0_26, plain, ![X12, X13, X14]:(~v1_relat_1(X13)|~v5_relat_1(X13,X12)|(~m1_subset_1(X14,k1_zfmisc_1(X13))|v5_relat_1(X14,X12))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc6_relat_1])])])).
% 0.13/0.39  fof(c_0_27, plain, ![X17, X18]:((~v5_relat_1(X18,X17)|r1_tarski(k2_relat_1(X18),X17)|~v1_relat_1(X18))&(~r1_tarski(k2_relat_1(X18),X17)|v5_relat_1(X18,X17)|~v1_relat_1(X18))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).
% 0.13/0.39  cnf(c_0_28, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.13/0.39  cnf(c_0_29, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0)))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.13/0.39  fof(c_0_30, plain, ![X27, X28, X29]:(~m1_subset_1(X29,k1_zfmisc_1(k2_zfmisc_1(X27,X28)))|k2_relset_1(X27,X28,X29)=k2_relat_1(X29)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).
% 0.13/0.39  cnf(c_0_31, plain, (r1_tarski(k1_relat_1(X1),X2)|~v4_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.39  cnf(c_0_32, plain, (k1_relat_1(k6_relat_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.39  cnf(c_0_33, plain, (v1_relat_1(k6_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.13/0.39  cnf(c_0_34, plain, (v4_relat_1(X1,X2)|~v4_relat_1(X3,X2)|~v1_relat_1(X3)|~r1_tarski(X1,X3)), inference(spm,[status(thm)],[c_0_22, c_0_23])).
% 0.13/0.39  cnf(c_0_35, plain, (v4_relat_1(X1,k1_relat_1(X1))|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.13/0.39  fof(c_0_36, plain, ![X21, X22, X23]:(~m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22)))|v1_relat_1(X23)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.13/0.39  cnf(c_0_37, plain, (v5_relat_1(X3,X2)|~v1_relat_1(X1)|~v5_relat_1(X1,X2)|~m1_subset_1(X3,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.13/0.39  cnf(c_0_38, plain, (v5_relat_1(X1,X2)|~r1_tarski(k2_relat_1(X1),X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.13/0.39  cnf(c_0_39, negated_conjecture, (~r1_tarski(esk3_0,k1_relset_1(esk1_0,esk2_0,esk4_0))|~r1_tarski(esk3_0,k2_relset_1(esk1_0,esk2_0,esk4_0))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.13/0.39  cnf(c_0_40, negated_conjecture, (k1_relset_1(esk1_0,esk2_0,esk4_0)=k1_relat_1(esk4_0)), inference(spm,[status(thm)],[c_0_28, c_0_29])).
% 0.13/0.39  cnf(c_0_41, plain, (k2_relset_1(X2,X3,X1)=k2_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.13/0.39  cnf(c_0_42, plain, (r1_tarski(X1,X2)|~v4_relat_1(k6_relat_1(X1),X2)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_33])])).
% 0.13/0.39  cnf(c_0_43, plain, (v4_relat_1(X1,k1_relat_1(X2))|~v1_relat_1(X2)|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_34, c_0_35])).
% 0.13/0.39  cnf(c_0_44, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.13/0.39  cnf(c_0_45, plain, (r1_tarski(k2_relat_1(X1),X2)|~v5_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.13/0.39  cnf(c_0_46, plain, (k2_relat_1(k6_relat_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.39  cnf(c_0_47, plain, (v5_relat_1(X1,X2)|~v5_relat_1(X3,X2)|~v1_relat_1(X3)|~r1_tarski(X1,X3)), inference(spm,[status(thm)],[c_0_37, c_0_23])).
% 0.13/0.39  cnf(c_0_48, plain, (v5_relat_1(X1,k2_relat_1(X1))|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_38, c_0_25])).
% 0.13/0.39  cnf(c_0_49, negated_conjecture, (~r1_tarski(esk3_0,k2_relset_1(esk1_0,esk2_0,esk4_0))|~r1_tarski(esk3_0,k1_relat_1(esk4_0))), inference(rw,[status(thm)],[c_0_39, c_0_40])).
% 0.13/0.39  cnf(c_0_50, negated_conjecture, (k2_relset_1(esk1_0,esk2_0,esk4_0)=k2_relat_1(esk4_0)), inference(spm,[status(thm)],[c_0_41, c_0_29])).
% 0.13/0.39  cnf(c_0_51, plain, (r1_tarski(X1,k1_relat_1(X2))|~v1_relat_1(X2)|~r1_tarski(k6_relat_1(X1),X2)), inference(spm,[status(thm)],[c_0_42, c_0_43])).
% 0.13/0.39  cnf(c_0_52, negated_conjecture, (r1_tarski(k6_relat_1(esk3_0),esk4_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.13/0.39  cnf(c_0_53, negated_conjecture, (v1_relat_1(esk4_0)), inference(spm,[status(thm)],[c_0_44, c_0_29])).
% 0.13/0.39  cnf(c_0_54, plain, (r1_tarski(X1,X2)|~v5_relat_1(k6_relat_1(X1),X2)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_46]), c_0_33])])).
% 0.13/0.39  cnf(c_0_55, plain, (v5_relat_1(X1,k2_relat_1(X2))|~v1_relat_1(X2)|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_47, c_0_48])).
% 0.13/0.39  cnf(c_0_56, negated_conjecture, (~r1_tarski(esk3_0,k2_relat_1(esk4_0))|~r1_tarski(esk3_0,k1_relat_1(esk4_0))), inference(rw,[status(thm)],[c_0_49, c_0_50])).
% 0.13/0.39  cnf(c_0_57, negated_conjecture, (r1_tarski(esk3_0,k1_relat_1(esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_52]), c_0_53])])).
% 0.13/0.39  cnf(c_0_58, plain, (r1_tarski(X1,k2_relat_1(X2))|~v1_relat_1(X2)|~r1_tarski(k6_relat_1(X1),X2)), inference(spm,[status(thm)],[c_0_54, c_0_55])).
% 0.13/0.39  cnf(c_0_59, negated_conjecture, (~r1_tarski(esk3_0,k2_relat_1(esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_56, c_0_57])])).
% 0.13/0.39  cnf(c_0_60, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58, c_0_52]), c_0_53])]), c_0_59]), ['proof']).
% 0.13/0.39  # SZS output end CNFRefutation
% 0.13/0.39  # Proof object total steps             : 61
% 0.13/0.39  # Proof object clause steps            : 36
% 0.13/0.39  # Proof object formula steps           : 25
% 0.13/0.39  # Proof object conjectures             : 14
% 0.13/0.39  # Proof object clause conjectures      : 11
% 0.13/0.39  # Proof object formula conjectures     : 3
% 0.13/0.39  # Proof object initial clauses used    : 17
% 0.13/0.39  # Proof object initial formulas used   : 12
% 0.13/0.39  # Proof object generating inferences   : 15
% 0.13/0.39  # Proof object simplifying inferences  : 14
% 0.13/0.39  # Training examples: 0 positive, 0 negative
% 0.13/0.39  # Parsed axioms                        : 12
% 0.13/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.39  # Initial clauses                      : 20
% 0.13/0.39  # Removed in clause preprocessing      : 0
% 0.13/0.39  # Initial clauses in saturation        : 20
% 0.13/0.39  # Processed clauses                    : 110
% 0.13/0.39  # ...of these trivial                  : 0
% 0.13/0.39  # ...subsumed                          : 14
% 0.13/0.39  # ...remaining for further processing  : 96
% 0.13/0.39  # Other redundant clauses eliminated   : 2
% 0.13/0.39  # Clauses deleted for lack of memory   : 0
% 0.13/0.39  # Backward-subsumed                    : 0
% 0.13/0.39  # Backward-rewritten                   : 3
% 0.13/0.39  # Generated clauses                    : 124
% 0.13/0.39  # ...of the previous two non-trivial   : 103
% 0.13/0.39  # Contextual simplify-reflections      : 0
% 0.13/0.39  # Paramodulations                      : 122
% 0.13/0.39  # Factorizations                       : 0
% 0.13/0.39  # Equation resolutions                 : 2
% 0.13/0.39  # Propositional unsat checks           : 0
% 0.13/0.39  #    Propositional check models        : 0
% 0.13/0.39  #    Propositional check unsatisfiable : 0
% 0.13/0.39  #    Propositional clauses             : 0
% 0.13/0.39  #    Propositional clauses after purity: 0
% 0.13/0.39  #    Propositional unsat core size     : 0
% 0.13/0.39  #    Propositional preprocessing time  : 0.000
% 0.13/0.39  #    Propositional encoding time       : 0.000
% 0.13/0.39  #    Propositional solver time         : 0.000
% 0.13/0.39  #    Success case prop preproc time    : 0.000
% 0.13/0.39  #    Success case prop encoding time   : 0.000
% 0.13/0.39  #    Success case prop solver time     : 0.000
% 0.13/0.39  # Current number of processed clauses  : 72
% 0.13/0.39  #    Positive orientable unit clauses  : 16
% 0.13/0.39  #    Positive unorientable unit clauses: 0
% 0.13/0.39  #    Negative unit clauses             : 1
% 0.13/0.39  #    Non-unit-clauses                  : 55
% 0.13/0.39  # Current number of unprocessed clauses: 30
% 0.13/0.39  # ...number of literals in the above   : 115
% 0.13/0.39  # Current number of archived formulas  : 0
% 0.13/0.39  # Current number of archived clauses   : 22
% 0.13/0.39  # Clause-clause subsumption calls (NU) : 423
% 0.13/0.39  # Rec. Clause-clause subsumption calls : 375
% 0.13/0.39  # Non-unit clause-clause subsumptions  : 14
% 0.13/0.39  # Unit Clause-clause subsumption calls : 29
% 0.13/0.39  # Rewrite failures with RHS unbound    : 0
% 0.13/0.39  # BW rewrite match attempts            : 8
% 0.13/0.39  # BW rewrite match successes           : 3
% 0.13/0.39  # Condensation attempts                : 0
% 0.13/0.39  # Condensation successes               : 0
% 0.13/0.39  # Termbank termtop insertions          : 3310
% 0.13/0.39  
% 0.13/0.39  # -------------------------------------------------
% 0.13/0.39  # User time                : 0.034 s
% 0.13/0.39  # System time              : 0.002 s
% 0.13/0.39  # Total time               : 0.036 s
% 0.13/0.39  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
