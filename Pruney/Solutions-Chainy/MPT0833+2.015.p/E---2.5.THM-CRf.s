%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:57:57 EST 2020

% Result     : Theorem 0.21s
% Output     : CNFRefutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   62 (  95 expanded)
%              Number of clauses        :   33 (  41 expanded)
%              Number of leaves         :   14 (  23 expanded)
%              Depth                    :   12
%              Number of atoms          :  159 ( 240 expanded)
%              Number of equality atoms :   14 (  14 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t1_subset,axiom,(
    ! [X1,X2] :
      ( r2_hidden(X1,X2)
     => m1_subset_1(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_subset)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).

fof(d1_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( X2 = k1_zfmisc_1(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> r1_tarski(X3,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_zfmisc_1)).

fof(t79_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => r1_tarski(k1_zfmisc_1(X1),k1_zfmisc_1(X2)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t79_zfmisc_1)).

fof(cc2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( v4_relat_1(X3,X1)
        & v5_relat_1(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_relset_1)).

fof(t36_relset_1,conjecture,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( r1_tarski(X2,X3)
       => r2_relset_1(X1,X2,k6_relset_1(X1,X2,X3,X4),X4) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_relset_1)).

fof(t118_zfmisc_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(X1,X2)
     => ( r1_tarski(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3))
        & r1_tarski(k2_zfmisc_1(X3,X1),k2_zfmisc_1(X3,X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t118_zfmisc_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).

fof(cc2_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X1))
         => v1_relat_1(X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_relat_1)).

fof(fc6_relat_1,axiom,(
    ! [X1,X2] : v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc6_relat_1)).

fof(redefinition_k6_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k6_relset_1(X1,X2,X3,X4) = k8_relat_1(X3,X4) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k6_relset_1)).

fof(d19_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v5_relat_1(X2,X1)
      <=> r1_tarski(k2_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d19_relat_1)).

fof(reflexivity_r2_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => r2_relset_1(X1,X2,X3,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',reflexivity_r2_relset_1)).

fof(t125_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(k2_relat_1(X2),X1)
       => k8_relat_1(X1,X2) = X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t125_relat_1)).

fof(c_0_14,plain,(
    ! [X23,X24] :
      ( ~ r2_hidden(X23,X24)
      | m1_subset_1(X23,X24) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_subset])])).

fof(c_0_15,plain,(
    ! [X5,X6,X7,X8,X9] :
      ( ( ~ r1_tarski(X5,X6)
        | ~ r2_hidden(X7,X5)
        | r2_hidden(X7,X6) )
      & ( r2_hidden(esk1_2(X8,X9),X8)
        | r1_tarski(X8,X9) )
      & ( ~ r2_hidden(esk1_2(X8,X9),X9)
        | r1_tarski(X8,X9) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

fof(c_0_16,plain,(
    ! [X11,X12,X13,X14,X15,X16] :
      ( ( ~ r2_hidden(X13,X12)
        | r1_tarski(X13,X11)
        | X12 != k1_zfmisc_1(X11) )
      & ( ~ r1_tarski(X14,X11)
        | r2_hidden(X14,X12)
        | X12 != k1_zfmisc_1(X11) )
      & ( ~ r2_hidden(esk2_2(X15,X16),X16)
        | ~ r1_tarski(esk2_2(X15,X16),X15)
        | X16 = k1_zfmisc_1(X15) )
      & ( r2_hidden(esk2_2(X15,X16),X16)
        | r1_tarski(esk2_2(X15,X16),X15)
        | X16 = k1_zfmisc_1(X15) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_zfmisc_1])])])])])])).

cnf(c_0_17,plain,
    ( m1_subset_1(X1,X2)
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_18,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_19,plain,
    ( r2_hidden(X1,X3)
    | ~ r1_tarski(X1,X2)
    | X3 != k1_zfmisc_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_20,plain,
    ( m1_subset_1(X1,X2)
    | ~ r2_hidden(X1,X3)
    | ~ r1_tarski(X3,X2) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_21,plain,
    ( r2_hidden(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(er,[status(thm)],[c_0_19])).

fof(c_0_22,plain,(
    ! [X21,X22] :
      ( ~ r1_tarski(X21,X22)
      | r1_tarski(k1_zfmisc_1(X21),k1_zfmisc_1(X22)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t79_zfmisc_1])])).

fof(c_0_23,plain,(
    ! [X35,X36,X37] :
      ( ( v4_relat_1(X37,X35)
        | ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36))) )
      & ( v5_relat_1(X37,X36)
        | ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

cnf(c_0_24,plain,
    ( m1_subset_1(X1,X2)
    | ~ r1_tarski(k1_zfmisc_1(X3),X2)
    | ~ r1_tarski(X1,X3) ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

cnf(c_0_25,plain,
    ( r1_tarski(k1_zfmisc_1(X1),k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_26,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
       => ( r1_tarski(X2,X3)
         => r2_relset_1(X1,X2,k6_relset_1(X1,X2,X3,X4),X4) ) ) ),
    inference(assume_negation,[status(cth)],[t36_relset_1])).

cnf(c_0_27,plain,
    ( v5_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_28,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X3)
    | ~ r1_tarski(X3,X2) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

fof(c_0_29,plain,(
    ! [X18,X19,X20] :
      ( ( r1_tarski(k2_zfmisc_1(X18,X20),k2_zfmisc_1(X19,X20))
        | ~ r1_tarski(X18,X19) )
      & ( r1_tarski(k2_zfmisc_1(X20,X18),k2_zfmisc_1(X20,X19))
        | ~ r1_tarski(X18,X19) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t118_zfmisc_1])])])).

fof(c_0_30,plain,(
    ! [X25,X26] :
      ( ( ~ m1_subset_1(X25,k1_zfmisc_1(X26))
        | r1_tarski(X25,X26) )
      & ( ~ r1_tarski(X25,X26)
        | m1_subset_1(X25,k1_zfmisc_1(X26)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

fof(c_0_31,negated_conjecture,
    ( m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk3_0,esk4_0)))
    & r1_tarski(esk4_0,esk5_0)
    & ~ r2_relset_1(esk3_0,esk4_0,k6_relset_1(esk3_0,esk4_0,esk5_0,esk6_0),esk6_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_26])])])).

cnf(c_0_32,plain,
    ( v5_relat_1(X1,X2)
    | ~ r1_tarski(X3,k2_zfmisc_1(X4,X2))
    | ~ r1_tarski(X1,X3) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_33,plain,
    ( r1_tarski(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X3))
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_34,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_35,negated_conjecture,
    ( m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk3_0,esk4_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_36,plain,
    ( v5_relat_1(X1,X2)
    | ~ r1_tarski(X1,k2_zfmisc_1(X3,X4))
    | ~ r1_tarski(X4,X2) ),
    inference(spm,[status(thm)],[c_0_32,c_0_33])).

cnf(c_0_37,negated_conjecture,
    ( r1_tarski(esk6_0,k2_zfmisc_1(esk3_0,esk4_0)) ),
    inference(spm,[status(thm)],[c_0_34,c_0_35])).

fof(c_0_38,plain,(
    ! [X27,X28] :
      ( ~ v1_relat_1(X27)
      | ~ m1_subset_1(X28,k1_zfmisc_1(X27))
      | v1_relat_1(X28) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).

fof(c_0_39,plain,(
    ! [X31,X32] : v1_relat_1(k2_zfmisc_1(X31,X32)) ),
    inference(variable_rename,[status(thm)],[fc6_relat_1])).

fof(c_0_40,plain,(
    ! [X38,X39,X40,X41] :
      ( ~ m1_subset_1(X41,k1_zfmisc_1(k2_zfmisc_1(X38,X39)))
      | k6_relset_1(X38,X39,X40,X41) = k8_relat_1(X40,X41) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k6_relset_1])])).

fof(c_0_41,plain,(
    ! [X29,X30] :
      ( ( ~ v5_relat_1(X30,X29)
        | r1_tarski(k2_relat_1(X30),X29)
        | ~ v1_relat_1(X30) )
      & ( ~ r1_tarski(k2_relat_1(X30),X29)
        | v5_relat_1(X30,X29)
        | ~ v1_relat_1(X30) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).

cnf(c_0_42,negated_conjecture,
    ( v5_relat_1(esk6_0,X1)
    | ~ r1_tarski(esk4_0,X1) ),
    inference(spm,[status(thm)],[c_0_36,c_0_37])).

cnf(c_0_43,negated_conjecture,
    ( r1_tarski(esk4_0,esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_44,plain,
    ( v1_relat_1(X2)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_45,plain,
    ( v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

fof(c_0_46,plain,(
    ! [X42,X43,X44,X45] :
      ( ~ m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X43)))
      | ~ m1_subset_1(X45,k1_zfmisc_1(k2_zfmisc_1(X42,X43)))
      | r2_relset_1(X42,X43,X44,X44) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[reflexivity_r2_relset_1])])).

cnf(c_0_47,plain,
    ( k6_relset_1(X2,X3,X4,X1) = k8_relat_1(X4,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

fof(c_0_48,plain,(
    ! [X33,X34] :
      ( ~ v1_relat_1(X34)
      | ~ r1_tarski(k2_relat_1(X34),X33)
      | k8_relat_1(X33,X34) = X34 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t125_relat_1])])).

cnf(c_0_49,plain,
    ( r1_tarski(k2_relat_1(X1),X2)
    | ~ v5_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_41])).

cnf(c_0_50,negated_conjecture,
    ( v5_relat_1(esk6_0,esk5_0) ),
    inference(spm,[status(thm)],[c_0_42,c_0_43])).

cnf(c_0_51,negated_conjecture,
    ( v1_relat_1(esk6_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_35]),c_0_45])])).

cnf(c_0_52,plain,
    ( r2_relset_1(X2,X3,X1,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_46])).

cnf(c_0_53,negated_conjecture,
    ( ~ r2_relset_1(esk3_0,esk4_0,k6_relset_1(esk3_0,esk4_0,esk5_0,esk6_0),esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_54,negated_conjecture,
    ( k6_relset_1(esk3_0,esk4_0,X1,esk6_0) = k8_relat_1(X1,esk6_0) ),
    inference(spm,[status(thm)],[c_0_47,c_0_35])).

cnf(c_0_55,plain,
    ( k8_relat_1(X2,X1) = X1
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k2_relat_1(X1),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_48])).

cnf(c_0_56,negated_conjecture,
    ( r1_tarski(k2_relat_1(esk6_0),esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_50]),c_0_51])])).

cnf(c_0_57,negated_conjecture,
    ( r2_relset_1(esk3_0,esk4_0,X1,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk3_0,esk4_0))) ),
    inference(spm,[status(thm)],[c_0_52,c_0_35])).

cnf(c_0_58,negated_conjecture,
    ( ~ r2_relset_1(esk3_0,esk4_0,k8_relat_1(esk5_0,esk6_0),esk6_0) ),
    inference(rw,[status(thm)],[c_0_53,c_0_54])).

cnf(c_0_59,negated_conjecture,
    ( k8_relat_1(esk5_0,esk6_0) = esk6_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_56]),c_0_51])])).

cnf(c_0_60,negated_conjecture,
    ( r2_relset_1(esk3_0,esk4_0,esk6_0,esk6_0) ),
    inference(spm,[status(thm)],[c_0_57,c_0_35])).

cnf(c_0_61,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_58,c_0_59]),c_0_60])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n012.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 14:01:22 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.21/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S080I
% 0.21/0.38  # and selection function SelectCQIArNXTEqFirst.
% 0.21/0.38  #
% 0.21/0.38  # Preprocessing time       : 0.028 s
% 0.21/0.38  # Presaturation interreduction done
% 0.21/0.38  
% 0.21/0.38  # Proof found!
% 0.21/0.38  # SZS status Theorem
% 0.21/0.38  # SZS output start CNFRefutation
% 0.21/0.38  fof(t1_subset, axiom, ![X1, X2]:(r2_hidden(X1,X2)=>m1_subset_1(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t1_subset)).
% 0.21/0.38  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_tarski)).
% 0.21/0.38  fof(d1_zfmisc_1, axiom, ![X1, X2]:(X2=k1_zfmisc_1(X1)<=>![X3]:(r2_hidden(X3,X2)<=>r1_tarski(X3,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_zfmisc_1)).
% 0.21/0.38  fof(t79_zfmisc_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>r1_tarski(k1_zfmisc_1(X1),k1_zfmisc_1(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t79_zfmisc_1)).
% 0.21/0.38  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.21/0.38  fof(t36_relset_1, conjecture, ![X1, X2, X3, X4]:(m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(r1_tarski(X2,X3)=>r2_relset_1(X1,X2,k6_relset_1(X1,X2,X3,X4),X4))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t36_relset_1)).
% 0.21/0.38  fof(t118_zfmisc_1, axiom, ![X1, X2, X3]:(r1_tarski(X1,X2)=>(r1_tarski(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3))&r1_tarski(k2_zfmisc_1(X3,X1),k2_zfmisc_1(X3,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t118_zfmisc_1)).
% 0.21/0.38  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_subset)).
% 0.21/0.38  fof(cc2_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>v1_relat_1(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc2_relat_1)).
% 0.21/0.38  fof(fc6_relat_1, axiom, ![X1, X2]:v1_relat_1(k2_zfmisc_1(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc6_relat_1)).
% 0.21/0.38  fof(redefinition_k6_relset_1, axiom, ![X1, X2, X3, X4]:(m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k6_relset_1(X1,X2,X3,X4)=k8_relat_1(X3,X4)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k6_relset_1)).
% 0.21/0.38  fof(d19_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v5_relat_1(X2,X1)<=>r1_tarski(k2_relat_1(X2),X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d19_relat_1)).
% 0.21/0.38  fof(reflexivity_r2_relset_1, axiom, ![X1, X2, X3, X4]:((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>r2_relset_1(X1,X2,X3,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', reflexivity_r2_relset_1)).
% 0.21/0.38  fof(t125_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(r1_tarski(k2_relat_1(X2),X1)=>k8_relat_1(X1,X2)=X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t125_relat_1)).
% 0.21/0.38  fof(c_0_14, plain, ![X23, X24]:(~r2_hidden(X23,X24)|m1_subset_1(X23,X24)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_subset])])).
% 0.21/0.38  fof(c_0_15, plain, ![X5, X6, X7, X8, X9]:((~r1_tarski(X5,X6)|(~r2_hidden(X7,X5)|r2_hidden(X7,X6)))&((r2_hidden(esk1_2(X8,X9),X8)|r1_tarski(X8,X9))&(~r2_hidden(esk1_2(X8,X9),X9)|r1_tarski(X8,X9)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.21/0.38  fof(c_0_16, plain, ![X11, X12, X13, X14, X15, X16]:(((~r2_hidden(X13,X12)|r1_tarski(X13,X11)|X12!=k1_zfmisc_1(X11))&(~r1_tarski(X14,X11)|r2_hidden(X14,X12)|X12!=k1_zfmisc_1(X11)))&((~r2_hidden(esk2_2(X15,X16),X16)|~r1_tarski(esk2_2(X15,X16),X15)|X16=k1_zfmisc_1(X15))&(r2_hidden(esk2_2(X15,X16),X16)|r1_tarski(esk2_2(X15,X16),X15)|X16=k1_zfmisc_1(X15)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_zfmisc_1])])])])])])).
% 0.21/0.38  cnf(c_0_17, plain, (m1_subset_1(X1,X2)|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.21/0.38  cnf(c_0_18, plain, (r2_hidden(X3,X2)|~r1_tarski(X1,X2)|~r2_hidden(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.21/0.38  cnf(c_0_19, plain, (r2_hidden(X1,X3)|~r1_tarski(X1,X2)|X3!=k1_zfmisc_1(X2)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.21/0.38  cnf(c_0_20, plain, (m1_subset_1(X1,X2)|~r2_hidden(X1,X3)|~r1_tarski(X3,X2)), inference(spm,[status(thm)],[c_0_17, c_0_18])).
% 0.21/0.38  cnf(c_0_21, plain, (r2_hidden(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(er,[status(thm)],[c_0_19])).
% 0.21/0.38  fof(c_0_22, plain, ![X21, X22]:(~r1_tarski(X21,X22)|r1_tarski(k1_zfmisc_1(X21),k1_zfmisc_1(X22))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t79_zfmisc_1])])).
% 0.21/0.38  fof(c_0_23, plain, ![X35, X36, X37]:((v4_relat_1(X37,X35)|~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36))))&(v5_relat_1(X37,X36)|~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.21/0.38  cnf(c_0_24, plain, (m1_subset_1(X1,X2)|~r1_tarski(k1_zfmisc_1(X3),X2)|~r1_tarski(X1,X3)), inference(spm,[status(thm)],[c_0_20, c_0_21])).
% 0.21/0.38  cnf(c_0_25, plain, (r1_tarski(k1_zfmisc_1(X1),k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.21/0.38  fof(c_0_26, negated_conjecture, ~(![X1, X2, X3, X4]:(m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(r1_tarski(X2,X3)=>r2_relset_1(X1,X2,k6_relset_1(X1,X2,X3,X4),X4)))), inference(assume_negation,[status(cth)],[t36_relset_1])).
% 0.21/0.38  cnf(c_0_27, plain, (v5_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.21/0.38  cnf(c_0_28, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X3)|~r1_tarski(X3,X2)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.21/0.38  fof(c_0_29, plain, ![X18, X19, X20]:((r1_tarski(k2_zfmisc_1(X18,X20),k2_zfmisc_1(X19,X20))|~r1_tarski(X18,X19))&(r1_tarski(k2_zfmisc_1(X20,X18),k2_zfmisc_1(X20,X19))|~r1_tarski(X18,X19))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t118_zfmisc_1])])])).
% 0.21/0.38  fof(c_0_30, plain, ![X25, X26]:((~m1_subset_1(X25,k1_zfmisc_1(X26))|r1_tarski(X25,X26))&(~r1_tarski(X25,X26)|m1_subset_1(X25,k1_zfmisc_1(X26)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.21/0.38  fof(c_0_31, negated_conjecture, (m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk3_0,esk4_0)))&(r1_tarski(esk4_0,esk5_0)&~r2_relset_1(esk3_0,esk4_0,k6_relset_1(esk3_0,esk4_0,esk5_0,esk6_0),esk6_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_26])])])).
% 0.21/0.38  cnf(c_0_32, plain, (v5_relat_1(X1,X2)|~r1_tarski(X3,k2_zfmisc_1(X4,X2))|~r1_tarski(X1,X3)), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.21/0.38  cnf(c_0_33, plain, (r1_tarski(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X3))|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.21/0.38  cnf(c_0_34, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.21/0.38  cnf(c_0_35, negated_conjecture, (m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk3_0,esk4_0)))), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.21/0.38  cnf(c_0_36, plain, (v5_relat_1(X1,X2)|~r1_tarski(X1,k2_zfmisc_1(X3,X4))|~r1_tarski(X4,X2)), inference(spm,[status(thm)],[c_0_32, c_0_33])).
% 0.21/0.38  cnf(c_0_37, negated_conjecture, (r1_tarski(esk6_0,k2_zfmisc_1(esk3_0,esk4_0))), inference(spm,[status(thm)],[c_0_34, c_0_35])).
% 0.21/0.38  fof(c_0_38, plain, ![X27, X28]:(~v1_relat_1(X27)|(~m1_subset_1(X28,k1_zfmisc_1(X27))|v1_relat_1(X28))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).
% 0.21/0.38  fof(c_0_39, plain, ![X31, X32]:v1_relat_1(k2_zfmisc_1(X31,X32)), inference(variable_rename,[status(thm)],[fc6_relat_1])).
% 0.21/0.38  fof(c_0_40, plain, ![X38, X39, X40, X41]:(~m1_subset_1(X41,k1_zfmisc_1(k2_zfmisc_1(X38,X39)))|k6_relset_1(X38,X39,X40,X41)=k8_relat_1(X40,X41)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k6_relset_1])])).
% 0.21/0.38  fof(c_0_41, plain, ![X29, X30]:((~v5_relat_1(X30,X29)|r1_tarski(k2_relat_1(X30),X29)|~v1_relat_1(X30))&(~r1_tarski(k2_relat_1(X30),X29)|v5_relat_1(X30,X29)|~v1_relat_1(X30))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).
% 0.21/0.38  cnf(c_0_42, negated_conjecture, (v5_relat_1(esk6_0,X1)|~r1_tarski(esk4_0,X1)), inference(spm,[status(thm)],[c_0_36, c_0_37])).
% 0.21/0.38  cnf(c_0_43, negated_conjecture, (r1_tarski(esk4_0,esk5_0)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.21/0.38  cnf(c_0_44, plain, (v1_relat_1(X2)|~v1_relat_1(X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.21/0.38  cnf(c_0_45, plain, (v1_relat_1(k2_zfmisc_1(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.21/0.38  fof(c_0_46, plain, ![X42, X43, X44, X45]:(~m1_subset_1(X44,k1_zfmisc_1(k2_zfmisc_1(X42,X43)))|~m1_subset_1(X45,k1_zfmisc_1(k2_zfmisc_1(X42,X43)))|r2_relset_1(X42,X43,X44,X44)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[reflexivity_r2_relset_1])])).
% 0.21/0.38  cnf(c_0_47, plain, (k6_relset_1(X2,X3,X4,X1)=k8_relat_1(X4,X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_40])).
% 0.21/0.38  fof(c_0_48, plain, ![X33, X34]:(~v1_relat_1(X34)|(~r1_tarski(k2_relat_1(X34),X33)|k8_relat_1(X33,X34)=X34)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t125_relat_1])])).
% 0.21/0.38  cnf(c_0_49, plain, (r1_tarski(k2_relat_1(X1),X2)|~v5_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_41])).
% 0.21/0.38  cnf(c_0_50, negated_conjecture, (v5_relat_1(esk6_0,esk5_0)), inference(spm,[status(thm)],[c_0_42, c_0_43])).
% 0.21/0.38  cnf(c_0_51, negated_conjecture, (v1_relat_1(esk6_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_35]), c_0_45])])).
% 0.21/0.38  cnf(c_0_52, plain, (r2_relset_1(X2,X3,X1,X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_46])).
% 0.21/0.38  cnf(c_0_53, negated_conjecture, (~r2_relset_1(esk3_0,esk4_0,k6_relset_1(esk3_0,esk4_0,esk5_0,esk6_0),esk6_0)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.21/0.38  cnf(c_0_54, negated_conjecture, (k6_relset_1(esk3_0,esk4_0,X1,esk6_0)=k8_relat_1(X1,esk6_0)), inference(spm,[status(thm)],[c_0_47, c_0_35])).
% 0.21/0.38  cnf(c_0_55, plain, (k8_relat_1(X2,X1)=X1|~v1_relat_1(X1)|~r1_tarski(k2_relat_1(X1),X2)), inference(split_conjunct,[status(thm)],[c_0_48])).
% 0.21/0.38  cnf(c_0_56, negated_conjecture, (r1_tarski(k2_relat_1(esk6_0),esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_50]), c_0_51])])).
% 0.21/0.38  cnf(c_0_57, negated_conjecture, (r2_relset_1(esk3_0,esk4_0,X1,X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk3_0,esk4_0)))), inference(spm,[status(thm)],[c_0_52, c_0_35])).
% 0.21/0.38  cnf(c_0_58, negated_conjecture, (~r2_relset_1(esk3_0,esk4_0,k8_relat_1(esk5_0,esk6_0),esk6_0)), inference(rw,[status(thm)],[c_0_53, c_0_54])).
% 0.21/0.38  cnf(c_0_59, negated_conjecture, (k8_relat_1(esk5_0,esk6_0)=esk6_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_56]), c_0_51])])).
% 0.21/0.38  cnf(c_0_60, negated_conjecture, (r2_relset_1(esk3_0,esk4_0,esk6_0,esk6_0)), inference(spm,[status(thm)],[c_0_57, c_0_35])).
% 0.21/0.38  cnf(c_0_61, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_58, c_0_59]), c_0_60])]), ['proof']).
% 0.21/0.38  # SZS output end CNFRefutation
% 0.21/0.38  # Proof object total steps             : 62
% 0.21/0.38  # Proof object clause steps            : 33
% 0.21/0.38  # Proof object formula steps           : 29
% 0.21/0.38  # Proof object conjectures             : 17
% 0.21/0.38  # Proof object clause conjectures      : 14
% 0.21/0.38  # Proof object formula conjectures     : 3
% 0.21/0.38  # Proof object initial clauses used    : 16
% 0.21/0.38  # Proof object initial formulas used   : 14
% 0.21/0.38  # Proof object generating inferences   : 14
% 0.21/0.38  # Proof object simplifying inferences  : 11
% 0.21/0.38  # Training examples: 0 positive, 0 negative
% 0.21/0.38  # Parsed axioms                        : 14
% 0.21/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.21/0.38  # Initial clauses                      : 25
% 0.21/0.38  # Removed in clause preprocessing      : 0
% 0.21/0.38  # Initial clauses in saturation        : 25
% 0.21/0.38  # Processed clauses                    : 147
% 0.21/0.38  # ...of these trivial                  : 2
% 0.21/0.38  # ...subsumed                          : 17
% 0.21/0.38  # ...remaining for further processing  : 128
% 0.21/0.38  # Other redundant clauses eliminated   : 2
% 0.21/0.38  # Clauses deleted for lack of memory   : 0
% 0.21/0.38  # Backward-subsumed                    : 0
% 0.21/0.38  # Backward-rewritten                   : 2
% 0.21/0.38  # Generated clauses                    : 255
% 0.21/0.38  # ...of the previous two non-trivial   : 227
% 0.21/0.38  # Contextual simplify-reflections      : 0
% 0.21/0.38  # Paramodulations                      : 253
% 0.21/0.38  # Factorizations                       : 0
% 0.21/0.38  # Equation resolutions                 : 2
% 0.21/0.38  # Propositional unsat checks           : 0
% 0.21/0.38  #    Propositional check models        : 0
% 0.21/0.38  #    Propositional check unsatisfiable : 0
% 0.21/0.38  #    Propositional clauses             : 0
% 0.21/0.38  #    Propositional clauses after purity: 0
% 0.21/0.38  #    Propositional unsat core size     : 0
% 0.21/0.38  #    Propositional preprocessing time  : 0.000
% 0.21/0.38  #    Propositional encoding time       : 0.000
% 0.21/0.38  #    Propositional solver time         : 0.000
% 0.21/0.38  #    Success case prop preproc time    : 0.000
% 0.21/0.38  #    Success case prop encoding time   : 0.000
% 0.21/0.38  #    Success case prop solver time     : 0.000
% 0.21/0.38  # Current number of processed clauses  : 99
% 0.21/0.38  #    Positive orientable unit clauses  : 27
% 0.21/0.38  #    Positive unorientable unit clauses: 0
% 0.21/0.38  #    Negative unit clauses             : 0
% 0.21/0.38  #    Non-unit-clauses                  : 72
% 0.21/0.38  # Current number of unprocessed clauses: 130
% 0.21/0.38  # ...number of literals in the above   : 349
% 0.21/0.38  # Current number of archived formulas  : 0
% 0.21/0.38  # Current number of archived clauses   : 27
% 0.21/0.38  # Clause-clause subsumption calls (NU) : 486
% 0.21/0.38  # Rec. Clause-clause subsumption calls : 429
% 0.21/0.38  # Non-unit clause-clause subsumptions  : 17
% 0.21/0.38  # Unit Clause-clause subsumption calls : 77
% 0.21/0.38  # Rewrite failures with RHS unbound    : 0
% 0.21/0.38  # BW rewrite match attempts            : 20
% 0.21/0.38  # BW rewrite match successes           : 2
% 0.21/0.38  # Condensation attempts                : 0
% 0.21/0.38  # Condensation successes               : 0
% 0.21/0.38  # Termbank termtop insertions          : 5247
% 0.21/0.38  
% 0.21/0.38  # -------------------------------------------------
% 0.21/0.38  # User time                : 0.036 s
% 0.21/0.38  # System time              : 0.004 s
% 0.21/0.38  # Total time               : 0.040 s
% 0.21/0.38  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
