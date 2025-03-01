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
% DateTime   : Thu Dec  3 10:56:31 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   45 (  69 expanded)
%              Number of clauses        :   24 (  30 expanded)
%              Number of leaves         :   11 (  20 expanded)
%              Depth                    :   11
%              Number of atoms          :  104 ( 165 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal clause size      :    8 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t7_ordinal1,axiom,(
    ! [X1,X2] :
      ~ ( r2_hidden(X1,X2)
        & r1_tarski(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_ordinal1)).

fof(t2_xboole_1,axiom,(
    ! [X1] : r1_tarski(k1_xboole_0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_xboole_1)).

fof(t31_ordinal1,axiom,(
    ! [X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X1)
         => ( v3_ordinal1(X2)
            & r1_tarski(X2,X1) ) )
     => v3_ordinal1(X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t31_ordinal1)).

fof(reflexivity_r1_ordinal1,axiom,(
    ! [X1,X2] :
      ( ( v3_ordinal1(X1)
        & v3_ordinal1(X2) )
     => r1_ordinal1(X1,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',reflexivity_r1_ordinal1)).

fof(l49_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( r2_hidden(X1,X2)
     => r1_tarski(X1,k3_tarski(X2)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l49_zfmisc_1)).

fof(t33_ordinal1,axiom,(
    ! [X1] :
      ( v3_ordinal1(X1)
     => ! [X2] :
          ( v3_ordinal1(X2)
         => ( r2_hidden(X1,X2)
          <=> r1_ordinal1(k1_ordinal1(X1),X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t33_ordinal1)).

fof(t29_ordinal1,axiom,(
    ! [X1] :
      ( v3_ordinal1(X1)
     => v3_ordinal1(k1_ordinal1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t29_ordinal1)).

fof(t37_ordinal1,conjecture,(
    ! [X1] :
      ~ ! [X2] :
          ( r2_hidden(X2,X1)
        <=> v3_ordinal1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t37_ordinal1)).

fof(t35_ordinal1,axiom,(
    ! [X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X1)
         => v3_ordinal1(X2) )
     => v3_ordinal1(k3_tarski(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t35_ordinal1)).

fof(c_0_9,plain,(
    ! [X15,X16] :
      ( ~ r2_hidden(X15,X16)
      | ~ r1_tarski(X16,X15) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).

fof(c_0_10,plain,(
    ! [X3] : r1_tarski(k1_xboole_0,X3) ),
    inference(variable_rename,[status(thm)],[t2_xboole_1])).

cnf(c_0_11,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_12,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_13,plain,(
    ! [X9] :
      ( ( r2_hidden(esk1_1(X9),X9)
        | v3_ordinal1(X9) )
      & ( ~ v3_ordinal1(esk1_1(X9))
        | ~ r1_tarski(esk1_1(X9),X9)
        | v3_ordinal1(X9) ) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t31_ordinal1])])])])).

fof(c_0_14,plain,(
    ! [X6,X7] :
      ( ~ v3_ordinal1(X6)
      | ~ v3_ordinal1(X7)
      | r1_ordinal1(X6,X6) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[reflexivity_r1_ordinal1])])).

fof(c_0_15,plain,
    ( ~ epred2_0
  <=> ! [X2] : ~ v3_ordinal1(X2) ),
    introduced(definition)).

cnf(c_0_16,plain,
    ( ~ r2_hidden(X1,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_11,c_0_12])).

cnf(c_0_17,plain,
    ( r2_hidden(esk1_1(X1),X1)
    | v3_ordinal1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_18,plain,
    ( ~ epred1_0
  <=> ! [X1] :
        ( r1_ordinal1(X1,X1)
        | ~ v3_ordinal1(X1) ) ),
    introduced(definition)).

cnf(c_0_19,plain,
    ( r1_ordinal1(X1,X1)
    | ~ v3_ordinal1(X1)
    | ~ v3_ordinal1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_20,plain,
    ( epred2_0
    | ~ v3_ordinal1(X1) ),
    inference(split_equiv,[status(thm)],[c_0_15])).

cnf(c_0_21,plain,
    ( v3_ordinal1(k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_22,plain,
    ( ~ epred2_0
    | ~ epred1_0 ),
    inference(apply_def,[status(thm)],[inference(apply_def,[status(thm)],[c_0_19,c_0_18]),c_0_15])).

cnf(c_0_23,plain,
    ( epred2_0 ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

fof(c_0_24,plain,(
    ! [X4,X5] :
      ( ~ r2_hidden(X4,X5)
      | r1_tarski(X4,k3_tarski(X5)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l49_zfmisc_1])])).

fof(c_0_25,plain,(
    ! [X11,X12] :
      ( ( ~ r2_hidden(X11,X12)
        | r1_ordinal1(k1_ordinal1(X11),X12)
        | ~ v3_ordinal1(X12)
        | ~ v3_ordinal1(X11) )
      & ( ~ r1_ordinal1(k1_ordinal1(X11),X12)
        | r2_hidden(X11,X12)
        | ~ v3_ordinal1(X12)
        | ~ v3_ordinal1(X11) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t33_ordinal1])])])])).

cnf(c_0_26,plain,
    ( ~ epred1_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_22,c_0_23])])).

fof(c_0_27,plain,(
    ! [X8] :
      ( ~ v3_ordinal1(X8)
      | v3_ordinal1(k1_ordinal1(X8)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t29_ordinal1])])).

fof(c_0_28,negated_conjecture,(
    ~ ! [X1] :
        ~ ! [X2] :
            ( r2_hidden(X2,X1)
          <=> v3_ordinal1(X2) ) ),
    inference(assume_negation,[status(cth)],[t37_ordinal1])).

cnf(c_0_29,plain,
    ( r1_tarski(X1,k3_tarski(X2))
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_30,plain,
    ( r2_hidden(X1,X2)
    | ~ r1_ordinal1(k1_ordinal1(X1),X2)
    | ~ v3_ordinal1(X2)
    | ~ v3_ordinal1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_31,plain,
    ( r1_ordinal1(X1,X1)
    | ~ v3_ordinal1(X1) ),
    inference(sr,[status(thm)],[inference(split_equiv,[status(thm)],[c_0_18]),c_0_26])).

cnf(c_0_32,plain,
    ( v3_ordinal1(k1_ordinal1(X1))
    | ~ v3_ordinal1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

fof(c_0_33,negated_conjecture,(
    ! [X18] :
      ( ( ~ r2_hidden(X18,esk3_0)
        | v3_ordinal1(X18) )
      & ( ~ v3_ordinal1(X18)
        | r2_hidden(X18,esk3_0) ) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_28])])])).

fof(c_0_34,plain,(
    ! [X13] :
      ( ( r2_hidden(esk2_1(X13),X13)
        | v3_ordinal1(k3_tarski(X13)) )
      & ( ~ v3_ordinal1(esk2_1(X13))
        | v3_ordinal1(k3_tarski(X13)) ) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t35_ordinal1])])])])).

cnf(c_0_35,plain,
    ( ~ r2_hidden(k3_tarski(X1),X2)
    | ~ r2_hidden(X2,X1) ),
    inference(spm,[status(thm)],[c_0_11,c_0_29])).

cnf(c_0_36,plain,
    ( r2_hidden(X1,k1_ordinal1(X1))
    | ~ v3_ordinal1(X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_31]),c_0_32])).

cnf(c_0_37,negated_conjecture,
    ( v3_ordinal1(X1)
    | ~ r2_hidden(X1,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_38,plain,
    ( r2_hidden(esk2_1(X1),X1)
    | v3_ordinal1(k3_tarski(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_39,plain,
    ( v3_ordinal1(k3_tarski(X1))
    | ~ v3_ordinal1(esk2_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_40,plain,
    ( ~ v3_ordinal1(k3_tarski(X1))
    | ~ r2_hidden(k1_ordinal1(k3_tarski(X1)),X1) ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_41,negated_conjecture,
    ( r2_hidden(X1,esk3_0)
    | ~ v3_ordinal1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_42,negated_conjecture,
    ( v3_ordinal1(k3_tarski(esk3_0)) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_38]),c_0_39])).

cnf(c_0_43,negated_conjecture,
    ( ~ v3_ordinal1(k1_ordinal1(k3_tarski(esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_41]),c_0_42])])).

cnf(c_0_44,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_32]),c_0_42])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n012.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 18:33:52 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.37  # AutoSched0-Mode selected heuristic G_N___023_B07_F1_SP_PI_Q7_CS_SE_S0Y
% 0.13/0.37  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.13/0.37  #
% 0.13/0.37  # Preprocessing time       : 0.027 s
% 0.13/0.37  
% 0.13/0.37  # Proof found!
% 0.13/0.37  # SZS status Theorem
% 0.13/0.37  # SZS output start CNFRefutation
% 0.13/0.37  fof(t7_ordinal1, axiom, ![X1, X2]:~((r2_hidden(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_ordinal1)).
% 0.13/0.37  fof(t2_xboole_1, axiom, ![X1]:r1_tarski(k1_xboole_0,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_xboole_1)).
% 0.13/0.37  fof(t31_ordinal1, axiom, ![X1]:(![X2]:(r2_hidden(X2,X1)=>(v3_ordinal1(X2)&r1_tarski(X2,X1)))=>v3_ordinal1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t31_ordinal1)).
% 0.13/0.37  fof(reflexivity_r1_ordinal1, axiom, ![X1, X2]:((v3_ordinal1(X1)&v3_ordinal1(X2))=>r1_ordinal1(X1,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', reflexivity_r1_ordinal1)).
% 0.13/0.37  fof(l49_zfmisc_1, axiom, ![X1, X2]:(r2_hidden(X1,X2)=>r1_tarski(X1,k3_tarski(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l49_zfmisc_1)).
% 0.13/0.37  fof(t33_ordinal1, axiom, ![X1]:(v3_ordinal1(X1)=>![X2]:(v3_ordinal1(X2)=>(r2_hidden(X1,X2)<=>r1_ordinal1(k1_ordinal1(X1),X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t33_ordinal1)).
% 0.13/0.37  fof(t29_ordinal1, axiom, ![X1]:(v3_ordinal1(X1)=>v3_ordinal1(k1_ordinal1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t29_ordinal1)).
% 0.13/0.37  fof(t37_ordinal1, conjecture, ![X1]:~(![X2]:(r2_hidden(X2,X1)<=>v3_ordinal1(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t37_ordinal1)).
% 0.13/0.37  fof(t35_ordinal1, axiom, ![X1]:(![X2]:(r2_hidden(X2,X1)=>v3_ordinal1(X2))=>v3_ordinal1(k3_tarski(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t35_ordinal1)).
% 0.13/0.37  fof(c_0_9, plain, ![X15, X16]:(~r2_hidden(X15,X16)|~r1_tarski(X16,X15)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).
% 0.13/0.37  fof(c_0_10, plain, ![X3]:r1_tarski(k1_xboole_0,X3), inference(variable_rename,[status(thm)],[t2_xboole_1])).
% 0.13/0.37  cnf(c_0_11, plain, (~r2_hidden(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.37  cnf(c_0_12, plain, (r1_tarski(k1_xboole_0,X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.37  fof(c_0_13, plain, ![X9]:((r2_hidden(esk1_1(X9),X9)|v3_ordinal1(X9))&(~v3_ordinal1(esk1_1(X9))|~r1_tarski(esk1_1(X9),X9)|v3_ordinal1(X9))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t31_ordinal1])])])])).
% 0.13/0.37  fof(c_0_14, plain, ![X6, X7]:(~v3_ordinal1(X6)|~v3_ordinal1(X7)|r1_ordinal1(X6,X6)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[reflexivity_r1_ordinal1])])).
% 0.13/0.37  fof(c_0_15, plain, (~epred2_0<=>![X2]:~v3_ordinal1(X2)), introduced(definition)).
% 0.13/0.37  cnf(c_0_16, plain, (~r2_hidden(X1,k1_xboole_0)), inference(spm,[status(thm)],[c_0_11, c_0_12])).
% 0.13/0.37  cnf(c_0_17, plain, (r2_hidden(esk1_1(X1),X1)|v3_ordinal1(X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.37  fof(c_0_18, plain, (~epred1_0<=>![X1]:(r1_ordinal1(X1,X1)|~v3_ordinal1(X1))), introduced(definition)).
% 0.13/0.37  cnf(c_0_19, plain, (r1_ordinal1(X1,X1)|~v3_ordinal1(X1)|~v3_ordinal1(X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.37  cnf(c_0_20, plain, (epred2_0|~v3_ordinal1(X1)), inference(split_equiv,[status(thm)],[c_0_15])).
% 0.13/0.37  cnf(c_0_21, plain, (v3_ordinal1(k1_xboole_0)), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.13/0.37  cnf(c_0_22, plain, (~epred2_0|~epred1_0), inference(apply_def,[status(thm)],[inference(apply_def,[status(thm)],[c_0_19, c_0_18]), c_0_15])).
% 0.13/0.37  cnf(c_0_23, plain, (epred2_0), inference(spm,[status(thm)],[c_0_20, c_0_21])).
% 0.13/0.37  fof(c_0_24, plain, ![X4, X5]:(~r2_hidden(X4,X5)|r1_tarski(X4,k3_tarski(X5))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l49_zfmisc_1])])).
% 0.13/0.37  fof(c_0_25, plain, ![X11, X12]:((~r2_hidden(X11,X12)|r1_ordinal1(k1_ordinal1(X11),X12)|~v3_ordinal1(X12)|~v3_ordinal1(X11))&(~r1_ordinal1(k1_ordinal1(X11),X12)|r2_hidden(X11,X12)|~v3_ordinal1(X12)|~v3_ordinal1(X11))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t33_ordinal1])])])])).
% 0.13/0.37  cnf(c_0_26, plain, (~epred1_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_22, c_0_23])])).
% 0.13/0.37  fof(c_0_27, plain, ![X8]:(~v3_ordinal1(X8)|v3_ordinal1(k1_ordinal1(X8))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t29_ordinal1])])).
% 0.13/0.37  fof(c_0_28, negated_conjecture, ~(![X1]:~(![X2]:(r2_hidden(X2,X1)<=>v3_ordinal1(X2)))), inference(assume_negation,[status(cth)],[t37_ordinal1])).
% 0.13/0.37  cnf(c_0_29, plain, (r1_tarski(X1,k3_tarski(X2))|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.37  cnf(c_0_30, plain, (r2_hidden(X1,X2)|~r1_ordinal1(k1_ordinal1(X1),X2)|~v3_ordinal1(X2)|~v3_ordinal1(X1)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.13/0.37  cnf(c_0_31, plain, (r1_ordinal1(X1,X1)|~v3_ordinal1(X1)), inference(sr,[status(thm)],[inference(split_equiv,[status(thm)],[c_0_18]), c_0_26])).
% 0.13/0.37  cnf(c_0_32, plain, (v3_ordinal1(k1_ordinal1(X1))|~v3_ordinal1(X1)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.13/0.37  fof(c_0_33, negated_conjecture, ![X18]:((~r2_hidden(X18,esk3_0)|v3_ordinal1(X18))&(~v3_ordinal1(X18)|r2_hidden(X18,esk3_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_28])])])).
% 0.13/0.37  fof(c_0_34, plain, ![X13]:((r2_hidden(esk2_1(X13),X13)|v3_ordinal1(k3_tarski(X13)))&(~v3_ordinal1(esk2_1(X13))|v3_ordinal1(k3_tarski(X13)))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t35_ordinal1])])])])).
% 0.13/0.37  cnf(c_0_35, plain, (~r2_hidden(k3_tarski(X1),X2)|~r2_hidden(X2,X1)), inference(spm,[status(thm)],[c_0_11, c_0_29])).
% 0.13/0.37  cnf(c_0_36, plain, (r2_hidden(X1,k1_ordinal1(X1))|~v3_ordinal1(X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_31]), c_0_32])).
% 0.13/0.37  cnf(c_0_37, negated_conjecture, (v3_ordinal1(X1)|~r2_hidden(X1,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.13/0.37  cnf(c_0_38, plain, (r2_hidden(esk2_1(X1),X1)|v3_ordinal1(k3_tarski(X1))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.13/0.37  cnf(c_0_39, plain, (v3_ordinal1(k3_tarski(X1))|~v3_ordinal1(esk2_1(X1))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.13/0.37  cnf(c_0_40, plain, (~v3_ordinal1(k3_tarski(X1))|~r2_hidden(k1_ordinal1(k3_tarski(X1)),X1)), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 0.13/0.37  cnf(c_0_41, negated_conjecture, (r2_hidden(X1,esk3_0)|~v3_ordinal1(X1)), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.13/0.37  cnf(c_0_42, negated_conjecture, (v3_ordinal1(k3_tarski(esk3_0))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_38]), c_0_39])).
% 0.13/0.37  cnf(c_0_43, negated_conjecture, (~v3_ordinal1(k1_ordinal1(k3_tarski(esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_41]), c_0_42])])).
% 0.13/0.37  cnf(c_0_44, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_32]), c_0_42])]), ['proof']).
% 0.13/0.37  # SZS output end CNFRefutation
% 0.13/0.37  # Proof object total steps             : 45
% 0.13/0.37  # Proof object clause steps            : 24
% 0.13/0.37  # Proof object formula steps           : 21
% 0.13/0.37  # Proof object conjectures             : 8
% 0.13/0.37  # Proof object clause conjectures      : 5
% 0.13/0.37  # Proof object formula conjectures     : 3
% 0.13/0.37  # Proof object initial clauses used    : 12
% 0.13/0.37  # Proof object initial formulas used   : 9
% 0.13/0.37  # Proof object generating inferences   : 9
% 0.13/0.37  # Proof object simplifying inferences  : 11
% 0.13/0.37  # Training examples: 0 positive, 0 negative
% 0.13/0.37  # Parsed axioms                        : 9
% 0.13/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.37  # Initial clauses                      : 13
% 0.13/0.37  # Removed in clause preprocessing      : 0
% 0.13/0.37  # Initial clauses in saturation        : 13
% 0.13/0.37  # Processed clauses                    : 32
% 0.13/0.37  # ...of these trivial                  : 0
% 0.13/0.37  # ...subsumed                          : 1
% 0.13/0.37  # ...remaining for further processing  : 31
% 0.13/0.37  # Other redundant clauses eliminated   : 0
% 0.13/0.37  # Clauses deleted for lack of memory   : 0
% 0.13/0.37  # Backward-subsumed                    : 0
% 0.13/0.37  # Backward-rewritten                   : 2
% 0.13/0.37  # Generated clauses                    : 23
% 0.13/0.37  # ...of the previous two non-trivial   : 21
% 0.13/0.37  # Contextual simplify-reflections      : 2
% 0.13/0.37  # Paramodulations                      : 19
% 0.13/0.37  # Factorizations                       : 0
% 0.13/0.37  # Equation resolutions                 : 0
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
% 0.13/0.37  # Current number of processed clauses  : 27
% 0.13/0.37  #    Positive orientable unit clauses  : 6
% 0.13/0.37  #    Positive unorientable unit clauses: 0
% 0.13/0.37  #    Negative unit clauses             : 5
% 0.13/0.37  #    Non-unit-clauses                  : 16
% 0.13/0.37  # Current number of unprocessed clauses: 1
% 0.13/0.37  # ...number of literals in the above   : 3
% 0.13/0.37  # Current number of archived formulas  : 0
% 0.13/0.37  # Current number of archived clauses   : 3
% 0.13/0.37  # Clause-clause subsumption calls (NU) : 34
% 0.13/0.37  # Rec. Clause-clause subsumption calls : 22
% 0.13/0.37  # Non-unit clause-clause subsumptions  : 2
% 0.13/0.37  # Unit Clause-clause subsumption calls : 50
% 0.13/0.37  # Rewrite failures with RHS unbound    : 0
% 0.13/0.37  # BW rewrite match attempts            : 1
% 0.13/0.37  # BW rewrite match successes           : 1
% 0.13/0.37  # Condensation attempts                : 0
% 0.13/0.37  # Condensation successes               : 0
% 0.13/0.37  # Termbank termtop insertions          : 1058
% 0.13/0.37  
% 0.13/0.37  # -------------------------------------------------
% 0.13/0.37  # User time                : 0.025 s
% 0.13/0.37  # System time              : 0.006 s
% 0.13/0.37  # Total time               : 0.032 s
% 0.13/0.37  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
