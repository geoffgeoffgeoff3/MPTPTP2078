%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:54:37 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   72 ( 243 expanded)
%              Number of clauses        :   42 ( 110 expanded)
%              Number of leaves         :   15 (  63 expanded)
%              Depth                    :   13
%              Number of atoms          :  168 ( 648 expanded)
%              Number of equality atoms :   58 ( 217 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(dt_k7_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X1)
     => v1_relat_1(k7_relat_1(X1,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k7_relat_1)).

fof(t110_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k7_relat_1(X1,k1_xboole_0) = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t110_relat_1)).

fof(t142_funct_1,conjecture,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( r2_hidden(X1,k2_relat_1(X2))
      <=> k10_relat_1(X2,k1_tarski(X1)) != k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t142_funct_1)).

fof(t20_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k4_xboole_0(k1_tarski(X1),k1_tarski(X2)) = k1_tarski(X1)
    <=> X1 != X2 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t20_zfmisc_1)).

fof(t115_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( r2_hidden(X1,k2_relat_1(k8_relat_1(X2,X3)))
      <=> ( r2_hidden(X1,X2)
          & r2_hidden(X1,k2_relat_1(X3)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t115_relat_1)).

fof(t138_relat_1,axiom,(
    ! [X1] : k8_relat_1(X1,k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t138_relat_1)).

fof(t65_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k4_xboole_0(X1,k1_tarski(X2)) = X1
    <=> ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t65_zfmisc_1)).

fof(t60_relat_1,axiom,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0
    & k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t60_relat_1)).

fof(t3_xboole_0,axiom,(
    ! [X1,X2] :
      ( ~ ( ~ r1_xboole_0(X1,X2)
          & ! [X3] :
              ~ ( r2_hidden(X3,X1)
                & r2_hidden(X3,X2) ) )
      & ~ ( ? [X3] :
              ( r2_hidden(X3,X1)
              & r2_hidden(X3,X2) )
          & r1_xboole_0(X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_xboole_0)).

fof(t116_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => r1_tarski(k2_relat_1(k8_relat_1(X1,X2)),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t116_relat_1)).

fof(t173_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( k10_relat_1(X2,X1) = k1_xboole_0
      <=> r1_xboole_0(k2_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t173_relat_1)).

fof(t12_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k2_xboole_0(X1,X2) = X2 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_xboole_1)).

fof(t88_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
     => k4_xboole_0(k2_xboole_0(X1,X2),X2) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t88_xboole_1)).

fof(d7_xboole_0,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
    <=> k3_xboole_0(X1,X2) = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d7_xboole_0)).

fof(t48_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_xboole_1)).

fof(c_0_15,plain,(
    ! [X26,X27] :
      ( ~ v1_relat_1(X26)
      | v1_relat_1(k7_relat_1(X26,X27)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k7_relat_1])])).

fof(c_0_16,plain,(
    ! [X28] :
      ( ~ v1_relat_1(X28)
      | k7_relat_1(X28,k1_xboole_0) = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t110_relat_1])])).

fof(c_0_17,negated_conjecture,(
    ~ ! [X1,X2] :
        ( v1_relat_1(X2)
       => ( r2_hidden(X1,k2_relat_1(X2))
        <=> k10_relat_1(X2,k1_tarski(X1)) != k1_xboole_0 ) ) ),
    inference(assume_negation,[status(cth)],[t142_funct_1])).

cnf(c_0_18,plain,
    ( v1_relat_1(k7_relat_1(X1,X2))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_19,plain,
    ( k7_relat_1(X1,k1_xboole_0) = k1_xboole_0
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_20,negated_conjecture,
    ( v1_relat_1(esk3_0)
    & ( ~ r2_hidden(esk2_0,k2_relat_1(esk3_0))
      | k10_relat_1(esk3_0,k1_tarski(esk2_0)) = k1_xboole_0 )
    & ( r2_hidden(esk2_0,k2_relat_1(esk3_0))
      | k10_relat_1(esk3_0,k1_tarski(esk2_0)) != k1_xboole_0 ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_17])])])).

fof(c_0_21,plain,(
    ! [X22,X23] :
      ( ( k4_xboole_0(k1_tarski(X22),k1_tarski(X23)) != k1_tarski(X22)
        | X22 != X23 )
      & ( X22 = X23
        | k4_xboole_0(k1_tarski(X22),k1_tarski(X23)) = k1_tarski(X22) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t20_zfmisc_1])])).

fof(c_0_22,plain,(
    ! [X29,X30,X31] :
      ( ( r2_hidden(X29,X30)
        | ~ r2_hidden(X29,k2_relat_1(k8_relat_1(X30,X31)))
        | ~ v1_relat_1(X31) )
      & ( r2_hidden(X29,k2_relat_1(X31))
        | ~ r2_hidden(X29,k2_relat_1(k8_relat_1(X30,X31)))
        | ~ v1_relat_1(X31) )
      & ( ~ r2_hidden(X29,X30)
        | ~ r2_hidden(X29,k2_relat_1(X31))
        | r2_hidden(X29,k2_relat_1(k8_relat_1(X30,X31)))
        | ~ v1_relat_1(X31) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t115_relat_1])])])).

fof(c_0_23,plain,(
    ! [X39] : k8_relat_1(X39,k1_xboole_0) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t138_relat_1])).

cnf(c_0_24,plain,
    ( v1_relat_1(k1_xboole_0)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_25,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_26,plain,
    ( k4_xboole_0(k1_tarski(X1),k1_tarski(X2)) != k1_tarski(X1)
    | X1 != X2 ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

fof(c_0_27,plain,(
    ! [X24,X25] :
      ( ( k4_xboole_0(X24,k1_tarski(X25)) != X24
        | ~ r2_hidden(X25,X24) )
      & ( r2_hidden(X25,X24)
        | k4_xboole_0(X24,k1_tarski(X25)) = X24 ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t65_zfmisc_1])])])).

cnf(c_0_28,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(X1,k2_relat_1(k8_relat_1(X2,X3)))
    | ~ v1_relat_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_29,plain,
    ( k8_relat_1(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_30,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[t60_relat_1])).

cnf(c_0_31,negated_conjecture,
    ( v1_relat_1(k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

fof(c_0_32,plain,(
    ! [X6,X7,X9,X10,X11] :
      ( ( r2_hidden(esk1_2(X6,X7),X6)
        | r1_xboole_0(X6,X7) )
      & ( r2_hidden(esk1_2(X6,X7),X7)
        | r1_xboole_0(X6,X7) )
      & ( ~ r2_hidden(X11,X9)
        | ~ r2_hidden(X11,X10)
        | ~ r1_xboole_0(X9,X10) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t3_xboole_0])])])])])])])).

cnf(c_0_33,plain,
    ( k4_xboole_0(k1_tarski(X1),k1_tarski(X1)) != k1_tarski(X1) ),
    inference(er,[status(thm)],[c_0_26])).

cnf(c_0_34,plain,
    ( r2_hidden(X1,X2)
    | k4_xboole_0(X2,k1_tarski(X1)) = X2 ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

fof(c_0_35,plain,(
    ! [X32,X33] :
      ( ~ v1_relat_1(X33)
      | r1_tarski(k2_relat_1(k8_relat_1(X32,X33)),X32) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t116_relat_1])])).

cnf(c_0_36,plain,
    ( k4_xboole_0(X1,k1_tarski(X2)) != X1
    | ~ r2_hidden(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_37,plain,
    ( X1 = X2
    | k4_xboole_0(k1_tarski(X1),k1_tarski(X2)) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_38,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(X1,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_29]),c_0_30]),c_0_31])])).

cnf(c_0_39,plain,
    ( r2_hidden(esk1_2(X1,X2),X1)
    | r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_40,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X1,X3)
    | ~ r1_xboole_0(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_41,plain,
    ( r2_hidden(X1,k1_tarski(X1)) ),
    inference(spm,[status(thm)],[c_0_33,c_0_34])).

fof(c_0_42,plain,(
    ! [X43,X44] :
      ( ( k10_relat_1(X44,X43) != k1_xboole_0
        | r1_xboole_0(k2_relat_1(X44),X43)
        | ~ v1_relat_1(X44) )
      & ( ~ r1_xboole_0(k2_relat_1(X44),X43)
        | k10_relat_1(X44,X43) = k1_xboole_0
        | ~ v1_relat_1(X44) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t173_relat_1])])])).

fof(c_0_43,plain,(
    ! [X12,X13] :
      ( ~ r1_tarski(X12,X13)
      | k2_xboole_0(X12,X13) = X13 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).

cnf(c_0_44,plain,
    ( r1_tarski(k2_relat_1(k8_relat_1(X2,X1)),X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_45,plain,
    ( X1 = X2
    | ~ r2_hidden(X2,k1_tarski(X1)) ),
    inference(spm,[status(thm)],[c_0_36,c_0_37])).

cnf(c_0_46,plain,
    ( r2_hidden(esk1_2(k1_xboole_0,X1),X2)
    | r1_xboole_0(k1_xboole_0,X1) ),
    inference(spm,[status(thm)],[c_0_38,c_0_39])).

cnf(c_0_47,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r1_xboole_0(X2,k1_tarski(X1)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_41])).

cnf(c_0_48,plain,
    ( r1_xboole_0(k2_relat_1(X1),X2)
    | k10_relat_1(X1,X2) != k1_xboole_0
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

fof(c_0_49,plain,(
    ! [X16,X17] :
      ( ~ r1_xboole_0(X16,X17)
      | k4_xboole_0(k2_xboole_0(X16,X17),X17) = X16 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t88_xboole_1])])).

cnf(c_0_50,plain,
    ( k2_xboole_0(X1,X2) = X2
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_51,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_29]),c_0_30]),c_0_31])])).

cnf(c_0_52,plain,
    ( X1 = esk1_2(k1_xboole_0,X2)
    | r1_xboole_0(k1_xboole_0,X2) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

cnf(c_0_53,plain,
    ( k10_relat_1(X1,k1_tarski(X2)) != k1_xboole_0
    | ~ v1_relat_1(X1)
    | ~ r2_hidden(X2,k2_relat_1(X1)) ),
    inference(spm,[status(thm)],[c_0_47,c_0_48])).

cnf(c_0_54,negated_conjecture,
    ( k10_relat_1(esk3_0,k1_tarski(esk2_0)) = k1_xboole_0
    | ~ r2_hidden(esk2_0,k2_relat_1(esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

fof(c_0_55,plain,(
    ! [X4,X5] :
      ( ( ~ r1_xboole_0(X4,X5)
        | k3_xboole_0(X4,X5) = k1_xboole_0 )
      & ( k3_xboole_0(X4,X5) != k1_xboole_0
        | r1_xboole_0(X4,X5) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_xboole_0])])).

fof(c_0_56,plain,(
    ! [X14,X15] : k4_xboole_0(X14,k4_xboole_0(X14,X15)) = k3_xboole_0(X14,X15) ),
    inference(variable_rename,[status(thm)],[t48_xboole_1])).

cnf(c_0_57,plain,
    ( k4_xboole_0(k2_xboole_0(X1,X2),X2) = X1
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_49])).

cnf(c_0_58,plain,
    ( k2_xboole_0(k1_xboole_0,X1) = X1 ),
    inference(spm,[status(thm)],[c_0_50,c_0_51])).

cnf(c_0_59,negated_conjecture,
    ( r2_hidden(esk2_0,k2_relat_1(esk3_0))
    | k10_relat_1(esk3_0,k1_tarski(esk2_0)) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_60,plain,
    ( X1 = X2
    | r1_xboole_0(k1_xboole_0,X3) ),
    inference(spm,[status(thm)],[c_0_52,c_0_52])).

cnf(c_0_61,negated_conjecture,
    ( ~ r2_hidden(esk2_0,k2_relat_1(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_54]),c_0_25])])).

cnf(c_0_62,plain,
    ( r1_xboole_0(X1,X2)
    | k3_xboole_0(X1,X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_55])).

cnf(c_0_63,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_56])).

cnf(c_0_64,plain,
    ( k4_xboole_0(X1,X1) = k1_xboole_0
    | ~ r1_xboole_0(k1_xboole_0,X1) ),
    inference(spm,[status(thm)],[c_0_57,c_0_58])).

cnf(c_0_65,negated_conjecture,
    ( r1_xboole_0(k1_xboole_0,X1) ),
    inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_59,c_0_60]),c_0_61]),c_0_60])).

cnf(c_0_66,plain,
    ( r1_xboole_0(X1,X2)
    | k4_xboole_0(X1,k4_xboole_0(X1,X2)) != k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_62,c_0_63])).

cnf(c_0_67,plain,
    ( k4_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_64,c_0_65])])).

cnf(c_0_68,plain,
    ( k10_relat_1(X1,X2) = k1_xboole_0
    | ~ r1_xboole_0(k2_relat_1(X1),X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_69,plain,
    ( r2_hidden(X1,X2)
    | r1_xboole_0(X2,k1_tarski(X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66,c_0_34]),c_0_67])])).

cnf(c_0_70,plain,
    ( k10_relat_1(X1,k1_tarski(X2)) = k1_xboole_0
    | r2_hidden(X2,k2_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_68,c_0_69])).

cnf(c_0_71,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59,c_0_70]),c_0_25])]),c_0_61]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n017.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 16:06:16 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.38  # AutoSched0-Mode selected heuristic G_E___092_C01_F1_PI_AE_Q4_CS_SP_PS_S0Y
% 0.12/0.38  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.12/0.38  #
% 0.12/0.38  # Preprocessing time       : 0.028 s
% 0.12/0.38  # Presaturation interreduction done
% 0.12/0.38  
% 0.12/0.38  # Proof found!
% 0.12/0.38  # SZS status Theorem
% 0.12/0.38  # SZS output start CNFRefutation
% 0.12/0.38  fof(dt_k7_relat_1, axiom, ![X1, X2]:(v1_relat_1(X1)=>v1_relat_1(k7_relat_1(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k7_relat_1)).
% 0.12/0.38  fof(t110_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>k7_relat_1(X1,k1_xboole_0)=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t110_relat_1)).
% 0.12/0.38  fof(t142_funct_1, conjecture, ![X1, X2]:(v1_relat_1(X2)=>(r2_hidden(X1,k2_relat_1(X2))<=>k10_relat_1(X2,k1_tarski(X1))!=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t142_funct_1)).
% 0.12/0.38  fof(t20_zfmisc_1, axiom, ![X1, X2]:(k4_xboole_0(k1_tarski(X1),k1_tarski(X2))=k1_tarski(X1)<=>X1!=X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t20_zfmisc_1)).
% 0.12/0.38  fof(t115_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>(r2_hidden(X1,k2_relat_1(k8_relat_1(X2,X3)))<=>(r2_hidden(X1,X2)&r2_hidden(X1,k2_relat_1(X3))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t115_relat_1)).
% 0.12/0.38  fof(t138_relat_1, axiom, ![X1]:k8_relat_1(X1,k1_xboole_0)=k1_xboole_0, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t138_relat_1)).
% 0.12/0.38  fof(t65_zfmisc_1, axiom, ![X1, X2]:(k4_xboole_0(X1,k1_tarski(X2))=X1<=>~(r2_hidden(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t65_zfmisc_1)).
% 0.12/0.38  fof(t60_relat_1, axiom, (k1_relat_1(k1_xboole_0)=k1_xboole_0&k2_relat_1(k1_xboole_0)=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t60_relat_1)).
% 0.12/0.38  fof(t3_xboole_0, axiom, ![X1, X2]:(~((~(r1_xboole_0(X1,X2))&![X3]:~((r2_hidden(X3,X1)&r2_hidden(X3,X2)))))&~((?[X3]:(r2_hidden(X3,X1)&r2_hidden(X3,X2))&r1_xboole_0(X1,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_xboole_0)).
% 0.12/0.38  fof(t116_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>r1_tarski(k2_relat_1(k8_relat_1(X1,X2)),X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t116_relat_1)).
% 0.12/0.38  fof(t173_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(k10_relat_1(X2,X1)=k1_xboole_0<=>r1_xboole_0(k2_relat_1(X2),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t173_relat_1)).
% 0.12/0.38  fof(t12_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k2_xboole_0(X1,X2)=X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t12_xboole_1)).
% 0.12/0.38  fof(t88_xboole_1, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)=>k4_xboole_0(k2_xboole_0(X1,X2),X2)=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t88_xboole_1)).
% 0.12/0.38  fof(d7_xboole_0, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)<=>k3_xboole_0(X1,X2)=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d7_xboole_0)).
% 0.12/0.38  fof(t48_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t48_xboole_1)).
% 0.12/0.38  fof(c_0_15, plain, ![X26, X27]:(~v1_relat_1(X26)|v1_relat_1(k7_relat_1(X26,X27))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k7_relat_1])])).
% 0.12/0.38  fof(c_0_16, plain, ![X28]:(~v1_relat_1(X28)|k7_relat_1(X28,k1_xboole_0)=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t110_relat_1])])).
% 0.12/0.38  fof(c_0_17, negated_conjecture, ~(![X1, X2]:(v1_relat_1(X2)=>(r2_hidden(X1,k2_relat_1(X2))<=>k10_relat_1(X2,k1_tarski(X1))!=k1_xboole_0))), inference(assume_negation,[status(cth)],[t142_funct_1])).
% 0.12/0.38  cnf(c_0_18, plain, (v1_relat_1(k7_relat_1(X1,X2))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.12/0.38  cnf(c_0_19, plain, (k7_relat_1(X1,k1_xboole_0)=k1_xboole_0|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.12/0.38  fof(c_0_20, negated_conjecture, (v1_relat_1(esk3_0)&((~r2_hidden(esk2_0,k2_relat_1(esk3_0))|k10_relat_1(esk3_0,k1_tarski(esk2_0))=k1_xboole_0)&(r2_hidden(esk2_0,k2_relat_1(esk3_0))|k10_relat_1(esk3_0,k1_tarski(esk2_0))!=k1_xboole_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_17])])])).
% 0.12/0.38  fof(c_0_21, plain, ![X22, X23]:((k4_xboole_0(k1_tarski(X22),k1_tarski(X23))!=k1_tarski(X22)|X22!=X23)&(X22=X23|k4_xboole_0(k1_tarski(X22),k1_tarski(X23))=k1_tarski(X22))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t20_zfmisc_1])])).
% 0.12/0.38  fof(c_0_22, plain, ![X29, X30, X31]:(((r2_hidden(X29,X30)|~r2_hidden(X29,k2_relat_1(k8_relat_1(X30,X31)))|~v1_relat_1(X31))&(r2_hidden(X29,k2_relat_1(X31))|~r2_hidden(X29,k2_relat_1(k8_relat_1(X30,X31)))|~v1_relat_1(X31)))&(~r2_hidden(X29,X30)|~r2_hidden(X29,k2_relat_1(X31))|r2_hidden(X29,k2_relat_1(k8_relat_1(X30,X31)))|~v1_relat_1(X31))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t115_relat_1])])])).
% 0.12/0.38  fof(c_0_23, plain, ![X39]:k8_relat_1(X39,k1_xboole_0)=k1_xboole_0, inference(variable_rename,[status(thm)],[t138_relat_1])).
% 0.12/0.38  cnf(c_0_24, plain, (v1_relat_1(k1_xboole_0)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.12/0.38  cnf(c_0_25, negated_conjecture, (v1_relat_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.12/0.38  cnf(c_0_26, plain, (k4_xboole_0(k1_tarski(X1),k1_tarski(X2))!=k1_tarski(X1)|X1!=X2), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.12/0.38  fof(c_0_27, plain, ![X24, X25]:((k4_xboole_0(X24,k1_tarski(X25))!=X24|~r2_hidden(X25,X24))&(r2_hidden(X25,X24)|k4_xboole_0(X24,k1_tarski(X25))=X24)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t65_zfmisc_1])])])).
% 0.12/0.38  cnf(c_0_28, plain, (r2_hidden(X1,X2)|~r2_hidden(X1,k2_relat_1(k8_relat_1(X2,X3)))|~v1_relat_1(X3)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.12/0.38  cnf(c_0_29, plain, (k8_relat_1(X1,k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.12/0.38  cnf(c_0_30, plain, (k2_relat_1(k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[t60_relat_1])).
% 0.12/0.38  cnf(c_0_31, negated_conjecture, (v1_relat_1(k1_xboole_0)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.12/0.38  fof(c_0_32, plain, ![X6, X7, X9, X10, X11]:(((r2_hidden(esk1_2(X6,X7),X6)|r1_xboole_0(X6,X7))&(r2_hidden(esk1_2(X6,X7),X7)|r1_xboole_0(X6,X7)))&(~r2_hidden(X11,X9)|~r2_hidden(X11,X10)|~r1_xboole_0(X9,X10))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t3_xboole_0])])])])])])])).
% 0.12/0.38  cnf(c_0_33, plain, (k4_xboole_0(k1_tarski(X1),k1_tarski(X1))!=k1_tarski(X1)), inference(er,[status(thm)],[c_0_26])).
% 0.12/0.38  cnf(c_0_34, plain, (r2_hidden(X1,X2)|k4_xboole_0(X2,k1_tarski(X1))=X2), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.12/0.38  fof(c_0_35, plain, ![X32, X33]:(~v1_relat_1(X33)|r1_tarski(k2_relat_1(k8_relat_1(X32,X33)),X32)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t116_relat_1])])).
% 0.12/0.38  cnf(c_0_36, plain, (k4_xboole_0(X1,k1_tarski(X2))!=X1|~r2_hidden(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.12/0.38  cnf(c_0_37, plain, (X1=X2|k4_xboole_0(k1_tarski(X1),k1_tarski(X2))=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.12/0.38  cnf(c_0_38, plain, (r2_hidden(X1,X2)|~r2_hidden(X1,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_29]), c_0_30]), c_0_31])])).
% 0.12/0.38  cnf(c_0_39, plain, (r2_hidden(esk1_2(X1,X2),X1)|r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.12/0.38  cnf(c_0_40, plain, (~r2_hidden(X1,X2)|~r2_hidden(X1,X3)|~r1_xboole_0(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.12/0.38  cnf(c_0_41, plain, (r2_hidden(X1,k1_tarski(X1))), inference(spm,[status(thm)],[c_0_33, c_0_34])).
% 0.12/0.38  fof(c_0_42, plain, ![X43, X44]:((k10_relat_1(X44,X43)!=k1_xboole_0|r1_xboole_0(k2_relat_1(X44),X43)|~v1_relat_1(X44))&(~r1_xboole_0(k2_relat_1(X44),X43)|k10_relat_1(X44,X43)=k1_xboole_0|~v1_relat_1(X44))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t173_relat_1])])])).
% 0.12/0.38  fof(c_0_43, plain, ![X12, X13]:(~r1_tarski(X12,X13)|k2_xboole_0(X12,X13)=X13), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).
% 0.12/0.38  cnf(c_0_44, plain, (r1_tarski(k2_relat_1(k8_relat_1(X2,X1)),X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.12/0.38  cnf(c_0_45, plain, (X1=X2|~r2_hidden(X2,k1_tarski(X1))), inference(spm,[status(thm)],[c_0_36, c_0_37])).
% 0.12/0.38  cnf(c_0_46, plain, (r2_hidden(esk1_2(k1_xboole_0,X1),X2)|r1_xboole_0(k1_xboole_0,X1)), inference(spm,[status(thm)],[c_0_38, c_0_39])).
% 0.12/0.38  cnf(c_0_47, plain, (~r2_hidden(X1,X2)|~r1_xboole_0(X2,k1_tarski(X1))), inference(spm,[status(thm)],[c_0_40, c_0_41])).
% 0.12/0.38  cnf(c_0_48, plain, (r1_xboole_0(k2_relat_1(X1),X2)|k10_relat_1(X1,X2)!=k1_xboole_0|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.12/0.38  fof(c_0_49, plain, ![X16, X17]:(~r1_xboole_0(X16,X17)|k4_xboole_0(k2_xboole_0(X16,X17),X17)=X16), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t88_xboole_1])])).
% 0.12/0.38  cnf(c_0_50, plain, (k2_xboole_0(X1,X2)=X2|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.12/0.38  cnf(c_0_51, plain, (r1_tarski(k1_xboole_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_29]), c_0_30]), c_0_31])])).
% 0.12/0.38  cnf(c_0_52, plain, (X1=esk1_2(k1_xboole_0,X2)|r1_xboole_0(k1_xboole_0,X2)), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.12/0.38  cnf(c_0_53, plain, (k10_relat_1(X1,k1_tarski(X2))!=k1_xboole_0|~v1_relat_1(X1)|~r2_hidden(X2,k2_relat_1(X1))), inference(spm,[status(thm)],[c_0_47, c_0_48])).
% 0.12/0.38  cnf(c_0_54, negated_conjecture, (k10_relat_1(esk3_0,k1_tarski(esk2_0))=k1_xboole_0|~r2_hidden(esk2_0,k2_relat_1(esk3_0))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.12/0.38  fof(c_0_55, plain, ![X4, X5]:((~r1_xboole_0(X4,X5)|k3_xboole_0(X4,X5)=k1_xboole_0)&(k3_xboole_0(X4,X5)!=k1_xboole_0|r1_xboole_0(X4,X5))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_xboole_0])])).
% 0.12/0.38  fof(c_0_56, plain, ![X14, X15]:k4_xboole_0(X14,k4_xboole_0(X14,X15))=k3_xboole_0(X14,X15), inference(variable_rename,[status(thm)],[t48_xboole_1])).
% 0.12/0.38  cnf(c_0_57, plain, (k4_xboole_0(k2_xboole_0(X1,X2),X2)=X1|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_49])).
% 0.12/0.38  cnf(c_0_58, plain, (k2_xboole_0(k1_xboole_0,X1)=X1), inference(spm,[status(thm)],[c_0_50, c_0_51])).
% 0.12/0.38  cnf(c_0_59, negated_conjecture, (r2_hidden(esk2_0,k2_relat_1(esk3_0))|k10_relat_1(esk3_0,k1_tarski(esk2_0))!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.12/0.38  cnf(c_0_60, plain, (X1=X2|r1_xboole_0(k1_xboole_0,X3)), inference(spm,[status(thm)],[c_0_52, c_0_52])).
% 0.12/0.38  cnf(c_0_61, negated_conjecture, (~r2_hidden(esk2_0,k2_relat_1(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_54]), c_0_25])])).
% 0.12/0.38  cnf(c_0_62, plain, (r1_xboole_0(X1,X2)|k3_xboole_0(X1,X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_55])).
% 0.12/0.38  cnf(c_0_63, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_56])).
% 0.12/0.38  cnf(c_0_64, plain, (k4_xboole_0(X1,X1)=k1_xboole_0|~r1_xboole_0(k1_xboole_0,X1)), inference(spm,[status(thm)],[c_0_57, c_0_58])).
% 0.12/0.38  cnf(c_0_65, negated_conjecture, (r1_xboole_0(k1_xboole_0,X1)), inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_59, c_0_60]), c_0_61]), c_0_60])).
% 0.12/0.38  cnf(c_0_66, plain, (r1_xboole_0(X1,X2)|k4_xboole_0(X1,k4_xboole_0(X1,X2))!=k1_xboole_0), inference(rw,[status(thm)],[c_0_62, c_0_63])).
% 0.12/0.38  cnf(c_0_67, plain, (k4_xboole_0(X1,X1)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_64, c_0_65])])).
% 0.12/0.38  cnf(c_0_68, plain, (k10_relat_1(X1,X2)=k1_xboole_0|~r1_xboole_0(k2_relat_1(X1),X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.12/0.38  cnf(c_0_69, plain, (r2_hidden(X1,X2)|r1_xboole_0(X2,k1_tarski(X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66, c_0_34]), c_0_67])])).
% 0.12/0.38  cnf(c_0_70, plain, (k10_relat_1(X1,k1_tarski(X2))=k1_xboole_0|r2_hidden(X2,k2_relat_1(X1))|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_68, c_0_69])).
% 0.12/0.38  cnf(c_0_71, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59, c_0_70]), c_0_25])]), c_0_61]), ['proof']).
% 0.12/0.38  # SZS output end CNFRefutation
% 0.12/0.38  # Proof object total steps             : 72
% 0.12/0.38  # Proof object clause steps            : 42
% 0.12/0.38  # Proof object formula steps           : 30
% 0.12/0.38  # Proof object conjectures             : 10
% 0.12/0.38  # Proof object clause conjectures      : 7
% 0.12/0.38  # Proof object formula conjectures     : 3
% 0.12/0.38  # Proof object initial clauses used    : 21
% 0.12/0.38  # Proof object initial formulas used   : 15
% 0.12/0.38  # Proof object generating inferences   : 18
% 0.12/0.38  # Proof object simplifying inferences  : 19
% 0.12/0.38  # Training examples: 0 positive, 0 negative
% 0.12/0.38  # Parsed axioms                        : 23
% 0.12/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.38  # Initial clauses                      : 34
% 0.12/0.38  # Removed in clause preprocessing      : 1
% 0.12/0.38  # Initial clauses in saturation        : 33
% 0.12/0.38  # Processed clauses                    : 167
% 0.12/0.38  # ...of these trivial                  : 12
% 0.12/0.38  # ...subsumed                          : 30
% 0.12/0.38  # ...remaining for further processing  : 125
% 0.12/0.38  # Other redundant clauses eliminated   : 5
% 0.12/0.38  # Clauses deleted for lack of memory   : 0
% 0.12/0.38  # Backward-subsumed                    : 5
% 0.12/0.38  # Backward-rewritten                   : 15
% 0.12/0.38  # Generated clauses                    : 904
% 0.12/0.38  # ...of the previous two non-trivial   : 841
% 0.12/0.38  # Contextual simplify-reflections      : 2
% 0.12/0.38  # Paramodulations                      : 899
% 0.12/0.38  # Factorizations                       : 0
% 0.12/0.38  # Equation resolutions                 : 5
% 0.12/0.38  # Propositional unsat checks           : 0
% 0.12/0.38  #    Propositional check models        : 0
% 0.12/0.38  #    Propositional check unsatisfiable : 0
% 0.12/0.38  #    Propositional clauses             : 0
% 0.12/0.38  #    Propositional clauses after purity: 0
% 0.12/0.38  #    Propositional unsat core size     : 0
% 0.12/0.38  #    Propositional preprocessing time  : 0.000
% 0.12/0.38  #    Propositional encoding time       : 0.000
% 0.12/0.38  #    Propositional solver time         : 0.000
% 0.12/0.38  #    Success case prop preproc time    : 0.000
% 0.12/0.38  #    Success case prop encoding time   : 0.000
% 0.12/0.38  #    Success case prop solver time     : 0.000
% 0.12/0.38  # Current number of processed clauses  : 71
% 0.12/0.38  #    Positive orientable unit clauses  : 15
% 0.12/0.38  #    Positive unorientable unit clauses: 0
% 0.12/0.38  #    Negative unit clauses             : 4
% 0.12/0.38  #    Non-unit-clauses                  : 52
% 0.12/0.38  # Current number of unprocessed clauses: 469
% 0.12/0.38  # ...number of literals in the above   : 1543
% 0.12/0.38  # Current number of archived formulas  : 0
% 0.12/0.38  # Current number of archived clauses   : 54
% 0.12/0.38  # Clause-clause subsumption calls (NU) : 405
% 0.12/0.38  # Rec. Clause-clause subsumption calls : 350
% 0.12/0.38  # Non-unit clause-clause subsumptions  : 17
% 0.12/0.38  # Unit Clause-clause subsumption calls : 54
% 0.12/0.38  # Rewrite failures with RHS unbound    : 0
% 0.12/0.38  # BW rewrite match attempts            : 26
% 0.12/0.38  # BW rewrite match successes           : 14
% 0.12/0.38  # Condensation attempts                : 0
% 0.12/0.38  # Condensation successes               : 0
% 0.12/0.38  # Termbank termtop insertions          : 9076
% 0.12/0.38  
% 0.12/0.38  # -------------------------------------------------
% 0.12/0.38  # User time                : 0.043 s
% 0.12/0.38  # System time              : 0.003 s
% 0.12/0.38  # Total time               : 0.047 s
% 0.12/0.38  # Maximum resident set size: 1584 pages
%------------------------------------------------------------------------------
