%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:50:54 EST 2020

% Result     : Theorem 1.82s
% Output     : CNFRefutation 1.82s
% Verified   : 
% Statistics : Number of formulae       :   72 ( 175 expanded)
%              Number of clauses        :   41 (  81 expanded)
%              Number of leaves         :   15 (  44 expanded)
%              Depth                    :   11
%              Number of atoms          :  185 ( 401 expanded)
%              Number of equality atoms :   29 ( 118 expanded)
%              Maximal formula depth    :   17 (   4 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t154_relat_1,conjecture,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => r1_tarski(k9_relat_1(X3,k3_xboole_0(X1,X2)),k3_xboole_0(k9_relat_1(X3,X1),k9_relat_1(X3,X2))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t154_relat_1)).

fof(t12_setfam_1,axiom,(
    ! [X1,X2] : k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_setfam_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t19_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X1,X3) )
     => r1_tarski(X1,k3_xboole_0(X2,X3)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t19_xboole_1)).

fof(t100_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => k7_relat_1(k7_relat_1(X3,X1),X2) = k7_relat_1(X3,k3_xboole_0(X1,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_relat_1)).

fof(cc2_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X1))
         => v1_relat_1(X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_relat_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).

fof(t148_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => k2_relat_1(k7_relat_1(X2,X1)) = k9_relat_1(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t148_relat_1)).

fof(t25_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => ( r1_tarski(X1,X2)
           => ( r1_tarski(k1_relat_1(X1),k1_relat_1(X2))
              & r1_tarski(k2_relat_1(X1),k2_relat_1(X2)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t25_relat_1)).

fof(dt_k7_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X1)
     => v1_relat_1(k7_relat_1(X1,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k7_relat_1)).

fof(d4_xboole_0,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k3_xboole_0(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( r2_hidden(X4,X1)
            & r2_hidden(X4,X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_xboole_0)).

fof(t99_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => r1_tarski(k2_relat_1(k7_relat_1(X2,X1)),k2_relat_1(X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t99_relat_1)).

fof(t106_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ! [X4] :
          ( v1_relat_1(X4)
         => ( ( r1_tarski(X3,X4)
              & r1_tarski(X1,X2) )
           => r1_tarski(k7_relat_1(X3,X1),k7_relat_1(X4,X2)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t106_relat_1)).

fof(t17_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k3_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t17_xboole_1)).

fof(t88_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => r1_tarski(k7_relat_1(X2,X1),X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t88_relat_1)).

fof(c_0_15,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( v1_relat_1(X3)
       => r1_tarski(k9_relat_1(X3,k3_xboole_0(X1,X2)),k3_xboole_0(k9_relat_1(X3,X1),k9_relat_1(X3,X2))) ) ),
    inference(assume_negation,[status(cth)],[t154_relat_1])).

fof(c_0_16,plain,(
    ! [X21,X22] : k1_setfam_1(k2_tarski(X21,X22)) = k3_xboole_0(X21,X22) ),
    inference(variable_rename,[status(thm)],[t12_setfam_1])).

fof(c_0_17,plain,(
    ! [X19,X20] : k1_enumset1(X19,X19,X20) = k2_tarski(X19,X20) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_18,negated_conjecture,
    ( v1_relat_1(esk4_0)
    & ~ r1_tarski(k9_relat_1(esk4_0,k3_xboole_0(esk2_0,esk3_0)),k3_xboole_0(k9_relat_1(esk4_0,esk2_0),k9_relat_1(esk4_0,esk3_0))) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_15])])])).

cnf(c_0_19,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_20,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

fof(c_0_21,plain,(
    ! [X16,X17,X18] :
      ( ~ r1_tarski(X16,X17)
      | ~ r1_tarski(X16,X18)
      | r1_tarski(X16,k3_xboole_0(X17,X18)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t19_xboole_1])])).

fof(c_0_22,plain,(
    ! [X29,X30,X31] :
      ( ~ v1_relat_1(X31)
      | k7_relat_1(k7_relat_1(X31,X29),X30) = k7_relat_1(X31,k3_xboole_0(X29,X30)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t100_relat_1])])).

fof(c_0_23,plain,(
    ! [X25,X26] :
      ( ~ v1_relat_1(X25)
      | ~ m1_subset_1(X26,k1_zfmisc_1(X25))
      | v1_relat_1(X26) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).

fof(c_0_24,plain,(
    ! [X23,X24] :
      ( ( ~ m1_subset_1(X23,k1_zfmisc_1(X24))
        | r1_tarski(X23,X24) )
      & ( ~ r1_tarski(X23,X24)
        | m1_subset_1(X23,k1_zfmisc_1(X24)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

cnf(c_0_25,negated_conjecture,
    ( ~ r1_tarski(k9_relat_1(esk4_0,k3_xboole_0(esk2_0,esk3_0)),k3_xboole_0(k9_relat_1(esk4_0,esk2_0),k9_relat_1(esk4_0,esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_26,plain,
    ( k1_setfam_1(k1_enumset1(X1,X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_19,c_0_20])).

cnf(c_0_27,plain,
    ( r1_tarski(X1,k3_xboole_0(X2,X3))
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X1,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

fof(c_0_28,plain,(
    ! [X36,X37] :
      ( ~ v1_relat_1(X37)
      | k2_relat_1(k7_relat_1(X37,X36)) = k9_relat_1(X37,X36) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_relat_1])])).

cnf(c_0_29,plain,
    ( k7_relat_1(k7_relat_1(X1,X2),X3) = k7_relat_1(X1,k3_xboole_0(X2,X3))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_30,plain,(
    ! [X38,X39] :
      ( ( r1_tarski(k1_relat_1(X38),k1_relat_1(X39))
        | ~ r1_tarski(X38,X39)
        | ~ v1_relat_1(X39)
        | ~ v1_relat_1(X38) )
      & ( r1_tarski(k2_relat_1(X38),k2_relat_1(X39))
        | ~ r1_tarski(X38,X39)
        | ~ v1_relat_1(X39)
        | ~ v1_relat_1(X38) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t25_relat_1])])])])).

cnf(c_0_31,plain,
    ( v1_relat_1(X2)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_32,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_33,negated_conjecture,
    ( ~ r1_tarski(k9_relat_1(esk4_0,k1_setfam_1(k1_enumset1(esk2_0,esk2_0,esk3_0))),k1_setfam_1(k1_enumset1(k9_relat_1(esk4_0,esk2_0),k9_relat_1(esk4_0,esk2_0),k9_relat_1(esk4_0,esk3_0)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_25,c_0_26]),c_0_26])).

cnf(c_0_34,plain,
    ( r1_tarski(X1,k1_setfam_1(k1_enumset1(X2,X2,X3)))
    | ~ r1_tarski(X1,X3)
    | ~ r1_tarski(X1,X2) ),
    inference(rw,[status(thm)],[c_0_27,c_0_26])).

cnf(c_0_35,plain,
    ( k2_relat_1(k7_relat_1(X1,X2)) = k9_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_36,plain,
    ( k7_relat_1(k7_relat_1(X1,X2),X3) = k7_relat_1(X1,k1_setfam_1(k1_enumset1(X2,X2,X3)))
    | ~ v1_relat_1(X1) ),
    inference(rw,[status(thm)],[c_0_29,c_0_26])).

cnf(c_0_37,plain,
    ( r1_tarski(k2_relat_1(X1),k2_relat_1(X2))
    | ~ r1_tarski(X1,X2)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_38,plain,
    ( v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_31,c_0_32])).

fof(c_0_39,plain,(
    ! [X27,X28] :
      ( ~ v1_relat_1(X27)
      | v1_relat_1(k7_relat_1(X27,X28)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k7_relat_1])])).

fof(c_0_40,plain,(
    ! [X5,X6,X7,X8,X9,X10,X11,X12] :
      ( ( r2_hidden(X8,X5)
        | ~ r2_hidden(X8,X7)
        | X7 != k3_xboole_0(X5,X6) )
      & ( r2_hidden(X8,X6)
        | ~ r2_hidden(X8,X7)
        | X7 != k3_xboole_0(X5,X6) )
      & ( ~ r2_hidden(X9,X5)
        | ~ r2_hidden(X9,X6)
        | r2_hidden(X9,X7)
        | X7 != k3_xboole_0(X5,X6) )
      & ( ~ r2_hidden(esk1_3(X10,X11,X12),X12)
        | ~ r2_hidden(esk1_3(X10,X11,X12),X10)
        | ~ r2_hidden(esk1_3(X10,X11,X12),X11)
        | X12 = k3_xboole_0(X10,X11) )
      & ( r2_hidden(esk1_3(X10,X11,X12),X10)
        | r2_hidden(esk1_3(X10,X11,X12),X12)
        | X12 = k3_xboole_0(X10,X11) )
      & ( r2_hidden(esk1_3(X10,X11,X12),X11)
        | r2_hidden(esk1_3(X10,X11,X12),X12)
        | X12 = k3_xboole_0(X10,X11) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_xboole_0])])])])])])).

cnf(c_0_41,negated_conjecture,
    ( ~ r1_tarski(k9_relat_1(esk4_0,k1_setfam_1(k1_enumset1(esk2_0,esk2_0,esk3_0))),k9_relat_1(esk4_0,esk3_0))
    | ~ r1_tarski(k9_relat_1(esk4_0,k1_setfam_1(k1_enumset1(esk2_0,esk2_0,esk3_0))),k9_relat_1(esk4_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_33,c_0_34])).

cnf(c_0_42,plain,
    ( k9_relat_1(X1,k1_setfam_1(k1_enumset1(X2,X2,X3))) = k2_relat_1(k7_relat_1(k7_relat_1(X1,X2),X3))
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_43,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_44,plain,
    ( r1_tarski(k2_relat_1(X1),k2_relat_1(X2))
    | ~ v1_relat_1(X2)
    | ~ r1_tarski(X1,X2) ),
    inference(csr,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_45,plain,
    ( v1_relat_1(k7_relat_1(X1,X2))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

fof(c_0_46,plain,(
    ! [X42,X43] :
      ( ~ v1_relat_1(X43)
      | r1_tarski(k2_relat_1(k7_relat_1(X43,X42)),k2_relat_1(X43)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t99_relat_1])])).

cnf(c_0_47,plain,
    ( r2_hidden(esk1_3(X1,X2,X3),X2)
    | r2_hidden(esk1_3(X1,X2,X3),X3)
    | X3 = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

cnf(c_0_48,negated_conjecture,
    ( ~ r1_tarski(k2_relat_1(k7_relat_1(k7_relat_1(esk4_0,esk2_0),esk3_0)),k9_relat_1(esk4_0,esk3_0))
    | ~ r1_tarski(k2_relat_1(k7_relat_1(k7_relat_1(esk4_0,esk2_0),esk3_0)),k9_relat_1(esk4_0,esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_42]),c_0_43])])).

cnf(c_0_49,plain,
    ( r1_tarski(k2_relat_1(X1),k9_relat_1(X2,X3))
    | ~ v1_relat_1(X2)
    | ~ r1_tarski(X1,k7_relat_1(X2,X3)) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_35]),c_0_45])).

cnf(c_0_50,plain,
    ( r1_tarski(k2_relat_1(k7_relat_1(X1,X2)),k2_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_46])).

fof(c_0_51,plain,(
    ! [X32,X33,X34,X35] :
      ( ~ v1_relat_1(X34)
      | ~ v1_relat_1(X35)
      | ~ r1_tarski(X34,X35)
      | ~ r1_tarski(X32,X33)
      | r1_tarski(k7_relat_1(X34,X32),k7_relat_1(X35,X33)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t106_relat_1])])])).

cnf(c_0_52,plain,
    ( X3 = k3_xboole_0(X1,X2)
    | ~ r2_hidden(esk1_3(X1,X2,X3),X3)
    | ~ r2_hidden(esk1_3(X1,X2,X3),X1)
    | ~ r2_hidden(esk1_3(X1,X2,X3),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

cnf(c_0_53,plain,
    ( X3 = k1_setfam_1(k1_enumset1(X1,X1,X2))
    | r2_hidden(esk1_3(X1,X2,X3),X3)
    | r2_hidden(esk1_3(X1,X2,X3),X2) ),
    inference(rw,[status(thm)],[c_0_47,c_0_26])).

cnf(c_0_54,negated_conjecture,
    ( ~ r1_tarski(k2_relat_1(k7_relat_1(k7_relat_1(esk4_0,esk2_0),esk3_0)),k9_relat_1(esk4_0,esk2_0))
    | ~ r1_tarski(k7_relat_1(k7_relat_1(esk4_0,esk2_0),esk3_0),k7_relat_1(esk4_0,esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_49]),c_0_43])])).

cnf(c_0_55,plain,
    ( r1_tarski(k2_relat_1(k7_relat_1(k7_relat_1(X1,X2),X3)),k9_relat_1(X1,X2))
    | ~ v1_relat_1(X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_35]),c_0_45])).

cnf(c_0_56,plain,
    ( r1_tarski(k7_relat_1(X1,X3),k7_relat_1(X2,X4))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

fof(c_0_57,plain,(
    ! [X14,X15] : r1_tarski(k3_xboole_0(X14,X15),X14) ),
    inference(variable_rename,[status(thm)],[t17_xboole_1])).

cnf(c_0_58,plain,
    ( X3 = k1_setfam_1(k1_enumset1(X1,X1,X2))
    | ~ r2_hidden(esk1_3(X1,X2,X3),X3)
    | ~ r2_hidden(esk1_3(X1,X2,X3),X2)
    | ~ r2_hidden(esk1_3(X1,X2,X3),X1) ),
    inference(rw,[status(thm)],[c_0_52,c_0_26])).

cnf(c_0_59,plain,
    ( k1_setfam_1(k1_enumset1(X1,X1,X2)) = X2
    | r2_hidden(esk1_3(X1,X2,X2),X2) ),
    inference(ef,[status(thm)],[c_0_53])).

cnf(c_0_60,negated_conjecture,
    ( ~ r1_tarski(k7_relat_1(k7_relat_1(esk4_0,esk2_0),esk3_0),k7_relat_1(esk4_0,esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54,c_0_55]),c_0_43])])).

cnf(c_0_61,plain,
    ( r1_tarski(k7_relat_1(X1,X2),k7_relat_1(X3,X4))
    | ~ v1_relat_1(X3)
    | ~ r1_tarski(X2,X4)
    | ~ r1_tarski(X1,X3) ),
    inference(csr,[status(thm)],[c_0_56,c_0_38])).

fof(c_0_62,plain,(
    ! [X40,X41] :
      ( ~ v1_relat_1(X41)
      | r1_tarski(k7_relat_1(X41,X40),X41) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t88_relat_1])])).

cnf(c_0_63,plain,
    ( r1_tarski(k3_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_57])).

cnf(c_0_64,plain,
    ( k1_setfam_1(k1_enumset1(X1,X1,X2)) = X2
    | ~ r2_hidden(esk1_3(X1,X2,X2),X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_59]),c_0_59])).

cnf(c_0_65,negated_conjecture,
    ( ~ r1_tarski(k7_relat_1(esk4_0,esk2_0),esk4_0)
    | ~ r1_tarski(esk3_0,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60,c_0_61]),c_0_43])])).

cnf(c_0_66,plain,
    ( r1_tarski(k7_relat_1(X1,X2),X1)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_62])).

cnf(c_0_67,plain,
    ( r1_tarski(k1_setfam_1(k1_enumset1(X1,X1,X2)),X1) ),
    inference(rw,[status(thm)],[c_0_63,c_0_26])).

cnf(c_0_68,plain,
    ( k1_setfam_1(k1_enumset1(X1,X1,X1)) = X1 ),
    inference(spm,[status(thm)],[c_0_64,c_0_59])).

cnf(c_0_69,negated_conjecture,
    ( ~ r1_tarski(esk3_0,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65,c_0_66]),c_0_43])])).

cnf(c_0_70,plain,
    ( r1_tarski(X1,X1) ),
    inference(spm,[status(thm)],[c_0_67,c_0_68])).

cnf(c_0_71,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_69,c_0_70])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n010.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 09:44:29 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 1.82/2.04  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 1.82/2.04  # and selection function SelectComplexExceptUniqMaxHorn.
% 1.82/2.04  #
% 1.82/2.04  # Preprocessing time       : 0.028 s
% 1.82/2.04  # Presaturation interreduction done
% 1.82/2.04  
% 1.82/2.04  # Proof found!
% 1.82/2.04  # SZS status Theorem
% 1.82/2.04  # SZS output start CNFRefutation
% 1.82/2.04  fof(t154_relat_1, conjecture, ![X1, X2, X3]:(v1_relat_1(X3)=>r1_tarski(k9_relat_1(X3,k3_xboole_0(X1,X2)),k3_xboole_0(k9_relat_1(X3,X1),k9_relat_1(X3,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t154_relat_1)).
% 1.82/2.04  fof(t12_setfam_1, axiom, ![X1, X2]:k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t12_setfam_1)).
% 1.82/2.04  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 1.82/2.04  fof(t19_xboole_1, axiom, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_tarski(X1,X3))=>r1_tarski(X1,k3_xboole_0(X2,X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t19_xboole_1)).
% 1.82/2.04  fof(t100_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>k7_relat_1(k7_relat_1(X3,X1),X2)=k7_relat_1(X3,k3_xboole_0(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t100_relat_1)).
% 1.82/2.04  fof(cc2_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>v1_relat_1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relat_1)).
% 1.82/2.04  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_subset)).
% 1.82/2.04  fof(t148_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>k2_relat_1(k7_relat_1(X2,X1))=k9_relat_1(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t148_relat_1)).
% 1.82/2.04  fof(t25_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>(r1_tarski(X1,X2)=>(r1_tarski(k1_relat_1(X1),k1_relat_1(X2))&r1_tarski(k2_relat_1(X1),k2_relat_1(X2)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t25_relat_1)).
% 1.82/2.04  fof(dt_k7_relat_1, axiom, ![X1, X2]:(v1_relat_1(X1)=>v1_relat_1(k7_relat_1(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k7_relat_1)).
% 1.82/2.04  fof(d4_xboole_0, axiom, ![X1, X2, X3]:(X3=k3_xboole_0(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>(r2_hidden(X4,X1)&r2_hidden(X4,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_xboole_0)).
% 1.82/2.04  fof(t99_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>r1_tarski(k2_relat_1(k7_relat_1(X2,X1)),k2_relat_1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t99_relat_1)).
% 1.82/2.04  fof(t106_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>![X4]:(v1_relat_1(X4)=>((r1_tarski(X3,X4)&r1_tarski(X1,X2))=>r1_tarski(k7_relat_1(X3,X1),k7_relat_1(X4,X2))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t106_relat_1)).
% 1.82/2.04  fof(t17_xboole_1, axiom, ![X1, X2]:r1_tarski(k3_xboole_0(X1,X2),X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t17_xboole_1)).
% 1.82/2.04  fof(t88_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>r1_tarski(k7_relat_1(X2,X1),X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t88_relat_1)).
% 1.82/2.04  fof(c_0_15, negated_conjecture, ~(![X1, X2, X3]:(v1_relat_1(X3)=>r1_tarski(k9_relat_1(X3,k3_xboole_0(X1,X2)),k3_xboole_0(k9_relat_1(X3,X1),k9_relat_1(X3,X2))))), inference(assume_negation,[status(cth)],[t154_relat_1])).
% 1.82/2.04  fof(c_0_16, plain, ![X21, X22]:k1_setfam_1(k2_tarski(X21,X22))=k3_xboole_0(X21,X22), inference(variable_rename,[status(thm)],[t12_setfam_1])).
% 1.82/2.04  fof(c_0_17, plain, ![X19, X20]:k1_enumset1(X19,X19,X20)=k2_tarski(X19,X20), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 1.82/2.04  fof(c_0_18, negated_conjecture, (v1_relat_1(esk4_0)&~r1_tarski(k9_relat_1(esk4_0,k3_xboole_0(esk2_0,esk3_0)),k3_xboole_0(k9_relat_1(esk4_0,esk2_0),k9_relat_1(esk4_0,esk3_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_15])])])).
% 1.82/2.04  cnf(c_0_19, plain, (k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 1.82/2.04  cnf(c_0_20, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 1.82/2.04  fof(c_0_21, plain, ![X16, X17, X18]:(~r1_tarski(X16,X17)|~r1_tarski(X16,X18)|r1_tarski(X16,k3_xboole_0(X17,X18))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t19_xboole_1])])).
% 1.82/2.04  fof(c_0_22, plain, ![X29, X30, X31]:(~v1_relat_1(X31)|k7_relat_1(k7_relat_1(X31,X29),X30)=k7_relat_1(X31,k3_xboole_0(X29,X30))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t100_relat_1])])).
% 1.82/2.04  fof(c_0_23, plain, ![X25, X26]:(~v1_relat_1(X25)|(~m1_subset_1(X26,k1_zfmisc_1(X25))|v1_relat_1(X26))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).
% 1.82/2.04  fof(c_0_24, plain, ![X23, X24]:((~m1_subset_1(X23,k1_zfmisc_1(X24))|r1_tarski(X23,X24))&(~r1_tarski(X23,X24)|m1_subset_1(X23,k1_zfmisc_1(X24)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 1.82/2.04  cnf(c_0_25, negated_conjecture, (~r1_tarski(k9_relat_1(esk4_0,k3_xboole_0(esk2_0,esk3_0)),k3_xboole_0(k9_relat_1(esk4_0,esk2_0),k9_relat_1(esk4_0,esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_18])).
% 1.82/2.04  cnf(c_0_26, plain, (k1_setfam_1(k1_enumset1(X1,X1,X2))=k3_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_19, c_0_20])).
% 1.82/2.04  cnf(c_0_27, plain, (r1_tarski(X1,k3_xboole_0(X2,X3))|~r1_tarski(X1,X2)|~r1_tarski(X1,X3)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 1.82/2.04  fof(c_0_28, plain, ![X36, X37]:(~v1_relat_1(X37)|k2_relat_1(k7_relat_1(X37,X36))=k9_relat_1(X37,X36)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_relat_1])])).
% 1.82/2.04  cnf(c_0_29, plain, (k7_relat_1(k7_relat_1(X1,X2),X3)=k7_relat_1(X1,k3_xboole_0(X2,X3))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 1.82/2.04  fof(c_0_30, plain, ![X38, X39]:((r1_tarski(k1_relat_1(X38),k1_relat_1(X39))|~r1_tarski(X38,X39)|~v1_relat_1(X39)|~v1_relat_1(X38))&(r1_tarski(k2_relat_1(X38),k2_relat_1(X39))|~r1_tarski(X38,X39)|~v1_relat_1(X39)|~v1_relat_1(X38))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t25_relat_1])])])])).
% 1.82/2.04  cnf(c_0_31, plain, (v1_relat_1(X2)|~v1_relat_1(X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_23])).
% 1.82/2.04  cnf(c_0_32, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 1.82/2.04  cnf(c_0_33, negated_conjecture, (~r1_tarski(k9_relat_1(esk4_0,k1_setfam_1(k1_enumset1(esk2_0,esk2_0,esk3_0))),k1_setfam_1(k1_enumset1(k9_relat_1(esk4_0,esk2_0),k9_relat_1(esk4_0,esk2_0),k9_relat_1(esk4_0,esk3_0))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_25, c_0_26]), c_0_26])).
% 1.82/2.04  cnf(c_0_34, plain, (r1_tarski(X1,k1_setfam_1(k1_enumset1(X2,X2,X3)))|~r1_tarski(X1,X3)|~r1_tarski(X1,X2)), inference(rw,[status(thm)],[c_0_27, c_0_26])).
% 1.82/2.04  cnf(c_0_35, plain, (k2_relat_1(k7_relat_1(X1,X2))=k9_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 1.82/2.04  cnf(c_0_36, plain, (k7_relat_1(k7_relat_1(X1,X2),X3)=k7_relat_1(X1,k1_setfam_1(k1_enumset1(X2,X2,X3)))|~v1_relat_1(X1)), inference(rw,[status(thm)],[c_0_29, c_0_26])).
% 1.82/2.04  cnf(c_0_37, plain, (r1_tarski(k2_relat_1(X1),k2_relat_1(X2))|~r1_tarski(X1,X2)|~v1_relat_1(X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 1.82/2.04  cnf(c_0_38, plain, (v1_relat_1(X1)|~v1_relat_1(X2)|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_31, c_0_32])).
% 1.82/2.04  fof(c_0_39, plain, ![X27, X28]:(~v1_relat_1(X27)|v1_relat_1(k7_relat_1(X27,X28))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k7_relat_1])])).
% 1.82/2.04  fof(c_0_40, plain, ![X5, X6, X7, X8, X9, X10, X11, X12]:((((r2_hidden(X8,X5)|~r2_hidden(X8,X7)|X7!=k3_xboole_0(X5,X6))&(r2_hidden(X8,X6)|~r2_hidden(X8,X7)|X7!=k3_xboole_0(X5,X6)))&(~r2_hidden(X9,X5)|~r2_hidden(X9,X6)|r2_hidden(X9,X7)|X7!=k3_xboole_0(X5,X6)))&((~r2_hidden(esk1_3(X10,X11,X12),X12)|(~r2_hidden(esk1_3(X10,X11,X12),X10)|~r2_hidden(esk1_3(X10,X11,X12),X11))|X12=k3_xboole_0(X10,X11))&((r2_hidden(esk1_3(X10,X11,X12),X10)|r2_hidden(esk1_3(X10,X11,X12),X12)|X12=k3_xboole_0(X10,X11))&(r2_hidden(esk1_3(X10,X11,X12),X11)|r2_hidden(esk1_3(X10,X11,X12),X12)|X12=k3_xboole_0(X10,X11))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d4_xboole_0])])])])])])).
% 1.82/2.04  cnf(c_0_41, negated_conjecture, (~r1_tarski(k9_relat_1(esk4_0,k1_setfam_1(k1_enumset1(esk2_0,esk2_0,esk3_0))),k9_relat_1(esk4_0,esk3_0))|~r1_tarski(k9_relat_1(esk4_0,k1_setfam_1(k1_enumset1(esk2_0,esk2_0,esk3_0))),k9_relat_1(esk4_0,esk2_0))), inference(spm,[status(thm)],[c_0_33, c_0_34])).
% 1.82/2.04  cnf(c_0_42, plain, (k9_relat_1(X1,k1_setfam_1(k1_enumset1(X2,X2,X3)))=k2_relat_1(k7_relat_1(k7_relat_1(X1,X2),X3))|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 1.82/2.04  cnf(c_0_43, negated_conjecture, (v1_relat_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 1.82/2.04  cnf(c_0_44, plain, (r1_tarski(k2_relat_1(X1),k2_relat_1(X2))|~v1_relat_1(X2)|~r1_tarski(X1,X2)), inference(csr,[status(thm)],[c_0_37, c_0_38])).
% 1.82/2.04  cnf(c_0_45, plain, (v1_relat_1(k7_relat_1(X1,X2))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 1.82/2.04  fof(c_0_46, plain, ![X42, X43]:(~v1_relat_1(X43)|r1_tarski(k2_relat_1(k7_relat_1(X43,X42)),k2_relat_1(X43))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t99_relat_1])])).
% 1.82/2.04  cnf(c_0_47, plain, (r2_hidden(esk1_3(X1,X2,X3),X2)|r2_hidden(esk1_3(X1,X2,X3),X3)|X3=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_40])).
% 1.82/2.04  cnf(c_0_48, negated_conjecture, (~r1_tarski(k2_relat_1(k7_relat_1(k7_relat_1(esk4_0,esk2_0),esk3_0)),k9_relat_1(esk4_0,esk3_0))|~r1_tarski(k2_relat_1(k7_relat_1(k7_relat_1(esk4_0,esk2_0),esk3_0)),k9_relat_1(esk4_0,esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_42]), c_0_43])])).
% 1.82/2.04  cnf(c_0_49, plain, (r1_tarski(k2_relat_1(X1),k9_relat_1(X2,X3))|~v1_relat_1(X2)|~r1_tarski(X1,k7_relat_1(X2,X3))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_35]), c_0_45])).
% 1.82/2.04  cnf(c_0_50, plain, (r1_tarski(k2_relat_1(k7_relat_1(X1,X2)),k2_relat_1(X1))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_46])).
% 1.82/2.04  fof(c_0_51, plain, ![X32, X33, X34, X35]:(~v1_relat_1(X34)|(~v1_relat_1(X35)|(~r1_tarski(X34,X35)|~r1_tarski(X32,X33)|r1_tarski(k7_relat_1(X34,X32),k7_relat_1(X35,X33))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t106_relat_1])])])).
% 1.82/2.04  cnf(c_0_52, plain, (X3=k3_xboole_0(X1,X2)|~r2_hidden(esk1_3(X1,X2,X3),X3)|~r2_hidden(esk1_3(X1,X2,X3),X1)|~r2_hidden(esk1_3(X1,X2,X3),X2)), inference(split_conjunct,[status(thm)],[c_0_40])).
% 1.82/2.04  cnf(c_0_53, plain, (X3=k1_setfam_1(k1_enumset1(X1,X1,X2))|r2_hidden(esk1_3(X1,X2,X3),X3)|r2_hidden(esk1_3(X1,X2,X3),X2)), inference(rw,[status(thm)],[c_0_47, c_0_26])).
% 1.82/2.04  cnf(c_0_54, negated_conjecture, (~r1_tarski(k2_relat_1(k7_relat_1(k7_relat_1(esk4_0,esk2_0),esk3_0)),k9_relat_1(esk4_0,esk2_0))|~r1_tarski(k7_relat_1(k7_relat_1(esk4_0,esk2_0),esk3_0),k7_relat_1(esk4_0,esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_49]), c_0_43])])).
% 1.82/2.04  cnf(c_0_55, plain, (r1_tarski(k2_relat_1(k7_relat_1(k7_relat_1(X1,X2),X3)),k9_relat_1(X1,X2))|~v1_relat_1(X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_35]), c_0_45])).
% 1.82/2.04  cnf(c_0_56, plain, (r1_tarski(k7_relat_1(X1,X3),k7_relat_1(X2,X4))|~v1_relat_1(X1)|~v1_relat_1(X2)|~r1_tarski(X1,X2)|~r1_tarski(X3,X4)), inference(split_conjunct,[status(thm)],[c_0_51])).
% 1.82/2.04  fof(c_0_57, plain, ![X14, X15]:r1_tarski(k3_xboole_0(X14,X15),X14), inference(variable_rename,[status(thm)],[t17_xboole_1])).
% 1.82/2.04  cnf(c_0_58, plain, (X3=k1_setfam_1(k1_enumset1(X1,X1,X2))|~r2_hidden(esk1_3(X1,X2,X3),X3)|~r2_hidden(esk1_3(X1,X2,X3),X2)|~r2_hidden(esk1_3(X1,X2,X3),X1)), inference(rw,[status(thm)],[c_0_52, c_0_26])).
% 1.82/2.04  cnf(c_0_59, plain, (k1_setfam_1(k1_enumset1(X1,X1,X2))=X2|r2_hidden(esk1_3(X1,X2,X2),X2)), inference(ef,[status(thm)],[c_0_53])).
% 1.82/2.04  cnf(c_0_60, negated_conjecture, (~r1_tarski(k7_relat_1(k7_relat_1(esk4_0,esk2_0),esk3_0),k7_relat_1(esk4_0,esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54, c_0_55]), c_0_43])])).
% 1.82/2.04  cnf(c_0_61, plain, (r1_tarski(k7_relat_1(X1,X2),k7_relat_1(X3,X4))|~v1_relat_1(X3)|~r1_tarski(X2,X4)|~r1_tarski(X1,X3)), inference(csr,[status(thm)],[c_0_56, c_0_38])).
% 1.82/2.04  fof(c_0_62, plain, ![X40, X41]:(~v1_relat_1(X41)|r1_tarski(k7_relat_1(X41,X40),X41)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t88_relat_1])])).
% 1.82/2.04  cnf(c_0_63, plain, (r1_tarski(k3_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_57])).
% 1.82/2.04  cnf(c_0_64, plain, (k1_setfam_1(k1_enumset1(X1,X1,X2))=X2|~r2_hidden(esk1_3(X1,X2,X2),X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_58, c_0_59]), c_0_59])).
% 1.82/2.04  cnf(c_0_65, negated_conjecture, (~r1_tarski(k7_relat_1(esk4_0,esk2_0),esk4_0)|~r1_tarski(esk3_0,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60, c_0_61]), c_0_43])])).
% 1.82/2.04  cnf(c_0_66, plain, (r1_tarski(k7_relat_1(X1,X2),X1)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_62])).
% 1.82/2.04  cnf(c_0_67, plain, (r1_tarski(k1_setfam_1(k1_enumset1(X1,X1,X2)),X1)), inference(rw,[status(thm)],[c_0_63, c_0_26])).
% 1.82/2.04  cnf(c_0_68, plain, (k1_setfam_1(k1_enumset1(X1,X1,X1))=X1), inference(spm,[status(thm)],[c_0_64, c_0_59])).
% 1.82/2.04  cnf(c_0_69, negated_conjecture, (~r1_tarski(esk3_0,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65, c_0_66]), c_0_43])])).
% 1.82/2.04  cnf(c_0_70, plain, (r1_tarski(X1,X1)), inference(spm,[status(thm)],[c_0_67, c_0_68])).
% 1.82/2.04  cnf(c_0_71, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_69, c_0_70])]), ['proof']).
% 1.82/2.04  # SZS output end CNFRefutation
% 1.82/2.04  # Proof object total steps             : 72
% 1.82/2.04  # Proof object clause steps            : 41
% 1.82/2.04  # Proof object formula steps           : 31
% 1.82/2.04  # Proof object conjectures             : 13
% 1.82/2.04  # Proof object clause conjectures      : 10
% 1.82/2.04  # Proof object formula conjectures     : 3
% 1.82/2.04  # Proof object initial clauses used    : 17
% 1.82/2.04  # Proof object initial formulas used   : 15
% 1.82/2.04  # Proof object generating inferences   : 14
% 1.82/2.04  # Proof object simplifying inferences  : 25
% 1.82/2.04  # Training examples: 0 positive, 0 negative
% 1.82/2.04  # Parsed axioms                        : 15
% 1.82/2.04  # Removed by relevancy pruning/SinE    : 0
% 1.82/2.04  # Initial clauses                      : 23
% 1.82/2.04  # Removed in clause preprocessing      : 2
% 1.82/2.04  # Initial clauses in saturation        : 21
% 1.82/2.04  # Processed clauses                    : 5602
% 1.82/2.04  # ...of these trivial                  : 12
% 1.82/2.04  # ...subsumed                          : 3670
% 1.82/2.04  # ...remaining for further processing  : 1920
% 1.82/2.04  # Other redundant clauses eliminated   : 3
% 1.82/2.04  # Clauses deleted for lack of memory   : 0
% 1.82/2.04  # Backward-subsumed                    : 235
% 1.82/2.04  # Backward-rewritten                   : 123
% 1.82/2.04  # Generated clauses                    : 99910
% 1.82/2.04  # ...of the previous two non-trivial   : 96787
% 1.82/2.04  # Contextual simplify-reflections      : 298
% 1.82/2.04  # Paramodulations                      : 99785
% 1.82/2.04  # Factorizations                       : 122
% 1.82/2.04  # Equation resolutions                 : 3
% 1.82/2.04  # Propositional unsat checks           : 0
% 1.82/2.04  #    Propositional check models        : 0
% 1.82/2.04  #    Propositional check unsatisfiable : 0
% 1.82/2.04  #    Propositional clauses             : 0
% 1.82/2.04  #    Propositional clauses after purity: 0
% 1.82/2.04  #    Propositional unsat core size     : 0
% 1.82/2.04  #    Propositional preprocessing time  : 0.000
% 1.82/2.04  #    Propositional encoding time       : 0.000
% 1.82/2.04  #    Propositional solver time         : 0.000
% 1.82/2.04  #    Success case prop preproc time    : 0.000
% 1.82/2.04  #    Success case prop encoding time   : 0.000
% 1.82/2.04  #    Success case prop solver time     : 0.000
% 1.82/2.04  # Current number of processed clauses  : 1538
% 1.82/2.04  #    Positive orientable unit clauses  : 12
% 1.82/2.04  #    Positive unorientable unit clauses: 0
% 1.82/2.04  #    Negative unit clauses             : 6
% 1.82/2.04  #    Non-unit-clauses                  : 1520
% 1.82/2.04  # Current number of unprocessed clauses: 89807
% 1.82/2.04  # ...number of literals in the above   : 546523
% 1.82/2.04  # Current number of archived formulas  : 0
% 1.82/2.04  # Current number of archived clauses   : 381
% 1.82/2.04  # Clause-clause subsumption calls (NU) : 542978
% 1.82/2.04  # Rec. Clause-clause subsumption calls : 112424
% 1.82/2.04  # Non-unit clause-clause subsumptions  : 2309
% 1.82/2.04  # Unit Clause-clause subsumption calls : 6178
% 1.82/2.04  # Rewrite failures with RHS unbound    : 0
% 1.82/2.04  # BW rewrite match attempts            : 421
% 1.82/2.04  # BW rewrite match successes           : 24
% 1.82/2.04  # Condensation attempts                : 0
% 1.82/2.04  # Condensation successes               : 0
% 1.82/2.04  # Termbank termtop insertions          : 2993530
% 1.82/2.05  
% 1.82/2.05  # -------------------------------------------------
% 1.82/2.05  # User time                : 1.655 s
% 1.82/2.05  # System time              : 0.049 s
% 1.82/2.05  # Total time               : 1.703 s
% 1.82/2.05  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
