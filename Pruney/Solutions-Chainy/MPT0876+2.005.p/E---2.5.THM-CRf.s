%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:59:38 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   56 ( 471 expanded)
%              Number of clauses        :   46 ( 200 expanded)
%              Number of leaves         :    5 ( 121 expanded)
%              Depth                    :   22
%              Number of atoms          :  173 (1715 expanded)
%              Number of equality atoms :  172 (1714 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   10 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t36_mcart_1,conjecture,(
    ! [X1,X2,X3,X4,X5,X6] :
      ( k3_zfmisc_1(X1,X2,X3) = k3_zfmisc_1(X4,X5,X6)
     => ( X1 = k1_xboole_0
        | X2 = k1_xboole_0
        | X3 = k1_xboole_0
        | ( X1 = X4
          & X2 = X5
          & X3 = X6 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t36_mcart_1)).

fof(d3_zfmisc_1,axiom,(
    ! [X1,X2,X3] : k3_zfmisc_1(X1,X2,X3) = k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_zfmisc_1)).

fof(t35_mcart_1,axiom,(
    ! [X1,X2,X3] :
      ( ( X1 != k1_xboole_0
        & X2 != k1_xboole_0
        & X3 != k1_xboole_0 )
    <=> k3_zfmisc_1(X1,X2,X3) != k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t35_mcart_1)).

fof(t195_relat_1,axiom,(
    ! [X1,X2] :
      ~ ( X1 != k1_xboole_0
        & X2 != k1_xboole_0
        & ~ ( k1_relat_1(k2_zfmisc_1(X1,X2)) = X1
            & k2_relat_1(k2_zfmisc_1(X1,X2)) = X2 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t195_relat_1)).

fof(t60_relat_1,axiom,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0
    & k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t60_relat_1)).

fof(c_0_5,negated_conjecture,(
    ~ ! [X1,X2,X3,X4,X5,X6] :
        ( k3_zfmisc_1(X1,X2,X3) = k3_zfmisc_1(X4,X5,X6)
       => ( X1 = k1_xboole_0
          | X2 = k1_xboole_0
          | X3 = k1_xboole_0
          | ( X1 = X4
            & X2 = X5
            & X3 = X6 ) ) ) ),
    inference(assume_negation,[status(cth)],[t36_mcart_1])).

fof(c_0_6,negated_conjecture,
    ( k3_zfmisc_1(esk1_0,esk2_0,esk3_0) = k3_zfmisc_1(esk4_0,esk5_0,esk6_0)
    & esk1_0 != k1_xboole_0
    & esk2_0 != k1_xboole_0
    & esk3_0 != k1_xboole_0
    & ( esk1_0 != esk4_0
      | esk2_0 != esk5_0
      | esk3_0 != esk6_0 ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_5])])])).

fof(c_0_7,plain,(
    ! [X9,X10,X11] : k3_zfmisc_1(X9,X10,X11) = k2_zfmisc_1(k2_zfmisc_1(X9,X10),X11) ),
    inference(variable_rename,[status(thm)],[d3_zfmisc_1])).

fof(c_0_8,plain,(
    ! [X12,X13,X14] :
      ( ( X12 = k1_xboole_0
        | X13 = k1_xboole_0
        | X14 = k1_xboole_0
        | k3_zfmisc_1(X12,X13,X14) != k1_xboole_0 )
      & ( X12 != k1_xboole_0
        | k3_zfmisc_1(X12,X13,X14) = k1_xboole_0 )
      & ( X13 != k1_xboole_0
        | k3_zfmisc_1(X12,X13,X14) = k1_xboole_0 )
      & ( X14 != k1_xboole_0
        | k3_zfmisc_1(X12,X13,X14) = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t35_mcart_1])])])).

fof(c_0_9,plain,(
    ! [X7,X8] :
      ( ( k1_relat_1(k2_zfmisc_1(X7,X8)) = X7
        | X7 = k1_xboole_0
        | X8 = k1_xboole_0 )
      & ( k2_relat_1(k2_zfmisc_1(X7,X8)) = X8
        | X7 = k1_xboole_0
        | X8 = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t195_relat_1])])])).

cnf(c_0_10,negated_conjecture,
    ( k3_zfmisc_1(esk1_0,esk2_0,esk3_0) = k3_zfmisc_1(esk4_0,esk5_0,esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_11,plain,
    ( k3_zfmisc_1(X1,X2,X3) = k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( k3_zfmisc_1(X2,X1,X3) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,plain,
    ( k2_relat_1(k2_zfmisc_1(X1,X2)) = X2
    | X1 = k1_xboole_0
    | X2 = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_14,negated_conjecture,
    ( k2_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0),esk6_0) = k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),esk3_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_10,c_0_11]),c_0_11])).

cnf(c_0_15,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(X2,X1),X3) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_12,c_0_11])).

cnf(c_0_16,plain,
    ( k1_relat_1(k2_zfmisc_1(X1,X2)) = X1
    | X1 = k1_xboole_0
    | X2 = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_17,negated_conjecture,
    ( k2_relat_1(k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),esk3_0)) = esk6_0
    | k2_zfmisc_1(esk4_0,esk5_0) = k1_xboole_0
    | esk6_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_13,c_0_14])).

cnf(c_0_18,negated_conjecture,
    ( esk3_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_19,plain,
    ( k2_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0),X2) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_15])).

cnf(c_0_20,negated_conjecture,
    ( k1_relat_1(k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),esk3_0)) = k2_zfmisc_1(esk4_0,esk5_0)
    | k2_zfmisc_1(esk4_0,esk5_0) = k1_xboole_0
    | esk6_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_16,c_0_14])).

cnf(c_0_21,negated_conjecture,
    ( k2_zfmisc_1(esk4_0,esk5_0) = k1_xboole_0
    | k2_zfmisc_1(esk1_0,esk2_0) = k1_xboole_0
    | esk6_0 = k1_xboole_0
    | esk6_0 = esk3_0 ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_13,c_0_17]),c_0_18])).

cnf(c_0_22,plain,
    ( k2_zfmisc_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_19,c_0_19])).

cnf(c_0_23,negated_conjecture,
    ( k2_zfmisc_1(esk4_0,esk5_0) = k2_zfmisc_1(esk1_0,esk2_0)
    | k2_zfmisc_1(esk4_0,esk5_0) = k1_xboole_0
    | k2_zfmisc_1(esk1_0,esk2_0) = k1_xboole_0
    | esk6_0 = k1_xboole_0 ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_20]),c_0_18])).

cnf(c_0_24,negated_conjecture,
    ( k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),esk3_0) = k1_xboole_0
    | k2_zfmisc_1(esk1_0,esk2_0) = k1_xboole_0
    | esk6_0 = esk3_0
    | esk6_0 = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14,c_0_21]),c_0_22])).

cnf(c_0_25,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[t60_relat_1])).

cnf(c_0_26,negated_conjecture,
    ( k2_relat_1(k2_zfmisc_1(esk1_0,esk2_0)) = esk5_0
    | k2_zfmisc_1(esk1_0,esk2_0) = k1_xboole_0
    | k2_zfmisc_1(esk4_0,esk5_0) = k1_xboole_0
    | esk6_0 = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | esk5_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_13,c_0_23])).

cnf(c_0_27,negated_conjecture,
    ( esk2_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_28,negated_conjecture,
    ( esk1_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_29,negated_conjecture,
    ( k2_zfmisc_1(esk1_0,esk2_0) = k1_xboole_0
    | esk6_0 = k1_xboole_0
    | esk6_0 = esk3_0 ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_13,c_0_24]),c_0_25])]),c_0_18])).

cnf(c_0_30,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[t60_relat_1])).

cnf(c_0_31,negated_conjecture,
    ( k2_zfmisc_1(esk4_0,esk5_0) = k1_xboole_0
    | k2_zfmisc_1(esk1_0,esk2_0) = k1_xboole_0
    | esk5_0 = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | esk6_0 = k1_xboole_0
    | esk5_0 = esk2_0 ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_13,c_0_26]),c_0_27]),c_0_28])).

cnf(c_0_32,negated_conjecture,
    ( esk1_0 != esk4_0
    | esk2_0 != esk5_0
    | esk3_0 != esk6_0 ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_33,negated_conjecture,
    ( esk6_0 = esk3_0
    | esk6_0 = k1_xboole_0 ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_13,c_0_29]),c_0_25])]),c_0_27]),c_0_28])).

cnf(c_0_34,plain,
    ( k2_zfmisc_1(X1,k1_xboole_0) = k1_xboole_0
    | X2 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_19]),c_0_30])])).

cnf(c_0_35,negated_conjecture,
    ( k2_zfmisc_1(esk1_0,esk2_0) = k1_xboole_0
    | esk5_0 = esk2_0
    | esk6_0 = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | esk5_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_13,c_0_31]),c_0_25])])).

cnf(c_0_36,plain,
    ( X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | k3_zfmisc_1(X1,X2,X3) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_37,negated_conjecture,
    ( esk6_0 = k1_xboole_0
    | esk4_0 != esk1_0
    | esk5_0 != esk2_0 ),
    inference(spm,[status(thm)],[c_0_32,c_0_33])).

cnf(c_0_38,plain,
    ( k2_zfmisc_1(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(ef,[status(thm)],[c_0_34])).

cnf(c_0_39,negated_conjecture,
    ( esk5_0 = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | esk6_0 = k1_xboole_0
    | esk5_0 = esk2_0 ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_13,c_0_35]),c_0_25])]),c_0_27]),c_0_28])).

cnf(c_0_40,plain,
    ( X3 = k1_xboole_0
    | X2 = k1_xboole_0
    | X1 = k1_xboole_0
    | k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3) != k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_36,c_0_11])).

cnf(c_0_41,negated_conjecture,
    ( k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),esk3_0) = k1_xboole_0
    | esk4_0 != esk1_0
    | esk5_0 != esk2_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14,c_0_37]),c_0_38])).

cnf(c_0_42,negated_conjecture,
    ( k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),esk3_0) = k1_xboole_0
    | esk5_0 = esk2_0
    | esk4_0 = k1_xboole_0
    | esk5_0 = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14,c_0_39]),c_0_38])).

cnf(c_0_43,negated_conjecture,
    ( esk4_0 != esk1_0
    | esk5_0 != esk2_0 ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_41]),c_0_18]),c_0_27]),c_0_28])).

cnf(c_0_44,negated_conjecture,
    ( esk5_0 = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | esk5_0 = esk2_0 ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_42]),c_0_18]),c_0_27]),c_0_28])).

cnf(c_0_45,negated_conjecture,
    ( k1_relat_1(k2_zfmisc_1(esk1_0,esk2_0)) = esk4_0
    | k2_zfmisc_1(esk1_0,esk2_0) = k1_xboole_0
    | k2_zfmisc_1(esk4_0,esk5_0) = k1_xboole_0
    | esk6_0 = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | esk5_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_16,c_0_23])).

cnf(c_0_46,negated_conjecture,
    ( esk4_0 = k1_xboole_0
    | esk5_0 = k1_xboole_0
    | esk4_0 != esk1_0 ),
    inference(spm,[status(thm)],[c_0_43,c_0_44])).

cnf(c_0_47,negated_conjecture,
    ( k2_zfmisc_1(esk4_0,esk5_0) = k1_xboole_0
    | k2_zfmisc_1(esk1_0,esk2_0) = k1_xboole_0
    | esk5_0 = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | esk6_0 = k1_xboole_0 ),
    inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_45]),c_0_27]),c_0_28]),c_0_46])).

cnf(c_0_48,negated_conjecture,
    ( k2_zfmisc_1(esk1_0,esk2_0) = k1_xboole_0
    | esk6_0 = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | esk5_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_13,c_0_47]),c_0_25])])).

cnf(c_0_49,negated_conjecture,
    ( esk5_0 = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | esk6_0 = k1_xboole_0 ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_13,c_0_48]),c_0_25])]),c_0_27]),c_0_28])).

cnf(c_0_50,negated_conjecture,
    ( k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),esk3_0) = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | esk5_0 = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14,c_0_49]),c_0_38])).

cnf(c_0_51,negated_conjecture,
    ( esk5_0 = k1_xboole_0
    | esk4_0 = k1_xboole_0 ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_50]),c_0_18]),c_0_27]),c_0_28])).

cnf(c_0_52,negated_conjecture,
    ( k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),esk3_0) = k1_xboole_0
    | esk4_0 = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14,c_0_51]),c_0_38]),c_0_22])).

cnf(c_0_53,negated_conjecture,
    ( esk4_0 = k1_xboole_0 ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_52]),c_0_18]),c_0_27]),c_0_28])).

cnf(c_0_54,negated_conjecture,
    ( k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),esk3_0) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_14,c_0_53]),c_0_22]),c_0_22])).

cnf(c_0_55,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_54]),c_0_18]),c_0_27]),c_0_28]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n006.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 11:12:07 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.12/0.37  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.12/0.37  #
% 0.12/0.37  # Preprocessing time       : 0.027 s
% 0.12/0.37  # Presaturation interreduction done
% 0.12/0.37  
% 0.12/0.37  # Proof found!
% 0.12/0.37  # SZS status Theorem
% 0.12/0.37  # SZS output start CNFRefutation
% 0.12/0.37  fof(t36_mcart_1, conjecture, ![X1, X2, X3, X4, X5, X6]:(k3_zfmisc_1(X1,X2,X3)=k3_zfmisc_1(X4,X5,X6)=>(X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|((X1=X4&X2=X5)&X3=X6))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t36_mcart_1)).
% 0.12/0.37  fof(d3_zfmisc_1, axiom, ![X1, X2, X3]:k3_zfmisc_1(X1,X2,X3)=k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_zfmisc_1)).
% 0.12/0.37  fof(t35_mcart_1, axiom, ![X1, X2, X3]:(((X1!=k1_xboole_0&X2!=k1_xboole_0)&X3!=k1_xboole_0)<=>k3_zfmisc_1(X1,X2,X3)!=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t35_mcart_1)).
% 0.12/0.37  fof(t195_relat_1, axiom, ![X1, X2]:~(((X1!=k1_xboole_0&X2!=k1_xboole_0)&~((k1_relat_1(k2_zfmisc_1(X1,X2))=X1&k2_relat_1(k2_zfmisc_1(X1,X2))=X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t195_relat_1)).
% 0.12/0.37  fof(t60_relat_1, axiom, (k1_relat_1(k1_xboole_0)=k1_xboole_0&k2_relat_1(k1_xboole_0)=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t60_relat_1)).
% 0.12/0.37  fof(c_0_5, negated_conjecture, ~(![X1, X2, X3, X4, X5, X6]:(k3_zfmisc_1(X1,X2,X3)=k3_zfmisc_1(X4,X5,X6)=>(X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|((X1=X4&X2=X5)&X3=X6)))), inference(assume_negation,[status(cth)],[t36_mcart_1])).
% 0.12/0.37  fof(c_0_6, negated_conjecture, (k3_zfmisc_1(esk1_0,esk2_0,esk3_0)=k3_zfmisc_1(esk4_0,esk5_0,esk6_0)&(((esk1_0!=k1_xboole_0&esk2_0!=k1_xboole_0)&esk3_0!=k1_xboole_0)&(esk1_0!=esk4_0|esk2_0!=esk5_0|esk3_0!=esk6_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_5])])])).
% 0.12/0.37  fof(c_0_7, plain, ![X9, X10, X11]:k3_zfmisc_1(X9,X10,X11)=k2_zfmisc_1(k2_zfmisc_1(X9,X10),X11), inference(variable_rename,[status(thm)],[d3_zfmisc_1])).
% 0.12/0.37  fof(c_0_8, plain, ![X12, X13, X14]:((X12=k1_xboole_0|X13=k1_xboole_0|X14=k1_xboole_0|k3_zfmisc_1(X12,X13,X14)!=k1_xboole_0)&(((X12!=k1_xboole_0|k3_zfmisc_1(X12,X13,X14)=k1_xboole_0)&(X13!=k1_xboole_0|k3_zfmisc_1(X12,X13,X14)=k1_xboole_0))&(X14!=k1_xboole_0|k3_zfmisc_1(X12,X13,X14)=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t35_mcart_1])])])).
% 0.12/0.37  fof(c_0_9, plain, ![X7, X8]:((k1_relat_1(k2_zfmisc_1(X7,X8))=X7|(X7=k1_xboole_0|X8=k1_xboole_0))&(k2_relat_1(k2_zfmisc_1(X7,X8))=X8|(X7=k1_xboole_0|X8=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t195_relat_1])])])).
% 0.12/0.37  cnf(c_0_10, negated_conjecture, (k3_zfmisc_1(esk1_0,esk2_0,esk3_0)=k3_zfmisc_1(esk4_0,esk5_0,esk6_0)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.12/0.37  cnf(c_0_11, plain, (k3_zfmisc_1(X1,X2,X3)=k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_12, plain, (k3_zfmisc_1(X2,X1,X3)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.37  cnf(c_0_13, plain, (k2_relat_1(k2_zfmisc_1(X1,X2))=X2|X1=k1_xboole_0|X2=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_14, negated_conjecture, (k2_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0),esk6_0)=k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),esk3_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_10, c_0_11]), c_0_11])).
% 0.12/0.37  cnf(c_0_15, plain, (k2_zfmisc_1(k2_zfmisc_1(X2,X1),X3)=k1_xboole_0|X1!=k1_xboole_0), inference(rw,[status(thm)],[c_0_12, c_0_11])).
% 0.12/0.37  cnf(c_0_16, plain, (k1_relat_1(k2_zfmisc_1(X1,X2))=X1|X1=k1_xboole_0|X2=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_17, negated_conjecture, (k2_relat_1(k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),esk3_0))=esk6_0|k2_zfmisc_1(esk4_0,esk5_0)=k1_xboole_0|esk6_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_13, c_0_14])).
% 0.12/0.37  cnf(c_0_18, negated_conjecture, (esk3_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.12/0.37  cnf(c_0_19, plain, (k2_zfmisc_1(k2_zfmisc_1(X1,k1_xboole_0),X2)=k1_xboole_0), inference(er,[status(thm)],[c_0_15])).
% 0.12/0.37  cnf(c_0_20, negated_conjecture, (k1_relat_1(k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),esk3_0))=k2_zfmisc_1(esk4_0,esk5_0)|k2_zfmisc_1(esk4_0,esk5_0)=k1_xboole_0|esk6_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_16, c_0_14])).
% 0.12/0.37  cnf(c_0_21, negated_conjecture, (k2_zfmisc_1(esk4_0,esk5_0)=k1_xboole_0|k2_zfmisc_1(esk1_0,esk2_0)=k1_xboole_0|esk6_0=k1_xboole_0|esk6_0=esk3_0), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_13, c_0_17]), c_0_18])).
% 0.12/0.37  cnf(c_0_22, plain, (k2_zfmisc_1(k1_xboole_0,X1)=k1_xboole_0), inference(spm,[status(thm)],[c_0_19, c_0_19])).
% 0.12/0.37  cnf(c_0_23, negated_conjecture, (k2_zfmisc_1(esk4_0,esk5_0)=k2_zfmisc_1(esk1_0,esk2_0)|k2_zfmisc_1(esk4_0,esk5_0)=k1_xboole_0|k2_zfmisc_1(esk1_0,esk2_0)=k1_xboole_0|esk6_0=k1_xboole_0), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_20]), c_0_18])).
% 0.12/0.37  cnf(c_0_24, negated_conjecture, (k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),esk3_0)=k1_xboole_0|k2_zfmisc_1(esk1_0,esk2_0)=k1_xboole_0|esk6_0=esk3_0|esk6_0=k1_xboole_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14, c_0_21]), c_0_22])).
% 0.12/0.37  cnf(c_0_25, plain, (k2_relat_1(k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[t60_relat_1])).
% 0.12/0.37  cnf(c_0_26, negated_conjecture, (k2_relat_1(k2_zfmisc_1(esk1_0,esk2_0))=esk5_0|k2_zfmisc_1(esk1_0,esk2_0)=k1_xboole_0|k2_zfmisc_1(esk4_0,esk5_0)=k1_xboole_0|esk6_0=k1_xboole_0|esk4_0=k1_xboole_0|esk5_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_13, c_0_23])).
% 0.12/0.37  cnf(c_0_27, negated_conjecture, (esk2_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.12/0.37  cnf(c_0_28, negated_conjecture, (esk1_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.12/0.37  cnf(c_0_29, negated_conjecture, (k2_zfmisc_1(esk1_0,esk2_0)=k1_xboole_0|esk6_0=k1_xboole_0|esk6_0=esk3_0), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_13, c_0_24]), c_0_25])]), c_0_18])).
% 0.12/0.37  cnf(c_0_30, plain, (k1_relat_1(k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[t60_relat_1])).
% 0.12/0.37  cnf(c_0_31, negated_conjecture, (k2_zfmisc_1(esk4_0,esk5_0)=k1_xboole_0|k2_zfmisc_1(esk1_0,esk2_0)=k1_xboole_0|esk5_0=k1_xboole_0|esk4_0=k1_xboole_0|esk6_0=k1_xboole_0|esk5_0=esk2_0), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_13, c_0_26]), c_0_27]), c_0_28])).
% 0.12/0.37  cnf(c_0_32, negated_conjecture, (esk1_0!=esk4_0|esk2_0!=esk5_0|esk3_0!=esk6_0), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.12/0.37  cnf(c_0_33, negated_conjecture, (esk6_0=esk3_0|esk6_0=k1_xboole_0), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_13, c_0_29]), c_0_25])]), c_0_27]), c_0_28])).
% 0.12/0.37  cnf(c_0_34, plain, (k2_zfmisc_1(X1,k1_xboole_0)=k1_xboole_0|X2=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_19]), c_0_30])])).
% 0.12/0.37  cnf(c_0_35, negated_conjecture, (k2_zfmisc_1(esk1_0,esk2_0)=k1_xboole_0|esk5_0=esk2_0|esk6_0=k1_xboole_0|esk4_0=k1_xboole_0|esk5_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_13, c_0_31]), c_0_25])])).
% 0.12/0.37  cnf(c_0_36, plain, (X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|k3_zfmisc_1(X1,X2,X3)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.37  cnf(c_0_37, negated_conjecture, (esk6_0=k1_xboole_0|esk4_0!=esk1_0|esk5_0!=esk2_0), inference(spm,[status(thm)],[c_0_32, c_0_33])).
% 0.12/0.37  cnf(c_0_38, plain, (k2_zfmisc_1(X1,k1_xboole_0)=k1_xboole_0), inference(ef,[status(thm)],[c_0_34])).
% 0.12/0.37  cnf(c_0_39, negated_conjecture, (esk5_0=k1_xboole_0|esk4_0=k1_xboole_0|esk6_0=k1_xboole_0|esk5_0=esk2_0), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_13, c_0_35]), c_0_25])]), c_0_27]), c_0_28])).
% 0.12/0.37  cnf(c_0_40, plain, (X3=k1_xboole_0|X2=k1_xboole_0|X1=k1_xboole_0|k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3)!=k1_xboole_0), inference(rw,[status(thm)],[c_0_36, c_0_11])).
% 0.12/0.37  cnf(c_0_41, negated_conjecture, (k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),esk3_0)=k1_xboole_0|esk4_0!=esk1_0|esk5_0!=esk2_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14, c_0_37]), c_0_38])).
% 0.12/0.37  cnf(c_0_42, negated_conjecture, (k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),esk3_0)=k1_xboole_0|esk5_0=esk2_0|esk4_0=k1_xboole_0|esk5_0=k1_xboole_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14, c_0_39]), c_0_38])).
% 0.12/0.37  cnf(c_0_43, negated_conjecture, (esk4_0!=esk1_0|esk5_0!=esk2_0), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_41]), c_0_18]), c_0_27]), c_0_28])).
% 0.12/0.37  cnf(c_0_44, negated_conjecture, (esk5_0=k1_xboole_0|esk4_0=k1_xboole_0|esk5_0=esk2_0), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_42]), c_0_18]), c_0_27]), c_0_28])).
% 0.12/0.37  cnf(c_0_45, negated_conjecture, (k1_relat_1(k2_zfmisc_1(esk1_0,esk2_0))=esk4_0|k2_zfmisc_1(esk1_0,esk2_0)=k1_xboole_0|k2_zfmisc_1(esk4_0,esk5_0)=k1_xboole_0|esk6_0=k1_xboole_0|esk4_0=k1_xboole_0|esk5_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_16, c_0_23])).
% 0.12/0.37  cnf(c_0_46, negated_conjecture, (esk4_0=k1_xboole_0|esk5_0=k1_xboole_0|esk4_0!=esk1_0), inference(spm,[status(thm)],[c_0_43, c_0_44])).
% 0.12/0.37  cnf(c_0_47, negated_conjecture, (k2_zfmisc_1(esk4_0,esk5_0)=k1_xboole_0|k2_zfmisc_1(esk1_0,esk2_0)=k1_xboole_0|esk5_0=k1_xboole_0|esk4_0=k1_xboole_0|esk6_0=k1_xboole_0), inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_45]), c_0_27]), c_0_28]), c_0_46])).
% 0.12/0.37  cnf(c_0_48, negated_conjecture, (k2_zfmisc_1(esk1_0,esk2_0)=k1_xboole_0|esk6_0=k1_xboole_0|esk4_0=k1_xboole_0|esk5_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_13, c_0_47]), c_0_25])])).
% 0.12/0.37  cnf(c_0_49, negated_conjecture, (esk5_0=k1_xboole_0|esk4_0=k1_xboole_0|esk6_0=k1_xboole_0), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_13, c_0_48]), c_0_25])]), c_0_27]), c_0_28])).
% 0.12/0.37  cnf(c_0_50, negated_conjecture, (k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),esk3_0)=k1_xboole_0|esk4_0=k1_xboole_0|esk5_0=k1_xboole_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14, c_0_49]), c_0_38])).
% 0.12/0.37  cnf(c_0_51, negated_conjecture, (esk5_0=k1_xboole_0|esk4_0=k1_xboole_0), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_50]), c_0_18]), c_0_27]), c_0_28])).
% 0.12/0.37  cnf(c_0_52, negated_conjecture, (k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),esk3_0)=k1_xboole_0|esk4_0=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14, c_0_51]), c_0_38]), c_0_22])).
% 0.12/0.37  cnf(c_0_53, negated_conjecture, (esk4_0=k1_xboole_0), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_52]), c_0_18]), c_0_27]), c_0_28])).
% 0.12/0.37  cnf(c_0_54, negated_conjecture, (k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),esk3_0)=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_14, c_0_53]), c_0_22]), c_0_22])).
% 0.12/0.37  cnf(c_0_55, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_54]), c_0_18]), c_0_27]), c_0_28]), ['proof']).
% 0.12/0.37  # SZS output end CNFRefutation
% 0.12/0.37  # Proof object total steps             : 56
% 0.12/0.37  # Proof object clause steps            : 46
% 0.12/0.37  # Proof object formula steps           : 10
% 0.12/0.37  # Proof object conjectures             : 36
% 0.12/0.37  # Proof object clause conjectures      : 33
% 0.12/0.37  # Proof object formula conjectures     : 3
% 0.12/0.37  # Proof object initial clauses used    : 12
% 0.12/0.37  # Proof object initial formulas used   : 5
% 0.12/0.37  # Proof object generating inferences   : 29
% 0.12/0.37  # Proof object simplifying inferences  : 57
% 0.12/0.37  # Training examples: 0 positive, 0 negative
% 0.12/0.37  # Parsed axioms                        : 5
% 0.12/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.37  # Initial clauses                      : 14
% 0.12/0.37  # Removed in clause preprocessing      : 1
% 0.12/0.37  # Initial clauses in saturation        : 13
% 0.12/0.37  # Processed clauses                    : 88
% 0.12/0.37  # ...of these trivial                  : 2
% 0.12/0.37  # ...subsumed                          : 15
% 0.12/0.37  # ...remaining for further processing  : 71
% 0.12/0.37  # Other redundant clauses eliminated   : 4
% 0.12/0.37  # Clauses deleted for lack of memory   : 0
% 0.12/0.37  # Backward-subsumed                    : 26
% 0.12/0.37  # Backward-rewritten                   : 16
% 0.12/0.37  # Generated clauses                    : 179
% 0.12/0.37  # ...of the previous two non-trivial   : 169
% 0.12/0.37  # Contextual simplify-reflections      : 1
% 0.12/0.37  # Paramodulations                      : 168
% 0.12/0.37  # Factorizations                       : 7
% 0.12/0.37  # Equation resolutions                 : 4
% 0.12/0.37  # Propositional unsat checks           : 0
% 0.12/0.37  #    Propositional check models        : 0
% 0.12/0.37  #    Propositional check unsatisfiable : 0
% 0.12/0.37  #    Propositional clauses             : 0
% 0.12/0.37  #    Propositional clauses after purity: 0
% 0.12/0.37  #    Propositional unsat core size     : 0
% 0.12/0.37  #    Propositional preprocessing time  : 0.000
% 0.12/0.37  #    Propositional encoding time       : 0.000
% 0.12/0.37  #    Propositional solver time         : 0.000
% 0.12/0.37  #    Success case prop preproc time    : 0.000
% 0.12/0.37  #    Success case prop encoding time   : 0.000
% 0.12/0.37  #    Success case prop solver time     : 0.000
% 0.12/0.37  # Current number of processed clauses  : 13
% 0.12/0.37  #    Positive orientable unit clauses  : 6
% 0.12/0.37  #    Positive unorientable unit clauses: 0
% 0.12/0.37  #    Negative unit clauses             : 3
% 0.12/0.37  #    Non-unit-clauses                  : 4
% 0.12/0.37  # Current number of unprocessed clauses: 30
% 0.12/0.37  # ...number of literals in the above   : 128
% 0.12/0.37  # Current number of archived formulas  : 0
% 0.12/0.37  # Current number of archived clauses   : 56
% 0.12/0.37  # Clause-clause subsumption calls (NU) : 164
% 0.12/0.37  # Rec. Clause-clause subsumption calls : 66
% 0.12/0.37  # Non-unit clause-clause subsumptions  : 35
% 0.12/0.37  # Unit Clause-clause subsumption calls : 3
% 0.12/0.37  # Rewrite failures with RHS unbound    : 0
% 0.12/0.37  # BW rewrite match attempts            : 4
% 0.12/0.37  # BW rewrite match successes           : 4
% 0.12/0.37  # Condensation attempts                : 0
% 0.12/0.37  # Condensation successes               : 0
% 0.12/0.37  # Termbank termtop insertions          : 2975
% 0.12/0.38  
% 0.12/0.38  # -------------------------------------------------
% 0.12/0.38  # User time                : 0.033 s
% 0.12/0.38  # System time              : 0.002 s
% 0.12/0.38  # Total time               : 0.035 s
% 0.12/0.38  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
