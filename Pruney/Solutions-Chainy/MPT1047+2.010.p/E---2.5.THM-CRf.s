%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:07:12 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   96 (6820 expanded)
%              Number of clauses        :   75 (2776 expanded)
%              Number of leaves         :   10 (1782 expanded)
%              Depth                    :   17
%              Number of atoms          :  397 (22830 expanded)
%              Number of equality atoms :   99 (8308 expanded)
%              Maximal formula depth    :   26 (   5 average)
%              Maximal clause size      :   68 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t164_funct_2,conjecture,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,k1_tarski(X2)))) )
     => ! [X4] :
          ( ( v1_funct_1(X4)
            & v1_funct_2(X4,X1,k1_tarski(X2))
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,k1_tarski(X2)))) )
         => k5_partfun1(X1,k1_tarski(X2),X3) = k1_tarski(X4) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t164_funct_2)).

fof(t132_funct_2,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( ( v1_funct_1(X3)
          & v1_funct_2(X3,X1,X2)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
       => ( ( X2 = k1_xboole_0
            & X1 != k1_xboole_0 )
          | v1_partfun1(X3,X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t132_funct_2)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t130_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( X1 != k1_xboole_0
     => ( k2_zfmisc_1(k1_tarski(X2),X1) != k1_xboole_0
        & k2_zfmisc_1(X1,k1_tarski(X2)) != k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t130_zfmisc_1)).

fof(t113_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    <=> ( X1 = k1_xboole_0
        | X2 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t113_zfmisc_1)).

fof(t174_partfun1,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( v1_partfun1(X3,X1)
      <=> k5_partfun1(X1,X2,X3) = k1_tarski(X3) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t174_partfun1)).

fof(d7_partfun1,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ! [X4] :
          ( X4 = k5_partfun1(X1,X2,X3)
        <=> ! [X5] :
              ( r2_hidden(X5,X4)
            <=> ? [X6] :
                  ( v1_funct_1(X6)
                  & m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
                  & X6 = X5
                  & v1_partfun1(X6,X1)
                  & r1_partfun1(X3,X6) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d7_partfun1)).

fof(t143_partfun1,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,k1_tarski(X2)))) )
     => ! [X4] :
          ( ( v1_funct_1(X4)
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,k1_tarski(X2)))) )
         => r1_partfun1(X3,X4) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t143_partfun1)).

fof(t148_partfun1,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ! [X4] :
          ( ( v1_funct_1(X4)
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
         => ( ( v1_partfun1(X3,X1)
              & v1_partfun1(X4,X1)
              & r1_partfun1(X3,X4) )
           => X3 = X4 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t148_partfun1)).

fof(c_0_10,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( v1_funct_1(X3)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,k1_tarski(X2)))) )
       => ! [X4] :
            ( ( v1_funct_1(X4)
              & v1_funct_2(X4,X1,k1_tarski(X2))
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,k1_tarski(X2)))) )
           => k5_partfun1(X1,k1_tarski(X2),X3) = k1_tarski(X4) ) ) ),
    inference(assume_negation,[status(cth)],[t164_funct_2])).

fof(c_0_11,plain,(
    ! [X26,X27,X28] :
      ( ( X27 = k1_xboole_0
        | v1_partfun1(X28,X26)
        | ~ v1_funct_1(X28)
        | ~ v1_funct_2(X28,X26,X27)
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27)))
        | ~ v1_funct_1(X28)
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) )
      & ( X26 != k1_xboole_0
        | v1_partfun1(X28,X26)
        | ~ v1_funct_1(X28)
        | ~ v1_funct_2(X28,X26,X27)
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27)))
        | ~ v1_funct_1(X28)
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t132_funct_2])])])).

fof(c_0_12,negated_conjecture,
    ( v1_funct_1(esk6_0)
    & m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_tarski(esk5_0))))
    & v1_funct_1(esk7_0)
    & v1_funct_2(esk7_0,esk4_0,k1_tarski(esk5_0))
    & m1_subset_1(esk7_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_tarski(esk5_0))))
    & k5_partfun1(esk4_0,k1_tarski(esk5_0),esk6_0) != k1_tarski(esk7_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_10])])])).

fof(c_0_13,plain,(
    ! [X7] : k2_tarski(X7,X7) = k1_tarski(X7) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_14,plain,(
    ! [X8,X9] : k1_enumset1(X8,X8,X9) = k2_tarski(X8,X9) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_15,plain,(
    ! [X12,X13] :
      ( ( k2_zfmisc_1(k1_tarski(X13),X12) != k1_xboole_0
        | X12 = k1_xboole_0 )
      & ( k2_zfmisc_1(X12,k1_tarski(X13)) != k1_xboole_0
        | X12 = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t130_zfmisc_1])])])).

cnf(c_0_16,plain,
    ( X1 = k1_xboole_0
    | v1_partfun1(X2,X3)
    | ~ v1_funct_1(X2)
    | ~ v1_funct_2(X2,X3,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))
    | ~ v1_funct_1(X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_17,negated_conjecture,
    ( m1_subset_1(esk7_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_tarski(esk5_0)))) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_18,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_19,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_20,negated_conjecture,
    ( v1_funct_2(esk7_0,esk4_0,k1_tarski(esk5_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

fof(c_0_21,plain,(
    ! [X10,X11] :
      ( ( k2_zfmisc_1(X10,X11) != k1_xboole_0
        | X10 = k1_xboole_0
        | X11 = k1_xboole_0 )
      & ( X10 != k1_xboole_0
        | k2_zfmisc_1(X10,X11) = k1_xboole_0 )
      & ( X11 != k1_xboole_0
        | k2_zfmisc_1(X10,X11) = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).

fof(c_0_22,plain,(
    ! [X37,X38,X39] :
      ( ( ~ v1_partfun1(X39,X37)
        | k5_partfun1(X37,X38,X39) = k1_tarski(X39)
        | ~ v1_funct_1(X39)
        | ~ m1_subset_1(X39,k1_zfmisc_1(k2_zfmisc_1(X37,X38))) )
      & ( k5_partfun1(X37,X38,X39) != k1_tarski(X39)
        | v1_partfun1(X39,X37)
        | ~ v1_funct_1(X39)
        | ~ m1_subset_1(X39,k1_zfmisc_1(k2_zfmisc_1(X37,X38))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t174_partfun1])])])).

cnf(c_0_23,plain,
    ( X1 = k1_xboole_0
    | k2_zfmisc_1(X1,k1_tarski(X2)) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_24,plain,
    ( X1 = k1_xboole_0
    | v1_partfun1(X2,X3)
    | ~ v1_funct_1(X2)
    | ~ v1_funct_2(X2,X3,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1))) ),
    inference(cn,[status(thm)],[c_0_16])).

cnf(c_0_25,negated_conjecture,
    ( m1_subset_1(esk7_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_17,c_0_18]),c_0_19])).

cnf(c_0_26,negated_conjecture,
    ( v1_funct_2(esk7_0,esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20,c_0_18]),c_0_19])).

cnf(c_0_27,negated_conjecture,
    ( v1_funct_1(esk7_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_28,plain,
    ( k2_zfmisc_1(X2,X1) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_29,plain,
    ( k5_partfun1(X2,X3,X1) = k1_tarski(X1)
    | ~ v1_partfun1(X1,X2)
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_30,negated_conjecture,
    ( k5_partfun1(esk4_0,k1_tarski(esk5_0),esk6_0) != k1_tarski(esk7_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_31,plain,
    ( X1 = k1_xboole_0
    | k2_zfmisc_1(X1,k1_enumset1(X2,X2,X2)) != k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_23,c_0_18]),c_0_19])).

cnf(c_0_32,negated_conjecture,
    ( k1_enumset1(esk5_0,esk5_0,esk5_0) = k1_xboole_0
    | v1_partfun1(esk7_0,esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_25]),c_0_26]),c_0_27])])).

cnf(c_0_33,plain,
    ( k2_zfmisc_1(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_28])).

fof(c_0_34,plain,(
    ! [X14,X15,X16,X17,X18,X20,X21,X22,X24] :
      ( ( v1_funct_1(esk1_5(X14,X15,X16,X17,X18))
        | ~ r2_hidden(X18,X17)
        | X17 != k5_partfun1(X14,X15,X16)
        | ~ v1_funct_1(X16)
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( m1_subset_1(esk1_5(X14,X15,X16,X17,X18),k1_zfmisc_1(k2_zfmisc_1(X14,X15)))
        | ~ r2_hidden(X18,X17)
        | X17 != k5_partfun1(X14,X15,X16)
        | ~ v1_funct_1(X16)
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( esk1_5(X14,X15,X16,X17,X18) = X18
        | ~ r2_hidden(X18,X17)
        | X17 != k5_partfun1(X14,X15,X16)
        | ~ v1_funct_1(X16)
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( v1_partfun1(esk1_5(X14,X15,X16,X17,X18),X14)
        | ~ r2_hidden(X18,X17)
        | X17 != k5_partfun1(X14,X15,X16)
        | ~ v1_funct_1(X16)
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( r1_partfun1(X16,esk1_5(X14,X15,X16,X17,X18))
        | ~ r2_hidden(X18,X17)
        | X17 != k5_partfun1(X14,X15,X16)
        | ~ v1_funct_1(X16)
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( ~ v1_funct_1(X21)
        | ~ m1_subset_1(X21,k1_zfmisc_1(k2_zfmisc_1(X14,X15)))
        | X21 != X20
        | ~ v1_partfun1(X21,X14)
        | ~ r1_partfun1(X16,X21)
        | r2_hidden(X20,X17)
        | X17 != k5_partfun1(X14,X15,X16)
        | ~ v1_funct_1(X16)
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( ~ r2_hidden(esk2_4(X14,X15,X16,X22),X22)
        | ~ v1_funct_1(X24)
        | ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X14,X15)))
        | X24 != esk2_4(X14,X15,X16,X22)
        | ~ v1_partfun1(X24,X14)
        | ~ r1_partfun1(X16,X24)
        | X22 = k5_partfun1(X14,X15,X16)
        | ~ v1_funct_1(X16)
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( v1_funct_1(esk3_4(X14,X15,X16,X22))
        | r2_hidden(esk2_4(X14,X15,X16,X22),X22)
        | X22 = k5_partfun1(X14,X15,X16)
        | ~ v1_funct_1(X16)
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( m1_subset_1(esk3_4(X14,X15,X16,X22),k1_zfmisc_1(k2_zfmisc_1(X14,X15)))
        | r2_hidden(esk2_4(X14,X15,X16,X22),X22)
        | X22 = k5_partfun1(X14,X15,X16)
        | ~ v1_funct_1(X16)
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( esk3_4(X14,X15,X16,X22) = esk2_4(X14,X15,X16,X22)
        | r2_hidden(esk2_4(X14,X15,X16,X22),X22)
        | X22 = k5_partfun1(X14,X15,X16)
        | ~ v1_funct_1(X16)
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( v1_partfun1(esk3_4(X14,X15,X16,X22),X14)
        | r2_hidden(esk2_4(X14,X15,X16,X22),X22)
        | X22 = k5_partfun1(X14,X15,X16)
        | ~ v1_funct_1(X16)
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( r1_partfun1(X16,esk3_4(X14,X15,X16,X22))
        | r2_hidden(esk2_4(X14,X15,X16,X22),X22)
        | X22 = k5_partfun1(X14,X15,X16)
        | ~ v1_funct_1(X16)
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_partfun1])])])])])])).

cnf(c_0_35,plain,
    ( k5_partfun1(X2,X3,X1) = k1_enumset1(X1,X1,X1)
    | ~ v1_funct_1(X1)
    | ~ v1_partfun1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29,c_0_18]),c_0_19])).

cnf(c_0_36,negated_conjecture,
    ( k5_partfun1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0) != k1_enumset1(esk7_0,esk7_0,esk7_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_30,c_0_18]),c_0_18]),c_0_19]),c_0_19])).

cnf(c_0_37,negated_conjecture,
    ( X1 = k1_xboole_0
    | v1_partfun1(esk7_0,esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_33])])).

cnf(c_0_38,plain,
    ( m1_subset_1(esk1_5(X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X5,X4)
    | X4 != k5_partfun1(X1,X2,X3)
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_39,negated_conjecture,
    ( k5_partfun1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk7_0) = k1_enumset1(esk7_0,esk7_0,esk7_0)
    | ~ v1_partfun1(esk7_0,esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_25]),c_0_27])])).

cnf(c_0_40,negated_conjecture,
    ( v1_partfun1(esk7_0,esk4_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_37]),c_0_37])).

cnf(c_0_41,plain,
    ( esk1_5(X1,X2,X3,X4,X5) = X5
    | ~ r2_hidden(X5,X4)
    | X4 != k5_partfun1(X1,X2,X3)
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_42,plain,
    ( v1_funct_1(esk1_5(X1,X2,X3,X4,X5))
    | ~ r2_hidden(X5,X4)
    | X4 != k5_partfun1(X1,X2,X3)
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_43,plain,
    ( v1_partfun1(esk1_5(X1,X2,X3,X4,X5),X1)
    | ~ r2_hidden(X5,X4)
    | X4 != k5_partfun1(X1,X2,X3)
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

fof(c_0_44,plain,(
    ! [X29,X30,X31,X32] :
      ( ~ v1_funct_1(X31)
      | ~ m1_subset_1(X31,k1_zfmisc_1(k2_zfmisc_1(X29,k1_tarski(X30))))
      | ~ v1_funct_1(X32)
      | ~ m1_subset_1(X32,k1_zfmisc_1(k2_zfmisc_1(X29,k1_tarski(X30))))
      | r1_partfun1(X31,X32) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t143_partfun1])])])).

cnf(c_0_45,plain,
    ( m1_subset_1(esk1_5(X1,X2,X3,k5_partfun1(X1,X2,X3),X4),k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X4,k5_partfun1(X1,X2,X3))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X3) ),
    inference(er,[status(thm)],[c_0_38])).

cnf(c_0_46,negated_conjecture,
    ( k5_partfun1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk7_0) = k1_enumset1(esk7_0,esk7_0,esk7_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_39,c_0_40])])).

cnf(c_0_47,plain,
    ( esk1_5(X1,X2,X3,k5_partfun1(X1,X2,X3),X4) = X4
    | ~ r2_hidden(X4,k5_partfun1(X1,X2,X3))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X3) ),
    inference(er,[status(thm)],[c_0_41])).

cnf(c_0_48,plain,
    ( v1_funct_1(esk1_5(X1,X2,X3,k5_partfun1(X1,X2,X3),X4))
    | ~ r2_hidden(X4,k5_partfun1(X1,X2,X3))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X3) ),
    inference(er,[status(thm)],[c_0_42])).

cnf(c_0_49,plain,
    ( v1_partfun1(esk1_5(X1,X2,X3,k5_partfun1(X1,X2,X3),X4),X1)
    | ~ r2_hidden(X4,k5_partfun1(X1,X2,X3))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X3) ),
    inference(er,[status(thm)],[c_0_43])).

cnf(c_0_50,plain,
    ( r1_partfun1(X1,X4)
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,k1_tarski(X3))))
    | ~ v1_funct_1(X4)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,k1_tarski(X3)))) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_51,negated_conjecture,
    ( m1_subset_1(esk1_5(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk7_0,k1_enumset1(esk7_0,esk7_0,esk7_0),X1),k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0))))
    | ~ r2_hidden(X1,k1_enumset1(esk7_0,esk7_0,esk7_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_46]),c_0_25]),c_0_27])])).

cnf(c_0_52,negated_conjecture,
    ( esk1_5(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk7_0,k1_enumset1(esk7_0,esk7_0,esk7_0),X1) = X1
    | ~ r2_hidden(X1,k1_enumset1(esk7_0,esk7_0,esk7_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_46]),c_0_25]),c_0_27])])).

cnf(c_0_53,negated_conjecture,
    ( v1_funct_1(esk1_5(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk7_0,k1_enumset1(esk7_0,esk7_0,esk7_0),X1))
    | ~ r2_hidden(X1,k1_enumset1(esk7_0,esk7_0,esk7_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_46]),c_0_25]),c_0_27])])).

cnf(c_0_54,plain,
    ( X4 = k5_partfun1(X1,X2,X3)
    | ~ r2_hidden(esk2_4(X1,X2,X3,X4),X4)
    | ~ v1_funct_1(X5)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | X5 != esk2_4(X1,X2,X3,X4)
    | ~ v1_partfun1(X5,X1)
    | ~ r1_partfun1(X3,X5)
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_55,negated_conjecture,
    ( v1_partfun1(esk1_5(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk7_0,k1_enumset1(esk7_0,esk7_0,esk7_0),X1),esk4_0)
    | ~ r2_hidden(X1,k1_enumset1(esk7_0,esk7_0,esk7_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_46]),c_0_25]),c_0_27])])).

cnf(c_0_56,plain,
    ( r1_partfun1(X1,X4)
    | ~ v1_funct_1(X4)
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,k1_enumset1(X3,X3,X3))))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,k1_enumset1(X3,X3,X3)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_50,c_0_18]),c_0_18]),c_0_19]),c_0_19])).

cnf(c_0_57,negated_conjecture,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0))))
    | ~ r2_hidden(X1,k1_enumset1(esk7_0,esk7_0,esk7_0)) ),
    inference(spm,[status(thm)],[c_0_51,c_0_52])).

cnf(c_0_58,negated_conjecture,
    ( v1_funct_1(X1)
    | ~ r2_hidden(X1,k1_enumset1(esk7_0,esk7_0,esk7_0)) ),
    inference(spm,[status(thm)],[c_0_53,c_0_52])).

cnf(c_0_59,negated_conjecture,
    ( m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_tarski(esk5_0)))) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_60,plain,
    ( X1 = k5_partfun1(X2,X3,X4)
    | ~ r1_partfun1(X4,esk2_4(X2,X3,X4,X1))
    | ~ v1_partfun1(esk2_4(X2,X3,X4,X1),X2)
    | ~ r2_hidden(esk2_4(X2,X3,X4,X1),X1)
    | ~ m1_subset_1(esk2_4(X2,X3,X4,X1),k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_funct_1(esk2_4(X2,X3,X4,X1))
    | ~ v1_funct_1(X4) ),
    inference(er,[status(thm)],[c_0_54])).

cnf(c_0_61,negated_conjecture,
    ( v1_partfun1(X1,esk4_0)
    | ~ r2_hidden(X1,k1_enumset1(esk7_0,esk7_0,esk7_0)) ),
    inference(spm,[status(thm)],[c_0_55,c_0_52])).

cnf(c_0_62,negated_conjecture,
    ( r1_partfun1(X1,X2)
    | ~ r2_hidden(X2,k1_enumset1(esk7_0,esk7_0,esk7_0))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0))))
    | ~ v1_funct_1(X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_56,c_0_57]),c_0_58])).

cnf(c_0_63,plain,
    ( esk3_4(X1,X2,X3,X4) = esk2_4(X1,X2,X3,X4)
    | r2_hidden(esk2_4(X1,X2,X3,X4),X4)
    | X4 = k5_partfun1(X1,X2,X3)
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_64,negated_conjecture,
    ( m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_59,c_0_18]),c_0_19])).

cnf(c_0_65,negated_conjecture,
    ( v1_funct_1(esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_66,plain,
    ( v1_partfun1(esk3_4(X1,X2,X3,X4),X1)
    | r2_hidden(esk2_4(X1,X2,X3,X4),X4)
    | X4 = k5_partfun1(X1,X2,X3)
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_67,negated_conjecture,
    ( X1 = k5_partfun1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),X2)
    | ~ r2_hidden(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),X2,X1),k1_enumset1(esk7_0,esk7_0,esk7_0))
    | ~ r2_hidden(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),X2,X1),X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0))))
    | ~ v1_funct_1(X2) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_60,c_0_57]),c_0_58]),c_0_61]),c_0_62])).

cnf(c_0_68,negated_conjecture,
    ( esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,X1) = esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,X1)
    | X1 = k5_partfun1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0)
    | r2_hidden(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,X1),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63,c_0_64]),c_0_65])])).

cnf(c_0_69,negated_conjecture,
    ( X1 = k5_partfun1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0)
    | v1_partfun1(esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,X1),esk4_0)
    | r2_hidden(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,X1),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66,c_0_64]),c_0_65])])).

cnf(c_0_70,plain,
    ( v1_funct_1(esk3_4(X1,X2,X3,X4))
    | r2_hidden(esk2_4(X1,X2,X3,X4),X4)
    | X4 = k5_partfun1(X1,X2,X3)
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_71,plain,
    ( r2_hidden(X4,X6)
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | X1 != X4
    | ~ v1_partfun1(X1,X2)
    | ~ r1_partfun1(X5,X1)
    | X6 != k5_partfun1(X2,X3,X5)
    | ~ v1_funct_1(X5)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

fof(c_0_72,plain,(
    ! [X33,X34,X35,X36] :
      ( ~ v1_funct_1(X35)
      | ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34)))
      | ~ v1_funct_1(X36)
      | ~ m1_subset_1(X36,k1_zfmisc_1(k2_zfmisc_1(X33,X34)))
      | ~ v1_partfun1(X35,X33)
      | ~ v1_partfun1(X36,X33)
      | ~ r1_partfun1(X35,X36)
      | X35 = X36 ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_partfun1])])])).

cnf(c_0_73,plain,
    ( m1_subset_1(esk3_4(X1,X2,X3,X4),k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r2_hidden(esk2_4(X1,X2,X3,X4),X4)
    | X4 = k5_partfun1(X1,X2,X3)
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_74,negated_conjecture,
    ( esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)) = esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0))
    | ~ r2_hidden(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)),k1_enumset1(esk7_0,esk7_0,esk7_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_67,c_0_68]),c_0_64]),c_0_65])]),c_0_36])).

cnf(c_0_75,negated_conjecture,
    ( v1_partfun1(esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)),esk4_0)
    | ~ r2_hidden(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)),k1_enumset1(esk7_0,esk7_0,esk7_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_67,c_0_69]),c_0_64]),c_0_65])]),c_0_36])).

cnf(c_0_76,negated_conjecture,
    ( X1 = k5_partfun1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0)
    | r2_hidden(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,X1),X1)
    | v1_funct_1(esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70,c_0_64]),c_0_65])])).

cnf(c_0_77,plain,
    ( r2_hidden(X1,k5_partfun1(X2,X3,X4))
    | ~ r1_partfun1(X4,X1)
    | ~ v1_partfun1(X1,X2)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_funct_1(X4)
    | ~ v1_funct_1(X1) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_71])])).

cnf(c_0_78,plain,
    ( X1 = X4
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_funct_1(X4)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_partfun1(X1,X2)
    | ~ v1_partfun1(X4,X2)
    | ~ r1_partfun1(X1,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_72])).

cnf(c_0_79,negated_conjecture,
    ( r1_partfun1(X1,esk7_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0))))
    | ~ v1_funct_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56,c_0_25]),c_0_27])])).

cnf(c_0_80,negated_conjecture,
    ( X1 = k5_partfun1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0)
    | r2_hidden(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,X1),X1)
    | m1_subset_1(esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,X1),k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0)))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73,c_0_64]),c_0_65])])).

cnf(c_0_81,negated_conjecture,
    ( esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)) = esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_74,c_0_68]),c_0_36])).

cnf(c_0_82,negated_conjecture,
    ( v1_partfun1(esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)),esk4_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_75,c_0_69]),c_0_36])).

cnf(c_0_83,negated_conjecture,
    ( v1_funct_1(esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)))
    | v1_funct_1(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0))) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_76]),c_0_36])).

cnf(c_0_84,negated_conjecture,
    ( esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)) = esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0))
    | v1_funct_1(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0))) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_68]),c_0_36])).

cnf(c_0_85,negated_conjecture,
    ( r2_hidden(X1,k1_enumset1(esk7_0,esk7_0,esk7_0))
    | ~ r1_partfun1(esk7_0,X1)
    | ~ v1_partfun1(X1,esk4_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0))))
    | ~ v1_funct_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_77,c_0_46]),c_0_25]),c_0_27])])).

cnf(c_0_86,negated_conjecture,
    ( X1 = esk7_0
    | ~ v1_partfun1(X1,esk4_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0))))
    | ~ v1_funct_1(X1) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_78,c_0_25]),c_0_27])]),c_0_40])]),c_0_79])).

cnf(c_0_87,negated_conjecture,
    ( m1_subset_1(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)),k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0)))) ),
    inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_80,c_0_81]),c_0_36]),c_0_57])).

cnf(c_0_88,negated_conjecture,
    ( v1_partfun1(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)),esk4_0) ),
    inference(rw,[status(thm)],[c_0_82,c_0_81])).

cnf(c_0_89,negated_conjecture,
    ( v1_funct_1(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0))) ),
    inference(spm,[status(thm)],[c_0_83,c_0_84])).

cnf(c_0_90,negated_conjecture,
    ( r2_hidden(esk7_0,k1_enumset1(esk7_0,esk7_0,esk7_0))
    | ~ r1_partfun1(esk7_0,esk7_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_85,c_0_25]),c_0_40]),c_0_27])])).

cnf(c_0_91,negated_conjecture,
    ( r1_partfun1(esk7_0,esk7_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79,c_0_25]),c_0_27])])).

cnf(c_0_92,negated_conjecture,
    ( esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)) = esk7_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_86,c_0_87]),c_0_88]),c_0_89])])).

cnf(c_0_93,negated_conjecture,
    ( r1_partfun1(esk6_0,esk7_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79,c_0_64]),c_0_65])])).

cnf(c_0_94,negated_conjecture,
    ( r2_hidden(esk7_0,k1_enumset1(esk7_0,esk7_0,esk7_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_90,c_0_91])])).

cnf(c_0_95,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60,c_0_92]),c_0_93]),c_0_40]),c_0_94]),c_0_25]),c_0_64]),c_0_27]),c_0_65])]),c_0_36]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n009.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 12:59:56 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.20/0.48  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.20/0.48  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.20/0.48  #
% 0.20/0.48  # Preprocessing time       : 0.029 s
% 0.20/0.48  # Presaturation interreduction done
% 0.20/0.48  
% 0.20/0.48  # Proof found!
% 0.20/0.48  # SZS status Theorem
% 0.20/0.48  # SZS output start CNFRefutation
% 0.20/0.48  fof(t164_funct_2, conjecture, ![X1, X2, X3]:((v1_funct_1(X3)&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,k1_tarski(X2)))))=>![X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X1,k1_tarski(X2)))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,k1_tarski(X2)))))=>k5_partfun1(X1,k1_tarski(X2),X3)=k1_tarski(X4))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t164_funct_2)).
% 0.20/0.48  fof(t132_funct_2, axiom, ![X1, X2, X3]:((v1_funct_1(X3)&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>((X2=k1_xboole_0&X1!=k1_xboole_0)|v1_partfun1(X3,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t132_funct_2)).
% 0.20/0.48  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 0.20/0.48  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.20/0.48  fof(t130_zfmisc_1, axiom, ![X1, X2]:(X1!=k1_xboole_0=>(k2_zfmisc_1(k1_tarski(X2),X1)!=k1_xboole_0&k2_zfmisc_1(X1,k1_tarski(X2))!=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t130_zfmisc_1)).
% 0.20/0.48  fof(t113_zfmisc_1, axiom, ![X1, X2]:(k2_zfmisc_1(X1,X2)=k1_xboole_0<=>(X1=k1_xboole_0|X2=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t113_zfmisc_1)).
% 0.20/0.48  fof(t174_partfun1, axiom, ![X1, X2, X3]:((v1_funct_1(X3)&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(v1_partfun1(X3,X1)<=>k5_partfun1(X1,X2,X3)=k1_tarski(X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t174_partfun1)).
% 0.20/0.48  fof(d7_partfun1, axiom, ![X1, X2, X3]:((v1_funct_1(X3)&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X4]:(X4=k5_partfun1(X1,X2,X3)<=>![X5]:(r2_hidden(X5,X4)<=>?[X6]:((((v1_funct_1(X6)&m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))&X6=X5)&v1_partfun1(X6,X1))&r1_partfun1(X3,X6))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d7_partfun1)).
% 0.20/0.48  fof(t143_partfun1, axiom, ![X1, X2, X3]:((v1_funct_1(X3)&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,k1_tarski(X2)))))=>![X4]:((v1_funct_1(X4)&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,k1_tarski(X2)))))=>r1_partfun1(X3,X4))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t143_partfun1)).
% 0.20/0.48  fof(t148_partfun1, axiom, ![X1, X2, X3]:((v1_funct_1(X3)&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X4]:((v1_funct_1(X4)&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(((v1_partfun1(X3,X1)&v1_partfun1(X4,X1))&r1_partfun1(X3,X4))=>X3=X4))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t148_partfun1)).
% 0.20/0.48  fof(c_0_10, negated_conjecture, ~(![X1, X2, X3]:((v1_funct_1(X3)&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,k1_tarski(X2)))))=>![X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X1,k1_tarski(X2)))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,k1_tarski(X2)))))=>k5_partfun1(X1,k1_tarski(X2),X3)=k1_tarski(X4)))), inference(assume_negation,[status(cth)],[t164_funct_2])).
% 0.20/0.48  fof(c_0_11, plain, ![X26, X27, X28]:((X27=k1_xboole_0|v1_partfun1(X28,X26)|(~v1_funct_1(X28)|~v1_funct_2(X28,X26,X27)|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))))|(~v1_funct_1(X28)|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27)))))&(X26!=k1_xboole_0|v1_partfun1(X28,X26)|(~v1_funct_1(X28)|~v1_funct_2(X28,X26,X27)|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))))|(~v1_funct_1(X28)|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t132_funct_2])])])).
% 0.20/0.48  fof(c_0_12, negated_conjecture, ((v1_funct_1(esk6_0)&m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_tarski(esk5_0)))))&(((v1_funct_1(esk7_0)&v1_funct_2(esk7_0,esk4_0,k1_tarski(esk5_0)))&m1_subset_1(esk7_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_tarski(esk5_0)))))&k5_partfun1(esk4_0,k1_tarski(esk5_0),esk6_0)!=k1_tarski(esk7_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_10])])])).
% 0.20/0.48  fof(c_0_13, plain, ![X7]:k2_tarski(X7,X7)=k1_tarski(X7), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.20/0.48  fof(c_0_14, plain, ![X8, X9]:k1_enumset1(X8,X8,X9)=k2_tarski(X8,X9), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.20/0.48  fof(c_0_15, plain, ![X12, X13]:((k2_zfmisc_1(k1_tarski(X13),X12)!=k1_xboole_0|X12=k1_xboole_0)&(k2_zfmisc_1(X12,k1_tarski(X13))!=k1_xboole_0|X12=k1_xboole_0)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t130_zfmisc_1])])])).
% 0.20/0.48  cnf(c_0_16, plain, (X1=k1_xboole_0|v1_partfun1(X2,X3)|~v1_funct_1(X2)|~v1_funct_2(X2,X3,X1)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))|~v1_funct_1(X2)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.48  cnf(c_0_17, negated_conjecture, (m1_subset_1(esk7_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_tarski(esk5_0))))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.48  cnf(c_0_18, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.20/0.48  cnf(c_0_19, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.20/0.48  cnf(c_0_20, negated_conjecture, (v1_funct_2(esk7_0,esk4_0,k1_tarski(esk5_0))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.48  fof(c_0_21, plain, ![X10, X11]:((k2_zfmisc_1(X10,X11)!=k1_xboole_0|(X10=k1_xboole_0|X11=k1_xboole_0))&((X10!=k1_xboole_0|k2_zfmisc_1(X10,X11)=k1_xboole_0)&(X11!=k1_xboole_0|k2_zfmisc_1(X10,X11)=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).
% 0.20/0.48  fof(c_0_22, plain, ![X37, X38, X39]:((~v1_partfun1(X39,X37)|k5_partfun1(X37,X38,X39)=k1_tarski(X39)|(~v1_funct_1(X39)|~m1_subset_1(X39,k1_zfmisc_1(k2_zfmisc_1(X37,X38)))))&(k5_partfun1(X37,X38,X39)!=k1_tarski(X39)|v1_partfun1(X39,X37)|(~v1_funct_1(X39)|~m1_subset_1(X39,k1_zfmisc_1(k2_zfmisc_1(X37,X38)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t174_partfun1])])])).
% 0.20/0.48  cnf(c_0_23, plain, (X1=k1_xboole_0|k2_zfmisc_1(X1,k1_tarski(X2))!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.48  cnf(c_0_24, plain, (X1=k1_xboole_0|v1_partfun1(X2,X3)|~v1_funct_1(X2)|~v1_funct_2(X2,X3,X1)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))), inference(cn,[status(thm)],[c_0_16])).
% 0.20/0.48  cnf(c_0_25, negated_conjecture, (m1_subset_1(esk7_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_17, c_0_18]), c_0_19])).
% 0.20/0.48  cnf(c_0_26, negated_conjecture, (v1_funct_2(esk7_0,esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20, c_0_18]), c_0_19])).
% 0.20/0.48  cnf(c_0_27, negated_conjecture, (v1_funct_1(esk7_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.48  cnf(c_0_28, plain, (k2_zfmisc_1(X2,X1)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.20/0.48  cnf(c_0_29, plain, (k5_partfun1(X2,X3,X1)=k1_tarski(X1)|~v1_partfun1(X1,X2)|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.20/0.48  cnf(c_0_30, negated_conjecture, (k5_partfun1(esk4_0,k1_tarski(esk5_0),esk6_0)!=k1_tarski(esk7_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.48  cnf(c_0_31, plain, (X1=k1_xboole_0|k2_zfmisc_1(X1,k1_enumset1(X2,X2,X2))!=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_23, c_0_18]), c_0_19])).
% 0.20/0.48  cnf(c_0_32, negated_conjecture, (k1_enumset1(esk5_0,esk5_0,esk5_0)=k1_xboole_0|v1_partfun1(esk7_0,esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_25]), c_0_26]), c_0_27])])).
% 0.20/0.48  cnf(c_0_33, plain, (k2_zfmisc_1(X1,k1_xboole_0)=k1_xboole_0), inference(er,[status(thm)],[c_0_28])).
% 0.20/0.48  fof(c_0_34, plain, ![X14, X15, X16, X17, X18, X20, X21, X22, X24]:(((((((v1_funct_1(esk1_5(X14,X15,X16,X17,X18))|~r2_hidden(X18,X17)|X17!=k5_partfun1(X14,X15,X16)|(~v1_funct_1(X16)|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15)))))&(m1_subset_1(esk1_5(X14,X15,X16,X17,X18),k1_zfmisc_1(k2_zfmisc_1(X14,X15)))|~r2_hidden(X18,X17)|X17!=k5_partfun1(X14,X15,X16)|(~v1_funct_1(X16)|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))))))&(esk1_5(X14,X15,X16,X17,X18)=X18|~r2_hidden(X18,X17)|X17!=k5_partfun1(X14,X15,X16)|(~v1_funct_1(X16)|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))))))&(v1_partfun1(esk1_5(X14,X15,X16,X17,X18),X14)|~r2_hidden(X18,X17)|X17!=k5_partfun1(X14,X15,X16)|(~v1_funct_1(X16)|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))))))&(r1_partfun1(X16,esk1_5(X14,X15,X16,X17,X18))|~r2_hidden(X18,X17)|X17!=k5_partfun1(X14,X15,X16)|(~v1_funct_1(X16)|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))))))&(~v1_funct_1(X21)|~m1_subset_1(X21,k1_zfmisc_1(k2_zfmisc_1(X14,X15)))|X21!=X20|~v1_partfun1(X21,X14)|~r1_partfun1(X16,X21)|r2_hidden(X20,X17)|X17!=k5_partfun1(X14,X15,X16)|(~v1_funct_1(X16)|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))))))&((~r2_hidden(esk2_4(X14,X15,X16,X22),X22)|(~v1_funct_1(X24)|~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(X14,X15)))|X24!=esk2_4(X14,X15,X16,X22)|~v1_partfun1(X24,X14)|~r1_partfun1(X16,X24))|X22=k5_partfun1(X14,X15,X16)|(~v1_funct_1(X16)|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15)))))&(((((v1_funct_1(esk3_4(X14,X15,X16,X22))|r2_hidden(esk2_4(X14,X15,X16,X22),X22)|X22=k5_partfun1(X14,X15,X16)|(~v1_funct_1(X16)|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15)))))&(m1_subset_1(esk3_4(X14,X15,X16,X22),k1_zfmisc_1(k2_zfmisc_1(X14,X15)))|r2_hidden(esk2_4(X14,X15,X16,X22),X22)|X22=k5_partfun1(X14,X15,X16)|(~v1_funct_1(X16)|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))))))&(esk3_4(X14,X15,X16,X22)=esk2_4(X14,X15,X16,X22)|r2_hidden(esk2_4(X14,X15,X16,X22),X22)|X22=k5_partfun1(X14,X15,X16)|(~v1_funct_1(X16)|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))))))&(v1_partfun1(esk3_4(X14,X15,X16,X22),X14)|r2_hidden(esk2_4(X14,X15,X16,X22),X22)|X22=k5_partfun1(X14,X15,X16)|(~v1_funct_1(X16)|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))))))&(r1_partfun1(X16,esk3_4(X14,X15,X16,X22))|r2_hidden(esk2_4(X14,X15,X16,X22),X22)|X22=k5_partfun1(X14,X15,X16)|(~v1_funct_1(X16)|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15)))))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_partfun1])])])])])])).
% 0.20/0.48  cnf(c_0_35, plain, (k5_partfun1(X2,X3,X1)=k1_enumset1(X1,X1,X1)|~v1_funct_1(X1)|~v1_partfun1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29, c_0_18]), c_0_19])).
% 0.20/0.48  cnf(c_0_36, negated_conjecture, (k5_partfun1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0)!=k1_enumset1(esk7_0,esk7_0,esk7_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_30, c_0_18]), c_0_18]), c_0_19]), c_0_19])).
% 0.20/0.48  cnf(c_0_37, negated_conjecture, (X1=k1_xboole_0|v1_partfun1(esk7_0,esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_33])])).
% 0.20/0.48  cnf(c_0_38, plain, (m1_subset_1(esk1_5(X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~r2_hidden(X5,X4)|X4!=k5_partfun1(X1,X2,X3)|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.20/0.48  cnf(c_0_39, negated_conjecture, (k5_partfun1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk7_0)=k1_enumset1(esk7_0,esk7_0,esk7_0)|~v1_partfun1(esk7_0,esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_25]), c_0_27])])).
% 0.20/0.48  cnf(c_0_40, negated_conjecture, (v1_partfun1(esk7_0,esk4_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_37]), c_0_37])).
% 0.20/0.48  cnf(c_0_41, plain, (esk1_5(X1,X2,X3,X4,X5)=X5|~r2_hidden(X5,X4)|X4!=k5_partfun1(X1,X2,X3)|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.20/0.48  cnf(c_0_42, plain, (v1_funct_1(esk1_5(X1,X2,X3,X4,X5))|~r2_hidden(X5,X4)|X4!=k5_partfun1(X1,X2,X3)|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.20/0.48  cnf(c_0_43, plain, (v1_partfun1(esk1_5(X1,X2,X3,X4,X5),X1)|~r2_hidden(X5,X4)|X4!=k5_partfun1(X1,X2,X3)|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.20/0.48  fof(c_0_44, plain, ![X29, X30, X31, X32]:(~v1_funct_1(X31)|~m1_subset_1(X31,k1_zfmisc_1(k2_zfmisc_1(X29,k1_tarski(X30))))|(~v1_funct_1(X32)|~m1_subset_1(X32,k1_zfmisc_1(k2_zfmisc_1(X29,k1_tarski(X30))))|r1_partfun1(X31,X32))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t143_partfun1])])])).
% 0.20/0.48  cnf(c_0_45, plain, (m1_subset_1(esk1_5(X1,X2,X3,k5_partfun1(X1,X2,X3),X4),k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~r2_hidden(X4,k5_partfun1(X1,X2,X3))|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~v1_funct_1(X3)), inference(er,[status(thm)],[c_0_38])).
% 0.20/0.48  cnf(c_0_46, negated_conjecture, (k5_partfun1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk7_0)=k1_enumset1(esk7_0,esk7_0,esk7_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_39, c_0_40])])).
% 0.20/0.48  cnf(c_0_47, plain, (esk1_5(X1,X2,X3,k5_partfun1(X1,X2,X3),X4)=X4|~r2_hidden(X4,k5_partfun1(X1,X2,X3))|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~v1_funct_1(X3)), inference(er,[status(thm)],[c_0_41])).
% 0.20/0.48  cnf(c_0_48, plain, (v1_funct_1(esk1_5(X1,X2,X3,k5_partfun1(X1,X2,X3),X4))|~r2_hidden(X4,k5_partfun1(X1,X2,X3))|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~v1_funct_1(X3)), inference(er,[status(thm)],[c_0_42])).
% 0.20/0.48  cnf(c_0_49, plain, (v1_partfun1(esk1_5(X1,X2,X3,k5_partfun1(X1,X2,X3),X4),X1)|~r2_hidden(X4,k5_partfun1(X1,X2,X3))|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~v1_funct_1(X3)), inference(er,[status(thm)],[c_0_43])).
% 0.20/0.48  cnf(c_0_50, plain, (r1_partfun1(X1,X4)|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,k1_tarski(X3))))|~v1_funct_1(X4)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,k1_tarski(X3))))), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.20/0.48  cnf(c_0_51, negated_conjecture, (m1_subset_1(esk1_5(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk7_0,k1_enumset1(esk7_0,esk7_0,esk7_0),X1),k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0))))|~r2_hidden(X1,k1_enumset1(esk7_0,esk7_0,esk7_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_46]), c_0_25]), c_0_27])])).
% 0.20/0.48  cnf(c_0_52, negated_conjecture, (esk1_5(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk7_0,k1_enumset1(esk7_0,esk7_0,esk7_0),X1)=X1|~r2_hidden(X1,k1_enumset1(esk7_0,esk7_0,esk7_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_46]), c_0_25]), c_0_27])])).
% 0.20/0.48  cnf(c_0_53, negated_conjecture, (v1_funct_1(esk1_5(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk7_0,k1_enumset1(esk7_0,esk7_0,esk7_0),X1))|~r2_hidden(X1,k1_enumset1(esk7_0,esk7_0,esk7_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_46]), c_0_25]), c_0_27])])).
% 0.20/0.48  cnf(c_0_54, plain, (X4=k5_partfun1(X1,X2,X3)|~r2_hidden(esk2_4(X1,X2,X3,X4),X4)|~v1_funct_1(X5)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|X5!=esk2_4(X1,X2,X3,X4)|~v1_partfun1(X5,X1)|~r1_partfun1(X3,X5)|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.20/0.48  cnf(c_0_55, negated_conjecture, (v1_partfun1(esk1_5(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk7_0,k1_enumset1(esk7_0,esk7_0,esk7_0),X1),esk4_0)|~r2_hidden(X1,k1_enumset1(esk7_0,esk7_0,esk7_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_46]), c_0_25]), c_0_27])])).
% 0.20/0.48  cnf(c_0_56, plain, (r1_partfun1(X1,X4)|~v1_funct_1(X4)|~v1_funct_1(X1)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,k1_enumset1(X3,X3,X3))))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,k1_enumset1(X3,X3,X3))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_50, c_0_18]), c_0_18]), c_0_19]), c_0_19])).
% 0.20/0.48  cnf(c_0_57, negated_conjecture, (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0))))|~r2_hidden(X1,k1_enumset1(esk7_0,esk7_0,esk7_0))), inference(spm,[status(thm)],[c_0_51, c_0_52])).
% 0.20/0.48  cnf(c_0_58, negated_conjecture, (v1_funct_1(X1)|~r2_hidden(X1,k1_enumset1(esk7_0,esk7_0,esk7_0))), inference(spm,[status(thm)],[c_0_53, c_0_52])).
% 0.20/0.48  cnf(c_0_59, negated_conjecture, (m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_tarski(esk5_0))))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.48  cnf(c_0_60, plain, (X1=k5_partfun1(X2,X3,X4)|~r1_partfun1(X4,esk2_4(X2,X3,X4,X1))|~v1_partfun1(esk2_4(X2,X3,X4,X1),X2)|~r2_hidden(esk2_4(X2,X3,X4,X1),X1)|~m1_subset_1(esk2_4(X2,X3,X4,X1),k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~v1_funct_1(esk2_4(X2,X3,X4,X1))|~v1_funct_1(X4)), inference(er,[status(thm)],[c_0_54])).
% 0.20/0.48  cnf(c_0_61, negated_conjecture, (v1_partfun1(X1,esk4_0)|~r2_hidden(X1,k1_enumset1(esk7_0,esk7_0,esk7_0))), inference(spm,[status(thm)],[c_0_55, c_0_52])).
% 0.20/0.48  cnf(c_0_62, negated_conjecture, (r1_partfun1(X1,X2)|~r2_hidden(X2,k1_enumset1(esk7_0,esk7_0,esk7_0))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0))))|~v1_funct_1(X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_56, c_0_57]), c_0_58])).
% 0.20/0.48  cnf(c_0_63, plain, (esk3_4(X1,X2,X3,X4)=esk2_4(X1,X2,X3,X4)|r2_hidden(esk2_4(X1,X2,X3,X4),X4)|X4=k5_partfun1(X1,X2,X3)|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.20/0.48  cnf(c_0_64, negated_conjecture, (m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_59, c_0_18]), c_0_19])).
% 0.20/0.48  cnf(c_0_65, negated_conjecture, (v1_funct_1(esk6_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.48  cnf(c_0_66, plain, (v1_partfun1(esk3_4(X1,X2,X3,X4),X1)|r2_hidden(esk2_4(X1,X2,X3,X4),X4)|X4=k5_partfun1(X1,X2,X3)|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.20/0.48  cnf(c_0_67, negated_conjecture, (X1=k5_partfun1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),X2)|~r2_hidden(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),X2,X1),k1_enumset1(esk7_0,esk7_0,esk7_0))|~r2_hidden(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),X2,X1),X1)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0))))|~v1_funct_1(X2)), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_60, c_0_57]), c_0_58]), c_0_61]), c_0_62])).
% 0.20/0.48  cnf(c_0_68, negated_conjecture, (esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,X1)=esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,X1)|X1=k5_partfun1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0)|r2_hidden(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,X1),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63, c_0_64]), c_0_65])])).
% 0.20/0.48  cnf(c_0_69, negated_conjecture, (X1=k5_partfun1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0)|v1_partfun1(esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,X1),esk4_0)|r2_hidden(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,X1),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66, c_0_64]), c_0_65])])).
% 0.20/0.48  cnf(c_0_70, plain, (v1_funct_1(esk3_4(X1,X2,X3,X4))|r2_hidden(esk2_4(X1,X2,X3,X4),X4)|X4=k5_partfun1(X1,X2,X3)|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.20/0.48  cnf(c_0_71, plain, (r2_hidden(X4,X6)|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|X1!=X4|~v1_partfun1(X1,X2)|~r1_partfun1(X5,X1)|X6!=k5_partfun1(X2,X3,X5)|~v1_funct_1(X5)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.20/0.48  fof(c_0_72, plain, ![X33, X34, X35, X36]:(~v1_funct_1(X35)|~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34)))|(~v1_funct_1(X36)|~m1_subset_1(X36,k1_zfmisc_1(k2_zfmisc_1(X33,X34)))|(~v1_partfun1(X35,X33)|~v1_partfun1(X36,X33)|~r1_partfun1(X35,X36)|X35=X36))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_partfun1])])])).
% 0.20/0.48  cnf(c_0_73, plain, (m1_subset_1(esk3_4(X1,X2,X3,X4),k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|r2_hidden(esk2_4(X1,X2,X3,X4),X4)|X4=k5_partfun1(X1,X2,X3)|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.20/0.48  cnf(c_0_74, negated_conjecture, (esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0))=esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0))|~r2_hidden(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)),k1_enumset1(esk7_0,esk7_0,esk7_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_67, c_0_68]), c_0_64]), c_0_65])]), c_0_36])).
% 0.20/0.48  cnf(c_0_75, negated_conjecture, (v1_partfun1(esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)),esk4_0)|~r2_hidden(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)),k1_enumset1(esk7_0,esk7_0,esk7_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_67, c_0_69]), c_0_64]), c_0_65])]), c_0_36])).
% 0.20/0.48  cnf(c_0_76, negated_conjecture, (X1=k5_partfun1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0)|r2_hidden(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,X1),X1)|v1_funct_1(esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70, c_0_64]), c_0_65])])).
% 0.20/0.48  cnf(c_0_77, plain, (r2_hidden(X1,k5_partfun1(X2,X3,X4))|~r1_partfun1(X4,X1)|~v1_partfun1(X1,X2)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~v1_funct_1(X4)|~v1_funct_1(X1)), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_71])])).
% 0.20/0.48  cnf(c_0_78, plain, (X1=X4|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~v1_funct_1(X4)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~v1_partfun1(X1,X2)|~v1_partfun1(X4,X2)|~r1_partfun1(X1,X4)), inference(split_conjunct,[status(thm)],[c_0_72])).
% 0.20/0.48  cnf(c_0_79, negated_conjecture, (r1_partfun1(X1,esk7_0)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0))))|~v1_funct_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56, c_0_25]), c_0_27])])).
% 0.20/0.48  cnf(c_0_80, negated_conjecture, (X1=k5_partfun1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0)|r2_hidden(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,X1),X1)|m1_subset_1(esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,X1),k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0))))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73, c_0_64]), c_0_65])])).
% 0.20/0.48  cnf(c_0_81, negated_conjecture, (esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0))=esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_74, c_0_68]), c_0_36])).
% 0.20/0.48  cnf(c_0_82, negated_conjecture, (v1_partfun1(esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)),esk4_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_75, c_0_69]), c_0_36])).
% 0.20/0.48  cnf(c_0_83, negated_conjecture, (v1_funct_1(esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)))|v1_funct_1(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_58, c_0_76]), c_0_36])).
% 0.20/0.48  cnf(c_0_84, negated_conjecture, (esk3_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0))=esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0))|v1_funct_1(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_58, c_0_68]), c_0_36])).
% 0.20/0.48  cnf(c_0_85, negated_conjecture, (r2_hidden(X1,k1_enumset1(esk7_0,esk7_0,esk7_0))|~r1_partfun1(esk7_0,X1)|~v1_partfun1(X1,esk4_0)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0))))|~v1_funct_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_77, c_0_46]), c_0_25]), c_0_27])])).
% 0.20/0.48  cnf(c_0_86, negated_conjecture, (X1=esk7_0|~v1_partfun1(X1,esk4_0)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0))))|~v1_funct_1(X1)), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_78, c_0_25]), c_0_27])]), c_0_40])]), c_0_79])).
% 0.20/0.48  cnf(c_0_87, negated_conjecture, (m1_subset_1(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)),k1_zfmisc_1(k2_zfmisc_1(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0))))), inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_80, c_0_81]), c_0_36]), c_0_57])).
% 0.20/0.48  cnf(c_0_88, negated_conjecture, (v1_partfun1(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)),esk4_0)), inference(rw,[status(thm)],[c_0_82, c_0_81])).
% 0.20/0.48  cnf(c_0_89, negated_conjecture, (v1_funct_1(esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0)))), inference(spm,[status(thm)],[c_0_83, c_0_84])).
% 0.20/0.48  cnf(c_0_90, negated_conjecture, (r2_hidden(esk7_0,k1_enumset1(esk7_0,esk7_0,esk7_0))|~r1_partfun1(esk7_0,esk7_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_85, c_0_25]), c_0_40]), c_0_27])])).
% 0.20/0.48  cnf(c_0_91, negated_conjecture, (r1_partfun1(esk7_0,esk7_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79, c_0_25]), c_0_27])])).
% 0.20/0.48  cnf(c_0_92, negated_conjecture, (esk2_4(esk4_0,k1_enumset1(esk5_0,esk5_0,esk5_0),esk6_0,k1_enumset1(esk7_0,esk7_0,esk7_0))=esk7_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_86, c_0_87]), c_0_88]), c_0_89])])).
% 0.20/0.48  cnf(c_0_93, negated_conjecture, (r1_partfun1(esk6_0,esk7_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79, c_0_64]), c_0_65])])).
% 0.20/0.48  cnf(c_0_94, negated_conjecture, (r2_hidden(esk7_0,k1_enumset1(esk7_0,esk7_0,esk7_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_90, c_0_91])])).
% 0.20/0.48  cnf(c_0_95, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60, c_0_92]), c_0_93]), c_0_40]), c_0_94]), c_0_25]), c_0_64]), c_0_27]), c_0_65])]), c_0_36]), ['proof']).
% 0.20/0.48  # SZS output end CNFRefutation
% 0.20/0.48  # Proof object total steps             : 96
% 0.20/0.48  # Proof object clause steps            : 75
% 0.20/0.48  # Proof object formula steps           : 21
% 0.20/0.48  # Proof object conjectures             : 49
% 0.20/0.48  # Proof object clause conjectures      : 46
% 0.20/0.48  # Proof object formula conjectures     : 3
% 0.20/0.48  # Proof object initial clauses used    : 24
% 0.20/0.48  # Proof object initial formulas used   : 10
% 0.20/0.48  # Proof object generating inferences   : 33
% 0.20/0.48  # Proof object simplifying inferences  : 107
% 0.20/0.48  # Training examples: 0 positive, 0 negative
% 0.20/0.48  # Parsed axioms                        : 10
% 0.20/0.48  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.48  # Initial clauses                      : 31
% 0.20/0.48  # Removed in clause preprocessing      : 2
% 0.20/0.48  # Initial clauses in saturation        : 29
% 0.20/0.48  # Processed clauses                    : 927
% 0.20/0.48  # ...of these trivial                  : 0
% 0.20/0.48  # ...subsumed                          : 456
% 0.20/0.48  # ...remaining for further processing  : 471
% 0.20/0.48  # Other redundant clauses eliminated   : 11
% 0.20/0.48  # Clauses deleted for lack of memory   : 0
% 0.20/0.48  # Backward-subsumed                    : 26
% 0.20/0.48  # Backward-rewritten                   : 47
% 0.20/0.48  # Generated clauses                    : 2669
% 0.20/0.48  # ...of the previous two non-trivial   : 2402
% 0.20/0.48  # Contextual simplify-reflections      : 120
% 0.20/0.48  # Paramodulations                      : 2659
% 0.20/0.48  # Factorizations                       : 0
% 0.20/0.48  # Equation resolutions                 : 11
% 0.20/0.48  # Propositional unsat checks           : 0
% 0.20/0.48  #    Propositional check models        : 0
% 0.20/0.48  #    Propositional check unsatisfiable : 0
% 0.20/0.48  #    Propositional clauses             : 0
% 0.20/0.48  #    Propositional clauses after purity: 0
% 0.20/0.48  #    Propositional unsat core size     : 0
% 0.20/0.48  #    Propositional preprocessing time  : 0.000
% 0.20/0.48  #    Propositional encoding time       : 0.000
% 0.20/0.48  #    Propositional solver time         : 0.000
% 0.20/0.48  #    Success case prop preproc time    : 0.000
% 0.20/0.48  #    Success case prop encoding time   : 0.000
% 0.20/0.48  #    Success case prop solver time     : 0.000
% 0.20/0.48  # Current number of processed clauses  : 359
% 0.20/0.48  #    Positive orientable unit clauses  : 15
% 0.20/0.48  #    Positive unorientable unit clauses: 0
% 0.20/0.48  #    Negative unit clauses             : 1
% 0.20/0.48  #    Non-unit-clauses                  : 343
% 0.20/0.48  # Current number of unprocessed clauses: 1466
% 0.20/0.48  # ...number of literals in the above   : 8604
% 0.20/0.48  # Current number of archived formulas  : 0
% 0.20/0.48  # Current number of archived clauses   : 104
% 0.20/0.48  # Clause-clause subsumption calls (NU) : 19439
% 0.20/0.48  # Rec. Clause-clause subsumption calls : 5793
% 0.20/0.48  # Non-unit clause-clause subsumptions  : 580
% 0.20/0.48  # Unit Clause-clause subsumption calls : 479
% 0.20/0.48  # Rewrite failures with RHS unbound    : 0
% 0.20/0.48  # BW rewrite match attempts            : 48
% 0.20/0.48  # BW rewrite match successes           : 11
% 0.20/0.48  # Condensation attempts                : 0
% 0.20/0.48  # Condensation successes               : 0
% 0.20/0.48  # Termbank termtop insertions          : 101338
% 0.20/0.49  
% 0.20/0.49  # -------------------------------------------------
% 0.20/0.49  # User time                : 0.140 s
% 0.20/0.49  # System time              : 0.006 s
% 0.20/0.49  # Total time               : 0.146 s
% 0.20/0.49  # Maximum resident set size: 1584 pages
%------------------------------------------------------------------------------
