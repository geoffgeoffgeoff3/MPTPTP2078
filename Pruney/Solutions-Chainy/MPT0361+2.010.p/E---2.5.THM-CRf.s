%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:46:20 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   63 ( 105 expanded)
%              Number of clauses        :   36 (  47 expanded)
%              Number of leaves         :   13 (  26 expanded)
%              Depth                    :   11
%              Number of atoms          :  155 ( 302 expanded)
%              Number of equality atoms :   21 (  40 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t41_subset_1,conjecture,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => ! [X3] :
          ( m1_subset_1(X3,k1_zfmisc_1(X1))
         => r1_tarski(k3_subset_1(X1,k4_subset_1(X1,X2,X3)),k3_subset_1(X1,X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_subset_1)).

fof(d1_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( X2 = k1_zfmisc_1(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> r1_tarski(X3,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_zfmisc_1)).

fof(d2_subset_1,axiom,(
    ! [X1,X2] :
      ( ( ~ v1_xboole_0(X1)
       => ( m1_subset_1(X2,X1)
        <=> r2_hidden(X2,X1) ) )
      & ( v1_xboole_0(X1)
       => ( m1_subset_1(X2,X1)
        <=> v1_xboole_0(X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d2_subset_1)).

fof(fc1_subset_1,axiom,(
    ! [X1] : ~ v1_xboole_0(k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_subset_1)).

fof(d5_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k3_subset_1(X1,X2) = k4_xboole_0(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_subset_1)).

fof(t1_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X2,X3) )
     => r1_tarski(X1,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_xboole_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t43_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(X1,k2_xboole_0(X2,X3))
     => r1_tarski(k4_xboole_0(X1,X2),X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t43_xboole_1)).

fof(t35_xboole_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X3,X4) )
     => r1_tarski(k4_xboole_0(X1,X4),k4_xboole_0(X2,X3)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t35_xboole_1)).

fof(t44_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(k4_xboole_0(X1,X2),X3)
     => r1_tarski(X1,k2_xboole_0(X2,X3)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t44_xboole_1)).

fof(redefinition_k4_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(X1))
        & m1_subset_1(X3,k1_zfmisc_1(X1)) )
     => k4_subset_1(X1,X2,X3) = k2_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k4_subset_1)).

fof(t7_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_1)).

fof(t12_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k2_xboole_0(X1,X2) = X2 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_xboole_1)).

fof(c_0_13,negated_conjecture,(
    ~ ! [X1,X2] :
        ( m1_subset_1(X2,k1_zfmisc_1(X1))
       => ! [X3] :
            ( m1_subset_1(X3,k1_zfmisc_1(X1))
           => r1_tarski(k3_subset_1(X1,k4_subset_1(X1,X2,X3)),k3_subset_1(X1,X2)) ) ) ),
    inference(assume_negation,[status(cth)],[t41_subset_1])).

fof(c_0_14,plain,(
    ! [X26,X27,X28,X29,X30,X31] :
      ( ( ~ r2_hidden(X28,X27)
        | r1_tarski(X28,X26)
        | X27 != k1_zfmisc_1(X26) )
      & ( ~ r1_tarski(X29,X26)
        | r2_hidden(X29,X27)
        | X27 != k1_zfmisc_1(X26) )
      & ( ~ r2_hidden(esk1_2(X30,X31),X31)
        | ~ r1_tarski(esk1_2(X30,X31),X30)
        | X31 = k1_zfmisc_1(X30) )
      & ( r2_hidden(esk1_2(X30,X31),X31)
        | r1_tarski(esk1_2(X30,X31),X30)
        | X31 = k1_zfmisc_1(X30) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_zfmisc_1])])])])])])).

fof(c_0_15,plain,(
    ! [X33,X34] :
      ( ( ~ m1_subset_1(X34,X33)
        | r2_hidden(X34,X33)
        | v1_xboole_0(X33) )
      & ( ~ r2_hidden(X34,X33)
        | m1_subset_1(X34,X33)
        | v1_xboole_0(X33) )
      & ( ~ m1_subset_1(X34,X33)
        | v1_xboole_0(X34)
        | ~ v1_xboole_0(X33) )
      & ( ~ v1_xboole_0(X34)
        | m1_subset_1(X34,X33)
        | ~ v1_xboole_0(X33) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d2_subset_1])])])])).

fof(c_0_16,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(esk2_0))
    & m1_subset_1(esk4_0,k1_zfmisc_1(esk2_0))
    & ~ r1_tarski(k3_subset_1(esk2_0,k4_subset_1(esk2_0,esk3_0,esk4_0)),k3_subset_1(esk2_0,esk3_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_13])])])).

fof(c_0_17,plain,(
    ! [X37] : ~ v1_xboole_0(k1_zfmisc_1(X37)) ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[fc1_subset_1])])).

cnf(c_0_18,plain,
    ( r1_tarski(X1,X3)
    | ~ r2_hidden(X1,X2)
    | X2 != k1_zfmisc_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_19,plain,
    ( r2_hidden(X1,X2)
    | v1_xboole_0(X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_20,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_21,plain,
    ( ~ v1_xboole_0(k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

fof(c_0_22,plain,(
    ! [X35,X36] :
      ( ~ m1_subset_1(X36,k1_zfmisc_1(X35))
      | k3_subset_1(X35,X36) = k4_xboole_0(X35,X36) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_subset_1])])).

fof(c_0_23,plain,(
    ! [X11,X12,X13] :
      ( ~ r1_tarski(X11,X12)
      | ~ r1_tarski(X12,X13)
      | r1_tarski(X11,X13) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).

cnf(c_0_24,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(X1,k1_zfmisc_1(X2)) ),
    inference(er,[status(thm)],[c_0_18])).

cnf(c_0_25,negated_conjecture,
    ( r2_hidden(esk4_0,k1_zfmisc_1(esk2_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_21])).

cnf(c_0_26,negated_conjecture,
    ( ~ r1_tarski(k3_subset_1(esk2_0,k4_subset_1(esk2_0,esk3_0,esk4_0)),k3_subset_1(esk2_0,esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_27,plain,
    ( k3_subset_1(X2,X1) = k4_xboole_0(X2,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_28,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_29,plain,(
    ! [X7,X8] :
      ( ( r1_tarski(X7,X8)
        | X7 != X8 )
      & ( r1_tarski(X8,X7)
        | X7 != X8 )
      & ( ~ r1_tarski(X7,X8)
        | ~ r1_tarski(X8,X7)
        | X7 = X8 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_30,plain,
    ( r1_tarski(X1,X3)
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_31,negated_conjecture,
    ( r1_tarski(esk4_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

fof(c_0_32,plain,(
    ! [X18,X19,X20] :
      ( ~ r1_tarski(X18,k2_xboole_0(X19,X20))
      | r1_tarski(k4_xboole_0(X18,X19),X20) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t43_xboole_1])])).

cnf(c_0_33,negated_conjecture,
    ( ~ r1_tarski(k3_subset_1(esk2_0,k4_subset_1(esk2_0,esk3_0,esk4_0)),k4_xboole_0(esk2_0,esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_28])])).

fof(c_0_34,plain,(
    ! [X14,X15,X16,X17] :
      ( ~ r1_tarski(X14,X15)
      | ~ r1_tarski(X16,X17)
      | r1_tarski(k4_xboole_0(X14,X17),k4_xboole_0(X15,X16)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t35_xboole_1])])).

cnf(c_0_35,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_36,plain,
    ( r2_hidden(X1,X3)
    | ~ r1_tarski(X1,X2)
    | X3 != k1_zfmisc_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_37,plain,(
    ! [X21,X22,X23] :
      ( ~ r1_tarski(k4_xboole_0(X21,X22),X23)
      | r1_tarski(X21,k2_xboole_0(X22,X23)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_xboole_1])])).

cnf(c_0_38,negated_conjecture,
    ( r1_tarski(X1,esk2_0)
    | ~ r1_tarski(X1,esk4_0) ),
    inference(spm,[status(thm)],[c_0_30,c_0_31])).

cnf(c_0_39,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X3)
    | ~ r1_tarski(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_40,negated_conjecture,
    ( ~ m1_subset_1(k4_subset_1(esk2_0,esk3_0,esk4_0),k1_zfmisc_1(esk2_0))
    | ~ r1_tarski(k4_xboole_0(esk2_0,k4_subset_1(esk2_0,esk3_0,esk4_0)),k4_xboole_0(esk2_0,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_33,c_0_27])).

cnf(c_0_41,plain,
    ( r1_tarski(k4_xboole_0(X1,X4),k4_xboole_0(X2,X3))
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_42,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_35])).

cnf(c_0_43,plain,
    ( m1_subset_1(X1,X2)
    | v1_xboole_0(X2)
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_44,plain,
    ( r2_hidden(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(er,[status(thm)],[c_0_36])).

cnf(c_0_45,plain,
    ( r1_tarski(X1,k2_xboole_0(X2,X3))
    | ~ r1_tarski(k4_xboole_0(X1,X2),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_46,negated_conjecture,
    ( r1_tarski(k4_xboole_0(X1,X2),esk2_0)
    | ~ r1_tarski(X1,k2_xboole_0(X2,esk4_0)) ),
    inference(spm,[status(thm)],[c_0_38,c_0_39])).

cnf(c_0_47,negated_conjecture,
    ( ~ m1_subset_1(k4_subset_1(esk2_0,esk3_0,esk4_0),k1_zfmisc_1(esk2_0))
    | ~ r1_tarski(esk3_0,k4_subset_1(esk2_0,esk3_0,esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_41]),c_0_42])])).

cnf(c_0_48,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_44]),c_0_21])).

fof(c_0_49,plain,(
    ! [X38,X39,X40] :
      ( ~ m1_subset_1(X39,k1_zfmisc_1(X38))
      | ~ m1_subset_1(X40,k1_zfmisc_1(X38))
      | k4_subset_1(X38,X39,X40) = k2_xboole_0(X39,X40) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).

fof(c_0_50,plain,(
    ! [X24,X25] : r1_tarski(X24,k2_xboole_0(X24,X25)) ),
    inference(variable_rename,[status(thm)],[t7_xboole_1])).

cnf(c_0_51,negated_conjecture,
    ( r1_tarski(X1,k2_xboole_0(X2,esk2_0))
    | ~ r1_tarski(X1,k2_xboole_0(X2,esk4_0)) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

fof(c_0_52,plain,(
    ! [X9,X10] :
      ( ~ r1_tarski(X9,X10)
      | k2_xboole_0(X9,X10) = X10 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).

cnf(c_0_53,negated_conjecture,
    ( ~ r1_tarski(esk3_0,k4_subset_1(esk2_0,esk3_0,esk4_0))
    | ~ r1_tarski(k4_subset_1(esk2_0,esk3_0,esk4_0),esk2_0) ),
    inference(spm,[status(thm)],[c_0_47,c_0_48])).

cnf(c_0_54,plain,
    ( k4_subset_1(X2,X1,X3) = k2_xboole_0(X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_49])).

cnf(c_0_55,plain,
    ( r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_50])).

cnf(c_0_56,negated_conjecture,
    ( r1_tarski(k2_xboole_0(X1,esk4_0),k2_xboole_0(X1,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_51,c_0_42])).

cnf(c_0_57,plain,
    ( k2_xboole_0(X1,X2) = X2
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_52])).

cnf(c_0_58,negated_conjecture,
    ( r2_hidden(esk3_0,k1_zfmisc_1(esk2_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_28]),c_0_21])).

cnf(c_0_59,negated_conjecture,
    ( ~ r1_tarski(k2_xboole_0(esk3_0,esk4_0),esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_54]),c_0_55]),c_0_20]),c_0_28])])).

cnf(c_0_60,negated_conjecture,
    ( r1_tarski(k2_xboole_0(X1,esk4_0),esk2_0)
    | ~ r1_tarski(X1,esk2_0) ),
    inference(spm,[status(thm)],[c_0_56,c_0_57])).

cnf(c_0_61,negated_conjecture,
    ( r1_tarski(esk3_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_24,c_0_58])).

cnf(c_0_62,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59,c_0_60]),c_0_61])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n013.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 11:28:24 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.12/0.38  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.12/0.38  #
% 0.12/0.38  # Preprocessing time       : 0.027 s
% 0.12/0.38  # Presaturation interreduction done
% 0.12/0.38  
% 0.12/0.38  # Proof found!
% 0.12/0.38  # SZS status Theorem
% 0.12/0.38  # SZS output start CNFRefutation
% 0.12/0.38  fof(t41_subset_1, conjecture, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(X1))=>r1_tarski(k3_subset_1(X1,k4_subset_1(X1,X2,X3)),k3_subset_1(X1,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t41_subset_1)).
% 0.12/0.38  fof(d1_zfmisc_1, axiom, ![X1, X2]:(X2=k1_zfmisc_1(X1)<=>![X3]:(r2_hidden(X3,X2)<=>r1_tarski(X3,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_zfmisc_1)).
% 0.12/0.38  fof(d2_subset_1, axiom, ![X1, X2]:((~(v1_xboole_0(X1))=>(m1_subset_1(X2,X1)<=>r2_hidden(X2,X1)))&(v1_xboole_0(X1)=>(m1_subset_1(X2,X1)<=>v1_xboole_0(X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d2_subset_1)).
% 0.12/0.38  fof(fc1_subset_1, axiom, ![X1]:~(v1_xboole_0(k1_zfmisc_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc1_subset_1)).
% 0.12/0.38  fof(d5_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k3_subset_1(X1,X2)=k4_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d5_subset_1)).
% 0.12/0.38  fof(t1_xboole_1, axiom, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_tarski(X2,X3))=>r1_tarski(X1,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t1_xboole_1)).
% 0.12/0.38  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.12/0.38  fof(t43_xboole_1, axiom, ![X1, X2, X3]:(r1_tarski(X1,k2_xboole_0(X2,X3))=>r1_tarski(k4_xboole_0(X1,X2),X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t43_xboole_1)).
% 0.12/0.38  fof(t35_xboole_1, axiom, ![X1, X2, X3, X4]:((r1_tarski(X1,X2)&r1_tarski(X3,X4))=>r1_tarski(k4_xboole_0(X1,X4),k4_xboole_0(X2,X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t35_xboole_1)).
% 0.12/0.38  fof(t44_xboole_1, axiom, ![X1, X2, X3]:(r1_tarski(k4_xboole_0(X1,X2),X3)=>r1_tarski(X1,k2_xboole_0(X2,X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t44_xboole_1)).
% 0.12/0.38  fof(redefinition_k4_subset_1, axiom, ![X1, X2, X3]:((m1_subset_1(X2,k1_zfmisc_1(X1))&m1_subset_1(X3,k1_zfmisc_1(X1)))=>k4_subset_1(X1,X2,X3)=k2_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k4_subset_1)).
% 0.12/0.38  fof(t7_xboole_1, axiom, ![X1, X2]:r1_tarski(X1,k2_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_xboole_1)).
% 0.12/0.38  fof(t12_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k2_xboole_0(X1,X2)=X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t12_xboole_1)).
% 0.12/0.38  fof(c_0_13, negated_conjecture, ~(![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(X1))=>r1_tarski(k3_subset_1(X1,k4_subset_1(X1,X2,X3)),k3_subset_1(X1,X2))))), inference(assume_negation,[status(cth)],[t41_subset_1])).
% 0.12/0.38  fof(c_0_14, plain, ![X26, X27, X28, X29, X30, X31]:(((~r2_hidden(X28,X27)|r1_tarski(X28,X26)|X27!=k1_zfmisc_1(X26))&(~r1_tarski(X29,X26)|r2_hidden(X29,X27)|X27!=k1_zfmisc_1(X26)))&((~r2_hidden(esk1_2(X30,X31),X31)|~r1_tarski(esk1_2(X30,X31),X30)|X31=k1_zfmisc_1(X30))&(r2_hidden(esk1_2(X30,X31),X31)|r1_tarski(esk1_2(X30,X31),X30)|X31=k1_zfmisc_1(X30)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_zfmisc_1])])])])])])).
% 0.12/0.38  fof(c_0_15, plain, ![X33, X34]:(((~m1_subset_1(X34,X33)|r2_hidden(X34,X33)|v1_xboole_0(X33))&(~r2_hidden(X34,X33)|m1_subset_1(X34,X33)|v1_xboole_0(X33)))&((~m1_subset_1(X34,X33)|v1_xboole_0(X34)|~v1_xboole_0(X33))&(~v1_xboole_0(X34)|m1_subset_1(X34,X33)|~v1_xboole_0(X33)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d2_subset_1])])])])).
% 0.12/0.38  fof(c_0_16, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(esk2_0))&(m1_subset_1(esk4_0,k1_zfmisc_1(esk2_0))&~r1_tarski(k3_subset_1(esk2_0,k4_subset_1(esk2_0,esk3_0,esk4_0)),k3_subset_1(esk2_0,esk3_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_13])])])).
% 0.12/0.38  fof(c_0_17, plain, ![X37]:~v1_xboole_0(k1_zfmisc_1(X37)), inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[fc1_subset_1])])).
% 0.12/0.38  cnf(c_0_18, plain, (r1_tarski(X1,X3)|~r2_hidden(X1,X2)|X2!=k1_zfmisc_1(X3)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.12/0.38  cnf(c_0_19, plain, (r2_hidden(X1,X2)|v1_xboole_0(X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.12/0.38  cnf(c_0_20, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.12/0.38  cnf(c_0_21, plain, (~v1_xboole_0(k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.12/0.38  fof(c_0_22, plain, ![X35, X36]:(~m1_subset_1(X36,k1_zfmisc_1(X35))|k3_subset_1(X35,X36)=k4_xboole_0(X35,X36)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_subset_1])])).
% 0.12/0.38  fof(c_0_23, plain, ![X11, X12, X13]:(~r1_tarski(X11,X12)|~r1_tarski(X12,X13)|r1_tarski(X11,X13)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).
% 0.12/0.38  cnf(c_0_24, plain, (r1_tarski(X1,X2)|~r2_hidden(X1,k1_zfmisc_1(X2))), inference(er,[status(thm)],[c_0_18])).
% 0.12/0.38  cnf(c_0_25, negated_conjecture, (r2_hidden(esk4_0,k1_zfmisc_1(esk2_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_20]), c_0_21])).
% 0.12/0.38  cnf(c_0_26, negated_conjecture, (~r1_tarski(k3_subset_1(esk2_0,k4_subset_1(esk2_0,esk3_0,esk4_0)),k3_subset_1(esk2_0,esk3_0))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.12/0.38  cnf(c_0_27, plain, (k3_subset_1(X2,X1)=k4_xboole_0(X2,X1)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.12/0.38  cnf(c_0_28, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.12/0.38  fof(c_0_29, plain, ![X7, X8]:(((r1_tarski(X7,X8)|X7!=X8)&(r1_tarski(X8,X7)|X7!=X8))&(~r1_tarski(X7,X8)|~r1_tarski(X8,X7)|X7=X8)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.12/0.38  cnf(c_0_30, plain, (r1_tarski(X1,X3)|~r1_tarski(X1,X2)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.12/0.38  cnf(c_0_31, negated_conjecture, (r1_tarski(esk4_0,esk2_0)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.12/0.38  fof(c_0_32, plain, ![X18, X19, X20]:(~r1_tarski(X18,k2_xboole_0(X19,X20))|r1_tarski(k4_xboole_0(X18,X19),X20)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t43_xboole_1])])).
% 0.12/0.38  cnf(c_0_33, negated_conjecture, (~r1_tarski(k3_subset_1(esk2_0,k4_subset_1(esk2_0,esk3_0,esk4_0)),k4_xboole_0(esk2_0,esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_28])])).
% 0.12/0.38  fof(c_0_34, plain, ![X14, X15, X16, X17]:(~r1_tarski(X14,X15)|~r1_tarski(X16,X17)|r1_tarski(k4_xboole_0(X14,X17),k4_xboole_0(X15,X16))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t35_xboole_1])])).
% 0.12/0.38  cnf(c_0_35, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.12/0.38  cnf(c_0_36, plain, (r2_hidden(X1,X3)|~r1_tarski(X1,X2)|X3!=k1_zfmisc_1(X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.12/0.38  fof(c_0_37, plain, ![X21, X22, X23]:(~r1_tarski(k4_xboole_0(X21,X22),X23)|r1_tarski(X21,k2_xboole_0(X22,X23))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_xboole_1])])).
% 0.12/0.38  cnf(c_0_38, negated_conjecture, (r1_tarski(X1,esk2_0)|~r1_tarski(X1,esk4_0)), inference(spm,[status(thm)],[c_0_30, c_0_31])).
% 0.12/0.38  cnf(c_0_39, plain, (r1_tarski(k4_xboole_0(X1,X2),X3)|~r1_tarski(X1,k2_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.12/0.38  cnf(c_0_40, negated_conjecture, (~m1_subset_1(k4_subset_1(esk2_0,esk3_0,esk4_0),k1_zfmisc_1(esk2_0))|~r1_tarski(k4_xboole_0(esk2_0,k4_subset_1(esk2_0,esk3_0,esk4_0)),k4_xboole_0(esk2_0,esk3_0))), inference(spm,[status(thm)],[c_0_33, c_0_27])).
% 0.12/0.38  cnf(c_0_41, plain, (r1_tarski(k4_xboole_0(X1,X4),k4_xboole_0(X2,X3))|~r1_tarski(X1,X2)|~r1_tarski(X3,X4)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.12/0.38  cnf(c_0_42, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_35])).
% 0.12/0.38  cnf(c_0_43, plain, (m1_subset_1(X1,X2)|v1_xboole_0(X2)|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.12/0.38  cnf(c_0_44, plain, (r2_hidden(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(er,[status(thm)],[c_0_36])).
% 0.12/0.38  cnf(c_0_45, plain, (r1_tarski(X1,k2_xboole_0(X2,X3))|~r1_tarski(k4_xboole_0(X1,X2),X3)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.12/0.38  cnf(c_0_46, negated_conjecture, (r1_tarski(k4_xboole_0(X1,X2),esk2_0)|~r1_tarski(X1,k2_xboole_0(X2,esk4_0))), inference(spm,[status(thm)],[c_0_38, c_0_39])).
% 0.12/0.38  cnf(c_0_47, negated_conjecture, (~m1_subset_1(k4_subset_1(esk2_0,esk3_0,esk4_0),k1_zfmisc_1(esk2_0))|~r1_tarski(esk3_0,k4_subset_1(esk2_0,esk3_0,esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_41]), c_0_42])])).
% 0.12/0.38  cnf(c_0_48, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_44]), c_0_21])).
% 0.12/0.38  fof(c_0_49, plain, ![X38, X39, X40]:(~m1_subset_1(X39,k1_zfmisc_1(X38))|~m1_subset_1(X40,k1_zfmisc_1(X38))|k4_subset_1(X38,X39,X40)=k2_xboole_0(X39,X40)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k4_subset_1])])).
% 0.12/0.38  fof(c_0_50, plain, ![X24, X25]:r1_tarski(X24,k2_xboole_0(X24,X25)), inference(variable_rename,[status(thm)],[t7_xboole_1])).
% 0.12/0.38  cnf(c_0_51, negated_conjecture, (r1_tarski(X1,k2_xboole_0(X2,esk2_0))|~r1_tarski(X1,k2_xboole_0(X2,esk4_0))), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.12/0.38  fof(c_0_52, plain, ![X9, X10]:(~r1_tarski(X9,X10)|k2_xboole_0(X9,X10)=X10), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).
% 0.12/0.38  cnf(c_0_53, negated_conjecture, (~r1_tarski(esk3_0,k4_subset_1(esk2_0,esk3_0,esk4_0))|~r1_tarski(k4_subset_1(esk2_0,esk3_0,esk4_0),esk2_0)), inference(spm,[status(thm)],[c_0_47, c_0_48])).
% 0.12/0.38  cnf(c_0_54, plain, (k4_subset_1(X2,X1,X3)=k2_xboole_0(X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(X2))|~m1_subset_1(X3,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_49])).
% 0.12/0.38  cnf(c_0_55, plain, (r1_tarski(X1,k2_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_50])).
% 0.12/0.38  cnf(c_0_56, negated_conjecture, (r1_tarski(k2_xboole_0(X1,esk4_0),k2_xboole_0(X1,esk2_0))), inference(spm,[status(thm)],[c_0_51, c_0_42])).
% 0.12/0.38  cnf(c_0_57, plain, (k2_xboole_0(X1,X2)=X2|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_52])).
% 0.12/0.38  cnf(c_0_58, negated_conjecture, (r2_hidden(esk3_0,k1_zfmisc_1(esk2_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_28]), c_0_21])).
% 0.12/0.38  cnf(c_0_59, negated_conjecture, (~r1_tarski(k2_xboole_0(esk3_0,esk4_0),esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_54]), c_0_55]), c_0_20]), c_0_28])])).
% 0.12/0.38  cnf(c_0_60, negated_conjecture, (r1_tarski(k2_xboole_0(X1,esk4_0),esk2_0)|~r1_tarski(X1,esk2_0)), inference(spm,[status(thm)],[c_0_56, c_0_57])).
% 0.12/0.38  cnf(c_0_61, negated_conjecture, (r1_tarski(esk3_0,esk2_0)), inference(spm,[status(thm)],[c_0_24, c_0_58])).
% 0.12/0.38  cnf(c_0_62, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59, c_0_60]), c_0_61])]), ['proof']).
% 0.12/0.38  # SZS output end CNFRefutation
% 0.12/0.38  # Proof object total steps             : 63
% 0.12/0.38  # Proof object clause steps            : 36
% 0.12/0.38  # Proof object formula steps           : 27
% 0.12/0.38  # Proof object conjectures             : 21
% 0.12/0.38  # Proof object clause conjectures      : 18
% 0.12/0.38  # Proof object formula conjectures     : 3
% 0.12/0.38  # Proof object initial clauses used    : 17
% 0.12/0.38  # Proof object initial formulas used   : 13
% 0.12/0.38  # Proof object generating inferences   : 16
% 0.12/0.38  # Proof object simplifying inferences  : 16
% 0.12/0.38  # Training examples: 0 positive, 0 negative
% 0.12/0.38  # Parsed axioms                        : 14
% 0.12/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.38  # Initial clauses                      : 24
% 0.12/0.38  # Removed in clause preprocessing      : 0
% 0.12/0.38  # Initial clauses in saturation        : 24
% 0.12/0.38  # Processed clauses                    : 188
% 0.12/0.38  # ...of these trivial                  : 3
% 0.12/0.38  # ...subsumed                          : 68
% 0.12/0.38  # ...remaining for further processing  : 117
% 0.12/0.38  # Other redundant clauses eliminated   : 4
% 0.12/0.38  # Clauses deleted for lack of memory   : 0
% 0.12/0.38  # Backward-subsumed                    : 6
% 0.12/0.38  # Backward-rewritten                   : 0
% 0.12/0.38  # Generated clauses                    : 304
% 0.12/0.38  # ...of the previous two non-trivial   : 244
% 0.12/0.38  # Contextual simplify-reflections      : 0
% 0.12/0.38  # Paramodulations                      : 300
% 0.12/0.38  # Factorizations                       : 0
% 0.12/0.38  # Equation resolutions                 : 4
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
% 0.12/0.38  # Current number of processed clauses  : 84
% 0.12/0.38  #    Positive orientable unit clauses  : 16
% 0.12/0.38  #    Positive unorientable unit clauses: 1
% 0.12/0.38  #    Negative unit clauses             : 10
% 0.12/0.38  #    Non-unit-clauses                  : 57
% 0.12/0.38  # Current number of unprocessed clauses: 98
% 0.12/0.38  # ...number of literals in the above   : 226
% 0.12/0.38  # Current number of archived formulas  : 0
% 0.12/0.38  # Current number of archived clauses   : 29
% 0.12/0.38  # Clause-clause subsumption calls (NU) : 793
% 0.12/0.38  # Rec. Clause-clause subsumption calls : 665
% 0.12/0.38  # Non-unit clause-clause subsumptions  : 46
% 0.12/0.38  # Unit Clause-clause subsumption calls : 102
% 0.12/0.38  # Rewrite failures with RHS unbound    : 0
% 0.12/0.38  # BW rewrite match attempts            : 7
% 0.12/0.38  # BW rewrite match successes           : 4
% 0.12/0.38  # Condensation attempts                : 0
% 0.12/0.38  # Condensation successes               : 0
% 0.12/0.38  # Termbank termtop insertions          : 4576
% 0.12/0.38  
% 0.12/0.38  # -------------------------------------------------
% 0.12/0.38  # User time                : 0.037 s
% 0.12/0.38  # System time              : 0.002 s
% 0.12/0.38  # Total time               : 0.039 s
% 0.12/0.38  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
