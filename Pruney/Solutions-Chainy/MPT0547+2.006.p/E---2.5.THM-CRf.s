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
% DateTime   : Thu Dec  3 10:50:30 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   37 (  76 expanded)
%              Number of clauses        :   18 (  32 expanded)
%              Number of leaves         :    9 (  21 expanded)
%              Depth                    :    9
%              Number of atoms          :   83 ( 125 expanded)
%              Number of equality atoms :   26 (  65 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t58_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7] : k5_enumset1(X1,X2,X3,X4,X5,X6,X7) = k2_xboole_0(k1_enumset1(X1,X2,X3),k2_enumset1(X4,X5,X6,X7)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t58_enumset1)).

fof(t98_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t98_xboole_1)).

fof(t49_zfmisc_1,axiom,(
    ! [X1,X2] : k2_xboole_0(k1_tarski(X1),X2) != k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t49_zfmisc_1)).

fof(t94_enumset1,axiom,(
    ! [X1] : k5_enumset1(X1,X1,X1,X1,X1,X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t94_enumset1)).

fof(l22_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( r2_hidden(X1,X2)
     => k2_xboole_0(k1_tarski(X1),X2) = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l22_zfmisc_1)).

fof(t143_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( r2_hidden(X1,k9_relat_1(X3,X2))
      <=> ? [X4] :
            ( r2_hidden(X4,k1_relat_1(X3))
            & r2_hidden(k4_tarski(X4,X1),X3)
            & r2_hidden(X4,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t143_relat_1)).

fof(d2_setfam_1,axiom,(
    ! [X1,X2] :
      ( r1_setfam_1(X1,X2)
    <=> ! [X3] :
          ~ ( r2_hidden(X3,X1)
            & ! [X4] :
                ~ ( r2_hidden(X4,X2)
                  & r1_tarski(X3,X4) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_setfam_1)).

fof(t149_relat_1,conjecture,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k9_relat_1(X1,k1_xboole_0) = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t149_relat_1)).

fof(t21_setfam_1,axiom,(
    ! [X1] :
      ( r1_setfam_1(X1,k1_xboole_0)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t21_setfam_1)).

fof(c_0_9,plain,(
    ! [X10,X11,X12,X13,X14,X15,X16] : k5_enumset1(X10,X11,X12,X13,X14,X15,X16) = k2_xboole_0(k1_enumset1(X10,X11,X12),k2_enumset1(X13,X14,X15,X16)) ),
    inference(variable_rename,[status(thm)],[t58_enumset1])).

fof(c_0_10,plain,(
    ! [X8,X9] : k2_xboole_0(X8,X9) = k5_xboole_0(X8,k4_xboole_0(X9,X8)) ),
    inference(variable_rename,[status(thm)],[t98_xboole_1])).

fof(c_0_11,plain,(
    ! [X20,X21] : k2_xboole_0(k1_tarski(X20),X21) != k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t49_zfmisc_1])).

fof(c_0_12,plain,(
    ! [X17] : k5_enumset1(X17,X17,X17,X17,X17,X17,X17) = k1_tarski(X17) ),
    inference(variable_rename,[status(thm)],[t94_enumset1])).

cnf(c_0_13,plain,
    ( k5_enumset1(X1,X2,X3,X4,X5,X6,X7) = k2_xboole_0(k1_enumset1(X1,X2,X3),k2_enumset1(X4,X5,X6,X7)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_14,plain,
    ( k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_15,plain,(
    ! [X18,X19] :
      ( ~ r2_hidden(X18,X19)
      | k2_xboole_0(k1_tarski(X18),X19) = X19 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l22_zfmisc_1])])).

cnf(c_0_16,plain,
    ( k2_xboole_0(k1_tarski(X1),X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_17,plain,
    ( k5_enumset1(X1,X1,X1,X1,X1,X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_18,plain,
    ( k5_enumset1(X1,X2,X3,X4,X5,X6,X7) = k5_xboole_0(k1_enumset1(X1,X2,X3),k4_xboole_0(k2_enumset1(X4,X5,X6,X7),k1_enumset1(X1,X2,X3))) ),
    inference(rw,[status(thm)],[c_0_13,c_0_14])).

cnf(c_0_19,plain,
    ( k2_xboole_0(k1_tarski(X1),X2) = X2
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_20,plain,
    ( k5_xboole_0(k5_xboole_0(k1_enumset1(X1,X1,X1),k4_xboole_0(k2_enumset1(X1,X1,X1,X1),k1_enumset1(X1,X1,X1))),k4_xboole_0(X2,k5_xboole_0(k1_enumset1(X1,X1,X1),k4_xboole_0(k2_enumset1(X1,X1,X1,X1),k1_enumset1(X1,X1,X1))))) != k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_16,c_0_14]),c_0_17]),c_0_17]),c_0_18]),c_0_18])).

cnf(c_0_21,plain,
    ( k5_xboole_0(k5_xboole_0(k1_enumset1(X1,X1,X1),k4_xboole_0(k2_enumset1(X1,X1,X1,X1),k1_enumset1(X1,X1,X1))),k4_xboole_0(X2,k5_xboole_0(k1_enumset1(X1,X1,X1),k4_xboole_0(k2_enumset1(X1,X1,X1,X1),k1_enumset1(X1,X1,X1))))) = X2
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19,c_0_14]),c_0_17]),c_0_17]),c_0_18]),c_0_18])).

fof(c_0_22,plain,(
    ! [X31,X32,X33,X35] :
      ( ( r2_hidden(esk3_3(X31,X32,X33),k1_relat_1(X33))
        | ~ r2_hidden(X31,k9_relat_1(X33,X32))
        | ~ v1_relat_1(X33) )
      & ( r2_hidden(k4_tarski(esk3_3(X31,X32,X33),X31),X33)
        | ~ r2_hidden(X31,k9_relat_1(X33,X32))
        | ~ v1_relat_1(X33) )
      & ( r2_hidden(esk3_3(X31,X32,X33),X32)
        | ~ r2_hidden(X31,k9_relat_1(X33,X32))
        | ~ v1_relat_1(X33) )
      & ( ~ r2_hidden(X35,k1_relat_1(X33))
        | ~ r2_hidden(k4_tarski(X35,X31),X33)
        | ~ r2_hidden(X35,X32)
        | r2_hidden(X31,k9_relat_1(X33,X32))
        | ~ v1_relat_1(X33) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t143_relat_1])])])])])).

cnf(c_0_23,plain,
    ( ~ r2_hidden(X1,k1_xboole_0) ),
    inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_21])])).

cnf(c_0_24,plain,
    ( r2_hidden(esk3_3(X1,X2,X3),X2)
    | ~ r2_hidden(X1,k9_relat_1(X3,X2))
    | ~ v1_relat_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_25,plain,(
    ! [X22,X23,X24,X26,X27,X29] :
      ( ( r2_hidden(esk1_3(X22,X23,X24),X23)
        | ~ r2_hidden(X24,X22)
        | ~ r1_setfam_1(X22,X23) )
      & ( r1_tarski(X24,esk1_3(X22,X23,X24))
        | ~ r2_hidden(X24,X22)
        | ~ r1_setfam_1(X22,X23) )
      & ( r2_hidden(esk2_2(X26,X27),X26)
        | r1_setfam_1(X26,X27) )
      & ( ~ r2_hidden(X29,X27)
        | ~ r1_tarski(esk2_2(X26,X27),X29)
        | r1_setfam_1(X26,X27) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_setfam_1])])])])])])).

fof(c_0_26,negated_conjecture,(
    ~ ! [X1] :
        ( v1_relat_1(X1)
       => k9_relat_1(X1,k1_xboole_0) = k1_xboole_0 ) ),
    inference(assume_negation,[status(cth)],[t149_relat_1])).

fof(c_0_27,plain,(
    ! [X30] :
      ( ~ r1_setfam_1(X30,k1_xboole_0)
      | X30 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t21_setfam_1])])).

cnf(c_0_28,plain,
    ( ~ v1_relat_1(X1)
    | ~ r2_hidden(X2,k9_relat_1(X1,k1_xboole_0)) ),
    inference(spm,[status(thm)],[c_0_23,c_0_24])).

cnf(c_0_29,plain,
    ( r2_hidden(esk2_2(X1,X2),X1)
    | r1_setfam_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

fof(c_0_30,negated_conjecture,
    ( v1_relat_1(esk4_0)
    & k9_relat_1(esk4_0,k1_xboole_0) != k1_xboole_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_26])])])).

cnf(c_0_31,plain,
    ( X1 = k1_xboole_0
    | ~ r1_setfam_1(X1,k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_32,plain,
    ( r1_setfam_1(k9_relat_1(X1,k1_xboole_0),X2)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_33,negated_conjecture,
    ( k9_relat_1(esk4_0,k1_xboole_0) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_34,plain,
    ( k9_relat_1(X1,k1_xboole_0) = k1_xboole_0
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_31,c_0_32])).

cnf(c_0_35,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_36,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_35])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n001.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 19:30:45 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.20/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S5PRR_RG_S04BN
% 0.20/0.37  # and selection function PSelectComplexExceptUniqMaxHorn.
% 0.20/0.37  #
% 0.20/0.37  # Preprocessing time       : 0.027 s
% 0.20/0.37  # Presaturation interreduction done
% 0.20/0.37  
% 0.20/0.37  # Proof found!
% 0.20/0.37  # SZS status Theorem
% 0.20/0.37  # SZS output start CNFRefutation
% 0.20/0.37  fof(t58_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7]:k5_enumset1(X1,X2,X3,X4,X5,X6,X7)=k2_xboole_0(k1_enumset1(X1,X2,X3),k2_enumset1(X4,X5,X6,X7)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t58_enumset1)).
% 0.20/0.37  fof(t98_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t98_xboole_1)).
% 0.20/0.37  fof(t49_zfmisc_1, axiom, ![X1, X2]:k2_xboole_0(k1_tarski(X1),X2)!=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t49_zfmisc_1)).
% 0.20/0.37  fof(t94_enumset1, axiom, ![X1]:k5_enumset1(X1,X1,X1,X1,X1,X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t94_enumset1)).
% 0.20/0.37  fof(l22_zfmisc_1, axiom, ![X1, X2]:(r2_hidden(X1,X2)=>k2_xboole_0(k1_tarski(X1),X2)=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l22_zfmisc_1)).
% 0.20/0.37  fof(t143_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>(r2_hidden(X1,k9_relat_1(X3,X2))<=>?[X4]:((r2_hidden(X4,k1_relat_1(X3))&r2_hidden(k4_tarski(X4,X1),X3))&r2_hidden(X4,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t143_relat_1)).
% 0.20/0.37  fof(d2_setfam_1, axiom, ![X1, X2]:(r1_setfam_1(X1,X2)<=>![X3]:~((r2_hidden(X3,X1)&![X4]:~((r2_hidden(X4,X2)&r1_tarski(X3,X4)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d2_setfam_1)).
% 0.20/0.37  fof(t149_relat_1, conjecture, ![X1]:(v1_relat_1(X1)=>k9_relat_1(X1,k1_xboole_0)=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t149_relat_1)).
% 0.20/0.37  fof(t21_setfam_1, axiom, ![X1]:(r1_setfam_1(X1,k1_xboole_0)=>X1=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t21_setfam_1)).
% 0.20/0.37  fof(c_0_9, plain, ![X10, X11, X12, X13, X14, X15, X16]:k5_enumset1(X10,X11,X12,X13,X14,X15,X16)=k2_xboole_0(k1_enumset1(X10,X11,X12),k2_enumset1(X13,X14,X15,X16)), inference(variable_rename,[status(thm)],[t58_enumset1])).
% 0.20/0.37  fof(c_0_10, plain, ![X8, X9]:k2_xboole_0(X8,X9)=k5_xboole_0(X8,k4_xboole_0(X9,X8)), inference(variable_rename,[status(thm)],[t98_xboole_1])).
% 0.20/0.37  fof(c_0_11, plain, ![X20, X21]:k2_xboole_0(k1_tarski(X20),X21)!=k1_xboole_0, inference(variable_rename,[status(thm)],[t49_zfmisc_1])).
% 0.20/0.37  fof(c_0_12, plain, ![X17]:k5_enumset1(X17,X17,X17,X17,X17,X17,X17)=k1_tarski(X17), inference(variable_rename,[status(thm)],[t94_enumset1])).
% 0.20/0.37  cnf(c_0_13, plain, (k5_enumset1(X1,X2,X3,X4,X5,X6,X7)=k2_xboole_0(k1_enumset1(X1,X2,X3),k2_enumset1(X4,X5,X6,X7))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.20/0.37  cnf(c_0_14, plain, (k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.20/0.37  fof(c_0_15, plain, ![X18, X19]:(~r2_hidden(X18,X19)|k2_xboole_0(k1_tarski(X18),X19)=X19), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l22_zfmisc_1])])).
% 0.20/0.37  cnf(c_0_16, plain, (k2_xboole_0(k1_tarski(X1),X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.37  cnf(c_0_17, plain, (k5_enumset1(X1,X1,X1,X1,X1,X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.37  cnf(c_0_18, plain, (k5_enumset1(X1,X2,X3,X4,X5,X6,X7)=k5_xboole_0(k1_enumset1(X1,X2,X3),k4_xboole_0(k2_enumset1(X4,X5,X6,X7),k1_enumset1(X1,X2,X3)))), inference(rw,[status(thm)],[c_0_13, c_0_14])).
% 0.20/0.37  cnf(c_0_19, plain, (k2_xboole_0(k1_tarski(X1),X2)=X2|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.37  cnf(c_0_20, plain, (k5_xboole_0(k5_xboole_0(k1_enumset1(X1,X1,X1),k4_xboole_0(k2_enumset1(X1,X1,X1,X1),k1_enumset1(X1,X1,X1))),k4_xboole_0(X2,k5_xboole_0(k1_enumset1(X1,X1,X1),k4_xboole_0(k2_enumset1(X1,X1,X1,X1),k1_enumset1(X1,X1,X1)))))!=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_16, c_0_14]), c_0_17]), c_0_17]), c_0_18]), c_0_18])).
% 0.20/0.37  cnf(c_0_21, plain, (k5_xboole_0(k5_xboole_0(k1_enumset1(X1,X1,X1),k4_xboole_0(k2_enumset1(X1,X1,X1,X1),k1_enumset1(X1,X1,X1))),k4_xboole_0(X2,k5_xboole_0(k1_enumset1(X1,X1,X1),k4_xboole_0(k2_enumset1(X1,X1,X1,X1),k1_enumset1(X1,X1,X1)))))=X2|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19, c_0_14]), c_0_17]), c_0_17]), c_0_18]), c_0_18])).
% 0.20/0.37  fof(c_0_22, plain, ![X31, X32, X33, X35]:((((r2_hidden(esk3_3(X31,X32,X33),k1_relat_1(X33))|~r2_hidden(X31,k9_relat_1(X33,X32))|~v1_relat_1(X33))&(r2_hidden(k4_tarski(esk3_3(X31,X32,X33),X31),X33)|~r2_hidden(X31,k9_relat_1(X33,X32))|~v1_relat_1(X33)))&(r2_hidden(esk3_3(X31,X32,X33),X32)|~r2_hidden(X31,k9_relat_1(X33,X32))|~v1_relat_1(X33)))&(~r2_hidden(X35,k1_relat_1(X33))|~r2_hidden(k4_tarski(X35,X31),X33)|~r2_hidden(X35,X32)|r2_hidden(X31,k9_relat_1(X33,X32))|~v1_relat_1(X33))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t143_relat_1])])])])])).
% 0.20/0.37  cnf(c_0_23, plain, (~r2_hidden(X1,k1_xboole_0)), inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_20, c_0_21])])).
% 0.20/0.37  cnf(c_0_24, plain, (r2_hidden(esk3_3(X1,X2,X3),X2)|~r2_hidden(X1,k9_relat_1(X3,X2))|~v1_relat_1(X3)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.20/0.37  fof(c_0_25, plain, ![X22, X23, X24, X26, X27, X29]:(((r2_hidden(esk1_3(X22,X23,X24),X23)|~r2_hidden(X24,X22)|~r1_setfam_1(X22,X23))&(r1_tarski(X24,esk1_3(X22,X23,X24))|~r2_hidden(X24,X22)|~r1_setfam_1(X22,X23)))&((r2_hidden(esk2_2(X26,X27),X26)|r1_setfam_1(X26,X27))&(~r2_hidden(X29,X27)|~r1_tarski(esk2_2(X26,X27),X29)|r1_setfam_1(X26,X27)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_setfam_1])])])])])])).
% 0.20/0.37  fof(c_0_26, negated_conjecture, ~(![X1]:(v1_relat_1(X1)=>k9_relat_1(X1,k1_xboole_0)=k1_xboole_0)), inference(assume_negation,[status(cth)],[t149_relat_1])).
% 0.20/0.37  fof(c_0_27, plain, ![X30]:(~r1_setfam_1(X30,k1_xboole_0)|X30=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t21_setfam_1])])).
% 0.20/0.37  cnf(c_0_28, plain, (~v1_relat_1(X1)|~r2_hidden(X2,k9_relat_1(X1,k1_xboole_0))), inference(spm,[status(thm)],[c_0_23, c_0_24])).
% 0.20/0.37  cnf(c_0_29, plain, (r2_hidden(esk2_2(X1,X2),X1)|r1_setfam_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.20/0.37  fof(c_0_30, negated_conjecture, (v1_relat_1(esk4_0)&k9_relat_1(esk4_0,k1_xboole_0)!=k1_xboole_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_26])])])).
% 0.20/0.37  cnf(c_0_31, plain, (X1=k1_xboole_0|~r1_setfam_1(X1,k1_xboole_0)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.20/0.37  cnf(c_0_32, plain, (r1_setfam_1(k9_relat_1(X1,k1_xboole_0),X2)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_28, c_0_29])).
% 0.20/0.37  cnf(c_0_33, negated_conjecture, (k9_relat_1(esk4_0,k1_xboole_0)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.20/0.37  cnf(c_0_34, plain, (k9_relat_1(X1,k1_xboole_0)=k1_xboole_0|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_31, c_0_32])).
% 0.20/0.37  cnf(c_0_35, negated_conjecture, (v1_relat_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.20/0.37  cnf(c_0_36, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_35])]), ['proof']).
% 0.20/0.37  # SZS output end CNFRefutation
% 0.20/0.37  # Proof object total steps             : 37
% 0.20/0.37  # Proof object clause steps            : 18
% 0.20/0.37  # Proof object formula steps           : 19
% 0.20/0.37  # Proof object conjectures             : 6
% 0.20/0.37  # Proof object clause conjectures      : 3
% 0.20/0.37  # Proof object formula conjectures     : 3
% 0.20/0.37  # Proof object initial clauses used    : 10
% 0.20/0.37  # Proof object initial formulas used   : 9
% 0.20/0.37  # Proof object generating inferences   : 5
% 0.20/0.37  # Proof object simplifying inferences  : 14
% 0.20/0.37  # Training examples: 0 positive, 0 negative
% 0.20/0.37  # Parsed axioms                        : 9
% 0.20/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.37  # Initial clauses                      : 16
% 0.20/0.37  # Removed in clause preprocessing      : 3
% 0.20/0.37  # Initial clauses in saturation        : 13
% 0.20/0.37  # Processed clauses                    : 45
% 0.20/0.37  # ...of these trivial                  : 0
% 0.20/0.37  # ...subsumed                          : 5
% 0.20/0.37  # ...remaining for further processing  : 40
% 0.20/0.37  # Other redundant clauses eliminated   : 1
% 0.20/0.37  # Clauses deleted for lack of memory   : 0
% 0.20/0.37  # Backward-subsumed                    : 0
% 0.20/0.37  # Backward-rewritten                   : 0
% 0.20/0.37  # Generated clauses                    : 43
% 0.20/0.37  # ...of the previous two non-trivial   : 31
% 0.20/0.37  # Contextual simplify-reflections      : 1
% 0.20/0.37  # Paramodulations                      : 42
% 0.20/0.37  # Factorizations                       : 0
% 0.20/0.37  # Equation resolutions                 : 1
% 0.20/0.37  # Propositional unsat checks           : 0
% 0.20/0.37  #    Propositional check models        : 0
% 0.20/0.37  #    Propositional check unsatisfiable : 0
% 0.20/0.37  #    Propositional clauses             : 0
% 0.20/0.37  #    Propositional clauses after purity: 0
% 0.20/0.37  #    Propositional unsat core size     : 0
% 0.20/0.37  #    Propositional preprocessing time  : 0.000
% 0.20/0.37  #    Propositional encoding time       : 0.000
% 0.20/0.37  #    Propositional solver time         : 0.000
% 0.20/0.37  #    Success case prop preproc time    : 0.000
% 0.20/0.37  #    Success case prop encoding time   : 0.000
% 0.20/0.37  #    Success case prop solver time     : 0.000
% 0.20/0.37  # Current number of processed clauses  : 27
% 0.20/0.37  #    Positive orientable unit clauses  : 2
% 0.20/0.37  #    Positive unorientable unit clauses: 0
% 0.20/0.37  #    Negative unit clauses             : 3
% 0.20/0.37  #    Non-unit-clauses                  : 22
% 0.20/0.37  # Current number of unprocessed clauses: 12
% 0.20/0.37  # ...number of literals in the above   : 39
% 0.20/0.37  # Current number of archived formulas  : 0
% 0.20/0.37  # Current number of archived clauses   : 16
% 0.20/0.37  # Clause-clause subsumption calls (NU) : 135
% 0.20/0.37  # Rec. Clause-clause subsumption calls : 86
% 0.20/0.37  # Non-unit clause-clause subsumptions  : 3
% 0.20/0.37  # Unit Clause-clause subsumption calls : 12
% 0.20/0.37  # Rewrite failures with RHS unbound    : 0
% 0.20/0.37  # BW rewrite match attempts            : 0
% 0.20/0.37  # BW rewrite match successes           : 0
% 0.20/0.37  # Condensation attempts                : 0
% 0.20/0.37  # Condensation successes               : 0
% 0.20/0.37  # Termbank termtop insertions          : 1757
% 0.20/0.37  
% 0.20/0.37  # -------------------------------------------------
% 0.20/0.37  # User time                : 0.029 s
% 0.20/0.37  # System time              : 0.004 s
% 0.20/0.37  # Total time               : 0.033 s
% 0.20/0.37  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
