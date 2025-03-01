%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:00:49 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   60 ( 219 expanded)
%              Number of clauses        :   35 ( 100 expanded)
%              Number of leaves         :   12 (  59 expanded)
%              Depth                    :   12
%              Number of atoms          :  167 ( 699 expanded)
%              Number of equality atoms :   42 ( 158 expanded)
%              Maximal formula depth    :   16 (   3 average)
%              Maximal clause size      :   33 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(d1_wellord2,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( X2 = k1_wellord2(X1)
      <=> ( k3_relat_1(X2) = X1
          & ! [X3,X4] :
              ( ( r2_hidden(X3,X1)
                & r2_hidden(X4,X1) )
             => ( r2_hidden(k4_tarski(X3,X4),X2)
              <=> r1_tarski(X3,X4) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_wellord2)).

fof(dt_k1_wellord2,axiom,(
    ! [X1] : v1_relat_1(k1_wellord2(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k1_wellord2)).

fof(t73_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( ! [X3] :
            ( r2_hidden(X3,X1)
           => r2_hidden(k4_tarski(X3,X3),X2) )
       => r1_tarski(k6_relat_1(X1),X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t73_relat_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(d6_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k3_relat_1(X1) = k2_xboole_0(k1_relat_1(X1),k2_relat_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d6_relat_1)).

fof(t7_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_1)).

fof(t25_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => ( r1_tarski(X1,X2)
           => ( r1_tarski(k1_relat_1(X1),k1_relat_1(X2))
              & r1_tarski(k2_relat_1(X1),k2_relat_1(X2)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t25_relat_1)).

fof(t71_relat_1,axiom,(
    ! [X1] :
      ( k1_relat_1(k6_relat_1(X1)) = X1
      & k2_relat_1(k6_relat_1(X1)) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_relat_1)).

fof(dt_k6_relat_1,axiom,(
    ! [X1] : v1_relat_1(k6_relat_1(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k6_relat_1)).

fof(t12_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k2_xboole_0(X1,X2) = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_xboole_1)).

fof(t33_wellord2,conjecture,(
    ! [X1] : r1_tarski(k1_wellord2(X1),k2_zfmisc_1(X1,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t33_wellord2)).

fof(t21_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => r1_tarski(X1,k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t21_relat_1)).

fof(c_0_12,plain,(
    ! [X20,X21,X22,X23] :
      ( ( k3_relat_1(X21) = X20
        | X21 != k1_wellord2(X20)
        | ~ v1_relat_1(X21) )
      & ( ~ r2_hidden(k4_tarski(X22,X23),X21)
        | r1_tarski(X22,X23)
        | ~ r2_hidden(X22,X20)
        | ~ r2_hidden(X23,X20)
        | X21 != k1_wellord2(X20)
        | ~ v1_relat_1(X21) )
      & ( ~ r1_tarski(X22,X23)
        | r2_hidden(k4_tarski(X22,X23),X21)
        | ~ r2_hidden(X22,X20)
        | ~ r2_hidden(X23,X20)
        | X21 != k1_wellord2(X20)
        | ~ v1_relat_1(X21) )
      & ( r2_hidden(esk2_2(X20,X21),X20)
        | k3_relat_1(X21) != X20
        | X21 = k1_wellord2(X20)
        | ~ v1_relat_1(X21) )
      & ( r2_hidden(esk3_2(X20,X21),X20)
        | k3_relat_1(X21) != X20
        | X21 = k1_wellord2(X20)
        | ~ v1_relat_1(X21) )
      & ( ~ r2_hidden(k4_tarski(esk2_2(X20,X21),esk3_2(X20,X21)),X21)
        | ~ r1_tarski(esk2_2(X20,X21),esk3_2(X20,X21))
        | k3_relat_1(X21) != X20
        | X21 = k1_wellord2(X20)
        | ~ v1_relat_1(X21) )
      & ( r2_hidden(k4_tarski(esk2_2(X20,X21),esk3_2(X20,X21)),X21)
        | r1_tarski(esk2_2(X20,X21),esk3_2(X20,X21))
        | k3_relat_1(X21) != X20
        | X21 = k1_wellord2(X20)
        | ~ v1_relat_1(X21) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_wellord2])])])])])).

fof(c_0_13,plain,(
    ! [X26] : v1_relat_1(k1_wellord2(X26)) ),
    inference(variable_rename,[status(thm)],[dt_k1_wellord2])).

fof(c_0_14,plain,(
    ! [X17,X18] :
      ( ( r2_hidden(esk1_2(X17,X18),X17)
        | r1_tarski(k6_relat_1(X17),X18)
        | ~ v1_relat_1(X18) )
      & ( ~ r2_hidden(k4_tarski(esk1_2(X17,X18),esk1_2(X17,X18)),X18)
        | r1_tarski(k6_relat_1(X17),X18)
        | ~ v1_relat_1(X18) ) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t73_relat_1])])])])).

cnf(c_0_15,plain,
    ( r2_hidden(k4_tarski(X1,X2),X3)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X1,X4)
    | ~ r2_hidden(X2,X4)
    | X3 != k1_wellord2(X4)
    | ~ v1_relat_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_16,plain,
    ( v1_relat_1(k1_wellord2(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_17,plain,
    ( r2_hidden(esk1_2(X1,X2),X1)
    | r1_tarski(k6_relat_1(X1),X2)
    | ~ v1_relat_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_18,plain,(
    ! [X5,X6] :
      ( ( r1_tarski(X5,X6)
        | X5 != X6 )
      & ( r1_tarski(X6,X5)
        | X5 != X6 )
      & ( ~ r1_tarski(X5,X6)
        | ~ r1_tarski(X6,X5)
        | X5 = X6 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

fof(c_0_19,plain,(
    ! [X11] :
      ( ~ v1_relat_1(X11)
      | k3_relat_1(X11) = k2_xboole_0(k1_relat_1(X11),k2_relat_1(X11)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d6_relat_1])])).

cnf(c_0_20,plain,
    ( k3_relat_1(X1) = X2
    | X1 != k1_wellord2(X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_21,plain,
    ( r2_hidden(k4_tarski(X1,X2),k1_wellord2(X3))
    | ~ r2_hidden(X2,X3)
    | ~ r2_hidden(X1,X3)
    | ~ r1_tarski(X1,X2) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_15]),c_0_16])])).

cnf(c_0_22,plain,
    ( r2_hidden(esk1_2(X1,k1_wellord2(X2)),X1)
    | r1_tarski(k6_relat_1(X1),k1_wellord2(X2)) ),
    inference(spm,[status(thm)],[c_0_17,c_0_16])).

cnf(c_0_23,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

fof(c_0_24,plain,(
    ! [X9,X10] : r1_tarski(X9,k2_xboole_0(X9,X10)) ),
    inference(variable_rename,[status(thm)],[t7_xboole_1])).

cnf(c_0_25,plain,
    ( k3_relat_1(X1) = k2_xboole_0(k1_relat_1(X1),k2_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_26,plain,
    ( k3_relat_1(k1_wellord2(X1)) = X1 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_20]),c_0_16])])).

cnf(c_0_27,plain,
    ( r2_hidden(k4_tarski(X1,esk1_2(X2,k1_wellord2(X3))),k1_wellord2(X2))
    | r1_tarski(k6_relat_1(X2),k1_wellord2(X3))
    | ~ r2_hidden(X1,X2)
    | ~ r1_tarski(X1,esk1_2(X2,k1_wellord2(X3))) ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_28,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_23])).

cnf(c_0_29,plain,
    ( r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_30,plain,
    ( k2_xboole_0(k1_relat_1(k1_wellord2(X1)),k2_relat_1(k1_wellord2(X1))) = X1 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_16]),c_0_26])).

fof(c_0_31,plain,(
    ! [X14,X15] :
      ( ( r1_tarski(k1_relat_1(X14),k1_relat_1(X15))
        | ~ r1_tarski(X14,X15)
        | ~ v1_relat_1(X15)
        | ~ v1_relat_1(X14) )
      & ( r1_tarski(k2_relat_1(X14),k2_relat_1(X15))
        | ~ r1_tarski(X14,X15)
        | ~ v1_relat_1(X15)
        | ~ v1_relat_1(X14) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t25_relat_1])])])])).

cnf(c_0_32,plain,
    ( r1_tarski(k6_relat_1(X1),X2)
    | ~ r2_hidden(k4_tarski(esk1_2(X1,X2),esk1_2(X1,X2)),X2)
    | ~ v1_relat_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_33,plain,
    ( r2_hidden(k4_tarski(esk1_2(X1,k1_wellord2(X2)),esk1_2(X1,k1_wellord2(X2))),k1_wellord2(X1))
    | r1_tarski(k6_relat_1(X1),k1_wellord2(X2)) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_28]),c_0_22])).

fof(c_0_34,plain,(
    ! [X16] :
      ( k1_relat_1(k6_relat_1(X16)) = X16
      & k2_relat_1(k6_relat_1(X16)) = X16 ) ),
    inference(variable_rename,[status(thm)],[t71_relat_1])).

fof(c_0_35,plain,(
    ! [X12] : v1_relat_1(k6_relat_1(X12)) ),
    inference(variable_rename,[status(thm)],[dt_k6_relat_1])).

fof(c_0_36,plain,(
    ! [X7,X8] :
      ( ~ r1_tarski(X7,X8)
      | k2_xboole_0(X7,X8) = X8 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).

cnf(c_0_37,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_38,plain,
    ( r1_tarski(k1_relat_1(k1_wellord2(X1)),X1) ),
    inference(spm,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_39,plain,
    ( r1_tarski(k1_relat_1(X1),k1_relat_1(X2))
    | ~ r1_tarski(X1,X2)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_40,plain,
    ( r1_tarski(k6_relat_1(X1),k1_wellord2(X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_33]),c_0_16])])).

cnf(c_0_41,plain,
    ( k1_relat_1(k6_relat_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_42,plain,
    ( v1_relat_1(k6_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_43,plain,
    ( k2_xboole_0(X1,X2) = X2
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_44,plain,
    ( k1_relat_1(k1_wellord2(X1)) = X1
    | ~ r1_tarski(X1,k1_relat_1(k1_wellord2(X1))) ),
    inference(spm,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_45,plain,
    ( r1_tarski(X1,k1_relat_1(k1_wellord2(X1))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_40]),c_0_41]),c_0_16]),c_0_42])])).

cnf(c_0_46,plain,
    ( k2_relat_1(k1_wellord2(X1)) = X1
    | ~ r1_tarski(k1_relat_1(k1_wellord2(X1)),k2_relat_1(k1_wellord2(X1))) ),
    inference(spm,[status(thm)],[c_0_43,c_0_30])).

cnf(c_0_47,plain,
    ( k1_relat_1(k1_wellord2(X1)) = X1 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_44,c_0_45])])).

cnf(c_0_48,plain,
    ( r1_tarski(k2_relat_1(X1),k2_relat_1(X2))
    | ~ r1_tarski(X1,X2)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_49,plain,
    ( k2_relat_1(k6_relat_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

fof(c_0_50,negated_conjecture,(
    ~ ! [X1] : r1_tarski(k1_wellord2(X1),k2_zfmisc_1(X1,X1)) ),
    inference(assume_negation,[status(cth)],[t33_wellord2])).

fof(c_0_51,plain,(
    ! [X13] :
      ( ~ v1_relat_1(X13)
      | r1_tarski(X13,k2_zfmisc_1(k1_relat_1(X13),k2_relat_1(X13))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t21_relat_1])])).

cnf(c_0_52,plain,
    ( k2_relat_1(k1_wellord2(X1)) = X1
    | ~ r1_tarski(X1,k2_relat_1(k1_wellord2(X1))) ),
    inference(rw,[status(thm)],[c_0_46,c_0_47])).

cnf(c_0_53,plain,
    ( r1_tarski(X1,k2_relat_1(k1_wellord2(X1))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_40]),c_0_49]),c_0_16]),c_0_42])])).

fof(c_0_54,negated_conjecture,(
    ~ r1_tarski(k1_wellord2(esk4_0),k2_zfmisc_1(esk4_0,esk4_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_50])])])).

cnf(c_0_55,plain,
    ( r1_tarski(X1,k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

cnf(c_0_56,plain,
    ( k2_relat_1(k1_wellord2(X1)) = X1 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_52,c_0_53])])).

cnf(c_0_57,negated_conjecture,
    ( ~ r1_tarski(k1_wellord2(esk4_0),k2_zfmisc_1(esk4_0,esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_54])).

cnf(c_0_58,plain,
    ( r1_tarski(k1_wellord2(X1),k2_zfmisc_1(X1,X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_56]),c_0_47]),c_0_16])])).

cnf(c_0_59,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_57,c_0_58])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n011.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 10:34:27 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S015I
% 0.13/0.38  # and selection function PSelectOptimalLit.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.029 s
% 0.13/0.38  # Presaturation interreduction done
% 0.13/0.38  
% 0.13/0.38  # Proof found!
% 0.13/0.38  # SZS status Theorem
% 0.13/0.38  # SZS output start CNFRefutation
% 0.13/0.38  fof(d1_wellord2, axiom, ![X1, X2]:(v1_relat_1(X2)=>(X2=k1_wellord2(X1)<=>(k3_relat_1(X2)=X1&![X3, X4]:((r2_hidden(X3,X1)&r2_hidden(X4,X1))=>(r2_hidden(k4_tarski(X3,X4),X2)<=>r1_tarski(X3,X4)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_wellord2)).
% 0.13/0.38  fof(dt_k1_wellord2, axiom, ![X1]:v1_relat_1(k1_wellord2(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k1_wellord2)).
% 0.13/0.38  fof(t73_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(![X3]:(r2_hidden(X3,X1)=>r2_hidden(k4_tarski(X3,X3),X2))=>r1_tarski(k6_relat_1(X1),X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t73_relat_1)).
% 0.13/0.38  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.13/0.38  fof(d6_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>k3_relat_1(X1)=k2_xboole_0(k1_relat_1(X1),k2_relat_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d6_relat_1)).
% 0.13/0.38  fof(t7_xboole_1, axiom, ![X1, X2]:r1_tarski(X1,k2_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_xboole_1)).
% 0.13/0.38  fof(t25_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>(r1_tarski(X1,X2)=>(r1_tarski(k1_relat_1(X1),k1_relat_1(X2))&r1_tarski(k2_relat_1(X1),k2_relat_1(X2)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t25_relat_1)).
% 0.13/0.38  fof(t71_relat_1, axiom, ![X1]:(k1_relat_1(k6_relat_1(X1))=X1&k2_relat_1(k6_relat_1(X1))=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_relat_1)).
% 0.13/0.38  fof(dt_k6_relat_1, axiom, ![X1]:v1_relat_1(k6_relat_1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k6_relat_1)).
% 0.13/0.38  fof(t12_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k2_xboole_0(X1,X2)=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t12_xboole_1)).
% 0.13/0.38  fof(t33_wellord2, conjecture, ![X1]:r1_tarski(k1_wellord2(X1),k2_zfmisc_1(X1,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t33_wellord2)).
% 0.13/0.38  fof(t21_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>r1_tarski(X1,k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t21_relat_1)).
% 0.13/0.38  fof(c_0_12, plain, ![X20, X21, X22, X23]:(((k3_relat_1(X21)=X20|X21!=k1_wellord2(X20)|~v1_relat_1(X21))&((~r2_hidden(k4_tarski(X22,X23),X21)|r1_tarski(X22,X23)|(~r2_hidden(X22,X20)|~r2_hidden(X23,X20))|X21!=k1_wellord2(X20)|~v1_relat_1(X21))&(~r1_tarski(X22,X23)|r2_hidden(k4_tarski(X22,X23),X21)|(~r2_hidden(X22,X20)|~r2_hidden(X23,X20))|X21!=k1_wellord2(X20)|~v1_relat_1(X21))))&(((r2_hidden(esk2_2(X20,X21),X20)|k3_relat_1(X21)!=X20|X21=k1_wellord2(X20)|~v1_relat_1(X21))&(r2_hidden(esk3_2(X20,X21),X20)|k3_relat_1(X21)!=X20|X21=k1_wellord2(X20)|~v1_relat_1(X21)))&((~r2_hidden(k4_tarski(esk2_2(X20,X21),esk3_2(X20,X21)),X21)|~r1_tarski(esk2_2(X20,X21),esk3_2(X20,X21))|k3_relat_1(X21)!=X20|X21=k1_wellord2(X20)|~v1_relat_1(X21))&(r2_hidden(k4_tarski(esk2_2(X20,X21),esk3_2(X20,X21)),X21)|r1_tarski(esk2_2(X20,X21),esk3_2(X20,X21))|k3_relat_1(X21)!=X20|X21=k1_wellord2(X20)|~v1_relat_1(X21))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_wellord2])])])])])).
% 0.13/0.38  fof(c_0_13, plain, ![X26]:v1_relat_1(k1_wellord2(X26)), inference(variable_rename,[status(thm)],[dt_k1_wellord2])).
% 0.13/0.38  fof(c_0_14, plain, ![X17, X18]:((r2_hidden(esk1_2(X17,X18),X17)|r1_tarski(k6_relat_1(X17),X18)|~v1_relat_1(X18))&(~r2_hidden(k4_tarski(esk1_2(X17,X18),esk1_2(X17,X18)),X18)|r1_tarski(k6_relat_1(X17),X18)|~v1_relat_1(X18))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t73_relat_1])])])])).
% 0.13/0.38  cnf(c_0_15, plain, (r2_hidden(k4_tarski(X1,X2),X3)|~r1_tarski(X1,X2)|~r2_hidden(X1,X4)|~r2_hidden(X2,X4)|X3!=k1_wellord2(X4)|~v1_relat_1(X3)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.38  cnf(c_0_16, plain, (v1_relat_1(k1_wellord2(X1))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.38  cnf(c_0_17, plain, (r2_hidden(esk1_2(X1,X2),X1)|r1_tarski(k6_relat_1(X1),X2)|~v1_relat_1(X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.38  fof(c_0_18, plain, ![X5, X6]:(((r1_tarski(X5,X6)|X5!=X6)&(r1_tarski(X6,X5)|X5!=X6))&(~r1_tarski(X5,X6)|~r1_tarski(X6,X5)|X5=X6)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.13/0.38  fof(c_0_19, plain, ![X11]:(~v1_relat_1(X11)|k3_relat_1(X11)=k2_xboole_0(k1_relat_1(X11),k2_relat_1(X11))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d6_relat_1])])).
% 0.13/0.38  cnf(c_0_20, plain, (k3_relat_1(X1)=X2|X1!=k1_wellord2(X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.38  cnf(c_0_21, plain, (r2_hidden(k4_tarski(X1,X2),k1_wellord2(X3))|~r2_hidden(X2,X3)|~r2_hidden(X1,X3)|~r1_tarski(X1,X2)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_15]), c_0_16])])).
% 0.13/0.38  cnf(c_0_22, plain, (r2_hidden(esk1_2(X1,k1_wellord2(X2)),X1)|r1_tarski(k6_relat_1(X1),k1_wellord2(X2))), inference(spm,[status(thm)],[c_0_17, c_0_16])).
% 0.13/0.38  cnf(c_0_23, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.13/0.38  fof(c_0_24, plain, ![X9, X10]:r1_tarski(X9,k2_xboole_0(X9,X10)), inference(variable_rename,[status(thm)],[t7_xboole_1])).
% 0.13/0.38  cnf(c_0_25, plain, (k3_relat_1(X1)=k2_xboole_0(k1_relat_1(X1),k2_relat_1(X1))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.13/0.38  cnf(c_0_26, plain, (k3_relat_1(k1_wellord2(X1))=X1), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_20]), c_0_16])])).
% 0.13/0.38  cnf(c_0_27, plain, (r2_hidden(k4_tarski(X1,esk1_2(X2,k1_wellord2(X3))),k1_wellord2(X2))|r1_tarski(k6_relat_1(X2),k1_wellord2(X3))|~r2_hidden(X1,X2)|~r1_tarski(X1,esk1_2(X2,k1_wellord2(X3)))), inference(spm,[status(thm)],[c_0_21, c_0_22])).
% 0.13/0.38  cnf(c_0_28, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_23])).
% 0.13/0.38  cnf(c_0_29, plain, (r1_tarski(X1,k2_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.38  cnf(c_0_30, plain, (k2_xboole_0(k1_relat_1(k1_wellord2(X1)),k2_relat_1(k1_wellord2(X1)))=X1), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_16]), c_0_26])).
% 0.13/0.38  fof(c_0_31, plain, ![X14, X15]:((r1_tarski(k1_relat_1(X14),k1_relat_1(X15))|~r1_tarski(X14,X15)|~v1_relat_1(X15)|~v1_relat_1(X14))&(r1_tarski(k2_relat_1(X14),k2_relat_1(X15))|~r1_tarski(X14,X15)|~v1_relat_1(X15)|~v1_relat_1(X14))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t25_relat_1])])])])).
% 0.13/0.38  cnf(c_0_32, plain, (r1_tarski(k6_relat_1(X1),X2)|~r2_hidden(k4_tarski(esk1_2(X1,X2),esk1_2(X1,X2)),X2)|~v1_relat_1(X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.38  cnf(c_0_33, plain, (r2_hidden(k4_tarski(esk1_2(X1,k1_wellord2(X2)),esk1_2(X1,k1_wellord2(X2))),k1_wellord2(X1))|r1_tarski(k6_relat_1(X1),k1_wellord2(X2))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_28]), c_0_22])).
% 0.13/0.38  fof(c_0_34, plain, ![X16]:(k1_relat_1(k6_relat_1(X16))=X16&k2_relat_1(k6_relat_1(X16))=X16), inference(variable_rename,[status(thm)],[t71_relat_1])).
% 0.13/0.38  fof(c_0_35, plain, ![X12]:v1_relat_1(k6_relat_1(X12)), inference(variable_rename,[status(thm)],[dt_k6_relat_1])).
% 0.13/0.38  fof(c_0_36, plain, ![X7, X8]:(~r1_tarski(X7,X8)|k2_xboole_0(X7,X8)=X8), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).
% 0.13/0.38  cnf(c_0_37, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.13/0.38  cnf(c_0_38, plain, (r1_tarski(k1_relat_1(k1_wellord2(X1)),X1)), inference(spm,[status(thm)],[c_0_29, c_0_30])).
% 0.13/0.38  cnf(c_0_39, plain, (r1_tarski(k1_relat_1(X1),k1_relat_1(X2))|~r1_tarski(X1,X2)|~v1_relat_1(X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.13/0.38  cnf(c_0_40, plain, (r1_tarski(k6_relat_1(X1),k1_wellord2(X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_33]), c_0_16])])).
% 0.13/0.38  cnf(c_0_41, plain, (k1_relat_1(k6_relat_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.13/0.38  cnf(c_0_42, plain, (v1_relat_1(k6_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.13/0.38  cnf(c_0_43, plain, (k2_xboole_0(X1,X2)=X2|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.13/0.38  cnf(c_0_44, plain, (k1_relat_1(k1_wellord2(X1))=X1|~r1_tarski(X1,k1_relat_1(k1_wellord2(X1)))), inference(spm,[status(thm)],[c_0_37, c_0_38])).
% 0.13/0.38  cnf(c_0_45, plain, (r1_tarski(X1,k1_relat_1(k1_wellord2(X1)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_40]), c_0_41]), c_0_16]), c_0_42])])).
% 0.13/0.38  cnf(c_0_46, plain, (k2_relat_1(k1_wellord2(X1))=X1|~r1_tarski(k1_relat_1(k1_wellord2(X1)),k2_relat_1(k1_wellord2(X1)))), inference(spm,[status(thm)],[c_0_43, c_0_30])).
% 0.13/0.38  cnf(c_0_47, plain, (k1_relat_1(k1_wellord2(X1))=X1), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_44, c_0_45])])).
% 0.13/0.38  cnf(c_0_48, plain, (r1_tarski(k2_relat_1(X1),k2_relat_1(X2))|~r1_tarski(X1,X2)|~v1_relat_1(X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.13/0.38  cnf(c_0_49, plain, (k2_relat_1(k6_relat_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.13/0.38  fof(c_0_50, negated_conjecture, ~(![X1]:r1_tarski(k1_wellord2(X1),k2_zfmisc_1(X1,X1))), inference(assume_negation,[status(cth)],[t33_wellord2])).
% 0.13/0.38  fof(c_0_51, plain, ![X13]:(~v1_relat_1(X13)|r1_tarski(X13,k2_zfmisc_1(k1_relat_1(X13),k2_relat_1(X13)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t21_relat_1])])).
% 0.13/0.38  cnf(c_0_52, plain, (k2_relat_1(k1_wellord2(X1))=X1|~r1_tarski(X1,k2_relat_1(k1_wellord2(X1)))), inference(rw,[status(thm)],[c_0_46, c_0_47])).
% 0.13/0.38  cnf(c_0_53, plain, (r1_tarski(X1,k2_relat_1(k1_wellord2(X1)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_40]), c_0_49]), c_0_16]), c_0_42])])).
% 0.13/0.38  fof(c_0_54, negated_conjecture, ~r1_tarski(k1_wellord2(esk4_0),k2_zfmisc_1(esk4_0,esk4_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_50])])])).
% 0.13/0.38  cnf(c_0_55, plain, (r1_tarski(X1,k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_51])).
% 0.13/0.38  cnf(c_0_56, plain, (k2_relat_1(k1_wellord2(X1))=X1), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_52, c_0_53])])).
% 0.13/0.38  cnf(c_0_57, negated_conjecture, (~r1_tarski(k1_wellord2(esk4_0),k2_zfmisc_1(esk4_0,esk4_0))), inference(split_conjunct,[status(thm)],[c_0_54])).
% 0.13/0.38  cnf(c_0_58, plain, (r1_tarski(k1_wellord2(X1),k2_zfmisc_1(X1,X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_56]), c_0_47]), c_0_16])])).
% 0.13/0.38  cnf(c_0_59, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_57, c_0_58])]), ['proof']).
% 0.13/0.38  # SZS output end CNFRefutation
% 0.13/0.38  # Proof object total steps             : 60
% 0.13/0.38  # Proof object clause steps            : 35
% 0.13/0.38  # Proof object formula steps           : 25
% 0.13/0.38  # Proof object conjectures             : 5
% 0.13/0.38  # Proof object clause conjectures      : 2
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 17
% 0.13/0.38  # Proof object initial formulas used   : 12
% 0.13/0.38  # Proof object generating inferences   : 11
% 0.13/0.38  # Proof object simplifying inferences  : 29
% 0.13/0.38  # Training examples: 0 positive, 0 negative
% 0.13/0.38  # Parsed axioms                        : 12
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 23
% 0.13/0.38  # Removed in clause preprocessing      : 0
% 0.13/0.38  # Initial clauses in saturation        : 23
% 0.13/0.38  # Processed clauses                    : 155
% 0.13/0.38  # ...of these trivial                  : 6
% 0.13/0.38  # ...subsumed                          : 46
% 0.13/0.38  # ...remaining for further processing  : 103
% 0.13/0.38  # Other redundant clauses eliminated   : 9
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 0
% 0.13/0.38  # Backward-rewritten                   : 18
% 0.13/0.38  # Generated clauses                    : 180
% 0.13/0.38  # ...of the previous two non-trivial   : 152
% 0.13/0.38  # Contextual simplify-reflections      : 1
% 0.13/0.38  # Paramodulations                      : 171
% 0.13/0.38  # Factorizations                       : 0
% 0.13/0.38  # Equation resolutions                 : 9
% 0.13/0.38  # Propositional unsat checks           : 0
% 0.13/0.38  #    Propositional check models        : 0
% 0.13/0.38  #    Propositional check unsatisfiable : 0
% 0.13/0.38  #    Propositional clauses             : 0
% 0.13/0.38  #    Propositional clauses after purity: 0
% 0.13/0.38  #    Propositional unsat core size     : 0
% 0.13/0.38  #    Propositional preprocessing time  : 0.000
% 0.13/0.38  #    Propositional encoding time       : 0.000
% 0.13/0.38  #    Propositional solver time         : 0.000
% 0.13/0.38  #    Success case prop preproc time    : 0.000
% 0.13/0.38  #    Success case prop encoding time   : 0.000
% 0.13/0.38  #    Success case prop solver time     : 0.000
% 0.13/0.38  # Current number of processed clauses  : 54
% 0.13/0.38  #    Positive orientable unit clauses  : 16
% 0.13/0.38  #    Positive unorientable unit clauses: 0
% 0.13/0.38  #    Negative unit clauses             : 0
% 0.13/0.38  #    Non-unit-clauses                  : 38
% 0.13/0.38  # Current number of unprocessed clauses: 41
% 0.13/0.38  # ...number of literals in the above   : 94
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 40
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 379
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 271
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 47
% 0.13/0.38  # Unit Clause-clause subsumption calls : 90
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 12
% 0.13/0.38  # BW rewrite match successes           : 6
% 0.13/0.38  # Condensation attempts                : 0
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.38  # Termbank termtop insertions          : 4706
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.036 s
% 0.13/0.38  # System time              : 0.004 s
% 0.13/0.38  # Total time               : 0.040 s
% 0.13/0.38  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
