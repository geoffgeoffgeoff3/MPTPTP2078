%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:49:57 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   69 ( 162 expanded)
%              Number of clauses        :   34 (  71 expanded)
%              Number of leaves         :   18 (  53 expanded)
%              Depth                    :   10
%              Number of atoms          :  103 ( 196 expanded)
%              Number of equality atoms :   69 ( 162 expanded)
%              Maximal formula depth    :   10 (   3 average)
%              Maximal clause size      :    7 (   1 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t12_setfam_1,axiom,(
    ! [X1,X2] : k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t4_boole,axiom,(
    ! [X1] : k4_xboole_0(k1_xboole_0,X1) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_boole)).

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

fof(t95_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( k7_relat_1(X2,X1) = k1_xboole_0
      <=> r1_xboole_0(k1_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t95_relat_1)).

fof(t83_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
    <=> k4_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t83_xboole_1)).

fof(t111_relat_1,conjecture,(
    ! [X1] : k7_relat_1(k1_xboole_0,X1) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t111_relat_1)).

fof(d2_xboole_0,axiom,(
    k1_xboole_0 = o_0_0_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_xboole_0)).

fof(d1_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
    <=> ! [X2] :
          ~ ( r2_hidden(X2,X1)
            & ! [X3,X4] : X2 != k4_tarski(X3,X4) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_relat_1)).

fof(t60_relat_1,axiom,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0
    & k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t60_relat_1)).

fof(t49_zfmisc_1,axiom,(
    ! [X1,X2] : k2_xboole_0(k1_tarski(X1),X2) != k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t49_zfmisc_1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(t46_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( r2_hidden(X1,X2)
     => k2_xboole_0(k1_tarski(X1),X2) = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t46_zfmisc_1)).

fof(c_0_18,plain,(
    ! [X45,X46] : k1_setfam_1(k2_tarski(X45,X46)) = k3_xboole_0(X45,X46) ),
    inference(variable_rename,[status(thm)],[t12_setfam_1])).

fof(c_0_19,plain,(
    ! [X14,X15] : k1_enumset1(X14,X14,X15) = k2_tarski(X14,X15) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_20,plain,(
    ! [X8,X9] : k4_xboole_0(X8,X9) = k5_xboole_0(X8,k3_xboole_0(X8,X9)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

cnf(c_0_21,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_22,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

fof(c_0_23,plain,(
    ! [X10] : k4_xboole_0(k1_xboole_0,X10) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t4_boole])).

cnf(c_0_24,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_25,plain,
    ( k1_setfam_1(k1_enumset1(X1,X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_21,c_0_22])).

fof(c_0_26,plain,(
    ! [X16,X17,X18] : k2_enumset1(X16,X16,X17,X18) = k1_enumset1(X16,X17,X18) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_27,plain,(
    ! [X19,X20,X21,X22] : k3_enumset1(X19,X19,X20,X21,X22) = k2_enumset1(X19,X20,X21,X22) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_28,plain,(
    ! [X23,X24,X25,X26,X27] : k4_enumset1(X23,X23,X24,X25,X26,X27) = k3_enumset1(X23,X24,X25,X26,X27) ),
    inference(variable_rename,[status(thm)],[t73_enumset1])).

fof(c_0_29,plain,(
    ! [X28,X29,X30,X31,X32,X33] : k5_enumset1(X28,X28,X29,X30,X31,X32,X33) = k4_enumset1(X28,X29,X30,X31,X32,X33) ),
    inference(variable_rename,[status(thm)],[t74_enumset1])).

fof(c_0_30,plain,(
    ! [X34,X35,X36,X37,X38,X39,X40] : k6_enumset1(X34,X34,X35,X36,X37,X38,X39,X40) = k5_enumset1(X34,X35,X36,X37,X38,X39,X40) ),
    inference(variable_rename,[status(thm)],[t75_enumset1])).

fof(c_0_31,plain,(
    ! [X55,X56] :
      ( ( k7_relat_1(X56,X55) != k1_xboole_0
        | r1_xboole_0(k1_relat_1(X56),X55)
        | ~ v1_relat_1(X56) )
      & ( ~ r1_xboole_0(k1_relat_1(X56),X55)
        | k7_relat_1(X56,X55) = k1_xboole_0
        | ~ v1_relat_1(X56) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t95_relat_1])])])).

fof(c_0_32,plain,(
    ! [X11,X12] :
      ( ( ~ r1_xboole_0(X11,X12)
        | k4_xboole_0(X11,X12) = X11 )
      & ( k4_xboole_0(X11,X12) != X11
        | r1_xboole_0(X11,X12) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t83_xboole_1])])).

cnf(c_0_33,plain,
    ( k4_xboole_0(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_34,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k1_setfam_1(k1_enumset1(X1,X1,X2))) ),
    inference(rw,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_35,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_36,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_37,plain,
    ( k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_38,plain,
    ( k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_39,plain,
    ( k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

fof(c_0_40,negated_conjecture,(
    ~ ! [X1] : k7_relat_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(assume_negation,[status(cth)],[t111_relat_1])).

cnf(c_0_41,plain,
    ( k7_relat_1(X1,X2) = k1_xboole_0
    | ~ r1_xboole_0(k1_relat_1(X1),X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_42,plain,
    ( k1_xboole_0 = o_0_0_xboole_0 ),
    inference(split_conjunct,[status(thm)],[d2_xboole_0])).

fof(c_0_43,plain,(
    ! [X47,X48,X51,X53,X54] :
      ( ( ~ v1_relat_1(X47)
        | ~ r2_hidden(X48,X47)
        | X48 = k4_tarski(esk1_2(X47,X48),esk2_2(X47,X48)) )
      & ( r2_hidden(esk3_1(X51),X51)
        | v1_relat_1(X51) )
      & ( esk3_1(X51) != k4_tarski(X53,X54)
        | v1_relat_1(X51) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_relat_1])])])])])])).

cnf(c_0_44,plain,
    ( r1_xboole_0(X1,X2)
    | k4_xboole_0(X1,X2) != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_45,plain,
    ( k5_xboole_0(k1_xboole_0,k1_setfam_1(k6_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,X1))) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33,c_0_34]),c_0_35]),c_0_36]),c_0_37]),c_0_38]),c_0_39])).

fof(c_0_46,negated_conjecture,(
    k7_relat_1(k1_xboole_0,esk4_0) != k1_xboole_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_40])])])).

cnf(c_0_47,plain,
    ( k7_relat_1(X1,X2) = o_0_0_xboole_0
    | ~ v1_relat_1(X1)
    | ~ r1_xboole_0(k1_relat_1(X1),X2) ),
    inference(rw,[status(thm)],[c_0_41,c_0_42])).

cnf(c_0_48,plain,
    ( r2_hidden(esk3_1(X1),X1)
    | v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_49,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[t60_relat_1])).

cnf(c_0_50,plain,
    ( r1_xboole_0(X1,X2)
    | k5_xboole_0(X1,k1_setfam_1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))) != X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_44,c_0_34]),c_0_35]),c_0_36]),c_0_37]),c_0_38]),c_0_39])).

cnf(c_0_51,plain,
    ( k5_xboole_0(o_0_0_xboole_0,k1_setfam_1(k6_enumset1(o_0_0_xboole_0,o_0_0_xboole_0,o_0_0_xboole_0,o_0_0_xboole_0,o_0_0_xboole_0,o_0_0_xboole_0,o_0_0_xboole_0,X1))) = o_0_0_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_45,c_0_42]),c_0_42]),c_0_42]),c_0_42]),c_0_42]),c_0_42]),c_0_42]),c_0_42]),c_0_42])).

fof(c_0_52,plain,(
    ! [X43,X44] : k2_xboole_0(k1_tarski(X43),X44) != k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t49_zfmisc_1])).

fof(c_0_53,plain,(
    ! [X13] : k2_tarski(X13,X13) = k1_tarski(X13) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_54,plain,(
    ! [X41,X42] :
      ( ~ r2_hidden(X41,X42)
      | k2_xboole_0(k1_tarski(X41),X42) = X42 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t46_zfmisc_1])])).

cnf(c_0_55,negated_conjecture,
    ( k7_relat_1(k1_xboole_0,esk4_0) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_46])).

cnf(c_0_56,plain,
    ( k7_relat_1(X1,X2) = o_0_0_xboole_0
    | r2_hidden(esk3_1(X1),X1)
    | ~ r1_xboole_0(k1_relat_1(X1),X2) ),
    inference(spm,[status(thm)],[c_0_47,c_0_48])).

cnf(c_0_57,plain,
    ( k1_relat_1(o_0_0_xboole_0) = o_0_0_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_49,c_0_42]),c_0_42])).

cnf(c_0_58,plain,
    ( r1_xboole_0(o_0_0_xboole_0,X1) ),
    inference(spm,[status(thm)],[c_0_50,c_0_51])).

cnf(c_0_59,plain,
    ( k2_xboole_0(k1_tarski(X1),X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_52])).

cnf(c_0_60,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_53])).

cnf(c_0_61,plain,
    ( k2_xboole_0(k1_tarski(X1),X2) = X2
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_54])).

cnf(c_0_62,negated_conjecture,
    ( k7_relat_1(o_0_0_xboole_0,esk4_0) != o_0_0_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_55,c_0_42]),c_0_42])).

cnf(c_0_63,plain,
    ( k7_relat_1(o_0_0_xboole_0,X1) = o_0_0_xboole_0
    | r2_hidden(esk3_1(o_0_0_xboole_0),o_0_0_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56,c_0_57]),c_0_58])])).

cnf(c_0_64,plain,
    ( k2_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),X2) != k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_59,c_0_60]),c_0_22]),c_0_35]),c_0_36]),c_0_37]),c_0_38]),c_0_39])).

cnf(c_0_65,plain,
    ( k2_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),X2) = X2
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_61,c_0_60]),c_0_22]),c_0_35]),c_0_36]),c_0_37]),c_0_38]),c_0_39])).

cnf(c_0_66,negated_conjecture,
    ( r2_hidden(esk3_1(o_0_0_xboole_0),o_0_0_xboole_0) ),
    inference(spm,[status(thm)],[c_0_62,c_0_63])).

cnf(c_0_67,plain,
    ( k2_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),X2) != o_0_0_xboole_0 ),
    inference(rw,[status(thm)],[c_0_64,c_0_42])).

cnf(c_0_68,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_65,c_0_66]),c_0_67]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.35  % Computer   : n007.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 09:38:06 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.20/0.38  # AutoSched0-Mode selected heuristic G_E___107_B00_00_F1_PI_AE_Q4_CS_SP_PS_S002A
% 0.20/0.38  # and selection function SelectNegativeLiterals.
% 0.20/0.38  #
% 0.20/0.38  # Preprocessing time       : 0.027 s
% 0.20/0.38  # Presaturation interreduction done
% 0.20/0.38  
% 0.20/0.38  # Proof found!
% 0.20/0.38  # SZS status Theorem
% 0.20/0.38  # SZS output start CNFRefutation
% 0.20/0.38  fof(t12_setfam_1, axiom, ![X1, X2]:k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t12_setfam_1)).
% 0.20/0.38  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.20/0.38  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.20/0.38  fof(t4_boole, axiom, ![X1]:k4_xboole_0(k1_xboole_0,X1)=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t4_boole)).
% 0.20/0.38  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.20/0.38  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t72_enumset1)).
% 0.20/0.38  fof(t73_enumset1, axiom, ![X1, X2, X3, X4, X5]:k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t73_enumset1)).
% 0.20/0.38  fof(t74_enumset1, axiom, ![X1, X2, X3, X4, X5, X6]:k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t74_enumset1)).
% 0.20/0.38  fof(t75_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7]:k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t75_enumset1)).
% 0.20/0.38  fof(t95_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(k7_relat_1(X2,X1)=k1_xboole_0<=>r1_xboole_0(k1_relat_1(X2),X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t95_relat_1)).
% 0.20/0.38  fof(t83_xboole_1, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)<=>k4_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t83_xboole_1)).
% 0.20/0.38  fof(t111_relat_1, conjecture, ![X1]:k7_relat_1(k1_xboole_0,X1)=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t111_relat_1)).
% 0.20/0.38  fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', d2_xboole_0)).
% 0.20/0.38  fof(d1_relat_1, axiom, ![X1]:(v1_relat_1(X1)<=>![X2]:~((r2_hidden(X2,X1)&![X3, X4]:X2!=k4_tarski(X3,X4)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_relat_1)).
% 0.20/0.38  fof(t60_relat_1, axiom, (k1_relat_1(k1_xboole_0)=k1_xboole_0&k2_relat_1(k1_xboole_0)=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t60_relat_1)).
% 0.20/0.38  fof(t49_zfmisc_1, axiom, ![X1, X2]:k2_xboole_0(k1_tarski(X1),X2)!=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t49_zfmisc_1)).
% 0.20/0.38  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.20/0.38  fof(t46_zfmisc_1, axiom, ![X1, X2]:(r2_hidden(X1,X2)=>k2_xboole_0(k1_tarski(X1),X2)=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t46_zfmisc_1)).
% 0.20/0.38  fof(c_0_18, plain, ![X45, X46]:k1_setfam_1(k2_tarski(X45,X46))=k3_xboole_0(X45,X46), inference(variable_rename,[status(thm)],[t12_setfam_1])).
% 0.20/0.38  fof(c_0_19, plain, ![X14, X15]:k1_enumset1(X14,X14,X15)=k2_tarski(X14,X15), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.20/0.38  fof(c_0_20, plain, ![X8, X9]:k4_xboole_0(X8,X9)=k5_xboole_0(X8,k3_xboole_0(X8,X9)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.20/0.38  cnf(c_0_21, plain, (k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.38  cnf(c_0_22, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.38  fof(c_0_23, plain, ![X10]:k4_xboole_0(k1_xboole_0,X10)=k1_xboole_0, inference(variable_rename,[status(thm)],[t4_boole])).
% 0.20/0.38  cnf(c_0_24, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.20/0.38  cnf(c_0_25, plain, (k1_setfam_1(k1_enumset1(X1,X1,X2))=k3_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_21, c_0_22])).
% 0.20/0.38  fof(c_0_26, plain, ![X16, X17, X18]:k2_enumset1(X16,X16,X17,X18)=k1_enumset1(X16,X17,X18), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.20/0.38  fof(c_0_27, plain, ![X19, X20, X21, X22]:k3_enumset1(X19,X19,X20,X21,X22)=k2_enumset1(X19,X20,X21,X22), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.20/0.38  fof(c_0_28, plain, ![X23, X24, X25, X26, X27]:k4_enumset1(X23,X23,X24,X25,X26,X27)=k3_enumset1(X23,X24,X25,X26,X27), inference(variable_rename,[status(thm)],[t73_enumset1])).
% 0.20/0.38  fof(c_0_29, plain, ![X28, X29, X30, X31, X32, X33]:k5_enumset1(X28,X28,X29,X30,X31,X32,X33)=k4_enumset1(X28,X29,X30,X31,X32,X33), inference(variable_rename,[status(thm)],[t74_enumset1])).
% 0.20/0.38  fof(c_0_30, plain, ![X34, X35, X36, X37, X38, X39, X40]:k6_enumset1(X34,X34,X35,X36,X37,X38,X39,X40)=k5_enumset1(X34,X35,X36,X37,X38,X39,X40), inference(variable_rename,[status(thm)],[t75_enumset1])).
% 0.20/0.38  fof(c_0_31, plain, ![X55, X56]:((k7_relat_1(X56,X55)!=k1_xboole_0|r1_xboole_0(k1_relat_1(X56),X55)|~v1_relat_1(X56))&(~r1_xboole_0(k1_relat_1(X56),X55)|k7_relat_1(X56,X55)=k1_xboole_0|~v1_relat_1(X56))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t95_relat_1])])])).
% 0.20/0.38  fof(c_0_32, plain, ![X11, X12]:((~r1_xboole_0(X11,X12)|k4_xboole_0(X11,X12)=X11)&(k4_xboole_0(X11,X12)!=X11|r1_xboole_0(X11,X12))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t83_xboole_1])])).
% 0.20/0.38  cnf(c_0_33, plain, (k4_xboole_0(k1_xboole_0,X1)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.20/0.38  cnf(c_0_34, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k1_setfam_1(k1_enumset1(X1,X1,X2)))), inference(rw,[status(thm)],[c_0_24, c_0_25])).
% 0.20/0.38  cnf(c_0_35, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.20/0.38  cnf(c_0_36, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.20/0.38  cnf(c_0_37, plain, (k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.20/0.38  cnf(c_0_38, plain, (k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.20/0.38  cnf(c_0_39, plain, (k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.20/0.38  fof(c_0_40, negated_conjecture, ~(![X1]:k7_relat_1(k1_xboole_0,X1)=k1_xboole_0), inference(assume_negation,[status(cth)],[t111_relat_1])).
% 0.20/0.38  cnf(c_0_41, plain, (k7_relat_1(X1,X2)=k1_xboole_0|~r1_xboole_0(k1_relat_1(X1),X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.20/0.38  cnf(c_0_42, plain, (k1_xboole_0=o_0_0_xboole_0), inference(split_conjunct,[status(thm)],[d2_xboole_0])).
% 0.20/0.38  fof(c_0_43, plain, ![X47, X48, X51, X53, X54]:((~v1_relat_1(X47)|(~r2_hidden(X48,X47)|X48=k4_tarski(esk1_2(X47,X48),esk2_2(X47,X48))))&((r2_hidden(esk3_1(X51),X51)|v1_relat_1(X51))&(esk3_1(X51)!=k4_tarski(X53,X54)|v1_relat_1(X51)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_relat_1])])])])])])).
% 0.20/0.38  cnf(c_0_44, plain, (r1_xboole_0(X1,X2)|k4_xboole_0(X1,X2)!=X1), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.20/0.38  cnf(c_0_45, plain, (k5_xboole_0(k1_xboole_0,k1_setfam_1(k6_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,X1)))=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33, c_0_34]), c_0_35]), c_0_36]), c_0_37]), c_0_38]), c_0_39])).
% 0.20/0.38  fof(c_0_46, negated_conjecture, k7_relat_1(k1_xboole_0,esk4_0)!=k1_xboole_0, inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_40])])])).
% 0.20/0.38  cnf(c_0_47, plain, (k7_relat_1(X1,X2)=o_0_0_xboole_0|~v1_relat_1(X1)|~r1_xboole_0(k1_relat_1(X1),X2)), inference(rw,[status(thm)],[c_0_41, c_0_42])).
% 0.20/0.38  cnf(c_0_48, plain, (r2_hidden(esk3_1(X1),X1)|v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.20/0.38  cnf(c_0_49, plain, (k1_relat_1(k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[t60_relat_1])).
% 0.20/0.38  cnf(c_0_50, plain, (r1_xboole_0(X1,X2)|k5_xboole_0(X1,k1_setfam_1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)))!=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_44, c_0_34]), c_0_35]), c_0_36]), c_0_37]), c_0_38]), c_0_39])).
% 0.20/0.38  cnf(c_0_51, plain, (k5_xboole_0(o_0_0_xboole_0,k1_setfam_1(k6_enumset1(o_0_0_xboole_0,o_0_0_xboole_0,o_0_0_xboole_0,o_0_0_xboole_0,o_0_0_xboole_0,o_0_0_xboole_0,o_0_0_xboole_0,X1)))=o_0_0_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_45, c_0_42]), c_0_42]), c_0_42]), c_0_42]), c_0_42]), c_0_42]), c_0_42]), c_0_42]), c_0_42])).
% 0.20/0.38  fof(c_0_52, plain, ![X43, X44]:k2_xboole_0(k1_tarski(X43),X44)!=k1_xboole_0, inference(variable_rename,[status(thm)],[t49_zfmisc_1])).
% 0.20/0.38  fof(c_0_53, plain, ![X13]:k2_tarski(X13,X13)=k1_tarski(X13), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.20/0.38  fof(c_0_54, plain, ![X41, X42]:(~r2_hidden(X41,X42)|k2_xboole_0(k1_tarski(X41),X42)=X42), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t46_zfmisc_1])])).
% 0.20/0.38  cnf(c_0_55, negated_conjecture, (k7_relat_1(k1_xboole_0,esk4_0)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_46])).
% 0.20/0.38  cnf(c_0_56, plain, (k7_relat_1(X1,X2)=o_0_0_xboole_0|r2_hidden(esk3_1(X1),X1)|~r1_xboole_0(k1_relat_1(X1),X2)), inference(spm,[status(thm)],[c_0_47, c_0_48])).
% 0.20/0.38  cnf(c_0_57, plain, (k1_relat_1(o_0_0_xboole_0)=o_0_0_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_49, c_0_42]), c_0_42])).
% 0.20/0.38  cnf(c_0_58, plain, (r1_xboole_0(o_0_0_xboole_0,X1)), inference(spm,[status(thm)],[c_0_50, c_0_51])).
% 0.20/0.38  cnf(c_0_59, plain, (k2_xboole_0(k1_tarski(X1),X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_52])).
% 0.20/0.38  cnf(c_0_60, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_53])).
% 0.20/0.38  cnf(c_0_61, plain, (k2_xboole_0(k1_tarski(X1),X2)=X2|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_54])).
% 0.20/0.38  cnf(c_0_62, negated_conjecture, (k7_relat_1(o_0_0_xboole_0,esk4_0)!=o_0_0_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_55, c_0_42]), c_0_42])).
% 0.20/0.38  cnf(c_0_63, plain, (k7_relat_1(o_0_0_xboole_0,X1)=o_0_0_xboole_0|r2_hidden(esk3_1(o_0_0_xboole_0),o_0_0_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56, c_0_57]), c_0_58])])).
% 0.20/0.38  cnf(c_0_64, plain, (k2_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),X2)!=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_59, c_0_60]), c_0_22]), c_0_35]), c_0_36]), c_0_37]), c_0_38]), c_0_39])).
% 0.20/0.38  cnf(c_0_65, plain, (k2_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),X2)=X2|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_61, c_0_60]), c_0_22]), c_0_35]), c_0_36]), c_0_37]), c_0_38]), c_0_39])).
% 0.20/0.38  cnf(c_0_66, negated_conjecture, (r2_hidden(esk3_1(o_0_0_xboole_0),o_0_0_xboole_0)), inference(spm,[status(thm)],[c_0_62, c_0_63])).
% 0.20/0.38  cnf(c_0_67, plain, (k2_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),X2)!=o_0_0_xboole_0), inference(rw,[status(thm)],[c_0_64, c_0_42])).
% 0.20/0.38  cnf(c_0_68, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_65, c_0_66]), c_0_67]), ['proof']).
% 0.20/0.38  # SZS output end CNFRefutation
% 0.20/0.38  # Proof object total steps             : 69
% 0.20/0.38  # Proof object clause steps            : 34
% 0.20/0.38  # Proof object formula steps           : 35
% 0.20/0.38  # Proof object conjectures             : 7
% 0.20/0.38  # Proof object clause conjectures      : 4
% 0.20/0.38  # Proof object formula conjectures     : 3
% 0.20/0.38  # Proof object initial clauses used    : 18
% 0.20/0.38  # Proof object initial formulas used   : 18
% 0.20/0.38  # Proof object generating inferences   : 5
% 0.20/0.38  # Proof object simplifying inferences  : 46
% 0.20/0.38  # Training examples: 0 positive, 0 negative
% 0.20/0.38  # Parsed axioms                        : 18
% 0.20/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.38  # Initial clauses                      : 23
% 0.20/0.38  # Removed in clause preprocessing      : 9
% 0.20/0.38  # Initial clauses in saturation        : 14
% 0.20/0.38  # Processed clauses                    : 32
% 0.20/0.38  # ...of these trivial                  : 0
% 0.20/0.38  # ...subsumed                          : 0
% 0.20/0.38  # ...remaining for further processing  : 32
% 0.20/0.38  # Other redundant clauses eliminated   : 0
% 0.20/0.38  # Clauses deleted for lack of memory   : 0
% 0.20/0.38  # Backward-subsumed                    : 0
% 0.20/0.38  # Backward-rewritten                   : 1
% 0.20/0.38  # Generated clauses                    : 8
% 0.20/0.38  # ...of the previous two non-trivial   : 5
% 0.20/0.38  # Contextual simplify-reflections      : 0
% 0.20/0.38  # Paramodulations                      : 8
% 0.20/0.38  # Factorizations                       : 0
% 0.20/0.38  # Equation resolutions                 : 0
% 0.20/0.38  # Propositional unsat checks           : 0
% 0.20/0.38  #    Propositional check models        : 0
% 0.20/0.38  #    Propositional check unsatisfiable : 0
% 0.20/0.38  #    Propositional clauses             : 0
% 0.20/0.38  #    Propositional clauses after purity: 0
% 0.20/0.38  #    Propositional unsat core size     : 0
% 0.20/0.38  #    Propositional preprocessing time  : 0.000
% 0.20/0.38  #    Propositional encoding time       : 0.000
% 0.20/0.38  #    Propositional solver time         : 0.000
% 0.20/0.38  #    Success case prop preproc time    : 0.000
% 0.20/0.38  #    Success case prop encoding time   : 0.000
% 0.20/0.38  #    Success case prop solver time     : 0.000
% 0.20/0.38  # Current number of processed clauses  : 17
% 0.20/0.38  #    Positive orientable unit clauses  : 6
% 0.20/0.38  #    Positive unorientable unit clauses: 0
% 0.20/0.38  #    Negative unit clauses             : 2
% 0.20/0.38  #    Non-unit-clauses                  : 9
% 0.20/0.38  # Current number of unprocessed clauses: 1
% 0.20/0.38  # ...number of literals in the above   : 3
% 0.20/0.38  # Current number of archived formulas  : 0
% 0.20/0.38  # Current number of archived clauses   : 24
% 0.20/0.38  # Clause-clause subsumption calls (NU) : 14
% 0.20/0.38  # Rec. Clause-clause subsumption calls : 12
% 0.20/0.38  # Non-unit clause-clause subsumptions  : 0
% 0.20/0.38  # Unit Clause-clause subsumption calls : 0
% 0.20/0.38  # Rewrite failures with RHS unbound    : 0
% 0.20/0.38  # BW rewrite match attempts            : 1
% 0.20/0.38  # BW rewrite match successes           : 1
% 0.20/0.38  # Condensation attempts                : 0
% 0.20/0.38  # Condensation successes               : 0
% 0.20/0.38  # Termbank termtop insertions          : 1328
% 0.20/0.38  
% 0.20/0.38  # -------------------------------------------------
% 0.20/0.38  # User time                : 0.028 s
% 0.20/0.38  # System time              : 0.003 s
% 0.20/0.38  # Total time               : 0.032 s
% 0.20/0.38  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
