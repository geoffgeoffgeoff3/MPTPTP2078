%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:52:53 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   54 ( 200 expanded)
%              Number of clauses        :   35 (  79 expanded)
%              Number of leaves         :    9 (  54 expanded)
%              Depth                    :   12
%              Number of atoms          :  137 ( 448 expanded)
%              Number of equality atoms :   58 ( 249 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   13 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t14_funct_1,conjecture,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( k1_relat_1(X2) = k1_tarski(X1)
       => k2_relat_1(X2) = k1_tarski(k1_funct_1(X2,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t14_funct_1)).

fof(d16_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] : k11_relat_1(X1,X2) = k9_relat_1(X1,k1_tarski(X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d16_relat_1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(t146_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k9_relat_1(X1,k1_relat_1(X1)) = k2_relat_1(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t146_relat_1)).

fof(d1_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k1_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> X3 = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_tarski)).

fof(t204_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( r2_hidden(k4_tarski(X1,X2),X3)
      <=> r2_hidden(X2,k11_relat_1(X3,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t204_relat_1)).

fof(t8_funct_1,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_relat_1(X3)
        & v1_funct_1(X3) )
     => ( r2_hidden(k4_tarski(X1,X2),X3)
      <=> ( r2_hidden(X1,k1_relat_1(X3))
          & X2 = k1_funct_1(X3,X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t8_funct_1)).

fof(c_0_9,negated_conjecture,(
    ~ ! [X1,X2] :
        ( ( v1_relat_1(X2)
          & v1_funct_1(X2) )
       => ( k1_relat_1(X2) = k1_tarski(X1)
         => k2_relat_1(X2) = k1_tarski(k1_funct_1(X2,X1)) ) ) ),
    inference(assume_negation,[status(cth)],[t14_funct_1])).

fof(c_0_10,plain,(
    ! [X17,X18] :
      ( ~ v1_relat_1(X17)
      | k11_relat_1(X17,X18) = k9_relat_1(X17,k1_tarski(X18)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d16_relat_1])])])).

fof(c_0_11,plain,(
    ! [X11] : k2_tarski(X11,X11) = k1_tarski(X11) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_12,plain,(
    ! [X12,X13] : k1_enumset1(X12,X12,X13) = k2_tarski(X12,X13) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_13,plain,(
    ! [X14,X15,X16] : k2_enumset1(X14,X14,X15,X16) = k1_enumset1(X14,X15,X16) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_14,negated_conjecture,
    ( v1_relat_1(esk3_0)
    & v1_funct_1(esk3_0)
    & k1_relat_1(esk3_0) = k1_tarski(esk2_0)
    & k2_relat_1(esk3_0) != k1_tarski(k1_funct_1(esk3_0,esk2_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_9])])])).

cnf(c_0_15,plain,
    ( k11_relat_1(X1,X2) = k9_relat_1(X1,k1_tarski(X2))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_16,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_17,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_18,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_19,negated_conjecture,
    ( k1_relat_1(esk3_0) = k1_tarski(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_20,plain,(
    ! [X19] :
      ( ~ v1_relat_1(X19)
      | k9_relat_1(X19,k1_relat_1(X19)) = k2_relat_1(X19) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t146_relat_1])])).

cnf(c_0_21,plain,
    ( k11_relat_1(X1,X2) = k9_relat_1(X1,k2_enumset1(X2,X2,X2,X2))
    | ~ v1_relat_1(X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_15,c_0_16]),c_0_17]),c_0_18])).

cnf(c_0_22,negated_conjecture,
    ( k1_relat_1(esk3_0) = k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19,c_0_16]),c_0_17]),c_0_18])).

fof(c_0_23,plain,(
    ! [X4,X5,X6,X7,X8,X9] :
      ( ( ~ r2_hidden(X6,X5)
        | X6 = X4
        | X5 != k1_tarski(X4) )
      & ( X7 != X4
        | r2_hidden(X7,X5)
        | X5 != k1_tarski(X4) )
      & ( ~ r2_hidden(esk1_2(X8,X9),X9)
        | esk1_2(X8,X9) != X8
        | X9 = k1_tarski(X8) )
      & ( r2_hidden(esk1_2(X8,X9),X9)
        | esk1_2(X8,X9) = X8
        | X9 = k1_tarski(X8) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).

fof(c_0_24,plain,(
    ! [X20,X21,X22] :
      ( ( ~ r2_hidden(k4_tarski(X20,X21),X22)
        | r2_hidden(X21,k11_relat_1(X22,X20))
        | ~ v1_relat_1(X22) )
      & ( ~ r2_hidden(X21,k11_relat_1(X22,X20))
        | r2_hidden(k4_tarski(X20,X21),X22)
        | ~ v1_relat_1(X22) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t204_relat_1])])])).

cnf(c_0_25,plain,
    ( k9_relat_1(X1,k1_relat_1(X1)) = k2_relat_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_26,negated_conjecture,
    ( k9_relat_1(X1,k1_relat_1(esk3_0)) = k11_relat_1(X1,esk2_0)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_27,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_28,negated_conjecture,
    ( k2_relat_1(esk3_0) != k1_tarski(k1_funct_1(esk3_0,esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_29,plain,
    ( r2_hidden(esk1_2(X1,X2),X2)
    | esk1_2(X1,X2) = X1
    | X2 = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_30,plain,
    ( r2_hidden(k4_tarski(X3,X1),X2)
    | ~ r2_hidden(X1,k11_relat_1(X2,X3))
    | ~ v1_relat_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_31,negated_conjecture,
    ( k11_relat_1(esk3_0,esk2_0) = k2_relat_1(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_26]),c_0_27])])).

cnf(c_0_32,negated_conjecture,
    ( k2_relat_1(esk3_0) != k2_enumset1(k1_funct_1(esk3_0,esk2_0),k1_funct_1(esk3_0,esk2_0),k1_funct_1(esk3_0,esk2_0),k1_funct_1(esk3_0,esk2_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_28,c_0_16]),c_0_17]),c_0_18])).

cnf(c_0_33,plain,
    ( esk1_2(X1,X2) = X1
    | X2 = k2_enumset1(X1,X1,X1,X1)
    | r2_hidden(esk1_2(X1,X2),X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29,c_0_16]),c_0_17]),c_0_18])).

fof(c_0_34,plain,(
    ! [X23,X24,X25] :
      ( ( r2_hidden(X23,k1_relat_1(X25))
        | ~ r2_hidden(k4_tarski(X23,X24),X25)
        | ~ v1_relat_1(X25)
        | ~ v1_funct_1(X25) )
      & ( X24 = k1_funct_1(X25,X23)
        | ~ r2_hidden(k4_tarski(X23,X24),X25)
        | ~ v1_relat_1(X25)
        | ~ v1_funct_1(X25) )
      & ( ~ r2_hidden(X23,k1_relat_1(X25))
        | X24 != k1_funct_1(X25,X23)
        | r2_hidden(k4_tarski(X23,X24),X25)
        | ~ v1_relat_1(X25)
        | ~ v1_funct_1(X25) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t8_funct_1])])])).

cnf(c_0_35,negated_conjecture,
    ( r2_hidden(k4_tarski(esk2_0,X1),esk3_0)
    | ~ r2_hidden(X1,k2_relat_1(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_31]),c_0_27])])).

cnf(c_0_36,negated_conjecture,
    ( esk1_2(k1_funct_1(esk3_0,esk2_0),k2_relat_1(esk3_0)) = k1_funct_1(esk3_0,esk2_0)
    | r2_hidden(esk1_2(k1_funct_1(esk3_0,esk2_0),k2_relat_1(esk3_0)),k2_relat_1(esk3_0)) ),
    inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_33])])).

cnf(c_0_37,plain,
    ( X2 = k1_tarski(X1)
    | ~ r2_hidden(esk1_2(X1,X2),X2)
    | esk1_2(X1,X2) != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_38,plain,
    ( X1 = k1_funct_1(X2,X3)
    | ~ r2_hidden(k4_tarski(X3,X1),X2)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_39,negated_conjecture,
    ( esk1_2(k1_funct_1(esk3_0,esk2_0),k2_relat_1(esk3_0)) = k1_funct_1(esk3_0,esk2_0)
    | r2_hidden(k4_tarski(esk2_0,esk1_2(k1_funct_1(esk3_0,esk2_0),k2_relat_1(esk3_0))),esk3_0) ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_40,negated_conjecture,
    ( v1_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_41,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k1_tarski(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_42,plain,
    ( X2 = k2_enumset1(X1,X1,X1,X1)
    | esk1_2(X1,X2) != X1
    | ~ r2_hidden(esk1_2(X1,X2),X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_37,c_0_16]),c_0_17]),c_0_18])).

cnf(c_0_43,negated_conjecture,
    ( esk1_2(k1_funct_1(esk3_0,esk2_0),k2_relat_1(esk3_0)) = k1_funct_1(esk3_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_39]),c_0_40]),c_0_27])])).

cnf(c_0_44,plain,
    ( r2_hidden(X2,k11_relat_1(X3,X1))
    | ~ r2_hidden(k4_tarski(X1,X2),X3)
    | ~ v1_relat_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_45,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k2_enumset1(X2,X2,X2,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_41,c_0_16]),c_0_17]),c_0_18])).

cnf(c_0_46,negated_conjecture,
    ( ~ r2_hidden(k1_funct_1(esk3_0,esk2_0),k2_relat_1(esk3_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_42,c_0_43]),c_0_32])).

cnf(c_0_47,negated_conjecture,
    ( r2_hidden(X1,k2_relat_1(esk3_0))
    | ~ r2_hidden(k4_tarski(esk2_0,X1),esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_31]),c_0_27])])).

cnf(c_0_48,plain,
    ( r2_hidden(k4_tarski(X1,X3),X2)
    | ~ r2_hidden(X1,k1_relat_1(X2))
    | X3 != k1_funct_1(X2,X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_49,plain,
    ( r2_hidden(X1,k2_enumset1(X1,X1,X1,X1)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_45])])).

cnf(c_0_50,negated_conjecture,
    ( ~ r2_hidden(k4_tarski(esk2_0,k1_funct_1(esk3_0,esk2_0)),esk3_0) ),
    inference(spm,[status(thm)],[c_0_46,c_0_47])).

cnf(c_0_51,plain,
    ( r2_hidden(k4_tarski(X1,k1_funct_1(X2,X1)),X2)
    | ~ v1_funct_1(X2)
    | ~ v1_relat_1(X2)
    | ~ r2_hidden(X1,k1_relat_1(X2)) ),
    inference(er,[status(thm)],[c_0_48])).

cnf(c_0_52,negated_conjecture,
    ( r2_hidden(esk2_0,k1_relat_1(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_49,c_0_22])).

cnf(c_0_53,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_51]),c_0_40]),c_0_27]),c_0_52])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n018.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:48:12 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.13/0.39  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.13/0.39  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.13/0.39  #
% 0.13/0.39  # Preprocessing time       : 0.040 s
% 0.13/0.39  # Presaturation interreduction done
% 0.13/0.39  
% 0.13/0.39  # Proof found!
% 0.13/0.39  # SZS status Theorem
% 0.13/0.39  # SZS output start CNFRefutation
% 0.13/0.39  fof(t14_funct_1, conjecture, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(k1_relat_1(X2)=k1_tarski(X1)=>k2_relat_1(X2)=k1_tarski(k1_funct_1(X2,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t14_funct_1)).
% 0.13/0.39  fof(d16_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:k11_relat_1(X1,X2)=k9_relat_1(X1,k1_tarski(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d16_relat_1)).
% 0.13/0.39  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 0.13/0.39  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.13/0.39  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 0.13/0.39  fof(t146_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>k9_relat_1(X1,k1_relat_1(X1))=k2_relat_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t146_relat_1)).
% 0.13/0.39  fof(d1_tarski, axiom, ![X1, X2]:(X2=k1_tarski(X1)<=>![X3]:(r2_hidden(X3,X2)<=>X3=X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_tarski)).
% 0.13/0.39  fof(t204_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>(r2_hidden(k4_tarski(X1,X2),X3)<=>r2_hidden(X2,k11_relat_1(X3,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t204_relat_1)).
% 0.13/0.39  fof(t8_funct_1, axiom, ![X1, X2, X3]:((v1_relat_1(X3)&v1_funct_1(X3))=>(r2_hidden(k4_tarski(X1,X2),X3)<=>(r2_hidden(X1,k1_relat_1(X3))&X2=k1_funct_1(X3,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t8_funct_1)).
% 0.13/0.39  fof(c_0_9, negated_conjecture, ~(![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(k1_relat_1(X2)=k1_tarski(X1)=>k2_relat_1(X2)=k1_tarski(k1_funct_1(X2,X1))))), inference(assume_negation,[status(cth)],[t14_funct_1])).
% 0.13/0.39  fof(c_0_10, plain, ![X17, X18]:(~v1_relat_1(X17)|k11_relat_1(X17,X18)=k9_relat_1(X17,k1_tarski(X18))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d16_relat_1])])])).
% 0.13/0.39  fof(c_0_11, plain, ![X11]:k2_tarski(X11,X11)=k1_tarski(X11), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.13/0.39  fof(c_0_12, plain, ![X12, X13]:k1_enumset1(X12,X12,X13)=k2_tarski(X12,X13), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.13/0.39  fof(c_0_13, plain, ![X14, X15, X16]:k2_enumset1(X14,X14,X15,X16)=k1_enumset1(X14,X15,X16), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.13/0.39  fof(c_0_14, negated_conjecture, ((v1_relat_1(esk3_0)&v1_funct_1(esk3_0))&(k1_relat_1(esk3_0)=k1_tarski(esk2_0)&k2_relat_1(esk3_0)!=k1_tarski(k1_funct_1(esk3_0,esk2_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_9])])])).
% 0.13/0.39  cnf(c_0_15, plain, (k11_relat_1(X1,X2)=k9_relat_1(X1,k1_tarski(X2))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.39  cnf(c_0_16, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.39  cnf(c_0_17, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.39  cnf(c_0_18, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.39  cnf(c_0_19, negated_conjecture, (k1_relat_1(esk3_0)=k1_tarski(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.39  fof(c_0_20, plain, ![X19]:(~v1_relat_1(X19)|k9_relat_1(X19,k1_relat_1(X19))=k2_relat_1(X19)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t146_relat_1])])).
% 0.13/0.39  cnf(c_0_21, plain, (k11_relat_1(X1,X2)=k9_relat_1(X1,k2_enumset1(X2,X2,X2,X2))|~v1_relat_1(X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_15, c_0_16]), c_0_17]), c_0_18])).
% 0.13/0.39  cnf(c_0_22, negated_conjecture, (k1_relat_1(esk3_0)=k2_enumset1(esk2_0,esk2_0,esk2_0,esk2_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19, c_0_16]), c_0_17]), c_0_18])).
% 0.13/0.39  fof(c_0_23, plain, ![X4, X5, X6, X7, X8, X9]:(((~r2_hidden(X6,X5)|X6=X4|X5!=k1_tarski(X4))&(X7!=X4|r2_hidden(X7,X5)|X5!=k1_tarski(X4)))&((~r2_hidden(esk1_2(X8,X9),X9)|esk1_2(X8,X9)!=X8|X9=k1_tarski(X8))&(r2_hidden(esk1_2(X8,X9),X9)|esk1_2(X8,X9)=X8|X9=k1_tarski(X8)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).
% 0.13/0.39  fof(c_0_24, plain, ![X20, X21, X22]:((~r2_hidden(k4_tarski(X20,X21),X22)|r2_hidden(X21,k11_relat_1(X22,X20))|~v1_relat_1(X22))&(~r2_hidden(X21,k11_relat_1(X22,X20))|r2_hidden(k4_tarski(X20,X21),X22)|~v1_relat_1(X22))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t204_relat_1])])])).
% 0.13/0.39  cnf(c_0_25, plain, (k9_relat_1(X1,k1_relat_1(X1))=k2_relat_1(X1)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.39  cnf(c_0_26, negated_conjecture, (k9_relat_1(X1,k1_relat_1(esk3_0))=k11_relat_1(X1,esk2_0)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_21, c_0_22])).
% 0.13/0.39  cnf(c_0_27, negated_conjecture, (v1_relat_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.39  cnf(c_0_28, negated_conjecture, (k2_relat_1(esk3_0)!=k1_tarski(k1_funct_1(esk3_0,esk2_0))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.39  cnf(c_0_29, plain, (r2_hidden(esk1_2(X1,X2),X2)|esk1_2(X1,X2)=X1|X2=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.39  cnf(c_0_30, plain, (r2_hidden(k4_tarski(X3,X1),X2)|~r2_hidden(X1,k11_relat_1(X2,X3))|~v1_relat_1(X2)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.39  cnf(c_0_31, negated_conjecture, (k11_relat_1(esk3_0,esk2_0)=k2_relat_1(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_26]), c_0_27])])).
% 0.13/0.39  cnf(c_0_32, negated_conjecture, (k2_relat_1(esk3_0)!=k2_enumset1(k1_funct_1(esk3_0,esk2_0),k1_funct_1(esk3_0,esk2_0),k1_funct_1(esk3_0,esk2_0),k1_funct_1(esk3_0,esk2_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_28, c_0_16]), c_0_17]), c_0_18])).
% 0.13/0.39  cnf(c_0_33, plain, (esk1_2(X1,X2)=X1|X2=k2_enumset1(X1,X1,X1,X1)|r2_hidden(esk1_2(X1,X2),X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29, c_0_16]), c_0_17]), c_0_18])).
% 0.13/0.39  fof(c_0_34, plain, ![X23, X24, X25]:(((r2_hidden(X23,k1_relat_1(X25))|~r2_hidden(k4_tarski(X23,X24),X25)|(~v1_relat_1(X25)|~v1_funct_1(X25)))&(X24=k1_funct_1(X25,X23)|~r2_hidden(k4_tarski(X23,X24),X25)|(~v1_relat_1(X25)|~v1_funct_1(X25))))&(~r2_hidden(X23,k1_relat_1(X25))|X24!=k1_funct_1(X25,X23)|r2_hidden(k4_tarski(X23,X24),X25)|(~v1_relat_1(X25)|~v1_funct_1(X25)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t8_funct_1])])])).
% 0.13/0.39  cnf(c_0_35, negated_conjecture, (r2_hidden(k4_tarski(esk2_0,X1),esk3_0)|~r2_hidden(X1,k2_relat_1(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_31]), c_0_27])])).
% 0.13/0.39  cnf(c_0_36, negated_conjecture, (esk1_2(k1_funct_1(esk3_0,esk2_0),k2_relat_1(esk3_0))=k1_funct_1(esk3_0,esk2_0)|r2_hidden(esk1_2(k1_funct_1(esk3_0,esk2_0),k2_relat_1(esk3_0)),k2_relat_1(esk3_0))), inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_33])])).
% 0.13/0.39  cnf(c_0_37, plain, (X2=k1_tarski(X1)|~r2_hidden(esk1_2(X1,X2),X2)|esk1_2(X1,X2)!=X1), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.39  cnf(c_0_38, plain, (X1=k1_funct_1(X2,X3)|~r2_hidden(k4_tarski(X3,X1),X2)|~v1_relat_1(X2)|~v1_funct_1(X2)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.13/0.39  cnf(c_0_39, negated_conjecture, (esk1_2(k1_funct_1(esk3_0,esk2_0),k2_relat_1(esk3_0))=k1_funct_1(esk3_0,esk2_0)|r2_hidden(k4_tarski(esk2_0,esk1_2(k1_funct_1(esk3_0,esk2_0),k2_relat_1(esk3_0))),esk3_0)), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 0.13/0.39  cnf(c_0_40, negated_conjecture, (v1_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.39  cnf(c_0_41, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k1_tarski(X2)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.39  cnf(c_0_42, plain, (X2=k2_enumset1(X1,X1,X1,X1)|esk1_2(X1,X2)!=X1|~r2_hidden(esk1_2(X1,X2),X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_37, c_0_16]), c_0_17]), c_0_18])).
% 0.13/0.39  cnf(c_0_43, negated_conjecture, (esk1_2(k1_funct_1(esk3_0,esk2_0),k2_relat_1(esk3_0))=k1_funct_1(esk3_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_39]), c_0_40]), c_0_27])])).
% 0.13/0.39  cnf(c_0_44, plain, (r2_hidden(X2,k11_relat_1(X3,X1))|~r2_hidden(k4_tarski(X1,X2),X3)|~v1_relat_1(X3)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.39  cnf(c_0_45, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k2_enumset1(X2,X2,X2,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_41, c_0_16]), c_0_17]), c_0_18])).
% 0.13/0.39  cnf(c_0_46, negated_conjecture, (~r2_hidden(k1_funct_1(esk3_0,esk2_0),k2_relat_1(esk3_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_43]), c_0_32])).
% 0.13/0.39  cnf(c_0_47, negated_conjecture, (r2_hidden(X1,k2_relat_1(esk3_0))|~r2_hidden(k4_tarski(esk2_0,X1),esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_31]), c_0_27])])).
% 0.13/0.39  cnf(c_0_48, plain, (r2_hidden(k4_tarski(X1,X3),X2)|~r2_hidden(X1,k1_relat_1(X2))|X3!=k1_funct_1(X2,X1)|~v1_relat_1(X2)|~v1_funct_1(X2)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.13/0.39  cnf(c_0_49, plain, (r2_hidden(X1,k2_enumset1(X1,X1,X1,X1))), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_45])])).
% 0.13/0.39  cnf(c_0_50, negated_conjecture, (~r2_hidden(k4_tarski(esk2_0,k1_funct_1(esk3_0,esk2_0)),esk3_0)), inference(spm,[status(thm)],[c_0_46, c_0_47])).
% 0.13/0.39  cnf(c_0_51, plain, (r2_hidden(k4_tarski(X1,k1_funct_1(X2,X1)),X2)|~v1_funct_1(X2)|~v1_relat_1(X2)|~r2_hidden(X1,k1_relat_1(X2))), inference(er,[status(thm)],[c_0_48])).
% 0.13/0.39  cnf(c_0_52, negated_conjecture, (r2_hidden(esk2_0,k1_relat_1(esk3_0))), inference(spm,[status(thm)],[c_0_49, c_0_22])).
% 0.13/0.39  cnf(c_0_53, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_51]), c_0_40]), c_0_27]), c_0_52])]), ['proof']).
% 0.13/0.39  # SZS output end CNFRefutation
% 0.13/0.39  # Proof object total steps             : 54
% 0.13/0.39  # Proof object clause steps            : 35
% 0.13/0.39  # Proof object formula steps           : 19
% 0.13/0.39  # Proof object conjectures             : 20
% 0.13/0.39  # Proof object clause conjectures      : 17
% 0.13/0.39  # Proof object formula conjectures     : 3
% 0.13/0.39  # Proof object initial clauses used    : 16
% 0.13/0.39  # Proof object initial formulas used   : 9
% 0.13/0.39  # Proof object generating inferences   : 11
% 0.13/0.39  # Proof object simplifying inferences  : 36
% 0.13/0.39  # Training examples: 0 positive, 0 negative
% 0.13/0.39  # Parsed axioms                        : 9
% 0.13/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.39  # Initial clauses                      : 18
% 0.13/0.39  # Removed in clause preprocessing      : 3
% 0.13/0.39  # Initial clauses in saturation        : 15
% 0.13/0.39  # Processed clauses                    : 44
% 0.13/0.39  # ...of these trivial                  : 0
% 0.13/0.39  # ...subsumed                          : 0
% 0.13/0.39  # ...remaining for further processing  : 44
% 0.13/0.39  # Other redundant clauses eliminated   : 6
% 0.13/0.39  # Clauses deleted for lack of memory   : 0
% 0.13/0.39  # Backward-subsumed                    : 0
% 0.13/0.39  # Backward-rewritten                   : 2
% 0.13/0.39  # Generated clauses                    : 64
% 0.13/0.39  # ...of the previous two non-trivial   : 55
% 0.13/0.39  # Contextual simplify-reflections      : 0
% 0.13/0.39  # Paramodulations                      : 59
% 0.13/0.39  # Factorizations                       : 0
% 0.13/0.39  # Equation resolutions                 : 6
% 0.13/0.39  # Propositional unsat checks           : 0
% 0.13/0.39  #    Propositional check models        : 0
% 0.13/0.39  #    Propositional check unsatisfiable : 0
% 0.13/0.39  #    Propositional clauses             : 0
% 0.13/0.39  #    Propositional clauses after purity: 0
% 0.13/0.39  #    Propositional unsat core size     : 0
% 0.13/0.39  #    Propositional preprocessing time  : 0.000
% 0.13/0.39  #    Propositional encoding time       : 0.000
% 0.13/0.39  #    Propositional solver time         : 0.000
% 0.13/0.39  #    Success case prop preproc time    : 0.000
% 0.13/0.39  #    Success case prop encoding time   : 0.000
% 0.13/0.39  #    Success case prop solver time     : 0.000
% 0.13/0.39  # Current number of processed clauses  : 24
% 0.13/0.39  #    Positive orientable unit clauses  : 7
% 0.13/0.39  #    Positive unorientable unit clauses: 0
% 0.13/0.39  #    Negative unit clauses             : 3
% 0.13/0.39  #    Non-unit-clauses                  : 14
% 0.13/0.39  # Current number of unprocessed clauses: 41
% 0.13/0.39  # ...number of literals in the above   : 169
% 0.13/0.39  # Current number of archived formulas  : 0
% 0.13/0.39  # Current number of archived clauses   : 20
% 0.13/0.39  # Clause-clause subsumption calls (NU) : 33
% 0.13/0.39  # Rec. Clause-clause subsumption calls : 17
% 0.13/0.39  # Non-unit clause-clause subsumptions  : 0
% 0.13/0.39  # Unit Clause-clause subsumption calls : 1
% 0.13/0.39  # Rewrite failures with RHS unbound    : 0
% 0.13/0.39  # BW rewrite match attempts            : 3
% 0.13/0.39  # BW rewrite match successes           : 1
% 0.13/0.39  # Condensation attempts                : 0
% 0.13/0.39  # Condensation successes               : 0
% 0.13/0.39  # Termbank termtop insertions          : 2015
% 0.13/0.39  
% 0.13/0.39  # -------------------------------------------------
% 0.13/0.39  # User time                : 0.042 s
% 0.13/0.39  # System time              : 0.007 s
% 0.13/0.39  # Total time               : 0.049 s
% 0.13/0.39  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
