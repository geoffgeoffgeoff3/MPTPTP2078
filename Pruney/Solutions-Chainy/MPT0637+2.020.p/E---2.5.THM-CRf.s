%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:53:26 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :  101 (11707 expanded)
%              Number of clauses        :   68 (5028 expanded)
%              Number of leaves         :   16 (3339 expanded)
%              Depth                    :   20
%              Number of atoms          :  173 (17064 expanded)
%              Number of equality atoms :   85 (10058 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal clause size      :    4 (   2 average)
%              Maximal term depth       :    7 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t12_setfam_1,axiom,(
    ! [X1,X2] : k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(t17_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k3_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t17_xboole_1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(commutativity_k2_tarski,axiom,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(t119_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => k2_relat_1(k8_relat_1(X1,X2)) = k3_xboole_0(k2_relat_1(X2),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t119_relat_1)).

fof(t71_relat_1,axiom,(
    ! [X1] :
      ( k1_relat_1(k6_relat_1(X1)) = X1
      & k2_relat_1(k6_relat_1(X1)) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_relat_1)).

fof(fc3_funct_1,axiom,(
    ! [X1] :
      ( v1_relat_1(k6_relat_1(X1))
      & v1_funct_1(k6_relat_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc3_funct_1)).

fof(t80_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k5_relat_1(X1,k6_relat_1(k2_relat_1(X1))) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t80_relat_1)).

fof(t123_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => k8_relat_1(X1,X2) = k5_relat_1(X2,k6_relat_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t123_relat_1)).

fof(dt_k5_relat_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X1)
        & v1_relat_1(X2) )
     => v1_relat_1(k5_relat_1(X1,X2)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k5_relat_1)).

fof(t55_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => ! [X3] :
              ( v1_relat_1(X3)
             => k5_relat_1(k5_relat_1(X1,X2),X3) = k5_relat_1(X1,k5_relat_1(X2,X3)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t55_relat_1)).

fof(t125_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(k2_relat_1(X2),X1)
       => k8_relat_1(X1,X2) = X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t125_relat_1)).

fof(t100_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => k7_relat_1(k7_relat_1(X3,X1),X2) = k7_relat_1(X3,k3_xboole_0(X1,X2)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_relat_1)).

fof(t94_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => k7_relat_1(X2,X1) = k5_relat_1(k6_relat_1(X1),X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t94_relat_1)).

fof(t43_funct_1,conjecture,(
    ! [X1,X2] : k5_relat_1(k6_relat_1(X2),k6_relat_1(X1)) = k6_relat_1(k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t43_funct_1)).

fof(c_0_16,plain,(
    ! [X13,X14] : k1_setfam_1(k2_tarski(X13,X14)) = k3_xboole_0(X13,X14) ),
    inference(variable_rename,[status(thm)],[t12_setfam_1])).

fof(c_0_17,plain,(
    ! [X8,X9] : k1_enumset1(X8,X8,X9) = k2_tarski(X8,X9) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_18,plain,(
    ! [X4,X5] : r1_tarski(k3_xboole_0(X4,X5),X4) ),
    inference(variable_rename,[status(thm)],[t17_xboole_1])).

cnf(c_0_19,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_20,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

fof(c_0_21,plain,(
    ! [X10,X11,X12] : k2_enumset1(X10,X10,X11,X12) = k1_enumset1(X10,X11,X12) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_22,plain,(
    ! [X6,X7] : k2_tarski(X6,X7) = k2_tarski(X7,X6) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).

fof(c_0_23,plain,(
    ! [X20,X21] :
      ( ~ v1_relat_1(X21)
      | k2_relat_1(k8_relat_1(X20,X21)) = k3_xboole_0(k2_relat_1(X21),X20) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t119_relat_1])])).

cnf(c_0_24,plain,
    ( r1_tarski(k3_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_25,plain,
    ( k1_setfam_1(k1_enumset1(X1,X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_19,c_0_20])).

cnf(c_0_26,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_27,plain,
    ( k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_28,plain,
    ( k2_relat_1(k8_relat_1(X2,X1)) = k3_xboole_0(k2_relat_1(X1),X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

fof(c_0_29,plain,(
    ! [X29] :
      ( k1_relat_1(k6_relat_1(X29)) = X29
      & k2_relat_1(k6_relat_1(X29)) = X29 ) ),
    inference(variable_rename,[status(thm)],[t71_relat_1])).

fof(c_0_30,plain,(
    ! [X33] :
      ( v1_relat_1(k6_relat_1(X33))
      & v1_funct_1(k6_relat_1(X33)) ) ),
    inference(variable_rename,[status(thm)],[fc3_funct_1])).

cnf(c_0_31,plain,
    ( r1_tarski(k1_setfam_1(k2_enumset1(X1,X1,X1,X2)),X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24,c_0_25]),c_0_26])).

cnf(c_0_32,plain,
    ( k2_enumset1(X1,X1,X1,X2) = k2_enumset1(X2,X2,X2,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_27,c_0_20]),c_0_20]),c_0_26]),c_0_26])).

cnf(c_0_33,plain,
    ( k2_relat_1(k8_relat_1(X2,X1)) = k1_setfam_1(k2_enumset1(k2_relat_1(X1),k2_relat_1(X1),k2_relat_1(X1),X2))
    | ~ v1_relat_1(X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_28,c_0_25]),c_0_26])).

cnf(c_0_34,plain,
    ( k2_relat_1(k6_relat_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_35,plain,
    ( v1_relat_1(k6_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

fof(c_0_36,plain,(
    ! [X30] :
      ( ~ v1_relat_1(X30)
      | k5_relat_1(X30,k6_relat_1(k2_relat_1(X30))) = X30 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t80_relat_1])])).

cnf(c_0_37,plain,
    ( r1_tarski(k1_setfam_1(k2_enumset1(X1,X1,X1,X2)),X2) ),
    inference(spm,[status(thm)],[c_0_31,c_0_32])).

cnf(c_0_38,plain,
    ( k1_setfam_1(k2_enumset1(X1,X1,X1,X2)) = k2_relat_1(k8_relat_1(X2,k6_relat_1(X1))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_35])])).

fof(c_0_39,plain,(
    ! [X22,X23] :
      ( ~ v1_relat_1(X23)
      | k8_relat_1(X22,X23) = k5_relat_1(X23,k6_relat_1(X22)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t123_relat_1])])).

fof(c_0_40,plain,(
    ! [X15,X16] :
      ( ~ v1_relat_1(X15)
      | ~ v1_relat_1(X16)
      | v1_relat_1(k5_relat_1(X15,X16)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k5_relat_1])])).

fof(c_0_41,plain,(
    ! [X26,X27,X28] :
      ( ~ v1_relat_1(X26)
      | ~ v1_relat_1(X27)
      | ~ v1_relat_1(X28)
      | k5_relat_1(k5_relat_1(X26,X27),X28) = k5_relat_1(X26,k5_relat_1(X27,X28)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_relat_1])])])).

cnf(c_0_42,plain,
    ( k5_relat_1(X1,k6_relat_1(k2_relat_1(X1))) = X1
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

fof(c_0_43,plain,(
    ! [X24,X25] :
      ( ~ v1_relat_1(X25)
      | ~ r1_tarski(k2_relat_1(X25),X24)
      | k8_relat_1(X24,X25) = X25 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t125_relat_1])])).

fof(c_0_44,plain,(
    ! [X17,X18,X19] :
      ( ~ v1_relat_1(X19)
      | k7_relat_1(k7_relat_1(X19,X17),X18) = k7_relat_1(X19,k3_xboole_0(X17,X18)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t100_relat_1])])).

cnf(c_0_45,plain,
    ( r1_tarski(k2_relat_1(k8_relat_1(X1,k6_relat_1(X2))),X1) ),
    inference(rw,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_46,plain,
    ( k8_relat_1(X2,X1) = k5_relat_1(X1,k6_relat_1(X2))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_47,plain,
    ( v1_relat_1(k5_relat_1(X1,X2))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

cnf(c_0_48,plain,
    ( k5_relat_1(k5_relat_1(X1,X2),X3) = k5_relat_1(X1,k5_relat_1(X2,X3))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_41])).

cnf(c_0_49,plain,
    ( k5_relat_1(k6_relat_1(X1),k6_relat_1(X1)) = k6_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42,c_0_34]),c_0_35])])).

cnf(c_0_50,plain,
    ( k2_relat_1(k8_relat_1(X1,k6_relat_1(X2))) = k2_relat_1(k8_relat_1(X2,k6_relat_1(X1))) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_32]),c_0_38])).

cnf(c_0_51,plain,
    ( k8_relat_1(X2,X1) = X1
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k2_relat_1(X1),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_52,plain,
    ( k7_relat_1(k7_relat_1(X1,X2),X3) = k7_relat_1(X1,k3_xboole_0(X2,X3))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_53,plain,
    ( r1_tarski(k2_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))),X2) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_46]),c_0_35])])).

cnf(c_0_54,plain,
    ( v1_relat_1(k5_relat_1(X1,k5_relat_1(X2,X3)))
    | ~ v1_relat_1(X3)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_48]),c_0_47])).

cnf(c_0_55,plain,
    ( k5_relat_1(k6_relat_1(X1),k5_relat_1(k6_relat_1(X1),X2)) = k5_relat_1(k6_relat_1(X1),X2)
    | ~ v1_relat_1(X2) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_49]),c_0_35])])).

cnf(c_0_56,plain,
    ( k2_relat_1(k8_relat_1(X1,k6_relat_1(X2))) = k2_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_46]),c_0_35])])).

cnf(c_0_57,plain,
    ( k2_relat_1(k8_relat_1(X1,k6_relat_1(k2_relat_1(X2)))) = k2_relat_1(k8_relat_1(X1,X2))
    | ~ v1_relat_1(X2) ),
    inference(rw,[status(thm)],[c_0_33,c_0_38])).

cnf(c_0_58,plain,
    ( k8_relat_1(X1,k6_relat_1(X2)) = k6_relat_1(X2)
    | ~ r1_tarski(X2,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_34]),c_0_35])])).

cnf(c_0_59,plain,
    ( k7_relat_1(k7_relat_1(X1,X2),X3) = k7_relat_1(X1,k1_setfam_1(k2_enumset1(X2,X2,X2,X3)))
    | ~ v1_relat_1(X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_52,c_0_25]),c_0_26])).

cnf(c_0_60,plain,
    ( r1_tarski(X1,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_42]),c_0_34]),c_0_34]),c_0_35])])).

cnf(c_0_61,plain,
    ( v1_relat_1(k5_relat_1(k6_relat_1(X1),X2))
    | ~ v1_relat_1(X2) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54,c_0_55]),c_0_35])])).

cnf(c_0_62,plain,
    ( k8_relat_1(X1,k5_relat_1(k6_relat_1(X2),k6_relat_1(X1))) = k5_relat_1(k6_relat_1(X2),k6_relat_1(X1))
    | ~ v1_relat_1(k5_relat_1(k6_relat_1(X2),k6_relat_1(X1))) ),
    inference(spm,[status(thm)],[c_0_51,c_0_53])).

cnf(c_0_63,plain,
    ( k5_relat_1(X1,k5_relat_1(X2,k6_relat_1(k2_relat_1(k5_relat_1(X1,X2))))) = k5_relat_1(X1,X2)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X1) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42,c_0_48]),c_0_35])]),c_0_47])).

cnf(c_0_64,plain,
    ( k2_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))) = k2_relat_1(k5_relat_1(k6_relat_1(X2),k6_relat_1(X1))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_50,c_0_56]),c_0_56])).

cnf(c_0_65,plain,
    ( k2_relat_1(k8_relat_1(X1,X2)) = k2_relat_1(X2)
    | ~ v1_relat_1(X2)
    | ~ r1_tarski(k2_relat_1(X2),X1) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_58]),c_0_34])).

cnf(c_0_66,plain,
    ( k7_relat_1(X1,k2_relat_1(k8_relat_1(X2,k6_relat_1(X3)))) = k7_relat_1(k7_relat_1(X1,X3),X2)
    | ~ v1_relat_1(X1) ),
    inference(rw,[status(thm)],[c_0_59,c_0_38])).

cnf(c_0_67,plain,
    ( k8_relat_1(k2_relat_1(X1),X1) = X1
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_51,c_0_60])).

fof(c_0_68,plain,(
    ! [X31,X32] :
      ( ~ v1_relat_1(X32)
      | k7_relat_1(X32,X31) = k5_relat_1(k6_relat_1(X31),X32) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t94_relat_1])])).

cnf(c_0_69,plain,
    ( k5_relat_1(k6_relat_1(X1),k5_relat_1(k5_relat_1(k6_relat_1(X1),X2),X3)) = k5_relat_1(k5_relat_1(k6_relat_1(X1),X2),X3)
    | ~ v1_relat_1(X3)
    | ~ v1_relat_1(X2) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_55]),c_0_35])]),c_0_61])).

cnf(c_0_70,plain,
    ( k5_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)),k6_relat_1(X2)) = k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))
    | ~ v1_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))) ),
    inference(spm,[status(thm)],[c_0_46,c_0_62])).

cnf(c_0_71,plain,
    ( k5_relat_1(k6_relat_1(X1),k5_relat_1(k6_relat_1(X2),k6_relat_1(k2_relat_1(k5_relat_1(k6_relat_1(X2),k6_relat_1(X1)))))) = k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63,c_0_64]),c_0_35]),c_0_35])])).

cnf(c_0_72,plain,
    ( k2_relat_1(k8_relat_1(X1,k6_relat_1(X2))) = X2
    | ~ r1_tarski(X2,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65,c_0_34]),c_0_35])])).

cnf(c_0_73,plain,
    ( k7_relat_1(k7_relat_1(X1,X2),X2) = k7_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66,c_0_67]),c_0_34]),c_0_34]),c_0_35])])).

cnf(c_0_74,plain,
    ( k7_relat_1(X1,X2) = k5_relat_1(k6_relat_1(X2),X1)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_68])).

cnf(c_0_75,plain,
    ( k5_relat_1(k6_relat_1(X1),k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))) = k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))
    | ~ v1_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_69,c_0_70]),c_0_35])])).

cnf(c_0_76,plain,
    ( v1_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54,c_0_71]),c_0_35]),c_0_35]),c_0_35])])).

cnf(c_0_77,plain,
    ( k7_relat_1(X1,k2_relat_1(k5_relat_1(k6_relat_1(X2),k6_relat_1(X3)))) = k7_relat_1(k7_relat_1(X1,X3),X2)
    | ~ v1_relat_1(X1) ),
    inference(rw,[status(thm)],[c_0_66,c_0_56])).

cnf(c_0_78,plain,
    ( k2_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))) = X2
    | ~ r1_tarski(X2,X1) ),
    inference(spm,[status(thm)],[c_0_72,c_0_56])).

cnf(c_0_79,plain,
    ( k7_relat_1(k5_relat_1(k6_relat_1(X1),X2),X1) = k5_relat_1(k6_relat_1(X1),X2)
    | ~ v1_relat_1(X2) ),
    inference(spm,[status(thm)],[c_0_73,c_0_74])).

cnf(c_0_80,plain,
    ( k5_relat_1(k6_relat_1(X1),k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))) = k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_75,c_0_76])])).

fof(c_0_81,negated_conjecture,(
    ~ ! [X1,X2] : k5_relat_1(k6_relat_1(X2),k6_relat_1(X1)) = k6_relat_1(k3_xboole_0(X1,X2)) ),
    inference(assume_negation,[status(cth)],[t43_funct_1])).

cnf(c_0_82,plain,
    ( k7_relat_1(k7_relat_1(X1,X2),X3) = k7_relat_1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(X2,X3) ),
    inference(spm,[status(thm)],[c_0_77,c_0_78])).

cnf(c_0_83,plain,
    ( k7_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)),X1) = k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79,c_0_80]),c_0_76])])).

fof(c_0_84,negated_conjecture,(
    k5_relat_1(k6_relat_1(esk2_0),k6_relat_1(esk1_0)) != k6_relat_1(k3_xboole_0(esk1_0,esk2_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_81])])])).

cnf(c_0_85,plain,
    ( k5_relat_1(k6_relat_1(X1),k7_relat_1(X2,X1)) = k7_relat_1(X2,X1)
    | ~ v1_relat_1(k7_relat_1(X2,X1))
    | ~ v1_relat_1(X2) ),
    inference(spm,[status(thm)],[c_0_74,c_0_73])).

cnf(c_0_86,plain,
    ( k7_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)),X3) = k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))
    | ~ r1_tarski(X1,X3) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_82,c_0_83]),c_0_76])])).

cnf(c_0_87,negated_conjecture,
    ( k5_relat_1(k6_relat_1(esk2_0),k6_relat_1(esk1_0)) != k6_relat_1(k3_xboole_0(esk1_0,esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_84])).

cnf(c_0_88,plain,
    ( k5_relat_1(k6_relat_1(X1),k5_relat_1(k6_relat_1(X2),k6_relat_1(X3))) = k5_relat_1(k6_relat_1(X2),k6_relat_1(X3))
    | ~ r1_tarski(X2,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_85,c_0_86]),c_0_76])])).

cnf(c_0_89,negated_conjecture,
    ( k5_relat_1(k6_relat_1(esk2_0),k6_relat_1(esk1_0)) != k6_relat_1(k1_setfam_1(k2_enumset1(esk1_0,esk1_0,esk1_0,esk2_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_87,c_0_25]),c_0_26])).

cnf(c_0_90,plain,
    ( k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)) = k6_relat_1(X2)
    | ~ r1_tarski(X2,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_88,c_0_42]),c_0_35])])).

cnf(c_0_91,negated_conjecture,
    ( k6_relat_1(k1_setfam_1(k2_enumset1(esk2_0,esk2_0,esk2_0,esk1_0))) != k5_relat_1(k6_relat_1(esk2_0),k6_relat_1(esk1_0)) ),
    inference(rw,[status(thm)],[c_0_89,c_0_32])).

cnf(c_0_92,plain,
    ( k5_relat_1(k6_relat_1(X1),k5_relat_1(k6_relat_1(X2),k6_relat_1(k2_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)))))) = k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)) ),
    inference(spm,[status(thm)],[c_0_71,c_0_64])).

cnf(c_0_93,plain,
    ( k5_relat_1(k6_relat_1(X1),k6_relat_1(k2_relat_1(k5_relat_1(k6_relat_1(X2),k6_relat_1(X1))))) = k6_relat_1(k2_relat_1(k5_relat_1(k6_relat_1(X2),k6_relat_1(X1)))) ),
    inference(spm,[status(thm)],[c_0_90,c_0_53])).

cnf(c_0_94,negated_conjecture,
    ( k6_relat_1(k2_relat_1(k8_relat_1(esk1_0,k6_relat_1(esk2_0)))) != k5_relat_1(k6_relat_1(esk2_0),k6_relat_1(esk1_0)) ),
    inference(rw,[status(thm)],[c_0_91,c_0_38])).

cnf(c_0_95,plain,
    ( k5_relat_1(k6_relat_1(X1),k6_relat_1(k2_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))))) = k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)) ),
    inference(rw,[status(thm)],[c_0_92,c_0_93])).

cnf(c_0_96,negated_conjecture,
    ( k6_relat_1(k2_relat_1(k5_relat_1(k6_relat_1(esk2_0),k6_relat_1(esk1_0)))) != k5_relat_1(k6_relat_1(esk2_0),k6_relat_1(esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_94,c_0_46]),c_0_35])])).

cnf(c_0_97,plain,
    ( k6_relat_1(k2_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)))) = k5_relat_1(k6_relat_1(X2),k6_relat_1(X1)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_95,c_0_64]),c_0_93])).

cnf(c_0_98,negated_conjecture,
    ( k5_relat_1(k6_relat_1(esk1_0),k6_relat_1(esk2_0)) != k5_relat_1(k6_relat_1(esk2_0),k6_relat_1(esk1_0)) ),
    inference(rw,[status(thm)],[c_0_96,c_0_97])).

cnf(c_0_99,plain,
    ( k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)) = k5_relat_1(k6_relat_1(X2),k6_relat_1(X1)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_97,c_0_64]),c_0_97])).

cnf(c_0_100,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_98,c_0_99])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n009.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 15:34:56 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.20/0.46  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.20/0.46  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.20/0.46  #
% 0.20/0.46  # Preprocessing time       : 0.027 s
% 0.20/0.46  # Presaturation interreduction done
% 0.20/0.46  
% 0.20/0.46  # Proof found!
% 0.20/0.46  # SZS status Theorem
% 0.20/0.46  # SZS output start CNFRefutation
% 0.20/0.46  fof(t12_setfam_1, axiom, ![X1, X2]:k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t12_setfam_1)).
% 0.20/0.46  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.20/0.46  fof(t17_xboole_1, axiom, ![X1, X2]:r1_tarski(k3_xboole_0(X1,X2),X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t17_xboole_1)).
% 0.20/0.46  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.20/0.46  fof(commutativity_k2_tarski, axiom, ![X1, X2]:k2_tarski(X1,X2)=k2_tarski(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k2_tarski)).
% 0.20/0.46  fof(t119_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>k2_relat_1(k8_relat_1(X1,X2))=k3_xboole_0(k2_relat_1(X2),X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t119_relat_1)).
% 0.20/0.46  fof(t71_relat_1, axiom, ![X1]:(k1_relat_1(k6_relat_1(X1))=X1&k2_relat_1(k6_relat_1(X1))=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_relat_1)).
% 0.20/0.46  fof(fc3_funct_1, axiom, ![X1]:(v1_relat_1(k6_relat_1(X1))&v1_funct_1(k6_relat_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc3_funct_1)).
% 0.20/0.46  fof(t80_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>k5_relat_1(X1,k6_relat_1(k2_relat_1(X1)))=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t80_relat_1)).
% 0.20/0.46  fof(t123_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>k8_relat_1(X1,X2)=k5_relat_1(X2,k6_relat_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t123_relat_1)).
% 0.20/0.46  fof(dt_k5_relat_1, axiom, ![X1, X2]:((v1_relat_1(X1)&v1_relat_1(X2))=>v1_relat_1(k5_relat_1(X1,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k5_relat_1)).
% 0.20/0.46  fof(t55_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>![X3]:(v1_relat_1(X3)=>k5_relat_1(k5_relat_1(X1,X2),X3)=k5_relat_1(X1,k5_relat_1(X2,X3))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t55_relat_1)).
% 0.20/0.46  fof(t125_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(r1_tarski(k2_relat_1(X2),X1)=>k8_relat_1(X1,X2)=X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t125_relat_1)).
% 0.20/0.46  fof(t100_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>k7_relat_1(k7_relat_1(X3,X1),X2)=k7_relat_1(X3,k3_xboole_0(X1,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t100_relat_1)).
% 0.20/0.46  fof(t94_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>k7_relat_1(X2,X1)=k5_relat_1(k6_relat_1(X1),X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t94_relat_1)).
% 0.20/0.46  fof(t43_funct_1, conjecture, ![X1, X2]:k5_relat_1(k6_relat_1(X2),k6_relat_1(X1))=k6_relat_1(k3_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t43_funct_1)).
% 0.20/0.46  fof(c_0_16, plain, ![X13, X14]:k1_setfam_1(k2_tarski(X13,X14))=k3_xboole_0(X13,X14), inference(variable_rename,[status(thm)],[t12_setfam_1])).
% 0.20/0.46  fof(c_0_17, plain, ![X8, X9]:k1_enumset1(X8,X8,X9)=k2_tarski(X8,X9), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.20/0.46  fof(c_0_18, plain, ![X4, X5]:r1_tarski(k3_xboole_0(X4,X5),X4), inference(variable_rename,[status(thm)],[t17_xboole_1])).
% 0.20/0.46  cnf(c_0_19, plain, (k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.20/0.46  cnf(c_0_20, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.46  fof(c_0_21, plain, ![X10, X11, X12]:k2_enumset1(X10,X10,X11,X12)=k1_enumset1(X10,X11,X12), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.20/0.46  fof(c_0_22, plain, ![X6, X7]:k2_tarski(X6,X7)=k2_tarski(X7,X6), inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).
% 0.20/0.46  fof(c_0_23, plain, ![X20, X21]:(~v1_relat_1(X21)|k2_relat_1(k8_relat_1(X20,X21))=k3_xboole_0(k2_relat_1(X21),X20)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t119_relat_1])])).
% 0.20/0.46  cnf(c_0_24, plain, (r1_tarski(k3_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.46  cnf(c_0_25, plain, (k1_setfam_1(k1_enumset1(X1,X1,X2))=k3_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_19, c_0_20])).
% 0.20/0.46  cnf(c_0_26, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.20/0.46  cnf(c_0_27, plain, (k2_tarski(X1,X2)=k2_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.20/0.46  cnf(c_0_28, plain, (k2_relat_1(k8_relat_1(X2,X1))=k3_xboole_0(k2_relat_1(X1),X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.20/0.46  fof(c_0_29, plain, ![X29]:(k1_relat_1(k6_relat_1(X29))=X29&k2_relat_1(k6_relat_1(X29))=X29), inference(variable_rename,[status(thm)],[t71_relat_1])).
% 0.20/0.46  fof(c_0_30, plain, ![X33]:(v1_relat_1(k6_relat_1(X33))&v1_funct_1(k6_relat_1(X33))), inference(variable_rename,[status(thm)],[fc3_funct_1])).
% 0.20/0.46  cnf(c_0_31, plain, (r1_tarski(k1_setfam_1(k2_enumset1(X1,X1,X1,X2)),X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24, c_0_25]), c_0_26])).
% 0.20/0.46  cnf(c_0_32, plain, (k2_enumset1(X1,X1,X1,X2)=k2_enumset1(X2,X2,X2,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_27, c_0_20]), c_0_20]), c_0_26]), c_0_26])).
% 0.20/0.46  cnf(c_0_33, plain, (k2_relat_1(k8_relat_1(X2,X1))=k1_setfam_1(k2_enumset1(k2_relat_1(X1),k2_relat_1(X1),k2_relat_1(X1),X2))|~v1_relat_1(X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_28, c_0_25]), c_0_26])).
% 0.20/0.46  cnf(c_0_34, plain, (k2_relat_1(k6_relat_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.20/0.46  cnf(c_0_35, plain, (v1_relat_1(k6_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.20/0.46  fof(c_0_36, plain, ![X30]:(~v1_relat_1(X30)|k5_relat_1(X30,k6_relat_1(k2_relat_1(X30)))=X30), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t80_relat_1])])).
% 0.20/0.46  cnf(c_0_37, plain, (r1_tarski(k1_setfam_1(k2_enumset1(X1,X1,X1,X2)),X2)), inference(spm,[status(thm)],[c_0_31, c_0_32])).
% 0.20/0.46  cnf(c_0_38, plain, (k1_setfam_1(k2_enumset1(X1,X1,X1,X2))=k2_relat_1(k8_relat_1(X2,k6_relat_1(X1)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_35])])).
% 0.20/0.46  fof(c_0_39, plain, ![X22, X23]:(~v1_relat_1(X23)|k8_relat_1(X22,X23)=k5_relat_1(X23,k6_relat_1(X22))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t123_relat_1])])).
% 0.20/0.46  fof(c_0_40, plain, ![X15, X16]:(~v1_relat_1(X15)|~v1_relat_1(X16)|v1_relat_1(k5_relat_1(X15,X16))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k5_relat_1])])).
% 0.20/0.46  fof(c_0_41, plain, ![X26, X27, X28]:(~v1_relat_1(X26)|(~v1_relat_1(X27)|(~v1_relat_1(X28)|k5_relat_1(k5_relat_1(X26,X27),X28)=k5_relat_1(X26,k5_relat_1(X27,X28))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_relat_1])])])).
% 0.20/0.46  cnf(c_0_42, plain, (k5_relat_1(X1,k6_relat_1(k2_relat_1(X1)))=X1|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.20/0.46  fof(c_0_43, plain, ![X24, X25]:(~v1_relat_1(X25)|(~r1_tarski(k2_relat_1(X25),X24)|k8_relat_1(X24,X25)=X25)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t125_relat_1])])).
% 0.20/0.46  fof(c_0_44, plain, ![X17, X18, X19]:(~v1_relat_1(X19)|k7_relat_1(k7_relat_1(X19,X17),X18)=k7_relat_1(X19,k3_xboole_0(X17,X18))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t100_relat_1])])).
% 0.20/0.46  cnf(c_0_45, plain, (r1_tarski(k2_relat_1(k8_relat_1(X1,k6_relat_1(X2))),X1)), inference(rw,[status(thm)],[c_0_37, c_0_38])).
% 0.20/0.46  cnf(c_0_46, plain, (k8_relat_1(X2,X1)=k5_relat_1(X1,k6_relat_1(X2))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.20/0.46  cnf(c_0_47, plain, (v1_relat_1(k5_relat_1(X1,X2))|~v1_relat_1(X1)|~v1_relat_1(X2)), inference(split_conjunct,[status(thm)],[c_0_40])).
% 0.20/0.46  cnf(c_0_48, plain, (k5_relat_1(k5_relat_1(X1,X2),X3)=k5_relat_1(X1,k5_relat_1(X2,X3))|~v1_relat_1(X1)|~v1_relat_1(X2)|~v1_relat_1(X3)), inference(split_conjunct,[status(thm)],[c_0_41])).
% 0.20/0.46  cnf(c_0_49, plain, (k5_relat_1(k6_relat_1(X1),k6_relat_1(X1))=k6_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_34]), c_0_35])])).
% 0.20/0.46  cnf(c_0_50, plain, (k2_relat_1(k8_relat_1(X1,k6_relat_1(X2)))=k2_relat_1(k8_relat_1(X2,k6_relat_1(X1)))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_32]), c_0_38])).
% 0.20/0.46  cnf(c_0_51, plain, (k8_relat_1(X2,X1)=X1|~v1_relat_1(X1)|~r1_tarski(k2_relat_1(X1),X2)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.20/0.46  cnf(c_0_52, plain, (k7_relat_1(k7_relat_1(X1,X2),X3)=k7_relat_1(X1,k3_xboole_0(X2,X3))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.20/0.46  cnf(c_0_53, plain, (r1_tarski(k2_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))),X2)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_46]), c_0_35])])).
% 0.20/0.46  cnf(c_0_54, plain, (v1_relat_1(k5_relat_1(X1,k5_relat_1(X2,X3)))|~v1_relat_1(X3)|~v1_relat_1(X2)|~v1_relat_1(X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_48]), c_0_47])).
% 0.20/0.46  cnf(c_0_55, plain, (k5_relat_1(k6_relat_1(X1),k5_relat_1(k6_relat_1(X1),X2))=k5_relat_1(k6_relat_1(X1),X2)|~v1_relat_1(X2)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_49]), c_0_35])])).
% 0.20/0.46  cnf(c_0_56, plain, (k2_relat_1(k8_relat_1(X1,k6_relat_1(X2)))=k2_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_46]), c_0_35])])).
% 0.20/0.46  cnf(c_0_57, plain, (k2_relat_1(k8_relat_1(X1,k6_relat_1(k2_relat_1(X2))))=k2_relat_1(k8_relat_1(X1,X2))|~v1_relat_1(X2)), inference(rw,[status(thm)],[c_0_33, c_0_38])).
% 0.20/0.46  cnf(c_0_58, plain, (k8_relat_1(X1,k6_relat_1(X2))=k6_relat_1(X2)|~r1_tarski(X2,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_34]), c_0_35])])).
% 0.20/0.46  cnf(c_0_59, plain, (k7_relat_1(k7_relat_1(X1,X2),X3)=k7_relat_1(X1,k1_setfam_1(k2_enumset1(X2,X2,X2,X3)))|~v1_relat_1(X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_52, c_0_25]), c_0_26])).
% 0.20/0.46  cnf(c_0_60, plain, (r1_tarski(X1,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_42]), c_0_34]), c_0_34]), c_0_35])])).
% 0.20/0.46  cnf(c_0_61, plain, (v1_relat_1(k5_relat_1(k6_relat_1(X1),X2))|~v1_relat_1(X2)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54, c_0_55]), c_0_35])])).
% 0.20/0.46  cnf(c_0_62, plain, (k8_relat_1(X1,k5_relat_1(k6_relat_1(X2),k6_relat_1(X1)))=k5_relat_1(k6_relat_1(X2),k6_relat_1(X1))|~v1_relat_1(k5_relat_1(k6_relat_1(X2),k6_relat_1(X1)))), inference(spm,[status(thm)],[c_0_51, c_0_53])).
% 0.20/0.46  cnf(c_0_63, plain, (k5_relat_1(X1,k5_relat_1(X2,k6_relat_1(k2_relat_1(k5_relat_1(X1,X2)))))=k5_relat_1(X1,X2)|~v1_relat_1(X2)|~v1_relat_1(X1)), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_48]), c_0_35])]), c_0_47])).
% 0.20/0.46  cnf(c_0_64, plain, (k2_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)))=k2_relat_1(k5_relat_1(k6_relat_1(X2),k6_relat_1(X1)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_50, c_0_56]), c_0_56])).
% 0.20/0.46  cnf(c_0_65, plain, (k2_relat_1(k8_relat_1(X1,X2))=k2_relat_1(X2)|~v1_relat_1(X2)|~r1_tarski(k2_relat_1(X2),X1)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_58]), c_0_34])).
% 0.20/0.46  cnf(c_0_66, plain, (k7_relat_1(X1,k2_relat_1(k8_relat_1(X2,k6_relat_1(X3))))=k7_relat_1(k7_relat_1(X1,X3),X2)|~v1_relat_1(X1)), inference(rw,[status(thm)],[c_0_59, c_0_38])).
% 0.20/0.46  cnf(c_0_67, plain, (k8_relat_1(k2_relat_1(X1),X1)=X1|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_51, c_0_60])).
% 0.20/0.46  fof(c_0_68, plain, ![X31, X32]:(~v1_relat_1(X32)|k7_relat_1(X32,X31)=k5_relat_1(k6_relat_1(X31),X32)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t94_relat_1])])).
% 0.20/0.46  cnf(c_0_69, plain, (k5_relat_1(k6_relat_1(X1),k5_relat_1(k5_relat_1(k6_relat_1(X1),X2),X3))=k5_relat_1(k5_relat_1(k6_relat_1(X1),X2),X3)|~v1_relat_1(X3)|~v1_relat_1(X2)), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_55]), c_0_35])]), c_0_61])).
% 0.20/0.46  cnf(c_0_70, plain, (k5_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)),k6_relat_1(X2))=k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))|~v1_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)))), inference(spm,[status(thm)],[c_0_46, c_0_62])).
% 0.20/0.46  cnf(c_0_71, plain, (k5_relat_1(k6_relat_1(X1),k5_relat_1(k6_relat_1(X2),k6_relat_1(k2_relat_1(k5_relat_1(k6_relat_1(X2),k6_relat_1(X1))))))=k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63, c_0_64]), c_0_35]), c_0_35])])).
% 0.20/0.46  cnf(c_0_72, plain, (k2_relat_1(k8_relat_1(X1,k6_relat_1(X2)))=X2|~r1_tarski(X2,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65, c_0_34]), c_0_35])])).
% 0.20/0.46  cnf(c_0_73, plain, (k7_relat_1(k7_relat_1(X1,X2),X2)=k7_relat_1(X1,X2)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66, c_0_67]), c_0_34]), c_0_34]), c_0_35])])).
% 0.20/0.46  cnf(c_0_74, plain, (k7_relat_1(X1,X2)=k5_relat_1(k6_relat_1(X2),X1)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_68])).
% 0.20/0.46  cnf(c_0_75, plain, (k5_relat_1(k6_relat_1(X1),k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)))=k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))|~v1_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_69, c_0_70]), c_0_35])])).
% 0.20/0.46  cnf(c_0_76, plain, (v1_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54, c_0_71]), c_0_35]), c_0_35]), c_0_35])])).
% 0.20/0.46  cnf(c_0_77, plain, (k7_relat_1(X1,k2_relat_1(k5_relat_1(k6_relat_1(X2),k6_relat_1(X3))))=k7_relat_1(k7_relat_1(X1,X3),X2)|~v1_relat_1(X1)), inference(rw,[status(thm)],[c_0_66, c_0_56])).
% 0.20/0.46  cnf(c_0_78, plain, (k2_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)))=X2|~r1_tarski(X2,X1)), inference(spm,[status(thm)],[c_0_72, c_0_56])).
% 0.20/0.46  cnf(c_0_79, plain, (k7_relat_1(k5_relat_1(k6_relat_1(X1),X2),X1)=k5_relat_1(k6_relat_1(X1),X2)|~v1_relat_1(X2)), inference(spm,[status(thm)],[c_0_73, c_0_74])).
% 0.20/0.46  cnf(c_0_80, plain, (k5_relat_1(k6_relat_1(X1),k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)))=k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_75, c_0_76])])).
% 0.20/0.46  fof(c_0_81, negated_conjecture, ~(![X1, X2]:k5_relat_1(k6_relat_1(X2),k6_relat_1(X1))=k6_relat_1(k3_xboole_0(X1,X2))), inference(assume_negation,[status(cth)],[t43_funct_1])).
% 0.20/0.46  cnf(c_0_82, plain, (k7_relat_1(k7_relat_1(X1,X2),X3)=k7_relat_1(X1,X2)|~v1_relat_1(X1)|~r1_tarski(X2,X3)), inference(spm,[status(thm)],[c_0_77, c_0_78])).
% 0.20/0.46  cnf(c_0_83, plain, (k7_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)),X1)=k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79, c_0_80]), c_0_76])])).
% 0.20/0.46  fof(c_0_84, negated_conjecture, k5_relat_1(k6_relat_1(esk2_0),k6_relat_1(esk1_0))!=k6_relat_1(k3_xboole_0(esk1_0,esk2_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_81])])])).
% 0.20/0.46  cnf(c_0_85, plain, (k5_relat_1(k6_relat_1(X1),k7_relat_1(X2,X1))=k7_relat_1(X2,X1)|~v1_relat_1(k7_relat_1(X2,X1))|~v1_relat_1(X2)), inference(spm,[status(thm)],[c_0_74, c_0_73])).
% 0.20/0.46  cnf(c_0_86, plain, (k7_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)),X3)=k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))|~r1_tarski(X1,X3)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_82, c_0_83]), c_0_76])])).
% 0.20/0.46  cnf(c_0_87, negated_conjecture, (k5_relat_1(k6_relat_1(esk2_0),k6_relat_1(esk1_0))!=k6_relat_1(k3_xboole_0(esk1_0,esk2_0))), inference(split_conjunct,[status(thm)],[c_0_84])).
% 0.20/0.46  cnf(c_0_88, plain, (k5_relat_1(k6_relat_1(X1),k5_relat_1(k6_relat_1(X2),k6_relat_1(X3)))=k5_relat_1(k6_relat_1(X2),k6_relat_1(X3))|~r1_tarski(X2,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_85, c_0_86]), c_0_76])])).
% 0.20/0.46  cnf(c_0_89, negated_conjecture, (k5_relat_1(k6_relat_1(esk2_0),k6_relat_1(esk1_0))!=k6_relat_1(k1_setfam_1(k2_enumset1(esk1_0,esk1_0,esk1_0,esk2_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_87, c_0_25]), c_0_26])).
% 0.20/0.46  cnf(c_0_90, plain, (k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))=k6_relat_1(X2)|~r1_tarski(X2,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_88, c_0_42]), c_0_35])])).
% 0.20/0.46  cnf(c_0_91, negated_conjecture, (k6_relat_1(k1_setfam_1(k2_enumset1(esk2_0,esk2_0,esk2_0,esk1_0)))!=k5_relat_1(k6_relat_1(esk2_0),k6_relat_1(esk1_0))), inference(rw,[status(thm)],[c_0_89, c_0_32])).
% 0.20/0.46  cnf(c_0_92, plain, (k5_relat_1(k6_relat_1(X1),k5_relat_1(k6_relat_1(X2),k6_relat_1(k2_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))))))=k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))), inference(spm,[status(thm)],[c_0_71, c_0_64])).
% 0.20/0.46  cnf(c_0_93, plain, (k5_relat_1(k6_relat_1(X1),k6_relat_1(k2_relat_1(k5_relat_1(k6_relat_1(X2),k6_relat_1(X1)))))=k6_relat_1(k2_relat_1(k5_relat_1(k6_relat_1(X2),k6_relat_1(X1))))), inference(spm,[status(thm)],[c_0_90, c_0_53])).
% 0.20/0.46  cnf(c_0_94, negated_conjecture, (k6_relat_1(k2_relat_1(k8_relat_1(esk1_0,k6_relat_1(esk2_0))))!=k5_relat_1(k6_relat_1(esk2_0),k6_relat_1(esk1_0))), inference(rw,[status(thm)],[c_0_91, c_0_38])).
% 0.20/0.46  cnf(c_0_95, plain, (k5_relat_1(k6_relat_1(X1),k6_relat_1(k2_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2)))))=k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))), inference(rw,[status(thm)],[c_0_92, c_0_93])).
% 0.20/0.46  cnf(c_0_96, negated_conjecture, (k6_relat_1(k2_relat_1(k5_relat_1(k6_relat_1(esk2_0),k6_relat_1(esk1_0))))!=k5_relat_1(k6_relat_1(esk2_0),k6_relat_1(esk1_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_94, c_0_46]), c_0_35])])).
% 0.20/0.46  cnf(c_0_97, plain, (k6_relat_1(k2_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))))=k5_relat_1(k6_relat_1(X2),k6_relat_1(X1))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_95, c_0_64]), c_0_93])).
% 0.20/0.46  cnf(c_0_98, negated_conjecture, (k5_relat_1(k6_relat_1(esk1_0),k6_relat_1(esk2_0))!=k5_relat_1(k6_relat_1(esk2_0),k6_relat_1(esk1_0))), inference(rw,[status(thm)],[c_0_96, c_0_97])).
% 0.20/0.46  cnf(c_0_99, plain, (k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))=k5_relat_1(k6_relat_1(X2),k6_relat_1(X1))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_97, c_0_64]), c_0_97])).
% 0.20/0.46  cnf(c_0_100, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_98, c_0_99])]), ['proof']).
% 0.20/0.46  # SZS output end CNFRefutation
% 0.20/0.46  # Proof object total steps             : 101
% 0.20/0.46  # Proof object clause steps            : 68
% 0.20/0.46  # Proof object formula steps           : 33
% 0.20/0.46  # Proof object conjectures             : 10
% 0.20/0.46  # Proof object clause conjectures      : 7
% 0.20/0.46  # Proof object formula conjectures     : 3
% 0.20/0.46  # Proof object initial clauses used    : 16
% 0.20/0.46  # Proof object initial formulas used   : 16
% 0.20/0.46  # Proof object generating inferences   : 35
% 0.20/0.46  # Proof object simplifying inferences  : 81
% 0.20/0.46  # Training examples: 0 positive, 0 negative
% 0.20/0.46  # Parsed axioms                        : 16
% 0.20/0.46  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.46  # Initial clauses                      : 18
% 0.20/0.46  # Removed in clause preprocessing      : 3
% 0.20/0.46  # Initial clauses in saturation        : 15
% 0.20/0.46  # Processed clauses                    : 793
% 0.20/0.46  # ...of these trivial                  : 18
% 0.20/0.46  # ...subsumed                          : 571
% 0.20/0.46  # ...remaining for further processing  : 204
% 0.20/0.46  # Other redundant clauses eliminated   : 0
% 0.20/0.46  # Clauses deleted for lack of memory   : 0
% 0.20/0.46  # Backward-subsumed                    : 6
% 0.20/0.46  # Backward-rewritten                   : 39
% 0.20/0.46  # Generated clauses                    : 5619
% 0.20/0.46  # ...of the previous two non-trivial   : 4176
% 0.20/0.46  # Contextual simplify-reflections      : 23
% 0.20/0.46  # Paramodulations                      : 5619
% 0.20/0.46  # Factorizations                       : 0
% 0.20/0.46  # Equation resolutions                 : 0
% 0.20/0.46  # Propositional unsat checks           : 0
% 0.20/0.46  #    Propositional check models        : 0
% 0.20/0.46  #    Propositional check unsatisfiable : 0
% 0.20/0.46  #    Propositional clauses             : 0
% 0.20/0.46  #    Propositional clauses after purity: 0
% 0.20/0.46  #    Propositional unsat core size     : 0
% 0.20/0.46  #    Propositional preprocessing time  : 0.000
% 0.20/0.46  #    Propositional encoding time       : 0.000
% 0.20/0.46  #    Propositional solver time         : 0.000
% 0.20/0.46  #    Success case prop preproc time    : 0.000
% 0.20/0.46  #    Success case prop encoding time   : 0.000
% 0.20/0.46  #    Success case prop solver time     : 0.000
% 0.20/0.46  # Current number of processed clauses  : 144
% 0.20/0.46  #    Positive orientable unit clauses  : 27
% 0.20/0.46  #    Positive unorientable unit clauses: 2
% 0.20/0.46  #    Negative unit clauses             : 1
% 0.20/0.46  #    Non-unit-clauses                  : 114
% 0.20/0.46  # Current number of unprocessed clauses: 3345
% 0.20/0.46  # ...number of literals in the above   : 11992
% 0.20/0.46  # Current number of archived formulas  : 0
% 0.20/0.46  # Current number of archived clauses   : 63
% 0.20/0.46  # Clause-clause subsumption calls (NU) : 2910
% 0.20/0.46  # Rec. Clause-clause subsumption calls : 2319
% 0.20/0.46  # Non-unit clause-clause subsumptions  : 574
% 0.20/0.46  # Unit Clause-clause subsumption calls : 38
% 0.20/0.46  # Rewrite failures with RHS unbound    : 0
% 0.20/0.46  # BW rewrite match attempts            : 124
% 0.20/0.46  # BW rewrite match successes           : 75
% 0.20/0.46  # Condensation attempts                : 0
% 0.20/0.46  # Condensation successes               : 0
% 0.20/0.46  # Termbank termtop insertions          : 103758
% 0.20/0.46  
% 0.20/0.46  # -------------------------------------------------
% 0.20/0.46  # User time                : 0.114 s
% 0.20/0.46  # System time              : 0.007 s
% 0.20/0.46  # Total time               : 0.122 s
% 0.20/0.46  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
