%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:01:04 EST 2020

% Result     : Theorem 0.61s
% Output     : CNFRefutation 0.61s
% Verified   : 
% Statistics : Number of formulae       :   95 (9553 expanded)
%              Number of clauses        :   75 (4273 expanded)
%              Number of leaves         :   10 (2293 expanded)
%              Depth                    :   25
%              Number of atoms          :  258 (37007 expanded)
%              Number of equality atoms :   72 (7093 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   26 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(d1_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
    <=> ! [X2] : ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_xboole_0)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).

fof(t11_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( ( r1_tarski(k1_relat_1(X3),X1)
          & r1_tarski(k2_relat_1(X3),X2) )
       => m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t11_relset_1)).

fof(t4_funct_2,conjecture,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( r1_tarski(k2_relat_1(X2),X1)
       => ( v1_funct_1(X2)
          & v1_funct_2(X2,k1_relat_1(X2),X1)
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X2),X1))) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_funct_2)).

fof(t113_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    <=> ( X1 = k1_xboole_0
        | X2 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t113_zfmisc_1)).

fof(fc1_xboole_0,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).

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

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(c_0_10,plain,(
    ! [X14,X15] :
      ( ( r1_tarski(X14,X15)
        | X14 != X15 )
      & ( r1_tarski(X15,X14)
        | X14 != X15 )
      & ( ~ r1_tarski(X14,X15)
        | ~ r1_tarski(X15,X14)
        | X14 = X15 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

fof(c_0_11,plain,(
    ! [X4,X5,X6] :
      ( ( ~ v1_xboole_0(X4)
        | ~ r2_hidden(X5,X4) )
      & ( r2_hidden(esk1_1(X6),X6)
        | v1_xboole_0(X6) ) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).

fof(c_0_12,plain,(
    ! [X8,X9,X10,X11,X12] :
      ( ( ~ r1_tarski(X8,X9)
        | ~ r2_hidden(X10,X8)
        | r2_hidden(X10,X9) )
      & ( r2_hidden(esk2_2(X11,X12),X11)
        | r1_tarski(X11,X12) )
      & ( ~ r2_hidden(esk2_2(X11,X12),X12)
        | r1_tarski(X11,X12) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

fof(c_0_13,plain,(
    ! [X23,X24,X25] :
      ( ~ v1_relat_1(X25)
      | ~ r1_tarski(k1_relat_1(X25),X23)
      | ~ r1_tarski(k2_relat_1(X25),X24)
      | m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(X23,X24))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t11_relset_1])])).

cnf(c_0_14,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_15,negated_conjecture,(
    ~ ! [X1,X2] :
        ( ( v1_relat_1(X2)
          & v1_funct_1(X2) )
       => ( r1_tarski(k2_relat_1(X2),X1)
         => ( v1_funct_1(X2)
            & v1_funct_2(X2,k1_relat_1(X2),X1)
            & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X2),X1))) ) ) ) ),
    inference(assume_negation,[status(cth)],[t4_funct_2])).

fof(c_0_16,plain,(
    ! [X16,X17] :
      ( ( k2_zfmisc_1(X16,X17) != k1_xboole_0
        | X16 = k1_xboole_0
        | X17 = k1_xboole_0 )
      & ( X16 != k1_xboole_0
        | k2_zfmisc_1(X16,X17) = k1_xboole_0 )
      & ( X17 != k1_xboole_0
        | k2_zfmisc_1(X16,X17) = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).

cnf(c_0_17,plain,
    ( ~ v1_xboole_0(X1)
    | ~ r2_hidden(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_18,plain,
    ( r2_hidden(esk2_2(X1,X2),X1)
    | r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_19,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k1_relat_1(X1),X2)
    | ~ r1_tarski(k2_relat_1(X1),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_20,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_14])).

fof(c_0_21,negated_conjecture,
    ( v1_relat_1(esk4_0)
    & v1_funct_1(esk4_0)
    & r1_tarski(k2_relat_1(esk4_0),esk3_0)
    & ( ~ v1_funct_1(esk4_0)
      | ~ v1_funct_2(esk4_0,k1_relat_1(esk4_0),esk3_0)
      | ~ m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk4_0),esk3_0))) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_15])])])).

cnf(c_0_22,plain,
    ( X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | k2_zfmisc_1(X1,X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_23,plain,
    ( r1_tarski(X1,X2)
    | ~ v1_xboole_0(X1) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_24,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[fc1_xboole_0])).

fof(c_0_25,plain,(
    ! [X18,X19] :
      ( ( ~ m1_subset_1(X18,k1_zfmisc_1(X19))
        | r1_tarski(X18,X19) )
      & ( ~ r1_tarski(X18,X19)
        | m1_subset_1(X18,k1_zfmisc_1(X19)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

cnf(c_0_26,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X2)))
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k2_relat_1(X1),X2) ),
    inference(spm,[status(thm)],[c_0_19,c_0_20])).

cnf(c_0_27,negated_conjecture,
    ( r1_tarski(k2_relat_1(esk4_0),esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_28,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_29,plain,
    ( k2_zfmisc_1(X2,X1) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_30,plain,
    ( X1 = k1_xboole_0
    | k2_zfmisc_1(X1,X1) != k1_xboole_0 ),
    inference(ef,[status(thm)],[c_0_22])).

cnf(c_0_31,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_32,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(spm,[status(thm)],[c_0_23,c_0_24])).

cnf(c_0_33,negated_conjecture,
    ( ~ v1_funct_1(esk4_0)
    | ~ v1_funct_2(esk4_0,k1_relat_1(esk4_0),esk3_0)
    | ~ m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk4_0),esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_34,negated_conjecture,
    ( v1_funct_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_35,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_36,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk4_0),esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_28])])).

cnf(c_0_37,plain,
    ( k2_zfmisc_1(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_29])).

cnf(c_0_38,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(k2_zfmisc_1(X1,X1),k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_31])]),c_0_32])])).

fof(c_0_39,plain,(
    ! [X26,X27,X28] :
      ( ( ~ v1_funct_2(X28,X26,X27)
        | X26 = k1_relset_1(X26,X27,X28)
        | X27 = k1_xboole_0
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) )
      & ( X26 != k1_relset_1(X26,X27,X28)
        | v1_funct_2(X28,X26,X27)
        | X27 = k1_xboole_0
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) )
      & ( ~ v1_funct_2(X28,X26,X27)
        | X26 = k1_relset_1(X26,X27,X28)
        | X26 != k1_xboole_0
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) )
      & ( X26 != k1_relset_1(X26,X27,X28)
        | v1_funct_2(X28,X26,X27)
        | X26 != k1_xboole_0
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) )
      & ( ~ v1_funct_2(X28,X26,X27)
        | X28 = k1_xboole_0
        | X26 = k1_xboole_0
        | X27 != k1_xboole_0
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) )
      & ( X28 != k1_xboole_0
        | v1_funct_2(X28,X26,X27)
        | X26 = k1_xboole_0
        | X27 != k1_xboole_0
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).

cnf(c_0_40,negated_conjecture,
    ( ~ v1_funct_2(esk4_0,k1_relat_1(esk4_0),esk3_0)
    | ~ m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk4_0),esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_33,c_0_34])])).

cnf(c_0_41,negated_conjecture,
    ( r1_tarski(esk4_0,k2_zfmisc_1(k1_relat_1(esk4_0),esk3_0)) ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_42,plain,
    ( k2_zfmisc_1(X1,X2) = X2
    | ~ r1_tarski(k2_zfmisc_1(X2,X2),k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_43,plain,
    ( v1_funct_2(X3,X1,X2)
    | X2 = k1_xboole_0
    | X1 != k1_relset_1(X1,X2,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_44,negated_conjecture,
    ( ~ v1_funct_2(esk4_0,k1_relat_1(esk4_0),esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_40,c_0_36])])).

fof(c_0_45,plain,(
    ! [X20,X21,X22] :
      ( ~ m1_subset_1(X22,k1_zfmisc_1(k2_zfmisc_1(X20,X21)))
      | k1_relset_1(X20,X21,X22) = k1_relat_1(X22) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

cnf(c_0_46,negated_conjecture,
    ( r1_tarski(esk4_0,esk3_0)
    | ~ r1_tarski(k2_zfmisc_1(esk3_0,esk3_0),k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_41,c_0_42])).

cnf(c_0_47,negated_conjecture,
    ( esk3_0 = k1_xboole_0
    | k1_relset_1(k1_relat_1(esk4_0),esk3_0,esk4_0) != k1_relat_1(esk4_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_36]),c_0_44])).

cnf(c_0_48,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

cnf(c_0_49,plain,
    ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_50,negated_conjecture,
    ( r1_tarski(esk4_0,esk3_0)
    | ~ r1_tarski(k2_zfmisc_1(k2_zfmisc_1(esk3_0,esk3_0),k2_zfmisc_1(esk3_0,esk3_0)),k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46,c_0_38]),c_0_32])])).

cnf(c_0_51,negated_conjecture,
    ( esk3_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_48]),c_0_36])])).

cnf(c_0_52,plain,
    ( k2_zfmisc_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_49])).

cnf(c_0_53,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(esk3_0))
    | ~ r1_tarski(k2_zfmisc_1(esk3_0,esk3_0),k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_36,c_0_42])).

cnf(c_0_54,plain,
    ( r1_tarski(X1,X2)
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_31]),c_0_32])])).

cnf(c_0_55,negated_conjecture,
    ( r1_tarski(esk4_0,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_50,c_0_51]),c_0_51]),c_0_51]),c_0_52]),c_0_51]),c_0_51]),c_0_52]),c_0_52]),c_0_32])])).

cnf(c_0_56,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_31]),c_0_37]),c_0_37]),c_0_32])])).

cnf(c_0_57,plain,
    ( v1_funct_2(X1,X2,X3)
    | X2 = k1_xboole_0
    | X1 != k1_xboole_0
    | X3 != k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_58,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k1_xboole_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_53,c_0_51]),c_0_51]),c_0_51]),c_0_52]),c_0_32])])).

cnf(c_0_59,negated_conjecture,
    ( r1_tarski(esk4_0,X1) ),
    inference(spm,[status(thm)],[c_0_54,c_0_55])).

cnf(c_0_60,plain,
    ( X1 = X2
    | ~ r1_tarski(X2,k1_xboole_0)
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_56,c_0_56])).

cnf(c_0_61,plain,
    ( X1 = k1_xboole_0
    | v1_funct_2(k1_xboole_0,X1,k1_xboole_0)
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) ),
    inference(rw,[status(thm)],[inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_57])]),c_0_37])).

cnf(c_0_62,negated_conjecture,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_56]),c_0_59])])).

cnf(c_0_63,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(k2_zfmisc_1(k2_zfmisc_1(X1,X1),k2_zfmisc_1(X1,X1)),k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_30,c_0_38])).

cnf(c_0_64,negated_conjecture,
    ( ~ v1_funct_2(X1,k1_relat_1(X1),esk3_0)
    | ~ r1_tarski(esk4_0,k1_xboole_0)
    | ~ r1_tarski(X1,esk4_0) ),
    inference(spm,[status(thm)],[c_0_44,c_0_60])).

cnf(c_0_65,plain,
    ( X1 = k1_xboole_0
    | v1_funct_2(k1_xboole_0,X1,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_61,c_0_62])])).

cnf(c_0_66,negated_conjecture,
    ( ~ v1_funct_2(esk4_0,k1_relat_1(esk4_0),k1_xboole_0)
    | ~ r1_tarski(k2_zfmisc_1(k2_zfmisc_1(esk3_0,esk3_0),k2_zfmisc_1(esk3_0,esk3_0)),k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_44,c_0_63])).

cnf(c_0_67,negated_conjecture,
    ( ~ v1_funct_2(X1,k1_relat_1(X1),k1_xboole_0)
    | ~ r1_tarski(X1,esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_64,c_0_51]),c_0_59])])).

cnf(c_0_68,plain,
    ( v1_funct_2(k1_xboole_0,X1,k1_xboole_0)
    | r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_32,c_0_65])).

cnf(c_0_69,negated_conjecture,
    ( ~ v1_funct_2(esk4_0,k1_relat_1(esk4_0),k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_66,c_0_51]),c_0_51]),c_0_52]),c_0_51]),c_0_51]),c_0_52]),c_0_52]),c_0_32])])).

cnf(c_0_70,negated_conjecture,
    ( r1_tarski(k1_relat_1(k1_xboole_0),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_67,c_0_68]),c_0_32])])).

cnf(c_0_71,negated_conjecture,
    ( ~ v1_funct_2(esk4_0,X1,k1_xboole_0)
    | ~ r1_tarski(k1_relat_1(esk4_0),k1_xboole_0)
    | ~ r1_tarski(X1,k1_relat_1(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_69,c_0_60])).

cnf(c_0_72,negated_conjecture,
    ( r1_tarski(k1_relat_1(X1),X2)
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70,c_0_31]),c_0_32])])).

cnf(c_0_73,negated_conjecture,
    ( ~ v1_funct_2(esk4_0,X1,k1_xboole_0)
    | ~ r1_tarski(X1,k1_relat_1(esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71,c_0_72]),c_0_59])])).

cnf(c_0_74,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_75,negated_conjecture,
    ( ~ v1_funct_2(k1_xboole_0,X1,k1_xboole_0)
    | ~ r1_tarski(X1,k1_relat_1(k1_xboole_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73,c_0_56]),c_0_59])])).

cnf(c_0_76,negated_conjecture,
    ( ~ v1_funct_2(esk4_0,k1_relat_1(esk4_0),esk3_0)
    | ~ r1_tarski(esk4_0,k2_zfmisc_1(k1_relat_1(esk4_0),esk3_0)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_74])).

cnf(c_0_77,plain,
    ( v1_funct_2(X3,X1,X2)
    | X1 != k1_relset_1(X1,X2,X3)
    | X1 != k1_xboole_0
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_78,negated_conjecture,
    ( ~ v1_funct_2(X1,X2,X1)
    | ~ r1_tarski(X2,k1_relat_1(X1))
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75,c_0_31]),c_0_32])])).

cnf(c_0_79,negated_conjecture,
    ( ~ v1_funct_2(k1_xboole_0,k1_relat_1(k1_xboole_0),esk3_0)
    | ~ r1_tarski(k2_zfmisc_1(esk4_0,esk4_0),k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76,c_0_38]),c_0_32])])).

cnf(c_0_80,plain,
    ( v1_funct_2(X1,k1_xboole_0,X2)
    | k1_relset_1(k1_xboole_0,X2,X1) != k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0)) ),
    inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_77]),c_0_52])).

cnf(c_0_81,negated_conjecture,
    ( ~ v1_funct_2(X1,esk4_0,X1)
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_78,c_0_59])).

cnf(c_0_82,negated_conjecture,
    ( v1_funct_2(k1_xboole_0,X1,k1_xboole_0)
    | m1_subset_1(esk4_0,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_58,c_0_65])).

cnf(c_0_83,negated_conjecture,
    ( ~ v1_funct_2(X1,k1_relat_1(X1),esk3_0)
    | ~ r1_tarski(k2_zfmisc_1(esk4_0,esk4_0),X1)
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79,c_0_31]),c_0_32])])).

cnf(c_0_84,plain,
    ( v1_funct_2(X1,X2,X3)
    | k1_relset_1(X2,X3,X1) != X2
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X2,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80,c_0_31]),c_0_32])])).

cnf(c_0_85,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81,c_0_82]),c_0_32])])).

cnf(c_0_86,negated_conjecture,
    ( ~ v1_funct_2(k2_zfmisc_1(esk4_0,esk4_0),k1_relat_1(k2_zfmisc_1(esk4_0,esk4_0)),esk3_0)
    | ~ r1_tarski(k2_zfmisc_1(esk4_0,esk4_0),k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_83,c_0_20])).

cnf(c_0_87,negated_conjecture,
    ( v1_funct_2(esk4_0,esk4_0,X1)
    | k1_relset_1(esk4_0,X1,esk4_0) != esk4_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_84,c_0_85]),c_0_59])])).

cnf(c_0_88,negated_conjecture,
    ( ~ v1_funct_2(k2_zfmisc_1(esk4_0,esk4_0),k1_relat_1(k2_zfmisc_1(esk4_0,esk4_0)),k1_xboole_0)
    | ~ r1_tarski(k2_zfmisc_1(esk4_0,esk4_0),k1_xboole_0) ),
    inference(rw,[status(thm)],[c_0_86,c_0_51])).

cnf(c_0_89,negated_conjecture,
    ( v1_funct_2(esk4_0,esk4_0,X1)
    | k1_relat_1(esk4_0) != esk4_0
    | ~ m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,X1))) ),
    inference(spm,[status(thm)],[c_0_87,c_0_48])).

cnf(c_0_90,negated_conjecture,
    ( ~ v1_funct_2(k1_xboole_0,k1_relat_1(k1_xboole_0),k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_88,c_0_56]),c_0_52]),c_0_52]),c_0_52]),c_0_32]),c_0_59])])).

cnf(c_0_91,negated_conjecture,
    ( v1_funct_2(k1_xboole_0,k1_xboole_0,X1)
    | k1_relat_1(k1_xboole_0) != k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_89,c_0_56]),c_0_52]),c_0_62]),c_0_59])])).

cnf(c_0_92,negated_conjecture,
    ( ~ v1_funct_2(k1_xboole_0,k1_xboole_0,k1_xboole_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_90,c_0_65]),c_0_90])).

cnf(c_0_93,negated_conjecture,
    ( v1_funct_2(k1_xboole_0,k1_xboole_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_91,c_0_56]),c_0_70])])).

cnf(c_0_94,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_92,c_0_93])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n013.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 15:10:39 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.61/0.82  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S039A
% 0.61/0.82  # and selection function PSelectUnlessUniqMaxPos.
% 0.61/0.82  #
% 0.61/0.82  # Preprocessing time       : 0.028 s
% 0.61/0.82  # Presaturation interreduction done
% 0.61/0.82  
% 0.61/0.82  # Proof found!
% 0.61/0.82  # SZS status Theorem
% 0.61/0.82  # SZS output start CNFRefutation
% 0.61/0.82  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.61/0.82  fof(d1_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)<=>![X2]:~(r2_hidden(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_xboole_0)).
% 0.61/0.82  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_tarski)).
% 0.61/0.82  fof(t11_relset_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>((r1_tarski(k1_relat_1(X3),X1)&r1_tarski(k2_relat_1(X3),X2))=>m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t11_relset_1)).
% 0.61/0.82  fof(t4_funct_2, conjecture, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(r1_tarski(k2_relat_1(X2),X1)=>((v1_funct_1(X2)&v1_funct_2(X2,k1_relat_1(X2),X1))&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X2),X1)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t4_funct_2)).
% 0.61/0.82  fof(t113_zfmisc_1, axiom, ![X1, X2]:(k2_zfmisc_1(X1,X2)=k1_xboole_0<=>(X1=k1_xboole_0|X2=k1_xboole_0)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t113_zfmisc_1)).
% 0.61/0.82  fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc1_xboole_0)).
% 0.61/0.82  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_subset)).
% 0.61/0.82  fof(d1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(((X2=k1_xboole_0=>X1=k1_xboole_0)=>(v1_funct_2(X3,X1,X2)<=>X1=k1_relset_1(X1,X2,X3)))&(X2=k1_xboole_0=>(X1=k1_xboole_0|(v1_funct_2(X3,X1,X2)<=>X3=k1_xboole_0))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_funct_2)).
% 0.61/0.82  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.61/0.82  fof(c_0_10, plain, ![X14, X15]:(((r1_tarski(X14,X15)|X14!=X15)&(r1_tarski(X15,X14)|X14!=X15))&(~r1_tarski(X14,X15)|~r1_tarski(X15,X14)|X14=X15)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.61/0.82  fof(c_0_11, plain, ![X4, X5, X6]:((~v1_xboole_0(X4)|~r2_hidden(X5,X4))&(r2_hidden(esk1_1(X6),X6)|v1_xboole_0(X6))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).
% 0.61/0.82  fof(c_0_12, plain, ![X8, X9, X10, X11, X12]:((~r1_tarski(X8,X9)|(~r2_hidden(X10,X8)|r2_hidden(X10,X9)))&((r2_hidden(esk2_2(X11,X12),X11)|r1_tarski(X11,X12))&(~r2_hidden(esk2_2(X11,X12),X12)|r1_tarski(X11,X12)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.61/0.82  fof(c_0_13, plain, ![X23, X24, X25]:(~v1_relat_1(X25)|(~r1_tarski(k1_relat_1(X25),X23)|~r1_tarski(k2_relat_1(X25),X24)|m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(X23,X24))))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t11_relset_1])])).
% 0.61/0.82  cnf(c_0_14, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.61/0.82  fof(c_0_15, negated_conjecture, ~(![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(r1_tarski(k2_relat_1(X2),X1)=>((v1_funct_1(X2)&v1_funct_2(X2,k1_relat_1(X2),X1))&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X2),X1))))))), inference(assume_negation,[status(cth)],[t4_funct_2])).
% 0.61/0.82  fof(c_0_16, plain, ![X16, X17]:((k2_zfmisc_1(X16,X17)!=k1_xboole_0|(X16=k1_xboole_0|X17=k1_xboole_0))&((X16!=k1_xboole_0|k2_zfmisc_1(X16,X17)=k1_xboole_0)&(X17!=k1_xboole_0|k2_zfmisc_1(X16,X17)=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).
% 0.61/0.82  cnf(c_0_17, plain, (~v1_xboole_0(X1)|~r2_hidden(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.61/0.82  cnf(c_0_18, plain, (r2_hidden(esk2_2(X1,X2),X1)|r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.61/0.82  cnf(c_0_19, plain, (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~v1_relat_1(X1)|~r1_tarski(k1_relat_1(X1),X2)|~r1_tarski(k2_relat_1(X1),X3)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.61/0.82  cnf(c_0_20, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_14])).
% 0.61/0.82  fof(c_0_21, negated_conjecture, ((v1_relat_1(esk4_0)&v1_funct_1(esk4_0))&(r1_tarski(k2_relat_1(esk4_0),esk3_0)&(~v1_funct_1(esk4_0)|~v1_funct_2(esk4_0,k1_relat_1(esk4_0),esk3_0)|~m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk4_0),esk3_0)))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_15])])])).
% 0.61/0.82  cnf(c_0_22, plain, (X1=k1_xboole_0|X2=k1_xboole_0|k2_zfmisc_1(X1,X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.61/0.82  cnf(c_0_23, plain, (r1_tarski(X1,X2)|~v1_xboole_0(X1)), inference(spm,[status(thm)],[c_0_17, c_0_18])).
% 0.61/0.82  cnf(c_0_24, plain, (v1_xboole_0(k1_xboole_0)), inference(split_conjunct,[status(thm)],[fc1_xboole_0])).
% 0.61/0.82  fof(c_0_25, plain, ![X18, X19]:((~m1_subset_1(X18,k1_zfmisc_1(X19))|r1_tarski(X18,X19))&(~r1_tarski(X18,X19)|m1_subset_1(X18,k1_zfmisc_1(X19)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.61/0.82  cnf(c_0_26, plain, (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X2)))|~v1_relat_1(X1)|~r1_tarski(k2_relat_1(X1),X2)), inference(spm,[status(thm)],[c_0_19, c_0_20])).
% 0.61/0.82  cnf(c_0_27, negated_conjecture, (r1_tarski(k2_relat_1(esk4_0),esk3_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.61/0.82  cnf(c_0_28, negated_conjecture, (v1_relat_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.61/0.82  cnf(c_0_29, plain, (k2_zfmisc_1(X2,X1)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.61/0.82  cnf(c_0_30, plain, (X1=k1_xboole_0|k2_zfmisc_1(X1,X1)!=k1_xboole_0), inference(ef,[status(thm)],[c_0_22])).
% 0.61/0.82  cnf(c_0_31, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.61/0.82  cnf(c_0_32, plain, (r1_tarski(k1_xboole_0,X1)), inference(spm,[status(thm)],[c_0_23, c_0_24])).
% 0.61/0.82  cnf(c_0_33, negated_conjecture, (~v1_funct_1(esk4_0)|~v1_funct_2(esk4_0,k1_relat_1(esk4_0),esk3_0)|~m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk4_0),esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.61/0.82  cnf(c_0_34, negated_conjecture, (v1_funct_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.61/0.82  cnf(c_0_35, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.61/0.82  cnf(c_0_36, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk4_0),esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_28])])).
% 0.61/0.82  cnf(c_0_37, plain, (k2_zfmisc_1(X1,k1_xboole_0)=k1_xboole_0), inference(er,[status(thm)],[c_0_29])).
% 0.61/0.82  cnf(c_0_38, plain, (X1=k1_xboole_0|~r1_tarski(k2_zfmisc_1(X1,X1),k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_31])]), c_0_32])])).
% 0.61/0.82  fof(c_0_39, plain, ![X26, X27, X28]:((((~v1_funct_2(X28,X26,X27)|X26=k1_relset_1(X26,X27,X28)|X27=k1_xboole_0|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))))&(X26!=k1_relset_1(X26,X27,X28)|v1_funct_2(X28,X26,X27)|X27=k1_xboole_0|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27)))))&((~v1_funct_2(X28,X26,X27)|X26=k1_relset_1(X26,X27,X28)|X26!=k1_xboole_0|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))))&(X26!=k1_relset_1(X26,X27,X28)|v1_funct_2(X28,X26,X27)|X26!=k1_xboole_0|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))))))&((~v1_funct_2(X28,X26,X27)|X28=k1_xboole_0|X26=k1_xboole_0|X27!=k1_xboole_0|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))))&(X28!=k1_xboole_0|v1_funct_2(X28,X26,X27)|X26=k1_xboole_0|X27!=k1_xboole_0|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).
% 0.61/0.82  cnf(c_0_40, negated_conjecture, (~v1_funct_2(esk4_0,k1_relat_1(esk4_0),esk3_0)|~m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk4_0),esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_33, c_0_34])])).
% 0.61/0.82  cnf(c_0_41, negated_conjecture, (r1_tarski(esk4_0,k2_zfmisc_1(k1_relat_1(esk4_0),esk3_0))), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 0.61/0.82  cnf(c_0_42, plain, (k2_zfmisc_1(X1,X2)=X2|~r1_tarski(k2_zfmisc_1(X2,X2),k1_xboole_0)), inference(spm,[status(thm)],[c_0_37, c_0_38])).
% 0.61/0.82  cnf(c_0_43, plain, (v1_funct_2(X3,X1,X2)|X2=k1_xboole_0|X1!=k1_relset_1(X1,X2,X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.61/0.82  cnf(c_0_44, negated_conjecture, (~v1_funct_2(esk4_0,k1_relat_1(esk4_0),esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_40, c_0_36])])).
% 0.61/0.82  fof(c_0_45, plain, ![X20, X21, X22]:(~m1_subset_1(X22,k1_zfmisc_1(k2_zfmisc_1(X20,X21)))|k1_relset_1(X20,X21,X22)=k1_relat_1(X22)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.61/0.82  cnf(c_0_46, negated_conjecture, (r1_tarski(esk4_0,esk3_0)|~r1_tarski(k2_zfmisc_1(esk3_0,esk3_0),k1_xboole_0)), inference(spm,[status(thm)],[c_0_41, c_0_42])).
% 0.61/0.82  cnf(c_0_47, negated_conjecture, (esk3_0=k1_xboole_0|k1_relset_1(k1_relat_1(esk4_0),esk3_0,esk4_0)!=k1_relat_1(esk4_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_36]), c_0_44])).
% 0.61/0.82  cnf(c_0_48, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_45])).
% 0.61/0.82  cnf(c_0_49, plain, (k2_zfmisc_1(X1,X2)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.61/0.82  cnf(c_0_50, negated_conjecture, (r1_tarski(esk4_0,esk3_0)|~r1_tarski(k2_zfmisc_1(k2_zfmisc_1(esk3_0,esk3_0),k2_zfmisc_1(esk3_0,esk3_0)),k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46, c_0_38]), c_0_32])])).
% 0.61/0.82  cnf(c_0_51, negated_conjecture, (esk3_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_48]), c_0_36])])).
% 0.61/0.82  cnf(c_0_52, plain, (k2_zfmisc_1(k1_xboole_0,X1)=k1_xboole_0), inference(er,[status(thm)],[c_0_49])).
% 0.61/0.82  cnf(c_0_53, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(esk3_0))|~r1_tarski(k2_zfmisc_1(esk3_0,esk3_0),k1_xboole_0)), inference(spm,[status(thm)],[c_0_36, c_0_42])).
% 0.61/0.82  cnf(c_0_54, plain, (r1_tarski(X1,X2)|~r1_tarski(X1,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_31]), c_0_32])])).
% 0.61/0.82  cnf(c_0_55, negated_conjecture, (r1_tarski(esk4_0,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_50, c_0_51]), c_0_51]), c_0_51]), c_0_52]), c_0_51]), c_0_51]), c_0_52]), c_0_52]), c_0_32])])).
% 0.61/0.82  cnf(c_0_56, plain, (X1=k1_xboole_0|~r1_tarski(X1,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_31]), c_0_37]), c_0_37]), c_0_32])])).
% 0.61/0.82  cnf(c_0_57, plain, (v1_funct_2(X1,X2,X3)|X2=k1_xboole_0|X1!=k1_xboole_0|X3!=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.61/0.82  cnf(c_0_58, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k1_xboole_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_53, c_0_51]), c_0_51]), c_0_51]), c_0_52]), c_0_32])])).
% 0.61/0.82  cnf(c_0_59, negated_conjecture, (r1_tarski(esk4_0,X1)), inference(spm,[status(thm)],[c_0_54, c_0_55])).
% 0.61/0.82  cnf(c_0_60, plain, (X1=X2|~r1_tarski(X2,k1_xboole_0)|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_56, c_0_56])).
% 0.61/0.82  cnf(c_0_61, plain, (X1=k1_xboole_0|v1_funct_2(k1_xboole_0,X1,k1_xboole_0)|~m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0))), inference(rw,[status(thm)],[inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_57])]), c_0_37])).
% 0.61/0.82  cnf(c_0_62, negated_conjecture, (m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58, c_0_56]), c_0_59])])).
% 0.61/0.82  cnf(c_0_63, plain, (X1=k1_xboole_0|~r1_tarski(k2_zfmisc_1(k2_zfmisc_1(X1,X1),k2_zfmisc_1(X1,X1)),k1_xboole_0)), inference(spm,[status(thm)],[c_0_30, c_0_38])).
% 0.61/0.82  cnf(c_0_64, negated_conjecture, (~v1_funct_2(X1,k1_relat_1(X1),esk3_0)|~r1_tarski(esk4_0,k1_xboole_0)|~r1_tarski(X1,esk4_0)), inference(spm,[status(thm)],[c_0_44, c_0_60])).
% 0.61/0.82  cnf(c_0_65, plain, (X1=k1_xboole_0|v1_funct_2(k1_xboole_0,X1,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_61, c_0_62])])).
% 0.61/0.82  cnf(c_0_66, negated_conjecture, (~v1_funct_2(esk4_0,k1_relat_1(esk4_0),k1_xboole_0)|~r1_tarski(k2_zfmisc_1(k2_zfmisc_1(esk3_0,esk3_0),k2_zfmisc_1(esk3_0,esk3_0)),k1_xboole_0)), inference(spm,[status(thm)],[c_0_44, c_0_63])).
% 0.61/0.82  cnf(c_0_67, negated_conjecture, (~v1_funct_2(X1,k1_relat_1(X1),k1_xboole_0)|~r1_tarski(X1,esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_64, c_0_51]), c_0_59])])).
% 0.61/0.82  cnf(c_0_68, plain, (v1_funct_2(k1_xboole_0,X1,k1_xboole_0)|r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_32, c_0_65])).
% 0.61/0.82  cnf(c_0_69, negated_conjecture, (~v1_funct_2(esk4_0,k1_relat_1(esk4_0),k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_66, c_0_51]), c_0_51]), c_0_52]), c_0_51]), c_0_51]), c_0_52]), c_0_52]), c_0_32])])).
% 0.61/0.82  cnf(c_0_70, negated_conjecture, (r1_tarski(k1_relat_1(k1_xboole_0),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_67, c_0_68]), c_0_32])])).
% 0.61/0.82  cnf(c_0_71, negated_conjecture, (~v1_funct_2(esk4_0,X1,k1_xboole_0)|~r1_tarski(k1_relat_1(esk4_0),k1_xboole_0)|~r1_tarski(X1,k1_relat_1(esk4_0))), inference(spm,[status(thm)],[c_0_69, c_0_60])).
% 0.61/0.82  cnf(c_0_72, negated_conjecture, (r1_tarski(k1_relat_1(X1),X2)|~r1_tarski(X1,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70, c_0_31]), c_0_32])])).
% 0.61/0.82  cnf(c_0_73, negated_conjecture, (~v1_funct_2(esk4_0,X1,k1_xboole_0)|~r1_tarski(X1,k1_relat_1(esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71, c_0_72]), c_0_59])])).
% 0.61/0.82  cnf(c_0_74, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.61/0.82  cnf(c_0_75, negated_conjecture, (~v1_funct_2(k1_xboole_0,X1,k1_xboole_0)|~r1_tarski(X1,k1_relat_1(k1_xboole_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73, c_0_56]), c_0_59])])).
% 0.61/0.82  cnf(c_0_76, negated_conjecture, (~v1_funct_2(esk4_0,k1_relat_1(esk4_0),esk3_0)|~r1_tarski(esk4_0,k2_zfmisc_1(k1_relat_1(esk4_0),esk3_0))), inference(spm,[status(thm)],[c_0_40, c_0_74])).
% 0.61/0.82  cnf(c_0_77, plain, (v1_funct_2(X3,X1,X2)|X1!=k1_relset_1(X1,X2,X3)|X1!=k1_xboole_0|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.61/0.82  cnf(c_0_78, negated_conjecture, (~v1_funct_2(X1,X2,X1)|~r1_tarski(X2,k1_relat_1(X1))|~r1_tarski(X1,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75, c_0_31]), c_0_32])])).
% 0.61/0.82  cnf(c_0_79, negated_conjecture, (~v1_funct_2(k1_xboole_0,k1_relat_1(k1_xboole_0),esk3_0)|~r1_tarski(k2_zfmisc_1(esk4_0,esk4_0),k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76, c_0_38]), c_0_32])])).
% 0.61/0.82  cnf(c_0_80, plain, (v1_funct_2(X1,k1_xboole_0,X2)|k1_relset_1(k1_xboole_0,X2,X1)!=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0))), inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_77]), c_0_52])).
% 0.61/0.82  cnf(c_0_81, negated_conjecture, (~v1_funct_2(X1,esk4_0,X1)|~r1_tarski(X1,k1_xboole_0)), inference(spm,[status(thm)],[c_0_78, c_0_59])).
% 0.61/0.82  cnf(c_0_82, negated_conjecture, (v1_funct_2(k1_xboole_0,X1,k1_xboole_0)|m1_subset_1(esk4_0,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_58, c_0_65])).
% 0.61/0.82  cnf(c_0_83, negated_conjecture, (~v1_funct_2(X1,k1_relat_1(X1),esk3_0)|~r1_tarski(k2_zfmisc_1(esk4_0,esk4_0),X1)|~r1_tarski(X1,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79, c_0_31]), c_0_32])])).
% 0.61/0.82  cnf(c_0_84, plain, (v1_funct_2(X1,X2,X3)|k1_relset_1(X2,X3,X1)!=X2|~m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X2,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80, c_0_31]), c_0_32])])).
% 0.61/0.82  cnf(c_0_85, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81, c_0_82]), c_0_32])])).
% 0.61/0.82  cnf(c_0_86, negated_conjecture, (~v1_funct_2(k2_zfmisc_1(esk4_0,esk4_0),k1_relat_1(k2_zfmisc_1(esk4_0,esk4_0)),esk3_0)|~r1_tarski(k2_zfmisc_1(esk4_0,esk4_0),k1_xboole_0)), inference(spm,[status(thm)],[c_0_83, c_0_20])).
% 0.61/0.82  cnf(c_0_87, negated_conjecture, (v1_funct_2(esk4_0,esk4_0,X1)|k1_relset_1(esk4_0,X1,esk4_0)!=esk4_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_84, c_0_85]), c_0_59])])).
% 0.61/0.82  cnf(c_0_88, negated_conjecture, (~v1_funct_2(k2_zfmisc_1(esk4_0,esk4_0),k1_relat_1(k2_zfmisc_1(esk4_0,esk4_0)),k1_xboole_0)|~r1_tarski(k2_zfmisc_1(esk4_0,esk4_0),k1_xboole_0)), inference(rw,[status(thm)],[c_0_86, c_0_51])).
% 0.61/0.82  cnf(c_0_89, negated_conjecture, (v1_funct_2(esk4_0,esk4_0,X1)|k1_relat_1(esk4_0)!=esk4_0|~m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,X1)))), inference(spm,[status(thm)],[c_0_87, c_0_48])).
% 0.61/0.82  cnf(c_0_90, negated_conjecture, (~v1_funct_2(k1_xboole_0,k1_relat_1(k1_xboole_0),k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_88, c_0_56]), c_0_52]), c_0_52]), c_0_52]), c_0_32]), c_0_59])])).
% 0.61/0.82  cnf(c_0_91, negated_conjecture, (v1_funct_2(k1_xboole_0,k1_xboole_0,X1)|k1_relat_1(k1_xboole_0)!=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_89, c_0_56]), c_0_52]), c_0_62]), c_0_59])])).
% 0.61/0.82  cnf(c_0_92, negated_conjecture, (~v1_funct_2(k1_xboole_0,k1_xboole_0,k1_xboole_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_90, c_0_65]), c_0_90])).
% 0.61/0.82  cnf(c_0_93, negated_conjecture, (v1_funct_2(k1_xboole_0,k1_xboole_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_91, c_0_56]), c_0_70])])).
% 0.61/0.82  cnf(c_0_94, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_92, c_0_93])]), ['proof']).
% 0.61/0.82  # SZS output end CNFRefutation
% 0.61/0.82  # Proof object total steps             : 95
% 0.61/0.82  # Proof object clause steps            : 75
% 0.61/0.82  # Proof object formula steps           : 20
% 0.61/0.82  # Proof object conjectures             : 45
% 0.61/0.82  # Proof object clause conjectures      : 42
% 0.61/0.82  # Proof object formula conjectures     : 3
% 0.61/0.82  # Proof object initial clauses used    : 19
% 0.61/0.82  # Proof object initial formulas used   : 10
% 0.61/0.82  # Proof object generating inferences   : 42
% 0.61/0.82  # Proof object simplifying inferences  : 96
% 0.61/0.82  # Training examples: 0 positive, 0 negative
% 0.61/0.82  # Parsed axioms                        : 10
% 0.61/0.82  # Removed by relevancy pruning/SinE    : 0
% 0.61/0.82  # Initial clauses                      : 26
% 0.61/0.82  # Removed in clause preprocessing      : 0
% 0.61/0.82  # Initial clauses in saturation        : 26
% 0.61/0.82  # Processed clauses                    : 3660
% 0.61/0.82  # ...of these trivial                  : 60
% 0.61/0.82  # ...subsumed                          : 2971
% 0.61/0.82  # ...remaining for further processing  : 629
% 0.61/0.82  # Other redundant clauses eliminated   : 296
% 0.61/0.82  # Clauses deleted for lack of memory   : 0
% 0.61/0.82  # Backward-subsumed                    : 82
% 0.61/0.82  # Backward-rewritten                   : 141
% 0.61/0.82  # Generated clauses                    : 49922
% 0.61/0.82  # ...of the previous two non-trivial   : 48446
% 0.61/0.82  # Contextual simplify-reflections      : 9
% 0.61/0.82  # Paramodulations                      : 49512
% 0.61/0.82  # Factorizations                       : 115
% 0.61/0.82  # Equation resolutions                 : 296
% 0.61/0.82  # Propositional unsat checks           : 0
% 0.61/0.82  #    Propositional check models        : 0
% 0.61/0.82  #    Propositional check unsatisfiable : 0
% 0.61/0.82  #    Propositional clauses             : 0
% 0.61/0.82  #    Propositional clauses after purity: 0
% 0.61/0.82  #    Propositional unsat core size     : 0
% 0.61/0.82  #    Propositional preprocessing time  : 0.000
% 0.61/0.82  #    Propositional encoding time       : 0.000
% 0.61/0.82  #    Propositional solver time         : 0.000
% 0.61/0.82  #    Success case prop preproc time    : 0.000
% 0.61/0.82  #    Success case prop encoding time   : 0.000
% 0.61/0.82  #    Success case prop solver time     : 0.000
% 0.61/0.82  # Current number of processed clauses  : 373
% 0.61/0.82  #    Positive orientable unit clauses  : 25
% 0.61/0.82  #    Positive unorientable unit clauses: 0
% 0.61/0.82  #    Negative unit clauses             : 4
% 0.61/0.82  #    Non-unit-clauses                  : 344
% 0.61/0.82  # Current number of unprocessed clauses: 43126
% 0.61/0.82  # ...number of literals in the above   : 205306
% 0.61/0.82  # Current number of archived formulas  : 0
% 0.61/0.82  # Current number of archived clauses   : 248
% 0.61/0.82  # Clause-clause subsumption calls (NU) : 49137
% 0.61/0.82  # Rec. Clause-clause subsumption calls : 30176
% 0.61/0.82  # Non-unit clause-clause subsumptions  : 2915
% 0.61/0.82  # Unit Clause-clause subsumption calls : 686
% 0.61/0.82  # Rewrite failures with RHS unbound    : 0
% 0.61/0.82  # BW rewrite match attempts            : 22
% 0.61/0.82  # BW rewrite match successes           : 15
% 0.61/0.82  # Condensation attempts                : 0
% 0.61/0.82  # Condensation successes               : 0
% 0.61/0.82  # Termbank termtop insertions          : 795914
% 0.61/0.83  
% 0.61/0.83  # -------------------------------------------------
% 0.61/0.83  # User time                : 0.458 s
% 0.61/0.83  # System time              : 0.025 s
% 0.61/0.83  # Total time               : 0.483 s
% 0.61/0.83  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
