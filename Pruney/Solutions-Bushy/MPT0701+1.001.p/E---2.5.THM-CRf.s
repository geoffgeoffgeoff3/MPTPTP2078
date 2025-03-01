%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0701+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n026.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:40:03 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   38 ( 283 expanded)
%              Number of clauses        :   29 (  93 expanded)
%              Number of leaves         :    4 (  67 expanded)
%              Depth                    :   10
%              Number of atoms          :  177 (2323 expanded)
%              Number of equality atoms :   62 ( 992 expanded)
%              Maximal formula depth    :   18 (   5 average)
%              Maximal clause size      :   32 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t156_funct_1,conjecture,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ! [X3] :
          ( ( v1_relat_1(X3)
            & v1_funct_1(X3) )
         => ! [X4] :
              ( ( v1_relat_1(X4)
                & v1_funct_1(X4) )
             => ( ( X1 = k2_relat_1(X2)
                  & k1_relat_1(X3) = X1
                  & k1_relat_1(X4) = X1
                  & k5_relat_1(X2,X3) = k5_relat_1(X2,X4) )
               => X3 = X4 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t156_funct_1)).

fof(d5_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ! [X2] :
          ( X2 = k2_relat_1(X1)
        <=> ! [X3] :
              ( r2_hidden(X3,X2)
            <=> ? [X4] :
                  ( r2_hidden(X4,k1_relat_1(X1))
                  & X3 = k1_funct_1(X1,X4) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d5_funct_1)).

fof(t9_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ! [X2] :
          ( ( v1_relat_1(X2)
            & v1_funct_1(X2) )
         => ( ( k1_relat_1(X1) = k1_relat_1(X2)
              & ! [X3] :
                  ( r2_hidden(X3,k1_relat_1(X1))
                 => k1_funct_1(X1,X3) = k1_funct_1(X2,X3) ) )
           => X1 = X2 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t9_funct_1)).

fof(t23_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ! [X3] :
          ( ( v1_relat_1(X3)
            & v1_funct_1(X3) )
         => ( r2_hidden(X1,k1_relat_1(X2))
           => k1_funct_1(k5_relat_1(X2,X3),X1) = k1_funct_1(X3,k1_funct_1(X2,X1)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t23_funct_1)).

fof(c_0_4,negated_conjecture,(
    ~ ! [X1,X2] :
        ( ( v1_relat_1(X2)
          & v1_funct_1(X2) )
       => ! [X3] :
            ( ( v1_relat_1(X3)
              & v1_funct_1(X3) )
           => ! [X4] :
                ( ( v1_relat_1(X4)
                  & v1_funct_1(X4) )
               => ( ( X1 = k2_relat_1(X2)
                    & k1_relat_1(X3) = X1
                    & k1_relat_1(X4) = X1
                    & k5_relat_1(X2,X3) = k5_relat_1(X2,X4) )
                 => X3 = X4 ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t156_funct_1])).

fof(c_0_5,plain,(
    ! [X5,X6,X7,X9,X10,X11,X13] :
      ( ( r2_hidden(esk1_3(X5,X6,X7),k1_relat_1(X5))
        | ~ r2_hidden(X7,X6)
        | X6 != k2_relat_1(X5)
        | ~ v1_relat_1(X5)
        | ~ v1_funct_1(X5) )
      & ( X7 = k1_funct_1(X5,esk1_3(X5,X6,X7))
        | ~ r2_hidden(X7,X6)
        | X6 != k2_relat_1(X5)
        | ~ v1_relat_1(X5)
        | ~ v1_funct_1(X5) )
      & ( ~ r2_hidden(X10,k1_relat_1(X5))
        | X9 != k1_funct_1(X5,X10)
        | r2_hidden(X9,X6)
        | X6 != k2_relat_1(X5)
        | ~ v1_relat_1(X5)
        | ~ v1_funct_1(X5) )
      & ( ~ r2_hidden(esk2_2(X5,X11),X11)
        | ~ r2_hidden(X13,k1_relat_1(X5))
        | esk2_2(X5,X11) != k1_funct_1(X5,X13)
        | X11 = k2_relat_1(X5)
        | ~ v1_relat_1(X5)
        | ~ v1_funct_1(X5) )
      & ( r2_hidden(esk3_2(X5,X11),k1_relat_1(X5))
        | r2_hidden(esk2_2(X5,X11),X11)
        | X11 = k2_relat_1(X5)
        | ~ v1_relat_1(X5)
        | ~ v1_funct_1(X5) )
      & ( esk2_2(X5,X11) = k1_funct_1(X5,esk3_2(X5,X11))
        | r2_hidden(esk2_2(X5,X11),X11)
        | X11 = k2_relat_1(X5)
        | ~ v1_relat_1(X5)
        | ~ v1_funct_1(X5) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_funct_1])])])])])])).

fof(c_0_6,plain,(
    ! [X18,X19] :
      ( ( r2_hidden(esk4_2(X18,X19),k1_relat_1(X18))
        | k1_relat_1(X18) != k1_relat_1(X19)
        | X18 = X19
        | ~ v1_relat_1(X19)
        | ~ v1_funct_1(X19)
        | ~ v1_relat_1(X18)
        | ~ v1_funct_1(X18) )
      & ( k1_funct_1(X18,esk4_2(X18,X19)) != k1_funct_1(X19,esk4_2(X18,X19))
        | k1_relat_1(X18) != k1_relat_1(X19)
        | X18 = X19
        | ~ v1_relat_1(X19)
        | ~ v1_funct_1(X19)
        | ~ v1_relat_1(X18)
        | ~ v1_funct_1(X18) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t9_funct_1])])])])])).

fof(c_0_7,negated_conjecture,
    ( v1_relat_1(esk6_0)
    & v1_funct_1(esk6_0)
    & v1_relat_1(esk7_0)
    & v1_funct_1(esk7_0)
    & v1_relat_1(esk8_0)
    & v1_funct_1(esk8_0)
    & esk5_0 = k2_relat_1(esk6_0)
    & k1_relat_1(esk7_0) = esk5_0
    & k1_relat_1(esk8_0) = esk5_0
    & k5_relat_1(esk6_0,esk7_0) = k5_relat_1(esk6_0,esk8_0)
    & esk7_0 != esk8_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])).

cnf(c_0_8,plain,
    ( r2_hidden(esk1_3(X1,X2,X3),k1_relat_1(X1))
    | ~ r2_hidden(X3,X2)
    | X2 != k2_relat_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_9,plain,
    ( r2_hidden(esk4_2(X1,X2),k1_relat_1(X1))
    | X1 = X2
    | k1_relat_1(X1) != k1_relat_1(X2)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_10,negated_conjecture,
    ( v1_funct_1(esk8_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_11,negated_conjecture,
    ( k1_relat_1(esk8_0) = esk5_0 ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,negated_conjecture,
    ( v1_relat_1(esk8_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_13,plain,
    ( X1 = k1_funct_1(X2,esk1_3(X2,X3,X1))
    | ~ r2_hidden(X1,X3)
    | X3 != k2_relat_1(X2)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_14,plain,
    ( r2_hidden(esk1_3(X1,k2_relat_1(X1),X2),k1_relat_1(X1))
    | ~ r2_hidden(X2,k2_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(er,[status(thm)],[c_0_8])).

cnf(c_0_15,negated_conjecture,
    ( esk5_0 = k2_relat_1(esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_16,negated_conjecture,
    ( v1_funct_1(esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_17,negated_conjecture,
    ( v1_relat_1(esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_18,negated_conjecture,
    ( X1 = esk8_0
    | r2_hidden(esk4_2(X1,esk8_0),k1_relat_1(X1))
    | k1_relat_1(X1) != esk5_0
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_9,c_0_10]),c_0_11]),c_0_12])])).

cnf(c_0_19,negated_conjecture,
    ( k1_relat_1(esk7_0) = esk5_0 ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_20,negated_conjecture,
    ( v1_funct_1(esk7_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_21,negated_conjecture,
    ( v1_relat_1(esk7_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_22,negated_conjecture,
    ( esk7_0 != esk8_0 ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_23,plain,
    ( k1_funct_1(X1,esk1_3(X1,k2_relat_1(X1),X2)) = X2
    | ~ r2_hidden(X2,k2_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(er,[status(thm)],[c_0_13])).

fof(c_0_24,plain,(
    ! [X15,X16,X17] :
      ( ~ v1_relat_1(X16)
      | ~ v1_funct_1(X16)
      | ~ v1_relat_1(X17)
      | ~ v1_funct_1(X17)
      | ~ r2_hidden(X15,k1_relat_1(X16))
      | k1_funct_1(k5_relat_1(X16,X17),X15) = k1_funct_1(X17,k1_funct_1(X16,X15)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t23_funct_1])])])).

cnf(c_0_25,negated_conjecture,
    ( r2_hidden(esk1_3(esk6_0,esk5_0,X1),k1_relat_1(esk6_0))
    | ~ r2_hidden(X1,esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_14,c_0_15]),c_0_16]),c_0_17])])).

cnf(c_0_26,negated_conjecture,
    ( r2_hidden(esk4_2(esk7_0,esk8_0),esk5_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18,c_0_19]),c_0_20]),c_0_21])]),c_0_22])).

cnf(c_0_27,negated_conjecture,
    ( k1_funct_1(esk6_0,esk1_3(esk6_0,esk5_0,X1)) = X1
    | ~ r2_hidden(X1,esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_15]),c_0_16]),c_0_17])])).

cnf(c_0_28,plain,
    ( k1_funct_1(k5_relat_1(X1,X2),X3) = k1_funct_1(X2,k1_funct_1(X1,X3))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ r2_hidden(X3,k1_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_29,negated_conjecture,
    ( r2_hidden(esk1_3(esk6_0,esk5_0,esk4_2(esk7_0,esk8_0)),k1_relat_1(esk6_0)) ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_30,negated_conjecture,
    ( k1_funct_1(esk6_0,esk1_3(esk6_0,esk5_0,esk4_2(esk7_0,esk8_0))) = esk4_2(esk7_0,esk8_0) ),
    inference(spm,[status(thm)],[c_0_27,c_0_26])).

cnf(c_0_31,negated_conjecture,
    ( k1_funct_1(k5_relat_1(esk6_0,X1),esk1_3(esk6_0,esk5_0,esk4_2(esk7_0,esk8_0))) = k1_funct_1(X1,esk4_2(esk7_0,esk8_0))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_29]),c_0_16]),c_0_17])]),c_0_30])).

cnf(c_0_32,negated_conjecture,
    ( k5_relat_1(esk6_0,esk7_0) = k5_relat_1(esk6_0,esk8_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_33,plain,
    ( X1 = X2
    | k1_funct_1(X1,esk4_2(X1,X2)) != k1_funct_1(X2,esk4_2(X1,X2))
    | k1_relat_1(X1) != k1_relat_1(X2)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_34,negated_conjecture,
    ( k1_funct_1(k5_relat_1(esk6_0,esk7_0),esk1_3(esk6_0,esk5_0,esk4_2(esk7_0,esk8_0))) = k1_funct_1(esk8_0,esk4_2(esk7_0,esk8_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_10]),c_0_32]),c_0_12])])).

cnf(c_0_35,negated_conjecture,
    ( X1 = esk8_0
    | k1_funct_1(X1,esk4_2(X1,esk8_0)) != k1_funct_1(esk8_0,esk4_2(X1,esk8_0))
    | k1_relat_1(X1) != esk5_0
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_10]),c_0_11]),c_0_12])])).

cnf(c_0_36,negated_conjecture,
    ( k1_funct_1(esk8_0,esk4_2(esk7_0,esk8_0)) = k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0)) ),
    inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_20]),c_0_21])]),c_0_34])).

cnf(c_0_37,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_36]),c_0_19]),c_0_20]),c_0_21])]),c_0_22]),
    [proof]).

%------------------------------------------------------------------------------
