%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:50:07 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   82 ( 225 expanded)
%              Number of clauses        :   41 (  92 expanded)
%              Number of leaves         :   20 (  65 expanded)
%              Depth                    :   11
%              Number of atoms          :  149 ( 328 expanded)
%              Number of equality atoms :   54 ( 191 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t129_relat_1,conjecture,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( r1_tarski(X1,X2)
       => k8_relat_1(X2,k8_relat_1(X1,X3)) = k8_relat_1(X1,X3) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t129_relat_1)).

fof(t1_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X2,X3) )
     => r1_tarski(X1,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_xboole_1)).

fof(t12_setfam_1,axiom,(
    ! [X1,X2] : k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(t118_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => r1_tarski(k2_relat_1(k8_relat_1(X1,X2)),k2_relat_1(X2)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t118_relat_1)).

fof(t71_relat_1,axiom,(
    ! [X1] :
      ( k1_relat_1(k6_relat_1(X1)) = X1
      & k2_relat_1(k6_relat_1(X1)) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_relat_1)).

fof(dt_k6_relat_1,axiom,(
    ! [X1] : v1_relat_1(k6_relat_1(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k6_relat_1)).

fof(t119_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => k2_relat_1(k8_relat_1(X1,X2)) = k3_xboole_0(k2_relat_1(X2),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t119_relat_1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).

fof(t73_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t73_enumset1)).

fof(t74_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] : k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t74_enumset1)).

fof(t75_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7] : k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t75_enumset1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(commutativity_k2_tarski,axiom,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(cc2_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X1))
         => v1_relat_1(X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_relat_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).

fof(t76_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(k5_relat_1(X2,k6_relat_1(X1)),X2)
        & r1_tarski(k5_relat_1(k6_relat_1(X1),X2),X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t76_relat_1)).

fof(t123_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => k8_relat_1(X1,X2) = k5_relat_1(X2,k6_relat_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t123_relat_1)).

fof(t125_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(k2_relat_1(X2),X1)
       => k8_relat_1(X1,X2) = X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t125_relat_1)).

fof(c_0_20,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( v1_relat_1(X3)
       => ( r1_tarski(X1,X2)
         => k8_relat_1(X2,k8_relat_1(X1,X3)) = k8_relat_1(X1,X3) ) ) ),
    inference(assume_negation,[status(cth)],[t129_relat_1])).

fof(c_0_21,plain,(
    ! [X10,X11,X12] :
      ( ~ r1_tarski(X10,X11)
      | ~ r1_tarski(X11,X12)
      | r1_tarski(X10,X12) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).

fof(c_0_22,negated_conjecture,
    ( v1_relat_1(esk3_0)
    & r1_tarski(esk1_0,esk2_0)
    & k8_relat_1(esk2_0,k8_relat_1(esk1_0,esk3_0)) != k8_relat_1(esk1_0,esk3_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_20])])])).

fof(c_0_23,plain,(
    ! [X42,X43] : k1_setfam_1(k2_tarski(X42,X43)) = k3_xboole_0(X42,X43) ),
    inference(variable_rename,[status(thm)],[t12_setfam_1])).

fof(c_0_24,plain,(
    ! [X15,X16] : k1_enumset1(X15,X15,X16) = k2_tarski(X15,X16) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

cnf(c_0_25,plain,
    ( r1_tarski(X1,X3)
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_26,negated_conjecture,
    ( r1_tarski(esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_27,plain,(
    ! [X49,X50] :
      ( ~ v1_relat_1(X50)
      | r1_tarski(k2_relat_1(k8_relat_1(X49,X50)),k2_relat_1(X50)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t118_relat_1])])).

fof(c_0_28,plain,(
    ! [X57] :
      ( k1_relat_1(k6_relat_1(X57)) = X57
      & k2_relat_1(k6_relat_1(X57)) = X57 ) ),
    inference(variable_rename,[status(thm)],[t71_relat_1])).

fof(c_0_29,plain,(
    ! [X48] : v1_relat_1(k6_relat_1(X48)) ),
    inference(variable_rename,[status(thm)],[dt_k6_relat_1])).

fof(c_0_30,plain,(
    ! [X51,X52] :
      ( ~ v1_relat_1(X52)
      | k2_relat_1(k8_relat_1(X51,X52)) = k3_xboole_0(k2_relat_1(X52),X51) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t119_relat_1])])).

cnf(c_0_31,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_32,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

fof(c_0_33,plain,(
    ! [X17,X18,X19] : k2_enumset1(X17,X17,X18,X19) = k1_enumset1(X17,X18,X19) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_34,plain,(
    ! [X20,X21,X22,X23] : k3_enumset1(X20,X20,X21,X22,X23) = k2_enumset1(X20,X21,X22,X23) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_35,plain,(
    ! [X24,X25,X26,X27,X28] : k4_enumset1(X24,X24,X25,X26,X27,X28) = k3_enumset1(X24,X25,X26,X27,X28) ),
    inference(variable_rename,[status(thm)],[t73_enumset1])).

fof(c_0_36,plain,(
    ! [X29,X30,X31,X32,X33,X34] : k5_enumset1(X29,X29,X30,X31,X32,X33,X34) = k4_enumset1(X29,X30,X31,X32,X33,X34) ),
    inference(variable_rename,[status(thm)],[t74_enumset1])).

fof(c_0_37,plain,(
    ! [X35,X36,X37,X38,X39,X40,X41] : k6_enumset1(X35,X35,X36,X37,X38,X39,X40,X41) = k5_enumset1(X35,X36,X37,X38,X39,X40,X41) ),
    inference(variable_rename,[status(thm)],[t75_enumset1])).

cnf(c_0_38,negated_conjecture,
    ( r1_tarski(X1,esk2_0)
    | ~ r1_tarski(X1,esk1_0) ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_39,plain,
    ( r1_tarski(k2_relat_1(k8_relat_1(X2,X1)),k2_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_40,plain,
    ( k2_relat_1(k6_relat_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_41,plain,
    ( v1_relat_1(k6_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

fof(c_0_42,plain,(
    ! [X8,X9] :
      ( ( r1_tarski(X8,X9)
        | X8 != X9 )
      & ( r1_tarski(X9,X8)
        | X8 != X9 )
      & ( ~ r1_tarski(X8,X9)
        | ~ r1_tarski(X9,X8)
        | X8 = X9 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_43,plain,
    ( k2_relat_1(k8_relat_1(X2,X1)) = k3_xboole_0(k2_relat_1(X1),X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_44,plain,
    ( k1_setfam_1(k1_enumset1(X1,X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_31,c_0_32])).

cnf(c_0_45,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_46,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_47,plain,
    ( k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_48,plain,
    ( k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_49,plain,
    ( k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

fof(c_0_50,plain,(
    ! [X13,X14] : k2_tarski(X13,X14) = k2_tarski(X14,X13) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).

cnf(c_0_51,negated_conjecture,
    ( r1_tarski(X1,esk2_0)
    | ~ r1_tarski(X2,esk1_0)
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_25,c_0_38])).

cnf(c_0_52,plain,
    ( r1_tarski(k2_relat_1(k8_relat_1(X1,k6_relat_1(X2))),X2) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_40]),c_0_41])])).

cnf(c_0_53,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_54,plain,
    ( k2_relat_1(k8_relat_1(X2,X1)) = k1_setfam_1(k6_enumset1(k2_relat_1(X1),k2_relat_1(X1),k2_relat_1(X1),k2_relat_1(X1),k2_relat_1(X1),k2_relat_1(X1),k2_relat_1(X1),X2))
    | ~ v1_relat_1(X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_43,c_0_44]),c_0_45]),c_0_46]),c_0_47]),c_0_48]),c_0_49])).

cnf(c_0_55,plain,
    ( k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_50])).

cnf(c_0_56,negated_conjecture,
    ( r1_tarski(X1,esk2_0)
    | ~ r1_tarski(X1,k2_relat_1(k8_relat_1(X2,k6_relat_1(esk1_0)))) ),
    inference(spm,[status(thm)],[c_0_51,c_0_52])).

cnf(c_0_57,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_53])).

cnf(c_0_58,plain,
    ( k1_setfam_1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)) = k2_relat_1(k8_relat_1(X2,k6_relat_1(X1))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54,c_0_40]),c_0_41])])).

cnf(c_0_59,plain,
    ( k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2) = k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_55,c_0_32]),c_0_32]),c_0_45]),c_0_45]),c_0_46]),c_0_46]),c_0_47]),c_0_47]),c_0_48]),c_0_48]),c_0_49]),c_0_49])).

fof(c_0_60,plain,(
    ! [X46,X47] :
      ( ~ v1_relat_1(X46)
      | ~ m1_subset_1(X47,k1_zfmisc_1(X46))
      | v1_relat_1(X47) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).

fof(c_0_61,plain,(
    ! [X44,X45] :
      ( ( ~ m1_subset_1(X44,k1_zfmisc_1(X45))
        | r1_tarski(X44,X45) )
      & ( ~ r1_tarski(X44,X45)
        | m1_subset_1(X44,k1_zfmisc_1(X45)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

fof(c_0_62,plain,(
    ! [X58,X59] :
      ( ( r1_tarski(k5_relat_1(X59,k6_relat_1(X58)),X59)
        | ~ v1_relat_1(X59) )
      & ( r1_tarski(k5_relat_1(k6_relat_1(X58),X59),X59)
        | ~ v1_relat_1(X59) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t76_relat_1])])])).

fof(c_0_63,plain,(
    ! [X53,X54] :
      ( ~ v1_relat_1(X54)
      | k8_relat_1(X53,X54) = k5_relat_1(X54,k6_relat_1(X53)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t123_relat_1])])).

cnf(c_0_64,negated_conjecture,
    ( r1_tarski(k2_relat_1(k8_relat_1(X1,k6_relat_1(esk1_0))),esk2_0) ),
    inference(spm,[status(thm)],[c_0_56,c_0_57])).

cnf(c_0_65,plain,
    ( k2_relat_1(k8_relat_1(X1,k6_relat_1(X2))) = k2_relat_1(k8_relat_1(X2,k6_relat_1(X1))) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_59]),c_0_58])).

cnf(c_0_66,plain,
    ( v1_relat_1(X2)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_60])).

cnf(c_0_67,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_61])).

cnf(c_0_68,plain,
    ( r1_tarski(k5_relat_1(X1,k6_relat_1(X2)),X1)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_62])).

cnf(c_0_69,plain,
    ( k8_relat_1(X2,X1) = k5_relat_1(X1,k6_relat_1(X2))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_63])).

fof(c_0_70,plain,(
    ! [X55,X56] :
      ( ~ v1_relat_1(X56)
      | ~ r1_tarski(k2_relat_1(X56),X55)
      | k8_relat_1(X55,X56) = X56 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t125_relat_1])])).

cnf(c_0_71,negated_conjecture,
    ( r1_tarski(k2_relat_1(k8_relat_1(esk1_0,k6_relat_1(X1))),esk2_0) ),
    inference(spm,[status(thm)],[c_0_64,c_0_65])).

cnf(c_0_72,plain,
    ( k2_relat_1(k8_relat_1(X1,k6_relat_1(k2_relat_1(X2)))) = k2_relat_1(k8_relat_1(X1,X2))
    | ~ v1_relat_1(X2) ),
    inference(rw,[status(thm)],[c_0_54,c_0_58])).

cnf(c_0_73,plain,
    ( v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_66,c_0_67])).

cnf(c_0_74,plain,
    ( r1_tarski(k8_relat_1(X1,X2),X2)
    | ~ v1_relat_1(X2) ),
    inference(spm,[status(thm)],[c_0_68,c_0_69])).

cnf(c_0_75,plain,
    ( k8_relat_1(X2,X1) = X1
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k2_relat_1(X1),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_70])).

cnf(c_0_76,negated_conjecture,
    ( r1_tarski(k2_relat_1(k8_relat_1(esk1_0,X1)),esk2_0)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_71,c_0_72])).

cnf(c_0_77,plain,
    ( v1_relat_1(k8_relat_1(X1,X2))
    | ~ v1_relat_1(X2) ),
    inference(spm,[status(thm)],[c_0_73,c_0_74])).

cnf(c_0_78,negated_conjecture,
    ( k8_relat_1(esk2_0,k8_relat_1(esk1_0,esk3_0)) != k8_relat_1(esk1_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_79,negated_conjecture,
    ( k8_relat_1(esk2_0,k8_relat_1(esk1_0,X1)) = k8_relat_1(esk1_0,X1)
    | ~ v1_relat_1(X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_75,c_0_76]),c_0_77])).

cnf(c_0_80,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_81,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_78,c_0_79]),c_0_80])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n004.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 09:27:38 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.20/0.49  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.20/0.49  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.20/0.49  #
% 0.20/0.49  # Preprocessing time       : 0.027 s
% 0.20/0.49  # Presaturation interreduction done
% 0.20/0.49  
% 0.20/0.49  # Proof found!
% 0.20/0.49  # SZS status Theorem
% 0.20/0.49  # SZS output start CNFRefutation
% 0.20/0.49  fof(t129_relat_1, conjecture, ![X1, X2, X3]:(v1_relat_1(X3)=>(r1_tarski(X1,X2)=>k8_relat_1(X2,k8_relat_1(X1,X3))=k8_relat_1(X1,X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t129_relat_1)).
% 0.20/0.49  fof(t1_xboole_1, axiom, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_tarski(X2,X3))=>r1_tarski(X1,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t1_xboole_1)).
% 0.20/0.49  fof(t12_setfam_1, axiom, ![X1, X2]:k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t12_setfam_1)).
% 0.20/0.49  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.20/0.49  fof(t118_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>r1_tarski(k2_relat_1(k8_relat_1(X1,X2)),k2_relat_1(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t118_relat_1)).
% 0.20/0.49  fof(t71_relat_1, axiom, ![X1]:(k1_relat_1(k6_relat_1(X1))=X1&k2_relat_1(k6_relat_1(X1))=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_relat_1)).
% 0.20/0.49  fof(dt_k6_relat_1, axiom, ![X1]:v1_relat_1(k6_relat_1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k6_relat_1)).
% 0.20/0.49  fof(t119_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>k2_relat_1(k8_relat_1(X1,X2))=k3_xboole_0(k2_relat_1(X2),X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t119_relat_1)).
% 0.20/0.49  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.20/0.49  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t72_enumset1)).
% 0.20/0.49  fof(t73_enumset1, axiom, ![X1, X2, X3, X4, X5]:k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t73_enumset1)).
% 0.20/0.49  fof(t74_enumset1, axiom, ![X1, X2, X3, X4, X5, X6]:k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t74_enumset1)).
% 0.20/0.49  fof(t75_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7]:k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t75_enumset1)).
% 0.20/0.49  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.20/0.49  fof(commutativity_k2_tarski, axiom, ![X1, X2]:k2_tarski(X1,X2)=k2_tarski(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k2_tarski)).
% 0.20/0.49  fof(cc2_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>v1_relat_1(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc2_relat_1)).
% 0.20/0.49  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_subset)).
% 0.20/0.49  fof(t76_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(r1_tarski(k5_relat_1(X2,k6_relat_1(X1)),X2)&r1_tarski(k5_relat_1(k6_relat_1(X1),X2),X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t76_relat_1)).
% 0.20/0.49  fof(t123_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>k8_relat_1(X1,X2)=k5_relat_1(X2,k6_relat_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t123_relat_1)).
% 0.20/0.49  fof(t125_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(r1_tarski(k2_relat_1(X2),X1)=>k8_relat_1(X1,X2)=X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t125_relat_1)).
% 0.20/0.49  fof(c_0_20, negated_conjecture, ~(![X1, X2, X3]:(v1_relat_1(X3)=>(r1_tarski(X1,X2)=>k8_relat_1(X2,k8_relat_1(X1,X3))=k8_relat_1(X1,X3)))), inference(assume_negation,[status(cth)],[t129_relat_1])).
% 0.20/0.49  fof(c_0_21, plain, ![X10, X11, X12]:(~r1_tarski(X10,X11)|~r1_tarski(X11,X12)|r1_tarski(X10,X12)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).
% 0.20/0.49  fof(c_0_22, negated_conjecture, (v1_relat_1(esk3_0)&(r1_tarski(esk1_0,esk2_0)&k8_relat_1(esk2_0,k8_relat_1(esk1_0,esk3_0))!=k8_relat_1(esk1_0,esk3_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_20])])])).
% 0.20/0.49  fof(c_0_23, plain, ![X42, X43]:k1_setfam_1(k2_tarski(X42,X43))=k3_xboole_0(X42,X43), inference(variable_rename,[status(thm)],[t12_setfam_1])).
% 0.20/0.49  fof(c_0_24, plain, ![X15, X16]:k1_enumset1(X15,X15,X16)=k2_tarski(X15,X16), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.20/0.49  cnf(c_0_25, plain, (r1_tarski(X1,X3)|~r1_tarski(X1,X2)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.20/0.49  cnf(c_0_26, negated_conjecture, (r1_tarski(esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.20/0.49  fof(c_0_27, plain, ![X49, X50]:(~v1_relat_1(X50)|r1_tarski(k2_relat_1(k8_relat_1(X49,X50)),k2_relat_1(X50))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t118_relat_1])])).
% 0.20/0.49  fof(c_0_28, plain, ![X57]:(k1_relat_1(k6_relat_1(X57))=X57&k2_relat_1(k6_relat_1(X57))=X57), inference(variable_rename,[status(thm)],[t71_relat_1])).
% 0.20/0.49  fof(c_0_29, plain, ![X48]:v1_relat_1(k6_relat_1(X48)), inference(variable_rename,[status(thm)],[dt_k6_relat_1])).
% 0.20/0.49  fof(c_0_30, plain, ![X51, X52]:(~v1_relat_1(X52)|k2_relat_1(k8_relat_1(X51,X52))=k3_xboole_0(k2_relat_1(X52),X51)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t119_relat_1])])).
% 0.20/0.49  cnf(c_0_31, plain, (k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.20/0.49  cnf(c_0_32, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.20/0.49  fof(c_0_33, plain, ![X17, X18, X19]:k2_enumset1(X17,X17,X18,X19)=k1_enumset1(X17,X18,X19), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.20/0.49  fof(c_0_34, plain, ![X20, X21, X22, X23]:k3_enumset1(X20,X20,X21,X22,X23)=k2_enumset1(X20,X21,X22,X23), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.20/0.49  fof(c_0_35, plain, ![X24, X25, X26, X27, X28]:k4_enumset1(X24,X24,X25,X26,X27,X28)=k3_enumset1(X24,X25,X26,X27,X28), inference(variable_rename,[status(thm)],[t73_enumset1])).
% 0.20/0.49  fof(c_0_36, plain, ![X29, X30, X31, X32, X33, X34]:k5_enumset1(X29,X29,X30,X31,X32,X33,X34)=k4_enumset1(X29,X30,X31,X32,X33,X34), inference(variable_rename,[status(thm)],[t74_enumset1])).
% 0.20/0.49  fof(c_0_37, plain, ![X35, X36, X37, X38, X39, X40, X41]:k6_enumset1(X35,X35,X36,X37,X38,X39,X40,X41)=k5_enumset1(X35,X36,X37,X38,X39,X40,X41), inference(variable_rename,[status(thm)],[t75_enumset1])).
% 0.20/0.49  cnf(c_0_38, negated_conjecture, (r1_tarski(X1,esk2_0)|~r1_tarski(X1,esk1_0)), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.20/0.49  cnf(c_0_39, plain, (r1_tarski(k2_relat_1(k8_relat_1(X2,X1)),k2_relat_1(X1))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.20/0.49  cnf(c_0_40, plain, (k2_relat_1(k6_relat_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.20/0.49  cnf(c_0_41, plain, (v1_relat_1(k6_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.20/0.49  fof(c_0_42, plain, ![X8, X9]:(((r1_tarski(X8,X9)|X8!=X9)&(r1_tarski(X9,X8)|X8!=X9))&(~r1_tarski(X8,X9)|~r1_tarski(X9,X8)|X8=X9)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.20/0.49  cnf(c_0_43, plain, (k2_relat_1(k8_relat_1(X2,X1))=k3_xboole_0(k2_relat_1(X1),X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.20/0.49  cnf(c_0_44, plain, (k1_setfam_1(k1_enumset1(X1,X1,X2))=k3_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_31, c_0_32])).
% 0.20/0.49  cnf(c_0_45, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.20/0.49  cnf(c_0_46, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.20/0.49  cnf(c_0_47, plain, (k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.20/0.49  cnf(c_0_48, plain, (k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6)), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.20/0.49  cnf(c_0_49, plain, (k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.20/0.49  fof(c_0_50, plain, ![X13, X14]:k2_tarski(X13,X14)=k2_tarski(X14,X13), inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).
% 0.20/0.49  cnf(c_0_51, negated_conjecture, (r1_tarski(X1,esk2_0)|~r1_tarski(X2,esk1_0)|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_25, c_0_38])).
% 0.20/0.49  cnf(c_0_52, plain, (r1_tarski(k2_relat_1(k8_relat_1(X1,k6_relat_1(X2))),X2)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_40]), c_0_41])])).
% 0.20/0.49  cnf(c_0_53, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.20/0.49  cnf(c_0_54, plain, (k2_relat_1(k8_relat_1(X2,X1))=k1_setfam_1(k6_enumset1(k2_relat_1(X1),k2_relat_1(X1),k2_relat_1(X1),k2_relat_1(X1),k2_relat_1(X1),k2_relat_1(X1),k2_relat_1(X1),X2))|~v1_relat_1(X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_43, c_0_44]), c_0_45]), c_0_46]), c_0_47]), c_0_48]), c_0_49])).
% 0.20/0.49  cnf(c_0_55, plain, (k2_tarski(X1,X2)=k2_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_50])).
% 0.20/0.49  cnf(c_0_56, negated_conjecture, (r1_tarski(X1,esk2_0)|~r1_tarski(X1,k2_relat_1(k8_relat_1(X2,k6_relat_1(esk1_0))))), inference(spm,[status(thm)],[c_0_51, c_0_52])).
% 0.20/0.49  cnf(c_0_57, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_53])).
% 0.20/0.49  cnf(c_0_58, plain, (k1_setfam_1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))=k2_relat_1(k8_relat_1(X2,k6_relat_1(X1)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54, c_0_40]), c_0_41])])).
% 0.20/0.49  cnf(c_0_59, plain, (k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)=k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_55, c_0_32]), c_0_32]), c_0_45]), c_0_45]), c_0_46]), c_0_46]), c_0_47]), c_0_47]), c_0_48]), c_0_48]), c_0_49]), c_0_49])).
% 0.20/0.49  fof(c_0_60, plain, ![X46, X47]:(~v1_relat_1(X46)|(~m1_subset_1(X47,k1_zfmisc_1(X46))|v1_relat_1(X47))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).
% 0.20/0.49  fof(c_0_61, plain, ![X44, X45]:((~m1_subset_1(X44,k1_zfmisc_1(X45))|r1_tarski(X44,X45))&(~r1_tarski(X44,X45)|m1_subset_1(X44,k1_zfmisc_1(X45)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.20/0.49  fof(c_0_62, plain, ![X58, X59]:((r1_tarski(k5_relat_1(X59,k6_relat_1(X58)),X59)|~v1_relat_1(X59))&(r1_tarski(k5_relat_1(k6_relat_1(X58),X59),X59)|~v1_relat_1(X59))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t76_relat_1])])])).
% 0.20/0.49  fof(c_0_63, plain, ![X53, X54]:(~v1_relat_1(X54)|k8_relat_1(X53,X54)=k5_relat_1(X54,k6_relat_1(X53))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t123_relat_1])])).
% 0.20/0.49  cnf(c_0_64, negated_conjecture, (r1_tarski(k2_relat_1(k8_relat_1(X1,k6_relat_1(esk1_0))),esk2_0)), inference(spm,[status(thm)],[c_0_56, c_0_57])).
% 0.20/0.49  cnf(c_0_65, plain, (k2_relat_1(k8_relat_1(X1,k6_relat_1(X2)))=k2_relat_1(k8_relat_1(X2,k6_relat_1(X1)))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58, c_0_59]), c_0_58])).
% 0.20/0.49  cnf(c_0_66, plain, (v1_relat_1(X2)|~v1_relat_1(X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_60])).
% 0.20/0.49  cnf(c_0_67, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_61])).
% 0.20/0.49  cnf(c_0_68, plain, (r1_tarski(k5_relat_1(X1,k6_relat_1(X2)),X1)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_62])).
% 0.20/0.49  cnf(c_0_69, plain, (k8_relat_1(X2,X1)=k5_relat_1(X1,k6_relat_1(X2))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_63])).
% 0.20/0.49  fof(c_0_70, plain, ![X55, X56]:(~v1_relat_1(X56)|(~r1_tarski(k2_relat_1(X56),X55)|k8_relat_1(X55,X56)=X56)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t125_relat_1])])).
% 0.20/0.49  cnf(c_0_71, negated_conjecture, (r1_tarski(k2_relat_1(k8_relat_1(esk1_0,k6_relat_1(X1))),esk2_0)), inference(spm,[status(thm)],[c_0_64, c_0_65])).
% 0.20/0.49  cnf(c_0_72, plain, (k2_relat_1(k8_relat_1(X1,k6_relat_1(k2_relat_1(X2))))=k2_relat_1(k8_relat_1(X1,X2))|~v1_relat_1(X2)), inference(rw,[status(thm)],[c_0_54, c_0_58])).
% 0.20/0.49  cnf(c_0_73, plain, (v1_relat_1(X1)|~v1_relat_1(X2)|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_66, c_0_67])).
% 0.20/0.49  cnf(c_0_74, plain, (r1_tarski(k8_relat_1(X1,X2),X2)|~v1_relat_1(X2)), inference(spm,[status(thm)],[c_0_68, c_0_69])).
% 0.20/0.49  cnf(c_0_75, plain, (k8_relat_1(X2,X1)=X1|~v1_relat_1(X1)|~r1_tarski(k2_relat_1(X1),X2)), inference(split_conjunct,[status(thm)],[c_0_70])).
% 0.20/0.49  cnf(c_0_76, negated_conjecture, (r1_tarski(k2_relat_1(k8_relat_1(esk1_0,X1)),esk2_0)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_71, c_0_72])).
% 0.20/0.49  cnf(c_0_77, plain, (v1_relat_1(k8_relat_1(X1,X2))|~v1_relat_1(X2)), inference(spm,[status(thm)],[c_0_73, c_0_74])).
% 0.20/0.49  cnf(c_0_78, negated_conjecture, (k8_relat_1(esk2_0,k8_relat_1(esk1_0,esk3_0))!=k8_relat_1(esk1_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.20/0.49  cnf(c_0_79, negated_conjecture, (k8_relat_1(esk2_0,k8_relat_1(esk1_0,X1))=k8_relat_1(esk1_0,X1)|~v1_relat_1(X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_75, c_0_76]), c_0_77])).
% 0.20/0.49  cnf(c_0_80, negated_conjecture, (v1_relat_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.20/0.49  cnf(c_0_81, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_78, c_0_79]), c_0_80])]), ['proof']).
% 0.20/0.49  # SZS output end CNFRefutation
% 0.20/0.49  # Proof object total steps             : 82
% 0.20/0.49  # Proof object clause steps            : 41
% 0.20/0.49  # Proof object formula steps           : 41
% 0.20/0.49  # Proof object conjectures             : 14
% 0.20/0.49  # Proof object clause conjectures      : 11
% 0.20/0.49  # Proof object formula conjectures     : 3
% 0.20/0.49  # Proof object initial clauses used    : 22
% 0.20/0.49  # Proof object initial formulas used   : 20
% 0.20/0.49  # Proof object generating inferences   : 14
% 0.20/0.49  # Proof object simplifying inferences  : 29
% 0.20/0.49  # Training examples: 0 positive, 0 negative
% 0.20/0.49  # Parsed axioms                        : 20
% 0.20/0.49  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.49  # Initial clauses                      : 27
% 0.20/0.49  # Removed in clause preprocessing      : 7
% 0.20/0.49  # Initial clauses in saturation        : 20
% 0.20/0.49  # Processed clauses                    : 1215
% 0.20/0.49  # ...of these trivial                  : 18
% 0.20/0.49  # ...subsumed                          : 863
% 0.20/0.49  # ...remaining for further processing  : 334
% 0.20/0.49  # Other redundant clauses eliminated   : 2
% 0.20/0.49  # Clauses deleted for lack of memory   : 0
% 0.20/0.49  # Backward-subsumed                    : 3
% 0.20/0.49  # Backward-rewritten                   : 17
% 0.20/0.49  # Generated clauses                    : 7831
% 0.20/0.49  # ...of the previous two non-trivial   : 6507
% 0.20/0.49  # Contextual simplify-reflections      : 30
% 0.20/0.49  # Paramodulations                      : 7829
% 0.20/0.49  # Factorizations                       : 0
% 0.20/0.49  # Equation resolutions                 : 2
% 0.20/0.49  # Propositional unsat checks           : 0
% 0.20/0.49  #    Propositional check models        : 0
% 0.20/0.49  #    Propositional check unsatisfiable : 0
% 0.20/0.49  #    Propositional clauses             : 0
% 0.20/0.49  #    Propositional clauses after purity: 0
% 0.20/0.49  #    Propositional unsat core size     : 0
% 0.20/0.49  #    Propositional preprocessing time  : 0.000
% 0.20/0.49  #    Propositional encoding time       : 0.000
% 0.20/0.49  #    Propositional solver time         : 0.000
% 0.20/0.49  #    Success case prop preproc time    : 0.000
% 0.20/0.49  #    Success case prop encoding time   : 0.000
% 0.20/0.49  #    Success case prop solver time     : 0.000
% 0.20/0.49  # Current number of processed clauses  : 293
% 0.20/0.49  #    Positive orientable unit clauses  : 45
% 0.20/0.49  #    Positive unorientable unit clauses: 2
% 0.20/0.49  #    Negative unit clauses             : 1
% 0.20/0.49  #    Non-unit-clauses                  : 245
% 0.20/0.49  # Current number of unprocessed clauses: 5256
% 0.20/0.49  # ...number of literals in the above   : 15436
% 0.20/0.49  # Current number of archived formulas  : 0
% 0.20/0.49  # Current number of archived clauses   : 46
% 0.20/0.49  # Clause-clause subsumption calls (NU) : 18612
% 0.20/0.49  # Rec. Clause-clause subsumption calls : 12773
% 0.20/0.49  # Non-unit clause-clause subsumptions  : 895
% 0.20/0.49  # Unit Clause-clause subsumption calls : 29
% 0.20/0.49  # Rewrite failures with RHS unbound    : 0
% 0.20/0.49  # BW rewrite match attempts            : 149
% 0.20/0.49  # BW rewrite match successes           : 60
% 0.20/0.49  # Condensation attempts                : 0
% 0.20/0.49  # Condensation successes               : 0
% 0.20/0.49  # Termbank termtop insertions          : 108933
% 0.20/0.49  
% 0.20/0.49  # -------------------------------------------------
% 0.20/0.49  # User time                : 0.138 s
% 0.20/0.49  # System time              : 0.010 s
% 0.20/0.49  # Total time               : 0.147 s
% 0.20/0.49  # Maximum resident set size: 1588 pages
%------------------------------------------------------------------------------
