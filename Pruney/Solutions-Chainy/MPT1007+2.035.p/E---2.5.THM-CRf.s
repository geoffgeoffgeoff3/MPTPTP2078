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
% DateTime   : Thu Dec  3 11:04:19 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   55 ( 174 expanded)
%              Number of clauses        :   30 (  68 expanded)
%              Number of leaves         :   12 (  48 expanded)
%              Depth                    :   10
%              Number of atoms          :  163 ( 397 expanded)
%              Number of equality atoms :   54 ( 154 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   26 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t61_funct_2,conjecture,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & v1_funct_2(X3,k1_tarski(X1),X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))) )
     => ( X2 != k1_xboole_0
       => r2_hidden(k1_funct_1(X3,X1),X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t61_funct_2)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(t128_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(k1_tarski(X3),X4))
    <=> ( X1 = X3
        & r2_hidden(X2,X4) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t128_zfmisc_1)).

fof(l3_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => ! [X3] :
          ( r2_hidden(X3,X2)
         => r2_hidden(X3,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l3_subset_1)).

fof(t22_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
     => ( ! [X4] :
            ~ ( r2_hidden(X4,X2)
              & ! [X5] : ~ r2_hidden(k4_tarski(X4,X5),X3) )
      <=> k1_relset_1(X2,X1,X3) = X2 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t22_relset_1)).

fof(d1_funct_2,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( ( ( X2 = k1_xboole_0
           => X1 = k1_xboole_0 )
         => ( v1_funct_2(X3,X1,X2)
          <=> X1 = k1_relset_1(X1,X2,X3) ) )
        & ( X2 = k1_xboole_0
         => ( X1 = k1_xboole_0
            | ( v1_funct_2(X3,X1,X2)
            <=> X3 = k1_xboole_0 ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_funct_2)).

fof(t7_funct_2,axiom,(
    ! [X1,X2,X3,X4] :
      ( ( v1_funct_1(X4)
        & v1_funct_2(X4,X1,X2)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( r2_hidden(X3,X1)
       => ( X2 = k1_xboole_0
          | r2_hidden(k1_funct_1(X4,X3),X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_funct_2)).

fof(t2_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,X2)
     => ( v1_xboole_0(X2)
        | r2_hidden(X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_subset)).

fof(existence_m1_subset_1,axiom,(
    ! [X1] :
    ? [X2] : m1_subset_1(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',existence_m1_subset_1)).

fof(fc2_xboole_0,axiom,(
    ! [X1] : ~ v1_xboole_0(k1_tarski(X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc2_xboole_0)).

fof(c_0_12,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( v1_funct_1(X3)
          & v1_funct_2(X3,k1_tarski(X1),X2)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))) )
       => ( X2 != k1_xboole_0
         => r2_hidden(k1_funct_1(X3,X1),X2) ) ) ),
    inference(assume_negation,[status(cth)],[t61_funct_2])).

fof(c_0_13,negated_conjecture,
    ( v1_funct_1(esk9_0)
    & v1_funct_2(esk9_0,k1_tarski(esk7_0),esk8_0)
    & m1_subset_1(esk9_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk7_0),esk8_0)))
    & esk8_0 != k1_xboole_0
    & ~ r2_hidden(k1_funct_1(esk9_0,esk7_0),esk8_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_12])])])).

fof(c_0_14,plain,(
    ! [X13] : k2_tarski(X13,X13) = k1_tarski(X13) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_15,plain,(
    ! [X14,X15] : k1_enumset1(X14,X14,X15) = k2_tarski(X14,X15) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_16,plain,(
    ! [X16,X17,X18] : k2_enumset1(X16,X16,X17,X18) = k1_enumset1(X16,X17,X18) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_17,plain,(
    ! [X20,X21,X22,X23] :
      ( ( X20 = X22
        | ~ r2_hidden(k4_tarski(X20,X21),k2_zfmisc_1(k1_tarski(X22),X23)) )
      & ( r2_hidden(X21,X23)
        | ~ r2_hidden(k4_tarski(X20,X21),k2_zfmisc_1(k1_tarski(X22),X23)) )
      & ( X20 != X22
        | ~ r2_hidden(X21,X23)
        | r2_hidden(k4_tarski(X20,X21),k2_zfmisc_1(k1_tarski(X22),X23)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t128_zfmisc_1])])])).

fof(c_0_18,plain,(
    ! [X26,X27,X28] :
      ( ~ m1_subset_1(X27,k1_zfmisc_1(X26))
      | ~ r2_hidden(X28,X27)
      | r2_hidden(X28,X26) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l3_subset_1])])])).

cnf(c_0_19,negated_conjecture,
    ( m1_subset_1(esk9_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk7_0),esk8_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_20,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_21,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_22,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_23,plain,
    ( X1 = X2
    | ~ r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(k1_tarski(X2),X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_24,plain,
    ( r2_hidden(X3,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_25,negated_conjecture,
    ( m1_subset_1(esk9_0,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(esk7_0,esk7_0,esk7_0,esk7_0),esk8_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19,c_0_20]),c_0_21]),c_0_22])).

cnf(c_0_26,plain,
    ( X1 = X2
    | ~ r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(k2_enumset1(X2,X2,X2,X2),X4)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_23,c_0_20]),c_0_21]),c_0_22])).

cnf(c_0_27,negated_conjecture,
    ( r2_hidden(X1,k2_zfmisc_1(k2_enumset1(esk7_0,esk7_0,esk7_0,esk7_0),esk8_0))
    | ~ r2_hidden(X1,esk9_0) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

fof(c_0_28,plain,(
    ! [X51,X52,X53,X55,X56] :
      ( ( r2_hidden(esk5_3(X51,X52,X53),X52)
        | k1_relset_1(X52,X51,X53) = X52
        | ~ m1_subset_1(X53,k1_zfmisc_1(k2_zfmisc_1(X52,X51))) )
      & ( ~ r2_hidden(k4_tarski(esk5_3(X51,X52,X53),X55),X53)
        | k1_relset_1(X52,X51,X53) = X52
        | ~ m1_subset_1(X53,k1_zfmisc_1(k2_zfmisc_1(X52,X51))) )
      & ( k1_relset_1(X52,X51,X53) != X52
        | ~ r2_hidden(X56,X52)
        | r2_hidden(k4_tarski(X56,esk6_4(X51,X52,X53,X56)),X53)
        | ~ m1_subset_1(X53,k1_zfmisc_1(k2_zfmisc_1(X52,X51))) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t22_relset_1])])])])])])).

fof(c_0_29,plain,(
    ! [X58,X59,X60] :
      ( ( ~ v1_funct_2(X60,X58,X59)
        | X58 = k1_relset_1(X58,X59,X60)
        | X59 = k1_xboole_0
        | ~ m1_subset_1(X60,k1_zfmisc_1(k2_zfmisc_1(X58,X59))) )
      & ( X58 != k1_relset_1(X58,X59,X60)
        | v1_funct_2(X60,X58,X59)
        | X59 = k1_xboole_0
        | ~ m1_subset_1(X60,k1_zfmisc_1(k2_zfmisc_1(X58,X59))) )
      & ( ~ v1_funct_2(X60,X58,X59)
        | X58 = k1_relset_1(X58,X59,X60)
        | X58 != k1_xboole_0
        | ~ m1_subset_1(X60,k1_zfmisc_1(k2_zfmisc_1(X58,X59))) )
      & ( X58 != k1_relset_1(X58,X59,X60)
        | v1_funct_2(X60,X58,X59)
        | X58 != k1_xboole_0
        | ~ m1_subset_1(X60,k1_zfmisc_1(k2_zfmisc_1(X58,X59))) )
      & ( ~ v1_funct_2(X60,X58,X59)
        | X60 = k1_xboole_0
        | X58 = k1_xboole_0
        | X59 != k1_xboole_0
        | ~ m1_subset_1(X60,k1_zfmisc_1(k2_zfmisc_1(X58,X59))) )
      & ( X60 != k1_xboole_0
        | v1_funct_2(X60,X58,X59)
        | X58 = k1_xboole_0
        | X59 != k1_xboole_0
        | ~ m1_subset_1(X60,k1_zfmisc_1(k2_zfmisc_1(X58,X59))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).

cnf(c_0_30,negated_conjecture,
    ( v1_funct_2(esk9_0,k1_tarski(esk7_0),esk8_0) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_31,plain,(
    ! [X61,X62,X63,X64] :
      ( ~ v1_funct_1(X64)
      | ~ v1_funct_2(X64,X61,X62)
      | ~ m1_subset_1(X64,k1_zfmisc_1(k2_zfmisc_1(X61,X62)))
      | ~ r2_hidden(X63,X61)
      | X62 = k1_xboole_0
      | r2_hidden(k1_funct_1(X64,X63),X62) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_funct_2])])).

fof(c_0_32,plain,(
    ! [X30,X31] :
      ( ~ m1_subset_1(X30,X31)
      | v1_xboole_0(X31)
      | r2_hidden(X30,X31) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).

fof(c_0_33,plain,(
    ! [X24] : m1_subset_1(esk2_1(X24),X24) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[existence_m1_subset_1])])).

fof(c_0_34,plain,(
    ! [X19] : ~ v1_xboole_0(k1_tarski(X19)) ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_xboole_0])])).

cnf(c_0_35,negated_conjecture,
    ( X1 = esk7_0
    | ~ r2_hidden(k4_tarski(X1,X2),esk9_0) ),
    inference(spm,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_36,plain,
    ( r2_hidden(k4_tarski(X4,esk6_4(X2,X1,X3,X4)),X3)
    | k1_relset_1(X1,X2,X3) != X1
    | ~ r2_hidden(X4,X1)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_37,plain,
    ( X2 = k1_relset_1(X2,X3,X1)
    | X3 = k1_xboole_0
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_38,negated_conjecture,
    ( v1_funct_2(esk9_0,k2_enumset1(esk7_0,esk7_0,esk7_0,esk7_0),esk8_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_30,c_0_20]),c_0_21]),c_0_22])).

cnf(c_0_39,negated_conjecture,
    ( esk8_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_40,plain,
    ( X3 = k1_xboole_0
    | r2_hidden(k1_funct_1(X1,X4),X3)
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ r2_hidden(X4,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_41,negated_conjecture,
    ( v1_funct_1(esk9_0) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_42,plain,
    ( v1_xboole_0(X2)
    | r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_43,plain,
    ( m1_subset_1(esk2_1(X1),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_44,plain,
    ( ~ v1_xboole_0(k1_tarski(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_45,negated_conjecture,
    ( X1 = esk7_0
    | k1_relset_1(X2,X3,esk9_0) != X2
    | ~ m1_subset_1(esk9_0,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ r2_hidden(X1,X2) ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_46,negated_conjecture,
    ( k1_relset_1(k2_enumset1(esk7_0,esk7_0,esk7_0,esk7_0),esk8_0,esk9_0) = k2_enumset1(esk7_0,esk7_0,esk7_0,esk7_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_25]),c_0_38])]),c_0_39])).

cnf(c_0_47,negated_conjecture,
    ( r2_hidden(k1_funct_1(esk9_0,X1),esk8_0)
    | ~ r2_hidden(X1,k2_enumset1(esk7_0,esk7_0,esk7_0,esk7_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_25]),c_0_41]),c_0_38])]),c_0_39])).

cnf(c_0_48,plain,
    ( v1_xboole_0(X1)
    | r2_hidden(esk2_1(X1),X1) ),
    inference(spm,[status(thm)],[c_0_42,c_0_43])).

cnf(c_0_49,plain,
    ( ~ v1_xboole_0(k2_enumset1(X1,X1,X1,X1)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_44,c_0_20]),c_0_21]),c_0_22])).

cnf(c_0_50,negated_conjecture,
    ( X1 = esk7_0
    | ~ r2_hidden(X1,k2_enumset1(esk7_0,esk7_0,esk7_0,esk7_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_25]),c_0_46])])).

cnf(c_0_51,negated_conjecture,
    ( r2_hidden(k1_funct_1(esk9_0,esk2_1(k2_enumset1(esk7_0,esk7_0,esk7_0,esk7_0))),esk8_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_48]),c_0_49])).

cnf(c_0_52,negated_conjecture,
    ( esk2_1(k2_enumset1(esk7_0,esk7_0,esk7_0,esk7_0)) = esk7_0 ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_48]),c_0_49])).

cnf(c_0_53,negated_conjecture,
    ( ~ r2_hidden(k1_funct_1(esk9_0,esk7_0),esk8_0) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_54,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[c_0_51,c_0_52]),c_0_53]),
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
% 0.12/0.34  % DateTime   : Tue Dec  1 16:02:46 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.39  # AutoSched0-Mode selected heuristic G_E___300_C18_F1_SE_CS_SP_S0Y
% 0.12/0.39  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.12/0.39  #
% 0.12/0.39  # Preprocessing time       : 0.029 s
% 0.12/0.39  
% 0.12/0.39  # Proof found!
% 0.12/0.39  # SZS status Theorem
% 0.12/0.39  # SZS output start CNFRefutation
% 0.12/0.39  fof(t61_funct_2, conjecture, ![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,k1_tarski(X1),X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))))=>(X2!=k1_xboole_0=>r2_hidden(k1_funct_1(X3,X1),X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t61_funct_2)).
% 0.12/0.39  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 0.12/0.39  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.12/0.39  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 0.12/0.39  fof(t128_zfmisc_1, axiom, ![X1, X2, X3, X4]:(r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(k1_tarski(X3),X4))<=>(X1=X3&r2_hidden(X2,X4))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t128_zfmisc_1)).
% 0.12/0.39  fof(l3_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>![X3]:(r2_hidden(X3,X2)=>r2_hidden(X3,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l3_subset_1)).
% 0.12/0.39  fof(t22_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))=>(![X4]:~((r2_hidden(X4,X2)&![X5]:~(r2_hidden(k4_tarski(X4,X5),X3))))<=>k1_relset_1(X2,X1,X3)=X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t22_relset_1)).
% 0.12/0.39  fof(d1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(((X2=k1_xboole_0=>X1=k1_xboole_0)=>(v1_funct_2(X3,X1,X2)<=>X1=k1_relset_1(X1,X2,X3)))&(X2=k1_xboole_0=>(X1=k1_xboole_0|(v1_funct_2(X3,X1,X2)<=>X3=k1_xboole_0))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_funct_2)).
% 0.12/0.39  fof(t7_funct_2, axiom, ![X1, X2, X3, X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X1,X2))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(r2_hidden(X3,X1)=>(X2=k1_xboole_0|r2_hidden(k1_funct_1(X4,X3),X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_funct_2)).
% 0.12/0.39  fof(t2_subset, axiom, ![X1, X2]:(m1_subset_1(X1,X2)=>(v1_xboole_0(X2)|r2_hidden(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_subset)).
% 0.12/0.39  fof(existence_m1_subset_1, axiom, ![X1]:?[X2]:m1_subset_1(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', existence_m1_subset_1)).
% 0.12/0.39  fof(fc2_xboole_0, axiom, ![X1]:~(v1_xboole_0(k1_tarski(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc2_xboole_0)).
% 0.12/0.39  fof(c_0_12, negated_conjecture, ~(![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,k1_tarski(X1),X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))))=>(X2!=k1_xboole_0=>r2_hidden(k1_funct_1(X3,X1),X2)))), inference(assume_negation,[status(cth)],[t61_funct_2])).
% 0.12/0.39  fof(c_0_13, negated_conjecture, (((v1_funct_1(esk9_0)&v1_funct_2(esk9_0,k1_tarski(esk7_0),esk8_0))&m1_subset_1(esk9_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk7_0),esk8_0))))&(esk8_0!=k1_xboole_0&~r2_hidden(k1_funct_1(esk9_0,esk7_0),esk8_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_12])])])).
% 0.12/0.40  fof(c_0_14, plain, ![X13]:k2_tarski(X13,X13)=k1_tarski(X13), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.12/0.40  fof(c_0_15, plain, ![X14, X15]:k1_enumset1(X14,X14,X15)=k2_tarski(X14,X15), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.12/0.40  fof(c_0_16, plain, ![X16, X17, X18]:k2_enumset1(X16,X16,X17,X18)=k1_enumset1(X16,X17,X18), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.12/0.40  fof(c_0_17, plain, ![X20, X21, X22, X23]:(((X20=X22|~r2_hidden(k4_tarski(X20,X21),k2_zfmisc_1(k1_tarski(X22),X23)))&(r2_hidden(X21,X23)|~r2_hidden(k4_tarski(X20,X21),k2_zfmisc_1(k1_tarski(X22),X23))))&(X20!=X22|~r2_hidden(X21,X23)|r2_hidden(k4_tarski(X20,X21),k2_zfmisc_1(k1_tarski(X22),X23)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t128_zfmisc_1])])])).
% 0.12/0.40  fof(c_0_18, plain, ![X26, X27, X28]:(~m1_subset_1(X27,k1_zfmisc_1(X26))|(~r2_hidden(X28,X27)|r2_hidden(X28,X26))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l3_subset_1])])])).
% 0.12/0.40  cnf(c_0_19, negated_conjecture, (m1_subset_1(esk9_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk7_0),esk8_0)))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.40  cnf(c_0_20, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.12/0.40  cnf(c_0_21, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.12/0.40  cnf(c_0_22, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.12/0.40  cnf(c_0_23, plain, (X1=X2|~r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(k1_tarski(X2),X4))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.12/0.40  cnf(c_0_24, plain, (r2_hidden(X3,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))|~r2_hidden(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.12/0.40  cnf(c_0_25, negated_conjecture, (m1_subset_1(esk9_0,k1_zfmisc_1(k2_zfmisc_1(k2_enumset1(esk7_0,esk7_0,esk7_0,esk7_0),esk8_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19, c_0_20]), c_0_21]), c_0_22])).
% 0.12/0.40  cnf(c_0_26, plain, (X1=X2|~r2_hidden(k4_tarski(X1,X3),k2_zfmisc_1(k2_enumset1(X2,X2,X2,X2),X4))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_23, c_0_20]), c_0_21]), c_0_22])).
% 0.12/0.40  cnf(c_0_27, negated_conjecture, (r2_hidden(X1,k2_zfmisc_1(k2_enumset1(esk7_0,esk7_0,esk7_0,esk7_0),esk8_0))|~r2_hidden(X1,esk9_0)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.12/0.40  fof(c_0_28, plain, ![X51, X52, X53, X55, X56]:(((r2_hidden(esk5_3(X51,X52,X53),X52)|k1_relset_1(X52,X51,X53)=X52|~m1_subset_1(X53,k1_zfmisc_1(k2_zfmisc_1(X52,X51))))&(~r2_hidden(k4_tarski(esk5_3(X51,X52,X53),X55),X53)|k1_relset_1(X52,X51,X53)=X52|~m1_subset_1(X53,k1_zfmisc_1(k2_zfmisc_1(X52,X51)))))&(k1_relset_1(X52,X51,X53)!=X52|(~r2_hidden(X56,X52)|r2_hidden(k4_tarski(X56,esk6_4(X51,X52,X53,X56)),X53))|~m1_subset_1(X53,k1_zfmisc_1(k2_zfmisc_1(X52,X51))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t22_relset_1])])])])])])).
% 0.12/0.40  fof(c_0_29, plain, ![X58, X59, X60]:((((~v1_funct_2(X60,X58,X59)|X58=k1_relset_1(X58,X59,X60)|X59=k1_xboole_0|~m1_subset_1(X60,k1_zfmisc_1(k2_zfmisc_1(X58,X59))))&(X58!=k1_relset_1(X58,X59,X60)|v1_funct_2(X60,X58,X59)|X59=k1_xboole_0|~m1_subset_1(X60,k1_zfmisc_1(k2_zfmisc_1(X58,X59)))))&((~v1_funct_2(X60,X58,X59)|X58=k1_relset_1(X58,X59,X60)|X58!=k1_xboole_0|~m1_subset_1(X60,k1_zfmisc_1(k2_zfmisc_1(X58,X59))))&(X58!=k1_relset_1(X58,X59,X60)|v1_funct_2(X60,X58,X59)|X58!=k1_xboole_0|~m1_subset_1(X60,k1_zfmisc_1(k2_zfmisc_1(X58,X59))))))&((~v1_funct_2(X60,X58,X59)|X60=k1_xboole_0|X58=k1_xboole_0|X59!=k1_xboole_0|~m1_subset_1(X60,k1_zfmisc_1(k2_zfmisc_1(X58,X59))))&(X60!=k1_xboole_0|v1_funct_2(X60,X58,X59)|X58=k1_xboole_0|X59!=k1_xboole_0|~m1_subset_1(X60,k1_zfmisc_1(k2_zfmisc_1(X58,X59)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).
% 0.12/0.40  cnf(c_0_30, negated_conjecture, (v1_funct_2(esk9_0,k1_tarski(esk7_0),esk8_0)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.40  fof(c_0_31, plain, ![X61, X62, X63, X64]:(~v1_funct_1(X64)|~v1_funct_2(X64,X61,X62)|~m1_subset_1(X64,k1_zfmisc_1(k2_zfmisc_1(X61,X62)))|(~r2_hidden(X63,X61)|(X62=k1_xboole_0|r2_hidden(k1_funct_1(X64,X63),X62)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_funct_2])])).
% 0.12/0.40  fof(c_0_32, plain, ![X30, X31]:(~m1_subset_1(X30,X31)|(v1_xboole_0(X31)|r2_hidden(X30,X31))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).
% 0.12/0.40  fof(c_0_33, plain, ![X24]:m1_subset_1(esk2_1(X24),X24), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[existence_m1_subset_1])])).
% 0.12/0.40  fof(c_0_34, plain, ![X19]:~v1_xboole_0(k1_tarski(X19)), inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_xboole_0])])).
% 0.12/0.40  cnf(c_0_35, negated_conjecture, (X1=esk7_0|~r2_hidden(k4_tarski(X1,X2),esk9_0)), inference(spm,[status(thm)],[c_0_26, c_0_27])).
% 0.12/0.40  cnf(c_0_36, plain, (r2_hidden(k4_tarski(X4,esk6_4(X2,X1,X3,X4)),X3)|k1_relset_1(X1,X2,X3)!=X1|~r2_hidden(X4,X1)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.12/0.40  cnf(c_0_37, plain, (X2=k1_relset_1(X2,X3,X1)|X3=k1_xboole_0|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.12/0.40  cnf(c_0_38, negated_conjecture, (v1_funct_2(esk9_0,k2_enumset1(esk7_0,esk7_0,esk7_0,esk7_0),esk8_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_30, c_0_20]), c_0_21]), c_0_22])).
% 0.12/0.40  cnf(c_0_39, negated_conjecture, (esk8_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.40  cnf(c_0_40, plain, (X3=k1_xboole_0|r2_hidden(k1_funct_1(X1,X4),X3)|~v1_funct_1(X1)|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~r2_hidden(X4,X2)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.12/0.40  cnf(c_0_41, negated_conjecture, (v1_funct_1(esk9_0)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.40  cnf(c_0_42, plain, (v1_xboole_0(X2)|r2_hidden(X1,X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.12/0.40  cnf(c_0_43, plain, (m1_subset_1(esk2_1(X1),X1)), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.12/0.40  cnf(c_0_44, plain, (~v1_xboole_0(k1_tarski(X1))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.12/0.40  cnf(c_0_45, negated_conjecture, (X1=esk7_0|k1_relset_1(X2,X3,esk9_0)!=X2|~m1_subset_1(esk9_0,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~r2_hidden(X1,X2)), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 0.12/0.40  cnf(c_0_46, negated_conjecture, (k1_relset_1(k2_enumset1(esk7_0,esk7_0,esk7_0,esk7_0),esk8_0,esk9_0)=k2_enumset1(esk7_0,esk7_0,esk7_0,esk7_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_25]), c_0_38])]), c_0_39])).
% 0.12/0.40  cnf(c_0_47, negated_conjecture, (r2_hidden(k1_funct_1(esk9_0,X1),esk8_0)|~r2_hidden(X1,k2_enumset1(esk7_0,esk7_0,esk7_0,esk7_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_25]), c_0_41]), c_0_38])]), c_0_39])).
% 0.12/0.40  cnf(c_0_48, plain, (v1_xboole_0(X1)|r2_hidden(esk2_1(X1),X1)), inference(spm,[status(thm)],[c_0_42, c_0_43])).
% 0.12/0.40  cnf(c_0_49, plain, (~v1_xboole_0(k2_enumset1(X1,X1,X1,X1))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_44, c_0_20]), c_0_21]), c_0_22])).
% 0.12/0.40  cnf(c_0_50, negated_conjecture, (X1=esk7_0|~r2_hidden(X1,k2_enumset1(esk7_0,esk7_0,esk7_0,esk7_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_25]), c_0_46])])).
% 0.12/0.40  cnf(c_0_51, negated_conjecture, (r2_hidden(k1_funct_1(esk9_0,esk2_1(k2_enumset1(esk7_0,esk7_0,esk7_0,esk7_0))),esk8_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_48]), c_0_49])).
% 0.12/0.40  cnf(c_0_52, negated_conjecture, (esk2_1(k2_enumset1(esk7_0,esk7_0,esk7_0,esk7_0))=esk7_0), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_48]), c_0_49])).
% 0.12/0.40  cnf(c_0_53, negated_conjecture, (~r2_hidden(k1_funct_1(esk9_0,esk7_0),esk8_0)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.40  cnf(c_0_54, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[c_0_51, c_0_52]), c_0_53]), ['proof']).
% 0.12/0.40  # SZS output end CNFRefutation
% 0.12/0.40  # Proof object total steps             : 55
% 0.12/0.40  # Proof object clause steps            : 30
% 0.12/0.40  # Proof object formula steps           : 25
% 0.12/0.40  # Proof object conjectures             : 19
% 0.12/0.40  # Proof object clause conjectures      : 16
% 0.12/0.40  # Proof object formula conjectures     : 3
% 0.12/0.40  # Proof object initial clauses used    : 16
% 0.12/0.40  # Proof object initial formulas used   : 12
% 0.12/0.40  # Proof object generating inferences   : 9
% 0.12/0.40  # Proof object simplifying inferences  : 25
% 0.12/0.40  # Training examples: 0 positive, 0 negative
% 0.12/0.40  # Parsed axioms                        : 22
% 0.12/0.40  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.40  # Initial clauses                      : 40
% 0.12/0.40  # Removed in clause preprocessing      : 3
% 0.12/0.40  # Initial clauses in saturation        : 37
% 0.12/0.40  # Processed clauses                    : 241
% 0.12/0.40  # ...of these trivial                  : 10
% 0.12/0.40  # ...subsumed                          : 50
% 0.12/0.40  # ...remaining for further processing  : 181
% 0.12/0.40  # Other redundant clauses eliminated   : 6
% 0.12/0.40  # Clauses deleted for lack of memory   : 0
% 0.12/0.40  # Backward-subsumed                    : 3
% 0.12/0.40  # Backward-rewritten                   : 3
% 0.12/0.40  # Generated clauses                    : 563
% 0.12/0.40  # ...of the previous two non-trivial   : 434
% 0.12/0.40  # Contextual simplify-reflections      : 0
% 0.12/0.40  # Paramodulations                      : 558
% 0.12/0.40  # Factorizations                       : 0
% 0.12/0.40  # Equation resolutions                 : 6
% 0.12/0.40  # Propositional unsat checks           : 0
% 0.12/0.40  #    Propositional check models        : 0
% 0.12/0.40  #    Propositional check unsatisfiable : 0
% 0.12/0.40  #    Propositional clauses             : 0
% 0.12/0.40  #    Propositional clauses after purity: 0
% 0.12/0.40  #    Propositional unsat core size     : 0
% 0.12/0.40  #    Propositional preprocessing time  : 0.000
% 0.12/0.40  #    Propositional encoding time       : 0.000
% 0.12/0.40  #    Propositional solver time         : 0.000
% 0.12/0.40  #    Success case prop preproc time    : 0.000
% 0.12/0.40  #    Success case prop encoding time   : 0.000
% 0.12/0.40  #    Success case prop solver time     : 0.000
% 0.12/0.40  # Current number of processed clauses  : 170
% 0.12/0.40  #    Positive orientable unit clauses  : 58
% 0.12/0.40  #    Positive unorientable unit clauses: 0
% 0.12/0.40  #    Negative unit clauses             : 23
% 0.12/0.40  #    Non-unit-clauses                  : 89
% 0.12/0.40  # Current number of unprocessed clauses: 229
% 0.12/0.40  # ...number of literals in the above   : 645
% 0.12/0.40  # Current number of archived formulas  : 0
% 0.12/0.40  # Current number of archived clauses   : 9
% 0.12/0.40  # Clause-clause subsumption calls (NU) : 495
% 0.12/0.40  # Rec. Clause-clause subsumption calls : 313
% 0.12/0.40  # Non-unit clause-clause subsumptions  : 19
% 0.12/0.40  # Unit Clause-clause subsumption calls : 81
% 0.12/0.40  # Rewrite failures with RHS unbound    : 0
% 0.12/0.40  # BW rewrite match attempts            : 290
% 0.12/0.40  # BW rewrite match successes           : 3
% 0.12/0.40  # Condensation attempts                : 0
% 0.12/0.40  # Condensation successes               : 0
% 0.12/0.40  # Termbank termtop insertions          : 10813
% 0.12/0.40  
% 0.12/0.40  # -------------------------------------------------
% 0.12/0.40  # User time                : 0.050 s
% 0.12/0.40  # System time              : 0.007 s
% 0.12/0.40  # Total time               : 0.057 s
% 0.12/0.40  # Maximum resident set size: 1596 pages
%------------------------------------------------------------------------------
