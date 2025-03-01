%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:00:25 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   42 (1283 expanded)
%              Number of clauses        :   33 ( 406 expanded)
%              Number of leaves         :    4 ( 313 expanded)
%              Depth                    :   12
%              Number of atoms          :  156 (9644 expanded)
%              Number of equality atoms :  141 (8606 expanded)
%              Maximal formula depth    :   22 (   5 average)
%              Maximal clause size      :   24 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t78_mcart_1,conjecture,(
    ! [X1,X2,X3,X4,X5] :
      ( m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))
     => ~ ( X1 != k1_xboole_0
          & X2 != k1_xboole_0
          & X3 != k1_xboole_0
          & X4 != k1_xboole_0
          & ? [X6,X7,X8,X9] :
              ( X5 = k4_mcart_1(X6,X7,X8,X9)
              & ~ ( k8_mcart_1(X1,X2,X3,X4,X5) = X6
                  & k9_mcart_1(X1,X2,X3,X4,X5) = X7
                  & k10_mcart_1(X1,X2,X3,X4,X5) = X8
                  & k11_mcart_1(X1,X2,X3,X4,X5) = X9 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t78_mcart_1)).

fof(t61_mcart_1,axiom,(
    ! [X1,X2,X3,X4] :
      ~ ( X1 != k1_xboole_0
        & X2 != k1_xboole_0
        & X3 != k1_xboole_0
        & X4 != k1_xboole_0
        & ~ ! [X5] :
              ( m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))
             => ( k8_mcart_1(X1,X2,X3,X4,X5) = k1_mcart_1(k1_mcart_1(k1_mcart_1(X5)))
                & k9_mcart_1(X1,X2,X3,X4,X5) = k2_mcart_1(k1_mcart_1(k1_mcart_1(X5)))
                & k10_mcart_1(X1,X2,X3,X4,X5) = k2_mcart_1(k1_mcart_1(X5))
                & k11_mcart_1(X1,X2,X3,X4,X5) = k2_mcart_1(X5) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t61_mcart_1)).

fof(t33_mcart_1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7,X8] :
      ( k4_mcart_1(X1,X2,X3,X4) = k4_mcart_1(X5,X6,X7,X8)
     => ( X1 = X5
        & X2 = X6
        & X3 = X7
        & X4 = X8 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t33_mcart_1)).

fof(t60_mcart_1,axiom,(
    ! [X1,X2,X3,X4] :
      ~ ( X1 != k1_xboole_0
        & X2 != k1_xboole_0
        & X3 != k1_xboole_0
        & X4 != k1_xboole_0
        & ~ ! [X5] :
              ( m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))
             => X5 = k4_mcart_1(k8_mcart_1(X1,X2,X3,X4,X5),k9_mcart_1(X1,X2,X3,X4,X5),k10_mcart_1(X1,X2,X3,X4,X5),k11_mcart_1(X1,X2,X3,X4,X5)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t60_mcart_1)).

fof(c_0_4,negated_conjecture,(
    ~ ! [X1,X2,X3,X4,X5] :
        ( m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))
       => ~ ( X1 != k1_xboole_0
            & X2 != k1_xboole_0
            & X3 != k1_xboole_0
            & X4 != k1_xboole_0
            & ? [X6,X7,X8,X9] :
                ( X5 = k4_mcart_1(X6,X7,X8,X9)
                & ~ ( k8_mcart_1(X1,X2,X3,X4,X5) = X6
                    & k9_mcart_1(X1,X2,X3,X4,X5) = X7
                    & k10_mcart_1(X1,X2,X3,X4,X5) = X8
                    & k11_mcart_1(X1,X2,X3,X4,X5) = X9 ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t78_mcart_1])).

fof(c_0_5,plain,(
    ! [X23,X24,X25,X26,X27] :
      ( ( k8_mcart_1(X23,X24,X25,X26,X27) = k1_mcart_1(k1_mcart_1(k1_mcart_1(X27)))
        | ~ m1_subset_1(X27,k4_zfmisc_1(X23,X24,X25,X26))
        | X23 = k1_xboole_0
        | X24 = k1_xboole_0
        | X25 = k1_xboole_0
        | X26 = k1_xboole_0 )
      & ( k9_mcart_1(X23,X24,X25,X26,X27) = k2_mcart_1(k1_mcart_1(k1_mcart_1(X27)))
        | ~ m1_subset_1(X27,k4_zfmisc_1(X23,X24,X25,X26))
        | X23 = k1_xboole_0
        | X24 = k1_xboole_0
        | X25 = k1_xboole_0
        | X26 = k1_xboole_0 )
      & ( k10_mcart_1(X23,X24,X25,X26,X27) = k2_mcart_1(k1_mcart_1(X27))
        | ~ m1_subset_1(X27,k4_zfmisc_1(X23,X24,X25,X26))
        | X23 = k1_xboole_0
        | X24 = k1_xboole_0
        | X25 = k1_xboole_0
        | X26 = k1_xboole_0 )
      & ( k11_mcart_1(X23,X24,X25,X26,X27) = k2_mcart_1(X27)
        | ~ m1_subset_1(X27,k4_zfmisc_1(X23,X24,X25,X26))
        | X23 = k1_xboole_0
        | X24 = k1_xboole_0
        | X25 = k1_xboole_0
        | X26 = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t61_mcart_1])])])])).

fof(c_0_6,negated_conjecture,
    ( m1_subset_1(esk5_0,k4_zfmisc_1(esk1_0,esk2_0,esk3_0,esk4_0))
    & esk1_0 != k1_xboole_0
    & esk2_0 != k1_xboole_0
    & esk3_0 != k1_xboole_0
    & esk4_0 != k1_xboole_0
    & esk5_0 = k4_mcart_1(esk6_0,esk7_0,esk8_0,esk9_0)
    & ( k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != esk6_0
      | k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != esk7_0
      | k10_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != esk8_0
      | k11_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != esk9_0 ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])).

fof(c_0_7,plain,(
    ! [X10,X11,X12,X13,X14,X15,X16,X17] :
      ( ( X10 = X14
        | k4_mcart_1(X10,X11,X12,X13) != k4_mcart_1(X14,X15,X16,X17) )
      & ( X11 = X15
        | k4_mcart_1(X10,X11,X12,X13) != k4_mcart_1(X14,X15,X16,X17) )
      & ( X12 = X16
        | k4_mcart_1(X10,X11,X12,X13) != k4_mcart_1(X14,X15,X16,X17) )
      & ( X13 = X17
        | k4_mcart_1(X10,X11,X12,X13) != k4_mcart_1(X14,X15,X16,X17) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t33_mcart_1])])])).

fof(c_0_8,plain,(
    ! [X18,X19,X20,X21,X22] :
      ( X18 = k1_xboole_0
      | X19 = k1_xboole_0
      | X20 = k1_xboole_0
      | X21 = k1_xboole_0
      | ~ m1_subset_1(X22,k4_zfmisc_1(X18,X19,X20,X21))
      | X22 = k4_mcart_1(k8_mcart_1(X18,X19,X20,X21,X22),k9_mcart_1(X18,X19,X20,X21,X22),k10_mcart_1(X18,X19,X20,X21,X22),k11_mcart_1(X18,X19,X20,X21,X22)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t60_mcart_1])])])).

cnf(c_0_9,plain,
    ( k10_mcart_1(X1,X2,X3,X4,X5) = k2_mcart_1(k1_mcart_1(X5))
    | X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | X4 = k1_xboole_0
    | ~ m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_10,negated_conjecture,
    ( m1_subset_1(esk5_0,k4_zfmisc_1(esk1_0,esk2_0,esk3_0,esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_11,negated_conjecture,
    ( esk4_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_12,negated_conjecture,
    ( esk3_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_13,negated_conjecture,
    ( esk2_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_14,negated_conjecture,
    ( esk1_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_15,plain,
    ( k11_mcart_1(X1,X2,X3,X4,X5) = k2_mcart_1(X5)
    | X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | X4 = k1_xboole_0
    | ~ m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_16,plain,
    ( X1 = X2
    | k4_mcart_1(X3,X4,X5,X1) != k4_mcart_1(X6,X7,X8,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_17,negated_conjecture,
    ( esk5_0 = k4_mcart_1(esk6_0,esk7_0,esk8_0,esk9_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_18,plain,
    ( X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | X4 = k1_xboole_0
    | X5 = k4_mcart_1(k8_mcart_1(X1,X2,X3,X4,X5),k9_mcart_1(X1,X2,X3,X4,X5),k10_mcart_1(X1,X2,X3,X4,X5),k11_mcart_1(X1,X2,X3,X4,X5))
    | ~ m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_19,negated_conjecture,
    ( k10_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) = k2_mcart_1(k1_mcart_1(esk5_0)) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_9,c_0_10]),c_0_11]),c_0_12]),c_0_13]),c_0_14])).

cnf(c_0_20,negated_conjecture,
    ( k11_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) = k2_mcart_1(esk5_0) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_15,c_0_10]),c_0_11]),c_0_12]),c_0_13]),c_0_14])).

cnf(c_0_21,negated_conjecture,
    ( X1 = esk9_0
    | k4_mcart_1(X2,X3,X4,X1) != esk5_0 ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_22,negated_conjecture,
    ( k4_mcart_1(k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0),k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0),k2_mcart_1(k1_mcart_1(esk5_0)),k2_mcart_1(esk5_0)) = esk5_0 ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18,c_0_10]),c_0_19]),c_0_20]),c_0_11]),c_0_12]),c_0_13]),c_0_14])).

cnf(c_0_23,plain,
    ( X1 = X2
    | k4_mcart_1(X3,X4,X1,X5) != k4_mcart_1(X6,X7,X2,X8) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_24,negated_conjecture,
    ( k2_mcart_1(esk5_0) = esk9_0 ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_25,negated_conjecture,
    ( k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != esk6_0
    | k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != esk7_0
    | k10_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != esk8_0
    | k11_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != esk9_0 ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_26,negated_conjecture,
    ( X1 = esk8_0
    | k4_mcart_1(X2,X3,X1,X4) != esk5_0 ),
    inference(spm,[status(thm)],[c_0_23,c_0_17])).

cnf(c_0_27,negated_conjecture,
    ( k4_mcart_1(k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0),k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0),k2_mcart_1(k1_mcart_1(esk5_0)),esk9_0) = esk5_0 ),
    inference(rw,[status(thm)],[c_0_22,c_0_24])).

cnf(c_0_28,negated_conjecture,
    ( k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != esk6_0
    | k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != esk7_0
    | k10_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != esk8_0
    | k2_mcart_1(esk5_0) != esk9_0 ),
    inference(rw,[status(thm)],[c_0_25,c_0_20])).

cnf(c_0_29,plain,
    ( X1 = X2
    | k4_mcart_1(X1,X3,X4,X5) != k4_mcart_1(X2,X6,X7,X8) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_30,negated_conjecture,
    ( k2_mcart_1(k1_mcart_1(esk5_0)) = esk8_0 ),
    inference(spm,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_31,negated_conjecture,
    ( k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != esk6_0
    | k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != esk7_0
    | k2_mcart_1(k1_mcart_1(esk5_0)) != esk8_0
    | k2_mcart_1(esk5_0) != esk9_0 ),
    inference(rw,[status(thm)],[c_0_28,c_0_19])).

cnf(c_0_32,negated_conjecture,
    ( X1 = esk6_0
    | k4_mcart_1(X1,X2,X3,X4) != esk5_0 ),
    inference(spm,[status(thm)],[c_0_29,c_0_17])).

cnf(c_0_33,negated_conjecture,
    ( k4_mcart_1(k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0),k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0),esk8_0,esk9_0) = esk5_0 ),
    inference(rw,[status(thm)],[c_0_27,c_0_30])).

cnf(c_0_34,negated_conjecture,
    ( k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != esk6_0
    | k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != esk7_0
    | k2_mcart_1(k1_mcart_1(esk5_0)) != esk8_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_31,c_0_24])])).

cnf(c_0_35,plain,
    ( X1 = X2
    | k4_mcart_1(X3,X1,X4,X5) != k4_mcart_1(X6,X2,X7,X8) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_36,negated_conjecture,
    ( k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) = esk6_0 ),
    inference(spm,[status(thm)],[c_0_32,c_0_33])).

cnf(c_0_37,negated_conjecture,
    ( k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != esk6_0
    | k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != esk7_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_34,c_0_30])])).

cnf(c_0_38,negated_conjecture,
    ( X1 = esk7_0
    | k4_mcart_1(X2,X1,X3,X4) != esk5_0 ),
    inference(spm,[status(thm)],[c_0_35,c_0_17])).

cnf(c_0_39,negated_conjecture,
    ( k4_mcart_1(esk6_0,k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0),esk8_0,esk9_0) = esk5_0 ),
    inference(rw,[status(thm)],[c_0_33,c_0_36])).

cnf(c_0_40,negated_conjecture,
    ( k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != esk7_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_37,c_0_36])])).

cnf(c_0_41,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_39]),c_0_40]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n015.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 12:11:08 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S011N
% 0.13/0.37  # and selection function PSelectDiffNegLit.
% 0.13/0.37  #
% 0.13/0.37  # Preprocessing time       : 0.027 s
% 0.13/0.37  # Presaturation interreduction done
% 0.13/0.37  
% 0.13/0.37  # Proof found!
% 0.13/0.37  # SZS status Theorem
% 0.13/0.37  # SZS output start CNFRefutation
% 0.13/0.37  fof(t78_mcart_1, conjecture, ![X1, X2, X3, X4, X5]:(m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))=>~(((((X1!=k1_xboole_0&X2!=k1_xboole_0)&X3!=k1_xboole_0)&X4!=k1_xboole_0)&?[X6, X7, X8, X9]:(X5=k4_mcart_1(X6,X7,X8,X9)&~((((k8_mcart_1(X1,X2,X3,X4,X5)=X6&k9_mcart_1(X1,X2,X3,X4,X5)=X7)&k10_mcart_1(X1,X2,X3,X4,X5)=X8)&k11_mcart_1(X1,X2,X3,X4,X5)=X9)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t78_mcart_1)).
% 0.13/0.37  fof(t61_mcart_1, axiom, ![X1, X2, X3, X4]:~(((((X1!=k1_xboole_0&X2!=k1_xboole_0)&X3!=k1_xboole_0)&X4!=k1_xboole_0)&~(![X5]:(m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))=>(((k8_mcart_1(X1,X2,X3,X4,X5)=k1_mcart_1(k1_mcart_1(k1_mcart_1(X5)))&k9_mcart_1(X1,X2,X3,X4,X5)=k2_mcart_1(k1_mcart_1(k1_mcart_1(X5))))&k10_mcart_1(X1,X2,X3,X4,X5)=k2_mcart_1(k1_mcart_1(X5)))&k11_mcart_1(X1,X2,X3,X4,X5)=k2_mcart_1(X5)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t61_mcart_1)).
% 0.13/0.37  fof(t33_mcart_1, axiom, ![X1, X2, X3, X4, X5, X6, X7, X8]:(k4_mcart_1(X1,X2,X3,X4)=k4_mcart_1(X5,X6,X7,X8)=>(((X1=X5&X2=X6)&X3=X7)&X4=X8)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t33_mcart_1)).
% 0.13/0.37  fof(t60_mcart_1, axiom, ![X1, X2, X3, X4]:~(((((X1!=k1_xboole_0&X2!=k1_xboole_0)&X3!=k1_xboole_0)&X4!=k1_xboole_0)&~(![X5]:(m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))=>X5=k4_mcart_1(k8_mcart_1(X1,X2,X3,X4,X5),k9_mcart_1(X1,X2,X3,X4,X5),k10_mcart_1(X1,X2,X3,X4,X5),k11_mcart_1(X1,X2,X3,X4,X5)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t60_mcart_1)).
% 0.13/0.37  fof(c_0_4, negated_conjecture, ~(![X1, X2, X3, X4, X5]:(m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))=>~(((((X1!=k1_xboole_0&X2!=k1_xboole_0)&X3!=k1_xboole_0)&X4!=k1_xboole_0)&?[X6, X7, X8, X9]:(X5=k4_mcart_1(X6,X7,X8,X9)&~((((k8_mcart_1(X1,X2,X3,X4,X5)=X6&k9_mcart_1(X1,X2,X3,X4,X5)=X7)&k10_mcart_1(X1,X2,X3,X4,X5)=X8)&k11_mcart_1(X1,X2,X3,X4,X5)=X9))))))), inference(assume_negation,[status(cth)],[t78_mcart_1])).
% 0.13/0.37  fof(c_0_5, plain, ![X23, X24, X25, X26, X27]:((((k8_mcart_1(X23,X24,X25,X26,X27)=k1_mcart_1(k1_mcart_1(k1_mcart_1(X27)))|~m1_subset_1(X27,k4_zfmisc_1(X23,X24,X25,X26))|(X23=k1_xboole_0|X24=k1_xboole_0|X25=k1_xboole_0|X26=k1_xboole_0))&(k9_mcart_1(X23,X24,X25,X26,X27)=k2_mcart_1(k1_mcart_1(k1_mcart_1(X27)))|~m1_subset_1(X27,k4_zfmisc_1(X23,X24,X25,X26))|(X23=k1_xboole_0|X24=k1_xboole_0|X25=k1_xboole_0|X26=k1_xboole_0)))&(k10_mcart_1(X23,X24,X25,X26,X27)=k2_mcart_1(k1_mcart_1(X27))|~m1_subset_1(X27,k4_zfmisc_1(X23,X24,X25,X26))|(X23=k1_xboole_0|X24=k1_xboole_0|X25=k1_xboole_0|X26=k1_xboole_0)))&(k11_mcart_1(X23,X24,X25,X26,X27)=k2_mcart_1(X27)|~m1_subset_1(X27,k4_zfmisc_1(X23,X24,X25,X26))|(X23=k1_xboole_0|X24=k1_xboole_0|X25=k1_xboole_0|X26=k1_xboole_0))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t61_mcart_1])])])])).
% 0.13/0.37  fof(c_0_6, negated_conjecture, (m1_subset_1(esk5_0,k4_zfmisc_1(esk1_0,esk2_0,esk3_0,esk4_0))&((((esk1_0!=k1_xboole_0&esk2_0!=k1_xboole_0)&esk3_0!=k1_xboole_0)&esk4_0!=k1_xboole_0)&(esk5_0=k4_mcart_1(esk6_0,esk7_0,esk8_0,esk9_0)&(k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)!=esk6_0|k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)!=esk7_0|k10_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)!=esk8_0|k11_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)!=esk9_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])).
% 0.13/0.37  fof(c_0_7, plain, ![X10, X11, X12, X13, X14, X15, X16, X17]:((((X10=X14|k4_mcart_1(X10,X11,X12,X13)!=k4_mcart_1(X14,X15,X16,X17))&(X11=X15|k4_mcart_1(X10,X11,X12,X13)!=k4_mcart_1(X14,X15,X16,X17)))&(X12=X16|k4_mcart_1(X10,X11,X12,X13)!=k4_mcart_1(X14,X15,X16,X17)))&(X13=X17|k4_mcart_1(X10,X11,X12,X13)!=k4_mcart_1(X14,X15,X16,X17))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t33_mcart_1])])])).
% 0.13/0.37  fof(c_0_8, plain, ![X18, X19, X20, X21, X22]:(X18=k1_xboole_0|X19=k1_xboole_0|X20=k1_xboole_0|X21=k1_xboole_0|(~m1_subset_1(X22,k4_zfmisc_1(X18,X19,X20,X21))|X22=k4_mcart_1(k8_mcart_1(X18,X19,X20,X21,X22),k9_mcart_1(X18,X19,X20,X21,X22),k10_mcart_1(X18,X19,X20,X21,X22),k11_mcart_1(X18,X19,X20,X21,X22)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t60_mcart_1])])])).
% 0.13/0.37  cnf(c_0_9, plain, (k10_mcart_1(X1,X2,X3,X4,X5)=k2_mcart_1(k1_mcart_1(X5))|X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|X4=k1_xboole_0|~m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.13/0.37  cnf(c_0_10, negated_conjecture, (m1_subset_1(esk5_0,k4_zfmisc_1(esk1_0,esk2_0,esk3_0,esk4_0))), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.13/0.37  cnf(c_0_11, negated_conjecture, (esk4_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.13/0.37  cnf(c_0_12, negated_conjecture, (esk3_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.13/0.37  cnf(c_0_13, negated_conjecture, (esk2_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.13/0.37  cnf(c_0_14, negated_conjecture, (esk1_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.13/0.37  cnf(c_0_15, plain, (k11_mcart_1(X1,X2,X3,X4,X5)=k2_mcart_1(X5)|X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|X4=k1_xboole_0|~m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.13/0.37  cnf(c_0_16, plain, (X1=X2|k4_mcart_1(X3,X4,X5,X1)!=k4_mcart_1(X6,X7,X8,X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.37  cnf(c_0_17, negated_conjecture, (esk5_0=k4_mcart_1(esk6_0,esk7_0,esk8_0,esk9_0)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.13/0.37  cnf(c_0_18, plain, (X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|X4=k1_xboole_0|X5=k4_mcart_1(k8_mcart_1(X1,X2,X3,X4,X5),k9_mcart_1(X1,X2,X3,X4,X5),k10_mcart_1(X1,X2,X3,X4,X5),k11_mcart_1(X1,X2,X3,X4,X5))|~m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.37  cnf(c_0_19, negated_conjecture, (k10_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)=k2_mcart_1(k1_mcart_1(esk5_0))), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_9, c_0_10]), c_0_11]), c_0_12]), c_0_13]), c_0_14])).
% 0.13/0.37  cnf(c_0_20, negated_conjecture, (k11_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)=k2_mcart_1(esk5_0)), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_15, c_0_10]), c_0_11]), c_0_12]), c_0_13]), c_0_14])).
% 0.13/0.37  cnf(c_0_21, negated_conjecture, (X1=esk9_0|k4_mcart_1(X2,X3,X4,X1)!=esk5_0), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.13/0.37  cnf(c_0_22, negated_conjecture, (k4_mcart_1(k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0),k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0),k2_mcart_1(k1_mcart_1(esk5_0)),k2_mcart_1(esk5_0))=esk5_0), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18, c_0_10]), c_0_19]), c_0_20]), c_0_11]), c_0_12]), c_0_13]), c_0_14])).
% 0.13/0.37  cnf(c_0_23, plain, (X1=X2|k4_mcart_1(X3,X4,X1,X5)!=k4_mcart_1(X6,X7,X2,X8)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.37  cnf(c_0_24, negated_conjecture, (k2_mcart_1(esk5_0)=esk9_0), inference(spm,[status(thm)],[c_0_21, c_0_22])).
% 0.13/0.37  cnf(c_0_25, negated_conjecture, (k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)!=esk6_0|k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)!=esk7_0|k10_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)!=esk8_0|k11_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)!=esk9_0), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.13/0.37  cnf(c_0_26, negated_conjecture, (X1=esk8_0|k4_mcart_1(X2,X3,X1,X4)!=esk5_0), inference(spm,[status(thm)],[c_0_23, c_0_17])).
% 0.13/0.37  cnf(c_0_27, negated_conjecture, (k4_mcart_1(k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0),k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0),k2_mcart_1(k1_mcart_1(esk5_0)),esk9_0)=esk5_0), inference(rw,[status(thm)],[c_0_22, c_0_24])).
% 0.13/0.37  cnf(c_0_28, negated_conjecture, (k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)!=esk6_0|k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)!=esk7_0|k10_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)!=esk8_0|k2_mcart_1(esk5_0)!=esk9_0), inference(rw,[status(thm)],[c_0_25, c_0_20])).
% 0.13/0.37  cnf(c_0_29, plain, (X1=X2|k4_mcart_1(X1,X3,X4,X5)!=k4_mcart_1(X2,X6,X7,X8)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.37  cnf(c_0_30, negated_conjecture, (k2_mcart_1(k1_mcart_1(esk5_0))=esk8_0), inference(spm,[status(thm)],[c_0_26, c_0_27])).
% 0.13/0.37  cnf(c_0_31, negated_conjecture, (k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)!=esk6_0|k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)!=esk7_0|k2_mcart_1(k1_mcart_1(esk5_0))!=esk8_0|k2_mcart_1(esk5_0)!=esk9_0), inference(rw,[status(thm)],[c_0_28, c_0_19])).
% 0.13/0.37  cnf(c_0_32, negated_conjecture, (X1=esk6_0|k4_mcart_1(X1,X2,X3,X4)!=esk5_0), inference(spm,[status(thm)],[c_0_29, c_0_17])).
% 0.13/0.37  cnf(c_0_33, negated_conjecture, (k4_mcart_1(k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0),k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0),esk8_0,esk9_0)=esk5_0), inference(rw,[status(thm)],[c_0_27, c_0_30])).
% 0.13/0.37  cnf(c_0_34, negated_conjecture, (k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)!=esk6_0|k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)!=esk7_0|k2_mcart_1(k1_mcart_1(esk5_0))!=esk8_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_31, c_0_24])])).
% 0.13/0.37  cnf(c_0_35, plain, (X1=X2|k4_mcart_1(X3,X1,X4,X5)!=k4_mcart_1(X6,X2,X7,X8)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.37  cnf(c_0_36, negated_conjecture, (k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)=esk6_0), inference(spm,[status(thm)],[c_0_32, c_0_33])).
% 0.13/0.37  cnf(c_0_37, negated_conjecture, (k8_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)!=esk6_0|k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)!=esk7_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_34, c_0_30])])).
% 0.13/0.37  cnf(c_0_38, negated_conjecture, (X1=esk7_0|k4_mcart_1(X2,X1,X3,X4)!=esk5_0), inference(spm,[status(thm)],[c_0_35, c_0_17])).
% 0.13/0.37  cnf(c_0_39, negated_conjecture, (k4_mcart_1(esk6_0,k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0),esk8_0,esk9_0)=esk5_0), inference(rw,[status(thm)],[c_0_33, c_0_36])).
% 0.13/0.37  cnf(c_0_40, negated_conjecture, (k9_mcart_1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0)!=esk7_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_37, c_0_36])])).
% 0.13/0.37  cnf(c_0_41, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_39]), c_0_40]), ['proof']).
% 0.13/0.37  # SZS output end CNFRefutation
% 0.13/0.37  # Proof object total steps             : 42
% 0.13/0.37  # Proof object clause steps            : 33
% 0.13/0.37  # Proof object formula steps           : 9
% 0.13/0.37  # Proof object conjectures             : 29
% 0.13/0.37  # Proof object clause conjectures      : 26
% 0.13/0.37  # Proof object formula conjectures     : 3
% 0.13/0.37  # Proof object initial clauses used    : 14
% 0.13/0.37  # Proof object initial formulas used   : 4
% 0.13/0.37  # Proof object generating inferences   : 11
% 0.13/0.37  # Proof object simplifying inferences  : 26
% 0.13/0.37  # Training examples: 0 positive, 0 negative
% 0.13/0.37  # Parsed axioms                        : 4
% 0.13/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.37  # Initial clauses                      : 16
% 0.13/0.37  # Removed in clause preprocessing      : 0
% 0.13/0.37  # Initial clauses in saturation        : 16
% 0.13/0.37  # Processed clauses                    : 63
% 0.13/0.37  # ...of these trivial                  : 0
% 0.13/0.37  # ...subsumed                          : 4
% 0.13/0.37  # ...remaining for further processing  : 59
% 0.13/0.37  # Other redundant clauses eliminated   : 0
% 0.13/0.37  # Clauses deleted for lack of memory   : 0
% 0.13/0.37  # Backward-subsumed                    : 0
% 0.13/0.37  # Backward-rewritten                   : 14
% 0.13/0.37  # Generated clauses                    : 77
% 0.13/0.37  # ...of the previous two non-trivial   : 84
% 0.13/0.37  # Contextual simplify-reflections      : 0
% 0.13/0.37  # Paramodulations                      : 73
% 0.13/0.37  # Factorizations                       : 0
% 0.13/0.37  # Equation resolutions                 : 4
% 0.13/0.37  # Propositional unsat checks           : 0
% 0.13/0.37  #    Propositional check models        : 0
% 0.13/0.37  #    Propositional check unsatisfiable : 0
% 0.13/0.37  #    Propositional clauses             : 0
% 0.13/0.37  #    Propositional clauses after purity: 0
% 0.13/0.37  #    Propositional unsat core size     : 0
% 0.13/0.37  #    Propositional preprocessing time  : 0.000
% 0.13/0.37  #    Propositional encoding time       : 0.000
% 0.13/0.37  #    Propositional solver time         : 0.000
% 0.13/0.37  #    Success case prop preproc time    : 0.000
% 0.13/0.37  #    Success case prop encoding time   : 0.000
% 0.13/0.37  #    Success case prop solver time     : 0.000
% 0.13/0.37  # Current number of processed clauses  : 29
% 0.13/0.37  #    Positive orientable unit clauses  : 10
% 0.13/0.37  #    Positive unorientable unit clauses: 0
% 0.13/0.37  #    Negative unit clauses             : 5
% 0.13/0.37  #    Non-unit-clauses                  : 14
% 0.13/0.37  # Current number of unprocessed clauses: 15
% 0.13/0.37  # ...number of literals in the above   : 65
% 0.13/0.37  # Current number of archived formulas  : 0
% 0.13/0.37  # Current number of archived clauses   : 30
% 0.13/0.37  # Clause-clause subsumption calls (NU) : 49
% 0.13/0.37  # Rec. Clause-clause subsumption calls : 38
% 0.13/0.37  # Non-unit clause-clause subsumptions  : 4
% 0.13/0.37  # Unit Clause-clause subsumption calls : 23
% 0.13/0.37  # Rewrite failures with RHS unbound    : 0
% 0.13/0.37  # BW rewrite match attempts            : 8
% 0.13/0.37  # BW rewrite match successes           : 5
% 0.13/0.37  # Condensation attempts                : 0
% 0.13/0.37  # Condensation successes               : 0
% 0.13/0.37  # Termbank termtop insertions          : 2376
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.027 s
% 0.13/0.38  # System time              : 0.006 s
% 0.13/0.38  # Total time               : 0.033 s
% 0.13/0.38  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
