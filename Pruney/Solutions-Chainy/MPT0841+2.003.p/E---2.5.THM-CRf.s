%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:58:42 EST 2020

% Result     : Theorem 0.11s
% Output     : CNFRefutation 0.11s
% Verified   : 
% Statistics : Number of formulae       :   43 ( 125 expanded)
%              Number of clauses        :   26 (  51 expanded)
%              Number of leaves         :    8 (  30 expanded)
%              Depth                    :   10
%              Number of atoms          :  166 ( 731 expanded)
%              Number of equality atoms :   15 (  30 expanded)
%              Maximal formula depth    :   19 (   5 average)
%              Maximal clause size      :   26 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t52_relset_1,conjecture,(
    ! [X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( ~ v1_xboole_0(X2)
         => ! [X3] :
              ( ~ v1_xboole_0(X3)
             => ! [X4] :
                  ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))
                 => ! [X5] :
                      ( m1_subset_1(X5,X1)
                     => ( r2_hidden(X5,k7_relset_1(X3,X1,X4,X2))
                      <=> ? [X6] :
                            ( m1_subset_1(X6,X3)
                            & r2_hidden(k4_tarski(X6,X5),X4)
                            & r2_hidden(X6,X2) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t52_relset_1)).

fof(dt_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => m1_subset_1(k1_relset_1(X1,X2,X3),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k1_relset_1)).

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relset_1)).

fof(d13_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2,X3] :
          ( X3 = k9_relat_1(X1,X2)
        <=> ! [X4] :
              ( r2_hidden(X4,X3)
            <=> ? [X5] :
                  ( r2_hidden(k4_tarski(X5,X4),X1)
                  & r2_hidden(X5,X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d13_relat_1)).

fof(t4_subset,axiom,(
    ! [X1,X2,X3] :
      ( ( r2_hidden(X1,X2)
        & m1_subset_1(X2,k1_zfmisc_1(X3)) )
     => m1_subset_1(X1,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_subset)).

fof(t143_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( r2_hidden(X1,k9_relat_1(X3,X2))
      <=> ? [X4] :
            ( r2_hidden(X4,k1_relat_1(X3))
            & r2_hidden(k4_tarski(X4,X1),X3)
            & r2_hidden(X4,X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t143_relat_1)).

fof(redefinition_k7_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k7_relset_1(X1,X2,X3,X4) = k9_relat_1(X3,X4) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k7_relset_1)).

fof(c_0_8,negated_conjecture,(
    ~ ! [X1] :
        ( ~ v1_xboole_0(X1)
       => ! [X2] :
            ( ~ v1_xboole_0(X2)
           => ! [X3] :
                ( ~ v1_xboole_0(X3)
               => ! [X4] :
                    ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))
                   => ! [X5] :
                        ( m1_subset_1(X5,X1)
                       => ( r2_hidden(X5,k7_relset_1(X3,X1,X4,X2))
                        <=> ? [X6] :
                              ( m1_subset_1(X6,X3)
                              & r2_hidden(k4_tarski(X6,X5),X4)
                              & r2_hidden(X6,X2) ) ) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t52_relset_1])).

fof(c_0_9,plain,(
    ! [X30,X31,X32] :
      ( ~ m1_subset_1(X32,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))
      | m1_subset_1(k1_relset_1(X30,X31,X32),k1_zfmisc_1(X30)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_relset_1])])).

fof(c_0_10,plain,(
    ! [X33,X34,X35] :
      ( ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34)))
      | k1_relset_1(X33,X34,X35) = k1_relat_1(X35) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

fof(c_0_11,plain,(
    ! [X27,X28,X29] :
      ( ~ m1_subset_1(X29,k1_zfmisc_1(k2_zfmisc_1(X27,X28)))
      | v1_relat_1(X29) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

fof(c_0_12,negated_conjecture,(
    ! [X45] :
      ( ~ v1_xboole_0(esk5_0)
      & ~ v1_xboole_0(esk6_0)
      & ~ v1_xboole_0(esk7_0)
      & m1_subset_1(esk8_0,k1_zfmisc_1(k2_zfmisc_1(esk7_0,esk5_0)))
      & m1_subset_1(esk9_0,esk5_0)
      & ( ~ r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0))
        | ~ m1_subset_1(X45,esk7_0)
        | ~ r2_hidden(k4_tarski(X45,esk9_0),esk8_0)
        | ~ r2_hidden(X45,esk6_0) )
      & ( m1_subset_1(esk10_0,esk7_0)
        | r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0)) )
      & ( r2_hidden(k4_tarski(esk10_0,esk9_0),esk8_0)
        | r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0)) )
      & ( r2_hidden(esk10_0,esk6_0)
        | r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0)) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_8])])])])])])).

cnf(c_0_13,plain,
    ( m1_subset_1(k1_relset_1(X2,X3,X1),k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_14,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_15,plain,(
    ! [X10,X11,X12,X13,X15,X16,X17,X18,X20] :
      ( ( r2_hidden(k4_tarski(esk1_4(X10,X11,X12,X13),X13),X10)
        | ~ r2_hidden(X13,X12)
        | X12 != k9_relat_1(X10,X11)
        | ~ v1_relat_1(X10) )
      & ( r2_hidden(esk1_4(X10,X11,X12,X13),X11)
        | ~ r2_hidden(X13,X12)
        | X12 != k9_relat_1(X10,X11)
        | ~ v1_relat_1(X10) )
      & ( ~ r2_hidden(k4_tarski(X16,X15),X10)
        | ~ r2_hidden(X16,X11)
        | r2_hidden(X15,X12)
        | X12 != k9_relat_1(X10,X11)
        | ~ v1_relat_1(X10) )
      & ( ~ r2_hidden(esk2_3(X10,X17,X18),X18)
        | ~ r2_hidden(k4_tarski(X20,esk2_3(X10,X17,X18)),X10)
        | ~ r2_hidden(X20,X17)
        | X18 = k9_relat_1(X10,X17)
        | ~ v1_relat_1(X10) )
      & ( r2_hidden(k4_tarski(esk3_3(X10,X17,X18),esk2_3(X10,X17,X18)),X10)
        | r2_hidden(esk2_3(X10,X17,X18),X18)
        | X18 = k9_relat_1(X10,X17)
        | ~ v1_relat_1(X10) )
      & ( r2_hidden(esk3_3(X10,X17,X18),X17)
        | r2_hidden(esk2_3(X10,X17,X18),X18)
        | X18 = k9_relat_1(X10,X17)
        | ~ v1_relat_1(X10) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d13_relat_1])])])])])])).

cnf(c_0_16,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_17,negated_conjecture,
    ( m1_subset_1(esk8_0,k1_zfmisc_1(k2_zfmisc_1(esk7_0,esk5_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

fof(c_0_18,plain,(
    ! [X7,X8,X9] :
      ( ~ r2_hidden(X7,X8)
      | ~ m1_subset_1(X8,k1_zfmisc_1(X9))
      | m1_subset_1(X7,X9) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t4_subset])])).

cnf(c_0_19,plain,
    ( m1_subset_1(k1_relat_1(X1),k1_zfmisc_1(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(spm,[status(thm)],[c_0_13,c_0_14])).

cnf(c_0_20,plain,
    ( r2_hidden(X2,X5)
    | ~ r2_hidden(k4_tarski(X1,X2),X3)
    | ~ r2_hidden(X1,X4)
    | X5 != k9_relat_1(X3,X4)
    | ~ v1_relat_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_21,negated_conjecture,
    ( r2_hidden(k4_tarski(esk10_0,esk9_0),esk8_0)
    | r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_22,negated_conjecture,
    ( v1_relat_1(esk8_0) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

fof(c_0_23,plain,(
    ! [X22,X23,X24,X26] :
      ( ( r2_hidden(esk4_3(X22,X23,X24),k1_relat_1(X24))
        | ~ r2_hidden(X22,k9_relat_1(X24,X23))
        | ~ v1_relat_1(X24) )
      & ( r2_hidden(k4_tarski(esk4_3(X22,X23,X24),X22),X24)
        | ~ r2_hidden(X22,k9_relat_1(X24,X23))
        | ~ v1_relat_1(X24) )
      & ( r2_hidden(esk4_3(X22,X23,X24),X23)
        | ~ r2_hidden(X22,k9_relat_1(X24,X23))
        | ~ v1_relat_1(X24) )
      & ( ~ r2_hidden(X26,k1_relat_1(X24))
        | ~ r2_hidden(k4_tarski(X26,X22),X24)
        | ~ r2_hidden(X26,X23)
        | r2_hidden(X22,k9_relat_1(X24,X23))
        | ~ v1_relat_1(X24) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t143_relat_1])])])])])).

cnf(c_0_24,plain,
    ( m1_subset_1(X1,X3)
    | ~ r2_hidden(X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_25,negated_conjecture,
    ( m1_subset_1(k1_relat_1(esk8_0),k1_zfmisc_1(esk7_0)) ),
    inference(spm,[status(thm)],[c_0_19,c_0_17])).

cnf(c_0_26,negated_conjecture,
    ( r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0))
    | r2_hidden(esk9_0,X1)
    | X1 != k9_relat_1(esk8_0,X2)
    | ~ r2_hidden(esk10_0,X2) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_21]),c_0_22])])).

cnf(c_0_27,negated_conjecture,
    ( ~ r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0))
    | ~ m1_subset_1(X1,esk7_0)
    | ~ r2_hidden(k4_tarski(X1,esk9_0),esk8_0)
    | ~ r2_hidden(X1,esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_28,plain,
    ( r2_hidden(k4_tarski(esk4_3(X1,X2,X3),X1),X3)
    | ~ r2_hidden(X1,k9_relat_1(X3,X2))
    | ~ v1_relat_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_29,negated_conjecture,
    ( m1_subset_1(X1,esk7_0)
    | ~ r2_hidden(X1,k1_relat_1(esk8_0)) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_30,plain,
    ( r2_hidden(esk4_3(X1,X2,X3),k1_relat_1(X3))
    | ~ r2_hidden(X1,k9_relat_1(X3,X2))
    | ~ v1_relat_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_31,negated_conjecture,
    ( r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0))
    | r2_hidden(esk9_0,k9_relat_1(esk8_0,X1))
    | ~ r2_hidden(esk10_0,X1) ),
    inference(er,[status(thm)],[c_0_26])).

cnf(c_0_32,negated_conjecture,
    ( r2_hidden(esk10_0,esk6_0)
    | r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

fof(c_0_33,plain,(
    ! [X36,X37,X38,X39] :
      ( ~ m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X36,X37)))
      | k7_relset_1(X36,X37,X38,X39) = k9_relat_1(X38,X39) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_relset_1])])).

cnf(c_0_34,negated_conjecture,
    ( ~ m1_subset_1(esk4_3(esk9_0,X1,esk8_0),esk7_0)
    | ~ r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0))
    | ~ r2_hidden(esk4_3(esk9_0,X1,esk8_0),esk6_0)
    | ~ r2_hidden(esk9_0,k9_relat_1(esk8_0,X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_28]),c_0_22])])).

cnf(c_0_35,negated_conjecture,
    ( m1_subset_1(esk4_3(X1,X2,esk8_0),esk7_0)
    | ~ r2_hidden(X1,k9_relat_1(esk8_0,X2)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30]),c_0_22])])).

cnf(c_0_36,negated_conjecture,
    ( r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0))
    | r2_hidden(esk9_0,k9_relat_1(esk8_0,esk6_0)) ),
    inference(spm,[status(thm)],[c_0_31,c_0_32])).

cnf(c_0_37,plain,
    ( k7_relset_1(X2,X3,X1,X4) = k9_relat_1(X1,X4)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_38,negated_conjecture,
    ( ~ r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0))
    | ~ r2_hidden(esk4_3(esk9_0,X1,esk8_0),esk6_0)
    | ~ r2_hidden(esk9_0,k9_relat_1(esk8_0,X1)) ),
    inference(spm,[status(thm)],[c_0_34,c_0_35])).

cnf(c_0_39,plain,
    ( r2_hidden(esk4_3(X1,X2,X3),X2)
    | ~ r2_hidden(X1,k9_relat_1(X3,X2))
    | ~ v1_relat_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_40,negated_conjecture,
    ( r2_hidden(esk9_0,k9_relat_1(esk8_0,esk6_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_37]),c_0_17])])).

cnf(c_0_41,negated_conjecture,
    ( ~ r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_39]),c_0_40]),c_0_22])])).

cnf(c_0_42,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_37]),c_0_40]),c_0_17])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.11/0.31  % Computer   : n020.cluster.edu
% 0.11/0.31  % Model      : x86_64 x86_64
% 0.11/0.31  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.11/0.31  % Memory     : 8042.1875MB
% 0.11/0.31  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.11/0.31  % CPULimit   : 60
% 0.11/0.31  % WCLimit    : 600
% 0.11/0.31  % DateTime   : Tue Dec  1 18:05:22 EST 2020
% 0.11/0.32  % CPUTime    : 
% 0.11/0.32  # Version: 2.5pre002
% 0.11/0.32  # No SInE strategy applied
% 0.11/0.32  # Trying AutoSched0 for 299 seconds
% 0.11/0.35  # AutoSched0-Mode selected heuristic G_E___207_B07_F1_AE_CS_SP_PI_PS_S0Y
% 0.11/0.35  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.11/0.35  #
% 0.11/0.35  # Preprocessing time       : 0.028 s
% 0.11/0.35  # Presaturation interreduction done
% 0.11/0.35  
% 0.11/0.35  # Proof found!
% 0.11/0.35  # SZS status Theorem
% 0.11/0.35  # SZS output start CNFRefutation
% 0.11/0.35  fof(t52_relset_1, conjecture, ![X1]:(~(v1_xboole_0(X1))=>![X2]:(~(v1_xboole_0(X2))=>![X3]:(~(v1_xboole_0(X3))=>![X4]:(m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))=>![X5]:(m1_subset_1(X5,X1)=>(r2_hidden(X5,k7_relset_1(X3,X1,X4,X2))<=>?[X6]:((m1_subset_1(X6,X3)&r2_hidden(k4_tarski(X6,X5),X4))&r2_hidden(X6,X2)))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t52_relset_1)).
% 0.11/0.35  fof(dt_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>m1_subset_1(k1_relset_1(X1,X2,X3),k1_zfmisc_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k1_relset_1)).
% 0.11/0.35  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.11/0.35  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.11/0.35  fof(d13_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2, X3]:(X3=k9_relat_1(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>?[X5]:(r2_hidden(k4_tarski(X5,X4),X1)&r2_hidden(X5,X2))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d13_relat_1)).
% 0.11/0.35  fof(t4_subset, axiom, ![X1, X2, X3]:((r2_hidden(X1,X2)&m1_subset_1(X2,k1_zfmisc_1(X3)))=>m1_subset_1(X1,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t4_subset)).
% 0.11/0.35  fof(t143_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>(r2_hidden(X1,k9_relat_1(X3,X2))<=>?[X4]:((r2_hidden(X4,k1_relat_1(X3))&r2_hidden(k4_tarski(X4,X1),X3))&r2_hidden(X4,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t143_relat_1)).
% 0.11/0.35  fof(redefinition_k7_relset_1, axiom, ![X1, X2, X3, X4]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k7_relset_1(X1,X2,X3,X4)=k9_relat_1(X3,X4)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k7_relset_1)).
% 0.11/0.35  fof(c_0_8, negated_conjecture, ~(![X1]:(~(v1_xboole_0(X1))=>![X2]:(~(v1_xboole_0(X2))=>![X3]:(~(v1_xboole_0(X3))=>![X4]:(m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))=>![X5]:(m1_subset_1(X5,X1)=>(r2_hidden(X5,k7_relset_1(X3,X1,X4,X2))<=>?[X6]:((m1_subset_1(X6,X3)&r2_hidden(k4_tarski(X6,X5),X4))&r2_hidden(X6,X2))))))))), inference(assume_negation,[status(cth)],[t52_relset_1])).
% 0.11/0.35  fof(c_0_9, plain, ![X30, X31, X32]:(~m1_subset_1(X32,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))|m1_subset_1(k1_relset_1(X30,X31,X32),k1_zfmisc_1(X30))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_relset_1])])).
% 0.11/0.35  fof(c_0_10, plain, ![X33, X34, X35]:(~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34)))|k1_relset_1(X33,X34,X35)=k1_relat_1(X35)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.11/0.35  fof(c_0_11, plain, ![X27, X28, X29]:(~m1_subset_1(X29,k1_zfmisc_1(k2_zfmisc_1(X27,X28)))|v1_relat_1(X29)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.11/0.35  fof(c_0_12, negated_conjecture, ![X45]:(~v1_xboole_0(esk5_0)&(~v1_xboole_0(esk6_0)&(~v1_xboole_0(esk7_0)&(m1_subset_1(esk8_0,k1_zfmisc_1(k2_zfmisc_1(esk7_0,esk5_0)))&(m1_subset_1(esk9_0,esk5_0)&((~r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0))|(~m1_subset_1(X45,esk7_0)|~r2_hidden(k4_tarski(X45,esk9_0),esk8_0)|~r2_hidden(X45,esk6_0)))&(((m1_subset_1(esk10_0,esk7_0)|r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0)))&(r2_hidden(k4_tarski(esk10_0,esk9_0),esk8_0)|r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0))))&(r2_hidden(esk10_0,esk6_0)|r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0)))))))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_8])])])])])])).
% 0.11/0.35  cnf(c_0_13, plain, (m1_subset_1(k1_relset_1(X2,X3,X1),k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.11/0.35  cnf(c_0_14, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.11/0.35  fof(c_0_15, plain, ![X10, X11, X12, X13, X15, X16, X17, X18, X20]:((((r2_hidden(k4_tarski(esk1_4(X10,X11,X12,X13),X13),X10)|~r2_hidden(X13,X12)|X12!=k9_relat_1(X10,X11)|~v1_relat_1(X10))&(r2_hidden(esk1_4(X10,X11,X12,X13),X11)|~r2_hidden(X13,X12)|X12!=k9_relat_1(X10,X11)|~v1_relat_1(X10)))&(~r2_hidden(k4_tarski(X16,X15),X10)|~r2_hidden(X16,X11)|r2_hidden(X15,X12)|X12!=k9_relat_1(X10,X11)|~v1_relat_1(X10)))&((~r2_hidden(esk2_3(X10,X17,X18),X18)|(~r2_hidden(k4_tarski(X20,esk2_3(X10,X17,X18)),X10)|~r2_hidden(X20,X17))|X18=k9_relat_1(X10,X17)|~v1_relat_1(X10))&((r2_hidden(k4_tarski(esk3_3(X10,X17,X18),esk2_3(X10,X17,X18)),X10)|r2_hidden(esk2_3(X10,X17,X18),X18)|X18=k9_relat_1(X10,X17)|~v1_relat_1(X10))&(r2_hidden(esk3_3(X10,X17,X18),X17)|r2_hidden(esk2_3(X10,X17,X18),X18)|X18=k9_relat_1(X10,X17)|~v1_relat_1(X10))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d13_relat_1])])])])])])).
% 0.11/0.35  cnf(c_0_16, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.11/0.35  cnf(c_0_17, negated_conjecture, (m1_subset_1(esk8_0,k1_zfmisc_1(k2_zfmisc_1(esk7_0,esk5_0)))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.11/0.35  fof(c_0_18, plain, ![X7, X8, X9]:(~r2_hidden(X7,X8)|~m1_subset_1(X8,k1_zfmisc_1(X9))|m1_subset_1(X7,X9)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t4_subset])])).
% 0.11/0.35  cnf(c_0_19, plain, (m1_subset_1(k1_relat_1(X1),k1_zfmisc_1(X2))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(spm,[status(thm)],[c_0_13, c_0_14])).
% 0.11/0.35  cnf(c_0_20, plain, (r2_hidden(X2,X5)|~r2_hidden(k4_tarski(X1,X2),X3)|~r2_hidden(X1,X4)|X5!=k9_relat_1(X3,X4)|~v1_relat_1(X3)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.11/0.35  cnf(c_0_21, negated_conjecture, (r2_hidden(k4_tarski(esk10_0,esk9_0),esk8_0)|r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.11/0.35  cnf(c_0_22, negated_conjecture, (v1_relat_1(esk8_0)), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.11/0.35  fof(c_0_23, plain, ![X22, X23, X24, X26]:((((r2_hidden(esk4_3(X22,X23,X24),k1_relat_1(X24))|~r2_hidden(X22,k9_relat_1(X24,X23))|~v1_relat_1(X24))&(r2_hidden(k4_tarski(esk4_3(X22,X23,X24),X22),X24)|~r2_hidden(X22,k9_relat_1(X24,X23))|~v1_relat_1(X24)))&(r2_hidden(esk4_3(X22,X23,X24),X23)|~r2_hidden(X22,k9_relat_1(X24,X23))|~v1_relat_1(X24)))&(~r2_hidden(X26,k1_relat_1(X24))|~r2_hidden(k4_tarski(X26,X22),X24)|~r2_hidden(X26,X23)|r2_hidden(X22,k9_relat_1(X24,X23))|~v1_relat_1(X24))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t143_relat_1])])])])])).
% 0.11/0.35  cnf(c_0_24, plain, (m1_subset_1(X1,X3)|~r2_hidden(X1,X2)|~m1_subset_1(X2,k1_zfmisc_1(X3))), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.11/0.35  cnf(c_0_25, negated_conjecture, (m1_subset_1(k1_relat_1(esk8_0),k1_zfmisc_1(esk7_0))), inference(spm,[status(thm)],[c_0_19, c_0_17])).
% 0.11/0.35  cnf(c_0_26, negated_conjecture, (r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0))|r2_hidden(esk9_0,X1)|X1!=k9_relat_1(esk8_0,X2)|~r2_hidden(esk10_0,X2)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20, c_0_21]), c_0_22])])).
% 0.11/0.35  cnf(c_0_27, negated_conjecture, (~r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0))|~m1_subset_1(X1,esk7_0)|~r2_hidden(k4_tarski(X1,esk9_0),esk8_0)|~r2_hidden(X1,esk6_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.11/0.35  cnf(c_0_28, plain, (r2_hidden(k4_tarski(esk4_3(X1,X2,X3),X1),X3)|~r2_hidden(X1,k9_relat_1(X3,X2))|~v1_relat_1(X3)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.11/0.35  cnf(c_0_29, negated_conjecture, (m1_subset_1(X1,esk7_0)|~r2_hidden(X1,k1_relat_1(esk8_0))), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.11/0.35  cnf(c_0_30, plain, (r2_hidden(esk4_3(X1,X2,X3),k1_relat_1(X3))|~r2_hidden(X1,k9_relat_1(X3,X2))|~v1_relat_1(X3)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.11/0.35  cnf(c_0_31, negated_conjecture, (r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0))|r2_hidden(esk9_0,k9_relat_1(esk8_0,X1))|~r2_hidden(esk10_0,X1)), inference(er,[status(thm)],[c_0_26])).
% 0.11/0.35  cnf(c_0_32, negated_conjecture, (r2_hidden(esk10_0,esk6_0)|r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.11/0.35  fof(c_0_33, plain, ![X36, X37, X38, X39]:(~m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X36,X37)))|k7_relset_1(X36,X37,X38,X39)=k9_relat_1(X38,X39)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_relset_1])])).
% 0.11/0.35  cnf(c_0_34, negated_conjecture, (~m1_subset_1(esk4_3(esk9_0,X1,esk8_0),esk7_0)|~r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0))|~r2_hidden(esk4_3(esk9_0,X1,esk8_0),esk6_0)|~r2_hidden(esk9_0,k9_relat_1(esk8_0,X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_28]), c_0_22])])).
% 0.11/0.35  cnf(c_0_35, negated_conjecture, (m1_subset_1(esk4_3(X1,X2,esk8_0),esk7_0)|~r2_hidden(X1,k9_relat_1(esk8_0,X2))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_30]), c_0_22])])).
% 0.11/0.35  cnf(c_0_36, negated_conjecture, (r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0))|r2_hidden(esk9_0,k9_relat_1(esk8_0,esk6_0))), inference(spm,[status(thm)],[c_0_31, c_0_32])).
% 0.11/0.35  cnf(c_0_37, plain, (k7_relset_1(X2,X3,X1,X4)=k9_relat_1(X1,X4)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.11/0.35  cnf(c_0_38, negated_conjecture, (~r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0))|~r2_hidden(esk4_3(esk9_0,X1,esk8_0),esk6_0)|~r2_hidden(esk9_0,k9_relat_1(esk8_0,X1))), inference(spm,[status(thm)],[c_0_34, c_0_35])).
% 0.11/0.35  cnf(c_0_39, plain, (r2_hidden(esk4_3(X1,X2,X3),X2)|~r2_hidden(X1,k9_relat_1(X3,X2))|~v1_relat_1(X3)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.11/0.35  cnf(c_0_40, negated_conjecture, (r2_hidden(esk9_0,k9_relat_1(esk8_0,esk6_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_37]), c_0_17])])).
% 0.11/0.35  cnf(c_0_41, negated_conjecture, (~r2_hidden(esk9_0,k7_relset_1(esk7_0,esk5_0,esk8_0,esk6_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_39]), c_0_40]), c_0_22])])).
% 0.11/0.35  cnf(c_0_42, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_37]), c_0_40]), c_0_17])]), ['proof']).
% 0.11/0.35  # SZS output end CNFRefutation
% 0.11/0.35  # Proof object total steps             : 43
% 0.11/0.35  # Proof object clause steps            : 26
% 0.11/0.35  # Proof object formula steps           : 17
% 0.11/0.35  # Proof object conjectures             : 19
% 0.11/0.35  # Proof object clause conjectures      : 16
% 0.11/0.35  # Proof object formula conjectures     : 3
% 0.11/0.35  # Proof object initial clauses used    : 13
% 0.11/0.35  # Proof object initial formulas used   : 8
% 0.11/0.35  # Proof object generating inferences   : 13
% 0.11/0.35  # Proof object simplifying inferences  : 14
% 0.11/0.35  # Training examples: 0 positive, 0 negative
% 0.11/0.35  # Parsed axioms                        : 8
% 0.11/0.35  # Removed by relevancy pruning/SinE    : 0
% 0.11/0.35  # Initial clauses                      : 24
% 0.11/0.35  # Removed in clause preprocessing      : 0
% 0.11/0.35  # Initial clauses in saturation        : 24
% 0.11/0.35  # Processed clauses                    : 69
% 0.11/0.35  # ...of these trivial                  : 0
% 0.11/0.35  # ...subsumed                          : 1
% 0.11/0.35  # ...remaining for further processing  : 68
% 0.11/0.35  # Other redundant clauses eliminated   : 0
% 0.11/0.35  # Clauses deleted for lack of memory   : 0
% 0.11/0.35  # Backward-subsumed                    : 2
% 0.11/0.35  # Backward-rewritten                   : 1
% 0.11/0.35  # Generated clauses                    : 57
% 0.11/0.35  # ...of the previous two non-trivial   : 54
% 0.11/0.35  # Contextual simplify-reflections      : 0
% 0.11/0.35  # Paramodulations                      : 52
% 0.11/0.35  # Factorizations                       : 0
% 0.11/0.35  # Equation resolutions                 : 1
% 0.11/0.35  # Propositional unsat checks           : 0
% 0.11/0.35  #    Propositional check models        : 0
% 0.11/0.35  #    Propositional check unsatisfiable : 0
% 0.11/0.35  #    Propositional clauses             : 0
% 0.11/0.35  #    Propositional clauses after purity: 0
% 0.11/0.35  #    Propositional unsat core size     : 0
% 0.11/0.35  #    Propositional preprocessing time  : 0.000
% 0.11/0.35  #    Propositional encoding time       : 0.000
% 0.11/0.35  #    Propositional solver time         : 0.000
% 0.11/0.35  #    Success case prop preproc time    : 0.000
% 0.11/0.35  #    Success case prop encoding time   : 0.000
% 0.11/0.35  #    Success case prop solver time     : 0.000
% 0.11/0.35  # Current number of processed clauses  : 37
% 0.11/0.35  #    Positive orientable unit clauses  : 5
% 0.11/0.35  #    Positive unorientable unit clauses: 0
% 0.11/0.35  #    Negative unit clauses             : 4
% 0.11/0.35  #    Non-unit-clauses                  : 28
% 0.11/0.35  # Current number of unprocessed clauses: 29
% 0.11/0.35  # ...number of literals in the above   : 121
% 0.11/0.35  # Current number of archived formulas  : 0
% 0.11/0.35  # Current number of archived clauses   : 31
% 0.11/0.35  # Clause-clause subsumption calls (NU) : 247
% 0.11/0.35  # Rec. Clause-clause subsumption calls : 111
% 0.11/0.35  # Non-unit clause-clause subsumptions  : 3
% 0.11/0.35  # Unit Clause-clause subsumption calls : 11
% 0.11/0.35  # Rewrite failures with RHS unbound    : 0
% 0.11/0.35  # BW rewrite match attempts            : 1
% 0.11/0.35  # BW rewrite match successes           : 1
% 0.11/0.35  # Condensation attempts                : 0
% 0.11/0.35  # Condensation successes               : 0
% 0.11/0.35  # Termbank termtop insertions          : 3240
% 0.11/0.35  
% 0.11/0.35  # -------------------------------------------------
% 0.11/0.35  # User time                : 0.032 s
% 0.11/0.35  # System time              : 0.004 s
% 0.11/0.35  # Total time               : 0.036 s
% 0.11/0.35  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
