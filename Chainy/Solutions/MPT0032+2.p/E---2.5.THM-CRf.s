%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0032+2 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Wed Dec 16 12:07:32 EST 2020

% Result     : Theorem 7.62s
% Output     : CNFRefutation 7.62s
% Verified   : 
% Statistics : Number of formulae       :   73 ( 188 expanded)
%              Number of clauses        :   46 (  85 expanded)
%              Number of leaves         :   13 (  51 expanded)
%              Depth                    :   10
%              Number of atoms          :   97 ( 228 expanded)
%              Number of equality atoms :   66 ( 180 expanded)
%              Maximal formula depth    :   10 (   2 average)
%              Maximal clause size      :   12 (   1 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t25_xboole_1,conjecture,(
    ! [X1,X2,X3] : k2_xboole_0(k2_xboole_0(k3_xboole_0(X1,X2),k3_xboole_0(X2,X3)),k3_xboole_0(X3,X1)) = k3_xboole_0(k3_xboole_0(k2_xboole_0(X1,X2),k2_xboole_0(X2,X3)),k2_xboole_0(X3,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t25_xboole_1)).

fof(t22_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k3_xboole_0(X1,X2)) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t22_xboole_1)).

fof(commutativity_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/Axioms/MPT001+2.ax',commutativity_k3_xboole_0)).

fof(t6_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k2_xboole_0(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t6_xboole_1)).

fof(commutativity_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/Axioms/MPT001+2.ax',commutativity_k2_xboole_0)).

fof(t21_xboole_1,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,k2_xboole_0(X1,X2)) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t21_xboole_1)).

fof(t4_xboole_1,axiom,(
    ! [X1,X2,X3] : k2_xboole_0(k2_xboole_0(X1,X2),X3) = k2_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_xboole_1)).

fof(t16_xboole_1,axiom,(
    ! [X1,X2,X3] : k3_xboole_0(k3_xboole_0(X1,X2),X3) = k3_xboole_0(X1,k3_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t16_xboole_1)).

fof(t24_xboole_1,axiom,(
    ! [X1,X2,X3] : k2_xboole_0(X1,k3_xboole_0(X2,X3)) = k3_xboole_0(k2_xboole_0(X1,X2),k2_xboole_0(X1,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t24_xboole_1)).

fof(t7_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_1)).

fof(t23_xboole_1,axiom,(
    ! [X1,X2,X3] : k3_xboole_0(X1,k2_xboole_0(X2,X3)) = k2_xboole_0(k3_xboole_0(X1,X2),k3_xboole_0(X1,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t23_xboole_1)).

fof(t1_boole,axiom,(
    ! [X1] : k2_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_boole)).

fof(t20_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X1,X3)
        & ! [X4] :
            ( ( r1_tarski(X4,X2)
              & r1_tarski(X4,X3) )
           => r1_tarski(X4,X1) ) )
     => X1 = k3_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t20_xboole_1)).

fof(c_0_13,negated_conjecture,(
    ~ ! [X1,X2,X3] : k2_xboole_0(k2_xboole_0(k3_xboole_0(X1,X2),k3_xboole_0(X2,X3)),k3_xboole_0(X3,X1)) = k3_xboole_0(k3_xboole_0(k2_xboole_0(X1,X2),k2_xboole_0(X2,X3)),k2_xboole_0(X3,X1)) ),
    inference(assume_negation,[status(cth)],[t25_xboole_1])).

fof(c_0_14,plain,(
    ! [X141,X142] : k2_xboole_0(X141,k3_xboole_0(X141,X142)) = X141 ),
    inference(variable_rename,[status(thm)],[t22_xboole_1])).

fof(c_0_15,plain,(
    ! [X11,X12] : k3_xboole_0(X11,X12) = k3_xboole_0(X12,X11) ),
    inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).

fof(c_0_16,plain,(
    ! [X162,X163] : k2_xboole_0(X162,k2_xboole_0(X162,X163)) = k2_xboole_0(X162,X163) ),
    inference(variable_rename,[status(thm)],[t6_xboole_1])).

fof(c_0_17,plain,(
    ! [X9,X10] : k2_xboole_0(X9,X10) = k2_xboole_0(X10,X9) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).

fof(c_0_18,plain,(
    ! [X139,X140] : k3_xboole_0(X139,k2_xboole_0(X139,X140)) = X139 ),
    inference(variable_rename,[status(thm)],[t21_xboole_1])).

fof(c_0_19,negated_conjecture,(
    k2_xboole_0(k2_xboole_0(k3_xboole_0(esk16_0,esk17_0),k3_xboole_0(esk17_0,esk18_0)),k3_xboole_0(esk18_0,esk16_0)) != k3_xboole_0(k3_xboole_0(k2_xboole_0(esk16_0,esk17_0),k2_xboole_0(esk17_0,esk18_0)),k2_xboole_0(esk18_0,esk16_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_13])])])).

fof(c_0_20,plain,(
    ! [X155,X156,X157] : k2_xboole_0(k2_xboole_0(X155,X156),X157) = k2_xboole_0(X155,k2_xboole_0(X156,X157)) ),
    inference(variable_rename,[status(thm)],[t4_xboole_1])).

cnf(c_0_21,plain,
    ( k2_xboole_0(X1,k3_xboole_0(X1,X2)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_22,plain,
    ( k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_23,plain,
    ( k2_xboole_0(X1,k2_xboole_0(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_24,plain,
    ( k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_25,plain,
    ( k3_xboole_0(X1,k2_xboole_0(X1,X2)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_26,negated_conjecture,
    ( k2_xboole_0(k2_xboole_0(k3_xboole_0(esk16_0,esk17_0),k3_xboole_0(esk17_0,esk18_0)),k3_xboole_0(esk18_0,esk16_0)) != k3_xboole_0(k3_xboole_0(k2_xboole_0(esk16_0,esk17_0),k2_xboole_0(esk17_0,esk18_0)),k2_xboole_0(esk18_0,esk16_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_27,plain,
    ( k2_xboole_0(k2_xboole_0(X1,X2),X3) = k2_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_28,plain,
    ( k2_xboole_0(X1,k3_xboole_0(X2,X1)) = X1 ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_29,plain,
    ( k2_xboole_0(X1,k2_xboole_0(X2,X1)) = k2_xboole_0(X2,X1) ),
    inference(spm,[status(thm)],[c_0_23,c_0_24])).

fof(c_0_30,plain,(
    ! [X120,X121,X122] : k3_xboole_0(k3_xboole_0(X120,X121),X122) = k3_xboole_0(X120,k3_xboole_0(X121,X122)) ),
    inference(variable_rename,[status(thm)],[t16_xboole_1])).

cnf(c_0_31,plain,
    ( k3_xboole_0(X1,k2_xboole_0(X2,X1)) = X1 ),
    inference(spm,[status(thm)],[c_0_25,c_0_24])).

cnf(c_0_32,negated_conjecture,
    ( k2_xboole_0(k3_xboole_0(esk18_0,esk16_0),k2_xboole_0(k3_xboole_0(esk16_0,esk17_0),k3_xboole_0(esk17_0,esk18_0))) != k3_xboole_0(k3_xboole_0(k2_xboole_0(esk16_0,esk17_0),k2_xboole_0(esk17_0,esk18_0)),k2_xboole_0(esk16_0,esk18_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26,c_0_24]),c_0_24])).

cnf(c_0_33,plain,
    ( k2_xboole_0(X1,k2_xboole_0(k3_xboole_0(X2,X1),X3)) = k2_xboole_0(X1,X3) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_34,plain,
    ( k2_xboole_0(X1,k2_xboole_0(X2,k2_xboole_0(X1,X3))) = k2_xboole_0(X2,k2_xboole_0(X1,X3)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_29]),c_0_27]),c_0_27])).

cnf(c_0_35,plain,
    ( k3_xboole_0(k3_xboole_0(X1,X2),X3) = k3_xboole_0(X1,k3_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_36,plain,
    ( k3_xboole_0(X1,k3_xboole_0(X2,X1)) = k3_xboole_0(X2,X1) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_28]),c_0_22])).

fof(c_0_37,plain,(
    ! [X146,X147,X148] : k2_xboole_0(X146,k3_xboole_0(X147,X148)) = k3_xboole_0(k2_xboole_0(X146,X147),k2_xboole_0(X146,X148)) ),
    inference(variable_rename,[status(thm)],[t24_xboole_1])).

fof(c_0_38,plain,(
    ! [X166,X167] : r1_tarski(X166,k2_xboole_0(X166,X167)) ),
    inference(variable_rename,[status(thm)],[t7_xboole_1])).

cnf(c_0_39,negated_conjecture,
    ( k2_xboole_0(k3_xboole_0(esk16_0,esk18_0),k2_xboole_0(k3_xboole_0(esk16_0,esk17_0),k3_xboole_0(esk17_0,esk18_0))) != k3_xboole_0(k2_xboole_0(esk16_0,esk18_0),k3_xboole_0(k2_xboole_0(esk16_0,esk17_0),k2_xboole_0(esk17_0,esk18_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_32,c_0_22]),c_0_22])).

cnf(c_0_40,plain,
    ( k2_xboole_0(X1,k2_xboole_0(X2,X3)) = k2_xboole_0(X2,k2_xboole_0(X1,X3)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_25]),c_0_27]),c_0_27]),c_0_34])).

cnf(c_0_41,plain,
    ( k3_xboole_0(X1,k3_xboole_0(k2_xboole_0(X2,X1),X3)) = k3_xboole_0(X1,X3) ),
    inference(spm,[status(thm)],[c_0_35,c_0_31])).

cnf(c_0_42,plain,
    ( k3_xboole_0(X1,k3_xboole_0(X2,k3_xboole_0(X1,X3))) = k3_xboole_0(X2,k3_xboole_0(X1,X3)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_36]),c_0_35]),c_0_35])).

cnf(c_0_43,plain,
    ( k2_xboole_0(X1,k3_xboole_0(X2,X3)) = k3_xboole_0(k2_xboole_0(X1,X2),k2_xboole_0(X1,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

fof(c_0_44,plain,(
    ! [X143,X144,X145] : k3_xboole_0(X143,k2_xboole_0(X144,X145)) = k2_xboole_0(k3_xboole_0(X143,X144),k3_xboole_0(X143,X145)) ),
    inference(variable_rename,[status(thm)],[t23_xboole_1])).

fof(c_0_45,plain,(
    ! [X131] : k2_xboole_0(X131,k1_xboole_0) = X131 ),
    inference(variable_rename,[status(thm)],[t1_boole])).

cnf(c_0_46,plain,
    ( r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_47,negated_conjecture,
    ( k2_xboole_0(k3_xboole_0(esk16_0,esk17_0),k2_xboole_0(k3_xboole_0(esk16_0,esk18_0),k3_xboole_0(esk17_0,esk18_0))) != k3_xboole_0(k2_xboole_0(esk16_0,esk18_0),k3_xboole_0(k2_xboole_0(esk16_0,esk17_0),k2_xboole_0(esk17_0,esk18_0))) ),
    inference(rw,[status(thm)],[c_0_39,c_0_40])).

cnf(c_0_48,plain,
    ( k3_xboole_0(X1,k3_xboole_0(X2,X3)) = k3_xboole_0(X2,k3_xboole_0(X1,X3)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_21]),c_0_35]),c_0_35]),c_0_42])).

cnf(c_0_49,plain,
    ( k3_xboole_0(k2_xboole_0(X1,X2),k2_xboole_0(X3,X1)) = k2_xboole_0(X1,k3_xboole_0(X2,X3)) ),
    inference(spm,[status(thm)],[c_0_43,c_0_24])).

cnf(c_0_50,plain,
    ( k3_xboole_0(X1,k2_xboole_0(X2,X3)) = k2_xboole_0(k3_xboole_0(X1,X2),k3_xboole_0(X1,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

fof(c_0_51,plain,(
    ! [X135,X136,X137] :
      ( ( r1_tarski(esk15_3(X135,X136,X137),X136)
        | ~ r1_tarski(X135,X136)
        | ~ r1_tarski(X135,X137)
        | X135 = k3_xboole_0(X136,X137) )
      & ( r1_tarski(esk15_3(X135,X136,X137),X137)
        | ~ r1_tarski(X135,X136)
        | ~ r1_tarski(X135,X137)
        | X135 = k3_xboole_0(X136,X137) )
      & ( ~ r1_tarski(esk15_3(X135,X136,X137),X135)
        | ~ r1_tarski(X135,X136)
        | ~ r1_tarski(X135,X137)
        | X135 = k3_xboole_0(X136,X137) ) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t20_xboole_1])])])])).

cnf(c_0_52,plain,
    ( k2_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

cnf(c_0_53,plain,
    ( r1_tarski(X1,k2_xboole_0(X2,X1)) ),
    inference(spm,[status(thm)],[c_0_46,c_0_24])).

cnf(c_0_54,negated_conjecture,
    ( k2_xboole_0(k3_xboole_0(esk16_0,esk17_0),k2_xboole_0(k3_xboole_0(esk16_0,esk18_0),k3_xboole_0(esk17_0,esk18_0))) != k3_xboole_0(k2_xboole_0(esk16_0,esk17_0),k3_xboole_0(k2_xboole_0(esk16_0,esk18_0),k2_xboole_0(esk17_0,esk18_0))) ),
    inference(rw,[status(thm)],[c_0_47,c_0_48])).

cnf(c_0_55,plain,
    ( k3_xboole_0(k2_xboole_0(X1,X2),k2_xboole_0(X3,X2)) = k2_xboole_0(X2,k3_xboole_0(X1,X3)) ),
    inference(spm,[status(thm)],[c_0_49,c_0_24])).

cnf(c_0_56,plain,
    ( k2_xboole_0(k3_xboole_0(X1,X2),k3_xboole_0(X3,X1)) = k3_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(spm,[status(thm)],[c_0_50,c_0_22])).

cnf(c_0_57,plain,
    ( X1 = k3_xboole_0(X2,X3)
    | ~ r1_tarski(esk15_3(X1,X2,X3),X1)
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X1,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

cnf(c_0_58,plain,
    ( r1_tarski(esk15_3(X1,X2,X3),X3)
    | X1 = k3_xboole_0(X2,X3)
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X1,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

cnf(c_0_59,plain,
    ( r1_tarski(X1,X1) ),
    inference(spm,[status(thm)],[c_0_46,c_0_52])).

cnf(c_0_60,plain,
    ( r1_tarski(X1,k2_xboole_0(X2,k2_xboole_0(X3,X1))) ),
    inference(spm,[status(thm)],[c_0_53,c_0_27])).

cnf(c_0_61,negated_conjecture,
    ( k2_xboole_0(k3_xboole_0(esk16_0,esk17_0),k2_xboole_0(k3_xboole_0(esk16_0,esk18_0),k3_xboole_0(esk17_0,esk18_0))) != k3_xboole_0(k2_xboole_0(esk16_0,esk17_0),k2_xboole_0(esk18_0,k3_xboole_0(esk16_0,esk17_0))) ),
    inference(rw,[status(thm)],[c_0_54,c_0_55])).

cnf(c_0_62,plain,
    ( k2_xboole_0(k3_xboole_0(X1,X2),k3_xboole_0(X3,X2)) = k3_xboole_0(X2,k2_xboole_0(X1,X3)) ),
    inference(spm,[status(thm)],[c_0_56,c_0_22])).

cnf(c_0_63,plain,
    ( k3_xboole_0(X1,X2) = X2
    | ~ r1_tarski(X2,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_58]),c_0_59])])).

cnf(c_0_64,plain,
    ( r1_tarski(k3_xboole_0(X1,X2),k2_xboole_0(X3,X1)) ),
    inference(spm,[status(thm)],[c_0_60,c_0_21])).

cnf(c_0_65,negated_conjecture,
    ( k3_xboole_0(k2_xboole_0(esk16_0,esk17_0),k2_xboole_0(esk18_0,k3_xboole_0(esk16_0,esk17_0))) != k2_xboole_0(k3_xboole_0(esk16_0,esk17_0),k3_xboole_0(esk18_0,k2_xboole_0(esk16_0,esk17_0))) ),
    inference(rw,[status(thm)],[c_0_61,c_0_62])).

cnf(c_0_66,plain,
    ( k3_xboole_0(X1,k2_xboole_0(X2,X3)) = k2_xboole_0(k3_xboole_0(X1,X2),X3)
    | ~ r1_tarski(X3,X1) ),
    inference(spm,[status(thm)],[c_0_50,c_0_63])).

cnf(c_0_67,plain,
    ( r1_tarski(k3_xboole_0(X1,X2),k2_xboole_0(X1,X3)) ),
    inference(spm,[status(thm)],[c_0_64,c_0_24])).

cnf(c_0_68,plain,
    ( k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    c_0_24).

cnf(c_0_69,plain,
    ( k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    c_0_22).

cnf(c_0_70,plain,
    ( k2_xboole_0(k2_xboole_0(X1,X2),X3) = k2_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    c_0_27).

cnf(c_0_71,plain,
    ( k3_xboole_0(k3_xboole_0(X1,X2),X3) = k3_xboole_0(X1,k3_xboole_0(X2,X3)) ),
    c_0_35).

cnf(c_0_72,negated_conjecture,
    ( $false ),
    inference(ar,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65,c_0_66]),c_0_22]),c_0_67])]),c_0_68,c_0_69,c_0_70,c_0_71]),
    [proof]).
%------------------------------------------------------------------------------
