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
% DateTime   : Thu Dec  3 10:46:59 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   39 ( 122 expanded)
%              Number of clauses        :   24 (  57 expanded)
%              Number of leaves         :    7 (  28 expanded)
%              Depth                    :    9
%              Number of atoms          :  129 ( 464 expanded)
%              Number of equality atoms :   22 ( 102 expanded)
%              Maximal formula depth    :   17 (   5 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t65_subset_1,conjecture,(
    ! [X1,X2,X3,X4] :
      ~ ( r2_hidden(X4,X3)
        & r1_tarski(X3,k2_zfmisc_1(X1,X2))
        & ! [X5] :
            ( m1_subset_1(X5,X1)
           => ! [X6] :
                ( m1_subset_1(X6,X2)
               => X4 != k4_tarski(X5,X6) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_subset_1)).

fof(d2_subset_1,axiom,(
    ! [X1,X2] :
      ( ( ~ v1_xboole_0(X1)
       => ( m1_subset_1(X2,X1)
        <=> r2_hidden(X2,X1) ) )
      & ( v1_xboole_0(X1)
       => ( m1_subset_1(X2,X1)
        <=> v1_xboole_0(X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_subset_1)).

fof(d1_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
    <=> ! [X2] : ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_xboole_0)).

fof(d4_xboole_0,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k3_xboole_0(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( r2_hidden(X4,X1)
            & r2_hidden(X4,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_xboole_0)).

fof(t28_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k3_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).

fof(l139_zfmisc_1,axiom,(
    ! [X1,X2,X3] :
      ~ ( r2_hidden(X1,k2_zfmisc_1(X2,X3))
        & ! [X4,X5] : k4_tarski(X4,X5) != X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l139_zfmisc_1)).

fof(l54_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X2,X4) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l54_zfmisc_1)).

fof(c_0_7,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ~ ( r2_hidden(X4,X3)
          & r1_tarski(X3,k2_zfmisc_1(X1,X2))
          & ! [X5] :
              ( m1_subset_1(X5,X1)
             => ! [X6] :
                  ( m1_subset_1(X6,X2)
                 => X4 != k4_tarski(X5,X6) ) ) ) ),
    inference(assume_negation,[status(cth)],[t65_subset_1])).

fof(c_0_8,plain,(
    ! [X31,X32] :
      ( ( ~ m1_subset_1(X32,X31)
        | r2_hidden(X32,X31)
        | v1_xboole_0(X31) )
      & ( ~ r2_hidden(X32,X31)
        | m1_subset_1(X32,X31)
        | v1_xboole_0(X31) )
      & ( ~ m1_subset_1(X32,X31)
        | v1_xboole_0(X32)
        | ~ v1_xboole_0(X31) )
      & ( ~ v1_xboole_0(X32)
        | m1_subset_1(X32,X31)
        | ~ v1_xboole_0(X31) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d2_subset_1])])])])).

fof(c_0_9,plain,(
    ! [X7,X8,X9] :
      ( ( ~ v1_xboole_0(X7)
        | ~ r2_hidden(X8,X7) )
      & ( r2_hidden(esk1_1(X9),X9)
        | v1_xboole_0(X9) ) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).

fof(c_0_10,plain,(
    ! [X11,X12,X13,X14,X15,X16,X17,X18] :
      ( ( r2_hidden(X14,X11)
        | ~ r2_hidden(X14,X13)
        | X13 != k3_xboole_0(X11,X12) )
      & ( r2_hidden(X14,X12)
        | ~ r2_hidden(X14,X13)
        | X13 != k3_xboole_0(X11,X12) )
      & ( ~ r2_hidden(X15,X11)
        | ~ r2_hidden(X15,X12)
        | r2_hidden(X15,X13)
        | X13 != k3_xboole_0(X11,X12) )
      & ( ~ r2_hidden(esk2_3(X16,X17,X18),X18)
        | ~ r2_hidden(esk2_3(X16,X17,X18),X16)
        | ~ r2_hidden(esk2_3(X16,X17,X18),X17)
        | X18 = k3_xboole_0(X16,X17) )
      & ( r2_hidden(esk2_3(X16,X17,X18),X16)
        | r2_hidden(esk2_3(X16,X17,X18),X18)
        | X18 = k3_xboole_0(X16,X17) )
      & ( r2_hidden(esk2_3(X16,X17,X18),X17)
        | r2_hidden(esk2_3(X16,X17,X18),X18)
        | X18 = k3_xboole_0(X16,X17) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_xboole_0])])])])])])).

fof(c_0_11,plain,(
    ! [X20,X21] :
      ( ~ r1_tarski(X20,X21)
      | k3_xboole_0(X20,X21) = X20 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).

fof(c_0_12,negated_conjecture,(
    ! [X37,X38] :
      ( r2_hidden(esk8_0,esk7_0)
      & r1_tarski(esk7_0,k2_zfmisc_1(esk5_0,esk6_0))
      & ( ~ m1_subset_1(X37,esk5_0)
        | ~ m1_subset_1(X38,esk6_0)
        | esk8_0 != k4_tarski(X37,X38) ) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])])).

cnf(c_0_13,plain,
    ( m1_subset_1(X1,X2)
    | v1_xboole_0(X2)
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_14,plain,
    ( ~ v1_xboole_0(X1)
    | ~ r2_hidden(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_15,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(X1,X3)
    | X3 != k3_xboole_0(X4,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_16,plain,
    ( k3_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_17,negated_conjecture,
    ( r1_tarski(esk7_0,k2_zfmisc_1(esk5_0,esk6_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_18,negated_conjecture,
    ( ~ m1_subset_1(X1,esk5_0)
    | ~ m1_subset_1(X2,esk6_0)
    | esk8_0 != k4_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_19,plain,
    ( m1_subset_1(X1,X2)
    | ~ r2_hidden(X1,X2) ),
    inference(csr,[status(thm)],[c_0_13,c_0_14])).

fof(c_0_20,plain,(
    ! [X22,X23,X24] :
      ( ~ r2_hidden(X22,k2_zfmisc_1(X23,X24))
      | k4_tarski(esk3_1(X22),esk4_1(X22)) = X22 ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[l139_zfmisc_1])])])])])).

cnf(c_0_21,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(X1,k3_xboole_0(X3,X2)) ),
    inference(er,[status(thm)],[c_0_15])).

cnf(c_0_22,negated_conjecture,
    ( k3_xboole_0(esk7_0,k2_zfmisc_1(esk5_0,esk6_0)) = esk7_0 ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

fof(c_0_23,plain,(
    ! [X27,X28,X29,X30] :
      ( ( r2_hidden(X27,X29)
        | ~ r2_hidden(k4_tarski(X27,X28),k2_zfmisc_1(X29,X30)) )
      & ( r2_hidden(X28,X30)
        | ~ r2_hidden(k4_tarski(X27,X28),k2_zfmisc_1(X29,X30)) )
      & ( ~ r2_hidden(X27,X29)
        | ~ r2_hidden(X28,X30)
        | r2_hidden(k4_tarski(X27,X28),k2_zfmisc_1(X29,X30)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l54_zfmisc_1])])])).

cnf(c_0_24,negated_conjecture,
    ( k4_tarski(X1,X2) != esk8_0
    | ~ m1_subset_1(X1,esk5_0)
    | ~ r2_hidden(X2,esk6_0) ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_25,plain,
    ( k4_tarski(esk3_1(X1),esk4_1(X1)) = X1
    | ~ r2_hidden(X1,k2_zfmisc_1(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_26,negated_conjecture,
    ( r2_hidden(X1,k2_zfmisc_1(esk5_0,esk6_0))
    | ~ r2_hidden(X1,esk7_0) ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_27,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(k4_tarski(X3,X1),k2_zfmisc_1(X4,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_28,negated_conjecture,
    ( k4_tarski(X1,X2) != esk8_0
    | ~ r2_hidden(X2,esk6_0)
    | ~ r2_hidden(X1,esk5_0) ),
    inference(spm,[status(thm)],[c_0_24,c_0_19])).

cnf(c_0_29,negated_conjecture,
    ( k4_tarski(esk3_1(X1),esk4_1(X1)) = X1
    | ~ r2_hidden(X1,esk7_0) ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_30,negated_conjecture,
    ( r2_hidden(esk8_0,esk7_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_31,negated_conjecture,
    ( r2_hidden(X1,esk6_0)
    | ~ r2_hidden(k4_tarski(X2,X1),esk7_0) ),
    inference(spm,[status(thm)],[c_0_27,c_0_26])).

cnf(c_0_32,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_33,negated_conjecture,
    ( ~ r2_hidden(esk4_1(esk8_0),esk6_0)
    | ~ r2_hidden(esk3_1(esk8_0),esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_29])]),c_0_30])])).

cnf(c_0_34,negated_conjecture,
    ( r2_hidden(esk4_1(X1),esk6_0)
    | ~ r2_hidden(X1,esk7_0) ),
    inference(spm,[status(thm)],[c_0_31,c_0_29])).

cnf(c_0_35,negated_conjecture,
    ( r2_hidden(X1,esk5_0)
    | ~ r2_hidden(k4_tarski(X1,X2),esk7_0) ),
    inference(spm,[status(thm)],[c_0_32,c_0_26])).

cnf(c_0_36,negated_conjecture,
    ( ~ r2_hidden(esk3_1(esk8_0),esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_30])])).

cnf(c_0_37,negated_conjecture,
    ( r2_hidden(esk3_1(X1),esk5_0)
    | ~ r2_hidden(X1,esk7_0) ),
    inference(spm,[status(thm)],[c_0_35,c_0_29])).

cnf(c_0_38,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_37]),c_0_30])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.33  % Computer   : n002.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 14:30:21 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.33  # Version: 2.5pre002
% 0.13/0.33  # No SInE strategy applied
% 0.13/0.33  # Trying AutoSched0 for 299 seconds
% 0.13/0.36  # AutoSched0-Mode selected heuristic G_E___208_C02CMA_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.13/0.36  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.13/0.36  #
% 0.13/0.36  # Preprocessing time       : 0.028 s
% 0.13/0.36  # Presaturation interreduction done
% 0.13/0.36  
% 0.13/0.36  # Proof found!
% 0.13/0.36  # SZS status Theorem
% 0.13/0.36  # SZS output start CNFRefutation
% 0.13/0.36  fof(t65_subset_1, conjecture, ![X1, X2, X3, X4]:~(((r2_hidden(X4,X3)&r1_tarski(X3,k2_zfmisc_1(X1,X2)))&![X5]:(m1_subset_1(X5,X1)=>![X6]:(m1_subset_1(X6,X2)=>X4!=k4_tarski(X5,X6))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t65_subset_1)).
% 0.13/0.36  fof(d2_subset_1, axiom, ![X1, X2]:((~(v1_xboole_0(X1))=>(m1_subset_1(X2,X1)<=>r2_hidden(X2,X1)))&(v1_xboole_0(X1)=>(m1_subset_1(X2,X1)<=>v1_xboole_0(X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d2_subset_1)).
% 0.13/0.36  fof(d1_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)<=>![X2]:~(r2_hidden(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_xboole_0)).
% 0.13/0.36  fof(d4_xboole_0, axiom, ![X1, X2, X3]:(X3=k3_xboole_0(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>(r2_hidden(X4,X1)&r2_hidden(X4,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d4_xboole_0)).
% 0.13/0.36  fof(t28_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k3_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t28_xboole_1)).
% 0.13/0.36  fof(l139_zfmisc_1, axiom, ![X1, X2, X3]:~((r2_hidden(X1,k2_zfmisc_1(X2,X3))&![X4, X5]:k4_tarski(X4,X5)!=X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l139_zfmisc_1)).
% 0.13/0.36  fof(l54_zfmisc_1, axiom, ![X1, X2, X3, X4]:(r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))<=>(r2_hidden(X1,X3)&r2_hidden(X2,X4))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l54_zfmisc_1)).
% 0.13/0.36  fof(c_0_7, negated_conjecture, ~(![X1, X2, X3, X4]:~(((r2_hidden(X4,X3)&r1_tarski(X3,k2_zfmisc_1(X1,X2)))&![X5]:(m1_subset_1(X5,X1)=>![X6]:(m1_subset_1(X6,X2)=>X4!=k4_tarski(X5,X6)))))), inference(assume_negation,[status(cth)],[t65_subset_1])).
% 0.13/0.36  fof(c_0_8, plain, ![X31, X32]:(((~m1_subset_1(X32,X31)|r2_hidden(X32,X31)|v1_xboole_0(X31))&(~r2_hidden(X32,X31)|m1_subset_1(X32,X31)|v1_xboole_0(X31)))&((~m1_subset_1(X32,X31)|v1_xboole_0(X32)|~v1_xboole_0(X31))&(~v1_xboole_0(X32)|m1_subset_1(X32,X31)|~v1_xboole_0(X31)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d2_subset_1])])])])).
% 0.13/0.36  fof(c_0_9, plain, ![X7, X8, X9]:((~v1_xboole_0(X7)|~r2_hidden(X8,X7))&(r2_hidden(esk1_1(X9),X9)|v1_xboole_0(X9))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).
% 0.13/0.36  fof(c_0_10, plain, ![X11, X12, X13, X14, X15, X16, X17, X18]:((((r2_hidden(X14,X11)|~r2_hidden(X14,X13)|X13!=k3_xboole_0(X11,X12))&(r2_hidden(X14,X12)|~r2_hidden(X14,X13)|X13!=k3_xboole_0(X11,X12)))&(~r2_hidden(X15,X11)|~r2_hidden(X15,X12)|r2_hidden(X15,X13)|X13!=k3_xboole_0(X11,X12)))&((~r2_hidden(esk2_3(X16,X17,X18),X18)|(~r2_hidden(esk2_3(X16,X17,X18),X16)|~r2_hidden(esk2_3(X16,X17,X18),X17))|X18=k3_xboole_0(X16,X17))&((r2_hidden(esk2_3(X16,X17,X18),X16)|r2_hidden(esk2_3(X16,X17,X18),X18)|X18=k3_xboole_0(X16,X17))&(r2_hidden(esk2_3(X16,X17,X18),X17)|r2_hidden(esk2_3(X16,X17,X18),X18)|X18=k3_xboole_0(X16,X17))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_xboole_0])])])])])])).
% 0.13/0.36  fof(c_0_11, plain, ![X20, X21]:(~r1_tarski(X20,X21)|k3_xboole_0(X20,X21)=X20), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).
% 0.13/0.36  fof(c_0_12, negated_conjecture, ![X37, X38]:((r2_hidden(esk8_0,esk7_0)&r1_tarski(esk7_0,k2_zfmisc_1(esk5_0,esk6_0)))&(~m1_subset_1(X37,esk5_0)|(~m1_subset_1(X38,esk6_0)|esk8_0!=k4_tarski(X37,X38)))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])])).
% 0.13/0.36  cnf(c_0_13, plain, (m1_subset_1(X1,X2)|v1_xboole_0(X2)|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.36  cnf(c_0_14, plain, (~v1_xboole_0(X1)|~r2_hidden(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.36  cnf(c_0_15, plain, (r2_hidden(X1,X2)|~r2_hidden(X1,X3)|X3!=k3_xboole_0(X4,X2)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.36  cnf(c_0_16, plain, (k3_xboole_0(X1,X2)=X1|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.36  cnf(c_0_17, negated_conjecture, (r1_tarski(esk7_0,k2_zfmisc_1(esk5_0,esk6_0))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.36  cnf(c_0_18, negated_conjecture, (~m1_subset_1(X1,esk5_0)|~m1_subset_1(X2,esk6_0)|esk8_0!=k4_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.36  cnf(c_0_19, plain, (m1_subset_1(X1,X2)|~r2_hidden(X1,X2)), inference(csr,[status(thm)],[c_0_13, c_0_14])).
% 0.13/0.36  fof(c_0_20, plain, ![X22, X23, X24]:(~r2_hidden(X22,k2_zfmisc_1(X23,X24))|k4_tarski(esk3_1(X22),esk4_1(X22))=X22), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[l139_zfmisc_1])])])])])).
% 0.13/0.36  cnf(c_0_21, plain, (r2_hidden(X1,X2)|~r2_hidden(X1,k3_xboole_0(X3,X2))), inference(er,[status(thm)],[c_0_15])).
% 0.13/0.36  cnf(c_0_22, negated_conjecture, (k3_xboole_0(esk7_0,k2_zfmisc_1(esk5_0,esk6_0))=esk7_0), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.13/0.36  fof(c_0_23, plain, ![X27, X28, X29, X30]:(((r2_hidden(X27,X29)|~r2_hidden(k4_tarski(X27,X28),k2_zfmisc_1(X29,X30)))&(r2_hidden(X28,X30)|~r2_hidden(k4_tarski(X27,X28),k2_zfmisc_1(X29,X30))))&(~r2_hidden(X27,X29)|~r2_hidden(X28,X30)|r2_hidden(k4_tarski(X27,X28),k2_zfmisc_1(X29,X30)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l54_zfmisc_1])])])).
% 0.13/0.36  cnf(c_0_24, negated_conjecture, (k4_tarski(X1,X2)!=esk8_0|~m1_subset_1(X1,esk5_0)|~r2_hidden(X2,esk6_0)), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.13/0.36  cnf(c_0_25, plain, (k4_tarski(esk3_1(X1),esk4_1(X1))=X1|~r2_hidden(X1,k2_zfmisc_1(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.36  cnf(c_0_26, negated_conjecture, (r2_hidden(X1,k2_zfmisc_1(esk5_0,esk6_0))|~r2_hidden(X1,esk7_0)), inference(spm,[status(thm)],[c_0_21, c_0_22])).
% 0.13/0.36  cnf(c_0_27, plain, (r2_hidden(X1,X2)|~r2_hidden(k4_tarski(X3,X1),k2_zfmisc_1(X4,X2))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.36  cnf(c_0_28, negated_conjecture, (k4_tarski(X1,X2)!=esk8_0|~r2_hidden(X2,esk6_0)|~r2_hidden(X1,esk5_0)), inference(spm,[status(thm)],[c_0_24, c_0_19])).
% 0.13/0.36  cnf(c_0_29, negated_conjecture, (k4_tarski(esk3_1(X1),esk4_1(X1))=X1|~r2_hidden(X1,esk7_0)), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.13/0.36  cnf(c_0_30, negated_conjecture, (r2_hidden(esk8_0,esk7_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.36  cnf(c_0_31, negated_conjecture, (r2_hidden(X1,esk6_0)|~r2_hidden(k4_tarski(X2,X1),esk7_0)), inference(spm,[status(thm)],[c_0_27, c_0_26])).
% 0.13/0.36  cnf(c_0_32, plain, (r2_hidden(X1,X2)|~r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(X2,X4))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.36  cnf(c_0_33, negated_conjecture, (~r2_hidden(esk4_1(esk8_0),esk6_0)|~r2_hidden(esk3_1(esk8_0),esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_29])]), c_0_30])])).
% 0.13/0.36  cnf(c_0_34, negated_conjecture, (r2_hidden(esk4_1(X1),esk6_0)|~r2_hidden(X1,esk7_0)), inference(spm,[status(thm)],[c_0_31, c_0_29])).
% 0.13/0.36  cnf(c_0_35, negated_conjecture, (r2_hidden(X1,esk5_0)|~r2_hidden(k4_tarski(X1,X2),esk7_0)), inference(spm,[status(thm)],[c_0_32, c_0_26])).
% 0.13/0.36  cnf(c_0_36, negated_conjecture, (~r2_hidden(esk3_1(esk8_0),esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_30])])).
% 0.13/0.36  cnf(c_0_37, negated_conjecture, (r2_hidden(esk3_1(X1),esk5_0)|~r2_hidden(X1,esk7_0)), inference(spm,[status(thm)],[c_0_35, c_0_29])).
% 0.13/0.36  cnf(c_0_38, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_37]), c_0_30])]), ['proof']).
% 0.13/0.36  # SZS output end CNFRefutation
% 0.13/0.36  # Proof object total steps             : 39
% 0.13/0.36  # Proof object clause steps            : 24
% 0.13/0.36  # Proof object formula steps           : 15
% 0.13/0.36  # Proof object conjectures             : 18
% 0.13/0.36  # Proof object clause conjectures      : 15
% 0.13/0.36  # Proof object formula conjectures     : 3
% 0.13/0.36  # Proof object initial clauses used    : 10
% 0.13/0.36  # Proof object initial formulas used   : 7
% 0.13/0.36  # Proof object generating inferences   : 12
% 0.13/0.36  # Proof object simplifying inferences  : 9
% 0.13/0.36  # Training examples: 0 positive, 0 negative
% 0.13/0.36  # Parsed axioms                        : 7
% 0.13/0.36  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.36  # Initial clauses                      : 20
% 0.13/0.36  # Removed in clause preprocessing      : 0
% 0.13/0.36  # Initial clauses in saturation        : 20
% 0.13/0.36  # Processed clauses                    : 66
% 0.13/0.36  # ...of these trivial                  : 0
% 0.13/0.36  # ...subsumed                          : 4
% 0.13/0.36  # ...remaining for further processing  : 62
% 0.13/0.36  # Other redundant clauses eliminated   : 5
% 0.13/0.36  # Clauses deleted for lack of memory   : 0
% 0.13/0.36  # Backward-subsumed                    : 0
% 0.13/0.36  # Backward-rewritten                   : 0
% 0.13/0.36  # Generated clauses                    : 52
% 0.13/0.36  # ...of the previous two non-trivial   : 39
% 0.13/0.36  # Contextual simplify-reflections      : 1
% 0.13/0.36  # Paramodulations                      : 47
% 0.13/0.36  # Factorizations                       : 0
% 0.13/0.36  # Equation resolutions                 : 5
% 0.13/0.36  # Propositional unsat checks           : 0
% 0.13/0.36  #    Propositional check models        : 0
% 0.13/0.36  #    Propositional check unsatisfiable : 0
% 0.13/0.36  #    Propositional clauses             : 0
% 0.13/0.36  #    Propositional clauses after purity: 0
% 0.13/0.36  #    Propositional unsat core size     : 0
% 0.13/0.36  #    Propositional preprocessing time  : 0.000
% 0.13/0.36  #    Propositional encoding time       : 0.000
% 0.13/0.36  #    Propositional solver time         : 0.000
% 0.13/0.36  #    Success case prop preproc time    : 0.000
% 0.13/0.36  #    Success case prop encoding time   : 0.000
% 0.13/0.36  #    Success case prop solver time     : 0.000
% 0.13/0.36  # Current number of processed clauses  : 39
% 0.13/0.36  #    Positive orientable unit clauses  : 3
% 0.13/0.36  #    Positive unorientable unit clauses: 0
% 0.13/0.36  #    Negative unit clauses             : 4
% 0.13/0.36  #    Non-unit-clauses                  : 32
% 0.13/0.36  # Current number of unprocessed clauses: 13
% 0.13/0.36  # ...number of literals in the above   : 39
% 0.13/0.36  # Current number of archived formulas  : 0
% 0.13/0.36  # Current number of archived clauses   : 20
% 0.13/0.36  # Clause-clause subsumption calls (NU) : 150
% 0.13/0.36  # Rec. Clause-clause subsumption calls : 107
% 0.13/0.36  # Non-unit clause-clause subsumptions  : 2
% 0.13/0.36  # Unit Clause-clause subsumption calls : 52
% 0.13/0.36  # Rewrite failures with RHS unbound    : 0
% 0.13/0.36  # BW rewrite match attempts            : 0
% 0.13/0.36  # BW rewrite match successes           : 0
% 0.13/0.36  # Condensation attempts                : 0
% 0.13/0.36  # Condensation successes               : 0
% 0.13/0.36  # Termbank termtop insertions          : 2080
% 0.13/0.36  
% 0.13/0.36  # -------------------------------------------------
% 0.13/0.36  # User time                : 0.028 s
% 0.13/0.36  # System time              : 0.006 s
% 0.13/0.36  # Total time               : 0.034 s
% 0.13/0.36  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
