%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:46:51 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   37 (  61 expanded)
%              Number of clauses        :   22 (  26 expanded)
%              Number of leaves         :    7 (  15 expanded)
%              Depth                    :   10
%              Number of atoms          :  100 ( 197 expanded)
%              Number of equality atoms :   17 (  36 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t56_subset_1,conjecture,(
    ! [X1,X2] :
      ( m1_subset_1(X2,X1)
     => ! [X3] :
          ( m1_subset_1(X3,X1)
         => ( X1 != k1_xboole_0
           => m1_subset_1(k2_tarski(X2,X3),k1_zfmisc_1(X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t56_subset_1)).

fof(d2_subset_1,axiom,(
    ! [X1,X2] :
      ( ( ~ v1_xboole_0(X1)
       => ( m1_subset_1(X2,X1)
        <=> r2_hidden(X2,X1) ) )
      & ( v1_xboole_0(X1)
       => ( m1_subset_1(X2,X1)
        <=> v1_xboole_0(X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d2_subset_1)).

fof(t38_zfmisc_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(k2_tarski(X1,X2),X3)
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X2,X3) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t38_zfmisc_1)).

fof(t41_enumset1,axiom,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_xboole_0(k1_tarski(X1),k1_tarski(X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_enumset1)).

fof(l13_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l13_xboole_0)).

fof(d1_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( X2 = k1_zfmisc_1(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> r1_tarski(X3,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_zfmisc_1)).

fof(fc1_subset_1,axiom,(
    ! [X1] : ~ v1_xboole_0(k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_subset_1)).

fof(c_0_7,negated_conjecture,(
    ~ ! [X1,X2] :
        ( m1_subset_1(X2,X1)
       => ! [X3] :
            ( m1_subset_1(X3,X1)
           => ( X1 != k1_xboole_0
             => m1_subset_1(k2_tarski(X2,X3),k1_zfmisc_1(X1)) ) ) ) ),
    inference(assume_negation,[status(cth)],[t56_subset_1])).

fof(c_0_8,plain,(
    ! [X19,X20] :
      ( ( ~ m1_subset_1(X20,X19)
        | r2_hidden(X20,X19)
        | v1_xboole_0(X19) )
      & ( ~ r2_hidden(X20,X19)
        | m1_subset_1(X20,X19)
        | v1_xboole_0(X19) )
      & ( ~ m1_subset_1(X20,X19)
        | v1_xboole_0(X20)
        | ~ v1_xboole_0(X19) )
      & ( ~ v1_xboole_0(X20)
        | m1_subset_1(X20,X19)
        | ~ v1_xboole_0(X19) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d2_subset_1])])])])).

fof(c_0_9,negated_conjecture,
    ( m1_subset_1(esk3_0,esk2_0)
    & m1_subset_1(esk4_0,esk2_0)
    & esk2_0 != k1_xboole_0
    & ~ m1_subset_1(k2_tarski(esk3_0,esk4_0),k1_zfmisc_1(esk2_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).

fof(c_0_10,plain,(
    ! [X16,X17,X18] :
      ( ( r2_hidden(X16,X18)
        | ~ r1_tarski(k2_tarski(X16,X17),X18) )
      & ( r2_hidden(X17,X18)
        | ~ r1_tarski(k2_tarski(X16,X17),X18) )
      & ( ~ r2_hidden(X16,X18)
        | ~ r2_hidden(X17,X18)
        | r1_tarski(k2_tarski(X16,X17),X18) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_zfmisc_1])])])).

fof(c_0_11,plain,(
    ! [X7,X8] : k2_tarski(X7,X8) = k2_xboole_0(k1_tarski(X7),k1_tarski(X8)) ),
    inference(variable_rename,[status(thm)],[t41_enumset1])).

fof(c_0_12,plain,(
    ! [X4] :
      ( ~ v1_xboole_0(X4)
      | X4 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).

cnf(c_0_13,plain,
    ( r2_hidden(X1,X2)
    | v1_xboole_0(X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_14,negated_conjecture,
    ( m1_subset_1(esk4_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_15,plain,
    ( r1_tarski(k2_tarski(X1,X3),X2)
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X3,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_16,plain,
    ( k2_tarski(X1,X2) = k2_xboole_0(k1_tarski(X1),k1_tarski(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_17,plain,
    ( X1 = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_18,negated_conjecture,
    ( r2_hidden(esk4_0,esk2_0)
    | v1_xboole_0(esk2_0) ),
    inference(spm,[status(thm)],[c_0_13,c_0_14])).

cnf(c_0_19,negated_conjecture,
    ( esk2_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_20,negated_conjecture,
    ( m1_subset_1(esk3_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_21,plain,
    ( r1_tarski(k2_xboole_0(k1_tarski(X1),k1_tarski(X3)),X2)
    | ~ r2_hidden(X3,X2)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_22,negated_conjecture,
    ( r2_hidden(esk4_0,esk2_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_17,c_0_18]),c_0_19])).

cnf(c_0_23,negated_conjecture,
    ( r2_hidden(esk3_0,esk2_0)
    | v1_xboole_0(esk2_0) ),
    inference(spm,[status(thm)],[c_0_13,c_0_20])).

fof(c_0_24,plain,(
    ! [X9,X10,X11,X12,X13,X14] :
      ( ( ~ r2_hidden(X11,X10)
        | r1_tarski(X11,X9)
        | X10 != k1_zfmisc_1(X9) )
      & ( ~ r1_tarski(X12,X9)
        | r2_hidden(X12,X10)
        | X10 != k1_zfmisc_1(X9) )
      & ( ~ r2_hidden(esk1_2(X13,X14),X14)
        | ~ r1_tarski(esk1_2(X13,X14),X13)
        | X14 = k1_zfmisc_1(X13) )
      & ( r2_hidden(esk1_2(X13,X14),X14)
        | r1_tarski(esk1_2(X13,X14),X13)
        | X14 = k1_zfmisc_1(X13) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_zfmisc_1])])])])])])).

cnf(c_0_25,negated_conjecture,
    ( r1_tarski(k2_xboole_0(k1_tarski(X1),k1_tarski(esk4_0)),esk2_0)
    | ~ r2_hidden(X1,esk2_0) ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_26,negated_conjecture,
    ( r2_hidden(esk3_0,esk2_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_17,c_0_23]),c_0_19])).

cnf(c_0_27,plain,
    ( r2_hidden(X1,X3)
    | ~ r1_tarski(X1,X2)
    | X3 != k1_zfmisc_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_28,negated_conjecture,
    ( r1_tarski(k2_xboole_0(k1_tarski(esk3_0),k1_tarski(esk4_0)),esk2_0) ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_29,negated_conjecture,
    ( r2_hidden(k2_xboole_0(k1_tarski(esk3_0),k1_tarski(esk4_0)),X1)
    | X1 != k1_zfmisc_1(esk2_0) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_30,negated_conjecture,
    ( ~ m1_subset_1(k2_tarski(esk3_0,esk4_0),k1_zfmisc_1(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

fof(c_0_31,plain,(
    ! [X21] : ~ v1_xboole_0(k1_zfmisc_1(X21)) ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[fc1_subset_1])])).

cnf(c_0_32,plain,
    ( m1_subset_1(X1,X2)
    | v1_xboole_0(X2)
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_33,negated_conjecture,
    ( r2_hidden(k2_xboole_0(k1_tarski(esk3_0),k1_tarski(esk4_0)),k1_zfmisc_1(esk2_0)) ),
    inference(er,[status(thm)],[c_0_29])).

cnf(c_0_34,negated_conjecture,
    ( ~ m1_subset_1(k2_xboole_0(k1_tarski(esk3_0),k1_tarski(esk4_0)),k1_zfmisc_1(esk2_0)) ),
    inference(rw,[status(thm)],[c_0_30,c_0_16])).

cnf(c_0_35,plain,
    ( ~ v1_xboole_0(k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_36,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_33]),c_0_34]),c_0_35]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n002.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 11:32:52 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.37  # AutoSched0-Mode selected heuristic G_E___207_C18_F1_AE_CS_SP_PI_PS_S0i
% 0.13/0.37  # and selection function SelectDiffNegLit.
% 0.13/0.37  #
% 0.13/0.37  # Preprocessing time       : 0.026 s
% 0.13/0.37  # Presaturation interreduction done
% 0.13/0.37  
% 0.13/0.37  # Proof found!
% 0.13/0.37  # SZS status Theorem
% 0.13/0.37  # SZS output start CNFRefutation
% 0.13/0.37  fof(t56_subset_1, conjecture, ![X1, X2]:(m1_subset_1(X2,X1)=>![X3]:(m1_subset_1(X3,X1)=>(X1!=k1_xboole_0=>m1_subset_1(k2_tarski(X2,X3),k1_zfmisc_1(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t56_subset_1)).
% 0.13/0.37  fof(d2_subset_1, axiom, ![X1, X2]:((~(v1_xboole_0(X1))=>(m1_subset_1(X2,X1)<=>r2_hidden(X2,X1)))&(v1_xboole_0(X1)=>(m1_subset_1(X2,X1)<=>v1_xboole_0(X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d2_subset_1)).
% 0.13/0.37  fof(t38_zfmisc_1, axiom, ![X1, X2, X3]:(r1_tarski(k2_tarski(X1,X2),X3)<=>(r2_hidden(X1,X3)&r2_hidden(X2,X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t38_zfmisc_1)).
% 0.13/0.37  fof(t41_enumset1, axiom, ![X1, X2]:k2_tarski(X1,X2)=k2_xboole_0(k1_tarski(X1),k1_tarski(X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t41_enumset1)).
% 0.13/0.37  fof(l13_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)=>X1=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l13_xboole_0)).
% 0.13/0.37  fof(d1_zfmisc_1, axiom, ![X1, X2]:(X2=k1_zfmisc_1(X1)<=>![X3]:(r2_hidden(X3,X2)<=>r1_tarski(X3,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_zfmisc_1)).
% 0.13/0.37  fof(fc1_subset_1, axiom, ![X1]:~(v1_xboole_0(k1_zfmisc_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc1_subset_1)).
% 0.13/0.37  fof(c_0_7, negated_conjecture, ~(![X1, X2]:(m1_subset_1(X2,X1)=>![X3]:(m1_subset_1(X3,X1)=>(X1!=k1_xboole_0=>m1_subset_1(k2_tarski(X2,X3),k1_zfmisc_1(X1)))))), inference(assume_negation,[status(cth)],[t56_subset_1])).
% 0.13/0.37  fof(c_0_8, plain, ![X19, X20]:(((~m1_subset_1(X20,X19)|r2_hidden(X20,X19)|v1_xboole_0(X19))&(~r2_hidden(X20,X19)|m1_subset_1(X20,X19)|v1_xboole_0(X19)))&((~m1_subset_1(X20,X19)|v1_xboole_0(X20)|~v1_xboole_0(X19))&(~v1_xboole_0(X20)|m1_subset_1(X20,X19)|~v1_xboole_0(X19)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d2_subset_1])])])])).
% 0.13/0.37  fof(c_0_9, negated_conjecture, (m1_subset_1(esk3_0,esk2_0)&(m1_subset_1(esk4_0,esk2_0)&(esk2_0!=k1_xboole_0&~m1_subset_1(k2_tarski(esk3_0,esk4_0),k1_zfmisc_1(esk2_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).
% 0.13/0.37  fof(c_0_10, plain, ![X16, X17, X18]:(((r2_hidden(X16,X18)|~r1_tarski(k2_tarski(X16,X17),X18))&(r2_hidden(X17,X18)|~r1_tarski(k2_tarski(X16,X17),X18)))&(~r2_hidden(X16,X18)|~r2_hidden(X17,X18)|r1_tarski(k2_tarski(X16,X17),X18))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_zfmisc_1])])])).
% 0.13/0.37  fof(c_0_11, plain, ![X7, X8]:k2_tarski(X7,X8)=k2_xboole_0(k1_tarski(X7),k1_tarski(X8)), inference(variable_rename,[status(thm)],[t41_enumset1])).
% 0.13/0.37  fof(c_0_12, plain, ![X4]:(~v1_xboole_0(X4)|X4=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).
% 0.13/0.37  cnf(c_0_13, plain, (r2_hidden(X1,X2)|v1_xboole_0(X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.37  cnf(c_0_14, negated_conjecture, (m1_subset_1(esk4_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.37  cnf(c_0_15, plain, (r1_tarski(k2_tarski(X1,X3),X2)|~r2_hidden(X1,X2)|~r2_hidden(X3,X2)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.37  cnf(c_0_16, plain, (k2_tarski(X1,X2)=k2_xboole_0(k1_tarski(X1),k1_tarski(X2))), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.37  cnf(c_0_17, plain, (X1=k1_xboole_0|~v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.37  cnf(c_0_18, negated_conjecture, (r2_hidden(esk4_0,esk2_0)|v1_xboole_0(esk2_0)), inference(spm,[status(thm)],[c_0_13, c_0_14])).
% 0.13/0.37  cnf(c_0_19, negated_conjecture, (esk2_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.37  cnf(c_0_20, negated_conjecture, (m1_subset_1(esk3_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.37  cnf(c_0_21, plain, (r1_tarski(k2_xboole_0(k1_tarski(X1),k1_tarski(X3)),X2)|~r2_hidden(X3,X2)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[c_0_15, c_0_16])).
% 0.13/0.37  cnf(c_0_22, negated_conjecture, (r2_hidden(esk4_0,esk2_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_17, c_0_18]), c_0_19])).
% 0.13/0.37  cnf(c_0_23, negated_conjecture, (r2_hidden(esk3_0,esk2_0)|v1_xboole_0(esk2_0)), inference(spm,[status(thm)],[c_0_13, c_0_20])).
% 0.13/0.37  fof(c_0_24, plain, ![X9, X10, X11, X12, X13, X14]:(((~r2_hidden(X11,X10)|r1_tarski(X11,X9)|X10!=k1_zfmisc_1(X9))&(~r1_tarski(X12,X9)|r2_hidden(X12,X10)|X10!=k1_zfmisc_1(X9)))&((~r2_hidden(esk1_2(X13,X14),X14)|~r1_tarski(esk1_2(X13,X14),X13)|X14=k1_zfmisc_1(X13))&(r2_hidden(esk1_2(X13,X14),X14)|r1_tarski(esk1_2(X13,X14),X13)|X14=k1_zfmisc_1(X13)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_zfmisc_1])])])])])])).
% 0.13/0.37  cnf(c_0_25, negated_conjecture, (r1_tarski(k2_xboole_0(k1_tarski(X1),k1_tarski(esk4_0)),esk2_0)|~r2_hidden(X1,esk2_0)), inference(spm,[status(thm)],[c_0_21, c_0_22])).
% 0.13/0.37  cnf(c_0_26, negated_conjecture, (r2_hidden(esk3_0,esk2_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_17, c_0_23]), c_0_19])).
% 0.13/0.37  cnf(c_0_27, plain, (r2_hidden(X1,X3)|~r1_tarski(X1,X2)|X3!=k1_zfmisc_1(X2)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.37  cnf(c_0_28, negated_conjecture, (r1_tarski(k2_xboole_0(k1_tarski(esk3_0),k1_tarski(esk4_0)),esk2_0)), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.13/0.37  cnf(c_0_29, negated_conjecture, (r2_hidden(k2_xboole_0(k1_tarski(esk3_0),k1_tarski(esk4_0)),X1)|X1!=k1_zfmisc_1(esk2_0)), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.13/0.37  cnf(c_0_30, negated_conjecture, (~m1_subset_1(k2_tarski(esk3_0,esk4_0),k1_zfmisc_1(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.37  fof(c_0_31, plain, ![X21]:~v1_xboole_0(k1_zfmisc_1(X21)), inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[fc1_subset_1])])).
% 0.13/0.37  cnf(c_0_32, plain, (m1_subset_1(X1,X2)|v1_xboole_0(X2)|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.37  cnf(c_0_33, negated_conjecture, (r2_hidden(k2_xboole_0(k1_tarski(esk3_0),k1_tarski(esk4_0)),k1_zfmisc_1(esk2_0))), inference(er,[status(thm)],[c_0_29])).
% 0.13/0.37  cnf(c_0_34, negated_conjecture, (~m1_subset_1(k2_xboole_0(k1_tarski(esk3_0),k1_tarski(esk4_0)),k1_zfmisc_1(esk2_0))), inference(rw,[status(thm)],[c_0_30, c_0_16])).
% 0.13/0.37  cnf(c_0_35, plain, (~v1_xboole_0(k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.13/0.37  cnf(c_0_36, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_33]), c_0_34]), c_0_35]), ['proof']).
% 0.13/0.37  # SZS output end CNFRefutation
% 0.13/0.37  # Proof object total steps             : 37
% 0.13/0.37  # Proof object clause steps            : 22
% 0.13/0.37  # Proof object formula steps           : 15
% 0.13/0.37  # Proof object conjectures             : 17
% 0.13/0.37  # Proof object clause conjectures      : 14
% 0.13/0.37  # Proof object formula conjectures     : 3
% 0.13/0.37  # Proof object initial clauses used    : 11
% 0.13/0.37  # Proof object initial formulas used   : 7
% 0.13/0.37  # Proof object generating inferences   : 9
% 0.13/0.37  # Proof object simplifying inferences  : 6
% 0.13/0.37  # Training examples: 0 positive, 0 negative
% 0.13/0.37  # Parsed axioms                        : 8
% 0.13/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.37  # Initial clauses                      : 19
% 0.13/0.37  # Removed in clause preprocessing      : 1
% 0.13/0.37  # Initial clauses in saturation        : 18
% 0.13/0.37  # Processed clauses                    : 58
% 0.13/0.37  # ...of these trivial                  : 1
% 0.13/0.37  # ...subsumed                          : 2
% 0.13/0.37  # ...remaining for further processing  : 55
% 0.13/0.37  # Other redundant clauses eliminated   : 0
% 0.13/0.37  # Clauses deleted for lack of memory   : 0
% 0.13/0.37  # Backward-subsumed                    : 0
% 0.13/0.37  # Backward-rewritten                   : 2
% 0.13/0.37  # Generated clauses                    : 59
% 0.13/0.37  # ...of the previous two non-trivial   : 39
% 0.13/0.37  # Contextual simplify-reflections      : 0
% 0.13/0.37  # Paramodulations                      : 56
% 0.13/0.37  # Factorizations                       : 0
% 0.13/0.37  # Equation resolutions                 : 3
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
% 0.13/0.37  # Current number of processed clauses  : 35
% 0.13/0.37  #    Positive orientable unit clauses  : 10
% 0.13/0.37  #    Positive unorientable unit clauses: 1
% 0.13/0.37  #    Negative unit clauses             : 3
% 0.13/0.37  #    Non-unit-clauses                  : 21
% 0.13/0.37  # Current number of unprocessed clauses: 11
% 0.13/0.37  # ...number of literals in the above   : 32
% 0.13/0.37  # Current number of archived formulas  : 0
% 0.13/0.37  # Current number of archived clauses   : 21
% 0.13/0.37  # Clause-clause subsumption calls (NU) : 41
% 0.13/0.37  # Rec. Clause-clause subsumption calls : 41
% 0.13/0.37  # Non-unit clause-clause subsumptions  : 1
% 0.13/0.37  # Unit Clause-clause subsumption calls : 24
% 0.13/0.37  # Rewrite failures with RHS unbound    : 0
% 0.13/0.37  # BW rewrite match attempts            : 18
% 0.13/0.37  # BW rewrite match successes           : 8
% 0.13/0.37  # Condensation attempts                : 0
% 0.13/0.37  # Condensation successes               : 0
% 0.13/0.37  # Termbank termtop insertions          : 1845
% 0.13/0.37  
% 0.13/0.37  # -------------------------------------------------
% 0.13/0.37  # User time                : 0.030 s
% 0.13/0.37  # System time              : 0.002 s
% 0.13/0.37  # Total time               : 0.032 s
% 0.13/0.37  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
