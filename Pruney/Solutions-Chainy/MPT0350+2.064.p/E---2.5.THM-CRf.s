%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:45:23 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :  104 ( 233 expanded)
%              Number of clauses        :   55 ( 101 expanded)
%              Number of leaves         :   24 (  63 expanded)
%              Depth                    :   14
%              Number of atoms          :  162 ( 412 expanded)
%              Number of equality atoms :   88 ( 197 expanded)
%              Maximal formula depth    :   13 (   3 average)
%              Maximal clause size      :   12 (   1 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t25_subset_1,conjecture,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k4_subset_1(X1,X2,k3_subset_1(X1,X2)) = k2_subset_1(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t25_subset_1)).

fof(d2_subset_1,axiom,(
    ! [X1,X2] :
      ( ( ~ v1_xboole_0(X1)
       => ( m1_subset_1(X2,X1)
        <=> r2_hidden(X2,X1) ) )
      & ( v1_xboole_0(X1)
       => ( m1_subset_1(X2,X1)
        <=> v1_xboole_0(X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d2_subset_1)).

fof(fc1_subset_1,axiom,(
    ! [X1] : ~ v1_xboole_0(k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_subset_1)).

fof(d1_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( X2 = k1_zfmisc_1(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> r1_tarski(X3,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_zfmisc_1)).

fof(t36_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k4_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t36_xboole_1)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t28_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k3_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_xboole_1)).

fof(commutativity_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(t92_xboole_1,axiom,(
    ! [X1] : k5_xboole_0(X1,X1) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t92_xboole_1)).

fof(t112_xboole_1,axiom,(
    ! [X1,X2,X3] : k5_xboole_0(k3_xboole_0(X1,X2),k3_xboole_0(X3,X2)) = k3_xboole_0(k5_xboole_0(X1,X3),X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t112_xboole_1)).

fof(d5_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k3_subset_1(X1,X2) = k4_xboole_0(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_subset_1)).

fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(d4_subset_1,axiom,(
    ! [X1] : k2_subset_1(X1) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_subset_1)).

fof(redefinition_k4_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X1))
        & m1_subset_1(X3,k1_zfmisc_1(X1)) )
     => k4_subset_1(X1,X2,X3) = k2_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k4_subset_1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t72_enumset1)).

fof(t73_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t73_enumset1)).

fof(t74_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] : k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t74_enumset1)).

fof(t75_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7] : k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t75_enumset1)).

fof(t94_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k5_xboole_0(k5_xboole_0(X1,X2),k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t94_xboole_1)).

fof(t5_boole,axiom,(
    ! [X1] : k5_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_boole)).

fof(t91_xboole_1,axiom,(
    ! [X1,X2,X3] : k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t91_xboole_1)).

fof(commutativity_k5_xboole_0,axiom,(
    ! [X1,X2] : k5_xboole_0(X1,X2) = k5_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k5_xboole_0)).

fof(c_0_24,negated_conjecture,(
    ~ ! [X1,X2] :
        ( m1_subset_1(X2,k1_zfmisc_1(X1))
       => k4_subset_1(X1,X2,k3_subset_1(X1,X2)) = k2_subset_1(X1) ) ),
    inference(assume_negation,[status(cth)],[t25_subset_1])).

fof(c_0_25,plain,(
    ! [X64,X65] :
      ( ( ~ m1_subset_1(X65,X64)
        | r2_hidden(X65,X64)
        | v1_xboole_0(X64) )
      & ( ~ r2_hidden(X65,X64)
        | m1_subset_1(X65,X64)
        | v1_xboole_0(X64) )
      & ( ~ m1_subset_1(X65,X64)
        | v1_xboole_0(X65)
        | ~ v1_xboole_0(X64) )
      & ( ~ v1_xboole_0(X65)
        | m1_subset_1(X65,X64)
        | ~ v1_xboole_0(X64) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d2_subset_1])])])])).

fof(c_0_26,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(esk2_0))
    & k4_subset_1(esk2_0,esk3_0,k3_subset_1(esk2_0,esk3_0)) != k2_subset_1(esk2_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_24])])])).

fof(c_0_27,plain,(
    ! [X69] : ~ v1_xboole_0(k1_zfmisc_1(X69)) ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[fc1_subset_1])])).

fof(c_0_28,plain,(
    ! [X55,X56,X57,X58,X59,X60] :
      ( ( ~ r2_hidden(X57,X56)
        | r1_tarski(X57,X55)
        | X56 != k1_zfmisc_1(X55) )
      & ( ~ r1_tarski(X58,X55)
        | r2_hidden(X58,X56)
        | X56 != k1_zfmisc_1(X55) )
      & ( ~ r2_hidden(esk1_2(X59,X60),X60)
        | ~ r1_tarski(esk1_2(X59,X60),X59)
        | X60 = k1_zfmisc_1(X59) )
      & ( r2_hidden(esk1_2(X59,X60),X60)
        | r1_tarski(esk1_2(X59,X60),X59)
        | X60 = k1_zfmisc_1(X59) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_zfmisc_1])])])])])])).

cnf(c_0_29,plain,
    ( r2_hidden(X1,X2)
    | v1_xboole_0(X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_30,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_31,plain,
    ( ~ v1_xboole_0(k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_32,plain,
    ( r1_tarski(X1,X3)
    | ~ r2_hidden(X1,X2)
    | X2 != k1_zfmisc_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_33,negated_conjecture,
    ( r2_hidden(esk3_0,k1_zfmisc_1(esk2_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30]),c_0_31])).

fof(c_0_34,plain,(
    ! [X19,X20] : r1_tarski(k4_xboole_0(X19,X20),X19) ),
    inference(variable_rename,[status(thm)],[t36_xboole_1])).

fof(c_0_35,plain,(
    ! [X12,X13] : k4_xboole_0(X12,X13) = k5_xboole_0(X12,k3_xboole_0(X12,X13)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_36,plain,(
    ! [X17,X18] :
      ( ~ r1_tarski(X17,X18)
      | k3_xboole_0(X17,X18) = X17 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).

cnf(c_0_37,negated_conjecture,
    ( r1_tarski(esk3_0,X1)
    | k1_zfmisc_1(esk2_0) != k1_zfmisc_1(X1) ),
    inference(spm,[status(thm)],[c_0_32,c_0_33])).

fof(c_0_38,plain,(
    ! [X8,X9] : k3_xboole_0(X8,X9) = k3_xboole_0(X9,X8) ),
    inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).

cnf(c_0_39,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_40,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_41,plain,
    ( k3_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_42,negated_conjecture,
    ( r1_tarski(esk3_0,esk2_0) ),
    inference(er,[status(thm)],[c_0_37])).

cnf(c_0_43,plain,
    ( k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

fof(c_0_44,plain,(
    ! [X25] : k5_xboole_0(X25,X25) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t92_xboole_1])).

fof(c_0_45,plain,(
    ! [X14,X15,X16] : k5_xboole_0(k3_xboole_0(X14,X15),k3_xboole_0(X16,X15)) = k3_xboole_0(k5_xboole_0(X14,X16),X15) ),
    inference(variable_rename,[status(thm)],[t112_xboole_1])).

fof(c_0_46,plain,(
    ! [X67,X68] :
      ( ~ m1_subset_1(X68,k1_zfmisc_1(X67))
      | k3_subset_1(X67,X68) = k4_xboole_0(X67,X68) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_subset_1])])).

fof(c_0_47,plain,(
    ! [X62,X63] : k3_tarski(k2_tarski(X62,X63)) = k2_xboole_0(X62,X63) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

fof(c_0_48,plain,(
    ! [X28,X29] : k1_enumset1(X28,X28,X29) = k2_tarski(X28,X29) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

cnf(c_0_49,plain,
    ( r1_tarski(k5_xboole_0(X1,k3_xboole_0(X1,X2)),X1) ),
    inference(rw,[status(thm)],[c_0_39,c_0_40])).

cnf(c_0_50,negated_conjecture,
    ( k3_xboole_0(esk2_0,esk3_0) = esk3_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_42]),c_0_43])).

cnf(c_0_51,plain,
    ( k5_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_52,plain,
    ( k5_xboole_0(k3_xboole_0(X1,X2),k3_xboole_0(X3,X2)) = k3_xboole_0(k5_xboole_0(X1,X3),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

fof(c_0_53,plain,(
    ! [X66] : k2_subset_1(X66) = X66 ),
    inference(variable_rename,[status(thm)],[d4_subset_1])).

cnf(c_0_54,plain,
    ( k3_subset_1(X2,X1) = k4_xboole_0(X2,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_46])).

fof(c_0_55,plain,(
    ! [X70,X71,X72] :
      ( ~ m1_subset_1(X71,k1_zfmisc_1(X70))
      | ~ m1_subset_1(X72,k1_zfmisc_1(X70))
      | k4_subset_1(X70,X71,X72) = k2_xboole_0(X71,X72) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).

cnf(c_0_56,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_57,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_48])).

fof(c_0_58,plain,(
    ! [X30,X31,X32] : k2_enumset1(X30,X30,X31,X32) = k1_enumset1(X30,X31,X32) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_59,plain,(
    ! [X33,X34,X35,X36] : k3_enumset1(X33,X33,X34,X35,X36) = k2_enumset1(X33,X34,X35,X36) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_60,plain,(
    ! [X37,X38,X39,X40,X41] : k4_enumset1(X37,X37,X38,X39,X40,X41) = k3_enumset1(X37,X38,X39,X40,X41) ),
    inference(variable_rename,[status(thm)],[t73_enumset1])).

fof(c_0_61,plain,(
    ! [X42,X43,X44,X45,X46,X47] : k5_enumset1(X42,X42,X43,X44,X45,X46,X47) = k4_enumset1(X42,X43,X44,X45,X46,X47) ),
    inference(variable_rename,[status(thm)],[t74_enumset1])).

fof(c_0_62,plain,(
    ! [X48,X49,X50,X51,X52,X53,X54] : k6_enumset1(X48,X48,X49,X50,X51,X52,X53,X54) = k5_enumset1(X48,X49,X50,X51,X52,X53,X54) ),
    inference(variable_rename,[status(thm)],[t75_enumset1])).

cnf(c_0_63,plain,
    ( r2_hidden(X1,X3)
    | ~ r1_tarski(X1,X2)
    | X3 != k1_zfmisc_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_64,negated_conjecture,
    ( r1_tarski(k5_xboole_0(esk2_0,esk3_0),esk2_0) ),
    inference(spm,[status(thm)],[c_0_49,c_0_50])).

fof(c_0_65,plain,(
    ! [X26,X27] : k2_xboole_0(X26,X27) = k5_xboole_0(k5_xboole_0(X26,X27),k3_xboole_0(X26,X27)) ),
    inference(variable_rename,[status(thm)],[t94_xboole_1])).

cnf(c_0_66,plain,
    ( k3_xboole_0(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_52]),c_0_51])).

fof(c_0_67,plain,(
    ! [X21] : k5_xboole_0(X21,k1_xboole_0) = X21 ),
    inference(variable_rename,[status(thm)],[t5_boole])).

cnf(c_0_68,negated_conjecture,
    ( k4_subset_1(esk2_0,esk3_0,k3_subset_1(esk2_0,esk3_0)) != k2_subset_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_69,plain,
    ( k2_subset_1(X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_53])).

cnf(c_0_70,plain,
    ( k3_subset_1(X2,X1) = k5_xboole_0(X2,k3_xboole_0(X2,X1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[c_0_54,c_0_40])).

cnf(c_0_71,plain,
    ( k4_subset_1(X2,X1,X3) = k2_xboole_0(X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_55])).

cnf(c_0_72,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_56,c_0_57])).

cnf(c_0_73,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_74,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_59])).

cnf(c_0_75,plain,
    ( k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_60])).

cnf(c_0_76,plain,
    ( k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    inference(split_conjunct,[status(thm)],[c_0_61])).

cnf(c_0_77,plain,
    ( k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    inference(split_conjunct,[status(thm)],[c_0_62])).

cnf(c_0_78,negated_conjecture,
    ( r2_hidden(k5_xboole_0(esk2_0,esk3_0),X1)
    | X1 != k1_zfmisc_1(esk2_0) ),
    inference(spm,[status(thm)],[c_0_63,c_0_64])).

cnf(c_0_79,plain,
    ( k2_xboole_0(X1,X2) = k5_xboole_0(k5_xboole_0(X1,X2),k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_65])).

fof(c_0_80,plain,(
    ! [X22,X23,X24] : k5_xboole_0(k5_xboole_0(X22,X23),X24) = k5_xboole_0(X22,k5_xboole_0(X23,X24)) ),
    inference(variable_rename,[status(thm)],[t91_xboole_1])).

cnf(c_0_81,plain,
    ( k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_43,c_0_66])).

cnf(c_0_82,plain,
    ( k5_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_67])).

cnf(c_0_83,negated_conjecture,
    ( k4_subset_1(esk2_0,esk3_0,k3_subset_1(esk2_0,esk3_0)) != esk2_0 ),
    inference(rw,[status(thm)],[c_0_68,c_0_69])).

cnf(c_0_84,negated_conjecture,
    ( k3_subset_1(esk2_0,esk3_0) = k5_xboole_0(esk2_0,k3_xboole_0(esk2_0,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_70,c_0_30])).

cnf(c_0_85,plain,
    ( k4_subset_1(X2,X1,X3) = k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X3))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_71,c_0_72]),c_0_73]),c_0_74]),c_0_75]),c_0_76]),c_0_77])).

cnf(c_0_86,plain,
    ( m1_subset_1(X1,X2)
    | v1_xboole_0(X2)
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_87,negated_conjecture,
    ( r2_hidden(k5_xboole_0(esk2_0,esk3_0),k1_zfmisc_1(esk2_0)) ),
    inference(er,[status(thm)],[c_0_78])).

cnf(c_0_88,plain,
    ( k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)) = k5_xboole_0(k5_xboole_0(X1,X2),k3_xboole_0(X1,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_79,c_0_72]),c_0_73]),c_0_74]),c_0_75]),c_0_76]),c_0_77])).

cnf(c_0_89,plain,
    ( k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_80])).

cnf(c_0_90,plain,
    ( r1_tarski(X1,X1) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_81]),c_0_82])).

cnf(c_0_91,negated_conjecture,
    ( k4_subset_1(esk2_0,esk3_0,k5_xboole_0(esk2_0,k3_xboole_0(esk2_0,esk3_0))) != esk2_0 ),
    inference(rw,[status(thm)],[c_0_83,c_0_84])).

cnf(c_0_92,negated_conjecture,
    ( k3_tarski(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,X1)) = k4_subset_1(esk2_0,esk3_0,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(esk2_0)) ),
    inference(spm,[status(thm)],[c_0_85,c_0_30])).

cnf(c_0_93,negated_conjecture,
    ( m1_subset_1(k5_xboole_0(esk2_0,esk3_0),k1_zfmisc_1(esk2_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_86,c_0_87]),c_0_31])).

cnf(c_0_94,plain,
    ( k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)) = k5_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X1,X2))) ),
    inference(rw,[status(thm)],[c_0_88,c_0_89])).

cnf(c_0_95,negated_conjecture,
    ( k3_xboole_0(esk3_0,k5_xboole_0(esk2_0,X1)) = k5_xboole_0(esk3_0,k3_xboole_0(X1,esk3_0)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52,c_0_50]),c_0_43])).

cnf(c_0_96,plain,
    ( k3_xboole_0(X1,X1) = X1 ),
    inference(spm,[status(thm)],[c_0_41,c_0_90])).

fof(c_0_97,plain,(
    ! [X10,X11] : k5_xboole_0(X10,X11) = k5_xboole_0(X11,X10) ),
    inference(variable_rename,[status(thm)],[commutativity_k5_xboole_0])).

cnf(c_0_98,negated_conjecture,
    ( k4_subset_1(esk2_0,esk3_0,k5_xboole_0(esk2_0,esk3_0)) != esk2_0 ),
    inference(rw,[status(thm)],[c_0_91,c_0_50])).

cnf(c_0_99,negated_conjecture,
    ( k4_subset_1(esk2_0,esk3_0,k5_xboole_0(esk2_0,esk3_0)) = k5_xboole_0(esk3_0,k5_xboole_0(esk2_0,esk3_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_92,c_0_93]),c_0_94]),c_0_95]),c_0_96]),c_0_51]),c_0_89]),c_0_82])).

cnf(c_0_100,plain,
    ( k5_xboole_0(X1,X2) = k5_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_97])).

cnf(c_0_101,negated_conjecture,
    ( k5_xboole_0(esk3_0,k5_xboole_0(esk2_0,esk3_0)) != esk2_0 ),
    inference(rw,[status(thm)],[c_0_98,c_0_99])).

cnf(c_0_102,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X2,X3)) = k5_xboole_0(X3,k5_xboole_0(X1,X2)) ),
    inference(spm,[status(thm)],[c_0_100,c_0_89])).

cnf(c_0_103,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_101,c_0_102]),c_0_51]),c_0_82])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n020.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 11:56:37 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.20/0.37  # AutoSched0-Mode selected heuristic G_E___207_C18_F1_AE_CS_SP_PI_S0a
% 0.20/0.37  # and selection function SelectNegativeLiterals.
% 0.20/0.37  #
% 0.20/0.37  # Preprocessing time       : 0.027 s
% 0.20/0.37  
% 0.20/0.37  # Proof found!
% 0.20/0.37  # SZS status Theorem
% 0.20/0.37  # SZS output start CNFRefutation
% 0.20/0.37  fof(t25_subset_1, conjecture, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k4_subset_1(X1,X2,k3_subset_1(X1,X2))=k2_subset_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t25_subset_1)).
% 0.20/0.37  fof(d2_subset_1, axiom, ![X1, X2]:((~(v1_xboole_0(X1))=>(m1_subset_1(X2,X1)<=>r2_hidden(X2,X1)))&(v1_xboole_0(X1)=>(m1_subset_1(X2,X1)<=>v1_xboole_0(X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d2_subset_1)).
% 0.20/0.37  fof(fc1_subset_1, axiom, ![X1]:~(v1_xboole_0(k1_zfmisc_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc1_subset_1)).
% 0.20/0.37  fof(d1_zfmisc_1, axiom, ![X1, X2]:(X2=k1_zfmisc_1(X1)<=>![X3]:(r2_hidden(X3,X2)<=>r1_tarski(X3,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_zfmisc_1)).
% 0.20/0.37  fof(t36_xboole_1, axiom, ![X1, X2]:r1_tarski(k4_xboole_0(X1,X2),X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t36_xboole_1)).
% 0.20/0.37  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.20/0.37  fof(t28_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k3_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t28_xboole_1)).
% 0.20/0.37  fof(commutativity_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k3_xboole_0)).
% 0.20/0.37  fof(t92_xboole_1, axiom, ![X1]:k5_xboole_0(X1,X1)=k1_xboole_0, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t92_xboole_1)).
% 0.20/0.37  fof(t112_xboole_1, axiom, ![X1, X2, X3]:k5_xboole_0(k3_xboole_0(X1,X2),k3_xboole_0(X3,X2))=k3_xboole_0(k5_xboole_0(X1,X3),X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t112_xboole_1)).
% 0.20/0.37  fof(d5_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k3_subset_1(X1,X2)=k4_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d5_subset_1)).
% 0.20/0.37  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.20/0.37  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.20/0.37  fof(d4_subset_1, axiom, ![X1]:k2_subset_1(X1)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_subset_1)).
% 0.20/0.37  fof(redefinition_k4_subset_1, axiom, ![X1, X2, X3]:((m1_subset_1(X2,k1_zfmisc_1(X1))&m1_subset_1(X3,k1_zfmisc_1(X1)))=>k4_subset_1(X1,X2,X3)=k2_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k4_subset_1)).
% 0.20/0.37  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 0.20/0.37  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t72_enumset1)).
% 0.20/0.37  fof(t73_enumset1, axiom, ![X1, X2, X3, X4, X5]:k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t73_enumset1)).
% 0.20/0.37  fof(t74_enumset1, axiom, ![X1, X2, X3, X4, X5, X6]:k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t74_enumset1)).
% 0.20/0.37  fof(t75_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7]:k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t75_enumset1)).
% 0.20/0.37  fof(t94_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k5_xboole_0(k5_xboole_0(X1,X2),k3_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t94_xboole_1)).
% 0.20/0.37  fof(t5_boole, axiom, ![X1]:k5_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t5_boole)).
% 0.20/0.37  fof(t91_xboole_1, axiom, ![X1, X2, X3]:k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t91_xboole_1)).
% 0.20/0.37  fof(commutativity_k5_xboole_0, axiom, ![X1, X2]:k5_xboole_0(X1,X2)=k5_xboole_0(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k5_xboole_0)).
% 0.20/0.37  fof(c_0_24, negated_conjecture, ~(![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k4_subset_1(X1,X2,k3_subset_1(X1,X2))=k2_subset_1(X1))), inference(assume_negation,[status(cth)],[t25_subset_1])).
% 0.20/0.37  fof(c_0_25, plain, ![X64, X65]:(((~m1_subset_1(X65,X64)|r2_hidden(X65,X64)|v1_xboole_0(X64))&(~r2_hidden(X65,X64)|m1_subset_1(X65,X64)|v1_xboole_0(X64)))&((~m1_subset_1(X65,X64)|v1_xboole_0(X65)|~v1_xboole_0(X64))&(~v1_xboole_0(X65)|m1_subset_1(X65,X64)|~v1_xboole_0(X64)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d2_subset_1])])])])).
% 0.20/0.37  fof(c_0_26, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(esk2_0))&k4_subset_1(esk2_0,esk3_0,k3_subset_1(esk2_0,esk3_0))!=k2_subset_1(esk2_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_24])])])).
% 0.20/0.37  fof(c_0_27, plain, ![X69]:~v1_xboole_0(k1_zfmisc_1(X69)), inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[fc1_subset_1])])).
% 0.20/0.37  fof(c_0_28, plain, ![X55, X56, X57, X58, X59, X60]:(((~r2_hidden(X57,X56)|r1_tarski(X57,X55)|X56!=k1_zfmisc_1(X55))&(~r1_tarski(X58,X55)|r2_hidden(X58,X56)|X56!=k1_zfmisc_1(X55)))&((~r2_hidden(esk1_2(X59,X60),X60)|~r1_tarski(esk1_2(X59,X60),X59)|X60=k1_zfmisc_1(X59))&(r2_hidden(esk1_2(X59,X60),X60)|r1_tarski(esk1_2(X59,X60),X59)|X60=k1_zfmisc_1(X59)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_zfmisc_1])])])])])])).
% 0.20/0.37  cnf(c_0_29, plain, (r2_hidden(X1,X2)|v1_xboole_0(X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.20/0.37  cnf(c_0_30, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.20/0.37  cnf(c_0_31, plain, (~v1_xboole_0(k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.20/0.37  cnf(c_0_32, plain, (r1_tarski(X1,X3)|~r2_hidden(X1,X2)|X2!=k1_zfmisc_1(X3)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.20/0.37  cnf(c_0_33, negated_conjecture, (r2_hidden(esk3_0,k1_zfmisc_1(esk2_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_30]), c_0_31])).
% 0.20/0.37  fof(c_0_34, plain, ![X19, X20]:r1_tarski(k4_xboole_0(X19,X20),X19), inference(variable_rename,[status(thm)],[t36_xboole_1])).
% 0.20/0.37  fof(c_0_35, plain, ![X12, X13]:k4_xboole_0(X12,X13)=k5_xboole_0(X12,k3_xboole_0(X12,X13)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.20/0.37  fof(c_0_36, plain, ![X17, X18]:(~r1_tarski(X17,X18)|k3_xboole_0(X17,X18)=X17), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).
% 0.20/0.37  cnf(c_0_37, negated_conjecture, (r1_tarski(esk3_0,X1)|k1_zfmisc_1(esk2_0)!=k1_zfmisc_1(X1)), inference(spm,[status(thm)],[c_0_32, c_0_33])).
% 0.20/0.37  fof(c_0_38, plain, ![X8, X9]:k3_xboole_0(X8,X9)=k3_xboole_0(X9,X8), inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).
% 0.20/0.37  cnf(c_0_39, plain, (r1_tarski(k4_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.20/0.37  cnf(c_0_40, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.20/0.37  cnf(c_0_41, plain, (k3_xboole_0(X1,X2)=X1|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.20/0.37  cnf(c_0_42, negated_conjecture, (r1_tarski(esk3_0,esk2_0)), inference(er,[status(thm)],[c_0_37])).
% 0.20/0.37  cnf(c_0_43, plain, (k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.20/0.37  fof(c_0_44, plain, ![X25]:k5_xboole_0(X25,X25)=k1_xboole_0, inference(variable_rename,[status(thm)],[t92_xboole_1])).
% 0.20/0.37  fof(c_0_45, plain, ![X14, X15, X16]:k5_xboole_0(k3_xboole_0(X14,X15),k3_xboole_0(X16,X15))=k3_xboole_0(k5_xboole_0(X14,X16),X15), inference(variable_rename,[status(thm)],[t112_xboole_1])).
% 0.20/0.37  fof(c_0_46, plain, ![X67, X68]:(~m1_subset_1(X68,k1_zfmisc_1(X67))|k3_subset_1(X67,X68)=k4_xboole_0(X67,X68)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_subset_1])])).
% 0.20/0.37  fof(c_0_47, plain, ![X62, X63]:k3_tarski(k2_tarski(X62,X63))=k2_xboole_0(X62,X63), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.20/0.37  fof(c_0_48, plain, ![X28, X29]:k1_enumset1(X28,X28,X29)=k2_tarski(X28,X29), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.20/0.37  cnf(c_0_49, plain, (r1_tarski(k5_xboole_0(X1,k3_xboole_0(X1,X2)),X1)), inference(rw,[status(thm)],[c_0_39, c_0_40])).
% 0.20/0.37  cnf(c_0_50, negated_conjecture, (k3_xboole_0(esk2_0,esk3_0)=esk3_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_42]), c_0_43])).
% 0.20/0.37  cnf(c_0_51, plain, (k5_xboole_0(X1,X1)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.20/0.37  cnf(c_0_52, plain, (k5_xboole_0(k3_xboole_0(X1,X2),k3_xboole_0(X3,X2))=k3_xboole_0(k5_xboole_0(X1,X3),X2)), inference(split_conjunct,[status(thm)],[c_0_45])).
% 0.20/0.37  fof(c_0_53, plain, ![X66]:k2_subset_1(X66)=X66, inference(variable_rename,[status(thm)],[d4_subset_1])).
% 0.20/0.37  cnf(c_0_54, plain, (k3_subset_1(X2,X1)=k4_xboole_0(X2,X1)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_46])).
% 0.20/0.37  fof(c_0_55, plain, ![X70, X71, X72]:(~m1_subset_1(X71,k1_zfmisc_1(X70))|~m1_subset_1(X72,k1_zfmisc_1(X70))|k4_subset_1(X70,X71,X72)=k2_xboole_0(X71,X72)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).
% 0.20/0.37  cnf(c_0_56, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.20/0.37  cnf(c_0_57, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_48])).
% 0.20/0.37  fof(c_0_58, plain, ![X30, X31, X32]:k2_enumset1(X30,X30,X31,X32)=k1_enumset1(X30,X31,X32), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.20/0.37  fof(c_0_59, plain, ![X33, X34, X35, X36]:k3_enumset1(X33,X33,X34,X35,X36)=k2_enumset1(X33,X34,X35,X36), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.20/0.37  fof(c_0_60, plain, ![X37, X38, X39, X40, X41]:k4_enumset1(X37,X37,X38,X39,X40,X41)=k3_enumset1(X37,X38,X39,X40,X41), inference(variable_rename,[status(thm)],[t73_enumset1])).
% 0.20/0.37  fof(c_0_61, plain, ![X42, X43, X44, X45, X46, X47]:k5_enumset1(X42,X42,X43,X44,X45,X46,X47)=k4_enumset1(X42,X43,X44,X45,X46,X47), inference(variable_rename,[status(thm)],[t74_enumset1])).
% 0.20/0.37  fof(c_0_62, plain, ![X48, X49, X50, X51, X52, X53, X54]:k6_enumset1(X48,X48,X49,X50,X51,X52,X53,X54)=k5_enumset1(X48,X49,X50,X51,X52,X53,X54), inference(variable_rename,[status(thm)],[t75_enumset1])).
% 0.20/0.37  cnf(c_0_63, plain, (r2_hidden(X1,X3)|~r1_tarski(X1,X2)|X3!=k1_zfmisc_1(X2)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.20/0.37  cnf(c_0_64, negated_conjecture, (r1_tarski(k5_xboole_0(esk2_0,esk3_0),esk2_0)), inference(spm,[status(thm)],[c_0_49, c_0_50])).
% 0.20/0.37  fof(c_0_65, plain, ![X26, X27]:k2_xboole_0(X26,X27)=k5_xboole_0(k5_xboole_0(X26,X27),k3_xboole_0(X26,X27)), inference(variable_rename,[status(thm)],[t94_xboole_1])).
% 0.20/0.37  cnf(c_0_66, plain, (k3_xboole_0(k1_xboole_0,X1)=k1_xboole_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_52]), c_0_51])).
% 0.20/0.37  fof(c_0_67, plain, ![X21]:k5_xboole_0(X21,k1_xboole_0)=X21, inference(variable_rename,[status(thm)],[t5_boole])).
% 0.20/0.37  cnf(c_0_68, negated_conjecture, (k4_subset_1(esk2_0,esk3_0,k3_subset_1(esk2_0,esk3_0))!=k2_subset_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.20/0.37  cnf(c_0_69, plain, (k2_subset_1(X1)=X1), inference(split_conjunct,[status(thm)],[c_0_53])).
% 0.20/0.37  cnf(c_0_70, plain, (k3_subset_1(X2,X1)=k5_xboole_0(X2,k3_xboole_0(X2,X1))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[c_0_54, c_0_40])).
% 0.20/0.37  cnf(c_0_71, plain, (k4_subset_1(X2,X1,X3)=k2_xboole_0(X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_55])).
% 0.20/0.37  cnf(c_0_72, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_56, c_0_57])).
% 0.20/0.37  cnf(c_0_73, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.20/0.37  cnf(c_0_74, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_59])).
% 0.20/0.37  cnf(c_0_75, plain, (k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_60])).
% 0.20/0.37  cnf(c_0_76, plain, (k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6)), inference(split_conjunct,[status(thm)],[c_0_61])).
% 0.20/0.37  cnf(c_0_77, plain, (k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7)), inference(split_conjunct,[status(thm)],[c_0_62])).
% 0.20/0.37  cnf(c_0_78, negated_conjecture, (r2_hidden(k5_xboole_0(esk2_0,esk3_0),X1)|X1!=k1_zfmisc_1(esk2_0)), inference(spm,[status(thm)],[c_0_63, c_0_64])).
% 0.20/0.37  cnf(c_0_79, plain, (k2_xboole_0(X1,X2)=k5_xboole_0(k5_xboole_0(X1,X2),k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_65])).
% 0.20/0.37  fof(c_0_80, plain, ![X22, X23, X24]:k5_xboole_0(k5_xboole_0(X22,X23),X24)=k5_xboole_0(X22,k5_xboole_0(X23,X24)), inference(variable_rename,[status(thm)],[t91_xboole_1])).
% 0.20/0.37  cnf(c_0_81, plain, (k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_43, c_0_66])).
% 0.20/0.37  cnf(c_0_82, plain, (k5_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_67])).
% 0.20/0.37  cnf(c_0_83, negated_conjecture, (k4_subset_1(esk2_0,esk3_0,k3_subset_1(esk2_0,esk3_0))!=esk2_0), inference(rw,[status(thm)],[c_0_68, c_0_69])).
% 0.20/0.37  cnf(c_0_84, negated_conjecture, (k3_subset_1(esk2_0,esk3_0)=k5_xboole_0(esk2_0,k3_xboole_0(esk2_0,esk3_0))), inference(spm,[status(thm)],[c_0_70, c_0_30])).
% 0.20/0.37  cnf(c_0_85, plain, (k4_subset_1(X2,X1,X3)=k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X3))|~m1_subset_1(X3,k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_71, c_0_72]), c_0_73]), c_0_74]), c_0_75]), c_0_76]), c_0_77])).
% 0.20/0.37  cnf(c_0_86, plain, (m1_subset_1(X1,X2)|v1_xboole_0(X2)|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.20/0.37  cnf(c_0_87, negated_conjecture, (r2_hidden(k5_xboole_0(esk2_0,esk3_0),k1_zfmisc_1(esk2_0))), inference(er,[status(thm)],[c_0_78])).
% 0.20/0.37  cnf(c_0_88, plain, (k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))=k5_xboole_0(k5_xboole_0(X1,X2),k3_xboole_0(X1,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_79, c_0_72]), c_0_73]), c_0_74]), c_0_75]), c_0_76]), c_0_77])).
% 0.20/0.37  cnf(c_0_89, plain, (k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_80])).
% 0.20/0.37  cnf(c_0_90, plain, (r1_tarski(X1,X1)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_81]), c_0_82])).
% 0.20/0.37  cnf(c_0_91, negated_conjecture, (k4_subset_1(esk2_0,esk3_0,k5_xboole_0(esk2_0,k3_xboole_0(esk2_0,esk3_0)))!=esk2_0), inference(rw,[status(thm)],[c_0_83, c_0_84])).
% 0.20/0.37  cnf(c_0_92, negated_conjecture, (k3_tarski(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,X1))=k4_subset_1(esk2_0,esk3_0,X1)|~m1_subset_1(X1,k1_zfmisc_1(esk2_0))), inference(spm,[status(thm)],[c_0_85, c_0_30])).
% 0.20/0.37  cnf(c_0_93, negated_conjecture, (m1_subset_1(k5_xboole_0(esk2_0,esk3_0),k1_zfmisc_1(esk2_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_86, c_0_87]), c_0_31])).
% 0.20/0.37  cnf(c_0_94, plain, (k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))=k5_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X1,X2)))), inference(rw,[status(thm)],[c_0_88, c_0_89])).
% 0.20/0.37  cnf(c_0_95, negated_conjecture, (k3_xboole_0(esk3_0,k5_xboole_0(esk2_0,X1))=k5_xboole_0(esk3_0,k3_xboole_0(X1,esk3_0))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52, c_0_50]), c_0_43])).
% 0.20/0.37  cnf(c_0_96, plain, (k3_xboole_0(X1,X1)=X1), inference(spm,[status(thm)],[c_0_41, c_0_90])).
% 0.20/0.37  fof(c_0_97, plain, ![X10, X11]:k5_xboole_0(X10,X11)=k5_xboole_0(X11,X10), inference(variable_rename,[status(thm)],[commutativity_k5_xboole_0])).
% 0.20/0.37  cnf(c_0_98, negated_conjecture, (k4_subset_1(esk2_0,esk3_0,k5_xboole_0(esk2_0,esk3_0))!=esk2_0), inference(rw,[status(thm)],[c_0_91, c_0_50])).
% 0.20/0.37  cnf(c_0_99, negated_conjecture, (k4_subset_1(esk2_0,esk3_0,k5_xboole_0(esk2_0,esk3_0))=k5_xboole_0(esk3_0,k5_xboole_0(esk2_0,esk3_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_92, c_0_93]), c_0_94]), c_0_95]), c_0_96]), c_0_51]), c_0_89]), c_0_82])).
% 0.20/0.37  cnf(c_0_100, plain, (k5_xboole_0(X1,X2)=k5_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_97])).
% 0.20/0.37  cnf(c_0_101, negated_conjecture, (k5_xboole_0(esk3_0,k5_xboole_0(esk2_0,esk3_0))!=esk2_0), inference(rw,[status(thm)],[c_0_98, c_0_99])).
% 0.20/0.37  cnf(c_0_102, plain, (k5_xboole_0(X1,k5_xboole_0(X2,X3))=k5_xboole_0(X3,k5_xboole_0(X1,X2))), inference(spm,[status(thm)],[c_0_100, c_0_89])).
% 0.20/0.37  cnf(c_0_103, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_101, c_0_102]), c_0_51]), c_0_82])]), ['proof']).
% 0.20/0.37  # SZS output end CNFRefutation
% 0.20/0.37  # Proof object total steps             : 104
% 0.20/0.37  # Proof object clause steps            : 55
% 0.20/0.37  # Proof object formula steps           : 49
% 0.20/0.37  # Proof object conjectures             : 22
% 0.20/0.37  # Proof object clause conjectures      : 19
% 0.20/0.37  # Proof object formula conjectures     : 3
% 0.20/0.37  # Proof object initial clauses used    : 27
% 0.20/0.37  # Proof object initial formulas used   : 24
% 0.20/0.37  # Proof object generating inferences   : 17
% 0.20/0.37  # Proof object simplifying inferences  : 36
% 0.20/0.37  # Training examples: 0 positive, 0 negative
% 0.20/0.37  # Parsed axioms                        : 24
% 0.20/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.37  # Initial clauses                      : 31
% 0.20/0.37  # Removed in clause preprocessing      : 9
% 0.20/0.37  # Initial clauses in saturation        : 22
% 0.20/0.37  # Processed clauses                    : 127
% 0.20/0.37  # ...of these trivial                  : 19
% 0.20/0.37  # ...subsumed                          : 6
% 0.20/0.37  # ...remaining for further processing  : 102
% 0.20/0.37  # Other redundant clauses eliminated   : 0
% 0.20/0.37  # Clauses deleted for lack of memory   : 0
% 0.20/0.37  # Backward-subsumed                    : 2
% 0.20/0.37  # Backward-rewritten                   : 17
% 0.20/0.37  # Generated clauses                    : 362
% 0.20/0.37  # ...of the previous two non-trivial   : 224
% 0.20/0.37  # Contextual simplify-reflections      : 0
% 0.20/0.37  # Paramodulations                      : 340
% 0.20/0.37  # Factorizations                       : 0
% 0.20/0.37  # Equation resolutions                 : 22
% 0.20/0.37  # Propositional unsat checks           : 0
% 0.20/0.37  #    Propositional check models        : 0
% 0.20/0.37  #    Propositional check unsatisfiable : 0
% 0.20/0.37  #    Propositional clauses             : 0
% 0.20/0.37  #    Propositional clauses after purity: 0
% 0.20/0.37  #    Propositional unsat core size     : 0
% 0.20/0.37  #    Propositional preprocessing time  : 0.000
% 0.20/0.37  #    Propositional encoding time       : 0.000
% 0.20/0.37  #    Propositional solver time         : 0.000
% 0.20/0.37  #    Success case prop preproc time    : 0.000
% 0.20/0.37  #    Success case prop encoding time   : 0.000
% 0.20/0.37  #    Success case prop solver time     : 0.000
% 0.20/0.37  # Current number of processed clauses  : 83
% 0.20/0.37  #    Positive orientable unit clauses  : 48
% 0.20/0.37  #    Positive unorientable unit clauses: 4
% 0.20/0.37  #    Negative unit clauses             : 1
% 0.20/0.37  #    Non-unit-clauses                  : 30
% 0.20/0.37  # Current number of unprocessed clauses: 119
% 0.20/0.37  # ...number of literals in the above   : 155
% 0.20/0.37  # Current number of archived formulas  : 0
% 0.20/0.37  # Current number of archived clauses   : 28
% 0.20/0.37  # Clause-clause subsumption calls (NU) : 41
% 0.20/0.37  # Rec. Clause-clause subsumption calls : 39
% 0.20/0.37  # Non-unit clause-clause subsumptions  : 2
% 0.20/0.37  # Unit Clause-clause subsumption calls : 92
% 0.20/0.37  # Rewrite failures with RHS unbound    : 0
% 0.20/0.37  # BW rewrite match attempts            : 92
% 0.20/0.37  # BW rewrite match successes           : 33
% 0.20/0.37  # Condensation attempts                : 0
% 0.20/0.37  # Condensation successes               : 0
% 0.20/0.37  # Termbank termtop insertions          : 5679
% 0.20/0.38  
% 0.20/0.38  # -------------------------------------------------
% 0.20/0.38  # User time                : 0.032 s
% 0.20/0.38  # System time              : 0.005 s
% 0.20/0.38  # Total time               : 0.037 s
% 0.20/0.38  # Maximum resident set size: 1592 pages
%------------------------------------------------------------------------------
