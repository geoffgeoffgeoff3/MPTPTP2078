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
% DateTime   : Thu Dec  3 10:45:15 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   87 ( 830 expanded)
%              Number of clauses        :   48 ( 363 expanded)
%              Number of leaves         :   19 ( 215 expanded)
%              Depth                    :   11
%              Number of atoms          :  146 (1813 expanded)
%              Number of equality atoms :   70 ( 635 expanded)
%              Maximal formula depth    :   13 (   3 average)
%              Maximal clause size      :   12 (   1 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t25_subset_1,conjecture,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k4_subset_1(X1,X2,k3_subset_1(X1,X2)) = k2_subset_1(X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t25_subset_1)).

fof(d2_subset_1,axiom,(
    ! [X1,X2] :
      ( ( ~ v1_xboole_0(X1)
       => ( m1_subset_1(X2,X1)
        <=> r2_hidden(X2,X1) ) )
      & ( v1_xboole_0(X1)
       => ( m1_subset_1(X2,X1)
        <=> v1_xboole_0(X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_subset_1)).

fof(dt_k3_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => m1_subset_1(k3_subset_1(X1,X2),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k3_subset_1)).

fof(fc1_subset_1,axiom,(
    ! [X1] : ~ v1_xboole_0(k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_subset_1)).

fof(d1_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( X2 = k1_zfmisc_1(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> r1_tarski(X3,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_zfmisc_1)).

fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(d5_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k3_subset_1(X1,X2) = k4_xboole_0(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d5_subset_1)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t28_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k3_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).

fof(commutativity_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(redefinition_k4_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X1))
        & m1_subset_1(X3,k1_zfmisc_1(X1)) )
     => k4_subset_1(X1,X2,X3) = k2_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k4_subset_1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(t2_xboole_1,axiom,(
    ! [X1] : r1_tarski(k1_xboole_0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_xboole_1)).

fof(t48_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).

fof(d4_subset_1,axiom,(
    ! [X1] : k2_subset_1(X1) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_subset_1)).

fof(t52_xboole_1,axiom,(
    ! [X1,X2,X3] : k4_xboole_0(X1,k4_xboole_0(X2,X3)) = k2_xboole_0(k4_xboole_0(X1,X2),k3_xboole_0(X1,X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t52_xboole_1)).

fof(t5_boole,axiom,(
    ! [X1] : k5_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t5_boole)).

fof(t92_xboole_1,axiom,(
    ! [X1] : k5_xboole_0(X1,X1) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t92_xboole_1)).

fof(c_0_19,negated_conjecture,(
    ~ ! [X1,X2] :
        ( m1_subset_1(X2,k1_zfmisc_1(X1))
       => k4_subset_1(X1,X2,k3_subset_1(X1,X2)) = k2_subset_1(X1) ) ),
    inference(assume_negation,[status(cth)],[t25_subset_1])).

fof(c_0_20,plain,(
    ! [X34,X35] :
      ( ( ~ m1_subset_1(X35,X34)
        | r2_hidden(X35,X34)
        | v1_xboole_0(X34) )
      & ( ~ r2_hidden(X35,X34)
        | m1_subset_1(X35,X34)
        | v1_xboole_0(X34) )
      & ( ~ m1_subset_1(X35,X34)
        | v1_xboole_0(X35)
        | ~ v1_xboole_0(X34) )
      & ( ~ v1_xboole_0(X35)
        | m1_subset_1(X35,X34)
        | ~ v1_xboole_0(X34) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d2_subset_1])])])])).

fof(c_0_21,plain,(
    ! [X39,X40] :
      ( ~ m1_subset_1(X40,k1_zfmisc_1(X39))
      | m1_subset_1(k3_subset_1(X39,X40),k1_zfmisc_1(X39)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k3_subset_1])])).

fof(c_0_22,plain,(
    ! [X41] : ~ v1_xboole_0(k1_zfmisc_1(X41)) ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[fc1_subset_1])])).

fof(c_0_23,plain,(
    ! [X25,X26,X27,X28,X29,X30] :
      ( ( ~ r2_hidden(X27,X26)
        | r1_tarski(X27,X25)
        | X26 != k1_zfmisc_1(X25) )
      & ( ~ r1_tarski(X28,X25)
        | r2_hidden(X28,X26)
        | X26 != k1_zfmisc_1(X25) )
      & ( ~ r2_hidden(esk1_2(X29,X30),X30)
        | ~ r1_tarski(esk1_2(X29,X30),X29)
        | X30 = k1_zfmisc_1(X29) )
      & ( r2_hidden(esk1_2(X29,X30),X30)
        | r1_tarski(esk1_2(X29,X30),X29)
        | X30 = k1_zfmisc_1(X29) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_zfmisc_1])])])])])])).

fof(c_0_24,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(esk2_0))
    & k4_subset_1(esk2_0,esk3_0,k3_subset_1(esk2_0,esk3_0)) != k2_subset_1(esk2_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_19])])])).

cnf(c_0_25,plain,
    ( r2_hidden(X1,X2)
    | v1_xboole_0(X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_26,plain,
    ( m1_subset_1(k3_subset_1(X2,X1),k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_27,plain,
    ( ~ v1_xboole_0(k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_28,plain,
    ( r1_tarski(X1,X3)
    | ~ r2_hidden(X1,X2)
    | X2 != k1_zfmisc_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_29,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

fof(c_0_30,plain,(
    ! [X32,X33] : k3_tarski(k2_tarski(X32,X33)) = k2_xboole_0(X32,X33) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

fof(c_0_31,plain,(
    ! [X20,X21] : k1_enumset1(X20,X20,X21) = k2_tarski(X20,X21) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

cnf(c_0_32,plain,
    ( r2_hidden(k3_subset_1(X1,X2),k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_26]),c_0_27])).

fof(c_0_33,plain,(
    ! [X37,X38] :
      ( ~ m1_subset_1(X38,k1_zfmisc_1(X37))
      | k3_subset_1(X37,X38) = k4_xboole_0(X37,X38) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_subset_1])])).

fof(c_0_34,plain,(
    ! [X6,X7] : k4_xboole_0(X6,X7) = k5_xboole_0(X6,k3_xboole_0(X6,X7)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_35,plain,(
    ! [X8,X9] :
      ( ~ r1_tarski(X8,X9)
      | k3_xboole_0(X8,X9) = X8 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).

cnf(c_0_36,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(X1,k1_zfmisc_1(X2)) ),
    inference(er,[status(thm)],[c_0_28])).

cnf(c_0_37,negated_conjecture,
    ( r2_hidden(esk3_0,k1_zfmisc_1(esk2_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_29]),c_0_27])).

fof(c_0_38,plain,(
    ! [X4,X5] : k3_xboole_0(X4,X5) = k3_xboole_0(X5,X4) ),
    inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).

fof(c_0_39,plain,(
    ! [X42,X43,X44] :
      ( ~ m1_subset_1(X43,k1_zfmisc_1(X42))
      | ~ m1_subset_1(X44,k1_zfmisc_1(X42))
      | k4_subset_1(X42,X43,X44) = k2_xboole_0(X43,X44) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).

cnf(c_0_40,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_41,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

fof(c_0_42,plain,(
    ! [X22,X23,X24] : k2_enumset1(X22,X22,X23,X24) = k1_enumset1(X22,X23,X24) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

cnf(c_0_43,negated_conjecture,
    ( r2_hidden(k3_subset_1(esk2_0,esk3_0),k1_zfmisc_1(esk2_0)) ),
    inference(spm,[status(thm)],[c_0_32,c_0_29])).

cnf(c_0_44,plain,
    ( k3_subset_1(X2,X1) = k4_xboole_0(X2,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_45,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_46,plain,
    ( k3_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_47,negated_conjecture,
    ( r1_tarski(esk3_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_36,c_0_37])).

cnf(c_0_48,plain,
    ( k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

fof(c_0_49,plain,(
    ! [X10] : r1_tarski(k1_xboole_0,X10) ),
    inference(variable_rename,[status(thm)],[t2_xboole_1])).

cnf(c_0_50,plain,
    ( k4_subset_1(X2,X1,X3) = k2_xboole_0(X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_51,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_40,c_0_41])).

cnf(c_0_52,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

fof(c_0_53,plain,(
    ! [X11,X12] : k4_xboole_0(X11,k4_xboole_0(X11,X12)) = k3_xboole_0(X11,X12) ),
    inference(variable_rename,[status(thm)],[t48_xboole_1])).

cnf(c_0_54,negated_conjecture,
    ( r1_tarski(k3_subset_1(esk2_0,esk3_0),esk2_0) ),
    inference(spm,[status(thm)],[c_0_36,c_0_43])).

cnf(c_0_55,plain,
    ( k3_subset_1(X2,X1) = k5_xboole_0(X2,k3_xboole_0(X2,X1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[c_0_44,c_0_45])).

cnf(c_0_56,negated_conjecture,
    ( k3_xboole_0(esk2_0,esk3_0) = esk3_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46,c_0_47]),c_0_48])).

cnf(c_0_57,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_49])).

fof(c_0_58,plain,(
    ! [X36] : k2_subset_1(X36) = X36 ),
    inference(variable_rename,[status(thm)],[d4_subset_1])).

cnf(c_0_59,plain,
    ( k4_subset_1(X2,X1,X3) = k3_tarski(k2_enumset1(X1,X1,X1,X3))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_50,c_0_51]),c_0_52])).

fof(c_0_60,plain,(
    ! [X13,X14,X15] : k4_xboole_0(X13,k4_xboole_0(X14,X15)) = k2_xboole_0(k4_xboole_0(X13,X14),k3_xboole_0(X13,X15)) ),
    inference(variable_rename,[status(thm)],[t52_xboole_1])).

cnf(c_0_61,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_53])).

cnf(c_0_62,negated_conjecture,
    ( k3_xboole_0(esk2_0,k3_subset_1(esk2_0,esk3_0)) = k3_subset_1(esk2_0,esk3_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46,c_0_54]),c_0_48])).

cnf(c_0_63,negated_conjecture,
    ( k3_subset_1(esk2_0,esk3_0) = k5_xboole_0(esk2_0,esk3_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_29]),c_0_56])).

cnf(c_0_64,plain,
    ( k3_xboole_0(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_46,c_0_57])).

fof(c_0_65,plain,(
    ! [X16] : k5_xboole_0(X16,k1_xboole_0) = X16 ),
    inference(variable_rename,[status(thm)],[t5_boole])).

cnf(c_0_66,negated_conjecture,
    ( k4_subset_1(esk2_0,esk3_0,k3_subset_1(esk2_0,esk3_0)) != k2_subset_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_67,plain,
    ( k2_subset_1(X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_68,plain,
    ( k4_subset_1(X1,X2,k3_subset_1(X1,X3)) = k3_tarski(k2_enumset1(X2,X2,X2,k3_subset_1(X1,X3)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_59,c_0_26])).

cnf(c_0_69,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X2,X3)) = k2_xboole_0(k4_xboole_0(X1,X2),k3_xboole_0(X1,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_60])).

cnf(c_0_70,plain,
    ( k5_xboole_0(X1,k3_xboole_0(X1,k5_xboole_0(X1,k3_xboole_0(X1,X2)))) = k3_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_61,c_0_45]),c_0_45])).

cnf(c_0_71,negated_conjecture,
    ( k3_xboole_0(esk2_0,k5_xboole_0(esk2_0,esk3_0)) = k5_xboole_0(esk2_0,esk3_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_62,c_0_63]),c_0_63])).

cnf(c_0_72,plain,
    ( k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_48,c_0_64])).

cnf(c_0_73,plain,
    ( k5_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_65])).

cnf(c_0_74,negated_conjecture,
    ( k4_subset_1(esk2_0,esk3_0,k3_subset_1(esk2_0,esk3_0)) != esk2_0 ),
    inference(rw,[status(thm)],[c_0_66,c_0_67])).

cnf(c_0_75,negated_conjecture,
    ( k4_subset_1(esk2_0,esk3_0,k3_subset_1(esk2_0,X1)) = k3_tarski(k2_enumset1(esk3_0,esk3_0,esk3_0,k3_subset_1(esk2_0,X1)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(esk2_0)) ),
    inference(spm,[status(thm)],[c_0_68,c_0_29])).

cnf(c_0_76,plain,
    ( k5_xboole_0(X1,k3_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X2,X3)))) = k3_tarski(k2_enumset1(k5_xboole_0(X1,k3_xboole_0(X1,X2)),k5_xboole_0(X1,k3_xboole_0(X1,X2)),k5_xboole_0(X1,k3_xboole_0(X1,X2)),k3_xboole_0(X1,X3))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_69,c_0_51]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_52])).

cnf(c_0_77,negated_conjecture,
    ( k5_xboole_0(esk2_0,k5_xboole_0(esk2_0,esk3_0)) = esk3_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70,c_0_56]),c_0_71])).

cnf(c_0_78,plain,
    ( k5_xboole_0(X1,k3_xboole_0(X1,X1)) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70,c_0_72]),c_0_73])).

fof(c_0_79,plain,(
    ! [X17] : k5_xboole_0(X17,X17) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t92_xboole_1])).

cnf(c_0_80,negated_conjecture,
    ( k4_subset_1(esk2_0,esk3_0,k5_xboole_0(esk2_0,esk3_0)) != esk2_0 ),
    inference(rw,[status(thm)],[c_0_74,c_0_63])).

cnf(c_0_81,negated_conjecture,
    ( k4_subset_1(esk2_0,esk3_0,k5_xboole_0(esk2_0,esk3_0)) = k3_tarski(k2_enumset1(esk3_0,esk3_0,esk3_0,k5_xboole_0(esk2_0,esk3_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75,c_0_29]),c_0_63]),c_0_63])).

cnf(c_0_82,negated_conjecture,
    ( k3_tarski(k2_enumset1(esk3_0,esk3_0,esk3_0,k3_xboole_0(esk2_0,X1))) = k5_xboole_0(esk2_0,k3_xboole_0(esk2_0,k5_xboole_0(k5_xboole_0(esk2_0,esk3_0),k3_xboole_0(k5_xboole_0(esk2_0,esk3_0),X1)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76,c_0_71]),c_0_77]),c_0_77]),c_0_77])).

cnf(c_0_83,plain,
    ( k3_xboole_0(X1,X1) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70,c_0_78]),c_0_72]),c_0_73])).

cnf(c_0_84,plain,
    ( k5_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_79])).

cnf(c_0_85,negated_conjecture,
    ( k3_tarski(k2_enumset1(esk3_0,esk3_0,esk3_0,k5_xboole_0(esk2_0,esk3_0))) != esk2_0 ),
    inference(rw,[status(thm)],[c_0_80,c_0_81])).

cnf(c_0_86,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_82,c_0_71]),c_0_83]),c_0_84]),c_0_72]),c_0_73]),c_0_85]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n012.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 18:57:52 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.39  # AutoSched0-Mode selected heuristic G_E___107_B42_F1_PI_SE_Q4_CS_SP_PS_S0YI
% 0.13/0.39  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.13/0.39  #
% 0.13/0.39  # Preprocessing time       : 0.028 s
% 0.13/0.39  # Presaturation interreduction done
% 0.13/0.39  
% 0.13/0.39  # Proof found!
% 0.13/0.39  # SZS status Theorem
% 0.13/0.39  # SZS output start CNFRefutation
% 0.13/0.39  fof(t25_subset_1, conjecture, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k4_subset_1(X1,X2,k3_subset_1(X1,X2))=k2_subset_1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t25_subset_1)).
% 0.13/0.39  fof(d2_subset_1, axiom, ![X1, X2]:((~(v1_xboole_0(X1))=>(m1_subset_1(X2,X1)<=>r2_hidden(X2,X1)))&(v1_xboole_0(X1)=>(m1_subset_1(X2,X1)<=>v1_xboole_0(X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d2_subset_1)).
% 0.13/0.39  fof(dt_k3_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>m1_subset_1(k3_subset_1(X1,X2),k1_zfmisc_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k3_subset_1)).
% 0.13/0.39  fof(fc1_subset_1, axiom, ![X1]:~(v1_xboole_0(k1_zfmisc_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc1_subset_1)).
% 0.13/0.39  fof(d1_zfmisc_1, axiom, ![X1, X2]:(X2=k1_zfmisc_1(X1)<=>![X3]:(r2_hidden(X3,X2)<=>r1_tarski(X3,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_zfmisc_1)).
% 0.13/0.39  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.13/0.39  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.13/0.39  fof(d5_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k3_subset_1(X1,X2)=k4_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d5_subset_1)).
% 0.13/0.39  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.13/0.39  fof(t28_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k3_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t28_xboole_1)).
% 0.13/0.39  fof(commutativity_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k3_xboole_0)).
% 0.13/0.39  fof(redefinition_k4_subset_1, axiom, ![X1, X2, X3]:((m1_subset_1(X2,k1_zfmisc_1(X1))&m1_subset_1(X3,k1_zfmisc_1(X1)))=>k4_subset_1(X1,X2,X3)=k2_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k4_subset_1)).
% 0.13/0.39  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.13/0.39  fof(t2_xboole_1, axiom, ![X1]:r1_tarski(k1_xboole_0,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_xboole_1)).
% 0.13/0.39  fof(t48_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t48_xboole_1)).
% 0.13/0.39  fof(d4_subset_1, axiom, ![X1]:k2_subset_1(X1)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', d4_subset_1)).
% 0.13/0.39  fof(t52_xboole_1, axiom, ![X1, X2, X3]:k4_xboole_0(X1,k4_xboole_0(X2,X3))=k2_xboole_0(k4_xboole_0(X1,X2),k3_xboole_0(X1,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t52_xboole_1)).
% 0.13/0.39  fof(t5_boole, axiom, ![X1]:k5_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t5_boole)).
% 0.13/0.39  fof(t92_xboole_1, axiom, ![X1]:k5_xboole_0(X1,X1)=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t92_xboole_1)).
% 0.13/0.39  fof(c_0_19, negated_conjecture, ~(![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k4_subset_1(X1,X2,k3_subset_1(X1,X2))=k2_subset_1(X1))), inference(assume_negation,[status(cth)],[t25_subset_1])).
% 0.13/0.39  fof(c_0_20, plain, ![X34, X35]:(((~m1_subset_1(X35,X34)|r2_hidden(X35,X34)|v1_xboole_0(X34))&(~r2_hidden(X35,X34)|m1_subset_1(X35,X34)|v1_xboole_0(X34)))&((~m1_subset_1(X35,X34)|v1_xboole_0(X35)|~v1_xboole_0(X34))&(~v1_xboole_0(X35)|m1_subset_1(X35,X34)|~v1_xboole_0(X34)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d2_subset_1])])])])).
% 0.13/0.39  fof(c_0_21, plain, ![X39, X40]:(~m1_subset_1(X40,k1_zfmisc_1(X39))|m1_subset_1(k3_subset_1(X39,X40),k1_zfmisc_1(X39))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k3_subset_1])])).
% 0.13/0.39  fof(c_0_22, plain, ![X41]:~v1_xboole_0(k1_zfmisc_1(X41)), inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[fc1_subset_1])])).
% 0.13/0.39  fof(c_0_23, plain, ![X25, X26, X27, X28, X29, X30]:(((~r2_hidden(X27,X26)|r1_tarski(X27,X25)|X26!=k1_zfmisc_1(X25))&(~r1_tarski(X28,X25)|r2_hidden(X28,X26)|X26!=k1_zfmisc_1(X25)))&((~r2_hidden(esk1_2(X29,X30),X30)|~r1_tarski(esk1_2(X29,X30),X29)|X30=k1_zfmisc_1(X29))&(r2_hidden(esk1_2(X29,X30),X30)|r1_tarski(esk1_2(X29,X30),X29)|X30=k1_zfmisc_1(X29)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_zfmisc_1])])])])])])).
% 0.13/0.39  fof(c_0_24, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(esk2_0))&k4_subset_1(esk2_0,esk3_0,k3_subset_1(esk2_0,esk3_0))!=k2_subset_1(esk2_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_19])])])).
% 0.13/0.39  cnf(c_0_25, plain, (r2_hidden(X1,X2)|v1_xboole_0(X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.39  cnf(c_0_26, plain, (m1_subset_1(k3_subset_1(X2,X1),k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.13/0.39  cnf(c_0_27, plain, (~v1_xboole_0(k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.13/0.39  cnf(c_0_28, plain, (r1_tarski(X1,X3)|~r2_hidden(X1,X2)|X2!=k1_zfmisc_1(X3)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.39  cnf(c_0_29, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.39  fof(c_0_30, plain, ![X32, X33]:k3_tarski(k2_tarski(X32,X33))=k2_xboole_0(X32,X33), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.13/0.39  fof(c_0_31, plain, ![X20, X21]:k1_enumset1(X20,X20,X21)=k2_tarski(X20,X21), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.13/0.39  cnf(c_0_32, plain, (r2_hidden(k3_subset_1(X1,X2),k1_zfmisc_1(X1))|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_26]), c_0_27])).
% 0.13/0.39  fof(c_0_33, plain, ![X37, X38]:(~m1_subset_1(X38,k1_zfmisc_1(X37))|k3_subset_1(X37,X38)=k4_xboole_0(X37,X38)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_subset_1])])).
% 0.13/0.39  fof(c_0_34, plain, ![X6, X7]:k4_xboole_0(X6,X7)=k5_xboole_0(X6,k3_xboole_0(X6,X7)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.13/0.39  fof(c_0_35, plain, ![X8, X9]:(~r1_tarski(X8,X9)|k3_xboole_0(X8,X9)=X8), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).
% 0.13/0.39  cnf(c_0_36, plain, (r1_tarski(X1,X2)|~r2_hidden(X1,k1_zfmisc_1(X2))), inference(er,[status(thm)],[c_0_28])).
% 0.13/0.39  cnf(c_0_37, negated_conjecture, (r2_hidden(esk3_0,k1_zfmisc_1(esk2_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_29]), c_0_27])).
% 0.13/0.39  fof(c_0_38, plain, ![X4, X5]:k3_xboole_0(X4,X5)=k3_xboole_0(X5,X4), inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).
% 0.13/0.39  fof(c_0_39, plain, ![X42, X43, X44]:(~m1_subset_1(X43,k1_zfmisc_1(X42))|~m1_subset_1(X44,k1_zfmisc_1(X42))|k4_subset_1(X42,X43,X44)=k2_xboole_0(X43,X44)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).
% 0.13/0.39  cnf(c_0_40, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.13/0.39  cnf(c_0_41, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.13/0.39  fof(c_0_42, plain, ![X22, X23, X24]:k2_enumset1(X22,X22,X23,X24)=k1_enumset1(X22,X23,X24), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.13/0.39  cnf(c_0_43, negated_conjecture, (r2_hidden(k3_subset_1(esk2_0,esk3_0),k1_zfmisc_1(esk2_0))), inference(spm,[status(thm)],[c_0_32, c_0_29])).
% 0.13/0.39  cnf(c_0_44, plain, (k3_subset_1(X2,X1)=k4_xboole_0(X2,X1)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.13/0.39  cnf(c_0_45, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.13/0.39  cnf(c_0_46, plain, (k3_xboole_0(X1,X2)=X1|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.13/0.39  cnf(c_0_47, negated_conjecture, (r1_tarski(esk3_0,esk2_0)), inference(spm,[status(thm)],[c_0_36, c_0_37])).
% 0.13/0.39  cnf(c_0_48, plain, (k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.13/0.39  fof(c_0_49, plain, ![X10]:r1_tarski(k1_xboole_0,X10), inference(variable_rename,[status(thm)],[t2_xboole_1])).
% 0.13/0.39  cnf(c_0_50, plain, (k4_subset_1(X2,X1,X3)=k2_xboole_0(X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.13/0.39  cnf(c_0_51, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_40, c_0_41])).
% 0.13/0.39  cnf(c_0_52, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.13/0.39  fof(c_0_53, plain, ![X11, X12]:k4_xboole_0(X11,k4_xboole_0(X11,X12))=k3_xboole_0(X11,X12), inference(variable_rename,[status(thm)],[t48_xboole_1])).
% 0.13/0.39  cnf(c_0_54, negated_conjecture, (r1_tarski(k3_subset_1(esk2_0,esk3_0),esk2_0)), inference(spm,[status(thm)],[c_0_36, c_0_43])).
% 0.13/0.39  cnf(c_0_55, plain, (k3_subset_1(X2,X1)=k5_xboole_0(X2,k3_xboole_0(X2,X1))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[c_0_44, c_0_45])).
% 0.13/0.39  cnf(c_0_56, negated_conjecture, (k3_xboole_0(esk2_0,esk3_0)=esk3_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46, c_0_47]), c_0_48])).
% 0.13/0.39  cnf(c_0_57, plain, (r1_tarski(k1_xboole_0,X1)), inference(split_conjunct,[status(thm)],[c_0_49])).
% 0.13/0.39  fof(c_0_58, plain, ![X36]:k2_subset_1(X36)=X36, inference(variable_rename,[status(thm)],[d4_subset_1])).
% 0.13/0.39  cnf(c_0_59, plain, (k4_subset_1(X2,X1,X3)=k3_tarski(k2_enumset1(X1,X1,X1,X3))|~m1_subset_1(X3,k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_50, c_0_51]), c_0_52])).
% 0.13/0.39  fof(c_0_60, plain, ![X13, X14, X15]:k4_xboole_0(X13,k4_xboole_0(X14,X15))=k2_xboole_0(k4_xboole_0(X13,X14),k3_xboole_0(X13,X15)), inference(variable_rename,[status(thm)],[t52_xboole_1])).
% 0.13/0.39  cnf(c_0_61, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_53])).
% 0.13/0.39  cnf(c_0_62, negated_conjecture, (k3_xboole_0(esk2_0,k3_subset_1(esk2_0,esk3_0))=k3_subset_1(esk2_0,esk3_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46, c_0_54]), c_0_48])).
% 0.13/0.39  cnf(c_0_63, negated_conjecture, (k3_subset_1(esk2_0,esk3_0)=k5_xboole_0(esk2_0,esk3_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_29]), c_0_56])).
% 0.13/0.39  cnf(c_0_64, plain, (k3_xboole_0(k1_xboole_0,X1)=k1_xboole_0), inference(spm,[status(thm)],[c_0_46, c_0_57])).
% 0.13/0.39  fof(c_0_65, plain, ![X16]:k5_xboole_0(X16,k1_xboole_0)=X16, inference(variable_rename,[status(thm)],[t5_boole])).
% 0.13/0.39  cnf(c_0_66, negated_conjecture, (k4_subset_1(esk2_0,esk3_0,k3_subset_1(esk2_0,esk3_0))!=k2_subset_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.39  cnf(c_0_67, plain, (k2_subset_1(X1)=X1), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.13/0.39  cnf(c_0_68, plain, (k4_subset_1(X1,X2,k3_subset_1(X1,X3))=k3_tarski(k2_enumset1(X2,X2,X2,k3_subset_1(X1,X3)))|~m1_subset_1(X2,k1_zfmisc_1(X1))|~m1_subset_1(X3,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_59, c_0_26])).
% 0.13/0.39  cnf(c_0_69, plain, (k4_xboole_0(X1,k4_xboole_0(X2,X3))=k2_xboole_0(k4_xboole_0(X1,X2),k3_xboole_0(X1,X3))), inference(split_conjunct,[status(thm)],[c_0_60])).
% 0.13/0.39  cnf(c_0_70, plain, (k5_xboole_0(X1,k3_xboole_0(X1,k5_xboole_0(X1,k3_xboole_0(X1,X2))))=k3_xboole_0(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_61, c_0_45]), c_0_45])).
% 0.13/0.39  cnf(c_0_71, negated_conjecture, (k3_xboole_0(esk2_0,k5_xboole_0(esk2_0,esk3_0))=k5_xboole_0(esk2_0,esk3_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_62, c_0_63]), c_0_63])).
% 0.13/0.39  cnf(c_0_72, plain, (k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_48, c_0_64])).
% 0.13/0.39  cnf(c_0_73, plain, (k5_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_65])).
% 0.13/0.39  cnf(c_0_74, negated_conjecture, (k4_subset_1(esk2_0,esk3_0,k3_subset_1(esk2_0,esk3_0))!=esk2_0), inference(rw,[status(thm)],[c_0_66, c_0_67])).
% 0.13/0.39  cnf(c_0_75, negated_conjecture, (k4_subset_1(esk2_0,esk3_0,k3_subset_1(esk2_0,X1))=k3_tarski(k2_enumset1(esk3_0,esk3_0,esk3_0,k3_subset_1(esk2_0,X1)))|~m1_subset_1(X1,k1_zfmisc_1(esk2_0))), inference(spm,[status(thm)],[c_0_68, c_0_29])).
% 0.13/0.39  cnf(c_0_76, plain, (k5_xboole_0(X1,k3_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X2,X3))))=k3_tarski(k2_enumset1(k5_xboole_0(X1,k3_xboole_0(X1,X2)),k5_xboole_0(X1,k3_xboole_0(X1,X2)),k5_xboole_0(X1,k3_xboole_0(X1,X2)),k3_xboole_0(X1,X3)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_69, c_0_51]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_52])).
% 0.13/0.39  cnf(c_0_77, negated_conjecture, (k5_xboole_0(esk2_0,k5_xboole_0(esk2_0,esk3_0))=esk3_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70, c_0_56]), c_0_71])).
% 0.13/0.39  cnf(c_0_78, plain, (k5_xboole_0(X1,k3_xboole_0(X1,X1))=k1_xboole_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70, c_0_72]), c_0_73])).
% 0.13/0.39  fof(c_0_79, plain, ![X17]:k5_xboole_0(X17,X17)=k1_xboole_0, inference(variable_rename,[status(thm)],[t92_xboole_1])).
% 0.13/0.39  cnf(c_0_80, negated_conjecture, (k4_subset_1(esk2_0,esk3_0,k5_xboole_0(esk2_0,esk3_0))!=esk2_0), inference(rw,[status(thm)],[c_0_74, c_0_63])).
% 0.13/0.39  cnf(c_0_81, negated_conjecture, (k4_subset_1(esk2_0,esk3_0,k5_xboole_0(esk2_0,esk3_0))=k3_tarski(k2_enumset1(esk3_0,esk3_0,esk3_0,k5_xboole_0(esk2_0,esk3_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75, c_0_29]), c_0_63]), c_0_63])).
% 0.13/0.39  cnf(c_0_82, negated_conjecture, (k3_tarski(k2_enumset1(esk3_0,esk3_0,esk3_0,k3_xboole_0(esk2_0,X1)))=k5_xboole_0(esk2_0,k3_xboole_0(esk2_0,k5_xboole_0(k5_xboole_0(esk2_0,esk3_0),k3_xboole_0(k5_xboole_0(esk2_0,esk3_0),X1))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76, c_0_71]), c_0_77]), c_0_77]), c_0_77])).
% 0.13/0.39  cnf(c_0_83, plain, (k3_xboole_0(X1,X1)=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70, c_0_78]), c_0_72]), c_0_73])).
% 0.13/0.39  cnf(c_0_84, plain, (k5_xboole_0(X1,X1)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_79])).
% 0.13/0.39  cnf(c_0_85, negated_conjecture, (k3_tarski(k2_enumset1(esk3_0,esk3_0,esk3_0,k5_xboole_0(esk2_0,esk3_0)))!=esk2_0), inference(rw,[status(thm)],[c_0_80, c_0_81])).
% 0.13/0.39  cnf(c_0_86, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_82, c_0_71]), c_0_83]), c_0_84]), c_0_72]), c_0_73]), c_0_85]), ['proof']).
% 0.13/0.39  # SZS output end CNFRefutation
% 0.13/0.39  # Proof object total steps             : 87
% 0.13/0.39  # Proof object clause steps            : 48
% 0.13/0.39  # Proof object formula steps           : 39
% 0.13/0.39  # Proof object conjectures             : 21
% 0.13/0.39  # Proof object clause conjectures      : 18
% 0.13/0.39  # Proof object formula conjectures     : 3
% 0.13/0.39  # Proof object initial clauses used    : 20
% 0.13/0.39  # Proof object initial formulas used   : 19
% 0.13/0.39  # Proof object generating inferences   : 18
% 0.13/0.39  # Proof object simplifying inferences  : 37
% 0.13/0.39  # Training examples: 0 positive, 0 negative
% 0.13/0.39  # Parsed axioms                        : 20
% 0.13/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.39  # Initial clauses                      : 27
% 0.13/0.39  # Removed in clause preprocessing      : 5
% 0.13/0.39  # Initial clauses in saturation        : 22
% 0.13/0.39  # Processed clauses                    : 324
% 0.13/0.39  # ...of these trivial                  : 47
% 0.13/0.39  # ...subsumed                          : 65
% 0.13/0.39  # ...remaining for further processing  : 212
% 0.13/0.39  # Other redundant clauses eliminated   : 2
% 0.13/0.39  # Clauses deleted for lack of memory   : 0
% 0.13/0.39  # Backward-subsumed                    : 2
% 0.13/0.39  # Backward-rewritten                   : 22
% 0.13/0.39  # Generated clauses                    : 1122
% 0.13/0.39  # ...of the previous two non-trivial   : 697
% 0.13/0.39  # Contextual simplify-reflections      : 0
% 0.13/0.39  # Paramodulations                      : 1118
% 0.13/0.39  # Factorizations                       : 2
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
% 0.13/0.39  # Current number of processed clauses  : 164
% 0.13/0.39  #    Positive orientable unit clauses  : 62
% 0.13/0.39  #    Positive unorientable unit clauses: 2
% 0.13/0.39  #    Negative unit clauses             : 2
% 0.13/0.39  #    Non-unit-clauses                  : 98
% 0.13/0.39  # Current number of unprocessed clauses: 382
% 0.13/0.39  # ...number of literals in the above   : 702
% 0.13/0.39  # Current number of archived formulas  : 0
% 0.13/0.39  # Current number of archived clauses   : 51
% 0.13/0.39  # Clause-clause subsumption calls (NU) : 1247
% 0.13/0.39  # Rec. Clause-clause subsumption calls : 1028
% 0.13/0.39  # Non-unit clause-clause subsumptions  : 44
% 0.13/0.39  # Unit Clause-clause subsumption calls : 71
% 0.13/0.39  # Rewrite failures with RHS unbound    : 0
% 0.13/0.39  # BW rewrite match attempts            : 197
% 0.13/0.39  # BW rewrite match successes           : 19
% 0.13/0.39  # Condensation attempts                : 0
% 0.13/0.39  # Condensation successes               : 0
% 0.13/0.39  # Termbank termtop insertions          : 20513
% 0.13/0.39  
% 0.13/0.39  # -------------------------------------------------
% 0.13/0.39  # User time                : 0.048 s
% 0.13/0.39  # System time              : 0.005 s
% 0.13/0.39  # Total time               : 0.053 s
% 0.13/0.39  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
