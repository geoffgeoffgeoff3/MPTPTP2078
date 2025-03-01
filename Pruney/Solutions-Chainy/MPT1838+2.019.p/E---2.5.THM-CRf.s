%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:18:41 EST 2020

% Result     : Theorem 0.36s
% Output     : CNFRefutation 0.36s
% Verified   : 
% Statistics : Number of formulae       :   93 ( 563 expanded)
%              Number of clauses        :   64 ( 261 expanded)
%              Number of leaves         :   14 ( 147 expanded)
%              Depth                    :   15
%              Number of atoms          :  249 (1250 expanded)
%              Number of equality atoms :   90 ( 610 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(d1_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k1_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> X3 = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_tarski)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(t49_zfmisc_1,axiom,(
    ! [X1,X2] : k2_xboole_0(k1_tarski(X1),X2) != k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t49_zfmisc_1)).

fof(t1_boole,axiom,(
    ! [X1] : k2_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_boole)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).

fof(t1_mcart_1,axiom,(
    ! [X1] :
      ~ ( X1 != k1_xboole_0
        & ! [X2] :
            ~ ( r2_hidden(X2,X1)
              & r1_xboole_0(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_mcart_1)).

fof(redefinition_k6_domain_1,axiom,(
    ! [X1,X2] :
      ( ( ~ v1_xboole_0(X1)
        & m1_subset_1(X2,X1) )
     => k6_domain_1(X1,X2) = k1_tarski(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k6_domain_1)).

fof(t1_tex_2,conjecture,(
    ! [X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( ( ~ v1_xboole_0(X2)
            & v1_zfmisc_1(X2) )
         => ( r1_tarski(X1,X2)
           => X1 = X2 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_tex_2)).

fof(d1_tex_2,axiom,(
    ! [X1] :
      ( ~ v1_xboole_0(X1)
     => ( v1_zfmisc_1(X1)
      <=> ? [X2] :
            ( m1_subset_1(X2,X1)
            & X1 = k6_domain_1(X1,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_tex_2)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t12_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k2_xboole_0(X1,X2) = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_xboole_1)).

fof(t68_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ~ v1_xboole_0(X3)
     => ~ ( r1_tarski(X3,X1)
          & r1_tarski(X3,X2)
          & r1_xboole_0(X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t68_xboole_1)).

fof(c_0_14,plain,(
    ! [X28,X29] : k3_tarski(k2_tarski(X28,X29)) = k2_xboole_0(X28,X29) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

fof(c_0_15,plain,(
    ! [X26,X27] : k1_enumset1(X26,X26,X27) = k2_tarski(X26,X27) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_16,plain,(
    ! [X18,X19,X20,X21,X22,X23] :
      ( ( ~ r2_hidden(X20,X19)
        | X20 = X18
        | X19 != k1_tarski(X18) )
      & ( X21 != X18
        | r2_hidden(X21,X19)
        | X19 != k1_tarski(X18) )
      & ( ~ r2_hidden(esk2_2(X22,X23),X23)
        | esk2_2(X22,X23) != X22
        | X23 = k1_tarski(X22) )
      & ( r2_hidden(esk2_2(X22,X23),X23)
        | esk2_2(X22,X23) = X22
        | X23 = k1_tarski(X22) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).

fof(c_0_17,plain,(
    ! [X25] : k2_tarski(X25,X25) = k1_tarski(X25) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_18,plain,(
    ! [X30,X31] : k2_xboole_0(k1_tarski(X30),X31) != k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t49_zfmisc_1])).

cnf(c_0_19,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_20,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_21,plain,(
    ! [X14] : k2_xboole_0(X14,k1_xboole_0) = X14 ),
    inference(variable_rename,[status(thm)],[t1_boole])).

fof(c_0_22,plain,(
    ! [X4,X5,X6,X7,X8] :
      ( ( ~ r1_tarski(X4,X5)
        | ~ r2_hidden(X6,X4)
        | r2_hidden(X6,X5) )
      & ( r2_hidden(esk1_2(X7,X8),X7)
        | r1_tarski(X7,X8) )
      & ( ~ r2_hidden(esk1_2(X7,X8),X8)
        | r1_tarski(X7,X8) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

fof(c_0_23,plain,(
    ! [X32] :
      ( ( r2_hidden(esk3_1(X32),X32)
        | X32 = k1_xboole_0 )
      & ( r1_xboole_0(esk3_1(X32),X32)
        | X32 = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_mcart_1])])])])).

cnf(c_0_24,plain,
    ( X1 = X3
    | ~ r2_hidden(X1,X2)
    | X2 != k1_tarski(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_25,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_26,plain,
    ( k2_xboole_0(k1_tarski(X1),X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_27,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_19,c_0_20])).

cnf(c_0_28,plain,
    ( k2_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

fof(c_0_29,plain,(
    ! [X34,X35] :
      ( v1_xboole_0(X34)
      | ~ m1_subset_1(X35,X34)
      | k6_domain_1(X34,X35) = k1_tarski(X35) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_k6_domain_1])])])).

cnf(c_0_30,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_31,plain,
    ( r2_hidden(esk3_1(X1),X1)
    | X1 = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

fof(c_0_32,negated_conjecture,(
    ~ ! [X1] :
        ( ~ v1_xboole_0(X1)
       => ! [X2] :
            ( ( ~ v1_xboole_0(X2)
              & v1_zfmisc_1(X2) )
           => ( r1_tarski(X1,X2)
             => X1 = X2 ) ) ) ),
    inference(assume_negation,[status(cth)],[t1_tex_2])).

cnf(c_0_33,plain,
    ( X1 = X3
    | X2 != k1_enumset1(X3,X3,X3)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24,c_0_25]),c_0_20])).

cnf(c_0_34,plain,
    ( k3_tarski(k1_enumset1(k1_enumset1(X1,X1,X1),k1_enumset1(X1,X1,X1),X2)) != k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26,c_0_25]),c_0_20]),c_0_27])).

cnf(c_0_35,plain,
    ( k3_tarski(k1_enumset1(X1,X1,k1_xboole_0)) = X1 ),
    inference(rw,[status(thm)],[c_0_28,c_0_27])).

cnf(c_0_36,plain,
    ( v1_xboole_0(X1)
    | k6_domain_1(X1,X2) = k1_tarski(X2)
    | ~ m1_subset_1(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

fof(c_0_37,plain,(
    ! [X36,X38] :
      ( ( m1_subset_1(esk4_1(X36),X36)
        | ~ v1_zfmisc_1(X36)
        | v1_xboole_0(X36) )
      & ( X36 = k6_domain_1(X36,esk4_1(X36))
        | ~ v1_zfmisc_1(X36)
        | v1_xboole_0(X36) )
      & ( ~ m1_subset_1(X38,X36)
        | X36 != k6_domain_1(X36,X38)
        | v1_zfmisc_1(X36)
        | v1_xboole_0(X36) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_tex_2])])])])])])).

cnf(c_0_38,plain,
    ( X1 = k1_xboole_0
    | r2_hidden(esk3_1(X1),X2)
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_30,c_0_31])).

fof(c_0_39,negated_conjecture,
    ( ~ v1_xboole_0(esk5_0)
    & ~ v1_xboole_0(esk6_0)
    & v1_zfmisc_1(esk6_0)
    & r1_tarski(esk5_0,esk6_0)
    & esk5_0 != esk6_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_32])])])])).

cnf(c_0_40,plain,
    ( X1 = X2
    | ~ r2_hidden(X1,k1_enumset1(X2,X2,X2)) ),
    inference(er,[status(thm)],[c_0_33])).

cnf(c_0_41,plain,
    ( k1_enumset1(X1,X1,X1) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_34,c_0_35])).

cnf(c_0_42,plain,
    ( k6_domain_1(X1,X2) = k1_enumset1(X2,X2,X2)
    | v1_xboole_0(X1)
    | ~ m1_subset_1(X2,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_36,c_0_25]),c_0_20])).

cnf(c_0_43,plain,
    ( m1_subset_1(esk4_1(X1),X1)
    | v1_xboole_0(X1)
    | ~ v1_zfmisc_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_44,plain,
    ( X1 = k1_xboole_0
    | r2_hidden(esk3_1(X1),X2)
    | ~ r1_tarski(X3,X2)
    | ~ r1_tarski(X1,X3) ),
    inference(spm,[status(thm)],[c_0_30,c_0_38])).

cnf(c_0_45,negated_conjecture,
    ( r1_tarski(esk5_0,esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_46,plain,
    ( esk3_1(k1_enumset1(X1,X1,X1)) = X1 ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_31]),c_0_41])).

cnf(c_0_47,plain,
    ( k1_enumset1(esk4_1(X1),esk4_1(X1),esk4_1(X1)) = k6_domain_1(X1,esk4_1(X1))
    | v1_xboole_0(X1)
    | ~ v1_zfmisc_1(X1) ),
    inference(spm,[status(thm)],[c_0_42,c_0_43])).

cnf(c_0_48,negated_conjecture,
    ( X1 = k1_xboole_0
    | r2_hidden(esk3_1(X1),esk6_0)
    | ~ r1_tarski(X1,esk5_0) ),
    inference(spm,[status(thm)],[c_0_44,c_0_45])).

fof(c_0_49,plain,(
    ! [X10,X11] :
      ( ( r1_tarski(X10,X11)
        | X10 != X11 )
      & ( r1_tarski(X11,X10)
        | X10 != X11 )
      & ( ~ r1_tarski(X10,X11)
        | ~ r1_tarski(X11,X10)
        | X10 = X11 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_50,plain,
    ( esk3_1(k6_domain_1(X1,esk4_1(X1))) = esk4_1(X1)
    | v1_xboole_0(X1)
    | ~ v1_zfmisc_1(X1) ),
    inference(spm,[status(thm)],[c_0_46,c_0_47])).

cnf(c_0_51,plain,
    ( X1 = k6_domain_1(X1,esk4_1(X1))
    | v1_xboole_0(X1)
    | ~ v1_zfmisc_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_52,negated_conjecture,
    ( X1 = k1_xboole_0
    | r2_hidden(esk3_1(X1),X2)
    | ~ r1_tarski(esk6_0,X2)
    | ~ r1_tarski(X1,esk5_0) ),
    inference(spm,[status(thm)],[c_0_30,c_0_48])).

cnf(c_0_53,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_49])).

cnf(c_0_54,plain,
    ( X1 = esk4_1(X2)
    | v1_xboole_0(X2)
    | ~ v1_zfmisc_1(X2)
    | ~ r2_hidden(X1,k6_domain_1(X2,esk4_1(X2))) ),
    inference(spm,[status(thm)],[c_0_40,c_0_47])).

cnf(c_0_55,plain,
    ( esk4_1(X1) = esk3_1(X1)
    | v1_xboole_0(X1)
    | ~ v1_zfmisc_1(X1) ),
    inference(spm,[status(thm)],[c_0_50,c_0_51])).

cnf(c_0_56,negated_conjecture,
    ( esk3_1(X1) = X2
    | X1 = k1_xboole_0
    | ~ r1_tarski(esk6_0,k1_enumset1(X2,X2,X2))
    | ~ r1_tarski(X1,esk5_0) ),
    inference(spm,[status(thm)],[c_0_40,c_0_52])).

cnf(c_0_57,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_53])).

fof(c_0_58,plain,(
    ! [X12,X13] :
      ( ~ r1_tarski(X12,X13)
      | k2_xboole_0(X12,X13) = X13 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).

cnf(c_0_59,plain,
    ( X1 = esk3_1(X2)
    | v1_xboole_0(X2)
    | ~ v1_zfmisc_1(X2)
    | ~ r2_hidden(X1,k6_domain_1(X2,esk3_1(X2))) ),
    inference(spm,[status(thm)],[c_0_54,c_0_55])).

cnf(c_0_60,plain,
    ( k6_domain_1(X1,esk3_1(X1)) = X1
    | v1_xboole_0(X1)
    | ~ v1_zfmisc_1(X1) ),
    inference(spm,[status(thm)],[c_0_51,c_0_55])).

cnf(c_0_61,negated_conjecture,
    ( esk3_1(esk5_0) = X1
    | esk5_0 = k1_xboole_0
    | ~ r1_tarski(esk6_0,k1_enumset1(X1,X1,X1)) ),
    inference(spm,[status(thm)],[c_0_56,c_0_57])).

cnf(c_0_62,plain,
    ( k2_xboole_0(X1,X2) = X2
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_63,plain,
    ( r2_hidden(esk1_2(X1,X2),X1)
    | r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_64,plain,
    ( X1 = esk3_1(X2)
    | v1_xboole_0(X2)
    | ~ v1_zfmisc_1(X2)
    | ~ r2_hidden(X1,X2) ),
    inference(spm,[status(thm)],[c_0_59,c_0_60])).

cnf(c_0_65,negated_conjecture,
    ( v1_zfmisc_1(esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_66,negated_conjecture,
    ( ~ v1_xboole_0(esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_67,negated_conjecture,
    ( esk4_1(X1) = esk3_1(esk5_0)
    | esk5_0 = k1_xboole_0
    | v1_xboole_0(X1)
    | ~ v1_zfmisc_1(X1)
    | ~ r1_tarski(esk6_0,k6_domain_1(X1,esk4_1(X1))) ),
    inference(spm,[status(thm)],[c_0_61,c_0_47])).

fof(c_0_68,plain,(
    ! [X15,X16,X17] :
      ( v1_xboole_0(X17)
      | ~ r1_tarski(X17,X15)
      | ~ r1_tarski(X17,X16)
      | ~ r1_xboole_0(X15,X16) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t68_xboole_1])])])).

cnf(c_0_69,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = X2
    | ~ r1_tarski(X1,X2) ),
    inference(rw,[status(thm)],[c_0_62,c_0_27])).

cnf(c_0_70,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(esk1_2(X1,X2),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_71,plain,
    ( esk1_2(k1_enumset1(X1,X1,X1),X2) = X1
    | r1_tarski(k1_enumset1(X1,X1,X1),X2) ),
    inference(spm,[status(thm)],[c_0_40,c_0_63])).

cnf(c_0_72,negated_conjecture,
    ( X1 = esk3_1(esk6_0)
    | ~ r2_hidden(X1,esk6_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_64,c_0_65]),c_0_66])).

cnf(c_0_73,negated_conjecture,
    ( esk4_1(X1) = esk3_1(esk5_0)
    | esk5_0 = k1_xboole_0
    | v1_xboole_0(X1)
    | ~ v1_zfmisc_1(X1)
    | ~ r1_tarski(esk6_0,X1) ),
    inference(spm,[status(thm)],[c_0_67,c_0_51])).

cnf(c_0_74,plain,
    ( v1_xboole_0(X1)
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X1,X3)
    | ~ r1_xboole_0(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_68])).

cnf(c_0_75,plain,
    ( r1_xboole_0(esk3_1(X1),X1)
    | X1 = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_76,plain,
    ( k1_xboole_0 = X1
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_35,c_0_69])).

cnf(c_0_77,plain,
    ( r1_tarski(k1_enumset1(X1,X1,X1),X2)
    | ~ r2_hidden(X1,X2) ),
    inference(spm,[status(thm)],[c_0_70,c_0_71])).

cnf(c_0_78,negated_conjecture,
    ( esk1_2(esk6_0,X1) = esk3_1(esk6_0)
    | r1_tarski(esk6_0,X1) ),
    inference(spm,[status(thm)],[c_0_72,c_0_63])).

cnf(c_0_79,negated_conjecture,
    ( esk3_1(esk5_0) = esk3_1(X1)
    | esk5_0 = k1_xboole_0
    | v1_xboole_0(X1)
    | ~ v1_zfmisc_1(X1)
    | ~ r1_tarski(esk6_0,X1) ),
    inference(spm,[status(thm)],[c_0_55,c_0_73])).

cnf(c_0_80,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_49])).

cnf(c_0_81,negated_conjecture,
    ( esk5_0 != esk6_0 ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_82,plain,
    ( X1 = k1_xboole_0
    | v1_xboole_0(X2)
    | ~ r1_tarski(X2,esk3_1(X1))
    | ~ r1_tarski(X2,X1) ),
    inference(spm,[status(thm)],[c_0_74,c_0_75])).

cnf(c_0_83,plain,
    ( ~ r2_hidden(X1,k1_xboole_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_76,c_0_77]),c_0_41])).

cnf(c_0_84,negated_conjecture,
    ( r1_tarski(esk6_0,X1)
    | ~ r2_hidden(esk3_1(esk6_0),X1) ),
    inference(spm,[status(thm)],[c_0_70,c_0_78])).

cnf(c_0_85,negated_conjecture,
    ( esk5_0 = k1_xboole_0
    | v1_xboole_0(X1)
    | r2_hidden(esk3_1(X1),esk5_0)
    | ~ v1_zfmisc_1(X1)
    | ~ r1_tarski(esk6_0,X1) ),
    inference(spm,[status(thm)],[c_0_31,c_0_79])).

cnf(c_0_86,negated_conjecture,
    ( ~ r1_tarski(esk6_0,esk5_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_80,c_0_45]),c_0_81])).

cnf(c_0_87,plain,
    ( v1_xboole_0(X1)
    | ~ r1_tarski(X1,k1_enumset1(X2,X2,X2))
    | ~ r1_tarski(X1,X2) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_82,c_0_46]),c_0_41])).

cnf(c_0_88,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(spm,[status(thm)],[c_0_83,c_0_63])).

cnf(c_0_89,negated_conjecture,
    ( ~ v1_xboole_0(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_90,negated_conjecture,
    ( esk5_0 = k1_xboole_0 ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_84,c_0_85]),c_0_65]),c_0_57])]),c_0_86]),c_0_66])).

cnf(c_0_91,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_87,c_0_88]),c_0_88])])).

cnf(c_0_92,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_89,c_0_90]),c_0_91])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n017.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 10:02:01 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.36/0.58  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S05BN
% 0.36/0.58  # and selection function SelectUnlessUniqMaxSmallestOrientable.
% 0.36/0.58  #
% 0.36/0.58  # Preprocessing time       : 0.028 s
% 0.36/0.58  # Presaturation interreduction done
% 0.36/0.58  
% 0.36/0.58  # Proof found!
% 0.36/0.58  # SZS status Theorem
% 0.36/0.58  # SZS output start CNFRefutation
% 0.36/0.58  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.36/0.58  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.36/0.58  fof(d1_tarski, axiom, ![X1, X2]:(X2=k1_tarski(X1)<=>![X3]:(r2_hidden(X3,X2)<=>X3=X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_tarski)).
% 0.36/0.58  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.36/0.58  fof(t49_zfmisc_1, axiom, ![X1, X2]:k2_xboole_0(k1_tarski(X1),X2)!=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t49_zfmisc_1)).
% 0.36/0.58  fof(t1_boole, axiom, ![X1]:k2_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t1_boole)).
% 0.36/0.58  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_tarski)).
% 0.36/0.58  fof(t1_mcart_1, axiom, ![X1]:~((X1!=k1_xboole_0&![X2]:~((r2_hidden(X2,X1)&r1_xboole_0(X2,X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t1_mcart_1)).
% 0.36/0.58  fof(redefinition_k6_domain_1, axiom, ![X1, X2]:((~(v1_xboole_0(X1))&m1_subset_1(X2,X1))=>k6_domain_1(X1,X2)=k1_tarski(X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k6_domain_1)).
% 0.36/0.58  fof(t1_tex_2, conjecture, ![X1]:(~(v1_xboole_0(X1))=>![X2]:((~(v1_xboole_0(X2))&v1_zfmisc_1(X2))=>(r1_tarski(X1,X2)=>X1=X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t1_tex_2)).
% 0.36/0.58  fof(d1_tex_2, axiom, ![X1]:(~(v1_xboole_0(X1))=>(v1_zfmisc_1(X1)<=>?[X2]:(m1_subset_1(X2,X1)&X1=k6_domain_1(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_tex_2)).
% 0.36/0.58  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.36/0.58  fof(t12_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k2_xboole_0(X1,X2)=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t12_xboole_1)).
% 0.36/0.58  fof(t68_xboole_1, axiom, ![X1, X2, X3]:(~(v1_xboole_0(X3))=>~(((r1_tarski(X3,X1)&r1_tarski(X3,X2))&r1_xboole_0(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t68_xboole_1)).
% 0.36/0.58  fof(c_0_14, plain, ![X28, X29]:k3_tarski(k2_tarski(X28,X29))=k2_xboole_0(X28,X29), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.36/0.58  fof(c_0_15, plain, ![X26, X27]:k1_enumset1(X26,X26,X27)=k2_tarski(X26,X27), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.36/0.58  fof(c_0_16, plain, ![X18, X19, X20, X21, X22, X23]:(((~r2_hidden(X20,X19)|X20=X18|X19!=k1_tarski(X18))&(X21!=X18|r2_hidden(X21,X19)|X19!=k1_tarski(X18)))&((~r2_hidden(esk2_2(X22,X23),X23)|esk2_2(X22,X23)!=X22|X23=k1_tarski(X22))&(r2_hidden(esk2_2(X22,X23),X23)|esk2_2(X22,X23)=X22|X23=k1_tarski(X22)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).
% 0.36/0.58  fof(c_0_17, plain, ![X25]:k2_tarski(X25,X25)=k1_tarski(X25), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.36/0.58  fof(c_0_18, plain, ![X30, X31]:k2_xboole_0(k1_tarski(X30),X31)!=k1_xboole_0, inference(variable_rename,[status(thm)],[t49_zfmisc_1])).
% 0.36/0.58  cnf(c_0_19, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.36/0.58  cnf(c_0_20, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.36/0.58  fof(c_0_21, plain, ![X14]:k2_xboole_0(X14,k1_xboole_0)=X14, inference(variable_rename,[status(thm)],[t1_boole])).
% 0.36/0.58  fof(c_0_22, plain, ![X4, X5, X6, X7, X8]:((~r1_tarski(X4,X5)|(~r2_hidden(X6,X4)|r2_hidden(X6,X5)))&((r2_hidden(esk1_2(X7,X8),X7)|r1_tarski(X7,X8))&(~r2_hidden(esk1_2(X7,X8),X8)|r1_tarski(X7,X8)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.36/0.58  fof(c_0_23, plain, ![X32]:((r2_hidden(esk3_1(X32),X32)|X32=k1_xboole_0)&(r1_xboole_0(esk3_1(X32),X32)|X32=k1_xboole_0)), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_mcart_1])])])])).
% 0.36/0.58  cnf(c_0_24, plain, (X1=X3|~r2_hidden(X1,X2)|X2!=k1_tarski(X3)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.36/0.58  cnf(c_0_25, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.36/0.58  cnf(c_0_26, plain, (k2_xboole_0(k1_tarski(X1),X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.36/0.58  cnf(c_0_27, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_19, c_0_20])).
% 0.36/0.58  cnf(c_0_28, plain, (k2_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.36/0.58  fof(c_0_29, plain, ![X34, X35]:(v1_xboole_0(X34)|~m1_subset_1(X35,X34)|k6_domain_1(X34,X35)=k1_tarski(X35)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_k6_domain_1])])])).
% 0.36/0.58  cnf(c_0_30, plain, (r2_hidden(X3,X2)|~r1_tarski(X1,X2)|~r2_hidden(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.36/0.58  cnf(c_0_31, plain, (r2_hidden(esk3_1(X1),X1)|X1=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.36/0.58  fof(c_0_32, negated_conjecture, ~(![X1]:(~(v1_xboole_0(X1))=>![X2]:((~(v1_xboole_0(X2))&v1_zfmisc_1(X2))=>(r1_tarski(X1,X2)=>X1=X2)))), inference(assume_negation,[status(cth)],[t1_tex_2])).
% 0.36/0.58  cnf(c_0_33, plain, (X1=X3|X2!=k1_enumset1(X3,X3,X3)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24, c_0_25]), c_0_20])).
% 0.36/0.58  cnf(c_0_34, plain, (k3_tarski(k1_enumset1(k1_enumset1(X1,X1,X1),k1_enumset1(X1,X1,X1),X2))!=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26, c_0_25]), c_0_20]), c_0_27])).
% 0.36/0.58  cnf(c_0_35, plain, (k3_tarski(k1_enumset1(X1,X1,k1_xboole_0))=X1), inference(rw,[status(thm)],[c_0_28, c_0_27])).
% 0.36/0.58  cnf(c_0_36, plain, (v1_xboole_0(X1)|k6_domain_1(X1,X2)=k1_tarski(X2)|~m1_subset_1(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.36/0.58  fof(c_0_37, plain, ![X36, X38]:(((m1_subset_1(esk4_1(X36),X36)|~v1_zfmisc_1(X36)|v1_xboole_0(X36))&(X36=k6_domain_1(X36,esk4_1(X36))|~v1_zfmisc_1(X36)|v1_xboole_0(X36)))&(~m1_subset_1(X38,X36)|X36!=k6_domain_1(X36,X38)|v1_zfmisc_1(X36)|v1_xboole_0(X36))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_tex_2])])])])])])).
% 0.36/0.58  cnf(c_0_38, plain, (X1=k1_xboole_0|r2_hidden(esk3_1(X1),X2)|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_30, c_0_31])).
% 0.36/0.58  fof(c_0_39, negated_conjecture, (~v1_xboole_0(esk5_0)&((~v1_xboole_0(esk6_0)&v1_zfmisc_1(esk6_0))&(r1_tarski(esk5_0,esk6_0)&esk5_0!=esk6_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_32])])])])).
% 0.36/0.58  cnf(c_0_40, plain, (X1=X2|~r2_hidden(X1,k1_enumset1(X2,X2,X2))), inference(er,[status(thm)],[c_0_33])).
% 0.36/0.58  cnf(c_0_41, plain, (k1_enumset1(X1,X1,X1)!=k1_xboole_0), inference(spm,[status(thm)],[c_0_34, c_0_35])).
% 0.36/0.58  cnf(c_0_42, plain, (k6_domain_1(X1,X2)=k1_enumset1(X2,X2,X2)|v1_xboole_0(X1)|~m1_subset_1(X2,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_36, c_0_25]), c_0_20])).
% 0.36/0.58  cnf(c_0_43, plain, (m1_subset_1(esk4_1(X1),X1)|v1_xboole_0(X1)|~v1_zfmisc_1(X1)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.36/0.58  cnf(c_0_44, plain, (X1=k1_xboole_0|r2_hidden(esk3_1(X1),X2)|~r1_tarski(X3,X2)|~r1_tarski(X1,X3)), inference(spm,[status(thm)],[c_0_30, c_0_38])).
% 0.36/0.58  cnf(c_0_45, negated_conjecture, (r1_tarski(esk5_0,esk6_0)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.36/0.58  cnf(c_0_46, plain, (esk3_1(k1_enumset1(X1,X1,X1))=X1), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_31]), c_0_41])).
% 0.36/0.58  cnf(c_0_47, plain, (k1_enumset1(esk4_1(X1),esk4_1(X1),esk4_1(X1))=k6_domain_1(X1,esk4_1(X1))|v1_xboole_0(X1)|~v1_zfmisc_1(X1)), inference(spm,[status(thm)],[c_0_42, c_0_43])).
% 0.36/0.58  cnf(c_0_48, negated_conjecture, (X1=k1_xboole_0|r2_hidden(esk3_1(X1),esk6_0)|~r1_tarski(X1,esk5_0)), inference(spm,[status(thm)],[c_0_44, c_0_45])).
% 0.36/0.58  fof(c_0_49, plain, ![X10, X11]:(((r1_tarski(X10,X11)|X10!=X11)&(r1_tarski(X11,X10)|X10!=X11))&(~r1_tarski(X10,X11)|~r1_tarski(X11,X10)|X10=X11)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.36/0.58  cnf(c_0_50, plain, (esk3_1(k6_domain_1(X1,esk4_1(X1)))=esk4_1(X1)|v1_xboole_0(X1)|~v1_zfmisc_1(X1)), inference(spm,[status(thm)],[c_0_46, c_0_47])).
% 0.36/0.58  cnf(c_0_51, plain, (X1=k6_domain_1(X1,esk4_1(X1))|v1_xboole_0(X1)|~v1_zfmisc_1(X1)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.36/0.58  cnf(c_0_52, negated_conjecture, (X1=k1_xboole_0|r2_hidden(esk3_1(X1),X2)|~r1_tarski(esk6_0,X2)|~r1_tarski(X1,esk5_0)), inference(spm,[status(thm)],[c_0_30, c_0_48])).
% 0.36/0.58  cnf(c_0_53, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_49])).
% 0.36/0.58  cnf(c_0_54, plain, (X1=esk4_1(X2)|v1_xboole_0(X2)|~v1_zfmisc_1(X2)|~r2_hidden(X1,k6_domain_1(X2,esk4_1(X2)))), inference(spm,[status(thm)],[c_0_40, c_0_47])).
% 0.36/0.58  cnf(c_0_55, plain, (esk4_1(X1)=esk3_1(X1)|v1_xboole_0(X1)|~v1_zfmisc_1(X1)), inference(spm,[status(thm)],[c_0_50, c_0_51])).
% 0.36/0.58  cnf(c_0_56, negated_conjecture, (esk3_1(X1)=X2|X1=k1_xboole_0|~r1_tarski(esk6_0,k1_enumset1(X2,X2,X2))|~r1_tarski(X1,esk5_0)), inference(spm,[status(thm)],[c_0_40, c_0_52])).
% 0.36/0.58  cnf(c_0_57, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_53])).
% 0.36/0.58  fof(c_0_58, plain, ![X12, X13]:(~r1_tarski(X12,X13)|k2_xboole_0(X12,X13)=X13), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).
% 0.36/0.58  cnf(c_0_59, plain, (X1=esk3_1(X2)|v1_xboole_0(X2)|~v1_zfmisc_1(X2)|~r2_hidden(X1,k6_domain_1(X2,esk3_1(X2)))), inference(spm,[status(thm)],[c_0_54, c_0_55])).
% 0.36/0.58  cnf(c_0_60, plain, (k6_domain_1(X1,esk3_1(X1))=X1|v1_xboole_0(X1)|~v1_zfmisc_1(X1)), inference(spm,[status(thm)],[c_0_51, c_0_55])).
% 0.36/0.58  cnf(c_0_61, negated_conjecture, (esk3_1(esk5_0)=X1|esk5_0=k1_xboole_0|~r1_tarski(esk6_0,k1_enumset1(X1,X1,X1))), inference(spm,[status(thm)],[c_0_56, c_0_57])).
% 0.36/0.58  cnf(c_0_62, plain, (k2_xboole_0(X1,X2)=X2|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.36/0.58  cnf(c_0_63, plain, (r2_hidden(esk1_2(X1,X2),X1)|r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.36/0.58  cnf(c_0_64, plain, (X1=esk3_1(X2)|v1_xboole_0(X2)|~v1_zfmisc_1(X2)|~r2_hidden(X1,X2)), inference(spm,[status(thm)],[c_0_59, c_0_60])).
% 0.36/0.58  cnf(c_0_65, negated_conjecture, (v1_zfmisc_1(esk6_0)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.36/0.58  cnf(c_0_66, negated_conjecture, (~v1_xboole_0(esk6_0)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.36/0.58  cnf(c_0_67, negated_conjecture, (esk4_1(X1)=esk3_1(esk5_0)|esk5_0=k1_xboole_0|v1_xboole_0(X1)|~v1_zfmisc_1(X1)|~r1_tarski(esk6_0,k6_domain_1(X1,esk4_1(X1)))), inference(spm,[status(thm)],[c_0_61, c_0_47])).
% 0.36/0.58  fof(c_0_68, plain, ![X15, X16, X17]:(v1_xboole_0(X17)|(~r1_tarski(X17,X15)|~r1_tarski(X17,X16)|~r1_xboole_0(X15,X16))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t68_xboole_1])])])).
% 0.36/0.58  cnf(c_0_69, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=X2|~r1_tarski(X1,X2)), inference(rw,[status(thm)],[c_0_62, c_0_27])).
% 0.36/0.58  cnf(c_0_70, plain, (r1_tarski(X1,X2)|~r2_hidden(esk1_2(X1,X2),X2)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.36/0.58  cnf(c_0_71, plain, (esk1_2(k1_enumset1(X1,X1,X1),X2)=X1|r1_tarski(k1_enumset1(X1,X1,X1),X2)), inference(spm,[status(thm)],[c_0_40, c_0_63])).
% 0.36/0.58  cnf(c_0_72, negated_conjecture, (X1=esk3_1(esk6_0)|~r2_hidden(X1,esk6_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_64, c_0_65]), c_0_66])).
% 0.36/0.58  cnf(c_0_73, negated_conjecture, (esk4_1(X1)=esk3_1(esk5_0)|esk5_0=k1_xboole_0|v1_xboole_0(X1)|~v1_zfmisc_1(X1)|~r1_tarski(esk6_0,X1)), inference(spm,[status(thm)],[c_0_67, c_0_51])).
% 0.36/0.58  cnf(c_0_74, plain, (v1_xboole_0(X1)|~r1_tarski(X1,X2)|~r1_tarski(X1,X3)|~r1_xboole_0(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_68])).
% 0.36/0.58  cnf(c_0_75, plain, (r1_xboole_0(esk3_1(X1),X1)|X1=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.36/0.58  cnf(c_0_76, plain, (k1_xboole_0=X1|~r1_tarski(X1,k1_xboole_0)), inference(spm,[status(thm)],[c_0_35, c_0_69])).
% 0.36/0.58  cnf(c_0_77, plain, (r1_tarski(k1_enumset1(X1,X1,X1),X2)|~r2_hidden(X1,X2)), inference(spm,[status(thm)],[c_0_70, c_0_71])).
% 0.36/0.58  cnf(c_0_78, negated_conjecture, (esk1_2(esk6_0,X1)=esk3_1(esk6_0)|r1_tarski(esk6_0,X1)), inference(spm,[status(thm)],[c_0_72, c_0_63])).
% 0.36/0.58  cnf(c_0_79, negated_conjecture, (esk3_1(esk5_0)=esk3_1(X1)|esk5_0=k1_xboole_0|v1_xboole_0(X1)|~v1_zfmisc_1(X1)|~r1_tarski(esk6_0,X1)), inference(spm,[status(thm)],[c_0_55, c_0_73])).
% 0.36/0.58  cnf(c_0_80, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_49])).
% 0.36/0.58  cnf(c_0_81, negated_conjecture, (esk5_0!=esk6_0), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.36/0.58  cnf(c_0_82, plain, (X1=k1_xboole_0|v1_xboole_0(X2)|~r1_tarski(X2,esk3_1(X1))|~r1_tarski(X2,X1)), inference(spm,[status(thm)],[c_0_74, c_0_75])).
% 0.36/0.58  cnf(c_0_83, plain, (~r2_hidden(X1,k1_xboole_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_76, c_0_77]), c_0_41])).
% 0.36/0.58  cnf(c_0_84, negated_conjecture, (r1_tarski(esk6_0,X1)|~r2_hidden(esk3_1(esk6_0),X1)), inference(spm,[status(thm)],[c_0_70, c_0_78])).
% 0.36/0.58  cnf(c_0_85, negated_conjecture, (esk5_0=k1_xboole_0|v1_xboole_0(X1)|r2_hidden(esk3_1(X1),esk5_0)|~v1_zfmisc_1(X1)|~r1_tarski(esk6_0,X1)), inference(spm,[status(thm)],[c_0_31, c_0_79])).
% 0.36/0.58  cnf(c_0_86, negated_conjecture, (~r1_tarski(esk6_0,esk5_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_80, c_0_45]), c_0_81])).
% 0.36/0.58  cnf(c_0_87, plain, (v1_xboole_0(X1)|~r1_tarski(X1,k1_enumset1(X2,X2,X2))|~r1_tarski(X1,X2)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_82, c_0_46]), c_0_41])).
% 0.36/0.58  cnf(c_0_88, plain, (r1_tarski(k1_xboole_0,X1)), inference(spm,[status(thm)],[c_0_83, c_0_63])).
% 0.36/0.58  cnf(c_0_89, negated_conjecture, (~v1_xboole_0(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.36/0.58  cnf(c_0_90, negated_conjecture, (esk5_0=k1_xboole_0), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_84, c_0_85]), c_0_65]), c_0_57])]), c_0_86]), c_0_66])).
% 0.36/0.58  cnf(c_0_91, plain, (v1_xboole_0(k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_87, c_0_88]), c_0_88])])).
% 0.36/0.58  cnf(c_0_92, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_89, c_0_90]), c_0_91])]), ['proof']).
% 0.36/0.58  # SZS output end CNFRefutation
% 0.36/0.58  # Proof object total steps             : 93
% 0.36/0.58  # Proof object clause steps            : 64
% 0.36/0.58  # Proof object formula steps           : 29
% 0.36/0.58  # Proof object conjectures             : 22
% 0.36/0.58  # Proof object clause conjectures      : 19
% 0.36/0.58  # Proof object formula conjectures     : 3
% 0.36/0.58  # Proof object initial clauses used    : 23
% 0.36/0.58  # Proof object initial formulas used   : 14
% 0.36/0.58  # Proof object generating inferences   : 32
% 0.36/0.58  # Proof object simplifying inferences  : 27
% 0.36/0.58  # Training examples: 0 positive, 0 negative
% 0.36/0.58  # Parsed axioms                        : 14
% 0.36/0.58  # Removed by relevancy pruning/SinE    : 0
% 0.36/0.58  # Initial clauses                      : 28
% 0.36/0.58  # Removed in clause preprocessing      : 3
% 0.36/0.58  # Initial clauses in saturation        : 25
% 0.36/0.58  # Processed clauses                    : 978
% 0.36/0.58  # ...of these trivial                  : 3
% 0.36/0.58  # ...subsumed                          : 559
% 0.36/0.58  # ...remaining for further processing  : 416
% 0.36/0.58  # Other redundant clauses eliminated   : 105
% 0.36/0.58  # Clauses deleted for lack of memory   : 0
% 0.36/0.58  # Backward-subsumed                    : 18
% 0.36/0.58  # Backward-rewritten                   : 196
% 0.36/0.58  # Generated clauses                    : 6987
% 0.36/0.58  # ...of the previous two non-trivial   : 6768
% 0.36/0.58  # Contextual simplify-reflections      : 4
% 0.36/0.58  # Paramodulations                      : 6871
% 0.36/0.58  # Factorizations                       : 11
% 0.36/0.58  # Equation resolutions                 : 105
% 0.36/0.58  # Propositional unsat checks           : 0
% 0.36/0.58  #    Propositional check models        : 0
% 0.36/0.58  #    Propositional check unsatisfiable : 0
% 0.36/0.58  #    Propositional clauses             : 0
% 0.36/0.58  #    Propositional clauses after purity: 0
% 0.36/0.58  #    Propositional unsat core size     : 0
% 0.36/0.58  #    Propositional preprocessing time  : 0.000
% 0.36/0.58  #    Propositional encoding time       : 0.000
% 0.36/0.58  #    Propositional solver time         : 0.000
% 0.36/0.58  #    Success case prop preproc time    : 0.000
% 0.36/0.58  #    Success case prop encoding time   : 0.000
% 0.36/0.58  #    Success case prop solver time     : 0.000
% 0.36/0.58  # Current number of processed clauses  : 173
% 0.36/0.58  #    Positive orientable unit clauses  : 10
% 0.36/0.58  #    Positive unorientable unit clauses: 0
% 0.36/0.58  #    Negative unit clauses             : 6
% 0.36/0.58  #    Non-unit-clauses                  : 157
% 0.36/0.58  # Current number of unprocessed clauses: 5753
% 0.36/0.58  # ...number of literals in the above   : 35201
% 0.36/0.58  # Current number of archived formulas  : 0
% 0.36/0.58  # Current number of archived clauses   : 242
% 0.36/0.58  # Clause-clause subsumption calls (NU) : 20565
% 0.36/0.58  # Rec. Clause-clause subsumption calls : 5529
% 0.36/0.58  # Non-unit clause-clause subsumptions  : 334
% 0.36/0.58  # Unit Clause-clause subsumption calls : 45
% 0.36/0.58  # Rewrite failures with RHS unbound    : 0
% 0.36/0.58  # BW rewrite match attempts            : 4
% 0.36/0.58  # BW rewrite match successes           : 1
% 0.36/0.58  # Condensation attempts                : 0
% 0.36/0.58  # Condensation successes               : 0
% 0.36/0.58  # Termbank termtop insertions          : 131954
% 0.36/0.58  
% 0.36/0.58  # -------------------------------------------------
% 0.36/0.58  # User time                : 0.221 s
% 0.36/0.58  # System time              : 0.007 s
% 0.36/0.58  # Total time               : 0.228 s
% 0.36/0.58  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
