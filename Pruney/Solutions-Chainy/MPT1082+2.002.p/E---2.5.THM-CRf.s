%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:08:20 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   48 ( 337 expanded)
%              Number of clauses        :   35 ( 153 expanded)
%              Number of leaves         :    6 (  82 expanded)
%              Depth                    :   14
%              Number of atoms          :  141 ( 907 expanded)
%              Number of equality atoms :    3 (  81 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(fc1_funct_2,axiom,(
    ! [X1,X2] :
      ( ~ v1_xboole_0(X2)
     => ~ v1_xboole_0(k1_funct_2(X1,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_funct_2)).

fof(t160_funct_2,axiom,(
    ! [X1,X2] : k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2)) = k1_funct_2(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t160_funct_2)).

fof(t199_funct_2,conjecture,(
    ! [X1,X2] :
      ( ~ v1_xboole_0(X2)
     => m1_funct_2(k1_funct_2(X1,X2),X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t199_funct_2)).

fof(d13_funct_2,axiom,(
    ! [X1,X2,X3] :
      ( ~ v1_xboole_0(X3)
     => ( m1_funct_2(X3,X1,X2)
      <=> ! [X4] :
            ( m1_subset_1(X4,X3)
           => ( v1_funct_1(X4)
              & v1_funct_2(X4,X1,X2)
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d13_funct_2)).

fof(t121_funct_2,axiom,(
    ! [X1,X2,X3] :
      ( r2_hidden(X3,k1_funct_2(X1,X2))
     => ( v1_funct_1(X3)
        & v1_funct_2(X3,X1,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t121_funct_2)).

fof(t2_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,X2)
     => ( v1_xboole_0(X2)
        | r2_hidden(X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_subset)).

fof(c_0_6,plain,(
    ! [X12,X13] :
      ( v1_xboole_0(X13)
      | ~ v1_xboole_0(k1_funct_2(X12,X13)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc1_funct_2])])])).

fof(c_0_7,plain,(
    ! [X17,X18] : k5_partfun1(X17,X18,k3_partfun1(k1_xboole_0,X17,X18)) = k1_funct_2(X17,X18) ),
    inference(variable_rename,[status(thm)],[t160_funct_2])).

fof(c_0_8,negated_conjecture,(
    ~ ! [X1,X2] :
        ( ~ v1_xboole_0(X2)
       => m1_funct_2(k1_funct_2(X1,X2),X1,X2) ) ),
    inference(assume_negation,[status(cth)],[t199_funct_2])).

cnf(c_0_9,plain,
    ( v1_xboole_0(X1)
    | ~ v1_xboole_0(k1_funct_2(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_10,plain,
    ( k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2)) = k1_funct_2(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

fof(c_0_11,plain,(
    ! [X7,X8,X9,X10] :
      ( ( v1_funct_1(X10)
        | ~ m1_subset_1(X10,X9)
        | ~ m1_funct_2(X9,X7,X8)
        | v1_xboole_0(X9) )
      & ( v1_funct_2(X10,X7,X8)
        | ~ m1_subset_1(X10,X9)
        | ~ m1_funct_2(X9,X7,X8)
        | v1_xboole_0(X9) )
      & ( m1_subset_1(X10,k1_zfmisc_1(k2_zfmisc_1(X7,X8)))
        | ~ m1_subset_1(X10,X9)
        | ~ m1_funct_2(X9,X7,X8)
        | v1_xboole_0(X9) )
      & ( m1_subset_1(esk1_3(X7,X8,X9),X9)
        | m1_funct_2(X9,X7,X8)
        | v1_xboole_0(X9) )
      & ( ~ v1_funct_1(esk1_3(X7,X8,X9))
        | ~ v1_funct_2(esk1_3(X7,X8,X9),X7,X8)
        | ~ m1_subset_1(esk1_3(X7,X8,X9),k1_zfmisc_1(k2_zfmisc_1(X7,X8)))
        | m1_funct_2(X9,X7,X8)
        | v1_xboole_0(X9) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d13_funct_2])])])])])])).

fof(c_0_12,negated_conjecture,
    ( ~ v1_xboole_0(esk3_0)
    & ~ m1_funct_2(k1_funct_2(esk2_0,esk3_0),esk2_0,esk3_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_8])])])])).

cnf(c_0_13,plain,
    ( v1_xboole_0(X1)
    | ~ v1_xboole_0(k5_partfun1(X2,X1,k3_partfun1(k1_xboole_0,X2,X1))) ),
    inference(rw,[status(thm)],[c_0_9,c_0_10])).

cnf(c_0_14,plain,
    ( m1_subset_1(esk1_3(X1,X2,X3),X3)
    | m1_funct_2(X3,X1,X2)
    | v1_xboole_0(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

fof(c_0_15,plain,(
    ! [X14,X15,X16] :
      ( ( v1_funct_1(X16)
        | ~ r2_hidden(X16,k1_funct_2(X14,X15)) )
      & ( v1_funct_2(X16,X14,X15)
        | ~ r2_hidden(X16,k1_funct_2(X14,X15)) )
      & ( m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15)))
        | ~ r2_hidden(X16,k1_funct_2(X14,X15)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t121_funct_2])])])).

cnf(c_0_16,negated_conjecture,
    ( ~ m1_funct_2(k1_funct_2(esk2_0,esk3_0),esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_17,negated_conjecture,
    ( ~ v1_xboole_0(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_18,plain,
    ( m1_funct_2(k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2)),X3,X4)
    | v1_xboole_0(X2)
    | m1_subset_1(esk1_3(X3,X4,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2))),k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2))) ),
    inference(spm,[status(thm)],[c_0_13,c_0_14])).

cnf(c_0_19,plain,
    ( v1_funct_1(X1)
    | ~ r2_hidden(X1,k1_funct_2(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_20,plain,
    ( m1_funct_2(X3,X1,X2)
    | v1_xboole_0(X3)
    | ~ v1_funct_1(esk1_3(X1,X2,X3))
    | ~ v1_funct_2(esk1_3(X1,X2,X3),X1,X2)
    | ~ m1_subset_1(esk1_3(X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_21,plain,
    ( v1_funct_1(X1)
    | v1_xboole_0(X2)
    | ~ m1_subset_1(X1,X2)
    | ~ m1_funct_2(X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_22,negated_conjecture,
    ( ~ m1_funct_2(k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0)),esk2_0,esk3_0) ),
    inference(rw,[status(thm)],[c_0_16,c_0_10])).

cnf(c_0_23,negated_conjecture,
    ( m1_funct_2(k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0)),X2,X3)
    | m1_subset_1(esk1_3(X2,X3,k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0))),k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0))) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_24,plain,
    ( v1_funct_1(X1)
    | ~ r2_hidden(X1,k5_partfun1(X2,X3,k3_partfun1(k1_xboole_0,X2,X3))) ),
    inference(rw,[status(thm)],[c_0_19,c_0_10])).

cnf(c_0_25,plain,
    ( m1_funct_2(X1,X2,X3)
    | v1_xboole_0(X4)
    | v1_xboole_0(X1)
    | ~ v1_funct_2(esk1_3(X2,X3,X1),X2,X3)
    | ~ m1_funct_2(X4,X5,X6)
    | ~ m1_subset_1(esk1_3(X2,X3,X1),k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ m1_subset_1(esk1_3(X2,X3,X1),X4) ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

cnf(c_0_26,negated_conjecture,
    ( m1_subset_1(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))) ),
    inference(spm,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_27,plain,
    ( m1_funct_2(X1,X2,X3)
    | v1_xboole_0(X1)
    | ~ v1_funct_2(esk1_3(X2,X3,X1),X2,X3)
    | ~ r2_hidden(esk1_3(X2,X3,X1),k5_partfun1(X4,X5,k3_partfun1(k1_xboole_0,X4,X5)))
    | ~ m1_subset_1(esk1_3(X2,X3,X1),k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(spm,[status(thm)],[c_0_20,c_0_24])).

cnf(c_0_28,negated_conjecture,
    ( v1_xboole_0(k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0)))
    | ~ v1_funct_2(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),esk2_0,esk3_0)
    | ~ m1_funct_2(k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0)),X1,X2)
    | ~ m1_subset_1(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0))) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_26]),c_0_22])).

cnf(c_0_29,plain,
    ( v1_funct_2(X1,X2,X3)
    | ~ r2_hidden(X1,k1_funct_2(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_30,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ r2_hidden(X1,k1_funct_2(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_31,plain,(
    ! [X5,X6] :
      ( ~ m1_subset_1(X5,X6)
      | v1_xboole_0(X6)
      | r2_hidden(X5,X6) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).

cnf(c_0_32,plain,
    ( m1_funct_2(k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2)),X3,X4)
    | v1_xboole_0(X2)
    | ~ v1_funct_2(esk1_3(X3,X4,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2))),X3,X4)
    | ~ r2_hidden(esk1_3(X3,X4,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2))),k5_partfun1(X5,X6,k3_partfun1(k1_xboole_0,X5,X6)))
    | ~ m1_subset_1(esk1_3(X3,X4,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2))),k1_zfmisc_1(k2_zfmisc_1(X3,X4))) ),
    inference(spm,[status(thm)],[c_0_13,c_0_27])).

cnf(c_0_33,negated_conjecture,
    ( ~ v1_funct_2(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),esk2_0,esk3_0)
    | ~ m1_funct_2(k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0)),X1,X2)
    | ~ m1_subset_1(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0))) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_13,c_0_28]),c_0_17])).

cnf(c_0_34,plain,
    ( v1_funct_2(X1,X2,X3)
    | ~ r2_hidden(X1,k5_partfun1(X2,X3,k3_partfun1(k1_xboole_0,X2,X3))) ),
    inference(rw,[status(thm)],[c_0_29,c_0_10])).

cnf(c_0_35,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ r2_hidden(X1,k5_partfun1(X2,X3,k3_partfun1(k1_xboole_0,X2,X3))) ),
    inference(rw,[status(thm)],[c_0_30,c_0_10])).

cnf(c_0_36,plain,
    ( v1_xboole_0(X2)
    | r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_37,negated_conjecture,
    ( m1_funct_2(k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0)),X2,X3)
    | ~ v1_funct_2(esk1_3(X2,X3,k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0))),X2,X3)
    | ~ r2_hidden(esk1_3(X2,X3,k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0))),k5_partfun1(X4,X5,k3_partfun1(k1_xboole_0,X4,X5)))
    | ~ m1_subset_1(esk1_3(X2,X3,k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0))),k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(spm,[status(thm)],[c_0_17,c_0_32])).

cnf(c_0_38,negated_conjecture,
    ( ~ m1_funct_2(k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0)),X1,X2)
    | ~ r2_hidden(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_35])).

cnf(c_0_39,plain,
    ( r2_hidden(X1,k5_partfun1(X2,X3,k3_partfun1(k1_xboole_0,X2,X3)))
    | v1_xboole_0(X3)
    | ~ m1_subset_1(X1,k5_partfun1(X2,X3,k3_partfun1(k1_xboole_0,X2,X3))) ),
    inference(spm,[status(thm)],[c_0_13,c_0_36])).

cnf(c_0_40,negated_conjecture,
    ( m1_funct_2(k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0)),X2,X3)
    | ~ r2_hidden(esk1_3(X2,X3,k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0))),k5_partfun1(X4,X5,k3_partfun1(k1_xboole_0,X4,X5)))
    | ~ r2_hidden(esk1_3(X2,X3,k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0))),k5_partfun1(X2,X3,k3_partfun1(k1_xboole_0,X2,X3))) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_34]),c_0_35])).

cnf(c_0_41,negated_conjecture,
    ( m1_subset_1(esk1_3(X1,X2,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0)))
    | ~ r2_hidden(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))) ),
    inference(spm,[status(thm)],[c_0_38,c_0_23])).

cnf(c_0_42,negated_conjecture,
    ( r2_hidden(X1,k5_partfun1(X2,esk3_0,k3_partfun1(k1_xboole_0,X2,esk3_0)))
    | ~ m1_subset_1(X1,k5_partfun1(X2,esk3_0,k3_partfun1(k1_xboole_0,X2,esk3_0))) ),
    inference(spm,[status(thm)],[c_0_17,c_0_39])).

cnf(c_0_43,negated_conjecture,
    ( ~ r2_hidden(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0)))
    | ~ r2_hidden(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2))) ),
    inference(spm,[status(thm)],[c_0_22,c_0_40])).

cnf(c_0_44,negated_conjecture,
    ( m1_subset_1(esk1_3(X1,X2,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_42]),c_0_26])])).

cnf(c_0_45,negated_conjecture,
    ( ~ r2_hidden(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_42]),c_0_44])])).

cnf(c_0_46,negated_conjecture,
    ( ~ m1_subset_1(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0))) ),
    inference(spm,[status(thm)],[c_0_45,c_0_42])).

cnf(c_0_47,negated_conjecture,
    ( $false ),
    inference(spm,[status(thm)],[c_0_46,c_0_44]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n016.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 17:06:19 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.20/0.39  # AutoSched0-Mode selected heuristic G_E___107_B00_00_F1_PI_AE_Q4_CS_SP_PS_S070I
% 0.20/0.39  # and selection function SelectVGNonCR.
% 0.20/0.39  #
% 0.20/0.39  # Preprocessing time       : 0.027 s
% 0.20/0.39  # Presaturation interreduction done
% 0.20/0.39  
% 0.20/0.39  # Proof found!
% 0.20/0.39  # SZS status Theorem
% 0.20/0.39  # SZS output start CNFRefutation
% 0.20/0.39  fof(fc1_funct_2, axiom, ![X1, X2]:(~(v1_xboole_0(X2))=>~(v1_xboole_0(k1_funct_2(X1,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc1_funct_2)).
% 0.20/0.39  fof(t160_funct_2, axiom, ![X1, X2]:k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2))=k1_funct_2(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t160_funct_2)).
% 0.20/0.39  fof(t199_funct_2, conjecture, ![X1, X2]:(~(v1_xboole_0(X2))=>m1_funct_2(k1_funct_2(X1,X2),X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t199_funct_2)).
% 0.20/0.39  fof(d13_funct_2, axiom, ![X1, X2, X3]:(~(v1_xboole_0(X3))=>(m1_funct_2(X3,X1,X2)<=>![X4]:(m1_subset_1(X4,X3)=>((v1_funct_1(X4)&v1_funct_2(X4,X1,X2))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d13_funct_2)).
% 0.20/0.39  fof(t121_funct_2, axiom, ![X1, X2, X3]:(r2_hidden(X3,k1_funct_2(X1,X2))=>((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t121_funct_2)).
% 0.20/0.39  fof(t2_subset, axiom, ![X1, X2]:(m1_subset_1(X1,X2)=>(v1_xboole_0(X2)|r2_hidden(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_subset)).
% 0.20/0.39  fof(c_0_6, plain, ![X12, X13]:(v1_xboole_0(X13)|~v1_xboole_0(k1_funct_2(X12,X13))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc1_funct_2])])])).
% 0.20/0.39  fof(c_0_7, plain, ![X17, X18]:k5_partfun1(X17,X18,k3_partfun1(k1_xboole_0,X17,X18))=k1_funct_2(X17,X18), inference(variable_rename,[status(thm)],[t160_funct_2])).
% 0.20/0.39  fof(c_0_8, negated_conjecture, ~(![X1, X2]:(~(v1_xboole_0(X2))=>m1_funct_2(k1_funct_2(X1,X2),X1,X2))), inference(assume_negation,[status(cth)],[t199_funct_2])).
% 0.20/0.39  cnf(c_0_9, plain, (v1_xboole_0(X1)|~v1_xboole_0(k1_funct_2(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.20/0.39  cnf(c_0_10, plain, (k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2))=k1_funct_2(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.20/0.39  fof(c_0_11, plain, ![X7, X8, X9, X10]:((((v1_funct_1(X10)|~m1_subset_1(X10,X9)|~m1_funct_2(X9,X7,X8)|v1_xboole_0(X9))&(v1_funct_2(X10,X7,X8)|~m1_subset_1(X10,X9)|~m1_funct_2(X9,X7,X8)|v1_xboole_0(X9)))&(m1_subset_1(X10,k1_zfmisc_1(k2_zfmisc_1(X7,X8)))|~m1_subset_1(X10,X9)|~m1_funct_2(X9,X7,X8)|v1_xboole_0(X9)))&((m1_subset_1(esk1_3(X7,X8,X9),X9)|m1_funct_2(X9,X7,X8)|v1_xboole_0(X9))&(~v1_funct_1(esk1_3(X7,X8,X9))|~v1_funct_2(esk1_3(X7,X8,X9),X7,X8)|~m1_subset_1(esk1_3(X7,X8,X9),k1_zfmisc_1(k2_zfmisc_1(X7,X8)))|m1_funct_2(X9,X7,X8)|v1_xboole_0(X9)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d13_funct_2])])])])])])).
% 0.20/0.39  fof(c_0_12, negated_conjecture, (~v1_xboole_0(esk3_0)&~m1_funct_2(k1_funct_2(esk2_0,esk3_0),esk2_0,esk3_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_8])])])])).
% 0.20/0.39  cnf(c_0_13, plain, (v1_xboole_0(X1)|~v1_xboole_0(k5_partfun1(X2,X1,k3_partfun1(k1_xboole_0,X2,X1)))), inference(rw,[status(thm)],[c_0_9, c_0_10])).
% 0.20/0.39  cnf(c_0_14, plain, (m1_subset_1(esk1_3(X1,X2,X3),X3)|m1_funct_2(X3,X1,X2)|v1_xboole_0(X3)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.39  fof(c_0_15, plain, ![X14, X15, X16]:(((v1_funct_1(X16)|~r2_hidden(X16,k1_funct_2(X14,X15)))&(v1_funct_2(X16,X14,X15)|~r2_hidden(X16,k1_funct_2(X14,X15))))&(m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15)))|~r2_hidden(X16,k1_funct_2(X14,X15)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t121_funct_2])])])).
% 0.20/0.39  cnf(c_0_16, negated_conjecture, (~m1_funct_2(k1_funct_2(esk2_0,esk3_0),esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.39  cnf(c_0_17, negated_conjecture, (~v1_xboole_0(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.39  cnf(c_0_18, plain, (m1_funct_2(k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2)),X3,X4)|v1_xboole_0(X2)|m1_subset_1(esk1_3(X3,X4,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2))),k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2)))), inference(spm,[status(thm)],[c_0_13, c_0_14])).
% 0.20/0.39  cnf(c_0_19, plain, (v1_funct_1(X1)|~r2_hidden(X1,k1_funct_2(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.39  cnf(c_0_20, plain, (m1_funct_2(X3,X1,X2)|v1_xboole_0(X3)|~v1_funct_1(esk1_3(X1,X2,X3))|~v1_funct_2(esk1_3(X1,X2,X3),X1,X2)|~m1_subset_1(esk1_3(X1,X2,X3),k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.39  cnf(c_0_21, plain, (v1_funct_1(X1)|v1_xboole_0(X2)|~m1_subset_1(X1,X2)|~m1_funct_2(X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.39  cnf(c_0_22, negated_conjecture, (~m1_funct_2(k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0)),esk2_0,esk3_0)), inference(rw,[status(thm)],[c_0_16, c_0_10])).
% 0.20/0.39  cnf(c_0_23, negated_conjecture, (m1_funct_2(k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0)),X2,X3)|m1_subset_1(esk1_3(X2,X3,k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0))),k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0)))), inference(spm,[status(thm)],[c_0_17, c_0_18])).
% 0.20/0.39  cnf(c_0_24, plain, (v1_funct_1(X1)|~r2_hidden(X1,k5_partfun1(X2,X3,k3_partfun1(k1_xboole_0,X2,X3)))), inference(rw,[status(thm)],[c_0_19, c_0_10])).
% 0.20/0.39  cnf(c_0_25, plain, (m1_funct_2(X1,X2,X3)|v1_xboole_0(X4)|v1_xboole_0(X1)|~v1_funct_2(esk1_3(X2,X3,X1),X2,X3)|~m1_funct_2(X4,X5,X6)|~m1_subset_1(esk1_3(X2,X3,X1),k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~m1_subset_1(esk1_3(X2,X3,X1),X4)), inference(spm,[status(thm)],[c_0_20, c_0_21])).
% 0.20/0.39  cnf(c_0_26, negated_conjecture, (m1_subset_1(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0)))), inference(spm,[status(thm)],[c_0_22, c_0_23])).
% 0.20/0.39  cnf(c_0_27, plain, (m1_funct_2(X1,X2,X3)|v1_xboole_0(X1)|~v1_funct_2(esk1_3(X2,X3,X1),X2,X3)|~r2_hidden(esk1_3(X2,X3,X1),k5_partfun1(X4,X5,k3_partfun1(k1_xboole_0,X4,X5)))|~m1_subset_1(esk1_3(X2,X3,X1),k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(spm,[status(thm)],[c_0_20, c_0_24])).
% 0.20/0.39  cnf(c_0_28, negated_conjecture, (v1_xboole_0(k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0)))|~v1_funct_2(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),esk2_0,esk3_0)|~m1_funct_2(k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0)),X1,X2)|~m1_subset_1(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0)))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_26]), c_0_22])).
% 0.20/0.39  cnf(c_0_29, plain, (v1_funct_2(X1,X2,X3)|~r2_hidden(X1,k1_funct_2(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.39  cnf(c_0_30, plain, (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~r2_hidden(X1,k1_funct_2(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.39  fof(c_0_31, plain, ![X5, X6]:(~m1_subset_1(X5,X6)|(v1_xboole_0(X6)|r2_hidden(X5,X6))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).
% 0.20/0.39  cnf(c_0_32, plain, (m1_funct_2(k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2)),X3,X4)|v1_xboole_0(X2)|~v1_funct_2(esk1_3(X3,X4,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2))),X3,X4)|~r2_hidden(esk1_3(X3,X4,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2))),k5_partfun1(X5,X6,k3_partfun1(k1_xboole_0,X5,X6)))|~m1_subset_1(esk1_3(X3,X4,k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2))),k1_zfmisc_1(k2_zfmisc_1(X3,X4)))), inference(spm,[status(thm)],[c_0_13, c_0_27])).
% 0.20/0.39  cnf(c_0_33, negated_conjecture, (~v1_funct_2(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),esk2_0,esk3_0)|~m1_funct_2(k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0)),X1,X2)|~m1_subset_1(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0)))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_13, c_0_28]), c_0_17])).
% 0.20/0.39  cnf(c_0_34, plain, (v1_funct_2(X1,X2,X3)|~r2_hidden(X1,k5_partfun1(X2,X3,k3_partfun1(k1_xboole_0,X2,X3)))), inference(rw,[status(thm)],[c_0_29, c_0_10])).
% 0.20/0.39  cnf(c_0_35, plain, (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~r2_hidden(X1,k5_partfun1(X2,X3,k3_partfun1(k1_xboole_0,X2,X3)))), inference(rw,[status(thm)],[c_0_30, c_0_10])).
% 0.20/0.39  cnf(c_0_36, plain, (v1_xboole_0(X2)|r2_hidden(X1,X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.20/0.39  cnf(c_0_37, negated_conjecture, (m1_funct_2(k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0)),X2,X3)|~v1_funct_2(esk1_3(X2,X3,k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0))),X2,X3)|~r2_hidden(esk1_3(X2,X3,k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0))),k5_partfun1(X4,X5,k3_partfun1(k1_xboole_0,X4,X5)))|~m1_subset_1(esk1_3(X2,X3,k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0))),k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(spm,[status(thm)],[c_0_17, c_0_32])).
% 0.20/0.39  cnf(c_0_38, negated_conjecture, (~m1_funct_2(k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0)),X1,X2)|~r2_hidden(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0)))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_35])).
% 0.20/0.39  cnf(c_0_39, plain, (r2_hidden(X1,k5_partfun1(X2,X3,k3_partfun1(k1_xboole_0,X2,X3)))|v1_xboole_0(X3)|~m1_subset_1(X1,k5_partfun1(X2,X3,k3_partfun1(k1_xboole_0,X2,X3)))), inference(spm,[status(thm)],[c_0_13, c_0_36])).
% 0.20/0.39  cnf(c_0_40, negated_conjecture, (m1_funct_2(k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0)),X2,X3)|~r2_hidden(esk1_3(X2,X3,k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0))),k5_partfun1(X4,X5,k3_partfun1(k1_xboole_0,X4,X5)))|~r2_hidden(esk1_3(X2,X3,k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0))),k5_partfun1(X2,X3,k3_partfun1(k1_xboole_0,X2,X3)))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_34]), c_0_35])).
% 0.20/0.39  cnf(c_0_41, negated_conjecture, (m1_subset_1(esk1_3(X1,X2,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0)))|~r2_hidden(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0)))), inference(spm,[status(thm)],[c_0_38, c_0_23])).
% 0.20/0.39  cnf(c_0_42, negated_conjecture, (r2_hidden(X1,k5_partfun1(X2,esk3_0,k3_partfun1(k1_xboole_0,X2,esk3_0)))|~m1_subset_1(X1,k5_partfun1(X2,esk3_0,k3_partfun1(k1_xboole_0,X2,esk3_0)))), inference(spm,[status(thm)],[c_0_17, c_0_39])).
% 0.20/0.39  cnf(c_0_43, negated_conjecture, (~r2_hidden(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0)))|~r2_hidden(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2)))), inference(spm,[status(thm)],[c_0_22, c_0_40])).
% 0.20/0.39  cnf(c_0_44, negated_conjecture, (m1_subset_1(esk1_3(X1,X2,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_42]), c_0_26])])).
% 0.20/0.39  cnf(c_0_45, negated_conjecture, (~r2_hidden(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k5_partfun1(X1,X2,k3_partfun1(k1_xboole_0,X1,X2)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_42]), c_0_44])])).
% 0.20/0.39  cnf(c_0_46, negated_conjecture, (~m1_subset_1(esk1_3(esk2_0,esk3_0,k5_partfun1(esk2_0,esk3_0,k3_partfun1(k1_xboole_0,esk2_0,esk3_0))),k5_partfun1(X1,esk3_0,k3_partfun1(k1_xboole_0,X1,esk3_0)))), inference(spm,[status(thm)],[c_0_45, c_0_42])).
% 0.20/0.39  cnf(c_0_47, negated_conjecture, ($false), inference(spm,[status(thm)],[c_0_46, c_0_44]), ['proof']).
% 0.20/0.39  # SZS output end CNFRefutation
% 0.20/0.39  # Proof object total steps             : 48
% 0.20/0.39  # Proof object clause steps            : 35
% 0.20/0.39  # Proof object formula steps           : 13
% 0.20/0.39  # Proof object conjectures             : 20
% 0.20/0.39  # Proof object clause conjectures      : 17
% 0.20/0.39  # Proof object formula conjectures     : 3
% 0.20/0.39  # Proof object initial clauses used    : 11
% 0.20/0.39  # Proof object initial formulas used   : 6
% 0.20/0.39  # Proof object generating inferences   : 19
% 0.20/0.39  # Proof object simplifying inferences  : 13
% 0.20/0.39  # Training examples: 0 positive, 0 negative
% 0.20/0.39  # Parsed axioms                        : 6
% 0.20/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.39  # Initial clauses                      : 13
% 0.20/0.39  # Removed in clause preprocessing      : 1
% 0.20/0.39  # Initial clauses in saturation        : 12
% 0.20/0.39  # Processed clauses                    : 128
% 0.20/0.39  # ...of these trivial                  : 0
% 0.20/0.39  # ...subsumed                          : 2
% 0.20/0.39  # ...remaining for further processing  : 126
% 0.20/0.39  # Other redundant clauses eliminated   : 0
% 0.20/0.39  # Clauses deleted for lack of memory   : 0
% 0.20/0.39  # Backward-subsumed                    : 13
% 0.20/0.39  # Backward-rewritten                   : 3
% 0.20/0.39  # Generated clauses                    : 161
% 0.20/0.39  # ...of the previous two non-trivial   : 153
% 0.20/0.39  # Contextual simplify-reflections      : 12
% 0.20/0.39  # Paramodulations                      : 152
% 0.20/0.39  # Factorizations                       : 0
% 0.20/0.39  # Equation resolutions                 : 0
% 0.20/0.39  # Propositional unsat checks           : 0
% 0.20/0.39  #    Propositional check models        : 0
% 0.20/0.39  #    Propositional check unsatisfiable : 0
% 0.20/0.39  #    Propositional clauses             : 0
% 0.20/0.39  #    Propositional clauses after purity: 0
% 0.20/0.39  #    Propositional unsat core size     : 0
% 0.20/0.39  #    Propositional preprocessing time  : 0.000
% 0.20/0.39  #    Propositional encoding time       : 0.000
% 0.20/0.39  #    Propositional solver time         : 0.000
% 0.20/0.39  #    Success case prop preproc time    : 0.000
% 0.20/0.39  #    Success case prop encoding time   : 0.000
% 0.20/0.39  #    Success case prop solver time     : 0.000
% 0.20/0.39  # Current number of processed clauses  : 95
% 0.20/0.39  #    Positive orientable unit clauses  : 1
% 0.20/0.39  #    Positive unorientable unit clauses: 0
% 0.20/0.39  #    Negative unit clauses             : 4
% 0.20/0.39  #    Non-unit-clauses                  : 90
% 0.20/0.39  # Current number of unprocessed clauses: 44
% 0.20/0.39  # ...number of literals in the above   : 222
% 0.20/0.39  # Current number of archived formulas  : 0
% 0.20/0.39  # Current number of archived clauses   : 29
% 0.20/0.39  # Clause-clause subsumption calls (NU) : 2224
% 0.20/0.39  # Rec. Clause-clause subsumption calls : 727
% 0.20/0.39  # Non-unit clause-clause subsumptions  : 25
% 0.20/0.39  # Unit Clause-clause subsumption calls : 71
% 0.20/0.39  # Rewrite failures with RHS unbound    : 0
% 0.20/0.39  # BW rewrite match attempts            : 2
% 0.20/0.39  # BW rewrite match successes           : 2
% 0.20/0.39  # Condensation attempts                : 0
% 0.20/0.39  # Condensation successes               : 0
% 0.20/0.39  # Termbank termtop insertions          : 9608
% 0.20/0.39  
% 0.20/0.39  # -------------------------------------------------
% 0.20/0.39  # User time                : 0.036 s
% 0.20/0.39  # System time              : 0.008 s
% 0.20/0.39  # Total time               : 0.045 s
% 0.20/0.39  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
