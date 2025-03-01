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
% DateTime   : Thu Dec  3 10:55:35 EST 2020

% Result     : Theorem 1.98s
% Output     : CNFRefutation 1.98s
% Verified   : 
% Statistics : Number of formulae       :   68 ( 679 expanded)
%              Number of clauses        :   43 ( 277 expanded)
%              Number of leaves         :   12 ( 174 expanded)
%              Depth                    :   12
%              Number of atoms          :  191 (2117 expanded)
%              Number of equality atoms :   68 ( 944 expanded)
%              Maximal formula depth    :   15 (   4 average)
%              Maximal clause size      :   25 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t12_setfam_1,axiom,(
    ! [X1,X2] : k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_setfam_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(commutativity_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(t90_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => k1_relat_1(k7_relat_1(X2,X1)) = k3_xboole_0(k1_relat_1(X2),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t90_relat_1)).

fof(t166_funct_1,conjecture,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ! [X2] :
          ( ( v1_relat_1(X2)
            & v1_funct_1(X2) )
         => ! [X3] :
              ( ( k1_relat_1(X1) = k1_relat_1(X2)
                & ! [X4] :
                    ( r2_hidden(X4,X3)
                   => k1_funct_1(X1,X4) = k1_funct_1(X2,X4) ) )
             => k7_relat_1(X1,X3) = k7_relat_1(X2,X3) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t166_funct_1)).

fof(t71_relat_1,axiom,(
    ! [X1] :
      ( k1_relat_1(k6_relat_1(X1)) = X1
      & k2_relat_1(k6_relat_1(X1)) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_relat_1)).

fof(fc3_funct_1,axiom,(
    ! [X1] :
      ( v1_relat_1(k6_relat_1(X1))
      & v1_funct_1(k6_relat_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc3_funct_1)).

fof(t91_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(X1,k1_relat_1(X2))
       => k1_relat_1(k7_relat_1(X2,X1)) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t91_relat_1)).

fof(t89_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => r1_tarski(k1_relat_1(k7_relat_1(X2,X1)),k1_relat_1(X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t89_relat_1)).

fof(t189_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => k7_relat_1(X1,k1_relat_1(X2)) = k7_relat_1(X1,k1_relat_1(k7_relat_1(X2,k1_relat_1(X1)))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t189_relat_1)).

fof(t165_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ! [X2] :
          ( ( v1_relat_1(X2)
            & v1_funct_1(X2) )
         => ! [X3] :
              ( ( r1_tarski(X3,k1_relat_1(X1))
                & r1_tarski(X3,k1_relat_1(X2)) )
             => ( k7_relat_1(X1,X3) = k7_relat_1(X2,X3)
              <=> ! [X4] :
                    ( r2_hidden(X4,X3)
                   => k1_funct_1(X1,X4) = k1_funct_1(X2,X4) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t165_funct_1)).

fof(t86_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( r2_hidden(X1,k1_relat_1(k7_relat_1(X3,X2)))
      <=> ( r2_hidden(X1,X2)
          & r2_hidden(X1,k1_relat_1(X3)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t86_relat_1)).

fof(c_0_12,plain,(
    ! [X9,X10] : k1_setfam_1(k2_tarski(X9,X10)) = k3_xboole_0(X9,X10) ),
    inference(variable_rename,[status(thm)],[t12_setfam_1])).

fof(c_0_13,plain,(
    ! [X7,X8] : k1_enumset1(X7,X7,X8) = k2_tarski(X7,X8) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_14,plain,(
    ! [X5,X6] : k3_xboole_0(X5,X6) = k3_xboole_0(X6,X5) ),
    inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).

cnf(c_0_15,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_16,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_17,plain,(
    ! [X19,X20] :
      ( ~ v1_relat_1(X20)
      | k1_relat_1(k7_relat_1(X20,X19)) = k3_xboole_0(k1_relat_1(X20),X19) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t90_relat_1])])).

fof(c_0_18,negated_conjecture,(
    ~ ! [X1] :
        ( ( v1_relat_1(X1)
          & v1_funct_1(X1) )
       => ! [X2] :
            ( ( v1_relat_1(X2)
              & v1_funct_1(X2) )
           => ! [X3] :
                ( ( k1_relat_1(X1) = k1_relat_1(X2)
                  & ! [X4] :
                      ( r2_hidden(X4,X3)
                     => k1_funct_1(X1,X4) = k1_funct_1(X2,X4) ) )
               => k7_relat_1(X1,X3) = k7_relat_1(X2,X3) ) ) ) ),
    inference(assume_negation,[status(cth)],[t166_funct_1])).

cnf(c_0_19,plain,
    ( k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_20,plain,
    ( k1_setfam_1(k1_enumset1(X1,X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_21,plain,
    ( k1_relat_1(k7_relat_1(X1,X2)) = k3_xboole_0(k1_relat_1(X1),X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

fof(c_0_22,plain,(
    ! [X13] :
      ( k1_relat_1(k6_relat_1(X13)) = X13
      & k2_relat_1(k6_relat_1(X13)) = X13 ) ),
    inference(variable_rename,[status(thm)],[t71_relat_1])).

fof(c_0_23,plain,(
    ! [X23] :
      ( v1_relat_1(k6_relat_1(X23))
      & v1_funct_1(k6_relat_1(X23)) ) ),
    inference(variable_rename,[status(thm)],[fc3_funct_1])).

fof(c_0_24,negated_conjecture,(
    ! [X32] :
      ( v1_relat_1(esk2_0)
      & v1_funct_1(esk2_0)
      & v1_relat_1(esk3_0)
      & v1_funct_1(esk3_0)
      & k1_relat_1(esk2_0) = k1_relat_1(esk3_0)
      & ( ~ r2_hidden(X32,esk4_0)
        | k1_funct_1(esk2_0,X32) = k1_funct_1(esk3_0,X32) )
      & k7_relat_1(esk2_0,esk4_0) != k7_relat_1(esk3_0,esk4_0) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_18])])])])).

fof(c_0_25,plain,(
    ! [X21,X22] :
      ( ~ v1_relat_1(X22)
      | ~ r1_tarski(X21,k1_relat_1(X22))
      | k1_relat_1(k7_relat_1(X22,X21)) = X21 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t91_relat_1])])).

cnf(c_0_26,plain,
    ( k1_setfam_1(k1_enumset1(X1,X1,X2)) = k1_setfam_1(k1_enumset1(X2,X2,X1)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19,c_0_20]),c_0_20])).

cnf(c_0_27,plain,
    ( k1_relat_1(k7_relat_1(X1,X2)) = k1_setfam_1(k1_enumset1(k1_relat_1(X1),k1_relat_1(X1),X2))
    | ~ v1_relat_1(X1) ),
    inference(rw,[status(thm)],[c_0_21,c_0_20])).

cnf(c_0_28,plain,
    ( k1_relat_1(k6_relat_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_29,plain,
    ( v1_relat_1(k6_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_30,negated_conjecture,
    ( k1_relat_1(esk2_0) = k1_relat_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_31,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_32,plain,
    ( k1_relat_1(k7_relat_1(X1,X2)) = X2
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(X2,k1_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

fof(c_0_33,plain,(
    ! [X17,X18] :
      ( ~ v1_relat_1(X18)
      | r1_tarski(k1_relat_1(k7_relat_1(X18,X17)),k1_relat_1(X18)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t89_relat_1])])).

cnf(c_0_34,plain,
    ( k1_setfam_1(k1_enumset1(X1,X1,k1_relat_1(X2))) = k1_relat_1(k7_relat_1(X2,X1))
    | ~ v1_relat_1(X2) ),
    inference(spm,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_35,plain,
    ( k1_setfam_1(k1_enumset1(X1,X1,X2)) = k1_relat_1(k7_relat_1(k6_relat_1(X1),X2)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_28]),c_0_29])])).

cnf(c_0_36,negated_conjecture,
    ( k1_setfam_1(k1_enumset1(k1_relat_1(esk2_0),k1_relat_1(esk2_0),X1)) = k1_relat_1(k7_relat_1(esk3_0,X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_30]),c_0_31])])).

cnf(c_0_37,negated_conjecture,
    ( v1_relat_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_38,negated_conjecture,
    ( k1_relat_1(k7_relat_1(esk3_0,X1)) = X1
    | ~ r1_tarski(X1,k1_relat_1(esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_30]),c_0_31])])).

cnf(c_0_39,plain,
    ( r1_tarski(k1_relat_1(k7_relat_1(X1,X2)),k1_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

fof(c_0_40,plain,(
    ! [X11,X12] :
      ( ~ v1_relat_1(X11)
      | ~ v1_relat_1(X12)
      | k7_relat_1(X11,k1_relat_1(X12)) = k7_relat_1(X11,k1_relat_1(k7_relat_1(X12,k1_relat_1(X11)))) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t189_relat_1])])])).

cnf(c_0_41,plain,
    ( k1_relat_1(k7_relat_1(k6_relat_1(X1),k1_relat_1(X2))) = k1_relat_1(k7_relat_1(X2,X1))
    | ~ v1_relat_1(X2) ),
    inference(rw,[status(thm)],[c_0_34,c_0_35])).

cnf(c_0_42,negated_conjecture,
    ( k1_relat_1(k7_relat_1(esk3_0,X1)) = k1_relat_1(k7_relat_1(esk2_0,X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_36]),c_0_37])])).

fof(c_0_43,plain,(
    ! [X24,X25,X26,X27] :
      ( ( k7_relat_1(X24,X26) != k7_relat_1(X25,X26)
        | ~ r2_hidden(X27,X26)
        | k1_funct_1(X24,X27) = k1_funct_1(X25,X27)
        | ~ r1_tarski(X26,k1_relat_1(X24))
        | ~ r1_tarski(X26,k1_relat_1(X25))
        | ~ v1_relat_1(X25)
        | ~ v1_funct_1(X25)
        | ~ v1_relat_1(X24)
        | ~ v1_funct_1(X24) )
      & ( r2_hidden(esk1_3(X24,X25,X26),X26)
        | k7_relat_1(X24,X26) = k7_relat_1(X25,X26)
        | ~ r1_tarski(X26,k1_relat_1(X24))
        | ~ r1_tarski(X26,k1_relat_1(X25))
        | ~ v1_relat_1(X25)
        | ~ v1_funct_1(X25)
        | ~ v1_relat_1(X24)
        | ~ v1_funct_1(X24) )
      & ( k1_funct_1(X24,esk1_3(X24,X25,X26)) != k1_funct_1(X25,esk1_3(X24,X25,X26))
        | k7_relat_1(X24,X26) = k7_relat_1(X25,X26)
        | ~ r1_tarski(X26,k1_relat_1(X24))
        | ~ r1_tarski(X26,k1_relat_1(X25))
        | ~ v1_relat_1(X25)
        | ~ v1_funct_1(X25)
        | ~ v1_relat_1(X24)
        | ~ v1_funct_1(X24) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t165_funct_1])])])])])).

cnf(c_0_44,negated_conjecture,
    ( k1_relat_1(k7_relat_1(esk3_0,k1_relat_1(k7_relat_1(esk2_0,X1)))) = k1_relat_1(k7_relat_1(esk2_0,X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_39]),c_0_37])])).

cnf(c_0_45,plain,
    ( k7_relat_1(X1,k1_relat_1(X2)) = k7_relat_1(X1,k1_relat_1(k7_relat_1(X2,k1_relat_1(X1))))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

cnf(c_0_46,negated_conjecture,
    ( k1_relat_1(k7_relat_1(k6_relat_1(X1),k1_relat_1(esk2_0))) = k1_relat_1(k7_relat_1(esk2_0,X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_30]),c_0_42]),c_0_31])])).

cnf(c_0_47,negated_conjecture,
    ( k1_setfam_1(k1_enumset1(k1_relat_1(esk2_0),k1_relat_1(esk2_0),X1)) = k1_relat_1(k7_relat_1(esk2_0,X1)) ),
    inference(rw,[status(thm)],[c_0_36,c_0_42])).

cnf(c_0_48,plain,
    ( r2_hidden(esk1_3(X1,X2,X3),X3)
    | k7_relat_1(X1,X3) = k7_relat_1(X2,X3)
    | ~ r1_tarski(X3,k1_relat_1(X1))
    | ~ r1_tarski(X3,k1_relat_1(X2))
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_49,negated_conjecture,
    ( r1_tarski(k1_relat_1(k7_relat_1(esk2_0,X1)),k1_relat_1(esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_44]),c_0_30]),c_0_31])])).

cnf(c_0_50,negated_conjecture,
    ( v1_funct_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_51,negated_conjecture,
    ( k7_relat_1(esk2_0,k1_relat_1(k7_relat_1(esk2_0,X1))) = k7_relat_1(esk2_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_46]),c_0_28]),c_0_29]),c_0_37])])).

cnf(c_0_52,negated_conjecture,
    ( k7_relat_1(esk3_0,k1_relat_1(k7_relat_1(X1,k1_relat_1(esk2_0)))) = k7_relat_1(esk3_0,k1_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_30]),c_0_31])])).

cnf(c_0_53,plain,
    ( k1_relat_1(k7_relat_1(k6_relat_1(X1),X2)) = k1_relat_1(k7_relat_1(k6_relat_1(X2),X1)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26,c_0_35]),c_0_35])).

cnf(c_0_54,negated_conjecture,
    ( k1_relat_1(k7_relat_1(k6_relat_1(k1_relat_1(esk2_0)),X1)) = k1_relat_1(k7_relat_1(esk2_0,X1)) ),
    inference(rw,[status(thm)],[c_0_47,c_0_35])).

cnf(c_0_55,plain,
    ( k7_relat_1(X1,X3) = k7_relat_1(X2,X3)
    | k1_funct_1(X1,esk1_3(X1,X2,X3)) != k1_funct_1(X2,esk1_3(X1,X2,X3))
    | ~ r1_tarski(X3,k1_relat_1(X1))
    | ~ r1_tarski(X3,k1_relat_1(X2))
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_56,negated_conjecture,
    ( k1_funct_1(esk2_0,X1) = k1_funct_1(esk3_0,X1)
    | ~ r2_hidden(X1,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_57,negated_conjecture,
    ( v1_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

fof(c_0_58,plain,(
    ! [X14,X15,X16] :
      ( ( r2_hidden(X14,X15)
        | ~ r2_hidden(X14,k1_relat_1(k7_relat_1(X16,X15)))
        | ~ v1_relat_1(X16) )
      & ( r2_hidden(X14,k1_relat_1(X16))
        | ~ r2_hidden(X14,k1_relat_1(k7_relat_1(X16,X15)))
        | ~ v1_relat_1(X16) )
      & ( ~ r2_hidden(X14,X15)
        | ~ r2_hidden(X14,k1_relat_1(X16))
        | r2_hidden(X14,k1_relat_1(k7_relat_1(X16,X15)))
        | ~ v1_relat_1(X16) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t86_relat_1])])])).

cnf(c_0_59,negated_conjecture,
    ( k7_relat_1(X1,k1_relat_1(k7_relat_1(esk2_0,X2))) = k7_relat_1(esk2_0,X2)
    | r2_hidden(esk1_3(X1,esk2_0,k1_relat_1(k7_relat_1(esk2_0,X2))),k1_relat_1(k7_relat_1(esk2_0,X2)))
    | ~ v1_funct_1(X1)
    | ~ r1_tarski(k1_relat_1(k7_relat_1(esk2_0,X2)),k1_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_49]),c_0_50]),c_0_37])]),c_0_51])).

cnf(c_0_60,negated_conjecture,
    ( k7_relat_1(esk3_0,k1_relat_1(k7_relat_1(esk2_0,X1))) = k7_relat_1(esk3_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52,c_0_53]),c_0_54]),c_0_28]),c_0_29])])).

cnf(c_0_61,negated_conjecture,
    ( k7_relat_1(esk3_0,X1) = k7_relat_1(X2,X1)
    | k1_funct_1(esk2_0,esk1_3(esk3_0,X2,X1)) != k1_funct_1(X2,esk1_3(esk3_0,X2,X1))
    | ~ v1_funct_1(X2)
    | ~ r1_tarski(X1,k1_relat_1(esk2_0))
    | ~ r1_tarski(X1,k1_relat_1(X2))
    | ~ r2_hidden(esk1_3(esk3_0,X2,X1),esk4_0)
    | ~ v1_relat_1(X2) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_56]),c_0_57]),c_0_30]),c_0_31])])).

cnf(c_0_62,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(X1,k1_relat_1(k7_relat_1(X3,X2)))
    | ~ v1_relat_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_63,negated_conjecture,
    ( k7_relat_1(esk3_0,X1) = k7_relat_1(esk2_0,X1)
    | r2_hidden(esk1_3(esk3_0,esk2_0,k1_relat_1(k7_relat_1(esk2_0,X1))),k1_relat_1(k7_relat_1(esk2_0,X1))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59,c_0_30]),c_0_60]),c_0_57]),c_0_49]),c_0_31])])).

cnf(c_0_64,negated_conjecture,
    ( k7_relat_1(esk3_0,X1) = k7_relat_1(esk2_0,X1)
    | ~ r1_tarski(X1,k1_relat_1(esk2_0))
    | ~ r2_hidden(esk1_3(esk3_0,esk2_0,X1),esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_61]),c_0_50]),c_0_37])])).

cnf(c_0_65,negated_conjecture,
    ( k7_relat_1(esk3_0,X1) = k7_relat_1(esk2_0,X1)
    | r2_hidden(esk1_3(esk3_0,esk2_0,k1_relat_1(k7_relat_1(esk2_0,X1))),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62,c_0_63]),c_0_37])])).

cnf(c_0_66,negated_conjecture,
    ( k7_relat_1(esk2_0,esk4_0) != k7_relat_1(esk3_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_67,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_64,c_0_65]),c_0_60]),c_0_51]),c_0_49])]),c_0_66]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n012.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 20:10:07 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 1.98/2.14  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 1.98/2.14  # and selection function SelectComplexExceptUniqMaxHorn.
% 1.98/2.14  #
% 1.98/2.14  # Preprocessing time       : 0.013 s
% 1.98/2.14  # Presaturation interreduction done
% 1.98/2.14  
% 1.98/2.14  # Proof found!
% 1.98/2.14  # SZS status Theorem
% 1.98/2.14  # SZS output start CNFRefutation
% 1.98/2.14  fof(t12_setfam_1, axiom, ![X1, X2]:k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t12_setfam_1)).
% 1.98/2.14  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 1.98/2.14  fof(commutativity_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k3_xboole_0)).
% 1.98/2.14  fof(t90_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>k1_relat_1(k7_relat_1(X2,X1))=k3_xboole_0(k1_relat_1(X2),X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t90_relat_1)).
% 1.98/2.14  fof(t166_funct_1, conjecture, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>![X3]:((k1_relat_1(X1)=k1_relat_1(X2)&![X4]:(r2_hidden(X4,X3)=>k1_funct_1(X1,X4)=k1_funct_1(X2,X4)))=>k7_relat_1(X1,X3)=k7_relat_1(X2,X3)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t166_funct_1)).
% 1.98/2.14  fof(t71_relat_1, axiom, ![X1]:(k1_relat_1(k6_relat_1(X1))=X1&k2_relat_1(k6_relat_1(X1))=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_relat_1)).
% 1.98/2.14  fof(fc3_funct_1, axiom, ![X1]:(v1_relat_1(k6_relat_1(X1))&v1_funct_1(k6_relat_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc3_funct_1)).
% 1.98/2.14  fof(t91_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(r1_tarski(X1,k1_relat_1(X2))=>k1_relat_1(k7_relat_1(X2,X1))=X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t91_relat_1)).
% 1.98/2.14  fof(t89_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>r1_tarski(k1_relat_1(k7_relat_1(X2,X1)),k1_relat_1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t89_relat_1)).
% 1.98/2.14  fof(t189_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>k7_relat_1(X1,k1_relat_1(X2))=k7_relat_1(X1,k1_relat_1(k7_relat_1(X2,k1_relat_1(X1)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t189_relat_1)).
% 1.98/2.14  fof(t165_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>![X3]:((r1_tarski(X3,k1_relat_1(X1))&r1_tarski(X3,k1_relat_1(X2)))=>(k7_relat_1(X1,X3)=k7_relat_1(X2,X3)<=>![X4]:(r2_hidden(X4,X3)=>k1_funct_1(X1,X4)=k1_funct_1(X2,X4)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t165_funct_1)).
% 1.98/2.14  fof(t86_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>(r2_hidden(X1,k1_relat_1(k7_relat_1(X3,X2)))<=>(r2_hidden(X1,X2)&r2_hidden(X1,k1_relat_1(X3))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t86_relat_1)).
% 1.98/2.14  fof(c_0_12, plain, ![X9, X10]:k1_setfam_1(k2_tarski(X9,X10))=k3_xboole_0(X9,X10), inference(variable_rename,[status(thm)],[t12_setfam_1])).
% 1.98/2.14  fof(c_0_13, plain, ![X7, X8]:k1_enumset1(X7,X7,X8)=k2_tarski(X7,X8), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 1.98/2.14  fof(c_0_14, plain, ![X5, X6]:k3_xboole_0(X5,X6)=k3_xboole_0(X6,X5), inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).
% 1.98/2.14  cnf(c_0_15, plain, (k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 1.98/2.14  cnf(c_0_16, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 1.98/2.14  fof(c_0_17, plain, ![X19, X20]:(~v1_relat_1(X20)|k1_relat_1(k7_relat_1(X20,X19))=k3_xboole_0(k1_relat_1(X20),X19)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t90_relat_1])])).
% 1.98/2.14  fof(c_0_18, negated_conjecture, ~(![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>![X3]:((k1_relat_1(X1)=k1_relat_1(X2)&![X4]:(r2_hidden(X4,X3)=>k1_funct_1(X1,X4)=k1_funct_1(X2,X4)))=>k7_relat_1(X1,X3)=k7_relat_1(X2,X3))))), inference(assume_negation,[status(cth)],[t166_funct_1])).
% 1.98/2.14  cnf(c_0_19, plain, (k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 1.98/2.14  cnf(c_0_20, plain, (k1_setfam_1(k1_enumset1(X1,X1,X2))=k3_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_15, c_0_16])).
% 1.98/2.14  cnf(c_0_21, plain, (k1_relat_1(k7_relat_1(X1,X2))=k3_xboole_0(k1_relat_1(X1),X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 1.98/2.14  fof(c_0_22, plain, ![X13]:(k1_relat_1(k6_relat_1(X13))=X13&k2_relat_1(k6_relat_1(X13))=X13), inference(variable_rename,[status(thm)],[t71_relat_1])).
% 1.98/2.14  fof(c_0_23, plain, ![X23]:(v1_relat_1(k6_relat_1(X23))&v1_funct_1(k6_relat_1(X23))), inference(variable_rename,[status(thm)],[fc3_funct_1])).
% 1.98/2.14  fof(c_0_24, negated_conjecture, ![X32]:((v1_relat_1(esk2_0)&v1_funct_1(esk2_0))&((v1_relat_1(esk3_0)&v1_funct_1(esk3_0))&((k1_relat_1(esk2_0)=k1_relat_1(esk3_0)&(~r2_hidden(X32,esk4_0)|k1_funct_1(esk2_0,X32)=k1_funct_1(esk3_0,X32)))&k7_relat_1(esk2_0,esk4_0)!=k7_relat_1(esk3_0,esk4_0)))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_18])])])])).
% 1.98/2.14  fof(c_0_25, plain, ![X21, X22]:(~v1_relat_1(X22)|(~r1_tarski(X21,k1_relat_1(X22))|k1_relat_1(k7_relat_1(X22,X21))=X21)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t91_relat_1])])).
% 1.98/2.14  cnf(c_0_26, plain, (k1_setfam_1(k1_enumset1(X1,X1,X2))=k1_setfam_1(k1_enumset1(X2,X2,X1))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19, c_0_20]), c_0_20])).
% 1.98/2.14  cnf(c_0_27, plain, (k1_relat_1(k7_relat_1(X1,X2))=k1_setfam_1(k1_enumset1(k1_relat_1(X1),k1_relat_1(X1),X2))|~v1_relat_1(X1)), inference(rw,[status(thm)],[c_0_21, c_0_20])).
% 1.98/2.14  cnf(c_0_28, plain, (k1_relat_1(k6_relat_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_22])).
% 1.98/2.14  cnf(c_0_29, plain, (v1_relat_1(k6_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 1.98/2.14  cnf(c_0_30, negated_conjecture, (k1_relat_1(esk2_0)=k1_relat_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 1.98/2.14  cnf(c_0_31, negated_conjecture, (v1_relat_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 1.98/2.14  cnf(c_0_32, plain, (k1_relat_1(k7_relat_1(X1,X2))=X2|~v1_relat_1(X1)|~r1_tarski(X2,k1_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 1.98/2.14  fof(c_0_33, plain, ![X17, X18]:(~v1_relat_1(X18)|r1_tarski(k1_relat_1(k7_relat_1(X18,X17)),k1_relat_1(X18))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t89_relat_1])])).
% 1.98/2.14  cnf(c_0_34, plain, (k1_setfam_1(k1_enumset1(X1,X1,k1_relat_1(X2)))=k1_relat_1(k7_relat_1(X2,X1))|~v1_relat_1(X2)), inference(spm,[status(thm)],[c_0_26, c_0_27])).
% 1.98/2.14  cnf(c_0_35, plain, (k1_setfam_1(k1_enumset1(X1,X1,X2))=k1_relat_1(k7_relat_1(k6_relat_1(X1),X2))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_28]), c_0_29])])).
% 1.98/2.14  cnf(c_0_36, negated_conjecture, (k1_setfam_1(k1_enumset1(k1_relat_1(esk2_0),k1_relat_1(esk2_0),X1))=k1_relat_1(k7_relat_1(esk3_0,X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_30]), c_0_31])])).
% 1.98/2.14  cnf(c_0_37, negated_conjecture, (v1_relat_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 1.98/2.14  cnf(c_0_38, negated_conjecture, (k1_relat_1(k7_relat_1(esk3_0,X1))=X1|~r1_tarski(X1,k1_relat_1(esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_30]), c_0_31])])).
% 1.98/2.14  cnf(c_0_39, plain, (r1_tarski(k1_relat_1(k7_relat_1(X1,X2)),k1_relat_1(X1))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_33])).
% 1.98/2.14  fof(c_0_40, plain, ![X11, X12]:(~v1_relat_1(X11)|(~v1_relat_1(X12)|k7_relat_1(X11,k1_relat_1(X12))=k7_relat_1(X11,k1_relat_1(k7_relat_1(X12,k1_relat_1(X11)))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t189_relat_1])])])).
% 1.98/2.14  cnf(c_0_41, plain, (k1_relat_1(k7_relat_1(k6_relat_1(X1),k1_relat_1(X2)))=k1_relat_1(k7_relat_1(X2,X1))|~v1_relat_1(X2)), inference(rw,[status(thm)],[c_0_34, c_0_35])).
% 1.98/2.14  cnf(c_0_42, negated_conjecture, (k1_relat_1(k7_relat_1(esk3_0,X1))=k1_relat_1(k7_relat_1(esk2_0,X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_36]), c_0_37])])).
% 1.98/2.14  fof(c_0_43, plain, ![X24, X25, X26, X27]:((k7_relat_1(X24,X26)!=k7_relat_1(X25,X26)|(~r2_hidden(X27,X26)|k1_funct_1(X24,X27)=k1_funct_1(X25,X27))|(~r1_tarski(X26,k1_relat_1(X24))|~r1_tarski(X26,k1_relat_1(X25)))|(~v1_relat_1(X25)|~v1_funct_1(X25))|(~v1_relat_1(X24)|~v1_funct_1(X24)))&((r2_hidden(esk1_3(X24,X25,X26),X26)|k7_relat_1(X24,X26)=k7_relat_1(X25,X26)|(~r1_tarski(X26,k1_relat_1(X24))|~r1_tarski(X26,k1_relat_1(X25)))|(~v1_relat_1(X25)|~v1_funct_1(X25))|(~v1_relat_1(X24)|~v1_funct_1(X24)))&(k1_funct_1(X24,esk1_3(X24,X25,X26))!=k1_funct_1(X25,esk1_3(X24,X25,X26))|k7_relat_1(X24,X26)=k7_relat_1(X25,X26)|(~r1_tarski(X26,k1_relat_1(X24))|~r1_tarski(X26,k1_relat_1(X25)))|(~v1_relat_1(X25)|~v1_funct_1(X25))|(~v1_relat_1(X24)|~v1_funct_1(X24))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t165_funct_1])])])])])).
% 1.98/2.14  cnf(c_0_44, negated_conjecture, (k1_relat_1(k7_relat_1(esk3_0,k1_relat_1(k7_relat_1(esk2_0,X1))))=k1_relat_1(k7_relat_1(esk2_0,X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_39]), c_0_37])])).
% 1.98/2.14  cnf(c_0_45, plain, (k7_relat_1(X1,k1_relat_1(X2))=k7_relat_1(X1,k1_relat_1(k7_relat_1(X2,k1_relat_1(X1))))|~v1_relat_1(X1)|~v1_relat_1(X2)), inference(split_conjunct,[status(thm)],[c_0_40])).
% 1.98/2.14  cnf(c_0_46, negated_conjecture, (k1_relat_1(k7_relat_1(k6_relat_1(X1),k1_relat_1(esk2_0)))=k1_relat_1(k7_relat_1(esk2_0,X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_30]), c_0_42]), c_0_31])])).
% 1.98/2.14  cnf(c_0_47, negated_conjecture, (k1_setfam_1(k1_enumset1(k1_relat_1(esk2_0),k1_relat_1(esk2_0),X1))=k1_relat_1(k7_relat_1(esk2_0,X1))), inference(rw,[status(thm)],[c_0_36, c_0_42])).
% 1.98/2.14  cnf(c_0_48, plain, (r2_hidden(esk1_3(X1,X2,X3),X3)|k7_relat_1(X1,X3)=k7_relat_1(X2,X3)|~r1_tarski(X3,k1_relat_1(X1))|~r1_tarski(X3,k1_relat_1(X2))|~v1_relat_1(X2)|~v1_funct_1(X2)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 1.98/2.14  cnf(c_0_49, negated_conjecture, (r1_tarski(k1_relat_1(k7_relat_1(esk2_0,X1)),k1_relat_1(esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_44]), c_0_30]), c_0_31])])).
% 1.98/2.14  cnf(c_0_50, negated_conjecture, (v1_funct_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 1.98/2.14  cnf(c_0_51, negated_conjecture, (k7_relat_1(esk2_0,k1_relat_1(k7_relat_1(esk2_0,X1)))=k7_relat_1(esk2_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_46]), c_0_28]), c_0_29]), c_0_37])])).
% 1.98/2.14  cnf(c_0_52, negated_conjecture, (k7_relat_1(esk3_0,k1_relat_1(k7_relat_1(X1,k1_relat_1(esk2_0))))=k7_relat_1(esk3_0,k1_relat_1(X1))|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_30]), c_0_31])])).
% 1.98/2.14  cnf(c_0_53, plain, (k1_relat_1(k7_relat_1(k6_relat_1(X1),X2))=k1_relat_1(k7_relat_1(k6_relat_1(X2),X1))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26, c_0_35]), c_0_35])).
% 1.98/2.14  cnf(c_0_54, negated_conjecture, (k1_relat_1(k7_relat_1(k6_relat_1(k1_relat_1(esk2_0)),X1))=k1_relat_1(k7_relat_1(esk2_0,X1))), inference(rw,[status(thm)],[c_0_47, c_0_35])).
% 1.98/2.14  cnf(c_0_55, plain, (k7_relat_1(X1,X3)=k7_relat_1(X2,X3)|k1_funct_1(X1,esk1_3(X1,X2,X3))!=k1_funct_1(X2,esk1_3(X1,X2,X3))|~r1_tarski(X3,k1_relat_1(X1))|~r1_tarski(X3,k1_relat_1(X2))|~v1_relat_1(X2)|~v1_funct_1(X2)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 1.98/2.14  cnf(c_0_56, negated_conjecture, (k1_funct_1(esk2_0,X1)=k1_funct_1(esk3_0,X1)|~r2_hidden(X1,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 1.98/2.14  cnf(c_0_57, negated_conjecture, (v1_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 1.98/2.14  fof(c_0_58, plain, ![X14, X15, X16]:(((r2_hidden(X14,X15)|~r2_hidden(X14,k1_relat_1(k7_relat_1(X16,X15)))|~v1_relat_1(X16))&(r2_hidden(X14,k1_relat_1(X16))|~r2_hidden(X14,k1_relat_1(k7_relat_1(X16,X15)))|~v1_relat_1(X16)))&(~r2_hidden(X14,X15)|~r2_hidden(X14,k1_relat_1(X16))|r2_hidden(X14,k1_relat_1(k7_relat_1(X16,X15)))|~v1_relat_1(X16))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t86_relat_1])])])).
% 1.98/2.14  cnf(c_0_59, negated_conjecture, (k7_relat_1(X1,k1_relat_1(k7_relat_1(esk2_0,X2)))=k7_relat_1(esk2_0,X2)|r2_hidden(esk1_3(X1,esk2_0,k1_relat_1(k7_relat_1(esk2_0,X2))),k1_relat_1(k7_relat_1(esk2_0,X2)))|~v1_funct_1(X1)|~r1_tarski(k1_relat_1(k7_relat_1(esk2_0,X2)),k1_relat_1(X1))|~v1_relat_1(X1)), inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_49]), c_0_50]), c_0_37])]), c_0_51])).
% 1.98/2.14  cnf(c_0_60, negated_conjecture, (k7_relat_1(esk3_0,k1_relat_1(k7_relat_1(esk2_0,X1)))=k7_relat_1(esk3_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52, c_0_53]), c_0_54]), c_0_28]), c_0_29])])).
% 1.98/2.14  cnf(c_0_61, negated_conjecture, (k7_relat_1(esk3_0,X1)=k7_relat_1(X2,X1)|k1_funct_1(esk2_0,esk1_3(esk3_0,X2,X1))!=k1_funct_1(X2,esk1_3(esk3_0,X2,X1))|~v1_funct_1(X2)|~r1_tarski(X1,k1_relat_1(esk2_0))|~r1_tarski(X1,k1_relat_1(X2))|~r2_hidden(esk1_3(esk3_0,X2,X1),esk4_0)|~v1_relat_1(X2)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_56]), c_0_57]), c_0_30]), c_0_31])])).
% 1.98/2.14  cnf(c_0_62, plain, (r2_hidden(X1,X2)|~r2_hidden(X1,k1_relat_1(k7_relat_1(X3,X2)))|~v1_relat_1(X3)), inference(split_conjunct,[status(thm)],[c_0_58])).
% 1.98/2.14  cnf(c_0_63, negated_conjecture, (k7_relat_1(esk3_0,X1)=k7_relat_1(esk2_0,X1)|r2_hidden(esk1_3(esk3_0,esk2_0,k1_relat_1(k7_relat_1(esk2_0,X1))),k1_relat_1(k7_relat_1(esk2_0,X1)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59, c_0_30]), c_0_60]), c_0_57]), c_0_49]), c_0_31])])).
% 1.98/2.14  cnf(c_0_64, negated_conjecture, (k7_relat_1(esk3_0,X1)=k7_relat_1(esk2_0,X1)|~r1_tarski(X1,k1_relat_1(esk2_0))|~r2_hidden(esk1_3(esk3_0,esk2_0,X1),esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_61]), c_0_50]), c_0_37])])).
% 1.98/2.14  cnf(c_0_65, negated_conjecture, (k7_relat_1(esk3_0,X1)=k7_relat_1(esk2_0,X1)|r2_hidden(esk1_3(esk3_0,esk2_0,k1_relat_1(k7_relat_1(esk2_0,X1))),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62, c_0_63]), c_0_37])])).
% 1.98/2.14  cnf(c_0_66, negated_conjecture, (k7_relat_1(esk2_0,esk4_0)!=k7_relat_1(esk3_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 1.98/2.14  cnf(c_0_67, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_64, c_0_65]), c_0_60]), c_0_51]), c_0_49])]), c_0_66]), ['proof']).
% 1.98/2.14  # SZS output end CNFRefutation
% 1.98/2.14  # Proof object total steps             : 68
% 1.98/2.14  # Proof object clause steps            : 43
% 1.98/2.14  # Proof object formula steps           : 25
% 1.98/2.14  # Proof object conjectures             : 27
% 1.98/2.14  # Proof object clause conjectures      : 24
% 1.98/2.14  # Proof object formula conjectures     : 3
% 1.98/2.14  # Proof object initial clauses used    : 19
% 1.98/2.14  # Proof object initial formulas used   : 12
% 1.98/2.14  # Proof object generating inferences   : 17
% 1.98/2.14  # Proof object simplifying inferences  : 58
% 1.98/2.14  # Training examples: 0 positive, 0 negative
% 1.98/2.14  # Parsed axioms                        : 12
% 1.98/2.14  # Removed by relevancy pruning/SinE    : 0
% 1.98/2.14  # Initial clauses                      : 24
% 1.98/2.14  # Removed in clause preprocessing      : 2
% 1.98/2.14  # Initial clauses in saturation        : 22
% 1.98/2.14  # Processed clauses                    : 6409
% 1.98/2.14  # ...of these trivial                  : 44
% 1.98/2.14  # ...subsumed                          : 5495
% 1.98/2.14  # ...remaining for further processing  : 870
% 1.98/2.14  # Other redundant clauses eliminated   : 0
% 1.98/2.14  # Clauses deleted for lack of memory   : 0
% 1.98/2.14  # Backward-subsumed                    : 35
% 1.98/2.14  # Backward-rewritten                   : 22
% 1.98/2.14  # Generated clauses                    : 143826
% 1.98/2.14  # ...of the previous two non-trivial   : 137952
% 1.98/2.14  # Contextual simplify-reflections      : 4
% 1.98/2.14  # Paramodulations                      : 143823
% 1.98/2.14  # Factorizations                       : 0
% 1.98/2.14  # Equation resolutions                 : 3
% 1.98/2.14  # Propositional unsat checks           : 0
% 1.98/2.14  #    Propositional check models        : 0
% 1.98/2.14  #    Propositional check unsatisfiable : 0
% 1.98/2.14  #    Propositional clauses             : 0
% 1.98/2.14  #    Propositional clauses after purity: 0
% 1.98/2.14  #    Propositional unsat core size     : 0
% 1.98/2.14  #    Propositional preprocessing time  : 0.000
% 1.98/2.14  #    Propositional encoding time       : 0.000
% 1.98/2.14  #    Propositional solver time         : 0.000
% 1.98/2.14  #    Success case prop preproc time    : 0.000
% 1.98/2.14  #    Success case prop encoding time   : 0.000
% 1.98/2.14  #    Success case prop solver time     : 0.000
% 1.98/2.14  # Current number of processed clauses  : 791
% 1.98/2.14  #    Positive orientable unit clauses  : 27
% 1.98/2.14  #    Positive unorientable unit clauses: 1
% 1.98/2.14  #    Negative unit clauses             : 1
% 1.98/2.14  #    Non-unit-clauses                  : 762
% 1.98/2.14  # Current number of unprocessed clauses: 131339
% 1.98/2.14  # ...number of literals in the above   : 762128
% 1.98/2.14  # Current number of archived formulas  : 0
% 1.98/2.14  # Current number of archived clauses   : 81
% 1.98/2.14  # Clause-clause subsumption calls (NU) : 338593
% 1.98/2.14  # Rec. Clause-clause subsumption calls : 159887
% 1.98/2.14  # Non-unit clause-clause subsumptions  : 5528
% 1.98/2.14  # Unit Clause-clause subsumption calls : 1148
% 1.98/2.14  # Rewrite failures with RHS unbound    : 0
% 1.98/2.14  # BW rewrite match attempts            : 150
% 1.98/2.14  # BW rewrite match successes           : 32
% 1.98/2.14  # Condensation attempts                : 0
% 1.98/2.14  # Condensation successes               : 0
% 1.98/2.14  # Termbank termtop insertions          : 6590857
% 1.98/2.15  
% 1.98/2.15  # -------------------------------------------------
% 1.98/2.15  # User time                : 1.753 s
% 1.98/2.15  # System time              : 0.064 s
% 1.98/2.15  # Total time               : 1.817 s
% 1.98/2.15  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
