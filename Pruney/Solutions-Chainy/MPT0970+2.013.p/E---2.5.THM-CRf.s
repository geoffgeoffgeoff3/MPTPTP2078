%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:01:28 EST 2020

% Result     : Theorem 0.17s
% Output     : CNFRefutation 0.17s
% Verified   : 
% Statistics : Number of formulae       :   67 ( 226 expanded)
%              Number of clauses        :   43 (  98 expanded)
%              Number of leaves         :   12 (  55 expanded)
%              Depth                    :    9
%              Number of atoms          :  212 ( 894 expanded)
%              Number of equality atoms :   56 ( 214 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   26 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).

fof(d19_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v5_relat_1(X2,X1)
      <=> r1_tarski(k2_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d19_relat_1)).

fof(t16_funct_2,conjecture,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & v1_funct_2(X3,X1,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( ! [X4] :
            ~ ( r2_hidden(X4,X2)
              & ! [X5] :
                  ~ ( r2_hidden(X5,X1)
                    & X4 = k1_funct_1(X3,X5) ) )
       => k2_relset_1(X1,X2,X3) = X2 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t16_funct_2)).

fof(d1_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
    <=> ! [X2] : ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_xboole_0)).

fof(t2_tarski,axiom,(
    ! [X1,X2] :
      ( ! [X3] :
          ( r2_hidden(X3,X1)
        <=> r2_hidden(X3,X2) )
     => X1 = X2 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_tarski)).

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

fof(redefinition_k2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k2_relset_1(X1,X2,X3) = k2_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k2_relset_1)).

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

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(t12_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( r2_hidden(X1,k1_relat_1(X2))
       => r2_hidden(k1_funct_1(X2,X1),k2_relat_1(X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_funct_1)).

fof(fc1_xboole_0,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(c_0_12,plain,(
    ! [X10,X11,X12,X13,X14] :
      ( ( ~ r1_tarski(X10,X11)
        | ~ r2_hidden(X12,X10)
        | r2_hidden(X12,X11) )
      & ( r2_hidden(esk2_2(X13,X14),X13)
        | r1_tarski(X13,X14) )
      & ( ~ r2_hidden(esk2_2(X13,X14),X14)
        | r1_tarski(X13,X14) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

fof(c_0_13,plain,(
    ! [X19,X20] :
      ( ( ~ v5_relat_1(X20,X19)
        | r1_tarski(k2_relat_1(X20),X19)
        | ~ v1_relat_1(X20) )
      & ( ~ r1_tarski(k2_relat_1(X20),X19)
        | v5_relat_1(X20,X19)
        | ~ v1_relat_1(X20) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).

fof(c_0_14,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( v1_funct_1(X3)
          & v1_funct_2(X3,X1,X2)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
       => ( ! [X4] :
              ~ ( r2_hidden(X4,X2)
                & ! [X5] :
                    ~ ( r2_hidden(X5,X1)
                      & X4 = k1_funct_1(X3,X5) ) )
         => k2_relset_1(X1,X2,X3) = X2 ) ) ),
    inference(assume_negation,[status(cth)],[t16_funct_2])).

fof(c_0_15,plain,(
    ! [X6,X7,X8] :
      ( ( ~ v1_xboole_0(X6)
        | ~ r2_hidden(X7,X6) )
      & ( r2_hidden(esk1_1(X8),X8)
        | v1_xboole_0(X8) ) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).

fof(c_0_16,plain,(
    ! [X16,X17] :
      ( ( ~ r2_hidden(esk3_2(X16,X17),X16)
        | ~ r2_hidden(esk3_2(X16,X17),X17)
        | X16 = X17 )
      & ( r2_hidden(esk3_2(X16,X17),X16)
        | r2_hidden(esk3_2(X16,X17),X17)
        | X16 = X17 ) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_tarski])])])])).

cnf(c_0_17,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_18,plain,
    ( r1_tarski(k2_relat_1(X1),X2)
    | ~ v5_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_19,plain,(
    ! [X26,X27,X28] :
      ( ( v4_relat_1(X28,X26)
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) )
      & ( v5_relat_1(X28,X27)
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

fof(c_0_20,negated_conjecture,(
    ! [X41] :
      ( v1_funct_1(esk6_0)
      & v1_funct_2(esk6_0,esk4_0,esk5_0)
      & m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0)))
      & ( r2_hidden(esk7_1(X41),esk4_0)
        | ~ r2_hidden(X41,esk5_0) )
      & ( X41 = k1_funct_1(esk6_0,esk7_1(X41))
        | ~ r2_hidden(X41,esk5_0) )
      & k2_relset_1(esk4_0,esk5_0,esk6_0) != esk5_0 ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_14])])])])])).

fof(c_0_21,plain,(
    ! [X23,X24,X25] :
      ( ~ m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))
      | v1_relat_1(X25) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

fof(c_0_22,plain,(
    ! [X32,X33,X34] :
      ( ~ m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X32,X33)))
      | k2_relset_1(X32,X33,X34) = k2_relat_1(X34) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).

cnf(c_0_23,plain,
    ( ~ v1_xboole_0(X1)
    | ~ r2_hidden(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_24,plain,
    ( r2_hidden(esk3_2(X1,X2),X1)
    | r2_hidden(esk3_2(X1,X2),X2)
    | X1 = X2 ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_25,plain,
    ( r2_hidden(X1,X2)
    | ~ v5_relat_1(X3,X2)
    | ~ v1_relat_1(X3)
    | ~ r2_hidden(X1,k2_relat_1(X3)) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_26,plain,
    ( r2_hidden(esk1_1(X1),X1)
    | v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_27,plain,
    ( v5_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_28,negated_conjecture,
    ( m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_29,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_30,plain,
    ( k2_relset_1(X2,X3,X1) = k2_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_31,plain,(
    ! [X35,X36,X37] :
      ( ( ~ v1_funct_2(X37,X35,X36)
        | X35 = k1_relset_1(X35,X36,X37)
        | X36 = k1_xboole_0
        | ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36))) )
      & ( X35 != k1_relset_1(X35,X36,X37)
        | v1_funct_2(X37,X35,X36)
        | X36 = k1_xboole_0
        | ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36))) )
      & ( ~ v1_funct_2(X37,X35,X36)
        | X35 = k1_relset_1(X35,X36,X37)
        | X35 != k1_xboole_0
        | ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36))) )
      & ( X35 != k1_relset_1(X35,X36,X37)
        | v1_funct_2(X37,X35,X36)
        | X35 != k1_xboole_0
        | ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36))) )
      & ( ~ v1_funct_2(X37,X35,X36)
        | X37 = k1_xboole_0
        | X35 = k1_xboole_0
        | X36 != k1_xboole_0
        | ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36))) )
      & ( X37 != k1_xboole_0
        | v1_funct_2(X37,X35,X36)
        | X35 = k1_xboole_0
        | X36 != k1_xboole_0
        | ~ m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).

fof(c_0_32,plain,(
    ! [X29,X30,X31] :
      ( ~ m1_subset_1(X31,k1_zfmisc_1(k2_zfmisc_1(X29,X30)))
      | k1_relset_1(X29,X30,X31) = k1_relat_1(X31) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

cnf(c_0_33,plain,
    ( X1 = X2
    | r2_hidden(esk3_2(X1,X2),X1)
    | ~ v1_xboole_0(X2) ),
    inference(spm,[status(thm)],[c_0_23,c_0_24])).

cnf(c_0_34,plain,
    ( r2_hidden(esk1_1(k2_relat_1(X1)),X2)
    | v1_xboole_0(k2_relat_1(X1))
    | ~ v5_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_35,plain,
    ( k2_relat_1(X1) = X2
    | r2_hidden(esk3_2(k2_relat_1(X1),X2),X2)
    | r2_hidden(esk3_2(k2_relat_1(X1),X2),X3)
    | ~ v5_relat_1(X1,X3)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_25,c_0_24])).

cnf(c_0_36,negated_conjecture,
    ( v5_relat_1(esk6_0,esk5_0) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_37,negated_conjecture,
    ( v1_relat_1(esk6_0) ),
    inference(spm,[status(thm)],[c_0_29,c_0_28])).

cnf(c_0_38,negated_conjecture,
    ( k2_relset_1(esk4_0,esk5_0,esk6_0) != esk5_0 ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_39,negated_conjecture,
    ( k2_relset_1(esk4_0,esk5_0,esk6_0) = k2_relat_1(esk6_0) ),
    inference(spm,[status(thm)],[c_0_30,c_0_28])).

fof(c_0_40,plain,(
    ! [X21,X22] :
      ( ~ v1_relat_1(X22)
      | ~ v1_funct_1(X22)
      | ~ r2_hidden(X21,k1_relat_1(X22))
      | r2_hidden(k1_funct_1(X22,X21),k2_relat_1(X22)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_funct_1])])).

cnf(c_0_41,plain,
    ( X2 = k1_relset_1(X2,X3,X1)
    | X3 = k1_xboole_0
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_42,negated_conjecture,
    ( v1_funct_2(esk6_0,esk4_0,esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_43,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_44,plain,
    ( X1 = X2
    | ~ v1_xboole_0(X1)
    | ~ v1_xboole_0(X2) ),
    inference(spm,[status(thm)],[c_0_23,c_0_33])).

cnf(c_0_45,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[fc1_xboole_0])).

cnf(c_0_46,plain,
    ( v1_xboole_0(k2_relat_1(X1))
    | ~ v5_relat_1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v1_xboole_0(X2) ),
    inference(spm,[status(thm)],[c_0_23,c_0_34])).

cnf(c_0_47,negated_conjecture,
    ( k2_relat_1(esk6_0) = X1
    | r2_hidden(esk3_2(k2_relat_1(esk6_0),X1),esk5_0)
    | r2_hidden(esk3_2(k2_relat_1(esk6_0),X1),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_36]),c_0_37])])).

cnf(c_0_48,negated_conjecture,
    ( k2_relat_1(esk6_0) != esk5_0 ),
    inference(rw,[status(thm)],[c_0_38,c_0_39])).

cnf(c_0_49,plain,
    ( r2_hidden(k1_funct_1(X1,X2),k2_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ r2_hidden(X2,k1_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

cnf(c_0_50,negated_conjecture,
    ( X1 = k1_funct_1(esk6_0,esk7_1(X1))
    | ~ r2_hidden(X1,esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_51,negated_conjecture,
    ( v1_funct_1(esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_52,negated_conjecture,
    ( k1_relset_1(esk4_0,esk5_0,esk6_0) = esk4_0
    | esk5_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_28]),c_0_42])])).

cnf(c_0_53,negated_conjecture,
    ( k1_relset_1(esk4_0,esk5_0,esk6_0) = k1_relat_1(esk6_0) ),
    inference(spm,[status(thm)],[c_0_43,c_0_28])).

cnf(c_0_54,plain,
    ( k1_xboole_0 = X1
    | ~ v1_xboole_0(X1) ),
    inference(spm,[status(thm)],[c_0_44,c_0_45])).

cnf(c_0_55,negated_conjecture,
    ( v1_xboole_0(k2_relat_1(esk6_0))
    | ~ v1_xboole_0(esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46,c_0_36]),c_0_37])])).

cnf(c_0_56,plain,
    ( X1 = X2
    | ~ r2_hidden(esk3_2(X1,X2),X1)
    | ~ r2_hidden(esk3_2(X1,X2),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_57,negated_conjecture,
    ( r2_hidden(esk3_2(k2_relat_1(esk6_0),esk5_0),esk5_0) ),
    inference(sr,[status(thm)],[inference(ef,[status(thm)],[c_0_47]),c_0_48])).

cnf(c_0_58,negated_conjecture,
    ( r2_hidden(X1,k2_relat_1(esk6_0))
    | ~ r2_hidden(esk7_1(X1),k1_relat_1(esk6_0))
    | ~ r2_hidden(X1,esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_50]),c_0_51])]),c_0_37])])).

cnf(c_0_59,negated_conjecture,
    ( k1_relat_1(esk6_0) = esk4_0
    | esk5_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_52,c_0_53])).

cnf(c_0_60,negated_conjecture,
    ( r2_hidden(esk7_1(X1),esk4_0)
    | ~ r2_hidden(X1,esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_61,negated_conjecture,
    ( k2_relat_1(esk6_0) = k1_xboole_0
    | ~ v1_xboole_0(esk5_0) ),
    inference(spm,[status(thm)],[c_0_54,c_0_55])).

cnf(c_0_62,negated_conjecture,
    ( ~ r2_hidden(esk3_2(k2_relat_1(esk6_0),esk5_0),k2_relat_1(esk6_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_56,c_0_57]),c_0_48])).

cnf(c_0_63,negated_conjecture,
    ( esk5_0 = k1_xboole_0
    | r2_hidden(X1,k2_relat_1(esk6_0))
    | ~ r2_hidden(X1,esk5_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_59]),c_0_60])).

cnf(c_0_64,negated_conjecture,
    ( ~ v1_xboole_0(esk5_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_61]),c_0_54])).

cnf(c_0_65,negated_conjecture,
    ( esk5_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62,c_0_63]),c_0_57])])).

cnf(c_0_66,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_64,c_0_65]),c_0_45])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.02/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.02/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.11/0.32  % Computer   : n021.cluster.edu
% 0.11/0.32  % Model      : x86_64 x86_64
% 0.11/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.11/0.32  % Memory     : 8042.1875MB
% 0.11/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.11/0.32  % CPULimit   : 60
% 0.11/0.32  % WCLimit    : 600
% 0.11/0.32  % DateTime   : Tue Dec  1 20:51:19 EST 2020
% 0.11/0.32  % CPUTime    : 
% 0.11/0.32  # Version: 2.5pre002
% 0.11/0.32  # No SInE strategy applied
% 0.11/0.32  # Trying AutoSched0 for 299 seconds
% 0.17/0.38  # AutoSched0-Mode selected heuristic G_E___207_C01_F1_SE_CS_SP_PI_S5PRR_S0Y
% 0.17/0.38  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.17/0.38  #
% 0.17/0.38  # Preprocessing time       : 0.028 s
% 0.17/0.38  
% 0.17/0.38  # Proof found!
% 0.17/0.38  # SZS status Theorem
% 0.17/0.38  # SZS output start CNFRefutation
% 0.17/0.38  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_tarski)).
% 0.17/0.38  fof(d19_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v5_relat_1(X2,X1)<=>r1_tarski(k2_relat_1(X2),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d19_relat_1)).
% 0.17/0.38  fof(t16_funct_2, conjecture, ![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(![X4]:~((r2_hidden(X4,X2)&![X5]:~((r2_hidden(X5,X1)&X4=k1_funct_1(X3,X5)))))=>k2_relset_1(X1,X2,X3)=X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t16_funct_2)).
% 0.17/0.38  fof(d1_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)<=>![X2]:~(r2_hidden(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_xboole_0)).
% 0.17/0.38  fof(t2_tarski, axiom, ![X1, X2]:(![X3]:(r2_hidden(X3,X1)<=>r2_hidden(X3,X2))=>X1=X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_tarski)).
% 0.17/0.38  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.17/0.38  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.17/0.38  fof(redefinition_k2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k2_relset_1(X1,X2,X3)=k2_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k2_relset_1)).
% 0.17/0.38  fof(d1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(((X2=k1_xboole_0=>X1=k1_xboole_0)=>(v1_funct_2(X3,X1,X2)<=>X1=k1_relset_1(X1,X2,X3)))&(X2=k1_xboole_0=>(X1=k1_xboole_0|(v1_funct_2(X3,X1,X2)<=>X3=k1_xboole_0))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_funct_2)).
% 0.17/0.38  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.17/0.38  fof(t12_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(r2_hidden(X1,k1_relat_1(X2))=>r2_hidden(k1_funct_1(X2,X1),k2_relat_1(X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t12_funct_1)).
% 0.17/0.38  fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc1_xboole_0)).
% 0.17/0.38  fof(c_0_12, plain, ![X10, X11, X12, X13, X14]:((~r1_tarski(X10,X11)|(~r2_hidden(X12,X10)|r2_hidden(X12,X11)))&((r2_hidden(esk2_2(X13,X14),X13)|r1_tarski(X13,X14))&(~r2_hidden(esk2_2(X13,X14),X14)|r1_tarski(X13,X14)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.17/0.38  fof(c_0_13, plain, ![X19, X20]:((~v5_relat_1(X20,X19)|r1_tarski(k2_relat_1(X20),X19)|~v1_relat_1(X20))&(~r1_tarski(k2_relat_1(X20),X19)|v5_relat_1(X20,X19)|~v1_relat_1(X20))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).
% 0.17/0.38  fof(c_0_14, negated_conjecture, ~(![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(![X4]:~((r2_hidden(X4,X2)&![X5]:~((r2_hidden(X5,X1)&X4=k1_funct_1(X3,X5)))))=>k2_relset_1(X1,X2,X3)=X2))), inference(assume_negation,[status(cth)],[t16_funct_2])).
% 0.17/0.38  fof(c_0_15, plain, ![X6, X7, X8]:((~v1_xboole_0(X6)|~r2_hidden(X7,X6))&(r2_hidden(esk1_1(X8),X8)|v1_xboole_0(X8))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).
% 0.17/0.38  fof(c_0_16, plain, ![X16, X17]:((~r2_hidden(esk3_2(X16,X17),X16)|~r2_hidden(esk3_2(X16,X17),X17)|X16=X17)&(r2_hidden(esk3_2(X16,X17),X16)|r2_hidden(esk3_2(X16,X17),X17)|X16=X17)), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_tarski])])])])).
% 0.17/0.38  cnf(c_0_17, plain, (r2_hidden(X3,X2)|~r1_tarski(X1,X2)|~r2_hidden(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.17/0.38  cnf(c_0_18, plain, (r1_tarski(k2_relat_1(X1),X2)|~v5_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.17/0.38  fof(c_0_19, plain, ![X26, X27, X28]:((v4_relat_1(X28,X26)|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))))&(v5_relat_1(X28,X27)|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.17/0.38  fof(c_0_20, negated_conjecture, ![X41]:(((v1_funct_1(esk6_0)&v1_funct_2(esk6_0,esk4_0,esk5_0))&m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0))))&(((r2_hidden(esk7_1(X41),esk4_0)|~r2_hidden(X41,esk5_0))&(X41=k1_funct_1(esk6_0,esk7_1(X41))|~r2_hidden(X41,esk5_0)))&k2_relset_1(esk4_0,esk5_0,esk6_0)!=esk5_0)), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_14])])])])])).
% 0.17/0.38  fof(c_0_21, plain, ![X23, X24, X25]:(~m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))|v1_relat_1(X25)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.17/0.38  fof(c_0_22, plain, ![X32, X33, X34]:(~m1_subset_1(X34,k1_zfmisc_1(k2_zfmisc_1(X32,X33)))|k2_relset_1(X32,X33,X34)=k2_relat_1(X34)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).
% 0.17/0.38  cnf(c_0_23, plain, (~v1_xboole_0(X1)|~r2_hidden(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.17/0.38  cnf(c_0_24, plain, (r2_hidden(esk3_2(X1,X2),X1)|r2_hidden(esk3_2(X1,X2),X2)|X1=X2), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.17/0.38  cnf(c_0_25, plain, (r2_hidden(X1,X2)|~v5_relat_1(X3,X2)|~v1_relat_1(X3)|~r2_hidden(X1,k2_relat_1(X3))), inference(spm,[status(thm)],[c_0_17, c_0_18])).
% 0.17/0.38  cnf(c_0_26, plain, (r2_hidden(esk1_1(X1),X1)|v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.17/0.38  cnf(c_0_27, plain, (v5_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.17/0.38  cnf(c_0_28, negated_conjecture, (m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0)))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.17/0.38  cnf(c_0_29, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.17/0.38  cnf(c_0_30, plain, (k2_relset_1(X2,X3,X1)=k2_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.17/0.38  fof(c_0_31, plain, ![X35, X36, X37]:((((~v1_funct_2(X37,X35,X36)|X35=k1_relset_1(X35,X36,X37)|X36=k1_xboole_0|~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36))))&(X35!=k1_relset_1(X35,X36,X37)|v1_funct_2(X37,X35,X36)|X36=k1_xboole_0|~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36)))))&((~v1_funct_2(X37,X35,X36)|X35=k1_relset_1(X35,X36,X37)|X35!=k1_xboole_0|~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36))))&(X35!=k1_relset_1(X35,X36,X37)|v1_funct_2(X37,X35,X36)|X35!=k1_xboole_0|~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36))))))&((~v1_funct_2(X37,X35,X36)|X37=k1_xboole_0|X35=k1_xboole_0|X36!=k1_xboole_0|~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36))))&(X37!=k1_xboole_0|v1_funct_2(X37,X35,X36)|X35=k1_xboole_0|X36!=k1_xboole_0|~m1_subset_1(X37,k1_zfmisc_1(k2_zfmisc_1(X35,X36)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).
% 0.17/0.38  fof(c_0_32, plain, ![X29, X30, X31]:(~m1_subset_1(X31,k1_zfmisc_1(k2_zfmisc_1(X29,X30)))|k1_relset_1(X29,X30,X31)=k1_relat_1(X31)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.17/0.38  cnf(c_0_33, plain, (X1=X2|r2_hidden(esk3_2(X1,X2),X1)|~v1_xboole_0(X2)), inference(spm,[status(thm)],[c_0_23, c_0_24])).
% 0.17/0.38  cnf(c_0_34, plain, (r2_hidden(esk1_1(k2_relat_1(X1)),X2)|v1_xboole_0(k2_relat_1(X1))|~v5_relat_1(X1,X2)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.17/0.38  cnf(c_0_35, plain, (k2_relat_1(X1)=X2|r2_hidden(esk3_2(k2_relat_1(X1),X2),X2)|r2_hidden(esk3_2(k2_relat_1(X1),X2),X3)|~v5_relat_1(X1,X3)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_25, c_0_24])).
% 0.17/0.38  cnf(c_0_36, negated_conjecture, (v5_relat_1(esk6_0,esk5_0)), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.17/0.38  cnf(c_0_37, negated_conjecture, (v1_relat_1(esk6_0)), inference(spm,[status(thm)],[c_0_29, c_0_28])).
% 0.17/0.38  cnf(c_0_38, negated_conjecture, (k2_relset_1(esk4_0,esk5_0,esk6_0)!=esk5_0), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.17/0.38  cnf(c_0_39, negated_conjecture, (k2_relset_1(esk4_0,esk5_0,esk6_0)=k2_relat_1(esk6_0)), inference(spm,[status(thm)],[c_0_30, c_0_28])).
% 0.17/0.38  fof(c_0_40, plain, ![X21, X22]:(~v1_relat_1(X22)|~v1_funct_1(X22)|(~r2_hidden(X21,k1_relat_1(X22))|r2_hidden(k1_funct_1(X22,X21),k2_relat_1(X22)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_funct_1])])).
% 0.17/0.38  cnf(c_0_41, plain, (X2=k1_relset_1(X2,X3,X1)|X3=k1_xboole_0|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.17/0.38  cnf(c_0_42, negated_conjecture, (v1_funct_2(esk6_0,esk4_0,esk5_0)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.17/0.38  cnf(c_0_43, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.17/0.38  cnf(c_0_44, plain, (X1=X2|~v1_xboole_0(X1)|~v1_xboole_0(X2)), inference(spm,[status(thm)],[c_0_23, c_0_33])).
% 0.17/0.38  cnf(c_0_45, plain, (v1_xboole_0(k1_xboole_0)), inference(split_conjunct,[status(thm)],[fc1_xboole_0])).
% 0.17/0.38  cnf(c_0_46, plain, (v1_xboole_0(k2_relat_1(X1))|~v5_relat_1(X1,X2)|~v1_relat_1(X1)|~v1_xboole_0(X2)), inference(spm,[status(thm)],[c_0_23, c_0_34])).
% 0.17/0.38  cnf(c_0_47, negated_conjecture, (k2_relat_1(esk6_0)=X1|r2_hidden(esk3_2(k2_relat_1(esk6_0),X1),esk5_0)|r2_hidden(esk3_2(k2_relat_1(esk6_0),X1),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_36]), c_0_37])])).
% 0.17/0.38  cnf(c_0_48, negated_conjecture, (k2_relat_1(esk6_0)!=esk5_0), inference(rw,[status(thm)],[c_0_38, c_0_39])).
% 0.17/0.38  cnf(c_0_49, plain, (r2_hidden(k1_funct_1(X1,X2),k2_relat_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)|~r2_hidden(X2,k1_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_40])).
% 0.17/0.38  cnf(c_0_50, negated_conjecture, (X1=k1_funct_1(esk6_0,esk7_1(X1))|~r2_hidden(X1,esk5_0)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.17/0.38  cnf(c_0_51, negated_conjecture, (v1_funct_1(esk6_0)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.17/0.38  cnf(c_0_52, negated_conjecture, (k1_relset_1(esk4_0,esk5_0,esk6_0)=esk4_0|esk5_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_28]), c_0_42])])).
% 0.17/0.38  cnf(c_0_53, negated_conjecture, (k1_relset_1(esk4_0,esk5_0,esk6_0)=k1_relat_1(esk6_0)), inference(spm,[status(thm)],[c_0_43, c_0_28])).
% 0.17/0.38  cnf(c_0_54, plain, (k1_xboole_0=X1|~v1_xboole_0(X1)), inference(spm,[status(thm)],[c_0_44, c_0_45])).
% 0.17/0.38  cnf(c_0_55, negated_conjecture, (v1_xboole_0(k2_relat_1(esk6_0))|~v1_xboole_0(esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46, c_0_36]), c_0_37])])).
% 0.17/0.38  cnf(c_0_56, plain, (X1=X2|~r2_hidden(esk3_2(X1,X2),X1)|~r2_hidden(esk3_2(X1,X2),X2)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.17/0.38  cnf(c_0_57, negated_conjecture, (r2_hidden(esk3_2(k2_relat_1(esk6_0),esk5_0),esk5_0)), inference(sr,[status(thm)],[inference(ef,[status(thm)],[c_0_47]), c_0_48])).
% 0.17/0.38  cnf(c_0_58, negated_conjecture, (r2_hidden(X1,k2_relat_1(esk6_0))|~r2_hidden(esk7_1(X1),k1_relat_1(esk6_0))|~r2_hidden(X1,esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_50]), c_0_51])]), c_0_37])])).
% 0.17/0.38  cnf(c_0_59, negated_conjecture, (k1_relat_1(esk6_0)=esk4_0|esk5_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_52, c_0_53])).
% 0.17/0.38  cnf(c_0_60, negated_conjecture, (r2_hidden(esk7_1(X1),esk4_0)|~r2_hidden(X1,esk5_0)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.17/0.38  cnf(c_0_61, negated_conjecture, (k2_relat_1(esk6_0)=k1_xboole_0|~v1_xboole_0(esk5_0)), inference(spm,[status(thm)],[c_0_54, c_0_55])).
% 0.17/0.38  cnf(c_0_62, negated_conjecture, (~r2_hidden(esk3_2(k2_relat_1(esk6_0),esk5_0),k2_relat_1(esk6_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_56, c_0_57]), c_0_48])).
% 0.17/0.38  cnf(c_0_63, negated_conjecture, (esk5_0=k1_xboole_0|r2_hidden(X1,k2_relat_1(esk6_0))|~r2_hidden(X1,esk5_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_58, c_0_59]), c_0_60])).
% 0.17/0.38  cnf(c_0_64, negated_conjecture, (~v1_xboole_0(esk5_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_61]), c_0_54])).
% 0.17/0.38  cnf(c_0_65, negated_conjecture, (esk5_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62, c_0_63]), c_0_57])])).
% 0.17/0.38  cnf(c_0_66, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_64, c_0_65]), c_0_45])]), ['proof']).
% 0.17/0.38  # SZS output end CNFRefutation
% 0.17/0.38  # Proof object total steps             : 67
% 0.17/0.38  # Proof object clause steps            : 43
% 0.17/0.38  # Proof object formula steps           : 24
% 0.17/0.38  # Proof object conjectures             : 26
% 0.17/0.38  # Proof object clause conjectures      : 23
% 0.17/0.38  # Proof object formula conjectures     : 3
% 0.17/0.38  # Proof object initial clauses used    : 19
% 0.17/0.38  # Proof object initial formulas used   : 12
% 0.17/0.38  # Proof object generating inferences   : 22
% 0.17/0.38  # Proof object simplifying inferences  : 20
% 0.17/0.38  # Training examples: 0 positive, 0 negative
% 0.17/0.38  # Parsed axioms                        : 12
% 0.17/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.17/0.38  # Initial clauses                      : 28
% 0.17/0.38  # Removed in clause preprocessing      : 0
% 0.17/0.38  # Initial clauses in saturation        : 28
% 0.17/0.38  # Processed clauses                    : 430
% 0.17/0.38  # ...of these trivial                  : 0
% 0.17/0.38  # ...subsumed                          : 273
% 0.17/0.38  # ...remaining for further processing  : 157
% 0.17/0.38  # Other redundant clauses eliminated   : 5
% 0.17/0.38  # Clauses deleted for lack of memory   : 0
% 0.17/0.38  # Backward-subsumed                    : 2
% 0.17/0.38  # Backward-rewritten                   : 82
% 0.17/0.38  # Generated clauses                    : 637
% 0.17/0.38  # ...of the previous two non-trivial   : 626
% 0.17/0.38  # Contextual simplify-reflections      : 2
% 0.17/0.38  # Paramodulations                      : 629
% 0.17/0.38  # Factorizations                       : 4
% 0.17/0.38  # Equation resolutions                 : 5
% 0.17/0.38  # Propositional unsat checks           : 0
% 0.17/0.38  #    Propositional check models        : 0
% 0.17/0.38  #    Propositional check unsatisfiable : 0
% 0.17/0.38  #    Propositional clauses             : 0
% 0.17/0.38  #    Propositional clauses after purity: 0
% 0.17/0.38  #    Propositional unsat core size     : 0
% 0.17/0.38  #    Propositional preprocessing time  : 0.000
% 0.17/0.38  #    Propositional encoding time       : 0.000
% 0.17/0.38  #    Propositional solver time         : 0.000
% 0.17/0.38  #    Success case prop preproc time    : 0.000
% 0.17/0.38  #    Success case prop encoding time   : 0.000
% 0.17/0.38  #    Success case prop solver time     : 0.000
% 0.17/0.38  # Current number of processed clauses  : 69
% 0.17/0.38  #    Positive orientable unit clauses  : 6
% 0.17/0.38  #    Positive unorientable unit clauses: 0
% 0.17/0.38  #    Negative unit clauses             : 1
% 0.17/0.38  #    Non-unit-clauses                  : 62
% 0.17/0.38  # Current number of unprocessed clauses: 221
% 0.17/0.38  # ...number of literals in the above   : 1599
% 0.17/0.38  # Current number of archived formulas  : 0
% 0.17/0.38  # Current number of archived clauses   : 84
% 0.17/0.38  # Clause-clause subsumption calls (NU) : 4900
% 0.17/0.38  # Rec. Clause-clause subsumption calls : 1380
% 0.17/0.38  # Non-unit clause-clause subsumptions  : 87
% 0.17/0.38  # Unit Clause-clause subsumption calls : 83
% 0.17/0.38  # Rewrite failures with RHS unbound    : 0
% 0.17/0.38  # BW rewrite match attempts            : 7
% 0.17/0.38  # BW rewrite match successes           : 3
% 0.17/0.38  # Condensation attempts                : 0
% 0.17/0.38  # Condensation successes               : 0
% 0.17/0.38  # Termbank termtop insertions          : 12553
% 0.17/0.38  
% 0.17/0.38  # -------------------------------------------------
% 0.17/0.38  # User time                : 0.055 s
% 0.17/0.38  # System time              : 0.005 s
% 0.17/0.38  # Total time               : 0.060 s
% 0.17/0.38  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
