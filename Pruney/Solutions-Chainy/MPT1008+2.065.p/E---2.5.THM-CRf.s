%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:04:39 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   58 ( 414 expanded)
%              Number of clauses        :   33 ( 158 expanded)
%              Number of leaves         :   12 ( 115 expanded)
%              Depth                    :   10
%              Number of atoms          :  156 ( 971 expanded)
%              Number of equality atoms :   72 ( 541 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   26 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t62_funct_2,conjecture,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & v1_funct_2(X3,k1_tarski(X1),X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))) )
     => ( X2 != k1_xboole_0
       => k2_relset_1(k1_tarski(X1),X2,X3) = k1_tarski(k1_funct_1(X3,X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t62_funct_2)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

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

fof(d1_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k1_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> X3 = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_tarski)).

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(t168_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( r2_hidden(X1,k1_relat_1(X2))
       => k2_relat_1(k7_relat_1(X2,k1_tarski(X1))) = k1_tarski(k1_funct_1(X2,X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t168_funct_1)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc1_relset_1)).

fof(cc2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( v4_relat_1(X3,X1)
        & v5_relat_1(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_relset_1)).

fof(t209_relat_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v4_relat_1(X2,X1) )
     => X2 = k7_relat_1(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t209_relat_1)).

fof(redefinition_k2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k2_relset_1(X1,X2,X3) = k2_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k2_relset_1)).

fof(c_0_12,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( v1_funct_1(X3)
          & v1_funct_2(X3,k1_tarski(X1),X2)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))) )
       => ( X2 != k1_xboole_0
         => k2_relset_1(k1_tarski(X1),X2,X3) = k1_tarski(k1_funct_1(X3,X1)) ) ) ),
    inference(assume_negation,[status(cth)],[t62_funct_2])).

fof(c_0_13,negated_conjecture,
    ( v1_funct_1(esk4_0)
    & v1_funct_2(esk4_0,k1_tarski(esk2_0),esk3_0)
    & m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk2_0),esk3_0)))
    & esk3_0 != k1_xboole_0
    & k2_relset_1(k1_tarski(esk2_0),esk3_0,esk4_0) != k1_tarski(k1_funct_1(esk4_0,esk2_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_12])])])).

fof(c_0_14,plain,(
    ! [X11] : k2_tarski(X11,X11) = k1_tarski(X11) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_15,plain,(
    ! [X12,X13] : k1_enumset1(X12,X12,X13) = k2_tarski(X12,X13) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_16,plain,(
    ! [X14,X15,X16] : k2_enumset1(X14,X14,X15,X16) = k1_enumset1(X14,X15,X16) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_17,plain,(
    ! [X33,X34,X35] :
      ( ( ~ v1_funct_2(X35,X33,X34)
        | X33 = k1_relset_1(X33,X34,X35)
        | X34 = k1_xboole_0
        | ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))) )
      & ( X33 != k1_relset_1(X33,X34,X35)
        | v1_funct_2(X35,X33,X34)
        | X34 = k1_xboole_0
        | ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))) )
      & ( ~ v1_funct_2(X35,X33,X34)
        | X33 = k1_relset_1(X33,X34,X35)
        | X33 != k1_xboole_0
        | ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))) )
      & ( X33 != k1_relset_1(X33,X34,X35)
        | v1_funct_2(X35,X33,X34)
        | X33 != k1_xboole_0
        | ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))) )
      & ( ~ v1_funct_2(X35,X33,X34)
        | X35 = k1_xboole_0
        | X33 = k1_xboole_0
        | X34 != k1_xboole_0
        | ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))) )
      & ( X35 != k1_xboole_0
        | v1_funct_2(X35,X33,X34)
        | X33 = k1_xboole_0
        | X34 != k1_xboole_0
        | ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).

cnf(c_0_18,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk2_0),esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_19,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_20,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_21,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_22,negated_conjecture,
    ( v1_funct_2(esk4_0,k1_tarski(esk2_0),esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_23,plain,(
    ! [X4,X5,X6,X7,X8,X9] :
      ( ( ~ r2_hidden(X6,X5)
        | X6 = X4
        | X5 != k1_tarski(X4) )
      & ( X7 != X4
        | r2_hidden(X7,X5)
        | X5 != k1_tarski(X4) )
      & ( ~ r2_hidden(esk1_2(X8,X9),X9)
        | esk1_2(X8,X9) != X8
        | X9 = k1_tarski(X8) )
      & ( r2_hidden(esk1_2(X8,X9),X9)
        | esk1_2(X8,X9) = X8
        | X9 = k1_tarski(X8) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).

fof(c_0_24,plain,(
    ! [X27,X28,X29] :
      ( ~ m1_subset_1(X29,k1_zfmisc_1(k2_zfmisc_1(X27,X28)))
      | k1_relset_1(X27,X28,X29) = k1_relat_1(X29) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

cnf(c_0_25,plain,
    ( X2 = k1_relset_1(X2,X3,X1)
    | X3 = k1_xboole_0
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_26,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),esk3_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_18,c_0_19]),c_0_20]),c_0_21])).

cnf(c_0_27,negated_conjecture,
    ( v1_funct_2(esk4_0,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),esk3_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_22,c_0_19]),c_0_20]),c_0_21])).

cnf(c_0_28,negated_conjecture,
    ( esk3_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_29,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k1_tarski(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_30,negated_conjecture,
    ( k2_relset_1(k1_tarski(esk2_0),esk3_0,esk4_0) != k1_tarski(k1_funct_1(esk4_0,esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_31,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_32,negated_conjecture,
    ( k1_relset_1(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),esk3_0,esk4_0) = k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_26]),c_0_27])]),c_0_28])).

fof(c_0_33,plain,(
    ! [X19,X20] :
      ( ~ v1_relat_1(X20)
      | ~ v1_funct_1(X20)
      | ~ r2_hidden(X19,k1_relat_1(X20))
      | k2_relat_1(k7_relat_1(X20,k1_tarski(X19))) = k1_tarski(k1_funct_1(X20,X19)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t168_funct_1])])).

fof(c_0_34,plain,(
    ! [X21,X22,X23] :
      ( ~ m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22)))
      | v1_relat_1(X23) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

cnf(c_0_35,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k2_enumset1(X2,X2,X2,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29,c_0_19]),c_0_20]),c_0_21])).

fof(c_0_36,plain,(
    ! [X24,X25,X26] :
      ( ( v4_relat_1(X26,X24)
        | ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))) )
      & ( v5_relat_1(X26,X25)
        | ~ m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

cnf(c_0_37,negated_conjecture,
    ( k2_relset_1(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),esk3_0,esk4_0) != k2_enumset1(k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_30,c_0_19]),c_0_19]),c_0_20]),c_0_20]),c_0_21]),c_0_21])).

cnf(c_0_38,negated_conjecture,
    ( k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0) = k1_relat_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_26])])).

cnf(c_0_39,plain,
    ( k2_relat_1(k7_relat_1(X1,k1_tarski(X2))) = k1_tarski(k1_funct_1(X1,X2))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ r2_hidden(X2,k1_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_40,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_41,plain,
    ( r2_hidden(X1,k2_enumset1(X1,X1,X1,X1)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_35])])).

cnf(c_0_42,plain,
    ( v4_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_43,negated_conjecture,
    ( k2_enumset1(k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0)) != k2_relset_1(k1_relat_1(esk4_0),esk3_0,esk4_0) ),
    inference(rw,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_44,plain,
    ( k2_relat_1(k7_relat_1(X1,k2_enumset1(X2,X2,X2,X2))) = k2_enumset1(k1_funct_1(X1,X2),k1_funct_1(X1,X2),k1_funct_1(X1,X2),k1_funct_1(X1,X2))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ r2_hidden(X2,k1_relat_1(X1)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_39,c_0_19]),c_0_19]),c_0_20]),c_0_20]),c_0_21]),c_0_21])).

cnf(c_0_45,negated_conjecture,
    ( v1_funct_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_46,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(spm,[status(thm)],[c_0_40,c_0_26])).

cnf(c_0_47,negated_conjecture,
    ( r2_hidden(esk2_0,k1_relat_1(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_41,c_0_38])).

fof(c_0_48,plain,(
    ! [X17,X18] :
      ( ~ v1_relat_1(X18)
      | ~ v4_relat_1(X18,X17)
      | X18 = k7_relat_1(X18,X17) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).

cnf(c_0_49,negated_conjecture,
    ( v4_relat_1(esk4_0,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_42,c_0_26])).

cnf(c_0_50,negated_conjecture,
    ( k2_relat_1(k7_relat_1(esk4_0,k1_relat_1(esk4_0))) != k2_relset_1(k1_relat_1(esk4_0),esk3_0,esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_44]),c_0_38]),c_0_45]),c_0_46]),c_0_47])])).

cnf(c_0_51,plain,
    ( X1 = k7_relat_1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v4_relat_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_48])).

cnf(c_0_52,negated_conjecture,
    ( v4_relat_1(esk4_0,k1_relat_1(esk4_0)) ),
    inference(rw,[status(thm)],[c_0_49,c_0_38])).

fof(c_0_53,plain,(
    ! [X30,X31,X32] :
      ( ~ m1_subset_1(X32,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))
      | k2_relset_1(X30,X31,X32) = k2_relat_1(X32) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).

cnf(c_0_54,negated_conjecture,
    ( k2_relset_1(k1_relat_1(esk4_0),esk3_0,esk4_0) != k2_relat_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_51]),c_0_52]),c_0_46])])).

cnf(c_0_55,plain,
    ( k2_relset_1(X2,X3,X1) = k2_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_53])).

cnf(c_0_56,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk4_0),esk3_0))) ),
    inference(rw,[status(thm)],[c_0_26,c_0_38])).

cnf(c_0_57,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54,c_0_55]),c_0_56])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n008.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 13:32:30 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.13/0.38  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.030 s
% 0.13/0.38  # Presaturation interreduction done
% 0.13/0.38  
% 0.13/0.38  # Proof found!
% 0.13/0.38  # SZS status Theorem
% 0.13/0.38  # SZS output start CNFRefutation
% 0.13/0.38  fof(t62_funct_2, conjecture, ![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,k1_tarski(X1),X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))))=>(X2!=k1_xboole_0=>k2_relset_1(k1_tarski(X1),X2,X3)=k1_tarski(k1_funct_1(X3,X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t62_funct_2)).
% 0.13/0.38  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.13/0.38  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.13/0.38  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.13/0.38  fof(d1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(((X2=k1_xboole_0=>X1=k1_xboole_0)=>(v1_funct_2(X3,X1,X2)<=>X1=k1_relset_1(X1,X2,X3)))&(X2=k1_xboole_0=>(X1=k1_xboole_0|(v1_funct_2(X3,X1,X2)<=>X3=k1_xboole_0))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_funct_2)).
% 0.13/0.38  fof(d1_tarski, axiom, ![X1, X2]:(X2=k1_tarski(X1)<=>![X3]:(r2_hidden(X3,X2)<=>X3=X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_tarski)).
% 0.13/0.38  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.13/0.38  fof(t168_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(r2_hidden(X1,k1_relat_1(X2))=>k2_relat_1(k7_relat_1(X2,k1_tarski(X1)))=k1_tarski(k1_funct_1(X2,X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t168_funct_1)).
% 0.13/0.38  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.13/0.38  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.13/0.38  fof(t209_relat_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v4_relat_1(X2,X1))=>X2=k7_relat_1(X2,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t209_relat_1)).
% 0.13/0.38  fof(redefinition_k2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k2_relset_1(X1,X2,X3)=k2_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k2_relset_1)).
% 0.13/0.38  fof(c_0_12, negated_conjecture, ~(![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,k1_tarski(X1),X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))))=>(X2!=k1_xboole_0=>k2_relset_1(k1_tarski(X1),X2,X3)=k1_tarski(k1_funct_1(X3,X1))))), inference(assume_negation,[status(cth)],[t62_funct_2])).
% 0.13/0.38  fof(c_0_13, negated_conjecture, (((v1_funct_1(esk4_0)&v1_funct_2(esk4_0,k1_tarski(esk2_0),esk3_0))&m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk2_0),esk3_0))))&(esk3_0!=k1_xboole_0&k2_relset_1(k1_tarski(esk2_0),esk3_0,esk4_0)!=k1_tarski(k1_funct_1(esk4_0,esk2_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_12])])])).
% 0.13/0.38  fof(c_0_14, plain, ![X11]:k2_tarski(X11,X11)=k1_tarski(X11), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.13/0.38  fof(c_0_15, plain, ![X12, X13]:k1_enumset1(X12,X12,X13)=k2_tarski(X12,X13), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.13/0.38  fof(c_0_16, plain, ![X14, X15, X16]:k2_enumset1(X14,X14,X15,X16)=k1_enumset1(X14,X15,X16), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.13/0.38  fof(c_0_17, plain, ![X33, X34, X35]:((((~v1_funct_2(X35,X33,X34)|X33=k1_relset_1(X33,X34,X35)|X34=k1_xboole_0|~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))))&(X33!=k1_relset_1(X33,X34,X35)|v1_funct_2(X35,X33,X34)|X34=k1_xboole_0|~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34)))))&((~v1_funct_2(X35,X33,X34)|X33=k1_relset_1(X33,X34,X35)|X33!=k1_xboole_0|~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))))&(X33!=k1_relset_1(X33,X34,X35)|v1_funct_2(X35,X33,X34)|X33!=k1_xboole_0|~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))))))&((~v1_funct_2(X35,X33,X34)|X35=k1_xboole_0|X33=k1_xboole_0|X34!=k1_xboole_0|~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))))&(X35!=k1_xboole_0|v1_funct_2(X35,X33,X34)|X33=k1_xboole_0|X34!=k1_xboole_0|~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).
% 0.13/0.38  cnf(c_0_18, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk2_0),esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.38  cnf(c_0_19, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.38  cnf(c_0_20, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.13/0.38  cnf(c_0_21, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.38  cnf(c_0_22, negated_conjecture, (v1_funct_2(esk4_0,k1_tarski(esk2_0),esk3_0)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.38  fof(c_0_23, plain, ![X4, X5, X6, X7, X8, X9]:(((~r2_hidden(X6,X5)|X6=X4|X5!=k1_tarski(X4))&(X7!=X4|r2_hidden(X7,X5)|X5!=k1_tarski(X4)))&((~r2_hidden(esk1_2(X8,X9),X9)|esk1_2(X8,X9)!=X8|X9=k1_tarski(X8))&(r2_hidden(esk1_2(X8,X9),X9)|esk1_2(X8,X9)=X8|X9=k1_tarski(X8)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).
% 0.13/0.38  fof(c_0_24, plain, ![X27, X28, X29]:(~m1_subset_1(X29,k1_zfmisc_1(k2_zfmisc_1(X27,X28)))|k1_relset_1(X27,X28,X29)=k1_relat_1(X29)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.13/0.38  cnf(c_0_25, plain, (X2=k1_relset_1(X2,X3,X1)|X3=k1_xboole_0|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.13/0.38  cnf(c_0_26, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),esk3_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_18, c_0_19]), c_0_20]), c_0_21])).
% 0.13/0.38  cnf(c_0_27, negated_conjecture, (v1_funct_2(esk4_0,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),esk3_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_22, c_0_19]), c_0_20]), c_0_21])).
% 0.13/0.38  cnf(c_0_28, negated_conjecture, (esk3_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.38  cnf(c_0_29, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k1_tarski(X2)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.38  cnf(c_0_30, negated_conjecture, (k2_relset_1(k1_tarski(esk2_0),esk3_0,esk4_0)!=k1_tarski(k1_funct_1(esk4_0,esk2_0))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.38  cnf(c_0_31, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.38  cnf(c_0_32, negated_conjecture, (k1_relset_1(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),esk3_0,esk4_0)=k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_26]), c_0_27])]), c_0_28])).
% 0.13/0.38  fof(c_0_33, plain, ![X19, X20]:(~v1_relat_1(X20)|~v1_funct_1(X20)|(~r2_hidden(X19,k1_relat_1(X20))|k2_relat_1(k7_relat_1(X20,k1_tarski(X19)))=k1_tarski(k1_funct_1(X20,X19)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t168_funct_1])])).
% 0.13/0.38  fof(c_0_34, plain, ![X21, X22, X23]:(~m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22)))|v1_relat_1(X23)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.13/0.38  cnf(c_0_35, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k2_enumset1(X2,X2,X2,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29, c_0_19]), c_0_20]), c_0_21])).
% 0.13/0.38  fof(c_0_36, plain, ![X24, X25, X26]:((v4_relat_1(X26,X24)|~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))))&(v5_relat_1(X26,X25)|~m1_subset_1(X26,k1_zfmisc_1(k2_zfmisc_1(X24,X25))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.13/0.38  cnf(c_0_37, negated_conjecture, (k2_relset_1(k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0),esk3_0,esk4_0)!=k2_enumset1(k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_30, c_0_19]), c_0_19]), c_0_20]), c_0_20]), c_0_21]), c_0_21])).
% 0.13/0.38  cnf(c_0_38, negated_conjecture, (k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)=k1_relat_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_26])])).
% 0.13/0.38  cnf(c_0_39, plain, (k2_relat_1(k7_relat_1(X1,k1_tarski(X2)))=k1_tarski(k1_funct_1(X1,X2))|~v1_relat_1(X1)|~v1_funct_1(X1)|~r2_hidden(X2,k1_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.13/0.38  cnf(c_0_40, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.13/0.38  cnf(c_0_41, plain, (r2_hidden(X1,k2_enumset1(X1,X1,X1,X1))), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_35])])).
% 0.13/0.38  cnf(c_0_42, plain, (v4_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.13/0.38  cnf(c_0_43, negated_conjecture, (k2_enumset1(k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0),k1_funct_1(esk4_0,esk2_0))!=k2_relset_1(k1_relat_1(esk4_0),esk3_0,esk4_0)), inference(rw,[status(thm)],[c_0_37, c_0_38])).
% 0.13/0.38  cnf(c_0_44, plain, (k2_relat_1(k7_relat_1(X1,k2_enumset1(X2,X2,X2,X2)))=k2_enumset1(k1_funct_1(X1,X2),k1_funct_1(X1,X2),k1_funct_1(X1,X2),k1_funct_1(X1,X2))|~v1_relat_1(X1)|~v1_funct_1(X1)|~r2_hidden(X2,k1_relat_1(X1))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_39, c_0_19]), c_0_19]), c_0_20]), c_0_20]), c_0_21]), c_0_21])).
% 0.13/0.38  cnf(c_0_45, negated_conjecture, (v1_funct_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.38  cnf(c_0_46, negated_conjecture, (v1_relat_1(esk4_0)), inference(spm,[status(thm)],[c_0_40, c_0_26])).
% 0.13/0.38  cnf(c_0_47, negated_conjecture, (r2_hidden(esk2_0,k1_relat_1(esk4_0))), inference(spm,[status(thm)],[c_0_41, c_0_38])).
% 0.13/0.38  fof(c_0_48, plain, ![X17, X18]:(~v1_relat_1(X18)|~v4_relat_1(X18,X17)|X18=k7_relat_1(X18,X17)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).
% 0.13/0.38  cnf(c_0_49, negated_conjecture, (v4_relat_1(esk4_0,k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0))), inference(spm,[status(thm)],[c_0_42, c_0_26])).
% 0.13/0.38  cnf(c_0_50, negated_conjecture, (k2_relat_1(k7_relat_1(esk4_0,k1_relat_1(esk4_0)))!=k2_relset_1(k1_relat_1(esk4_0),esk3_0,esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_44]), c_0_38]), c_0_45]), c_0_46]), c_0_47])])).
% 0.13/0.38  cnf(c_0_51, plain, (X1=k7_relat_1(X1,X2)|~v1_relat_1(X1)|~v4_relat_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_48])).
% 0.13/0.38  cnf(c_0_52, negated_conjecture, (v4_relat_1(esk4_0,k1_relat_1(esk4_0))), inference(rw,[status(thm)],[c_0_49, c_0_38])).
% 0.13/0.38  fof(c_0_53, plain, ![X30, X31, X32]:(~m1_subset_1(X32,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))|k2_relset_1(X30,X31,X32)=k2_relat_1(X32)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).
% 0.13/0.38  cnf(c_0_54, negated_conjecture, (k2_relset_1(k1_relat_1(esk4_0),esk3_0,esk4_0)!=k2_relat_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_51]), c_0_52]), c_0_46])])).
% 0.13/0.38  cnf(c_0_55, plain, (k2_relset_1(X2,X3,X1)=k2_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_53])).
% 0.13/0.38  cnf(c_0_56, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk4_0),esk3_0)))), inference(rw,[status(thm)],[c_0_26, c_0_38])).
% 0.13/0.38  cnf(c_0_57, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54, c_0_55]), c_0_56])]), ['proof']).
% 0.13/0.38  # SZS output end CNFRefutation
% 0.13/0.38  # Proof object total steps             : 58
% 0.13/0.38  # Proof object clause steps            : 33
% 0.13/0.38  # Proof object formula steps           : 25
% 0.13/0.38  # Proof object conjectures             : 22
% 0.13/0.38  # Proof object clause conjectures      : 19
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 16
% 0.13/0.38  # Proof object initial formulas used   : 12
% 0.13/0.38  # Proof object generating inferences   : 8
% 0.13/0.38  # Proof object simplifying inferences  : 41
% 0.13/0.38  # Training examples: 0 positive, 0 negative
% 0.13/0.38  # Parsed axioms                        : 12
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 25
% 0.13/0.38  # Removed in clause preprocessing      : 3
% 0.13/0.38  # Initial clauses in saturation        : 22
% 0.13/0.38  # Processed clauses                    : 86
% 0.13/0.38  # ...of these trivial                  : 1
% 0.13/0.38  # ...subsumed                          : 6
% 0.13/0.38  # ...remaining for further processing  : 79
% 0.13/0.38  # Other redundant clauses eliminated   : 10
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 0
% 0.13/0.38  # Backward-rewritten                   : 5
% 0.13/0.38  # Generated clauses                    : 139
% 0.13/0.38  # ...of the previous two non-trivial   : 120
% 0.13/0.38  # Contextual simplify-reflections      : 0
% 0.13/0.38  # Paramodulations                      : 131
% 0.13/0.38  # Factorizations                       : 0
% 0.13/0.38  # Equation resolutions                 : 10
% 0.13/0.38  # Propositional unsat checks           : 0
% 0.13/0.38  #    Propositional check models        : 0
% 0.13/0.38  #    Propositional check unsatisfiable : 0
% 0.13/0.38  #    Propositional clauses             : 0
% 0.13/0.38  #    Propositional clauses after purity: 0
% 0.13/0.38  #    Propositional unsat core size     : 0
% 0.13/0.38  #    Propositional preprocessing time  : 0.000
% 0.13/0.38  #    Propositional encoding time       : 0.000
% 0.13/0.38  #    Propositional solver time         : 0.000
% 0.13/0.38  #    Success case prop preproc time    : 0.000
% 0.13/0.38  #    Success case prop encoding time   : 0.000
% 0.13/0.38  #    Success case prop solver time     : 0.000
% 0.13/0.38  # Current number of processed clauses  : 46
% 0.13/0.38  #    Positive orientable unit clauses  : 10
% 0.13/0.38  #    Positive unorientable unit clauses: 0
% 0.13/0.38  #    Negative unit clauses             : 4
% 0.13/0.38  #    Non-unit-clauses                  : 32
% 0.13/0.38  # Current number of unprocessed clauses: 76
% 0.13/0.38  # ...number of literals in the above   : 330
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 30
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 360
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 238
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 6
% 0.13/0.38  # Unit Clause-clause subsumption calls : 4
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 3
% 0.13/0.38  # BW rewrite match successes           : 1
% 0.13/0.38  # Condensation attempts                : 0
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.38  # Termbank termtop insertions          : 3990
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.036 s
% 0.13/0.38  # System time              : 0.004 s
% 0.13/0.38  # Total time               : 0.040 s
% 0.13/0.38  # Maximum resident set size: 1584 pages
%------------------------------------------------------------------------------
