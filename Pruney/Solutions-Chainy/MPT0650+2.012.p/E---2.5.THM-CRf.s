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
% DateTime   : Thu Dec  3 10:53:46 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   39 ( 132 expanded)
%              Number of clauses        :   24 (  49 expanded)
%              Number of leaves         :    7 (  32 expanded)
%              Depth                    :   10
%              Number of atoms          :  179 ( 784 expanded)
%              Number of equality atoms :   45 ( 230 expanded)
%              Maximal formula depth    :   18 (   5 average)
%              Maximal clause size      :   32 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_funct_1)).

fof(t56_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( ( v2_funct_1(X2)
          & r2_hidden(X1,k1_relat_1(X2)) )
       => ( X1 = k1_funct_1(k2_funct_1(X2),k1_funct_1(X2,X1))
          & X1 = k1_funct_1(k5_relat_1(X2,k2_funct_1(X2)),X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t56_funct_1)).

fof(t57_funct_1,conjecture,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( ( v2_funct_1(X2)
          & r2_hidden(X1,k2_relat_1(X2)) )
       => ( X1 = k1_funct_1(X2,k1_funct_1(k2_funct_1(X2),X1))
          & X1 = k1_funct_1(k5_relat_1(k2_funct_1(X2),X2),X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t57_funct_1)).

fof(dt_k2_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v1_relat_1(k2_funct_1(X1))
        & v1_funct_1(k2_funct_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_funct_1)).

fof(t23_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ! [X3] :
          ( ( v1_relat_1(X3)
            & v1_funct_1(X3) )
         => ( r2_hidden(X1,k1_relat_1(X2))
           => k1_funct_1(k5_relat_1(X2,X3),X1) = k1_funct_1(X3,k1_funct_1(X2,X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t23_funct_1)).

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

fof(c_0_7,plain,(
    ! [X6,X7,X8,X10,X11,X12,X14] :
      ( ( r2_hidden(esk1_3(X6,X7,X8),k1_relat_1(X6))
        | ~ r2_hidden(X8,X7)
        | X7 != k2_relat_1(X6)
        | ~ v1_relat_1(X6)
        | ~ v1_funct_1(X6) )
      & ( X8 = k1_funct_1(X6,esk1_3(X6,X7,X8))
        | ~ r2_hidden(X8,X7)
        | X7 != k2_relat_1(X6)
        | ~ v1_relat_1(X6)
        | ~ v1_funct_1(X6) )
      & ( ~ r2_hidden(X11,k1_relat_1(X6))
        | X10 != k1_funct_1(X6,X11)
        | r2_hidden(X10,X7)
        | X7 != k2_relat_1(X6)
        | ~ v1_relat_1(X6)
        | ~ v1_funct_1(X6) )
      & ( ~ r2_hidden(esk2_2(X6,X12),X12)
        | ~ r2_hidden(X14,k1_relat_1(X6))
        | esk2_2(X6,X12) != k1_funct_1(X6,X14)
        | X12 = k2_relat_1(X6)
        | ~ v1_relat_1(X6)
        | ~ v1_funct_1(X6) )
      & ( r2_hidden(esk3_2(X6,X12),k1_relat_1(X6))
        | r2_hidden(esk2_2(X6,X12),X12)
        | X12 = k2_relat_1(X6)
        | ~ v1_relat_1(X6)
        | ~ v1_funct_1(X6) )
      & ( esk2_2(X6,X12) = k1_funct_1(X6,esk3_2(X6,X12))
        | r2_hidden(esk2_2(X6,X12),X12)
        | X12 = k2_relat_1(X6)
        | ~ v1_relat_1(X6)
        | ~ v1_funct_1(X6) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_funct_1])])])])])])).

fof(c_0_8,plain,(
    ! [X21,X22] :
      ( ( X21 = k1_funct_1(k2_funct_1(X22),k1_funct_1(X22,X21))
        | ~ v2_funct_1(X22)
        | ~ r2_hidden(X21,k1_relat_1(X22))
        | ~ v1_relat_1(X22)
        | ~ v1_funct_1(X22) )
      & ( X21 = k1_funct_1(k5_relat_1(X22,k2_funct_1(X22)),X21)
        | ~ v2_funct_1(X22)
        | ~ r2_hidden(X21,k1_relat_1(X22))
        | ~ v1_relat_1(X22)
        | ~ v1_funct_1(X22) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t56_funct_1])])])).

cnf(c_0_9,plain,
    ( X1 = k1_funct_1(X2,esk1_3(X2,X3,X1))
    | ~ r2_hidden(X1,X3)
    | X3 != k2_relat_1(X2)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_10,plain,
    ( r2_hidden(esk1_3(X1,X2,X3),k1_relat_1(X1))
    | ~ r2_hidden(X3,X2)
    | X2 != k2_relat_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

fof(c_0_11,negated_conjecture,(
    ~ ! [X1,X2] :
        ( ( v1_relat_1(X2)
          & v1_funct_1(X2) )
       => ( ( v2_funct_1(X2)
            & r2_hidden(X1,k2_relat_1(X2)) )
         => ( X1 = k1_funct_1(X2,k1_funct_1(k2_funct_1(X2),X1))
            & X1 = k1_funct_1(k5_relat_1(k2_funct_1(X2),X2),X1) ) ) ) ),
    inference(assume_negation,[status(cth)],[t57_funct_1])).

cnf(c_0_12,plain,
    ( X1 = k1_funct_1(k2_funct_1(X2),k1_funct_1(X2,X1))
    | ~ v2_funct_1(X2)
    | ~ r2_hidden(X1,k1_relat_1(X2))
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,plain,
    ( k1_funct_1(X1,esk1_3(X1,k2_relat_1(X1),X2)) = X2
    | ~ r2_hidden(X2,k2_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(er,[status(thm)],[c_0_9])).

cnf(c_0_14,plain,
    ( r2_hidden(esk1_3(X1,k2_relat_1(X1),X2),k1_relat_1(X1))
    | ~ r2_hidden(X2,k2_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(er,[status(thm)],[c_0_10])).

fof(c_0_15,negated_conjecture,
    ( v1_relat_1(esk5_0)
    & v1_funct_1(esk5_0)
    & v2_funct_1(esk5_0)
    & r2_hidden(esk4_0,k2_relat_1(esk5_0))
    & ( esk4_0 != k1_funct_1(esk5_0,k1_funct_1(k2_funct_1(esk5_0),esk4_0))
      | esk4_0 != k1_funct_1(k5_relat_1(k2_funct_1(esk5_0),esk5_0),esk4_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_11])])])).

cnf(c_0_16,plain,
    ( esk1_3(X1,k2_relat_1(X1),X2) = k1_funct_1(k2_funct_1(X1),X2)
    | ~ v2_funct_1(X1)
    | ~ r2_hidden(X2,k2_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_12,c_0_13]),c_0_14])).

fof(c_0_17,plain,(
    ! [X17] :
      ( ( v1_relat_1(k2_funct_1(X17))
        | ~ v1_relat_1(X17)
        | ~ v1_funct_1(X17) )
      & ( v1_funct_1(k2_funct_1(X17))
        | ~ v1_relat_1(X17)
        | ~ v1_funct_1(X17) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_1])])])).

cnf(c_0_18,negated_conjecture,
    ( esk4_0 != k1_funct_1(esk5_0,k1_funct_1(k2_funct_1(esk5_0),esk4_0))
    | esk4_0 != k1_funct_1(k5_relat_1(k2_funct_1(esk5_0),esk5_0),esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_19,plain,
    ( k1_funct_1(X1,k1_funct_1(k2_funct_1(X1),X2)) = X2
    | ~ v2_funct_1(X1)
    | ~ r2_hidden(X2,k2_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_13,c_0_16])).

cnf(c_0_20,negated_conjecture,
    ( v2_funct_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_21,negated_conjecture,
    ( r2_hidden(esk4_0,k2_relat_1(esk5_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_22,negated_conjecture,
    ( v1_funct_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_23,negated_conjecture,
    ( v1_relat_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_24,plain,(
    ! [X18,X19,X20] :
      ( ~ v1_relat_1(X19)
      | ~ v1_funct_1(X19)
      | ~ v1_relat_1(X20)
      | ~ v1_funct_1(X20)
      | ~ r2_hidden(X18,k1_relat_1(X19))
      | k1_funct_1(k5_relat_1(X19,X20),X18) = k1_funct_1(X20,k1_funct_1(X19,X18)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t23_funct_1])])])).

cnf(c_0_25,plain,
    ( v1_relat_1(k2_funct_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_26,negated_conjecture,
    ( k1_funct_1(k5_relat_1(k2_funct_1(esk5_0),esk5_0),esk4_0) != esk4_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18,c_0_19]),c_0_20]),c_0_21]),c_0_22]),c_0_23])])).

cnf(c_0_27,plain,
    ( k1_funct_1(k5_relat_1(X1,X2),X3) = k1_funct_1(X2,k1_funct_1(X1,X3))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ r2_hidden(X3,k1_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_28,negated_conjecture,
    ( v1_relat_1(k2_funct_1(esk5_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_22]),c_0_23])])).

fof(c_0_29,plain,(
    ! [X5] :
      ( ( k2_relat_1(X5) = k1_relat_1(k4_relat_1(X5))
        | ~ v1_relat_1(X5) )
      & ( k1_relat_1(X5) = k2_relat_1(k4_relat_1(X5))
        | ~ v1_relat_1(X5) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t37_relat_1])])])).

fof(c_0_30,plain,(
    ! [X16] :
      ( ~ v1_relat_1(X16)
      | ~ v1_funct_1(X16)
      | ~ v2_funct_1(X16)
      | k2_funct_1(X16) = k4_relat_1(X16) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_funct_1])])).

cnf(c_0_31,negated_conjecture,
    ( k1_funct_1(esk5_0,k1_funct_1(k2_funct_1(esk5_0),esk4_0)) != esk4_0
    | ~ r2_hidden(esk4_0,k1_relat_1(k2_funct_1(esk5_0)))
    | ~ v1_funct_1(k2_funct_1(esk5_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_22]),c_0_23]),c_0_28])])).

cnf(c_0_32,plain,
    ( k2_relat_1(X1) = k1_relat_1(k4_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_33,plain,
    ( k2_funct_1(X1) = k4_relat_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_34,negated_conjecture,
    ( ~ r2_hidden(esk4_0,k1_relat_1(k2_funct_1(esk5_0)))
    | ~ v1_funct_1(k2_funct_1(esk5_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_19]),c_0_20]),c_0_21]),c_0_22]),c_0_23])])).

cnf(c_0_35,plain,
    ( k1_relat_1(k2_funct_1(X1)) = k2_relat_1(X1)
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_32,c_0_33])).

cnf(c_0_36,negated_conjecture,
    ( ~ v1_funct_1(k2_funct_1(esk5_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_35]),c_0_21]),c_0_20]),c_0_22]),c_0_23])])).

cnf(c_0_37,plain,
    ( v1_funct_1(k2_funct_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_38,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_37]),c_0_22]),c_0_23])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n006.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 19:47:52 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.40  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S039A
% 0.19/0.40  # and selection function PSelectUnlessUniqMaxPos.
% 0.19/0.40  #
% 0.19/0.40  # Preprocessing time       : 0.028 s
% 0.19/0.40  # Presaturation interreduction done
% 0.19/0.40  
% 0.19/0.40  # Proof found!
% 0.19/0.40  # SZS status Theorem
% 0.19/0.40  # SZS output start CNFRefutation
% 0.19/0.40  fof(d5_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2]:(X2=k2_relat_1(X1)<=>![X3]:(r2_hidden(X3,X2)<=>?[X4]:(r2_hidden(X4,k1_relat_1(X1))&X3=k1_funct_1(X1,X4))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d5_funct_1)).
% 0.19/0.40  fof(t56_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>((v2_funct_1(X2)&r2_hidden(X1,k1_relat_1(X2)))=>(X1=k1_funct_1(k2_funct_1(X2),k1_funct_1(X2,X1))&X1=k1_funct_1(k5_relat_1(X2,k2_funct_1(X2)),X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t56_funct_1)).
% 0.19/0.40  fof(t57_funct_1, conjecture, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>((v2_funct_1(X2)&r2_hidden(X1,k2_relat_1(X2)))=>(X1=k1_funct_1(X2,k1_funct_1(k2_funct_1(X2),X1))&X1=k1_funct_1(k5_relat_1(k2_funct_1(X2),X2),X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t57_funct_1)).
% 0.19/0.40  fof(dt_k2_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v1_relat_1(k2_funct_1(X1))&v1_funct_1(k2_funct_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k2_funct_1)).
% 0.19/0.40  fof(t23_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>![X3]:((v1_relat_1(X3)&v1_funct_1(X3))=>(r2_hidden(X1,k1_relat_1(X2))=>k1_funct_1(k5_relat_1(X2,X3),X1)=k1_funct_1(X3,k1_funct_1(X2,X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t23_funct_1)).
% 0.19/0.40  fof(t37_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>(k2_relat_1(X1)=k1_relat_1(k4_relat_1(X1))&k1_relat_1(X1)=k2_relat_1(k4_relat_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t37_relat_1)).
% 0.19/0.40  fof(d9_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>k2_funct_1(X1)=k4_relat_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d9_funct_1)).
% 0.19/0.40  fof(c_0_7, plain, ![X6, X7, X8, X10, X11, X12, X14]:((((r2_hidden(esk1_3(X6,X7,X8),k1_relat_1(X6))|~r2_hidden(X8,X7)|X7!=k2_relat_1(X6)|(~v1_relat_1(X6)|~v1_funct_1(X6)))&(X8=k1_funct_1(X6,esk1_3(X6,X7,X8))|~r2_hidden(X8,X7)|X7!=k2_relat_1(X6)|(~v1_relat_1(X6)|~v1_funct_1(X6))))&(~r2_hidden(X11,k1_relat_1(X6))|X10!=k1_funct_1(X6,X11)|r2_hidden(X10,X7)|X7!=k2_relat_1(X6)|(~v1_relat_1(X6)|~v1_funct_1(X6))))&((~r2_hidden(esk2_2(X6,X12),X12)|(~r2_hidden(X14,k1_relat_1(X6))|esk2_2(X6,X12)!=k1_funct_1(X6,X14))|X12=k2_relat_1(X6)|(~v1_relat_1(X6)|~v1_funct_1(X6)))&((r2_hidden(esk3_2(X6,X12),k1_relat_1(X6))|r2_hidden(esk2_2(X6,X12),X12)|X12=k2_relat_1(X6)|(~v1_relat_1(X6)|~v1_funct_1(X6)))&(esk2_2(X6,X12)=k1_funct_1(X6,esk3_2(X6,X12))|r2_hidden(esk2_2(X6,X12),X12)|X12=k2_relat_1(X6)|(~v1_relat_1(X6)|~v1_funct_1(X6)))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_funct_1])])])])])])).
% 0.19/0.40  fof(c_0_8, plain, ![X21, X22]:((X21=k1_funct_1(k2_funct_1(X22),k1_funct_1(X22,X21))|(~v2_funct_1(X22)|~r2_hidden(X21,k1_relat_1(X22)))|(~v1_relat_1(X22)|~v1_funct_1(X22)))&(X21=k1_funct_1(k5_relat_1(X22,k2_funct_1(X22)),X21)|(~v2_funct_1(X22)|~r2_hidden(X21,k1_relat_1(X22)))|(~v1_relat_1(X22)|~v1_funct_1(X22)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t56_funct_1])])])).
% 0.19/0.40  cnf(c_0_9, plain, (X1=k1_funct_1(X2,esk1_3(X2,X3,X1))|~r2_hidden(X1,X3)|X3!=k2_relat_1(X2)|~v1_relat_1(X2)|~v1_funct_1(X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.19/0.40  cnf(c_0_10, plain, (r2_hidden(esk1_3(X1,X2,X3),k1_relat_1(X1))|~r2_hidden(X3,X2)|X2!=k2_relat_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.19/0.40  fof(c_0_11, negated_conjecture, ~(![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>((v2_funct_1(X2)&r2_hidden(X1,k2_relat_1(X2)))=>(X1=k1_funct_1(X2,k1_funct_1(k2_funct_1(X2),X1))&X1=k1_funct_1(k5_relat_1(k2_funct_1(X2),X2),X1))))), inference(assume_negation,[status(cth)],[t57_funct_1])).
% 0.19/0.40  cnf(c_0_12, plain, (X1=k1_funct_1(k2_funct_1(X2),k1_funct_1(X2,X1))|~v2_funct_1(X2)|~r2_hidden(X1,k1_relat_1(X2))|~v1_relat_1(X2)|~v1_funct_1(X2)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.19/0.40  cnf(c_0_13, plain, (k1_funct_1(X1,esk1_3(X1,k2_relat_1(X1),X2))=X2|~r2_hidden(X2,k2_relat_1(X1))|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(er,[status(thm)],[c_0_9])).
% 0.19/0.40  cnf(c_0_14, plain, (r2_hidden(esk1_3(X1,k2_relat_1(X1),X2),k1_relat_1(X1))|~r2_hidden(X2,k2_relat_1(X1))|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(er,[status(thm)],[c_0_10])).
% 0.19/0.40  fof(c_0_15, negated_conjecture, ((v1_relat_1(esk5_0)&v1_funct_1(esk5_0))&((v2_funct_1(esk5_0)&r2_hidden(esk4_0,k2_relat_1(esk5_0)))&(esk4_0!=k1_funct_1(esk5_0,k1_funct_1(k2_funct_1(esk5_0),esk4_0))|esk4_0!=k1_funct_1(k5_relat_1(k2_funct_1(esk5_0),esk5_0),esk4_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_11])])])).
% 0.19/0.40  cnf(c_0_16, plain, (esk1_3(X1,k2_relat_1(X1),X2)=k1_funct_1(k2_funct_1(X1),X2)|~v2_funct_1(X1)|~r2_hidden(X2,k2_relat_1(X1))|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_12, c_0_13]), c_0_14])).
% 0.19/0.40  fof(c_0_17, plain, ![X17]:((v1_relat_1(k2_funct_1(X17))|(~v1_relat_1(X17)|~v1_funct_1(X17)))&(v1_funct_1(k2_funct_1(X17))|(~v1_relat_1(X17)|~v1_funct_1(X17)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_1])])])).
% 0.19/0.40  cnf(c_0_18, negated_conjecture, (esk4_0!=k1_funct_1(esk5_0,k1_funct_1(k2_funct_1(esk5_0),esk4_0))|esk4_0!=k1_funct_1(k5_relat_1(k2_funct_1(esk5_0),esk5_0),esk4_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.40  cnf(c_0_19, plain, (k1_funct_1(X1,k1_funct_1(k2_funct_1(X1),X2))=X2|~v2_funct_1(X1)|~r2_hidden(X2,k2_relat_1(X1))|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_13, c_0_16])).
% 0.19/0.40  cnf(c_0_20, negated_conjecture, (v2_funct_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.40  cnf(c_0_21, negated_conjecture, (r2_hidden(esk4_0,k2_relat_1(esk5_0))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.40  cnf(c_0_22, negated_conjecture, (v1_funct_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.40  cnf(c_0_23, negated_conjecture, (v1_relat_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.40  fof(c_0_24, plain, ![X18, X19, X20]:(~v1_relat_1(X19)|~v1_funct_1(X19)|(~v1_relat_1(X20)|~v1_funct_1(X20)|(~r2_hidden(X18,k1_relat_1(X19))|k1_funct_1(k5_relat_1(X19,X20),X18)=k1_funct_1(X20,k1_funct_1(X19,X18))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t23_funct_1])])])).
% 0.19/0.40  cnf(c_0_25, plain, (v1_relat_1(k2_funct_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.19/0.40  cnf(c_0_26, negated_conjecture, (k1_funct_1(k5_relat_1(k2_funct_1(esk5_0),esk5_0),esk4_0)!=esk4_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18, c_0_19]), c_0_20]), c_0_21]), c_0_22]), c_0_23])])).
% 0.19/0.40  cnf(c_0_27, plain, (k1_funct_1(k5_relat_1(X1,X2),X3)=k1_funct_1(X2,k1_funct_1(X1,X3))|~v1_relat_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X2)|~v1_funct_1(X2)|~r2_hidden(X3,k1_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.40  cnf(c_0_28, negated_conjecture, (v1_relat_1(k2_funct_1(esk5_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_22]), c_0_23])])).
% 0.19/0.40  fof(c_0_29, plain, ![X5]:((k2_relat_1(X5)=k1_relat_1(k4_relat_1(X5))|~v1_relat_1(X5))&(k1_relat_1(X5)=k2_relat_1(k4_relat_1(X5))|~v1_relat_1(X5))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t37_relat_1])])])).
% 0.19/0.40  fof(c_0_30, plain, ![X16]:(~v1_relat_1(X16)|~v1_funct_1(X16)|(~v2_funct_1(X16)|k2_funct_1(X16)=k4_relat_1(X16))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_funct_1])])).
% 0.19/0.40  cnf(c_0_31, negated_conjecture, (k1_funct_1(esk5_0,k1_funct_1(k2_funct_1(esk5_0),esk4_0))!=esk4_0|~r2_hidden(esk4_0,k1_relat_1(k2_funct_1(esk5_0)))|~v1_funct_1(k2_funct_1(esk5_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_22]), c_0_23]), c_0_28])])).
% 0.19/0.40  cnf(c_0_32, plain, (k2_relat_1(X1)=k1_relat_1(k4_relat_1(X1))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.19/0.40  cnf(c_0_33, plain, (k2_funct_1(X1)=k4_relat_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)|~v2_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.19/0.40  cnf(c_0_34, negated_conjecture, (~r2_hidden(esk4_0,k1_relat_1(k2_funct_1(esk5_0)))|~v1_funct_1(k2_funct_1(esk5_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_19]), c_0_20]), c_0_21]), c_0_22]), c_0_23])])).
% 0.19/0.40  cnf(c_0_35, plain, (k1_relat_1(k2_funct_1(X1))=k2_relat_1(X1)|~v2_funct_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_32, c_0_33])).
% 0.19/0.40  cnf(c_0_36, negated_conjecture, (~v1_funct_1(k2_funct_1(esk5_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_35]), c_0_21]), c_0_20]), c_0_22]), c_0_23])])).
% 0.19/0.40  cnf(c_0_37, plain, (v1_funct_1(k2_funct_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.19/0.40  cnf(c_0_38, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_37]), c_0_22]), c_0_23])]), ['proof']).
% 0.19/0.40  # SZS output end CNFRefutation
% 0.19/0.40  # Proof object total steps             : 39
% 0.19/0.40  # Proof object clause steps            : 24
% 0.19/0.40  # Proof object formula steps           : 15
% 0.19/0.40  # Proof object conjectures             : 14
% 0.19/0.40  # Proof object clause conjectures      : 11
% 0.19/0.40  # Proof object formula conjectures     : 3
% 0.19/0.40  # Proof object initial clauses used    : 13
% 0.19/0.40  # Proof object initial formulas used   : 7
% 0.19/0.40  # Proof object generating inferences   : 9
% 0.19/0.40  # Proof object simplifying inferences  : 27
% 0.19/0.40  # Training examples: 0 positive, 0 negative
% 0.19/0.40  # Parsed axioms                        : 7
% 0.19/0.40  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.40  # Initial clauses                      : 19
% 0.19/0.40  # Removed in clause preprocessing      : 0
% 0.19/0.40  # Initial clauses in saturation        : 19
% 0.19/0.40  # Processed clauses                    : 121
% 0.19/0.40  # ...of these trivial                  : 0
% 0.19/0.40  # ...subsumed                          : 11
% 0.19/0.40  # ...remaining for further processing  : 110
% 0.19/0.40  # Other redundant clauses eliminated   : 4
% 0.19/0.40  # Clauses deleted for lack of memory   : 0
% 0.19/0.40  # Backward-subsumed                    : 3
% 0.19/0.40  # Backward-rewritten                   : 0
% 0.19/0.40  # Generated clauses                    : 756
% 0.19/0.40  # ...of the previous two non-trivial   : 751
% 0.19/0.40  # Contextual simplify-reflections      : 32
% 0.19/0.40  # Paramodulations                      : 753
% 0.19/0.40  # Factorizations                       : 0
% 0.19/0.40  # Equation resolutions                 : 4
% 0.19/0.40  # Propositional unsat checks           : 0
% 0.19/0.40  #    Propositional check models        : 0
% 0.19/0.40  #    Propositional check unsatisfiable : 0
% 0.19/0.40  #    Propositional clauses             : 0
% 0.19/0.40  #    Propositional clauses after purity: 0
% 0.19/0.40  #    Propositional unsat core size     : 0
% 0.19/0.40  #    Propositional preprocessing time  : 0.000
% 0.19/0.40  #    Propositional encoding time       : 0.000
% 0.19/0.40  #    Propositional solver time         : 0.000
% 0.19/0.40  #    Success case prop preproc time    : 0.000
% 0.19/0.40  #    Success case prop encoding time   : 0.000
% 0.19/0.40  #    Success case prop solver time     : 0.000
% 0.19/0.40  # Current number of processed clauses  : 85
% 0.19/0.40  #    Positive orientable unit clauses  : 22
% 0.19/0.40  #    Positive unorientable unit clauses: 0
% 0.19/0.40  #    Negative unit clauses             : 2
% 0.19/0.40  #    Non-unit-clauses                  : 61
% 0.19/0.40  # Current number of unprocessed clauses: 667
% 0.19/0.40  # ...number of literals in the above   : 5228
% 0.19/0.40  # Current number of archived formulas  : 0
% 0.19/0.40  # Current number of archived clauses   : 22
% 0.19/0.40  # Clause-clause subsumption calls (NU) : 2950
% 0.19/0.40  # Rec. Clause-clause subsumption calls : 560
% 0.19/0.40  # Non-unit clause-clause subsumptions  : 46
% 0.19/0.40  # Unit Clause-clause subsumption calls : 33
% 0.19/0.40  # Rewrite failures with RHS unbound    : 0
% 0.19/0.40  # BW rewrite match attempts            : 289
% 0.19/0.40  # BW rewrite match successes           : 0
% 0.19/0.40  # Condensation attempts                : 0
% 0.19/0.40  # Condensation successes               : 0
% 0.19/0.40  # Termbank termtop insertions          : 27413
% 0.19/0.40  
% 0.19/0.40  # -------------------------------------------------
% 0.19/0.40  # User time                : 0.050 s
% 0.19/0.40  # System time              : 0.009 s
% 0.19/0.40  # Total time               : 0.059 s
% 0.19/0.40  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
