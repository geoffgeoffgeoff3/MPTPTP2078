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
% DateTime   : Thu Dec  3 10:54:39 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   52 ( 159 expanded)
%              Number of clauses        :   29 (  65 expanded)
%              Number of leaves         :   11 (  44 expanded)
%              Depth                    :   10
%              Number of atoms          :  100 ( 283 expanded)
%              Number of equality atoms :   40 ( 141 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t142_funct_1,conjecture,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( r2_hidden(X1,k2_relat_1(X2))
      <=> k10_relat_1(X2,k1_tarski(X1)) != k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t142_funct_1)).

fof(l27_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( ~ r2_hidden(X1,X2)
     => r1_xboole_0(k1_tarski(X1),X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l27_zfmisc_1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t72_enumset1)).

fof(t173_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( k10_relat_1(X2,X1) = k1_xboole_0
      <=> r1_xboole_0(k2_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t173_relat_1)).

fof(symmetry_r1_xboole_0,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
     => r1_xboole_0(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).

fof(t79_xboole_1,axiom,(
    ! [X1,X2] : r1_xboole_0(k4_xboole_0(X1,X2),X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t79_xboole_1)).

fof(t72_zfmisc_1,axiom,(
    ! [X1,X2,X3] :
      ( k4_xboole_0(k2_tarski(X1,X2),X3) = k2_tarski(X1,X2)
    <=> ( ~ r2_hidden(X1,X3)
        & ~ r2_hidden(X2,X3) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t72_zfmisc_1)).

fof(t83_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
    <=> k4_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t83_xboole_1)).

fof(c_0_11,negated_conjecture,(
    ~ ! [X1,X2] :
        ( v1_relat_1(X2)
       => ( r2_hidden(X1,k2_relat_1(X2))
        <=> k10_relat_1(X2,k1_tarski(X1)) != k1_xboole_0 ) ) ),
    inference(assume_negation,[status(cth)],[t142_funct_1])).

fof(c_0_12,plain,(
    ! [X21,X22] :
      ( r2_hidden(X21,X22)
      | r1_xboole_0(k1_tarski(X21),X22) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[l27_zfmisc_1])])])).

fof(c_0_13,plain,(
    ! [X11] : k2_tarski(X11,X11) = k1_tarski(X11) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_14,plain,(
    ! [X12,X13] : k1_enumset1(X12,X12,X13) = k2_tarski(X12,X13) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_15,plain,(
    ! [X14,X15,X16] : k2_enumset1(X14,X14,X15,X16) = k1_enumset1(X14,X15,X16) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_16,plain,(
    ! [X17,X18,X19,X20] : k3_enumset1(X17,X17,X18,X19,X20) = k2_enumset1(X17,X18,X19,X20) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_17,plain,(
    ! [X26,X27] :
      ( ( k10_relat_1(X27,X26) != k1_xboole_0
        | r1_xboole_0(k2_relat_1(X27),X26)
        | ~ v1_relat_1(X27) )
      & ( ~ r1_xboole_0(k2_relat_1(X27),X26)
        | k10_relat_1(X27,X26) = k1_xboole_0
        | ~ v1_relat_1(X27) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t173_relat_1])])])).

fof(c_0_18,negated_conjecture,
    ( v1_relat_1(esk2_0)
    & ( ~ r2_hidden(esk1_0,k2_relat_1(esk2_0))
      | k10_relat_1(esk2_0,k1_tarski(esk1_0)) = k1_xboole_0 )
    & ( r2_hidden(esk1_0,k2_relat_1(esk2_0))
      | k10_relat_1(esk2_0,k1_tarski(esk1_0)) != k1_xboole_0 ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_11])])])).

fof(c_0_19,plain,(
    ! [X5,X6] :
      ( ~ r1_xboole_0(X5,X6)
      | r1_xboole_0(X6,X5) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).

cnf(c_0_20,plain,
    ( r2_hidden(X1,X2)
    | r1_xboole_0(k1_tarski(X1),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_21,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_22,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_23,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_24,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_25,plain,
    ( k10_relat_1(X1,X2) = k1_xboole_0
    | ~ r1_xboole_0(k2_relat_1(X1),X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_26,negated_conjecture,
    ( v1_relat_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_27,plain,
    ( r1_xboole_0(X2,X1)
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_28,plain,
    ( r2_hidden(X1,X2)
    | r1_xboole_0(k3_enumset1(X1,X1,X1,X1,X1),X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20,c_0_21]),c_0_22]),c_0_23]),c_0_24])).

cnf(c_0_29,negated_conjecture,
    ( r2_hidden(esk1_0,k2_relat_1(esk2_0))
    | k10_relat_1(esk2_0,k1_tarski(esk1_0)) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_30,negated_conjecture,
    ( k10_relat_1(esk2_0,X1) = k1_xboole_0
    | ~ r1_xboole_0(k2_relat_1(esk2_0),X1) ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_31,plain,
    ( r2_hidden(X1,X2)
    | r1_xboole_0(X2,k3_enumset1(X1,X1,X1,X1,X1)) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

fof(c_0_32,plain,(
    ! [X7,X8] : r1_xboole_0(k4_xboole_0(X7,X8),X8) ),
    inference(variable_rename,[status(thm)],[t79_xboole_1])).

cnf(c_0_33,negated_conjecture,
    ( k10_relat_1(esk2_0,k1_tarski(esk1_0)) = k1_xboole_0
    | ~ r2_hidden(esk1_0,k2_relat_1(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_34,negated_conjecture,
    ( r2_hidden(esk1_0,k2_relat_1(esk2_0))
    | k10_relat_1(esk2_0,k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0)) != k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29,c_0_21]),c_0_22]),c_0_23]),c_0_24])).

cnf(c_0_35,negated_conjecture,
    ( k10_relat_1(esk2_0,k3_enumset1(X1,X1,X1,X1,X1)) = k1_xboole_0
    | r2_hidden(X1,k2_relat_1(esk2_0)) ),
    inference(spm,[status(thm)],[c_0_30,c_0_31])).

fof(c_0_36,plain,(
    ! [X23,X24,X25] :
      ( ( ~ r2_hidden(X23,X25)
        | k4_xboole_0(k2_tarski(X23,X24),X25) != k2_tarski(X23,X24) )
      & ( ~ r2_hidden(X24,X25)
        | k4_xboole_0(k2_tarski(X23,X24),X25) != k2_tarski(X23,X24) )
      & ( r2_hidden(X23,X25)
        | r2_hidden(X24,X25)
        | k4_xboole_0(k2_tarski(X23,X24),X25) = k2_tarski(X23,X24) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t72_zfmisc_1])])])])).

fof(c_0_37,plain,(
    ! [X9,X10] :
      ( ( ~ r1_xboole_0(X9,X10)
        | k4_xboole_0(X9,X10) = X9 )
      & ( k4_xboole_0(X9,X10) != X9
        | r1_xboole_0(X9,X10) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t83_xboole_1])])).

cnf(c_0_38,plain,
    ( r1_xboole_0(k4_xboole_0(X1,X2),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_39,negated_conjecture,
    ( k10_relat_1(esk2_0,k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0)) = k1_xboole_0
    | ~ r2_hidden(esk1_0,k2_relat_1(esk2_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33,c_0_21]),c_0_22]),c_0_23]),c_0_24])).

cnf(c_0_40,negated_conjecture,
    ( r2_hidden(esk1_0,k2_relat_1(esk2_0)) ),
    inference(spm,[status(thm)],[c_0_34,c_0_35])).

cnf(c_0_41,plain,
    ( ~ r2_hidden(X1,X2)
    | k4_xboole_0(k2_tarski(X3,X1),X2) != k2_tarski(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_42,plain,
    ( k4_xboole_0(X1,X2) = X1
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_43,plain,
    ( r1_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    inference(spm,[status(thm)],[c_0_27,c_0_38])).

cnf(c_0_44,plain,
    ( r1_xboole_0(k2_relat_1(X1),X2)
    | k10_relat_1(X1,X2) != k1_xboole_0
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_45,negated_conjecture,
    ( k10_relat_1(esk2_0,k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0)) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_39,c_0_40])])).

cnf(c_0_46,plain,
    ( k4_xboole_0(k3_enumset1(X3,X3,X3,X3,X1),X2) != k3_enumset1(X3,X3,X3,X3,X1)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_41,c_0_22]),c_0_22]),c_0_23]),c_0_23]),c_0_24]),c_0_24])).

cnf(c_0_47,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X2,X1)) = X1 ),
    inference(spm,[status(thm)],[c_0_42,c_0_43])).

cnf(c_0_48,negated_conjecture,
    ( r1_xboole_0(k2_relat_1(esk2_0),k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_45]),c_0_26])])).

cnf(c_0_49,plain,
    ( ~ r2_hidden(X1,k4_xboole_0(X2,k3_enumset1(X3,X3,X3,X3,X1))) ),
    inference(spm,[status(thm)],[c_0_46,c_0_47])).

cnf(c_0_50,negated_conjecture,
    ( k4_xboole_0(k2_relat_1(esk2_0),k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0)) = k2_relat_1(esk2_0) ),
    inference(spm,[status(thm)],[c_0_42,c_0_48])).

cnf(c_0_51,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_50]),c_0_40])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n016.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 12:23:34 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S078N
% 0.13/0.37  # and selection function SelectCQIArNpEqFirst.
% 0.13/0.37  #
% 0.13/0.37  # Preprocessing time       : 0.027 s
% 0.13/0.37  # Presaturation interreduction done
% 0.13/0.37  
% 0.13/0.37  # Proof found!
% 0.13/0.37  # SZS status Theorem
% 0.13/0.37  # SZS output start CNFRefutation
% 0.13/0.37  fof(t142_funct_1, conjecture, ![X1, X2]:(v1_relat_1(X2)=>(r2_hidden(X1,k2_relat_1(X2))<=>k10_relat_1(X2,k1_tarski(X1))!=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t142_funct_1)).
% 0.13/0.37  fof(l27_zfmisc_1, axiom, ![X1, X2]:(~(r2_hidden(X1,X2))=>r1_xboole_0(k1_tarski(X1),X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l27_zfmisc_1)).
% 0.13/0.37  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 0.13/0.37  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.13/0.37  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 0.13/0.37  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t72_enumset1)).
% 0.13/0.37  fof(t173_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(k10_relat_1(X2,X1)=k1_xboole_0<=>r1_xboole_0(k2_relat_1(X2),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t173_relat_1)).
% 0.13/0.37  fof(symmetry_r1_xboole_0, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)=>r1_xboole_0(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', symmetry_r1_xboole_0)).
% 0.13/0.37  fof(t79_xboole_1, axiom, ![X1, X2]:r1_xboole_0(k4_xboole_0(X1,X2),X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t79_xboole_1)).
% 0.13/0.37  fof(t72_zfmisc_1, axiom, ![X1, X2, X3]:(k4_xboole_0(k2_tarski(X1,X2),X3)=k2_tarski(X1,X2)<=>(~(r2_hidden(X1,X3))&~(r2_hidden(X2,X3)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t72_zfmisc_1)).
% 0.13/0.37  fof(t83_xboole_1, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)<=>k4_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t83_xboole_1)).
% 0.13/0.37  fof(c_0_11, negated_conjecture, ~(![X1, X2]:(v1_relat_1(X2)=>(r2_hidden(X1,k2_relat_1(X2))<=>k10_relat_1(X2,k1_tarski(X1))!=k1_xboole_0))), inference(assume_negation,[status(cth)],[t142_funct_1])).
% 0.13/0.37  fof(c_0_12, plain, ![X21, X22]:(r2_hidden(X21,X22)|r1_xboole_0(k1_tarski(X21),X22)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[l27_zfmisc_1])])])).
% 0.13/0.37  fof(c_0_13, plain, ![X11]:k2_tarski(X11,X11)=k1_tarski(X11), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.13/0.37  fof(c_0_14, plain, ![X12, X13]:k1_enumset1(X12,X12,X13)=k2_tarski(X12,X13), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.13/0.37  fof(c_0_15, plain, ![X14, X15, X16]:k2_enumset1(X14,X14,X15,X16)=k1_enumset1(X14,X15,X16), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.13/0.37  fof(c_0_16, plain, ![X17, X18, X19, X20]:k3_enumset1(X17,X17,X18,X19,X20)=k2_enumset1(X17,X18,X19,X20), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.13/0.37  fof(c_0_17, plain, ![X26, X27]:((k10_relat_1(X27,X26)!=k1_xboole_0|r1_xboole_0(k2_relat_1(X27),X26)|~v1_relat_1(X27))&(~r1_xboole_0(k2_relat_1(X27),X26)|k10_relat_1(X27,X26)=k1_xboole_0|~v1_relat_1(X27))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t173_relat_1])])])).
% 0.13/0.37  fof(c_0_18, negated_conjecture, (v1_relat_1(esk2_0)&((~r2_hidden(esk1_0,k2_relat_1(esk2_0))|k10_relat_1(esk2_0,k1_tarski(esk1_0))=k1_xboole_0)&(r2_hidden(esk1_0,k2_relat_1(esk2_0))|k10_relat_1(esk2_0,k1_tarski(esk1_0))!=k1_xboole_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_11])])])).
% 0.13/0.37  fof(c_0_19, plain, ![X5, X6]:(~r1_xboole_0(X5,X6)|r1_xboole_0(X6,X5)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).
% 0.13/0.37  cnf(c_0_20, plain, (r2_hidden(X1,X2)|r1_xboole_0(k1_tarski(X1),X2)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.37  cnf(c_0_21, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.37  cnf(c_0_22, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.37  cnf(c_0_23, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.13/0.37  cnf(c_0_24, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.37  cnf(c_0_25, plain, (k10_relat_1(X1,X2)=k1_xboole_0|~r1_xboole_0(k2_relat_1(X1),X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.13/0.37  cnf(c_0_26, negated_conjecture, (v1_relat_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.13/0.37  cnf(c_0_27, plain, (r1_xboole_0(X2,X1)|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.13/0.37  cnf(c_0_28, plain, (r2_hidden(X1,X2)|r1_xboole_0(k3_enumset1(X1,X1,X1,X1,X1),X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20, c_0_21]), c_0_22]), c_0_23]), c_0_24])).
% 0.13/0.37  cnf(c_0_29, negated_conjecture, (r2_hidden(esk1_0,k2_relat_1(esk2_0))|k10_relat_1(esk2_0,k1_tarski(esk1_0))!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.13/0.37  cnf(c_0_30, negated_conjecture, (k10_relat_1(esk2_0,X1)=k1_xboole_0|~r1_xboole_0(k2_relat_1(esk2_0),X1)), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.13/0.37  cnf(c_0_31, plain, (r2_hidden(X1,X2)|r1_xboole_0(X2,k3_enumset1(X1,X1,X1,X1,X1))), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.13/0.37  fof(c_0_32, plain, ![X7, X8]:r1_xboole_0(k4_xboole_0(X7,X8),X8), inference(variable_rename,[status(thm)],[t79_xboole_1])).
% 0.13/0.37  cnf(c_0_33, negated_conjecture, (k10_relat_1(esk2_0,k1_tarski(esk1_0))=k1_xboole_0|~r2_hidden(esk1_0,k2_relat_1(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.13/0.37  cnf(c_0_34, negated_conjecture, (r2_hidden(esk1_0,k2_relat_1(esk2_0))|k10_relat_1(esk2_0,k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0))!=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29, c_0_21]), c_0_22]), c_0_23]), c_0_24])).
% 0.13/0.37  cnf(c_0_35, negated_conjecture, (k10_relat_1(esk2_0,k3_enumset1(X1,X1,X1,X1,X1))=k1_xboole_0|r2_hidden(X1,k2_relat_1(esk2_0))), inference(spm,[status(thm)],[c_0_30, c_0_31])).
% 0.13/0.37  fof(c_0_36, plain, ![X23, X24, X25]:(((~r2_hidden(X23,X25)|k4_xboole_0(k2_tarski(X23,X24),X25)!=k2_tarski(X23,X24))&(~r2_hidden(X24,X25)|k4_xboole_0(k2_tarski(X23,X24),X25)!=k2_tarski(X23,X24)))&(r2_hidden(X23,X25)|r2_hidden(X24,X25)|k4_xboole_0(k2_tarski(X23,X24),X25)=k2_tarski(X23,X24))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t72_zfmisc_1])])])])).
% 0.13/0.37  fof(c_0_37, plain, ![X9, X10]:((~r1_xboole_0(X9,X10)|k4_xboole_0(X9,X10)=X9)&(k4_xboole_0(X9,X10)!=X9|r1_xboole_0(X9,X10))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t83_xboole_1])])).
% 0.13/0.37  cnf(c_0_38, plain, (r1_xboole_0(k4_xboole_0(X1,X2),X2)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.13/0.37  cnf(c_0_39, negated_conjecture, (k10_relat_1(esk2_0,k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0))=k1_xboole_0|~r2_hidden(esk1_0,k2_relat_1(esk2_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33, c_0_21]), c_0_22]), c_0_23]), c_0_24])).
% 0.13/0.37  cnf(c_0_40, negated_conjecture, (r2_hidden(esk1_0,k2_relat_1(esk2_0))), inference(spm,[status(thm)],[c_0_34, c_0_35])).
% 0.13/0.37  cnf(c_0_41, plain, (~r2_hidden(X1,X2)|k4_xboole_0(k2_tarski(X3,X1),X2)!=k2_tarski(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.13/0.37  cnf(c_0_42, plain, (k4_xboole_0(X1,X2)=X1|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.13/0.37  cnf(c_0_43, plain, (r1_xboole_0(X1,k4_xboole_0(X2,X1))), inference(spm,[status(thm)],[c_0_27, c_0_38])).
% 0.13/0.37  cnf(c_0_44, plain, (r1_xboole_0(k2_relat_1(X1),X2)|k10_relat_1(X1,X2)!=k1_xboole_0|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.13/0.37  cnf(c_0_45, negated_conjecture, (k10_relat_1(esk2_0,k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0))=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_39, c_0_40])])).
% 0.13/0.37  cnf(c_0_46, plain, (k4_xboole_0(k3_enumset1(X3,X3,X3,X3,X1),X2)!=k3_enumset1(X3,X3,X3,X3,X1)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_41, c_0_22]), c_0_22]), c_0_23]), c_0_23]), c_0_24]), c_0_24])).
% 0.13/0.37  cnf(c_0_47, plain, (k4_xboole_0(X1,k4_xboole_0(X2,X1))=X1), inference(spm,[status(thm)],[c_0_42, c_0_43])).
% 0.13/0.37  cnf(c_0_48, negated_conjecture, (r1_xboole_0(k2_relat_1(esk2_0),k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_45]), c_0_26])])).
% 0.13/0.37  cnf(c_0_49, plain, (~r2_hidden(X1,k4_xboole_0(X2,k3_enumset1(X3,X3,X3,X3,X1)))), inference(spm,[status(thm)],[c_0_46, c_0_47])).
% 0.13/0.37  cnf(c_0_50, negated_conjecture, (k4_xboole_0(k2_relat_1(esk2_0),k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0))=k2_relat_1(esk2_0)), inference(spm,[status(thm)],[c_0_42, c_0_48])).
% 0.13/0.37  cnf(c_0_51, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_50]), c_0_40])]), ['proof']).
% 0.13/0.37  # SZS output end CNFRefutation
% 0.13/0.37  # Proof object total steps             : 52
% 0.13/0.37  # Proof object clause steps            : 29
% 0.13/0.37  # Proof object formula steps           : 23
% 0.13/0.37  # Proof object conjectures             : 15
% 0.13/0.37  # Proof object clause conjectures      : 12
% 0.13/0.37  # Proof object formula conjectures     : 3
% 0.13/0.37  # Proof object initial clauses used    : 14
% 0.13/0.37  # Proof object initial formulas used   : 11
% 0.13/0.37  # Proof object generating inferences   : 10
% 0.13/0.37  # Proof object simplifying inferences  : 24
% 0.13/0.37  # Training examples: 0 positive, 0 negative
% 0.13/0.37  # Parsed axioms                        : 11
% 0.13/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.37  # Initial clauses                      : 17
% 0.13/0.37  # Removed in clause preprocessing      : 4
% 0.13/0.37  # Initial clauses in saturation        : 13
% 0.13/0.37  # Processed clauses                    : 48
% 0.13/0.37  # ...of these trivial                  : 1
% 0.13/0.37  # ...subsumed                          : 3
% 0.13/0.37  # ...remaining for further processing  : 44
% 0.13/0.37  # Other redundant clauses eliminated   : 0
% 0.13/0.37  # Clauses deleted for lack of memory   : 0
% 0.13/0.37  # Backward-subsumed                    : 0
% 0.13/0.37  # Backward-rewritten                   : 2
% 0.13/0.37  # Generated clauses                    : 61
% 0.13/0.37  # ...of the previous two non-trivial   : 38
% 0.13/0.37  # Contextual simplify-reflections      : 0
% 0.13/0.37  # Paramodulations                      : 61
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
% 0.13/0.37  # Current number of processed clauses  : 29
% 0.13/0.37  #    Positive orientable unit clauses  : 11
% 0.13/0.37  #    Positive unorientable unit clauses: 0
% 0.13/0.37  #    Negative unit clauses             : 2
% 0.13/0.37  #    Non-unit-clauses                  : 16
% 0.13/0.37  # Current number of unprocessed clauses: 15
% 0.13/0.37  # ...number of literals in the above   : 35
% 0.13/0.37  # Current number of archived formulas  : 0
% 0.13/0.37  # Current number of archived clauses   : 19
% 0.13/0.37  # Clause-clause subsumption calls (NU) : 46
% 0.13/0.37  # Rec. Clause-clause subsumption calls : 43
% 0.13/0.37  # Non-unit clause-clause subsumptions  : 1
% 0.13/0.37  # Unit Clause-clause subsumption calls : 6
% 0.13/0.37  # Rewrite failures with RHS unbound    : 0
% 0.13/0.37  # BW rewrite match attempts            : 1
% 0.13/0.37  # BW rewrite match successes           : 1
% 0.13/0.37  # Condensation attempts                : 0
% 0.13/0.37  # Condensation successes               : 0
% 0.13/0.37  # Termbank termtop insertions          : 1592
% 0.13/0.37  
% 0.13/0.37  # -------------------------------------------------
% 0.13/0.37  # User time                : 0.029 s
% 0.13/0.37  # System time              : 0.003 s
% 0.13/0.37  # Total time               : 0.032 s
% 0.13/0.37  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
