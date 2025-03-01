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
% DateTime   : Thu Dec  3 11:00:12 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   55 ( 367 expanded)
%              Number of clauses        :   36 ( 139 expanded)
%              Number of leaves         :    9 (  92 expanded)
%              Depth                    :   10
%              Number of atoms          :  201 (1861 expanded)
%              Number of equality atoms :  130 (1202 expanded)
%              Maximal formula depth    :   17 (   5 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t70_mcart_1,conjecture,(
    ! [X1,X2,X3,X4,X5] :
      ( m1_subset_1(X5,k3_zfmisc_1(X1,X2,X3))
     => ( ! [X6] :
            ( m1_subset_1(X6,X1)
           => ! [X7] :
                ( m1_subset_1(X7,X2)
               => ! [X8] :
                    ( m1_subset_1(X8,X3)
                   => ( X5 = k3_mcart_1(X6,X7,X8)
                     => X4 = X7 ) ) ) )
       => ( X1 = k1_xboole_0
          | X2 = k1_xboole_0
          | X3 = k1_xboole_0
          | X4 = k6_mcart_1(X1,X2,X3,X5) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_mcart_1)).

fof(t50_mcart_1,axiom,(
    ! [X1,X2,X3] :
      ~ ( X1 != k1_xboole_0
        & X2 != k1_xboole_0
        & X3 != k1_xboole_0
        & ~ ! [X4] :
              ( m1_subset_1(X4,k3_zfmisc_1(X1,X2,X3))
             => ( k5_mcart_1(X1,X2,X3,X4) = k1_mcart_1(k1_mcart_1(X4))
                & k6_mcart_1(X1,X2,X3,X4) = k2_mcart_1(k1_mcart_1(X4))
                & k7_mcart_1(X1,X2,X3,X4) = k2_mcart_1(X4) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t50_mcart_1)).

fof(d3_zfmisc_1,axiom,(
    ! [X1,X2,X3] : k3_zfmisc_1(X1,X2,X3) = k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_zfmisc_1)).

fof(dt_k7_mcart_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X4,k3_zfmisc_1(X1,X2,X3))
     => m1_subset_1(k7_mcart_1(X1,X2,X3,X4),X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k7_mcart_1)).

fof(t48_mcart_1,axiom,(
    ! [X1,X2,X3] :
      ~ ( X1 != k1_xboole_0
        & X2 != k1_xboole_0
        & X3 != k1_xboole_0
        & ~ ! [X4] :
              ( m1_subset_1(X4,k3_zfmisc_1(X1,X2,X3))
             => X4 = k3_mcart_1(k5_mcart_1(X1,X2,X3,X4),k6_mcart_1(X1,X2,X3,X4),k7_mcart_1(X1,X2,X3,X4)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_mcart_1)).

fof(d3_mcart_1,axiom,(
    ! [X1,X2,X3] : k3_mcart_1(X1,X2,X3) = k4_tarski(k4_tarski(X1,X2),X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_mcart_1)).

fof(l44_mcart_1,axiom,(
    ! [X1,X2,X3] :
      ~ ( X1 != k1_xboole_0
        & X2 != k1_xboole_0
        & X3 != k1_xboole_0
        & ? [X4] :
            ( m1_subset_1(X4,k3_zfmisc_1(X1,X2,X3))
            & ! [X5] :
                ( m1_subset_1(X5,X1)
               => ! [X6] :
                    ( m1_subset_1(X6,X2)
                   => ! [X7] :
                        ( m1_subset_1(X7,X3)
                       => X4 != k3_mcart_1(X5,X6,X7) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l44_mcart_1)).

fof(t28_mcart_1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] :
      ( k3_mcart_1(X1,X2,X3) = k3_mcart_1(X4,X5,X6)
     => ( X1 = X4
        & X2 = X5
        & X3 = X6 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_mcart_1)).

fof(dt_k5_mcart_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X4,k3_zfmisc_1(X1,X2,X3))
     => m1_subset_1(k5_mcart_1(X1,X2,X3,X4),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k5_mcart_1)).

fof(c_0_9,negated_conjecture,(
    ~ ! [X1,X2,X3,X4,X5] :
        ( m1_subset_1(X5,k3_zfmisc_1(X1,X2,X3))
       => ( ! [X6] :
              ( m1_subset_1(X6,X1)
             => ! [X7] :
                  ( m1_subset_1(X7,X2)
                 => ! [X8] :
                      ( m1_subset_1(X8,X3)
                     => ( X5 = k3_mcart_1(X6,X7,X8)
                       => X4 = X7 ) ) ) )
         => ( X1 = k1_xboole_0
            | X2 = k1_xboole_0
            | X3 = k1_xboole_0
            | X4 = k6_mcart_1(X1,X2,X3,X5) ) ) ) ),
    inference(assume_negation,[status(cth)],[t70_mcart_1])).

fof(c_0_10,plain,(
    ! [X40,X41,X42,X43] :
      ( ( k5_mcart_1(X40,X41,X42,X43) = k1_mcart_1(k1_mcart_1(X43))
        | ~ m1_subset_1(X43,k3_zfmisc_1(X40,X41,X42))
        | X40 = k1_xboole_0
        | X41 = k1_xboole_0
        | X42 = k1_xboole_0 )
      & ( k6_mcart_1(X40,X41,X42,X43) = k2_mcart_1(k1_mcart_1(X43))
        | ~ m1_subset_1(X43,k3_zfmisc_1(X40,X41,X42))
        | X40 = k1_xboole_0
        | X41 = k1_xboole_0
        | X42 = k1_xboole_0 )
      & ( k7_mcart_1(X40,X41,X42,X43) = k2_mcart_1(X43)
        | ~ m1_subset_1(X43,k3_zfmisc_1(X40,X41,X42))
        | X40 = k1_xboole_0
        | X41 = k1_xboole_0
        | X42 = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t50_mcart_1])])])])).

fof(c_0_11,plain,(
    ! [X12,X13,X14] : k3_zfmisc_1(X12,X13,X14) = k2_zfmisc_1(k2_zfmisc_1(X12,X13),X14) ),
    inference(variable_rename,[status(thm)],[d3_zfmisc_1])).

fof(c_0_12,negated_conjecture,(
    ! [X49,X50,X51] :
      ( m1_subset_1(esk8_0,k3_zfmisc_1(esk4_0,esk5_0,esk6_0))
      & ( ~ m1_subset_1(X49,esk4_0)
        | ~ m1_subset_1(X50,esk5_0)
        | ~ m1_subset_1(X51,esk6_0)
        | esk8_0 != k3_mcart_1(X49,X50,X51)
        | esk7_0 = X50 )
      & esk4_0 != k1_xboole_0
      & esk5_0 != k1_xboole_0
      & esk6_0 != k1_xboole_0
      & esk7_0 != k6_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_9])])])])).

fof(c_0_13,plain,(
    ! [X19,X20,X21,X22] :
      ( ~ m1_subset_1(X22,k3_zfmisc_1(X19,X20,X21))
      | m1_subset_1(k7_mcart_1(X19,X20,X21,X22),X21) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k7_mcart_1])])).

fof(c_0_14,plain,(
    ! [X36,X37,X38,X39] :
      ( X36 = k1_xboole_0
      | X37 = k1_xboole_0
      | X38 = k1_xboole_0
      | ~ m1_subset_1(X39,k3_zfmisc_1(X36,X37,X38))
      | X39 = k3_mcart_1(k5_mcart_1(X36,X37,X38,X39),k6_mcart_1(X36,X37,X38,X39),k7_mcart_1(X36,X37,X38,X39)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t48_mcart_1])])])).

fof(c_0_15,plain,(
    ! [X9,X10,X11] : k3_mcart_1(X9,X10,X11) = k4_tarski(k4_tarski(X9,X10),X11) ),
    inference(variable_rename,[status(thm)],[d3_mcart_1])).

cnf(c_0_16,plain,
    ( k7_mcart_1(X1,X2,X3,X4) = k2_mcart_1(X4)
    | X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | ~ m1_subset_1(X4,k3_zfmisc_1(X1,X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_17,plain,
    ( k3_zfmisc_1(X1,X2,X3) = k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_18,negated_conjecture,
    ( m1_subset_1(esk8_0,k3_zfmisc_1(esk4_0,esk5_0,esk6_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_19,plain,
    ( m1_subset_1(k7_mcart_1(X2,X3,X4,X1),X4)
    | ~ m1_subset_1(X1,k3_zfmisc_1(X2,X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_20,plain,(
    ! [X23,X24,X25,X26] :
      ( ( m1_subset_1(esk1_4(X23,X24,X25,X26),X23)
        | ~ m1_subset_1(X26,k3_zfmisc_1(X23,X24,X25))
        | X23 = k1_xboole_0
        | X24 = k1_xboole_0
        | X25 = k1_xboole_0 )
      & ( m1_subset_1(esk2_4(X23,X24,X25,X26),X24)
        | ~ m1_subset_1(X26,k3_zfmisc_1(X23,X24,X25))
        | X23 = k1_xboole_0
        | X24 = k1_xboole_0
        | X25 = k1_xboole_0 )
      & ( m1_subset_1(esk3_4(X23,X24,X25,X26),X25)
        | ~ m1_subset_1(X26,k3_zfmisc_1(X23,X24,X25))
        | X23 = k1_xboole_0
        | X24 = k1_xboole_0
        | X25 = k1_xboole_0 )
      & ( X26 = k3_mcart_1(esk1_4(X23,X24,X25,X26),esk2_4(X23,X24,X25,X26),esk3_4(X23,X24,X25,X26))
        | ~ m1_subset_1(X26,k3_zfmisc_1(X23,X24,X25))
        | X23 = k1_xboole_0
        | X24 = k1_xboole_0
        | X25 = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l44_mcart_1])])])])])).

fof(c_0_21,plain,(
    ! [X30,X31,X32,X33,X34,X35] :
      ( ( X30 = X33
        | k3_mcart_1(X30,X31,X32) != k3_mcart_1(X33,X34,X35) )
      & ( X31 = X34
        | k3_mcart_1(X30,X31,X32) != k3_mcart_1(X33,X34,X35) )
      & ( X32 = X35
        | k3_mcart_1(X30,X31,X32) != k3_mcart_1(X33,X34,X35) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_mcart_1])])])).

cnf(c_0_22,plain,
    ( X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | X4 = k3_mcart_1(k5_mcart_1(X1,X2,X3,X4),k6_mcart_1(X1,X2,X3,X4),k7_mcart_1(X1,X2,X3,X4))
    | ~ m1_subset_1(X4,k3_zfmisc_1(X1,X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_23,plain,
    ( k3_mcart_1(X1,X2,X3) = k4_tarski(k4_tarski(X1,X2),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_24,plain,
    ( X3 = k1_xboole_0
    | X2 = k1_xboole_0
    | X1 = k1_xboole_0
    | k7_mcart_1(X1,X2,X3,X4) = k2_mcart_1(X4)
    | ~ m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3)) ),
    inference(rw,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_25,negated_conjecture,
    ( m1_subset_1(esk8_0,k2_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0),esk6_0)) ),
    inference(rw,[status(thm)],[c_0_18,c_0_17])).

cnf(c_0_26,negated_conjecture,
    ( esk4_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_27,negated_conjecture,
    ( esk5_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_28,negated_conjecture,
    ( esk6_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_29,negated_conjecture,
    ( esk7_0 = X2
    | ~ m1_subset_1(X1,esk4_0)
    | ~ m1_subset_1(X2,esk5_0)
    | ~ m1_subset_1(X3,esk6_0)
    | esk8_0 != k3_mcart_1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_30,plain,
    ( m1_subset_1(k7_mcart_1(X2,X3,X4,X1),X4)
    | ~ m1_subset_1(X1,k2_zfmisc_1(k2_zfmisc_1(X2,X3),X4)) ),
    inference(rw,[status(thm)],[c_0_19,c_0_17])).

cnf(c_0_31,plain,
    ( m1_subset_1(esk2_4(X1,X2,X3,X4),X2)
    | X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | ~ m1_subset_1(X4,k3_zfmisc_1(X1,X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_32,plain,
    ( X1 = X2
    | k3_mcart_1(X3,X1,X4) != k3_mcart_1(X5,X2,X6) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_33,plain,
    ( X3 = k1_xboole_0
    | X2 = k1_xboole_0
    | X1 = k1_xboole_0
    | X4 = k4_tarski(k4_tarski(k5_mcart_1(X1,X2,X3,X4),k6_mcart_1(X1,X2,X3,X4)),k7_mcart_1(X1,X2,X3,X4))
    | ~ m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_22,c_0_23]),c_0_17])).

cnf(c_0_34,negated_conjecture,
    ( k7_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0) = k2_mcart_1(esk8_0) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_25]),c_0_26]),c_0_27]),c_0_28])).

cnf(c_0_35,plain,
    ( X1 = k3_mcart_1(esk1_4(X2,X3,X4,X1),esk2_4(X2,X3,X4,X1),esk3_4(X2,X3,X4,X1))
    | X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | X4 = k1_xboole_0
    | ~ m1_subset_1(X1,k3_zfmisc_1(X2,X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_36,negated_conjecture,
    ( esk7_0 = X2
    | esk8_0 != k4_tarski(k4_tarski(X1,X2),X3)
    | ~ m1_subset_1(X3,esk6_0)
    | ~ m1_subset_1(X2,esk5_0)
    | ~ m1_subset_1(X1,esk4_0) ),
    inference(rw,[status(thm)],[c_0_29,c_0_23])).

cnf(c_0_37,negated_conjecture,
    ( m1_subset_1(k7_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0),esk6_0) ),
    inference(spm,[status(thm)],[c_0_30,c_0_25])).

cnf(c_0_38,plain,
    ( X3 = k1_xboole_0
    | X2 = k1_xboole_0
    | X1 = k1_xboole_0
    | m1_subset_1(esk2_4(X1,X2,X3,X4),X2)
    | ~ m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3)) ),
    inference(rw,[status(thm)],[c_0_31,c_0_17])).

cnf(c_0_39,plain,
    ( X1 = X2
    | k4_tarski(k4_tarski(X3,X1),X4) != k4_tarski(k4_tarski(X5,X2),X6) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_32,c_0_23]),c_0_23])).

cnf(c_0_40,negated_conjecture,
    ( k4_tarski(k4_tarski(k5_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0),k6_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0)),k2_mcart_1(esk8_0)) = esk8_0 ),
    inference(rw,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_25]),c_0_26]),c_0_27]),c_0_28]),c_0_34])).

cnf(c_0_41,plain,
    ( X4 = k1_xboole_0
    | X3 = k1_xboole_0
    | X2 = k1_xboole_0
    | X1 = k4_tarski(k4_tarski(esk1_4(X2,X3,X4,X1),esk2_4(X2,X3,X4,X1)),esk3_4(X2,X3,X4,X1))
    | ~ m1_subset_1(X1,k2_zfmisc_1(k2_zfmisc_1(X2,X3),X4)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_35,c_0_23]),c_0_17])).

fof(c_0_42,plain,(
    ! [X15,X16,X17,X18] :
      ( ~ m1_subset_1(X18,k3_zfmisc_1(X15,X16,X17))
      | m1_subset_1(k5_mcart_1(X15,X16,X17,X18),X15) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k5_mcart_1])])).

cnf(c_0_43,negated_conjecture,
    ( esk7_0 = X1
    | k4_tarski(k4_tarski(X2,X1),k7_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0)) != esk8_0
    | ~ m1_subset_1(X1,esk5_0)
    | ~ m1_subset_1(X2,esk4_0) ),
    inference(spm,[status(thm)],[c_0_36,c_0_37])).

cnf(c_0_44,negated_conjecture,
    ( m1_subset_1(esk2_4(esk4_0,esk5_0,esk6_0,esk8_0),esk5_0) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_25]),c_0_26]),c_0_27]),c_0_28])).

cnf(c_0_45,negated_conjecture,
    ( X1 = k6_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0)
    | k4_tarski(k4_tarski(X2,X1),X3) != esk8_0 ),
    inference(spm,[status(thm)],[c_0_39,c_0_40])).

cnf(c_0_46,negated_conjecture,
    ( k4_tarski(k4_tarski(esk1_4(esk4_0,esk5_0,esk6_0,esk8_0),esk2_4(esk4_0,esk5_0,esk6_0,esk8_0)),esk3_4(esk4_0,esk5_0,esk6_0,esk8_0)) = esk8_0 ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_25]),c_0_26]),c_0_27]),c_0_28])).

cnf(c_0_47,plain,
    ( m1_subset_1(k5_mcart_1(X2,X3,X4,X1),X2)
    | ~ m1_subset_1(X1,k3_zfmisc_1(X2,X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_48,negated_conjecture,
    ( esk2_4(esk4_0,esk5_0,esk6_0,esk8_0) = esk7_0
    | k4_tarski(k4_tarski(X1,esk2_4(esk4_0,esk5_0,esk6_0,esk8_0)),k7_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0)) != esk8_0
    | ~ m1_subset_1(X1,esk4_0) ),
    inference(spm,[status(thm)],[c_0_43,c_0_44])).

cnf(c_0_49,negated_conjecture,
    ( esk2_4(esk4_0,esk5_0,esk6_0,esk8_0) = k6_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

cnf(c_0_50,negated_conjecture,
    ( esk7_0 != k6_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_51,plain,
    ( m1_subset_1(k5_mcart_1(X2,X3,X4,X1),X2)
    | ~ m1_subset_1(X1,k2_zfmisc_1(k2_zfmisc_1(X2,X3),X4)) ),
    inference(rw,[status(thm)],[c_0_47,c_0_17])).

cnf(c_0_52,negated_conjecture,
    ( k4_tarski(k4_tarski(X1,k6_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0)),k2_mcart_1(esk8_0)) != esk8_0
    | ~ m1_subset_1(X1,esk4_0) ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_48,c_0_34]),c_0_49]),c_0_49]),c_0_50])).

cnf(c_0_53,negated_conjecture,
    ( m1_subset_1(k5_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0),esk4_0) ),
    inference(spm,[status(thm)],[c_0_51,c_0_25])).

cnf(c_0_54,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52,c_0_53]),c_0_40])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n024.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 12:26:21 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic G_E___301_C18_F1_URBAN_S5PRR_RG_S070I
% 0.13/0.38  # and selection function SelectVGNonCR.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.030 s
% 0.13/0.38  
% 0.13/0.38  # Proof found!
% 0.13/0.38  # SZS status Theorem
% 0.13/0.38  # SZS output start CNFRefutation
% 0.13/0.38  fof(t70_mcart_1, conjecture, ![X1, X2, X3, X4, X5]:(m1_subset_1(X5,k3_zfmisc_1(X1,X2,X3))=>(![X6]:(m1_subset_1(X6,X1)=>![X7]:(m1_subset_1(X7,X2)=>![X8]:(m1_subset_1(X8,X3)=>(X5=k3_mcart_1(X6,X7,X8)=>X4=X7))))=>(X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|X4=k6_mcart_1(X1,X2,X3,X5)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_mcart_1)).
% 0.13/0.38  fof(t50_mcart_1, axiom, ![X1, X2, X3]:~((((X1!=k1_xboole_0&X2!=k1_xboole_0)&X3!=k1_xboole_0)&~(![X4]:(m1_subset_1(X4,k3_zfmisc_1(X1,X2,X3))=>((k5_mcart_1(X1,X2,X3,X4)=k1_mcart_1(k1_mcart_1(X4))&k6_mcart_1(X1,X2,X3,X4)=k2_mcart_1(k1_mcart_1(X4)))&k7_mcart_1(X1,X2,X3,X4)=k2_mcart_1(X4)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t50_mcart_1)).
% 0.13/0.38  fof(d3_zfmisc_1, axiom, ![X1, X2, X3]:k3_zfmisc_1(X1,X2,X3)=k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_zfmisc_1)).
% 0.13/0.38  fof(dt_k7_mcart_1, axiom, ![X1, X2, X3, X4]:(m1_subset_1(X4,k3_zfmisc_1(X1,X2,X3))=>m1_subset_1(k7_mcart_1(X1,X2,X3,X4),X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k7_mcart_1)).
% 0.13/0.38  fof(t48_mcart_1, axiom, ![X1, X2, X3]:~((((X1!=k1_xboole_0&X2!=k1_xboole_0)&X3!=k1_xboole_0)&~(![X4]:(m1_subset_1(X4,k3_zfmisc_1(X1,X2,X3))=>X4=k3_mcart_1(k5_mcart_1(X1,X2,X3,X4),k6_mcart_1(X1,X2,X3,X4),k7_mcart_1(X1,X2,X3,X4)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t48_mcart_1)).
% 0.13/0.38  fof(d3_mcart_1, axiom, ![X1, X2, X3]:k3_mcart_1(X1,X2,X3)=k4_tarski(k4_tarski(X1,X2),X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_mcart_1)).
% 0.13/0.38  fof(l44_mcart_1, axiom, ![X1, X2, X3]:~((((X1!=k1_xboole_0&X2!=k1_xboole_0)&X3!=k1_xboole_0)&?[X4]:(m1_subset_1(X4,k3_zfmisc_1(X1,X2,X3))&![X5]:(m1_subset_1(X5,X1)=>![X6]:(m1_subset_1(X6,X2)=>![X7]:(m1_subset_1(X7,X3)=>X4!=k3_mcart_1(X5,X6,X7))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l44_mcart_1)).
% 0.13/0.38  fof(t28_mcart_1, axiom, ![X1, X2, X3, X4, X5, X6]:(k3_mcart_1(X1,X2,X3)=k3_mcart_1(X4,X5,X6)=>((X1=X4&X2=X5)&X3=X6)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t28_mcart_1)).
% 0.13/0.38  fof(dt_k5_mcart_1, axiom, ![X1, X2, X3, X4]:(m1_subset_1(X4,k3_zfmisc_1(X1,X2,X3))=>m1_subset_1(k5_mcart_1(X1,X2,X3,X4),X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k5_mcart_1)).
% 0.13/0.38  fof(c_0_9, negated_conjecture, ~(![X1, X2, X3, X4, X5]:(m1_subset_1(X5,k3_zfmisc_1(X1,X2,X3))=>(![X6]:(m1_subset_1(X6,X1)=>![X7]:(m1_subset_1(X7,X2)=>![X8]:(m1_subset_1(X8,X3)=>(X5=k3_mcart_1(X6,X7,X8)=>X4=X7))))=>(X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|X4=k6_mcart_1(X1,X2,X3,X5))))), inference(assume_negation,[status(cth)],[t70_mcart_1])).
% 0.13/0.38  fof(c_0_10, plain, ![X40, X41, X42, X43]:(((k5_mcart_1(X40,X41,X42,X43)=k1_mcart_1(k1_mcart_1(X43))|~m1_subset_1(X43,k3_zfmisc_1(X40,X41,X42))|(X40=k1_xboole_0|X41=k1_xboole_0|X42=k1_xboole_0))&(k6_mcart_1(X40,X41,X42,X43)=k2_mcart_1(k1_mcart_1(X43))|~m1_subset_1(X43,k3_zfmisc_1(X40,X41,X42))|(X40=k1_xboole_0|X41=k1_xboole_0|X42=k1_xboole_0)))&(k7_mcart_1(X40,X41,X42,X43)=k2_mcart_1(X43)|~m1_subset_1(X43,k3_zfmisc_1(X40,X41,X42))|(X40=k1_xboole_0|X41=k1_xboole_0|X42=k1_xboole_0))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t50_mcart_1])])])])).
% 0.13/0.38  fof(c_0_11, plain, ![X12, X13, X14]:k3_zfmisc_1(X12,X13,X14)=k2_zfmisc_1(k2_zfmisc_1(X12,X13),X14), inference(variable_rename,[status(thm)],[d3_zfmisc_1])).
% 0.13/0.38  fof(c_0_12, negated_conjecture, ![X49, X50, X51]:(m1_subset_1(esk8_0,k3_zfmisc_1(esk4_0,esk5_0,esk6_0))&((~m1_subset_1(X49,esk4_0)|(~m1_subset_1(X50,esk5_0)|(~m1_subset_1(X51,esk6_0)|(esk8_0!=k3_mcart_1(X49,X50,X51)|esk7_0=X50))))&(((esk4_0!=k1_xboole_0&esk5_0!=k1_xboole_0)&esk6_0!=k1_xboole_0)&esk7_0!=k6_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0)))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_9])])])])).
% 0.13/0.38  fof(c_0_13, plain, ![X19, X20, X21, X22]:(~m1_subset_1(X22,k3_zfmisc_1(X19,X20,X21))|m1_subset_1(k7_mcart_1(X19,X20,X21,X22),X21)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k7_mcart_1])])).
% 0.13/0.38  fof(c_0_14, plain, ![X36, X37, X38, X39]:(X36=k1_xboole_0|X37=k1_xboole_0|X38=k1_xboole_0|(~m1_subset_1(X39,k3_zfmisc_1(X36,X37,X38))|X39=k3_mcart_1(k5_mcart_1(X36,X37,X38,X39),k6_mcart_1(X36,X37,X38,X39),k7_mcart_1(X36,X37,X38,X39)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t48_mcart_1])])])).
% 0.13/0.38  fof(c_0_15, plain, ![X9, X10, X11]:k3_mcart_1(X9,X10,X11)=k4_tarski(k4_tarski(X9,X10),X11), inference(variable_rename,[status(thm)],[d3_mcart_1])).
% 0.13/0.38  cnf(c_0_16, plain, (k7_mcart_1(X1,X2,X3,X4)=k2_mcart_1(X4)|X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|~m1_subset_1(X4,k3_zfmisc_1(X1,X2,X3))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_17, plain, (k3_zfmisc_1(X1,X2,X3)=k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  cnf(c_0_18, negated_conjecture, (m1_subset_1(esk8_0,k3_zfmisc_1(esk4_0,esk5_0,esk6_0))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.38  cnf(c_0_19, plain, (m1_subset_1(k7_mcart_1(X2,X3,X4,X1),X4)|~m1_subset_1(X1,k3_zfmisc_1(X2,X3,X4))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.38  fof(c_0_20, plain, ![X23, X24, X25, X26]:((m1_subset_1(esk1_4(X23,X24,X25,X26),X23)|~m1_subset_1(X26,k3_zfmisc_1(X23,X24,X25))|(X23=k1_xboole_0|X24=k1_xboole_0|X25=k1_xboole_0))&((m1_subset_1(esk2_4(X23,X24,X25,X26),X24)|~m1_subset_1(X26,k3_zfmisc_1(X23,X24,X25))|(X23=k1_xboole_0|X24=k1_xboole_0|X25=k1_xboole_0))&((m1_subset_1(esk3_4(X23,X24,X25,X26),X25)|~m1_subset_1(X26,k3_zfmisc_1(X23,X24,X25))|(X23=k1_xboole_0|X24=k1_xboole_0|X25=k1_xboole_0))&(X26=k3_mcart_1(esk1_4(X23,X24,X25,X26),esk2_4(X23,X24,X25,X26),esk3_4(X23,X24,X25,X26))|~m1_subset_1(X26,k3_zfmisc_1(X23,X24,X25))|(X23=k1_xboole_0|X24=k1_xboole_0|X25=k1_xboole_0))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l44_mcart_1])])])])])).
% 0.13/0.38  fof(c_0_21, plain, ![X30, X31, X32, X33, X34, X35]:(((X30=X33|k3_mcart_1(X30,X31,X32)!=k3_mcart_1(X33,X34,X35))&(X31=X34|k3_mcart_1(X30,X31,X32)!=k3_mcart_1(X33,X34,X35)))&(X32=X35|k3_mcart_1(X30,X31,X32)!=k3_mcart_1(X33,X34,X35))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_mcart_1])])])).
% 0.13/0.38  cnf(c_0_22, plain, (X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|X4=k3_mcart_1(k5_mcart_1(X1,X2,X3,X4),k6_mcart_1(X1,X2,X3,X4),k7_mcart_1(X1,X2,X3,X4))|~m1_subset_1(X4,k3_zfmisc_1(X1,X2,X3))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.38  cnf(c_0_23, plain, (k3_mcart_1(X1,X2,X3)=k4_tarski(k4_tarski(X1,X2),X3)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.13/0.38  cnf(c_0_24, plain, (X3=k1_xboole_0|X2=k1_xboole_0|X1=k1_xboole_0|k7_mcart_1(X1,X2,X3,X4)=k2_mcart_1(X4)|~m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3))), inference(rw,[status(thm)],[c_0_16, c_0_17])).
% 0.13/0.38  cnf(c_0_25, negated_conjecture, (m1_subset_1(esk8_0,k2_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0),esk6_0))), inference(rw,[status(thm)],[c_0_18, c_0_17])).
% 0.13/0.38  cnf(c_0_26, negated_conjecture, (esk4_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.38  cnf(c_0_27, negated_conjecture, (esk5_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.38  cnf(c_0_28, negated_conjecture, (esk6_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.38  cnf(c_0_29, negated_conjecture, (esk7_0=X2|~m1_subset_1(X1,esk4_0)|~m1_subset_1(X2,esk5_0)|~m1_subset_1(X3,esk6_0)|esk8_0!=k3_mcart_1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.38  cnf(c_0_30, plain, (m1_subset_1(k7_mcart_1(X2,X3,X4,X1),X4)|~m1_subset_1(X1,k2_zfmisc_1(k2_zfmisc_1(X2,X3),X4))), inference(rw,[status(thm)],[c_0_19, c_0_17])).
% 0.13/0.38  cnf(c_0_31, plain, (m1_subset_1(esk2_4(X1,X2,X3,X4),X2)|X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|~m1_subset_1(X4,k3_zfmisc_1(X1,X2,X3))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.38  cnf(c_0_32, plain, (X1=X2|k3_mcart_1(X3,X1,X4)!=k3_mcart_1(X5,X2,X6)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.13/0.38  cnf(c_0_33, plain, (X3=k1_xboole_0|X2=k1_xboole_0|X1=k1_xboole_0|X4=k4_tarski(k4_tarski(k5_mcart_1(X1,X2,X3,X4),k6_mcart_1(X1,X2,X3,X4)),k7_mcart_1(X1,X2,X3,X4))|~m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_22, c_0_23]), c_0_17])).
% 0.13/0.38  cnf(c_0_34, negated_conjecture, (k7_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0)=k2_mcart_1(esk8_0)), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_25]), c_0_26]), c_0_27]), c_0_28])).
% 0.13/0.38  cnf(c_0_35, plain, (X1=k3_mcart_1(esk1_4(X2,X3,X4,X1),esk2_4(X2,X3,X4,X1),esk3_4(X2,X3,X4,X1))|X2=k1_xboole_0|X3=k1_xboole_0|X4=k1_xboole_0|~m1_subset_1(X1,k3_zfmisc_1(X2,X3,X4))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.38  cnf(c_0_36, negated_conjecture, (esk7_0=X2|esk8_0!=k4_tarski(k4_tarski(X1,X2),X3)|~m1_subset_1(X3,esk6_0)|~m1_subset_1(X2,esk5_0)|~m1_subset_1(X1,esk4_0)), inference(rw,[status(thm)],[c_0_29, c_0_23])).
% 0.13/0.38  cnf(c_0_37, negated_conjecture, (m1_subset_1(k7_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0),esk6_0)), inference(spm,[status(thm)],[c_0_30, c_0_25])).
% 0.13/0.38  cnf(c_0_38, plain, (X3=k1_xboole_0|X2=k1_xboole_0|X1=k1_xboole_0|m1_subset_1(esk2_4(X1,X2,X3,X4),X2)|~m1_subset_1(X4,k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3))), inference(rw,[status(thm)],[c_0_31, c_0_17])).
% 0.13/0.38  cnf(c_0_39, plain, (X1=X2|k4_tarski(k4_tarski(X3,X1),X4)!=k4_tarski(k4_tarski(X5,X2),X6)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_32, c_0_23]), c_0_23])).
% 0.13/0.38  cnf(c_0_40, negated_conjecture, (k4_tarski(k4_tarski(k5_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0),k6_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0)),k2_mcart_1(esk8_0))=esk8_0), inference(rw,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_25]), c_0_26]), c_0_27]), c_0_28]), c_0_34])).
% 0.13/0.38  cnf(c_0_41, plain, (X4=k1_xboole_0|X3=k1_xboole_0|X2=k1_xboole_0|X1=k4_tarski(k4_tarski(esk1_4(X2,X3,X4,X1),esk2_4(X2,X3,X4,X1)),esk3_4(X2,X3,X4,X1))|~m1_subset_1(X1,k2_zfmisc_1(k2_zfmisc_1(X2,X3),X4))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_35, c_0_23]), c_0_17])).
% 0.13/0.38  fof(c_0_42, plain, ![X15, X16, X17, X18]:(~m1_subset_1(X18,k3_zfmisc_1(X15,X16,X17))|m1_subset_1(k5_mcart_1(X15,X16,X17,X18),X15)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k5_mcart_1])])).
% 0.13/0.38  cnf(c_0_43, negated_conjecture, (esk7_0=X1|k4_tarski(k4_tarski(X2,X1),k7_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0))!=esk8_0|~m1_subset_1(X1,esk5_0)|~m1_subset_1(X2,esk4_0)), inference(spm,[status(thm)],[c_0_36, c_0_37])).
% 0.13/0.38  cnf(c_0_44, negated_conjecture, (m1_subset_1(esk2_4(esk4_0,esk5_0,esk6_0,esk8_0),esk5_0)), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_25]), c_0_26]), c_0_27]), c_0_28])).
% 0.13/0.38  cnf(c_0_45, negated_conjecture, (X1=k6_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0)|k4_tarski(k4_tarski(X2,X1),X3)!=esk8_0), inference(spm,[status(thm)],[c_0_39, c_0_40])).
% 0.13/0.38  cnf(c_0_46, negated_conjecture, (k4_tarski(k4_tarski(esk1_4(esk4_0,esk5_0,esk6_0,esk8_0),esk2_4(esk4_0,esk5_0,esk6_0,esk8_0)),esk3_4(esk4_0,esk5_0,esk6_0,esk8_0))=esk8_0), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_25]), c_0_26]), c_0_27]), c_0_28])).
% 0.13/0.38  cnf(c_0_47, plain, (m1_subset_1(k5_mcart_1(X2,X3,X4,X1),X2)|~m1_subset_1(X1,k3_zfmisc_1(X2,X3,X4))), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.13/0.38  cnf(c_0_48, negated_conjecture, (esk2_4(esk4_0,esk5_0,esk6_0,esk8_0)=esk7_0|k4_tarski(k4_tarski(X1,esk2_4(esk4_0,esk5_0,esk6_0,esk8_0)),k7_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0))!=esk8_0|~m1_subset_1(X1,esk4_0)), inference(spm,[status(thm)],[c_0_43, c_0_44])).
% 0.13/0.38  cnf(c_0_49, negated_conjecture, (esk2_4(esk4_0,esk5_0,esk6_0,esk8_0)=k6_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0)), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.13/0.38  cnf(c_0_50, negated_conjecture, (esk7_0!=k6_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.38  cnf(c_0_51, plain, (m1_subset_1(k5_mcart_1(X2,X3,X4,X1),X2)|~m1_subset_1(X1,k2_zfmisc_1(k2_zfmisc_1(X2,X3),X4))), inference(rw,[status(thm)],[c_0_47, c_0_17])).
% 0.13/0.38  cnf(c_0_52, negated_conjecture, (k4_tarski(k4_tarski(X1,k6_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0)),k2_mcart_1(esk8_0))!=esk8_0|~m1_subset_1(X1,esk4_0)), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_48, c_0_34]), c_0_49]), c_0_49]), c_0_50])).
% 0.13/0.38  cnf(c_0_53, negated_conjecture, (m1_subset_1(k5_mcart_1(esk4_0,esk5_0,esk6_0,esk8_0),esk4_0)), inference(spm,[status(thm)],[c_0_51, c_0_25])).
% 0.13/0.38  cnf(c_0_54, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52, c_0_53]), c_0_40])]), ['proof']).
% 0.13/0.38  # SZS output end CNFRefutation
% 0.13/0.38  # Proof object total steps             : 55
% 0.13/0.38  # Proof object clause steps            : 36
% 0.13/0.38  # Proof object formula steps           : 19
% 0.13/0.38  # Proof object conjectures             : 23
% 0.13/0.38  # Proof object clause conjectures      : 20
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 15
% 0.13/0.38  # Proof object initial formulas used   : 9
% 0.13/0.38  # Proof object generating inferences   : 11
% 0.13/0.38  # Proof object simplifying inferences  : 31
% 0.13/0.38  # Training examples: 0 positive, 0 negative
% 0.13/0.38  # Parsed axioms                        : 9
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 21
% 0.13/0.38  # Removed in clause preprocessing      : 2
% 0.13/0.38  # Initial clauses in saturation        : 19
% 0.13/0.38  # Processed clauses                    : 40
% 0.13/0.38  # ...of these trivial                  : 0
% 0.13/0.38  # ...subsumed                          : 2
% 0.13/0.38  # ...remaining for further processing  : 38
% 0.13/0.38  # Other redundant clauses eliminated   : 0
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 0
% 0.13/0.38  # Backward-rewritten                   : 5
% 0.13/0.38  # Generated clauses                    : 52
% 0.13/0.38  # ...of the previous two non-trivial   : 53
% 0.13/0.38  # Contextual simplify-reflections      : 0
% 0.13/0.38  # Paramodulations                      : 49
% 0.13/0.38  # Factorizations                       : 0
% 0.13/0.38  # Equation resolutions                 : 3
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
% 0.13/0.38  # Current number of processed clauses  : 33
% 0.13/0.38  #    Positive orientable unit clauses  : 11
% 0.13/0.38  #    Positive unorientable unit clauses: 0
% 0.13/0.38  #    Negative unit clauses             : 4
% 0.13/0.38  #    Non-unit-clauses                  : 18
% 0.13/0.38  # Current number of unprocessed clauses: 29
% 0.13/0.38  # ...number of literals in the above   : 59
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 7
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 61
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 35
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 2
% 0.13/0.38  # Unit Clause-clause subsumption calls : 2
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 2
% 0.13/0.38  # BW rewrite match successes           : 2
% 0.13/0.38  # Condensation attempts                : 0
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.38  # Termbank termtop insertions          : 2520
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.033 s
% 0.13/0.38  # System time              : 0.003 s
% 0.13/0.38  # Total time               : 0.036 s
% 0.13/0.38  # Maximum resident set size: 1584 pages
%------------------------------------------------------------------------------
