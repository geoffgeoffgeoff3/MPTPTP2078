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
% DateTime   : Thu Dec  3 11:16:50 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   21 (  39 expanded)
%              Number of clauses        :   14 (  14 expanded)
%              Number of leaves         :    3 (   9 expanded)
%              Depth                    :    7
%              Number of atoms          :   77 ( 275 expanded)
%              Number of equality atoms :    4 (  22 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   11 (   2 average)
%              Maximal term depth       :    2 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t15_tmap_1,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & m1_pre_topc(X2,X1) )
         => ! [X3] :
              ( ( ~ v2_struct_0(X3)
                & m1_pre_topc(X3,X1) )
             => ( m1_pre_topc(X2,X3)
               => ! [X4] :
                    ( m1_subset_1(X4,u1_struct_0(X2))
                   => ? [X5] :
                        ( m1_subset_1(X5,u1_struct_0(X3))
                        & X5 = X4 ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t15_tmap_1)).

fof(t55_pre_topc,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & m1_pre_topc(X2,X1) )
         => ! [X3] :
              ( m1_subset_1(X3,u1_struct_0(X2))
             => m1_subset_1(X3,u1_struct_0(X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t55_pre_topc)).

fof(dt_m1_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => l1_pre_topc(X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_m1_pre_topc)).

fof(c_0_3,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & v2_pre_topc(X1)
          & l1_pre_topc(X1) )
       => ! [X2] :
            ( ( ~ v2_struct_0(X2)
              & m1_pre_topc(X2,X1) )
           => ! [X3] :
                ( ( ~ v2_struct_0(X3)
                  & m1_pre_topc(X3,X1) )
               => ( m1_pre_topc(X2,X3)
                 => ! [X4] :
                      ( m1_subset_1(X4,u1_struct_0(X2))
                     => ? [X5] :
                          ( m1_subset_1(X5,u1_struct_0(X3))
                          & X5 = X4 ) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t15_tmap_1])).

fof(c_0_4,negated_conjecture,(
    ! [X15] :
      ( ~ v2_struct_0(esk1_0)
      & v2_pre_topc(esk1_0)
      & l1_pre_topc(esk1_0)
      & ~ v2_struct_0(esk2_0)
      & m1_pre_topc(esk2_0,esk1_0)
      & ~ v2_struct_0(esk3_0)
      & m1_pre_topc(esk3_0,esk1_0)
      & m1_pre_topc(esk2_0,esk3_0)
      & m1_subset_1(esk4_0,u1_struct_0(esk2_0))
      & ( ~ m1_subset_1(X15,u1_struct_0(esk3_0))
        | X15 != esk4_0 ) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_3])])])])])).

cnf(c_0_5,negated_conjecture,
    ( ~ m1_subset_1(X1,u1_struct_0(esk3_0))
    | X1 != esk4_0 ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

fof(c_0_6,plain,(
    ! [X8,X9,X10] :
      ( v2_struct_0(X8)
      | ~ l1_pre_topc(X8)
      | v2_struct_0(X9)
      | ~ m1_pre_topc(X9,X8)
      | ~ m1_subset_1(X10,u1_struct_0(X9))
      | m1_subset_1(X10,u1_struct_0(X8)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t55_pre_topc])])])])).

cnf(c_0_7,negated_conjecture,
    ( ~ m1_subset_1(esk4_0,u1_struct_0(esk3_0)) ),
    inference(er,[status(thm)],[c_0_5])).

cnf(c_0_8,plain,
    ( v2_struct_0(X1)
    | v2_struct_0(X2)
    | m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_subset_1(X3,u1_struct_0(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_9,negated_conjecture,
    ( ~ v2_struct_0(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

fof(c_0_10,plain,(
    ! [X6,X7] :
      ( ~ l1_pre_topc(X6)
      | ~ m1_pre_topc(X7,X6)
      | l1_pre_topc(X7) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_m1_pre_topc])])])).

cnf(c_0_11,negated_conjecture,
    ( v2_struct_0(X1)
    | ~ m1_subset_1(esk4_0,u1_struct_0(X1))
    | ~ m1_pre_topc(X1,esk3_0)
    | ~ l1_pre_topc(esk3_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_7,c_0_8]),c_0_9])).

cnf(c_0_12,negated_conjecture,
    ( m1_subset_1(esk4_0,u1_struct_0(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_13,negated_conjecture,
    ( m1_pre_topc(esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_14,negated_conjecture,
    ( ~ v2_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_15,plain,
    ( l1_pre_topc(X2)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_16,negated_conjecture,
    ( l1_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_17,negated_conjecture,
    ( ~ l1_pre_topc(esk3_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_11,c_0_12]),c_0_13])]),c_0_14])).

cnf(c_0_18,negated_conjecture,
    ( l1_pre_topc(X1)
    | ~ m1_pre_topc(X1,esk1_0) ),
    inference(spm,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_19,negated_conjecture,
    ( m1_pre_topc(esk3_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_20,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17,c_0_18]),c_0_19])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.33  % Computer   : n010.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 14:56:44 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.33  # Version: 2.5pre002
% 0.13/0.33  # No SInE strategy applied
% 0.13/0.33  # Trying AutoSched0 for 299 seconds
% 0.13/0.36  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S021N
% 0.13/0.36  # and selection function PSelectAllCondOptimalLit.
% 0.13/0.36  #
% 0.13/0.36  # Preprocessing time       : 0.026 s
% 0.13/0.36  # Presaturation interreduction done
% 0.13/0.36  
% 0.13/0.36  # Proof found!
% 0.13/0.36  # SZS status Theorem
% 0.13/0.36  # SZS output start CNFRefutation
% 0.13/0.36  fof(t15_tmap_1, conjecture, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:((~(v2_struct_0(X2))&m1_pre_topc(X2,X1))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X1))=>(m1_pre_topc(X2,X3)=>![X4]:(m1_subset_1(X4,u1_struct_0(X2))=>?[X5]:(m1_subset_1(X5,u1_struct_0(X3))&X5=X4)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t15_tmap_1)).
% 0.13/0.36  fof(t55_pre_topc, axiom, ![X1]:((~(v2_struct_0(X1))&l1_pre_topc(X1))=>![X2]:((~(v2_struct_0(X2))&m1_pre_topc(X2,X1))=>![X3]:(m1_subset_1(X3,u1_struct_0(X2))=>m1_subset_1(X3,u1_struct_0(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t55_pre_topc)).
% 0.13/0.36  fof(dt_m1_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_pre_topc(X2,X1)=>l1_pre_topc(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_m1_pre_topc)).
% 0.13/0.36  fof(c_0_3, negated_conjecture, ~(![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:((~(v2_struct_0(X2))&m1_pre_topc(X2,X1))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X1))=>(m1_pre_topc(X2,X3)=>![X4]:(m1_subset_1(X4,u1_struct_0(X2))=>?[X5]:(m1_subset_1(X5,u1_struct_0(X3))&X5=X4))))))), inference(assume_negation,[status(cth)],[t15_tmap_1])).
% 0.13/0.36  fof(c_0_4, negated_conjecture, ![X15]:(((~v2_struct_0(esk1_0)&v2_pre_topc(esk1_0))&l1_pre_topc(esk1_0))&((~v2_struct_0(esk2_0)&m1_pre_topc(esk2_0,esk1_0))&((~v2_struct_0(esk3_0)&m1_pre_topc(esk3_0,esk1_0))&(m1_pre_topc(esk2_0,esk3_0)&(m1_subset_1(esk4_0,u1_struct_0(esk2_0))&(~m1_subset_1(X15,u1_struct_0(esk3_0))|X15!=esk4_0)))))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_3])])])])])).
% 0.13/0.36  cnf(c_0_5, negated_conjecture, (~m1_subset_1(X1,u1_struct_0(esk3_0))|X1!=esk4_0), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.13/0.36  fof(c_0_6, plain, ![X8, X9, X10]:(v2_struct_0(X8)|~l1_pre_topc(X8)|(v2_struct_0(X9)|~m1_pre_topc(X9,X8)|(~m1_subset_1(X10,u1_struct_0(X9))|m1_subset_1(X10,u1_struct_0(X8))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t55_pre_topc])])])])).
% 0.13/0.36  cnf(c_0_7, negated_conjecture, (~m1_subset_1(esk4_0,u1_struct_0(esk3_0))), inference(er,[status(thm)],[c_0_5])).
% 0.13/0.36  cnf(c_0_8, plain, (v2_struct_0(X1)|v2_struct_0(X2)|m1_subset_1(X3,u1_struct_0(X1))|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)|~m1_subset_1(X3,u1_struct_0(X2))), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.13/0.36  cnf(c_0_9, negated_conjecture, (~v2_struct_0(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.13/0.36  fof(c_0_10, plain, ![X6, X7]:(~l1_pre_topc(X6)|(~m1_pre_topc(X7,X6)|l1_pre_topc(X7))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_m1_pre_topc])])])).
% 0.13/0.36  cnf(c_0_11, negated_conjecture, (v2_struct_0(X1)|~m1_subset_1(esk4_0,u1_struct_0(X1))|~m1_pre_topc(X1,esk3_0)|~l1_pre_topc(esk3_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_7, c_0_8]), c_0_9])).
% 0.13/0.36  cnf(c_0_12, negated_conjecture, (m1_subset_1(esk4_0,u1_struct_0(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.13/0.36  cnf(c_0_13, negated_conjecture, (m1_pre_topc(esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.13/0.36  cnf(c_0_14, negated_conjecture, (~v2_struct_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.13/0.36  cnf(c_0_15, plain, (l1_pre_topc(X2)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.36  cnf(c_0_16, negated_conjecture, (l1_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.13/0.36  cnf(c_0_17, negated_conjecture, (~l1_pre_topc(esk3_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_11, c_0_12]), c_0_13])]), c_0_14])).
% 0.13/0.36  cnf(c_0_18, negated_conjecture, (l1_pre_topc(X1)|~m1_pre_topc(X1,esk1_0)), inference(spm,[status(thm)],[c_0_15, c_0_16])).
% 0.13/0.36  cnf(c_0_19, negated_conjecture, (m1_pre_topc(esk3_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.13/0.36  cnf(c_0_20, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17, c_0_18]), c_0_19])]), ['proof']).
% 0.13/0.36  # SZS output end CNFRefutation
% 0.13/0.36  # Proof object total steps             : 21
% 0.13/0.36  # Proof object clause steps            : 14
% 0.13/0.36  # Proof object formula steps           : 7
% 0.13/0.36  # Proof object conjectures             : 15
% 0.13/0.36  # Proof object clause conjectures      : 12
% 0.13/0.36  # Proof object formula conjectures     : 3
% 0.13/0.36  # Proof object initial clauses used    : 9
% 0.13/0.36  # Proof object initial formulas used   : 3
% 0.13/0.36  # Proof object generating inferences   : 4
% 0.13/0.36  # Proof object simplifying inferences  : 7
% 0.13/0.36  # Training examples: 0 positive, 0 negative
% 0.13/0.36  # Parsed axioms                        : 3
% 0.13/0.36  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.36  # Initial clauses                      : 12
% 0.13/0.36  # Removed in clause preprocessing      : 0
% 0.13/0.36  # Initial clauses in saturation        : 12
% 0.13/0.36  # Processed clauses                    : 30
% 0.13/0.36  # ...of these trivial                  : 0
% 0.13/0.36  # ...subsumed                          : 0
% 0.13/0.36  # ...remaining for further processing  : 30
% 0.13/0.36  # Other redundant clauses eliminated   : 1
% 0.13/0.36  # Clauses deleted for lack of memory   : 0
% 0.13/0.36  # Backward-subsumed                    : 0
% 0.13/0.36  # Backward-rewritten                   : 0
% 0.13/0.36  # Generated clauses                    : 20
% 0.13/0.36  # ...of the previous two non-trivial   : 18
% 0.13/0.36  # Contextual simplify-reflections      : 0
% 0.13/0.36  # Paramodulations                      : 19
% 0.13/0.36  # Factorizations                       : 0
% 0.13/0.36  # Equation resolutions                 : 1
% 0.13/0.36  # Propositional unsat checks           : 0
% 0.13/0.36  #    Propositional check models        : 0
% 0.13/0.36  #    Propositional check unsatisfiable : 0
% 0.13/0.36  #    Propositional clauses             : 0
% 0.13/0.36  #    Propositional clauses after purity: 0
% 0.13/0.36  #    Propositional unsat core size     : 0
% 0.13/0.36  #    Propositional preprocessing time  : 0.000
% 0.13/0.36  #    Propositional encoding time       : 0.000
% 0.13/0.36  #    Propositional solver time         : 0.000
% 0.13/0.36  #    Success case prop preproc time    : 0.000
% 0.13/0.36  #    Success case prop encoding time   : 0.000
% 0.13/0.36  #    Success case prop solver time     : 0.000
% 0.13/0.36  # Current number of processed clauses  : 17
% 0.13/0.36  #    Positive orientable unit clauses  : 6
% 0.13/0.36  #    Positive unorientable unit clauses: 0
% 0.13/0.36  #    Negative unit clauses             : 5
% 0.13/0.36  #    Non-unit-clauses                  : 6
% 0.13/0.36  # Current number of unprocessed clauses: 10
% 0.13/0.36  # ...number of literals in the above   : 52
% 0.13/0.36  # Current number of archived formulas  : 0
% 0.13/0.36  # Current number of archived clauses   : 12
% 0.13/0.36  # Clause-clause subsumption calls (NU) : 15
% 0.13/0.36  # Rec. Clause-clause subsumption calls : 12
% 0.13/0.36  # Non-unit clause-clause subsumptions  : 0
% 0.13/0.36  # Unit Clause-clause subsumption calls : 3
% 0.13/0.36  # Rewrite failures with RHS unbound    : 0
% 0.13/0.36  # BW rewrite match attempts            : 0
% 0.13/0.36  # BW rewrite match successes           : 0
% 0.13/0.36  # Condensation attempts                : 0
% 0.13/0.36  # Condensation successes               : 0
% 0.13/0.36  # Termbank termtop insertions          : 970
% 0.13/0.36  
% 0.13/0.36  # -------------------------------------------------
% 0.13/0.36  # User time                : 0.027 s
% 0.13/0.36  # System time              : 0.003 s
% 0.13/0.36  # Total time               : 0.030 s
% 0.13/0.36  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
