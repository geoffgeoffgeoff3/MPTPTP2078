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
% DateTime   : Thu Dec  3 10:50:28 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   25 (  40 expanded)
%              Number of clauses        :   14 (  16 expanded)
%              Number of leaves         :    5 (  10 expanded)
%              Depth                    :    8
%              Number of atoms          :   72 ( 112 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t144_relat_1,conjecture,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => r1_tarski(k9_relat_1(X2,X1),k2_relat_1(X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t144_relat_1)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).

fof(t143_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( r2_hidden(X1,k9_relat_1(X3,X2))
      <=> ? [X4] :
            ( r2_hidden(X4,k1_relat_1(X3))
            & r2_hidden(k4_tarski(X4,X1),X3)
            & r2_hidden(X4,X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t143_relat_1)).

fof(t21_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => r1_tarski(X1,k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t21_relat_1)).

fof(l54_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X2,X4) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l54_zfmisc_1)).

fof(c_0_5,negated_conjecture,(
    ~ ! [X1,X2] :
        ( v1_relat_1(X2)
       => r1_tarski(k9_relat_1(X2,X1),k2_relat_1(X2)) ) ),
    inference(assume_negation,[status(cth)],[t144_relat_1])).

fof(c_0_6,negated_conjecture,
    ( v1_relat_1(esk4_0)
    & ~ r1_tarski(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_5])])])).

fof(c_0_7,plain,(
    ! [X5,X6,X7,X8,X9] :
      ( ( ~ r1_tarski(X5,X6)
        | ~ r2_hidden(X7,X5)
        | r2_hidden(X7,X6) )
      & ( r2_hidden(esk1_2(X8,X9),X8)
        | r1_tarski(X8,X9) )
      & ( ~ r2_hidden(esk1_2(X8,X9),X9)
        | r1_tarski(X8,X9) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

fof(c_0_8,plain,(
    ! [X15,X16,X17,X19] :
      ( ( r2_hidden(esk2_3(X15,X16,X17),k1_relat_1(X17))
        | ~ r2_hidden(X15,k9_relat_1(X17,X16))
        | ~ v1_relat_1(X17) )
      & ( r2_hidden(k4_tarski(esk2_3(X15,X16,X17),X15),X17)
        | ~ r2_hidden(X15,k9_relat_1(X17,X16))
        | ~ v1_relat_1(X17) )
      & ( r2_hidden(esk2_3(X15,X16,X17),X16)
        | ~ r2_hidden(X15,k9_relat_1(X17,X16))
        | ~ v1_relat_1(X17) )
      & ( ~ r2_hidden(X19,k1_relat_1(X17))
        | ~ r2_hidden(k4_tarski(X19,X15),X17)
        | ~ r2_hidden(X19,X16)
        | r2_hidden(X15,k9_relat_1(X17,X16))
        | ~ v1_relat_1(X17) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t143_relat_1])])])])])).

cnf(c_0_9,negated_conjecture,
    ( ~ r1_tarski(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_10,plain,
    ( r2_hidden(esk1_2(X1,X2),X1)
    | r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_11,plain,
    ( r2_hidden(k4_tarski(esk2_3(X1,X2,X3),X1),X3)
    | ~ r2_hidden(X1,k9_relat_1(X3,X2))
    | ~ v1_relat_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_12,negated_conjecture,
    ( r2_hidden(esk1_2(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0)),k9_relat_1(esk4_0,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_9,c_0_10])).

cnf(c_0_13,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_14,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_15,negated_conjecture,
    ( r2_hidden(k4_tarski(esk2_3(esk1_2(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0)),esk3_0,esk4_0),esk1_2(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0))),esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_11,c_0_12]),c_0_13])])).

fof(c_0_16,plain,(
    ! [X20] :
      ( ~ v1_relat_1(X20)
      | r1_tarski(X20,k2_zfmisc_1(k1_relat_1(X20),k2_relat_1(X20))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t21_relat_1])])).

fof(c_0_17,plain,(
    ! [X11,X12,X13,X14] :
      ( ( r2_hidden(X11,X13)
        | ~ r2_hidden(k4_tarski(X11,X12),k2_zfmisc_1(X13,X14)) )
      & ( r2_hidden(X12,X14)
        | ~ r2_hidden(k4_tarski(X11,X12),k2_zfmisc_1(X13,X14)) )
      & ( ~ r2_hidden(X11,X13)
        | ~ r2_hidden(X12,X14)
        | r2_hidden(k4_tarski(X11,X12),k2_zfmisc_1(X13,X14)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l54_zfmisc_1])])])).

cnf(c_0_18,negated_conjecture,
    ( r2_hidden(k4_tarski(esk2_3(esk1_2(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0)),esk3_0,esk4_0),esk1_2(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0))),X1)
    | ~ r1_tarski(esk4_0,X1) ),
    inference(spm,[status(thm)],[c_0_14,c_0_15])).

cnf(c_0_19,plain,
    ( r1_tarski(X1,k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_20,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(esk1_2(X1,X2),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_21,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(k4_tarski(X3,X1),k2_zfmisc_1(X4,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_22,negated_conjecture,
    ( r2_hidden(k4_tarski(esk2_3(esk1_2(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0)),esk3_0,esk4_0),esk1_2(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0))),k2_zfmisc_1(k1_relat_1(esk4_0),k2_relat_1(esk4_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18,c_0_19]),c_0_13])])).

cnf(c_0_23,negated_conjecture,
    ( ~ r2_hidden(esk1_2(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0)),k2_relat_1(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_9,c_0_20])).

cnf(c_0_24,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_21,c_0_22]),c_0_23]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n013.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 20:28:54 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  # Version: 2.5pre002
% 0.12/0.33  # No SInE strategy applied
% 0.12/0.33  # Trying AutoSched0 for 299 seconds
% 0.12/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S05AI
% 0.12/0.37  # and selection function PSelectComplexExceptUniqMaxPosHorn.
% 0.12/0.37  #
% 0.12/0.37  # Preprocessing time       : 0.028 s
% 0.12/0.37  # Presaturation interreduction done
% 0.12/0.37  
% 0.12/0.37  # Proof found!
% 0.12/0.37  # SZS status Theorem
% 0.12/0.37  # SZS output start CNFRefutation
% 0.12/0.37  fof(t144_relat_1, conjecture, ![X1, X2]:(v1_relat_1(X2)=>r1_tarski(k9_relat_1(X2,X1),k2_relat_1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t144_relat_1)).
% 0.12/0.37  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_tarski)).
% 0.12/0.37  fof(t143_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>(r2_hidden(X1,k9_relat_1(X3,X2))<=>?[X4]:((r2_hidden(X4,k1_relat_1(X3))&r2_hidden(k4_tarski(X4,X1),X3))&r2_hidden(X4,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t143_relat_1)).
% 0.12/0.37  fof(t21_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>r1_tarski(X1,k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t21_relat_1)).
% 0.12/0.37  fof(l54_zfmisc_1, axiom, ![X1, X2, X3, X4]:(r2_hidden(k4_tarski(X1,X2),k2_zfmisc_1(X3,X4))<=>(r2_hidden(X1,X3)&r2_hidden(X2,X4))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l54_zfmisc_1)).
% 0.12/0.37  fof(c_0_5, negated_conjecture, ~(![X1, X2]:(v1_relat_1(X2)=>r1_tarski(k9_relat_1(X2,X1),k2_relat_1(X2)))), inference(assume_negation,[status(cth)],[t144_relat_1])).
% 0.12/0.37  fof(c_0_6, negated_conjecture, (v1_relat_1(esk4_0)&~r1_tarski(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_5])])])).
% 0.12/0.37  fof(c_0_7, plain, ![X5, X6, X7, X8, X9]:((~r1_tarski(X5,X6)|(~r2_hidden(X7,X5)|r2_hidden(X7,X6)))&((r2_hidden(esk1_2(X8,X9),X8)|r1_tarski(X8,X9))&(~r2_hidden(esk1_2(X8,X9),X9)|r1_tarski(X8,X9)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.12/0.37  fof(c_0_8, plain, ![X15, X16, X17, X19]:((((r2_hidden(esk2_3(X15,X16,X17),k1_relat_1(X17))|~r2_hidden(X15,k9_relat_1(X17,X16))|~v1_relat_1(X17))&(r2_hidden(k4_tarski(esk2_3(X15,X16,X17),X15),X17)|~r2_hidden(X15,k9_relat_1(X17,X16))|~v1_relat_1(X17)))&(r2_hidden(esk2_3(X15,X16,X17),X16)|~r2_hidden(X15,k9_relat_1(X17,X16))|~v1_relat_1(X17)))&(~r2_hidden(X19,k1_relat_1(X17))|~r2_hidden(k4_tarski(X19,X15),X17)|~r2_hidden(X19,X16)|r2_hidden(X15,k9_relat_1(X17,X16))|~v1_relat_1(X17))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t143_relat_1])])])])])).
% 0.12/0.37  cnf(c_0_9, negated_conjecture, (~r1_tarski(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0))), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.12/0.37  cnf(c_0_10, plain, (r2_hidden(esk1_2(X1,X2),X1)|r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_11, plain, (r2_hidden(k4_tarski(esk2_3(X1,X2,X3),X1),X3)|~r2_hidden(X1,k9_relat_1(X3,X2))|~v1_relat_1(X3)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.37  cnf(c_0_12, negated_conjecture, (r2_hidden(esk1_2(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0)),k9_relat_1(esk4_0,esk3_0))), inference(spm,[status(thm)],[c_0_9, c_0_10])).
% 0.12/0.37  cnf(c_0_13, negated_conjecture, (v1_relat_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.12/0.37  cnf(c_0_14, plain, (r2_hidden(X3,X2)|~r1_tarski(X1,X2)|~r2_hidden(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_15, negated_conjecture, (r2_hidden(k4_tarski(esk2_3(esk1_2(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0)),esk3_0,esk4_0),esk1_2(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0))),esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_11, c_0_12]), c_0_13])])).
% 0.12/0.37  fof(c_0_16, plain, ![X20]:(~v1_relat_1(X20)|r1_tarski(X20,k2_zfmisc_1(k1_relat_1(X20),k2_relat_1(X20)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t21_relat_1])])).
% 0.12/0.37  fof(c_0_17, plain, ![X11, X12, X13, X14]:(((r2_hidden(X11,X13)|~r2_hidden(k4_tarski(X11,X12),k2_zfmisc_1(X13,X14)))&(r2_hidden(X12,X14)|~r2_hidden(k4_tarski(X11,X12),k2_zfmisc_1(X13,X14))))&(~r2_hidden(X11,X13)|~r2_hidden(X12,X14)|r2_hidden(k4_tarski(X11,X12),k2_zfmisc_1(X13,X14)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l54_zfmisc_1])])])).
% 0.12/0.37  cnf(c_0_18, negated_conjecture, (r2_hidden(k4_tarski(esk2_3(esk1_2(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0)),esk3_0,esk4_0),esk1_2(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0))),X1)|~r1_tarski(esk4_0,X1)), inference(spm,[status(thm)],[c_0_14, c_0_15])).
% 0.12/0.37  cnf(c_0_19, plain, (r1_tarski(X1,k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.12/0.37  cnf(c_0_20, plain, (r1_tarski(X1,X2)|~r2_hidden(esk1_2(X1,X2),X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_21, plain, (r2_hidden(X1,X2)|~r2_hidden(k4_tarski(X3,X1),k2_zfmisc_1(X4,X2))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.12/0.37  cnf(c_0_22, negated_conjecture, (r2_hidden(k4_tarski(esk2_3(esk1_2(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0)),esk3_0,esk4_0),esk1_2(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0))),k2_zfmisc_1(k1_relat_1(esk4_0),k2_relat_1(esk4_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18, c_0_19]), c_0_13])])).
% 0.12/0.37  cnf(c_0_23, negated_conjecture, (~r2_hidden(esk1_2(k9_relat_1(esk4_0,esk3_0),k2_relat_1(esk4_0)),k2_relat_1(esk4_0))), inference(spm,[status(thm)],[c_0_9, c_0_20])).
% 0.12/0.37  cnf(c_0_24, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_21, c_0_22]), c_0_23]), ['proof']).
% 0.12/0.37  # SZS output end CNFRefutation
% 0.12/0.37  # Proof object total steps             : 25
% 0.12/0.37  # Proof object clause steps            : 14
% 0.12/0.37  # Proof object formula steps           : 11
% 0.12/0.37  # Proof object conjectures             : 11
% 0.12/0.37  # Proof object clause conjectures      : 8
% 0.12/0.37  # Proof object formula conjectures     : 3
% 0.12/0.37  # Proof object initial clauses used    : 8
% 0.12/0.37  # Proof object initial formulas used   : 5
% 0.12/0.37  # Proof object generating inferences   : 6
% 0.12/0.37  # Proof object simplifying inferences  : 5
% 0.12/0.37  # Training examples: 0 positive, 0 negative
% 0.12/0.37  # Parsed axioms                        : 5
% 0.12/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.37  # Initial clauses                      : 13
% 0.12/0.37  # Removed in clause preprocessing      : 0
% 0.12/0.37  # Initial clauses in saturation        : 13
% 0.12/0.37  # Processed clauses                    : 69
% 0.12/0.37  # ...of these trivial                  : 1
% 0.12/0.37  # ...subsumed                          : 0
% 0.12/0.37  # ...remaining for further processing  : 68
% 0.12/0.37  # Other redundant clauses eliminated   : 0
% 0.12/0.37  # Clauses deleted for lack of memory   : 0
% 0.12/0.37  # Backward-subsumed                    : 0
% 0.12/0.37  # Backward-rewritten                   : 0
% 0.12/0.37  # Generated clauses                    : 109
% 0.12/0.37  # ...of the previous two non-trivial   : 92
% 0.12/0.37  # Contextual simplify-reflections      : 0
% 0.12/0.37  # Paramodulations                      : 109
% 0.12/0.37  # Factorizations                       : 0
% 0.12/0.37  # Equation resolutions                 : 0
% 0.12/0.37  # Propositional unsat checks           : 0
% 0.12/0.37  #    Propositional check models        : 0
% 0.12/0.37  #    Propositional check unsatisfiable : 0
% 0.12/0.37  #    Propositional clauses             : 0
% 0.12/0.37  #    Propositional clauses after purity: 0
% 0.12/0.37  #    Propositional unsat core size     : 0
% 0.12/0.37  #    Propositional preprocessing time  : 0.000
% 0.12/0.37  #    Propositional encoding time       : 0.000
% 0.12/0.37  #    Propositional solver time         : 0.000
% 0.12/0.37  #    Success case prop preproc time    : 0.000
% 0.12/0.37  #    Success case prop encoding time   : 0.000
% 0.12/0.37  #    Success case prop solver time     : 0.000
% 0.12/0.37  # Current number of processed clauses  : 55
% 0.12/0.37  #    Positive orientable unit clauses  : 9
% 0.12/0.37  #    Positive unorientable unit clauses: 0
% 0.12/0.37  #    Negative unit clauses             : 2
% 0.12/0.37  #    Non-unit-clauses                  : 44
% 0.12/0.37  # Current number of unprocessed clauses: 47
% 0.12/0.37  # ...number of literals in the above   : 149
% 0.12/0.37  # Current number of archived formulas  : 0
% 0.12/0.37  # Current number of archived clauses   : 13
% 0.12/0.37  # Clause-clause subsumption calls (NU) : 117
% 0.12/0.37  # Rec. Clause-clause subsumption calls : 110
% 0.12/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.12/0.37  # Unit Clause-clause subsumption calls : 4
% 0.12/0.37  # Rewrite failures with RHS unbound    : 0
% 0.12/0.37  # BW rewrite match attempts            : 1
% 0.12/0.37  # BW rewrite match successes           : 0
% 0.12/0.37  # Condensation attempts                : 0
% 0.12/0.37  # Condensation successes               : 0
% 0.12/0.37  # Termbank termtop insertions          : 3724
% 0.12/0.37  
% 0.12/0.37  # -------------------------------------------------
% 0.12/0.37  # User time                : 0.035 s
% 0.12/0.37  # System time              : 0.002 s
% 0.12/0.37  # Total time               : 0.037 s
% 0.12/0.37  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
