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
% DateTime   : Thu Dec  3 11:05:51 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   85 (10257 expanded)
%              Number of clauses        :   59 (3906 expanded)
%              Number of leaves         :   13 (2555 expanded)
%              Depth                    :   19
%              Number of atoms          :  303 (65805 expanded)
%              Number of equality atoms :   98 (17346 expanded)
%              Maximal formula depth    :   15 (   4 average)
%              Maximal clause size      :   26 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t77_funct_2,conjecture,(
    ! [X1,X2] :
      ( ( v1_funct_1(X2)
        & v1_funct_2(X2,X1,X1)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
     => ( v2_funct_1(X2)
      <=> ! [X3,X4] :
            ( ( r2_hidden(X3,X1)
              & r2_hidden(X4,X1)
              & k1_funct_1(X2,X3) = k1_funct_1(X2,X4) )
           => X3 = X4 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t77_funct_2)).

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

fof(d8_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
      <=> ! [X2,X3] :
            ( ( r2_hidden(X2,k1_relat_1(X1))
              & r2_hidden(X3,k1_relat_1(X1))
              & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) )
           => X2 = X3 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d8_funct_1)).

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_funct_2)).

fof(t8_funct_1,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_relat_1(X3)
        & v1_funct_1(X3) )
     => ( r2_hidden(k4_tarski(X1,X2),X3)
      <=> ( r2_hidden(X1,k1_relat_1(X3))
          & X2 = k1_funct_1(X3,X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t8_funct_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t113_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    <=> ( X1 = k1_xboole_0
        | X2 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t113_zfmisc_1)).

fof(d1_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
    <=> ! [X2] : ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_xboole_0)).

fof(t2_xboole_1,axiom,(
    ! [X1] : r1_tarski(k1_xboole_0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_xboole_1)).

fof(fc1_xboole_0,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(c_0_13,negated_conjecture,(
    ~ ! [X1,X2] :
        ( ( v1_funct_1(X2)
          & v1_funct_2(X2,X1,X1)
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
       => ( v2_funct_1(X2)
        <=> ! [X3,X4] :
              ( ( r2_hidden(X3,X1)
                & r2_hidden(X4,X1)
                & k1_funct_1(X2,X3) = k1_funct_1(X2,X4) )
             => X3 = X4 ) ) ) ),
    inference(assume_negation,[status(cth)],[t77_funct_2])).

fof(c_0_14,plain,(
    ! [X16,X17] :
      ( ~ v1_relat_1(X16)
      | ~ m1_subset_1(X17,k1_zfmisc_1(X16))
      | v1_relat_1(X17) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).

fof(c_0_15,negated_conjecture,(
    ! [X38,X39] :
      ( v1_funct_1(esk5_0)
      & v1_funct_2(esk5_0,esk4_0,esk4_0)
      & m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk4_0)))
      & ( r2_hidden(esk6_0,esk4_0)
        | ~ v2_funct_1(esk5_0) )
      & ( r2_hidden(esk7_0,esk4_0)
        | ~ v2_funct_1(esk5_0) )
      & ( k1_funct_1(esk5_0,esk6_0) = k1_funct_1(esk5_0,esk7_0)
        | ~ v2_funct_1(esk5_0) )
      & ( esk6_0 != esk7_0
        | ~ v2_funct_1(esk5_0) )
      & ( v2_funct_1(esk5_0)
        | ~ r2_hidden(X38,esk4_0)
        | ~ r2_hidden(X39,esk4_0)
        | k1_funct_1(esk5_0,X38) != k1_funct_1(esk5_0,X39)
        | X38 = X39 ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_13])])])])])).

fof(c_0_16,plain,(
    ! [X18,X19] : v1_relat_1(k2_zfmisc_1(X18,X19)) ),
    inference(variable_rename,[status(thm)],[fc6_relat_1])).

fof(c_0_17,plain,(
    ! [X20,X21,X22] :
      ( ( ~ v2_funct_1(X20)
        | ~ r2_hidden(X21,k1_relat_1(X20))
        | ~ r2_hidden(X22,k1_relat_1(X20))
        | k1_funct_1(X20,X21) != k1_funct_1(X20,X22)
        | X21 = X22
        | ~ v1_relat_1(X20)
        | ~ v1_funct_1(X20) )
      & ( r2_hidden(esk2_1(X20),k1_relat_1(X20))
        | v2_funct_1(X20)
        | ~ v1_relat_1(X20)
        | ~ v1_funct_1(X20) )
      & ( r2_hidden(esk3_1(X20),k1_relat_1(X20))
        | v2_funct_1(X20)
        | ~ v1_relat_1(X20)
        | ~ v1_funct_1(X20) )
      & ( k1_funct_1(X20,esk2_1(X20)) = k1_funct_1(X20,esk3_1(X20))
        | v2_funct_1(X20)
        | ~ v1_relat_1(X20)
        | ~ v1_funct_1(X20) )
      & ( esk2_1(X20) != esk3_1(X20)
        | v2_funct_1(X20)
        | ~ v1_relat_1(X20)
        | ~ v1_funct_1(X20) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_funct_1])])])])])).

cnf(c_0_18,plain,
    ( v1_relat_1(X2)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_19,negated_conjecture,
    ( m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk4_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_20,plain,
    ( v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_21,plain,(
    ! [X28,X29,X30] :
      ( ~ m1_subset_1(X30,k1_zfmisc_1(k2_zfmisc_1(X28,X29)))
      | k1_relset_1(X28,X29,X30) = k1_relat_1(X30) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

cnf(c_0_22,plain,
    ( k1_funct_1(X1,esk2_1(X1)) = k1_funct_1(X1,esk3_1(X1))
    | v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_23,negated_conjecture,
    ( v1_funct_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_24,negated_conjecture,
    ( v1_relat_1(esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18,c_0_19]),c_0_20])])).

fof(c_0_25,plain,(
    ! [X31,X32,X33] :
      ( ( ~ v1_funct_2(X33,X31,X32)
        | X31 = k1_relset_1(X31,X32,X33)
        | X32 = k1_xboole_0
        | ~ m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))) )
      & ( X31 != k1_relset_1(X31,X32,X33)
        | v1_funct_2(X33,X31,X32)
        | X32 = k1_xboole_0
        | ~ m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))) )
      & ( ~ v1_funct_2(X33,X31,X32)
        | X31 = k1_relset_1(X31,X32,X33)
        | X31 != k1_xboole_0
        | ~ m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))) )
      & ( X31 != k1_relset_1(X31,X32,X33)
        | v1_funct_2(X33,X31,X32)
        | X31 != k1_xboole_0
        | ~ m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))) )
      & ( ~ v1_funct_2(X33,X31,X32)
        | X33 = k1_xboole_0
        | X31 = k1_xboole_0
        | X32 != k1_xboole_0
        | ~ m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))) )
      & ( X33 != k1_xboole_0
        | v1_funct_2(X33,X31,X32)
        | X31 = k1_xboole_0
        | X32 != k1_xboole_0
        | ~ m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).

cnf(c_0_26,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_27,negated_conjecture,
    ( v2_funct_1(esk5_0)
    | X1 = X2
    | ~ r2_hidden(X1,esk4_0)
    | ~ r2_hidden(X2,esk4_0)
    | k1_funct_1(esk5_0,X1) != k1_funct_1(esk5_0,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_28,negated_conjecture,
    ( k1_funct_1(esk5_0,esk3_1(esk5_0)) = k1_funct_1(esk5_0,esk2_1(esk5_0))
    | v2_funct_1(esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_23]),c_0_24])])).

cnf(c_0_29,plain,
    ( X2 = k1_relset_1(X2,X3,X1)
    | X3 = k1_xboole_0
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_30,negated_conjecture,
    ( k1_relset_1(esk4_0,esk4_0,esk5_0) = k1_relat_1(esk5_0) ),
    inference(spm,[status(thm)],[c_0_26,c_0_19])).

cnf(c_0_31,negated_conjecture,
    ( v1_funct_2(esk5_0,esk4_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_32,plain,(
    ! [X25,X26,X27] :
      ( ( r2_hidden(X25,k1_relat_1(X27))
        | ~ r2_hidden(k4_tarski(X25,X26),X27)
        | ~ v1_relat_1(X27)
        | ~ v1_funct_1(X27) )
      & ( X26 = k1_funct_1(X27,X25)
        | ~ r2_hidden(k4_tarski(X25,X26),X27)
        | ~ v1_relat_1(X27)
        | ~ v1_funct_1(X27) )
      & ( ~ r2_hidden(X25,k1_relat_1(X27))
        | X26 != k1_funct_1(X27,X25)
        | r2_hidden(k4_tarski(X25,X26),X27)
        | ~ v1_relat_1(X27)
        | ~ v1_funct_1(X27) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t8_funct_1])])])).

cnf(c_0_33,negated_conjecture,
    ( esk3_1(esk5_0) = X1
    | v2_funct_1(esk5_0)
    | k1_funct_1(esk5_0,esk2_1(esk5_0)) != k1_funct_1(esk5_0,X1)
    | ~ r2_hidden(esk3_1(esk5_0),esk4_0)
    | ~ r2_hidden(X1,esk4_0) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_34,plain,
    ( r2_hidden(esk3_1(X1),k1_relat_1(X1))
    | v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_35,negated_conjecture,
    ( k1_relat_1(esk5_0) = esk4_0
    | esk4_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_19]),c_0_30]),c_0_31])])).

cnf(c_0_36,plain,
    ( r2_hidden(esk2_1(X1),k1_relat_1(X1))
    | v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_37,plain,
    ( r2_hidden(k4_tarski(X1,X3),X2)
    | ~ r2_hidden(X1,k1_relat_1(X2))
    | X3 != k1_funct_1(X2,X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_38,negated_conjecture,
    ( esk3_1(esk5_0) = esk2_1(esk5_0)
    | v2_funct_1(esk5_0)
    | ~ r2_hidden(esk3_1(esk5_0),esk4_0)
    | ~ r2_hidden(esk2_1(esk5_0),esk4_0) ),
    inference(er,[status(thm)],[c_0_33])).

cnf(c_0_39,negated_conjecture,
    ( esk4_0 = k1_xboole_0
    | v2_funct_1(esk5_0)
    | r2_hidden(esk3_1(esk5_0),esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_35]),c_0_23]),c_0_24])])).

cnf(c_0_40,negated_conjecture,
    ( esk4_0 = k1_xboole_0
    | v2_funct_1(esk5_0)
    | r2_hidden(esk2_1(esk5_0),esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_35]),c_0_23]),c_0_24])])).

cnf(c_0_41,plain,
    ( r2_hidden(k4_tarski(X1,k1_funct_1(X2,X1)),X2)
    | ~ v1_funct_1(X2)
    | ~ v1_relat_1(X2)
    | ~ r2_hidden(X1,k1_relat_1(X2)) ),
    inference(er,[status(thm)],[c_0_37])).

cnf(c_0_42,plain,
    ( v2_funct_1(X1)
    | esk2_1(X1) != esk3_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_43,negated_conjecture,
    ( esk3_1(esk5_0) = esk2_1(esk5_0)
    | esk4_0 = k1_xboole_0
    | v2_funct_1(esk5_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_39]),c_0_40])).

cnf(c_0_44,negated_conjecture,
    ( r2_hidden(k4_tarski(X1,k1_funct_1(esk5_0,X1)),esk5_0)
    | ~ r2_hidden(X1,k1_relat_1(esk5_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_23]),c_0_24])])).

cnf(c_0_45,negated_conjecture,
    ( r2_hidden(esk7_0,esk4_0)
    | ~ v2_funct_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_46,negated_conjecture,
    ( esk4_0 = k1_xboole_0
    | v2_funct_1(esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42,c_0_43]),c_0_23]),c_0_24])])).

cnf(c_0_47,plain,
    ( r2_hidden(X1,k1_relat_1(X2))
    | ~ r2_hidden(k4_tarski(X1,X3),X2)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_48,negated_conjecture,
    ( esk4_0 = k1_xboole_0
    | r2_hidden(k4_tarski(X1,k1_funct_1(esk5_0,X1)),esk5_0)
    | ~ r2_hidden(X1,esk4_0) ),
    inference(spm,[status(thm)],[c_0_44,c_0_35])).

cnf(c_0_49,negated_conjecture,
    ( esk4_0 = k1_xboole_0
    | r2_hidden(esk7_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

cnf(c_0_50,negated_conjecture,
    ( r2_hidden(esk6_0,esk4_0)
    | ~ v2_funct_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_51,negated_conjecture,
    ( k1_funct_1(esk5_0,esk6_0) = k1_funct_1(esk5_0,esk7_0)
    | ~ v2_funct_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_52,negated_conjecture,
    ( r2_hidden(X1,k1_relat_1(esk5_0))
    | ~ r2_hidden(k4_tarski(X1,X2),esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_23]),c_0_24])])).

cnf(c_0_53,negated_conjecture,
    ( esk4_0 = k1_xboole_0
    | r2_hidden(k4_tarski(esk7_0,k1_funct_1(esk5_0,esk7_0)),esk5_0) ),
    inference(spm,[status(thm)],[c_0_48,c_0_49])).

cnf(c_0_54,negated_conjecture,
    ( esk4_0 = k1_xboole_0
    | r2_hidden(esk6_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_50,c_0_46])).

fof(c_0_55,plain,(
    ! [X14,X15] :
      ( ( ~ m1_subset_1(X14,k1_zfmisc_1(X15))
        | r1_tarski(X14,X15) )
      & ( ~ r1_tarski(X14,X15)
        | m1_subset_1(X14,k1_zfmisc_1(X15)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

cnf(c_0_56,plain,
    ( X2 = X3
    | ~ v2_funct_1(X1)
    | ~ r2_hidden(X2,k1_relat_1(X1))
    | ~ r2_hidden(X3,k1_relat_1(X1))
    | k1_funct_1(X1,X2) != k1_funct_1(X1,X3)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_57,negated_conjecture,
    ( k1_funct_1(esk5_0,esk7_0) = k1_funct_1(esk5_0,esk6_0)
    | esk4_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_51,c_0_46])).

cnf(c_0_58,negated_conjecture,
    ( esk4_0 = k1_xboole_0
    | r2_hidden(esk7_0,k1_relat_1(esk5_0)) ),
    inference(spm,[status(thm)],[c_0_52,c_0_53])).

cnf(c_0_59,negated_conjecture,
    ( esk4_0 = k1_xboole_0
    | r2_hidden(k4_tarski(esk6_0,k1_funct_1(esk5_0,esk6_0)),esk5_0) ),
    inference(spm,[status(thm)],[c_0_48,c_0_54])).

fof(c_0_60,plain,(
    ! [X9,X10] :
      ( ( r1_tarski(X9,X10)
        | X9 != X10 )
      & ( r1_tarski(X10,X9)
        | X9 != X10 )
      & ( ~ r1_tarski(X9,X10)
        | ~ r1_tarski(X10,X9)
        | X9 = X10 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_61,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_55])).

cnf(c_0_62,negated_conjecture,
    ( esk4_0 = k1_xboole_0
    | esk7_0 = X1
    | k1_funct_1(esk5_0,esk6_0) != k1_funct_1(esk5_0,X1)
    | ~ r2_hidden(X1,k1_relat_1(esk5_0)) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56,c_0_57]),c_0_23]),c_0_24])]),c_0_58]),c_0_46])).

cnf(c_0_63,negated_conjecture,
    ( esk4_0 = k1_xboole_0
    | r2_hidden(esk6_0,k1_relat_1(esk5_0)) ),
    inference(spm,[status(thm)],[c_0_52,c_0_59])).

fof(c_0_64,plain,(
    ! [X12,X13] :
      ( ( k2_zfmisc_1(X12,X13) != k1_xboole_0
        | X12 = k1_xboole_0
        | X13 = k1_xboole_0 )
      & ( X12 != k1_xboole_0
        | k2_zfmisc_1(X12,X13) = k1_xboole_0 )
      & ( X13 != k1_xboole_0
        | k2_zfmisc_1(X12,X13) = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).

fof(c_0_65,plain,(
    ! [X5,X6,X7] :
      ( ( ~ v1_xboole_0(X5)
        | ~ r2_hidden(X6,X5) )
      & ( r2_hidden(esk1_1(X7),X7)
        | v1_xboole_0(X7) ) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).

cnf(c_0_66,negated_conjecture,
    ( v2_funct_1(esk5_0)
    | r2_hidden(esk3_1(esk5_0),k1_relat_1(esk5_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_23]),c_0_24])])).

cnf(c_0_67,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_60])).

cnf(c_0_68,negated_conjecture,
    ( r1_tarski(esk5_0,k2_zfmisc_1(esk4_0,esk4_0)) ),
    inference(spm,[status(thm)],[c_0_61,c_0_19])).

cnf(c_0_69,negated_conjecture,
    ( esk6_0 != esk7_0
    | ~ v2_funct_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_70,negated_conjecture,
    ( esk7_0 = esk6_0
    | esk4_0 = k1_xboole_0 ),
    inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_62]),c_0_63])).

cnf(c_0_71,plain,
    ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_64])).

fof(c_0_72,plain,(
    ! [X11] : r1_tarski(k1_xboole_0,X11) ),
    inference(variable_rename,[status(thm)],[t2_xboole_1])).

cnf(c_0_73,plain,
    ( ~ v1_xboole_0(X1)
    | ~ r2_hidden(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_65])).

cnf(c_0_74,negated_conjecture,
    ( v2_funct_1(esk5_0)
    | r2_hidden(k4_tarski(esk3_1(esk5_0),k1_funct_1(esk5_0,esk3_1(esk5_0))),esk5_0) ),
    inference(spm,[status(thm)],[c_0_44,c_0_66])).

cnf(c_0_75,negated_conjecture,
    ( k2_zfmisc_1(esk4_0,esk4_0) = esk5_0
    | ~ r1_tarski(k2_zfmisc_1(esk4_0,esk4_0),esk5_0) ),
    inference(spm,[status(thm)],[c_0_67,c_0_68])).

cnf(c_0_76,negated_conjecture,
    ( esk4_0 = k1_xboole_0 ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_69,c_0_70]),c_0_46])).

cnf(c_0_77,plain,
    ( k2_zfmisc_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_71])).

cnf(c_0_78,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_72])).

cnf(c_0_79,negated_conjecture,
    ( v2_funct_1(esk5_0)
    | ~ v1_xboole_0(esk5_0) ),
    inference(spm,[status(thm)],[c_0_73,c_0_74])).

cnf(c_0_80,negated_conjecture,
    ( esk5_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_75,c_0_76]),c_0_76]),c_0_77]),c_0_76]),c_0_76]),c_0_77]),c_0_78])])).

cnf(c_0_81,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[fc1_xboole_0])).

cnf(c_0_82,negated_conjecture,
    ( v2_funct_1(k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_79,c_0_80]),c_0_80]),c_0_81])])).

cnf(c_0_83,negated_conjecture,
    ( r2_hidden(esk7_0,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_45,c_0_76]),c_0_80]),c_0_82])])).

cnf(c_0_84,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73,c_0_83]),c_0_81])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n013.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 13:11:54 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S049N
% 0.19/0.38  # and selection function PSelectComplexPreferEQ.
% 0.19/0.38  #
% 0.19/0.38  # Preprocessing time       : 0.028 s
% 0.19/0.38  # Presaturation interreduction done
% 0.19/0.38  
% 0.19/0.38  # Proof found!
% 0.19/0.38  # SZS status Theorem
% 0.19/0.38  # SZS output start CNFRefutation
% 0.19/0.38  fof(t77_funct_2, conjecture, ![X1, X2]:(((v1_funct_1(X2)&v1_funct_2(X2,X1,X1))&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>(v2_funct_1(X2)<=>![X3, X4]:(((r2_hidden(X3,X1)&r2_hidden(X4,X1))&k1_funct_1(X2,X3)=k1_funct_1(X2,X4))=>X3=X4))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t77_funct_2)).
% 0.19/0.38  fof(cc2_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>v1_relat_1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relat_1)).
% 0.19/0.38  fof(fc6_relat_1, axiom, ![X1, X2]:v1_relat_1(k2_zfmisc_1(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc6_relat_1)).
% 0.19/0.38  fof(d8_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)<=>![X2, X3]:(((r2_hidden(X2,k1_relat_1(X1))&r2_hidden(X3,k1_relat_1(X1)))&k1_funct_1(X1,X2)=k1_funct_1(X1,X3))=>X2=X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d8_funct_1)).
% 0.19/0.38  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.19/0.38  fof(d1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(((X2=k1_xboole_0=>X1=k1_xboole_0)=>(v1_funct_2(X3,X1,X2)<=>X1=k1_relset_1(X1,X2,X3)))&(X2=k1_xboole_0=>(X1=k1_xboole_0|(v1_funct_2(X3,X1,X2)<=>X3=k1_xboole_0))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_funct_2)).
% 0.19/0.38  fof(t8_funct_1, axiom, ![X1, X2, X3]:((v1_relat_1(X3)&v1_funct_1(X3))=>(r2_hidden(k4_tarski(X1,X2),X3)<=>(r2_hidden(X1,k1_relat_1(X3))&X2=k1_funct_1(X3,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t8_funct_1)).
% 0.19/0.38  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_subset)).
% 0.19/0.38  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.19/0.38  fof(t113_zfmisc_1, axiom, ![X1, X2]:(k2_zfmisc_1(X1,X2)=k1_xboole_0<=>(X1=k1_xboole_0|X2=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t113_zfmisc_1)).
% 0.19/0.38  fof(d1_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)<=>![X2]:~(r2_hidden(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_xboole_0)).
% 0.19/0.38  fof(t2_xboole_1, axiom, ![X1]:r1_tarski(k1_xboole_0,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_xboole_1)).
% 0.19/0.38  fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc1_xboole_0)).
% 0.19/0.38  fof(c_0_13, negated_conjecture, ~(![X1, X2]:(((v1_funct_1(X2)&v1_funct_2(X2,X1,X1))&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>(v2_funct_1(X2)<=>![X3, X4]:(((r2_hidden(X3,X1)&r2_hidden(X4,X1))&k1_funct_1(X2,X3)=k1_funct_1(X2,X4))=>X3=X4)))), inference(assume_negation,[status(cth)],[t77_funct_2])).
% 0.19/0.38  fof(c_0_14, plain, ![X16, X17]:(~v1_relat_1(X16)|(~m1_subset_1(X17,k1_zfmisc_1(X16))|v1_relat_1(X17))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).
% 0.19/0.38  fof(c_0_15, negated_conjecture, ![X38, X39]:(((v1_funct_1(esk5_0)&v1_funct_2(esk5_0,esk4_0,esk4_0))&m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk4_0))))&(((((r2_hidden(esk6_0,esk4_0)|~v2_funct_1(esk5_0))&(r2_hidden(esk7_0,esk4_0)|~v2_funct_1(esk5_0)))&(k1_funct_1(esk5_0,esk6_0)=k1_funct_1(esk5_0,esk7_0)|~v2_funct_1(esk5_0)))&(esk6_0!=esk7_0|~v2_funct_1(esk5_0)))&(v2_funct_1(esk5_0)|(~r2_hidden(X38,esk4_0)|~r2_hidden(X39,esk4_0)|k1_funct_1(esk5_0,X38)!=k1_funct_1(esk5_0,X39)|X38=X39)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_13])])])])])).
% 0.19/0.38  fof(c_0_16, plain, ![X18, X19]:v1_relat_1(k2_zfmisc_1(X18,X19)), inference(variable_rename,[status(thm)],[fc6_relat_1])).
% 0.19/0.38  fof(c_0_17, plain, ![X20, X21, X22]:((~v2_funct_1(X20)|(~r2_hidden(X21,k1_relat_1(X20))|~r2_hidden(X22,k1_relat_1(X20))|k1_funct_1(X20,X21)!=k1_funct_1(X20,X22)|X21=X22)|(~v1_relat_1(X20)|~v1_funct_1(X20)))&((((r2_hidden(esk2_1(X20),k1_relat_1(X20))|v2_funct_1(X20)|(~v1_relat_1(X20)|~v1_funct_1(X20)))&(r2_hidden(esk3_1(X20),k1_relat_1(X20))|v2_funct_1(X20)|(~v1_relat_1(X20)|~v1_funct_1(X20))))&(k1_funct_1(X20,esk2_1(X20))=k1_funct_1(X20,esk3_1(X20))|v2_funct_1(X20)|(~v1_relat_1(X20)|~v1_funct_1(X20))))&(esk2_1(X20)!=esk3_1(X20)|v2_funct_1(X20)|(~v1_relat_1(X20)|~v1_funct_1(X20))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_funct_1])])])])])).
% 0.19/0.38  cnf(c_0_18, plain, (v1_relat_1(X2)|~v1_relat_1(X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.38  cnf(c_0_19, negated_conjecture, (m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk4_0)))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  cnf(c_0_20, plain, (v1_relat_1(k2_zfmisc_1(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.38  fof(c_0_21, plain, ![X28, X29, X30]:(~m1_subset_1(X30,k1_zfmisc_1(k2_zfmisc_1(X28,X29)))|k1_relset_1(X28,X29,X30)=k1_relat_1(X30)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.19/0.38  cnf(c_0_22, plain, (k1_funct_1(X1,esk2_1(X1))=k1_funct_1(X1,esk3_1(X1))|v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.19/0.38  cnf(c_0_23, negated_conjecture, (v1_funct_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  cnf(c_0_24, negated_conjecture, (v1_relat_1(esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18, c_0_19]), c_0_20])])).
% 0.19/0.38  fof(c_0_25, plain, ![X31, X32, X33]:((((~v1_funct_2(X33,X31,X32)|X31=k1_relset_1(X31,X32,X33)|X32=k1_xboole_0|~m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))))&(X31!=k1_relset_1(X31,X32,X33)|v1_funct_2(X33,X31,X32)|X32=k1_xboole_0|~m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32)))))&((~v1_funct_2(X33,X31,X32)|X31=k1_relset_1(X31,X32,X33)|X31!=k1_xboole_0|~m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))))&(X31!=k1_relset_1(X31,X32,X33)|v1_funct_2(X33,X31,X32)|X31!=k1_xboole_0|~m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))))))&((~v1_funct_2(X33,X31,X32)|X33=k1_xboole_0|X31=k1_xboole_0|X32!=k1_xboole_0|~m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32))))&(X33!=k1_xboole_0|v1_funct_2(X33,X31,X32)|X31=k1_xboole_0|X32!=k1_xboole_0|~m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(X31,X32)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).
% 0.19/0.38  cnf(c_0_26, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.38  cnf(c_0_27, negated_conjecture, (v2_funct_1(esk5_0)|X1=X2|~r2_hidden(X1,esk4_0)|~r2_hidden(X2,esk4_0)|k1_funct_1(esk5_0,X1)!=k1_funct_1(esk5_0,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  cnf(c_0_28, negated_conjecture, (k1_funct_1(esk5_0,esk3_1(esk5_0))=k1_funct_1(esk5_0,esk2_1(esk5_0))|v2_funct_1(esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_23]), c_0_24])])).
% 0.19/0.38  cnf(c_0_29, plain, (X2=k1_relset_1(X2,X3,X1)|X3=k1_xboole_0|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.19/0.38  cnf(c_0_30, negated_conjecture, (k1_relset_1(esk4_0,esk4_0,esk5_0)=k1_relat_1(esk5_0)), inference(spm,[status(thm)],[c_0_26, c_0_19])).
% 0.19/0.38  cnf(c_0_31, negated_conjecture, (v1_funct_2(esk5_0,esk4_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  fof(c_0_32, plain, ![X25, X26, X27]:(((r2_hidden(X25,k1_relat_1(X27))|~r2_hidden(k4_tarski(X25,X26),X27)|(~v1_relat_1(X27)|~v1_funct_1(X27)))&(X26=k1_funct_1(X27,X25)|~r2_hidden(k4_tarski(X25,X26),X27)|(~v1_relat_1(X27)|~v1_funct_1(X27))))&(~r2_hidden(X25,k1_relat_1(X27))|X26!=k1_funct_1(X27,X25)|r2_hidden(k4_tarski(X25,X26),X27)|(~v1_relat_1(X27)|~v1_funct_1(X27)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t8_funct_1])])])).
% 0.19/0.38  cnf(c_0_33, negated_conjecture, (esk3_1(esk5_0)=X1|v2_funct_1(esk5_0)|k1_funct_1(esk5_0,esk2_1(esk5_0))!=k1_funct_1(esk5_0,X1)|~r2_hidden(esk3_1(esk5_0),esk4_0)|~r2_hidden(X1,esk4_0)), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.19/0.38  cnf(c_0_34, plain, (r2_hidden(esk3_1(X1),k1_relat_1(X1))|v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.19/0.38  cnf(c_0_35, negated_conjecture, (k1_relat_1(esk5_0)=esk4_0|esk4_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_19]), c_0_30]), c_0_31])])).
% 0.19/0.38  cnf(c_0_36, plain, (r2_hidden(esk2_1(X1),k1_relat_1(X1))|v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.19/0.38  cnf(c_0_37, plain, (r2_hidden(k4_tarski(X1,X3),X2)|~r2_hidden(X1,k1_relat_1(X2))|X3!=k1_funct_1(X2,X1)|~v1_relat_1(X2)|~v1_funct_1(X2)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.19/0.38  cnf(c_0_38, negated_conjecture, (esk3_1(esk5_0)=esk2_1(esk5_0)|v2_funct_1(esk5_0)|~r2_hidden(esk3_1(esk5_0),esk4_0)|~r2_hidden(esk2_1(esk5_0),esk4_0)), inference(er,[status(thm)],[c_0_33])).
% 0.19/0.38  cnf(c_0_39, negated_conjecture, (esk4_0=k1_xboole_0|v2_funct_1(esk5_0)|r2_hidden(esk3_1(esk5_0),esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_35]), c_0_23]), c_0_24])])).
% 0.19/0.38  cnf(c_0_40, negated_conjecture, (esk4_0=k1_xboole_0|v2_funct_1(esk5_0)|r2_hidden(esk2_1(esk5_0),esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_35]), c_0_23]), c_0_24])])).
% 0.19/0.38  cnf(c_0_41, plain, (r2_hidden(k4_tarski(X1,k1_funct_1(X2,X1)),X2)|~v1_funct_1(X2)|~v1_relat_1(X2)|~r2_hidden(X1,k1_relat_1(X2))), inference(er,[status(thm)],[c_0_37])).
% 0.19/0.38  cnf(c_0_42, plain, (v2_funct_1(X1)|esk2_1(X1)!=esk3_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.19/0.38  cnf(c_0_43, negated_conjecture, (esk3_1(esk5_0)=esk2_1(esk5_0)|esk4_0=k1_xboole_0|v2_funct_1(esk5_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_39]), c_0_40])).
% 0.19/0.38  cnf(c_0_44, negated_conjecture, (r2_hidden(k4_tarski(X1,k1_funct_1(esk5_0,X1)),esk5_0)|~r2_hidden(X1,k1_relat_1(esk5_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_23]), c_0_24])])).
% 0.19/0.38  cnf(c_0_45, negated_conjecture, (r2_hidden(esk7_0,esk4_0)|~v2_funct_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  cnf(c_0_46, negated_conjecture, (esk4_0=k1_xboole_0|v2_funct_1(esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_43]), c_0_23]), c_0_24])])).
% 0.19/0.38  cnf(c_0_47, plain, (r2_hidden(X1,k1_relat_1(X2))|~r2_hidden(k4_tarski(X1,X3),X2)|~v1_relat_1(X2)|~v1_funct_1(X2)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.19/0.38  cnf(c_0_48, negated_conjecture, (esk4_0=k1_xboole_0|r2_hidden(k4_tarski(X1,k1_funct_1(esk5_0,X1)),esk5_0)|~r2_hidden(X1,esk4_0)), inference(spm,[status(thm)],[c_0_44, c_0_35])).
% 0.19/0.38  cnf(c_0_49, negated_conjecture, (esk4_0=k1_xboole_0|r2_hidden(esk7_0,esk4_0)), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.19/0.38  cnf(c_0_50, negated_conjecture, (r2_hidden(esk6_0,esk4_0)|~v2_funct_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  cnf(c_0_51, negated_conjecture, (k1_funct_1(esk5_0,esk6_0)=k1_funct_1(esk5_0,esk7_0)|~v2_funct_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  cnf(c_0_52, negated_conjecture, (r2_hidden(X1,k1_relat_1(esk5_0))|~r2_hidden(k4_tarski(X1,X2),esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_23]), c_0_24])])).
% 0.19/0.38  cnf(c_0_53, negated_conjecture, (esk4_0=k1_xboole_0|r2_hidden(k4_tarski(esk7_0,k1_funct_1(esk5_0,esk7_0)),esk5_0)), inference(spm,[status(thm)],[c_0_48, c_0_49])).
% 0.19/0.38  cnf(c_0_54, negated_conjecture, (esk4_0=k1_xboole_0|r2_hidden(esk6_0,esk4_0)), inference(spm,[status(thm)],[c_0_50, c_0_46])).
% 0.19/0.38  fof(c_0_55, plain, ![X14, X15]:((~m1_subset_1(X14,k1_zfmisc_1(X15))|r1_tarski(X14,X15))&(~r1_tarski(X14,X15)|m1_subset_1(X14,k1_zfmisc_1(X15)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.19/0.38  cnf(c_0_56, plain, (X2=X3|~v2_funct_1(X1)|~r2_hidden(X2,k1_relat_1(X1))|~r2_hidden(X3,k1_relat_1(X1))|k1_funct_1(X1,X2)!=k1_funct_1(X1,X3)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.19/0.38  cnf(c_0_57, negated_conjecture, (k1_funct_1(esk5_0,esk7_0)=k1_funct_1(esk5_0,esk6_0)|esk4_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_51, c_0_46])).
% 0.19/0.38  cnf(c_0_58, negated_conjecture, (esk4_0=k1_xboole_0|r2_hidden(esk7_0,k1_relat_1(esk5_0))), inference(spm,[status(thm)],[c_0_52, c_0_53])).
% 0.19/0.38  cnf(c_0_59, negated_conjecture, (esk4_0=k1_xboole_0|r2_hidden(k4_tarski(esk6_0,k1_funct_1(esk5_0,esk6_0)),esk5_0)), inference(spm,[status(thm)],[c_0_48, c_0_54])).
% 0.19/0.38  fof(c_0_60, plain, ![X9, X10]:(((r1_tarski(X9,X10)|X9!=X10)&(r1_tarski(X10,X9)|X9!=X10))&(~r1_tarski(X9,X10)|~r1_tarski(X10,X9)|X9=X10)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.19/0.38  cnf(c_0_61, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_55])).
% 0.19/0.38  cnf(c_0_62, negated_conjecture, (esk4_0=k1_xboole_0|esk7_0=X1|k1_funct_1(esk5_0,esk6_0)!=k1_funct_1(esk5_0,X1)|~r2_hidden(X1,k1_relat_1(esk5_0))), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56, c_0_57]), c_0_23]), c_0_24])]), c_0_58]), c_0_46])).
% 0.19/0.38  cnf(c_0_63, negated_conjecture, (esk4_0=k1_xboole_0|r2_hidden(esk6_0,k1_relat_1(esk5_0))), inference(spm,[status(thm)],[c_0_52, c_0_59])).
% 0.19/0.38  fof(c_0_64, plain, ![X12, X13]:((k2_zfmisc_1(X12,X13)!=k1_xboole_0|(X12=k1_xboole_0|X13=k1_xboole_0))&((X12!=k1_xboole_0|k2_zfmisc_1(X12,X13)=k1_xboole_0)&(X13!=k1_xboole_0|k2_zfmisc_1(X12,X13)=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).
% 0.19/0.38  fof(c_0_65, plain, ![X5, X6, X7]:((~v1_xboole_0(X5)|~r2_hidden(X6,X5))&(r2_hidden(esk1_1(X7),X7)|v1_xboole_0(X7))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).
% 0.19/0.38  cnf(c_0_66, negated_conjecture, (v2_funct_1(esk5_0)|r2_hidden(esk3_1(esk5_0),k1_relat_1(esk5_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_23]), c_0_24])])).
% 0.19/0.38  cnf(c_0_67, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_60])).
% 0.19/0.38  cnf(c_0_68, negated_conjecture, (r1_tarski(esk5_0,k2_zfmisc_1(esk4_0,esk4_0))), inference(spm,[status(thm)],[c_0_61, c_0_19])).
% 0.19/0.38  cnf(c_0_69, negated_conjecture, (esk6_0!=esk7_0|~v2_funct_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  cnf(c_0_70, negated_conjecture, (esk7_0=esk6_0|esk4_0=k1_xboole_0), inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_62]), c_0_63])).
% 0.19/0.38  cnf(c_0_71, plain, (k2_zfmisc_1(X1,X2)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_64])).
% 0.19/0.38  fof(c_0_72, plain, ![X11]:r1_tarski(k1_xboole_0,X11), inference(variable_rename,[status(thm)],[t2_xboole_1])).
% 0.19/0.38  cnf(c_0_73, plain, (~v1_xboole_0(X1)|~r2_hidden(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_65])).
% 0.19/0.38  cnf(c_0_74, negated_conjecture, (v2_funct_1(esk5_0)|r2_hidden(k4_tarski(esk3_1(esk5_0),k1_funct_1(esk5_0,esk3_1(esk5_0))),esk5_0)), inference(spm,[status(thm)],[c_0_44, c_0_66])).
% 0.19/0.38  cnf(c_0_75, negated_conjecture, (k2_zfmisc_1(esk4_0,esk4_0)=esk5_0|~r1_tarski(k2_zfmisc_1(esk4_0,esk4_0),esk5_0)), inference(spm,[status(thm)],[c_0_67, c_0_68])).
% 0.19/0.38  cnf(c_0_76, negated_conjecture, (esk4_0=k1_xboole_0), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_69, c_0_70]), c_0_46])).
% 0.19/0.38  cnf(c_0_77, plain, (k2_zfmisc_1(k1_xboole_0,X1)=k1_xboole_0), inference(er,[status(thm)],[c_0_71])).
% 0.19/0.38  cnf(c_0_78, plain, (r1_tarski(k1_xboole_0,X1)), inference(split_conjunct,[status(thm)],[c_0_72])).
% 0.19/0.38  cnf(c_0_79, negated_conjecture, (v2_funct_1(esk5_0)|~v1_xboole_0(esk5_0)), inference(spm,[status(thm)],[c_0_73, c_0_74])).
% 0.19/0.38  cnf(c_0_80, negated_conjecture, (esk5_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_75, c_0_76]), c_0_76]), c_0_77]), c_0_76]), c_0_76]), c_0_77]), c_0_78])])).
% 0.19/0.38  cnf(c_0_81, plain, (v1_xboole_0(k1_xboole_0)), inference(split_conjunct,[status(thm)],[fc1_xboole_0])).
% 0.19/0.38  cnf(c_0_82, negated_conjecture, (v2_funct_1(k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_79, c_0_80]), c_0_80]), c_0_81])])).
% 0.19/0.38  cnf(c_0_83, negated_conjecture, (r2_hidden(esk7_0,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_45, c_0_76]), c_0_80]), c_0_82])])).
% 0.19/0.38  cnf(c_0_84, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73, c_0_83]), c_0_81])]), ['proof']).
% 0.19/0.38  # SZS output end CNFRefutation
% 0.19/0.38  # Proof object total steps             : 85
% 0.19/0.38  # Proof object clause steps            : 59
% 0.19/0.38  # Proof object formula steps           : 26
% 0.19/0.38  # Proof object conjectures             : 43
% 0.19/0.38  # Proof object clause conjectures      : 40
% 0.19/0.38  # Proof object formula conjectures     : 3
% 0.19/0.38  # Proof object initial clauses used    : 25
% 0.19/0.38  # Proof object initial formulas used   : 13
% 0.19/0.38  # Proof object generating inferences   : 29
% 0.19/0.38  # Proof object simplifying inferences  : 50
% 0.19/0.38  # Training examples: 0 positive, 0 negative
% 0.19/0.38  # Parsed axioms                        : 13
% 0.19/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.38  # Initial clauses                      : 37
% 0.19/0.38  # Removed in clause preprocessing      : 0
% 0.19/0.38  # Initial clauses in saturation        : 37
% 0.19/0.38  # Processed clauses                    : 235
% 0.19/0.38  # ...of these trivial                  : 1
% 0.19/0.38  # ...subsumed                          : 77
% 0.19/0.38  # ...remaining for further processing  : 157
% 0.19/0.38  # Other redundant clauses eliminated   : 18
% 0.19/0.38  # Clauses deleted for lack of memory   : 0
% 0.19/0.38  # Backward-subsumed                    : 10
% 0.19/0.38  # Backward-rewritten                   : 51
% 0.19/0.38  # Generated clauses                    : 222
% 0.19/0.38  # ...of the previous two non-trivial   : 210
% 0.19/0.38  # Contextual simplify-reflections      : 6
% 0.19/0.38  # Paramodulations                      : 181
% 0.19/0.38  # Factorizations                       : 20
% 0.19/0.38  # Equation resolutions                 : 22
% 0.19/0.38  # Propositional unsat checks           : 0
% 0.19/0.38  #    Propositional check models        : 0
% 0.19/0.38  #    Propositional check unsatisfiable : 0
% 0.19/0.38  #    Propositional clauses             : 0
% 0.19/0.38  #    Propositional clauses after purity: 0
% 0.19/0.38  #    Propositional unsat core size     : 0
% 0.19/0.38  #    Propositional preprocessing time  : 0.000
% 0.19/0.38  #    Propositional encoding time       : 0.000
% 0.19/0.38  #    Propositional solver time         : 0.000
% 0.19/0.38  #    Success case prop preproc time    : 0.000
% 0.19/0.38  #    Success case prop encoding time   : 0.000
% 0.19/0.38  #    Success case prop solver time     : 0.000
% 0.19/0.38  # Current number of processed clauses  : 51
% 0.19/0.38  #    Positive orientable unit clauses  : 16
% 0.19/0.38  #    Positive unorientable unit clauses: 0
% 0.19/0.38  #    Negative unit clauses             : 1
% 0.19/0.38  #    Non-unit-clauses                  : 34
% 0.19/0.38  # Current number of unprocessed clauses: 38
% 0.19/0.38  # ...number of literals in the above   : 101
% 0.19/0.38  # Current number of archived formulas  : 0
% 0.19/0.38  # Current number of archived clauses   : 97
% 0.19/0.38  # Clause-clause subsumption calls (NU) : 1232
% 0.19/0.38  # Rec. Clause-clause subsumption calls : 764
% 0.19/0.38  # Non-unit clause-clause subsumptions  : 91
% 0.19/0.38  # Unit Clause-clause subsumption calls : 66
% 0.19/0.38  # Rewrite failures with RHS unbound    : 0
% 0.19/0.38  # BW rewrite match attempts            : 18
% 0.19/0.38  # BW rewrite match successes           : 3
% 0.19/0.38  # Condensation attempts                : 0
% 0.19/0.38  # Condensation successes               : 0
% 0.19/0.38  # Termbank termtop insertions          : 5433
% 0.19/0.38  
% 0.19/0.38  # -------------------------------------------------
% 0.19/0.38  # User time                : 0.035 s
% 0.19/0.38  # System time              : 0.008 s
% 0.19/0.38  # Total time               : 0.043 s
% 0.19/0.38  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
