%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:54:02 EST 2020

% Result     : Theorem 0.17s
% Output     : CNFRefutation 0.17s
% Verified   : 
% Statistics : Number of formulae       :   51 ( 119 expanded)
%              Number of clauses        :   28 (  41 expanded)
%              Number of leaves         :   11 (  31 expanded)
%              Depth                    :    8
%              Number of atoms          :  187 ( 589 expanded)
%              Number of equality atoms :   61 ( 201 expanded)
%              Maximal formula depth    :   12 (   4 average)
%              Maximal clause size      :   19 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t34_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( X2 = k6_relat_1(X1)
      <=> ( k1_relat_1(X2) = X1
          & ! [X3] :
              ( r2_hidden(X3,X1)
             => k1_funct_1(X2,X3) = X3 ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t34_funct_1)).

fof(fc3_funct_1,axiom,(
    ! [X1] :
      ( v1_relat_1(k6_relat_1(X1))
      & v1_funct_1(k6_relat_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc3_funct_1)).

fof(t27_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ! [X2] :
          ( ( v1_relat_1(X2)
            & v1_funct_1(X2) )
         => ( k1_relat_1(k5_relat_1(X2,X1)) = k1_relat_1(X2)
           => r1_tarski(k2_relat_1(X2),k1_relat_1(X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t27_funct_1)).

fof(t63_funct_1,conjecture,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ! [X2] :
          ( ( v1_relat_1(X2)
            & v1_funct_1(X2) )
         => ( ( v2_funct_1(X1)
              & k2_relat_1(X1) = k1_relat_1(X2)
              & k5_relat_1(X1,X2) = k6_relat_1(k1_relat_1(X1)) )
           => X2 = k2_funct_1(X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t63_funct_1)).

fof(t37_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ( k2_relat_1(X1) = k1_relat_1(k4_relat_1(X1))
        & k1_relat_1(X1) = k2_relat_1(k4_relat_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t37_relat_1)).

fof(d9_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => k2_funct_1(X1) = k4_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d9_funct_1)).

fof(t80_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k5_relat_1(X1,k6_relat_1(k2_relat_1(X1))) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t80_relat_1)).

fof(dt_k2_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v1_relat_1(k2_funct_1(X1))
        & v1_funct_1(k2_funct_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_funct_1)).

fof(t77_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(k1_relat_1(X2),X1)
       => k5_relat_1(k6_relat_1(X1),X2) = X2 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t77_relat_1)).

fof(t55_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => ! [X3] :
              ( v1_relat_1(X3)
             => k5_relat_1(k5_relat_1(X1,X2),X3) = k5_relat_1(X1,k5_relat_1(X2,X3)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t55_relat_1)).

fof(t61_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => ( k5_relat_1(X1,k2_funct_1(X1)) = k6_relat_1(k1_relat_1(X1))
          & k5_relat_1(k2_funct_1(X1),X1) = k6_relat_1(k2_relat_1(X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t61_funct_1)).

fof(c_0_11,plain,(
    ! [X17,X18,X19] :
      ( ( k1_relat_1(X18) = X17
        | X18 != k6_relat_1(X17)
        | ~ v1_relat_1(X18)
        | ~ v1_funct_1(X18) )
      & ( ~ r2_hidden(X19,X17)
        | k1_funct_1(X18,X19) = X19
        | X18 != k6_relat_1(X17)
        | ~ v1_relat_1(X18)
        | ~ v1_funct_1(X18) )
      & ( r2_hidden(esk1_2(X17,X18),X17)
        | k1_relat_1(X18) != X17
        | X18 = k6_relat_1(X17)
        | ~ v1_relat_1(X18)
        | ~ v1_funct_1(X18) )
      & ( k1_funct_1(X18,esk1_2(X17,X18)) != esk1_2(X17,X18)
        | k1_relat_1(X18) != X17
        | X18 = k6_relat_1(X17)
        | ~ v1_relat_1(X18)
        | ~ v1_funct_1(X18) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t34_funct_1])])])])])).

fof(c_0_12,plain,(
    ! [X13] :
      ( v1_relat_1(k6_relat_1(X13))
      & v1_funct_1(k6_relat_1(X13)) ) ),
    inference(variable_rename,[status(thm)],[fc3_funct_1])).

fof(c_0_13,plain,(
    ! [X15,X16] :
      ( ~ v1_relat_1(X15)
      | ~ v1_funct_1(X15)
      | ~ v1_relat_1(X16)
      | ~ v1_funct_1(X16)
      | k1_relat_1(k5_relat_1(X16,X15)) != k1_relat_1(X16)
      | r1_tarski(k2_relat_1(X16),k1_relat_1(X15)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t27_funct_1])])])).

cnf(c_0_14,plain,
    ( k1_relat_1(X1) = X2
    | X1 != k6_relat_1(X2)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_15,plain,
    ( v1_funct_1(k6_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_16,plain,
    ( v1_relat_1(k6_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

fof(c_0_17,negated_conjecture,(
    ~ ! [X1] :
        ( ( v1_relat_1(X1)
          & v1_funct_1(X1) )
       => ! [X2] :
            ( ( v1_relat_1(X2)
              & v1_funct_1(X2) )
           => ( ( v2_funct_1(X1)
                & k2_relat_1(X1) = k1_relat_1(X2)
                & k5_relat_1(X1,X2) = k6_relat_1(k1_relat_1(X1)) )
             => X2 = k2_funct_1(X1) ) ) ) ),
    inference(assume_negation,[status(cth)],[t63_funct_1])).

fof(c_0_18,plain,(
    ! [X4] :
      ( ( k2_relat_1(X4) = k1_relat_1(k4_relat_1(X4))
        | ~ v1_relat_1(X4) )
      & ( k1_relat_1(X4) = k2_relat_1(k4_relat_1(X4))
        | ~ v1_relat_1(X4) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t37_relat_1])])])).

fof(c_0_19,plain,(
    ! [X11] :
      ( ~ v1_relat_1(X11)
      | ~ v1_funct_1(X11)
      | ~ v2_funct_1(X11)
      | k2_funct_1(X11) = k4_relat_1(X11) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_funct_1])])).

cnf(c_0_20,plain,
    ( r1_tarski(k2_relat_1(X2),k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | k1_relat_1(k5_relat_1(X2,X1)) != k1_relat_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_21,plain,
    ( k1_relat_1(k6_relat_1(X1)) = X1 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_14]),c_0_15]),c_0_16])])).

fof(c_0_22,negated_conjecture,
    ( v1_relat_1(esk2_0)
    & v1_funct_1(esk2_0)
    & v1_relat_1(esk3_0)
    & v1_funct_1(esk3_0)
    & v2_funct_1(esk2_0)
    & k2_relat_1(esk2_0) = k1_relat_1(esk3_0)
    & k5_relat_1(esk2_0,esk3_0) = k6_relat_1(k1_relat_1(esk2_0))
    & esk3_0 != k2_funct_1(esk2_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_17])])])).

fof(c_0_23,plain,(
    ! [X10] :
      ( ~ v1_relat_1(X10)
      | k5_relat_1(X10,k6_relat_1(k2_relat_1(X10))) = X10 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t80_relat_1])])).

cnf(c_0_24,plain,
    ( k1_relat_1(X1) = k2_relat_1(k4_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_25,plain,
    ( k2_funct_1(X1) = k4_relat_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

fof(c_0_26,plain,(
    ! [X12] :
      ( ( v1_relat_1(k2_funct_1(X12))
        | ~ v1_relat_1(X12)
        | ~ v1_funct_1(X12) )
      & ( v1_funct_1(k2_funct_1(X12))
        | ~ v1_relat_1(X12)
        | ~ v1_funct_1(X12) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_1])])])).

fof(c_0_27,plain,(
    ! [X8,X9] :
      ( ~ v1_relat_1(X9)
      | ~ r1_tarski(k1_relat_1(X9),X8)
      | k5_relat_1(k6_relat_1(X8),X9) = X9 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t77_relat_1])])).

cnf(c_0_28,plain,
    ( r1_tarski(k2_relat_1(X1),X2)
    | k1_relat_1(k5_relat_1(X1,k6_relat_1(X2))) != k1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_21]),c_0_15]),c_0_16])])).

cnf(c_0_29,negated_conjecture,
    ( k2_relat_1(esk2_0) = k1_relat_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_30,negated_conjecture,
    ( v1_funct_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_31,negated_conjecture,
    ( v1_relat_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_32,plain,
    ( k5_relat_1(X1,k6_relat_1(k2_relat_1(X1))) = X1
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_33,plain,
    ( k2_relat_1(k2_funct_1(X1)) = k1_relat_1(X1)
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_34,plain,
    ( v1_relat_1(k2_funct_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

fof(c_0_35,plain,(
    ! [X5,X6,X7] :
      ( ~ v1_relat_1(X5)
      | ~ v1_relat_1(X6)
      | ~ v1_relat_1(X7)
      | k5_relat_1(k5_relat_1(X5,X6),X7) = k5_relat_1(X5,k5_relat_1(X6,X7)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_relat_1])])])).

fof(c_0_36,plain,(
    ! [X21] :
      ( ( k5_relat_1(X21,k2_funct_1(X21)) = k6_relat_1(k1_relat_1(X21))
        | ~ v2_funct_1(X21)
        | ~ v1_relat_1(X21)
        | ~ v1_funct_1(X21) )
      & ( k5_relat_1(k2_funct_1(X21),X21) = k6_relat_1(k2_relat_1(X21))
        | ~ v2_funct_1(X21)
        | ~ v1_relat_1(X21)
        | ~ v1_funct_1(X21) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t61_funct_1])])])).

cnf(c_0_37,plain,
    ( k5_relat_1(k6_relat_1(X2),X1) = X1
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k1_relat_1(X1),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_38,negated_conjecture,
    ( r1_tarski(k1_relat_1(esk3_0),X1)
    | k1_relat_1(k5_relat_1(esk2_0,k6_relat_1(X1))) != k1_relat_1(esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_29]),c_0_30]),c_0_31])])).

cnf(c_0_39,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_40,plain,
    ( k5_relat_1(k2_funct_1(X1),k6_relat_1(k1_relat_1(X1))) = k2_funct_1(X1)
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_33]),c_0_34])).

cnf(c_0_41,negated_conjecture,
    ( k5_relat_1(esk2_0,esk3_0) = k6_relat_1(k1_relat_1(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_42,negated_conjecture,
    ( v2_funct_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_43,plain,
    ( k5_relat_1(k5_relat_1(X1,X2),X3) = k5_relat_1(X1,k5_relat_1(X2,X3))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_44,plain,
    ( k5_relat_1(k2_funct_1(X1),X1) = k6_relat_1(k2_relat_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_45,negated_conjecture,
    ( k5_relat_1(k6_relat_1(X1),esk3_0) = esk3_0
    | k1_relat_1(k5_relat_1(esk2_0,k6_relat_1(X1))) != k1_relat_1(esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_38]),c_0_39])])).

cnf(c_0_46,negated_conjecture,
    ( k5_relat_1(k2_funct_1(esk2_0),k5_relat_1(esk2_0,esk3_0)) = k2_funct_1(esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_41]),c_0_42]),c_0_30]),c_0_31])])).

cnf(c_0_47,plain,
    ( k5_relat_1(k2_funct_1(X1),k5_relat_1(X1,X2)) = k5_relat_1(k6_relat_1(k2_relat_1(X1)),X2)
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_44]),c_0_34])).

cnf(c_0_48,negated_conjecture,
    ( k5_relat_1(k6_relat_1(k1_relat_1(esk3_0)),esk3_0) = esk3_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_32]),c_0_29]),c_0_31])])).

cnf(c_0_49,negated_conjecture,
    ( esk3_0 != k2_funct_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_50,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46,c_0_47]),c_0_29]),c_0_48]),c_0_42]),c_0_30]),c_0_39]),c_0_31])]),c_0_49]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.32  % Computer   : n001.cluster.edu
% 0.12/0.32  % Model      : x86_64 x86_64
% 0.12/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.32  % Memory     : 8042.1875MB
% 0.12/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.32  % CPULimit   : 60
% 0.12/0.32  % WCLimit    : 600
% 0.12/0.32  % DateTime   : Tue Dec  1 17:54:30 EST 2020
% 0.12/0.32  % CPUTime    : 
% 0.12/0.32  # Version: 2.5pre002
% 0.12/0.32  # No SInE strategy applied
% 0.12/0.32  # Trying AutoSched0 for 299 seconds
% 0.17/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S0U
% 0.17/0.38  # and selection function SelectComplexExceptRRHorn.
% 0.17/0.38  #
% 0.17/0.38  # Preprocessing time       : 0.028 s
% 0.17/0.38  # Presaturation interreduction done
% 0.17/0.38  
% 0.17/0.38  # Proof found!
% 0.17/0.38  # SZS status Theorem
% 0.17/0.38  # SZS output start CNFRefutation
% 0.17/0.38  fof(t34_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(X2=k6_relat_1(X1)<=>(k1_relat_1(X2)=X1&![X3]:(r2_hidden(X3,X1)=>k1_funct_1(X2,X3)=X3)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t34_funct_1)).
% 0.17/0.38  fof(fc3_funct_1, axiom, ![X1]:(v1_relat_1(k6_relat_1(X1))&v1_funct_1(k6_relat_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc3_funct_1)).
% 0.17/0.38  fof(t27_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(k1_relat_1(k5_relat_1(X2,X1))=k1_relat_1(X2)=>r1_tarski(k2_relat_1(X2),k1_relat_1(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t27_funct_1)).
% 0.17/0.38  fof(t63_funct_1, conjecture, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(((v2_funct_1(X1)&k2_relat_1(X1)=k1_relat_1(X2))&k5_relat_1(X1,X2)=k6_relat_1(k1_relat_1(X1)))=>X2=k2_funct_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t63_funct_1)).
% 0.17/0.38  fof(t37_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>(k2_relat_1(X1)=k1_relat_1(k4_relat_1(X1))&k1_relat_1(X1)=k2_relat_1(k4_relat_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t37_relat_1)).
% 0.17/0.38  fof(d9_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>k2_funct_1(X1)=k4_relat_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d9_funct_1)).
% 0.17/0.38  fof(t80_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>k5_relat_1(X1,k6_relat_1(k2_relat_1(X1)))=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t80_relat_1)).
% 0.17/0.38  fof(dt_k2_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v1_relat_1(k2_funct_1(X1))&v1_funct_1(k2_funct_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k2_funct_1)).
% 0.17/0.38  fof(t77_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(r1_tarski(k1_relat_1(X2),X1)=>k5_relat_1(k6_relat_1(X1),X2)=X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t77_relat_1)).
% 0.17/0.38  fof(t55_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>![X3]:(v1_relat_1(X3)=>k5_relat_1(k5_relat_1(X1,X2),X3)=k5_relat_1(X1,k5_relat_1(X2,X3))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t55_relat_1)).
% 0.17/0.38  fof(t61_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>(k5_relat_1(X1,k2_funct_1(X1))=k6_relat_1(k1_relat_1(X1))&k5_relat_1(k2_funct_1(X1),X1)=k6_relat_1(k2_relat_1(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t61_funct_1)).
% 0.17/0.38  fof(c_0_11, plain, ![X17, X18, X19]:(((k1_relat_1(X18)=X17|X18!=k6_relat_1(X17)|(~v1_relat_1(X18)|~v1_funct_1(X18)))&(~r2_hidden(X19,X17)|k1_funct_1(X18,X19)=X19|X18!=k6_relat_1(X17)|(~v1_relat_1(X18)|~v1_funct_1(X18))))&((r2_hidden(esk1_2(X17,X18),X17)|k1_relat_1(X18)!=X17|X18=k6_relat_1(X17)|(~v1_relat_1(X18)|~v1_funct_1(X18)))&(k1_funct_1(X18,esk1_2(X17,X18))!=esk1_2(X17,X18)|k1_relat_1(X18)!=X17|X18=k6_relat_1(X17)|(~v1_relat_1(X18)|~v1_funct_1(X18))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t34_funct_1])])])])])).
% 0.17/0.38  fof(c_0_12, plain, ![X13]:(v1_relat_1(k6_relat_1(X13))&v1_funct_1(k6_relat_1(X13))), inference(variable_rename,[status(thm)],[fc3_funct_1])).
% 0.17/0.38  fof(c_0_13, plain, ![X15, X16]:(~v1_relat_1(X15)|~v1_funct_1(X15)|(~v1_relat_1(X16)|~v1_funct_1(X16)|(k1_relat_1(k5_relat_1(X16,X15))!=k1_relat_1(X16)|r1_tarski(k2_relat_1(X16),k1_relat_1(X15))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t27_funct_1])])])).
% 0.17/0.38  cnf(c_0_14, plain, (k1_relat_1(X1)=X2|X1!=k6_relat_1(X2)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.17/0.38  cnf(c_0_15, plain, (v1_funct_1(k6_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.17/0.38  cnf(c_0_16, plain, (v1_relat_1(k6_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.17/0.38  fof(c_0_17, negated_conjecture, ~(![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(((v2_funct_1(X1)&k2_relat_1(X1)=k1_relat_1(X2))&k5_relat_1(X1,X2)=k6_relat_1(k1_relat_1(X1)))=>X2=k2_funct_1(X1))))), inference(assume_negation,[status(cth)],[t63_funct_1])).
% 0.17/0.38  fof(c_0_18, plain, ![X4]:((k2_relat_1(X4)=k1_relat_1(k4_relat_1(X4))|~v1_relat_1(X4))&(k1_relat_1(X4)=k2_relat_1(k4_relat_1(X4))|~v1_relat_1(X4))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t37_relat_1])])])).
% 0.17/0.38  fof(c_0_19, plain, ![X11]:(~v1_relat_1(X11)|~v1_funct_1(X11)|(~v2_funct_1(X11)|k2_funct_1(X11)=k4_relat_1(X11))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_funct_1])])).
% 0.17/0.38  cnf(c_0_20, plain, (r1_tarski(k2_relat_1(X2),k1_relat_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X2)|~v1_funct_1(X2)|k1_relat_1(k5_relat_1(X2,X1))!=k1_relat_1(X2)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.17/0.38  cnf(c_0_21, plain, (k1_relat_1(k6_relat_1(X1))=X1), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_14]), c_0_15]), c_0_16])])).
% 0.17/0.38  fof(c_0_22, negated_conjecture, ((v1_relat_1(esk2_0)&v1_funct_1(esk2_0))&((v1_relat_1(esk3_0)&v1_funct_1(esk3_0))&(((v2_funct_1(esk2_0)&k2_relat_1(esk2_0)=k1_relat_1(esk3_0))&k5_relat_1(esk2_0,esk3_0)=k6_relat_1(k1_relat_1(esk2_0)))&esk3_0!=k2_funct_1(esk2_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_17])])])).
% 0.17/0.38  fof(c_0_23, plain, ![X10]:(~v1_relat_1(X10)|k5_relat_1(X10,k6_relat_1(k2_relat_1(X10)))=X10), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t80_relat_1])])).
% 0.17/0.38  cnf(c_0_24, plain, (k1_relat_1(X1)=k2_relat_1(k4_relat_1(X1))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.17/0.38  cnf(c_0_25, plain, (k2_funct_1(X1)=k4_relat_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)|~v2_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.17/0.38  fof(c_0_26, plain, ![X12]:((v1_relat_1(k2_funct_1(X12))|(~v1_relat_1(X12)|~v1_funct_1(X12)))&(v1_funct_1(k2_funct_1(X12))|(~v1_relat_1(X12)|~v1_funct_1(X12)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_1])])])).
% 0.17/0.38  fof(c_0_27, plain, ![X8, X9]:(~v1_relat_1(X9)|(~r1_tarski(k1_relat_1(X9),X8)|k5_relat_1(k6_relat_1(X8),X9)=X9)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t77_relat_1])])).
% 0.17/0.38  cnf(c_0_28, plain, (r1_tarski(k2_relat_1(X1),X2)|k1_relat_1(k5_relat_1(X1,k6_relat_1(X2)))!=k1_relat_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20, c_0_21]), c_0_15]), c_0_16])])).
% 0.17/0.38  cnf(c_0_29, negated_conjecture, (k2_relat_1(esk2_0)=k1_relat_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.17/0.38  cnf(c_0_30, negated_conjecture, (v1_funct_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.17/0.38  cnf(c_0_31, negated_conjecture, (v1_relat_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.17/0.38  cnf(c_0_32, plain, (k5_relat_1(X1,k6_relat_1(k2_relat_1(X1)))=X1|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.17/0.38  cnf(c_0_33, plain, (k2_relat_1(k2_funct_1(X1))=k1_relat_1(X1)|~v2_funct_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.17/0.38  cnf(c_0_34, plain, (v1_relat_1(k2_funct_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.17/0.38  fof(c_0_35, plain, ![X5, X6, X7]:(~v1_relat_1(X5)|(~v1_relat_1(X6)|(~v1_relat_1(X7)|k5_relat_1(k5_relat_1(X5,X6),X7)=k5_relat_1(X5,k5_relat_1(X6,X7))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_relat_1])])])).
% 0.17/0.38  fof(c_0_36, plain, ![X21]:((k5_relat_1(X21,k2_funct_1(X21))=k6_relat_1(k1_relat_1(X21))|~v2_funct_1(X21)|(~v1_relat_1(X21)|~v1_funct_1(X21)))&(k5_relat_1(k2_funct_1(X21),X21)=k6_relat_1(k2_relat_1(X21))|~v2_funct_1(X21)|(~v1_relat_1(X21)|~v1_funct_1(X21)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t61_funct_1])])])).
% 0.17/0.38  cnf(c_0_37, plain, (k5_relat_1(k6_relat_1(X2),X1)=X1|~v1_relat_1(X1)|~r1_tarski(k1_relat_1(X1),X2)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.17/0.38  cnf(c_0_38, negated_conjecture, (r1_tarski(k1_relat_1(esk3_0),X1)|k1_relat_1(k5_relat_1(esk2_0,k6_relat_1(X1)))!=k1_relat_1(esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_29]), c_0_30]), c_0_31])])).
% 0.17/0.38  cnf(c_0_39, negated_conjecture, (v1_relat_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.17/0.38  cnf(c_0_40, plain, (k5_relat_1(k2_funct_1(X1),k6_relat_1(k1_relat_1(X1)))=k2_funct_1(X1)|~v2_funct_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_33]), c_0_34])).
% 0.17/0.38  cnf(c_0_41, negated_conjecture, (k5_relat_1(esk2_0,esk3_0)=k6_relat_1(k1_relat_1(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.17/0.38  cnf(c_0_42, negated_conjecture, (v2_funct_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.17/0.38  cnf(c_0_43, plain, (k5_relat_1(k5_relat_1(X1,X2),X3)=k5_relat_1(X1,k5_relat_1(X2,X3))|~v1_relat_1(X1)|~v1_relat_1(X2)|~v1_relat_1(X3)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.17/0.38  cnf(c_0_44, plain, (k5_relat_1(k2_funct_1(X1),X1)=k6_relat_1(k2_relat_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.17/0.38  cnf(c_0_45, negated_conjecture, (k5_relat_1(k6_relat_1(X1),esk3_0)=esk3_0|k1_relat_1(k5_relat_1(esk2_0,k6_relat_1(X1)))!=k1_relat_1(esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_38]), c_0_39])])).
% 0.17/0.38  cnf(c_0_46, negated_conjecture, (k5_relat_1(k2_funct_1(esk2_0),k5_relat_1(esk2_0,esk3_0))=k2_funct_1(esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_41]), c_0_42]), c_0_30]), c_0_31])])).
% 0.17/0.38  cnf(c_0_47, plain, (k5_relat_1(k2_funct_1(X1),k5_relat_1(X1,X2))=k5_relat_1(k6_relat_1(k2_relat_1(X1)),X2)|~v2_funct_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X2)|~v1_relat_1(X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_44]), c_0_34])).
% 0.17/0.38  cnf(c_0_48, negated_conjecture, (k5_relat_1(k6_relat_1(k1_relat_1(esk3_0)),esk3_0)=esk3_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_32]), c_0_29]), c_0_31])])).
% 0.17/0.38  cnf(c_0_49, negated_conjecture, (esk3_0!=k2_funct_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.17/0.38  cnf(c_0_50, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46, c_0_47]), c_0_29]), c_0_48]), c_0_42]), c_0_30]), c_0_39]), c_0_31])]), c_0_49]), ['proof']).
% 0.17/0.38  # SZS output end CNFRefutation
% 0.17/0.38  # Proof object total steps             : 51
% 0.17/0.38  # Proof object clause steps            : 28
% 0.17/0.38  # Proof object formula steps           : 23
% 0.17/0.38  # Proof object conjectures             : 15
% 0.17/0.38  # Proof object clause conjectures      : 12
% 0.17/0.38  # Proof object formula conjectures     : 3
% 0.17/0.38  # Proof object initial clauses used    : 18
% 0.17/0.38  # Proof object initial formulas used   : 11
% 0.17/0.38  # Proof object generating inferences   : 9
% 0.17/0.38  # Proof object simplifying inferences  : 29
% 0.17/0.38  # Training examples: 0 positive, 0 negative
% 0.17/0.38  # Parsed axioms                        : 12
% 0.17/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.17/0.38  # Initial clauses                      : 27
% 0.17/0.38  # Removed in clause preprocessing      : 0
% 0.17/0.38  # Initial clauses in saturation        : 27
% 0.17/0.38  # Processed clauses                    : 358
% 0.17/0.38  # ...of these trivial                  : 34
% 0.17/0.38  # ...subsumed                          : 76
% 0.17/0.38  # ...remaining for further processing  : 248
% 0.17/0.38  # Other redundant clauses eliminated   : 8
% 0.17/0.38  # Clauses deleted for lack of memory   : 0
% 0.17/0.38  # Backward-subsumed                    : 6
% 0.17/0.38  # Backward-rewritten                   : 63
% 0.17/0.38  # Generated clauses                    : 1257
% 0.17/0.38  # ...of the previous two non-trivial   : 963
% 0.17/0.38  # Contextual simplify-reflections      : 12
% 0.17/0.38  # Paramodulations                      : 1249
% 0.17/0.38  # Factorizations                       : 0
% 0.17/0.38  # Equation resolutions                 : 8
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
% 0.17/0.38  # Current number of processed clauses  : 149
% 0.17/0.38  #    Positive orientable unit clauses  : 36
% 0.17/0.38  #    Positive unorientable unit clauses: 0
% 0.17/0.38  #    Negative unit clauses             : 1
% 0.17/0.38  #    Non-unit-clauses                  : 112
% 0.17/0.38  # Current number of unprocessed clauses: 557
% 0.17/0.38  # ...number of literals in the above   : 2514
% 0.17/0.38  # Current number of archived formulas  : 0
% 0.17/0.38  # Current number of archived clauses   : 95
% 0.17/0.38  # Clause-clause subsumption calls (NU) : 1360
% 0.17/0.38  # Rec. Clause-clause subsumption calls : 887
% 0.17/0.38  # Non-unit clause-clause subsumptions  : 90
% 0.17/0.38  # Unit Clause-clause subsumption calls : 46
% 0.17/0.38  # Rewrite failures with RHS unbound    : 0
% 0.17/0.38  # BW rewrite match attempts            : 80
% 0.17/0.38  # BW rewrite match successes           : 19
% 0.17/0.38  # Condensation attempts                : 0
% 0.17/0.38  # Condensation successes               : 0
% 0.17/0.38  # Termbank termtop insertions          : 28312
% 0.17/0.38  
% 0.17/0.38  # -------------------------------------------------
% 0.17/0.38  # User time                : 0.059 s
% 0.17/0.38  # System time              : 0.006 s
% 0.17/0.38  # Total time               : 0.065 s
% 0.17/0.38  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
