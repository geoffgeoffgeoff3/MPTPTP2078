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
% DateTime   : Thu Dec  3 11:19:07 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   43 (  66 expanded)
%              Number of clauses        :   22 (  26 expanded)
%              Number of leaves         :   10 (  17 expanded)
%              Depth                    :    7
%              Number of atoms          :   96 ( 164 expanded)
%              Number of equality atoms :   23 (  29 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal clause size      :    5 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(cc2_tex_2,axiom,(
    ! [X1] :
      ( ( ~ v1_xboole_0(X1)
        & v1_zfmisc_1(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X1))
         => ( ~ v1_xboole_0(X2)
           => ~ v1_subset_1(X2,X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_tex_2)).

fof(cc4_subset_1,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X1))
         => ~ v1_subset_1(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc4_subset_1)).

fof(t49_zfmisc_1,axiom,(
    ! [X1,X2] : k2_xboole_0(k1_tarski(X1),X2) != k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t49_zfmisc_1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(dt_k6_domain_1,axiom,(
    ! [X1,X2] :
      ( ( ~ v1_xboole_0(X1)
        & m1_subset_1(X2,X1) )
     => m1_subset_1(k6_domain_1(X1,X2),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k6_domain_1)).

fof(t6_tex_2,conjecture,(
    ! [X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,X1)
         => ~ ( v1_subset_1(k6_domain_1(X1,X2),X1)
              & v1_zfmisc_1(X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t6_tex_2)).

fof(idempotence_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X1) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',idempotence_k2_xboole_0)).

fof(redefinition_k6_domain_1,axiom,(
    ! [X1,X2] :
      ( ( ~ v1_xboole_0(X1)
        & m1_subset_1(X2,X1) )
     => k6_domain_1(X1,X2) = k1_tarski(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k6_domain_1)).

fof(l13_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l13_xboole_0)).

fof(c_0_10,plain,(
    ! [X16,X17] :
      ( v1_xboole_0(X16)
      | ~ v1_zfmisc_1(X16)
      | ~ m1_subset_1(X17,k1_zfmisc_1(X16))
      | v1_xboole_0(X17)
      | ~ v1_subset_1(X17,X16) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc2_tex_2])])])])).

fof(c_0_11,plain,(
    ! [X10,X11] :
      ( ~ v1_xboole_0(X10)
      | ~ m1_subset_1(X11,k1_zfmisc_1(X10))
      | ~ v1_subset_1(X11,X10) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc4_subset_1])])])])).

fof(c_0_12,plain,(
    ! [X8,X9] : k2_xboole_0(k1_tarski(X8),X9) != k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t49_zfmisc_1])).

fof(c_0_13,plain,(
    ! [X5] : k2_tarski(X5,X5) = k1_tarski(X5) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_14,plain,(
    ! [X6,X7] : k1_enumset1(X6,X6,X7) = k2_tarski(X6,X7) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

cnf(c_0_15,plain,
    ( v1_xboole_0(X1)
    | v1_xboole_0(X2)
    | ~ v1_zfmisc_1(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ v1_subset_1(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_16,plain,
    ( ~ v1_xboole_0(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ v1_subset_1(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

fof(c_0_17,plain,(
    ! [X12,X13] :
      ( v1_xboole_0(X12)
      | ~ m1_subset_1(X13,X12)
      | m1_subset_1(k6_domain_1(X12,X13),k1_zfmisc_1(X12)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_k6_domain_1])])])).

fof(c_0_18,negated_conjecture,(
    ~ ! [X1] :
        ( ~ v1_xboole_0(X1)
       => ! [X2] :
            ( m1_subset_1(X2,X1)
           => ~ ( v1_subset_1(k6_domain_1(X1,X2),X1)
                & v1_zfmisc_1(X1) ) ) ) ),
    inference(assume_negation,[status(cth)],[t6_tex_2])).

cnf(c_0_19,plain,
    ( k2_xboole_0(k1_tarski(X1),X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_20,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_21,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_22,plain,(
    ! [X3] : k2_xboole_0(X3,X3) = X3 ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k2_xboole_0])])).

fof(c_0_23,plain,(
    ! [X14,X15] :
      ( v1_xboole_0(X14)
      | ~ m1_subset_1(X15,X14)
      | k6_domain_1(X14,X15) = k1_tarski(X15) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_k6_domain_1])])])).

cnf(c_0_24,plain,
    ( v1_xboole_0(X1)
    | ~ v1_zfmisc_1(X2)
    | ~ v1_subset_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(csr,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_25,plain,
    ( v1_xboole_0(X1)
    | m1_subset_1(k6_domain_1(X1,X2),k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

fof(c_0_26,negated_conjecture,
    ( ~ v1_xboole_0(esk1_0)
    & m1_subset_1(esk2_0,esk1_0)
    & v1_subset_1(k6_domain_1(esk1_0,esk2_0),esk1_0)
    & v1_zfmisc_1(esk1_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_18])])])])).

cnf(c_0_27,plain,
    ( k2_xboole_0(k1_enumset1(X1,X1,X1),X2) != k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19,c_0_20]),c_0_21])).

cnf(c_0_28,plain,
    ( k2_xboole_0(X1,X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_29,plain,
    ( v1_xboole_0(X1)
    | k6_domain_1(X1,X2) = k1_tarski(X2)
    | ~ m1_subset_1(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

fof(c_0_30,plain,(
    ! [X4] :
      ( ~ v1_xboole_0(X4)
      | X4 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).

cnf(c_0_31,plain,
    ( v1_xboole_0(k6_domain_1(X1,X2))
    | v1_xboole_0(X1)
    | ~ v1_zfmisc_1(X1)
    | ~ v1_subset_1(k6_domain_1(X1,X2),X1)
    | ~ m1_subset_1(X2,X1) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_32,negated_conjecture,
    ( v1_subset_1(k6_domain_1(esk1_0,esk2_0),esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_33,negated_conjecture,
    ( v1_zfmisc_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_34,negated_conjecture,
    ( m1_subset_1(esk2_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_35,negated_conjecture,
    ( ~ v1_xboole_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_36,plain,
    ( k1_enumset1(X1,X1,X1) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_37,plain,
    ( k6_domain_1(X1,X2) = k1_enumset1(X2,X2,X2)
    | v1_xboole_0(X1)
    | ~ m1_subset_1(X2,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29,c_0_20]),c_0_21])).

cnf(c_0_38,plain,
    ( X1 = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_39,negated_conjecture,
    ( v1_xboole_0(k6_domain_1(esk1_0,esk2_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_33]),c_0_34])]),c_0_35])).

cnf(c_0_40,plain,
    ( v1_xboole_0(X1)
    | k6_domain_1(X1,X2) != k1_xboole_0
    | ~ m1_subset_1(X2,X1) ),
    inference(spm,[status(thm)],[c_0_36,c_0_37])).

cnf(c_0_41,negated_conjecture,
    ( k6_domain_1(esk1_0,esk2_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_38,c_0_39])).

cnf(c_0_42,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_41]),c_0_34])]),c_0_35]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n007.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 16:36:21 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S060N
% 0.12/0.37  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.12/0.37  #
% 0.12/0.37  # Preprocessing time       : 0.027 s
% 0.12/0.37  # Presaturation interreduction done
% 0.12/0.37  
% 0.12/0.37  # Proof found!
% 0.12/0.37  # SZS status Theorem
% 0.12/0.37  # SZS output start CNFRefutation
% 0.12/0.37  fof(cc2_tex_2, axiom, ![X1]:((~(v1_xboole_0(X1))&v1_zfmisc_1(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>(~(v1_xboole_0(X2))=>~(v1_subset_1(X2,X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_tex_2)).
% 0.12/0.37  fof(cc4_subset_1, axiom, ![X1]:(v1_xboole_0(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>~(v1_subset_1(X2,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc4_subset_1)).
% 0.12/0.37  fof(t49_zfmisc_1, axiom, ![X1, X2]:k2_xboole_0(k1_tarski(X1),X2)!=k1_xboole_0, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t49_zfmisc_1)).
% 0.12/0.37  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 0.12/0.37  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.12/0.37  fof(dt_k6_domain_1, axiom, ![X1, X2]:((~(v1_xboole_0(X1))&m1_subset_1(X2,X1))=>m1_subset_1(k6_domain_1(X1,X2),k1_zfmisc_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k6_domain_1)).
% 0.12/0.37  fof(t6_tex_2, conjecture, ![X1]:(~(v1_xboole_0(X1))=>![X2]:(m1_subset_1(X2,X1)=>~((v1_subset_1(k6_domain_1(X1,X2),X1)&v1_zfmisc_1(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t6_tex_2)).
% 0.12/0.37  fof(idempotence_k2_xboole_0, axiom, ![X1, X2]:k2_xboole_0(X1,X1)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', idempotence_k2_xboole_0)).
% 0.12/0.37  fof(redefinition_k6_domain_1, axiom, ![X1, X2]:((~(v1_xboole_0(X1))&m1_subset_1(X2,X1))=>k6_domain_1(X1,X2)=k1_tarski(X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k6_domain_1)).
% 0.12/0.37  fof(l13_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)=>X1=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l13_xboole_0)).
% 0.12/0.37  fof(c_0_10, plain, ![X16, X17]:(v1_xboole_0(X16)|~v1_zfmisc_1(X16)|(~m1_subset_1(X17,k1_zfmisc_1(X16))|(v1_xboole_0(X17)|~v1_subset_1(X17,X16)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc2_tex_2])])])])).
% 0.12/0.37  fof(c_0_11, plain, ![X10, X11]:(~v1_xboole_0(X10)|(~m1_subset_1(X11,k1_zfmisc_1(X10))|~v1_subset_1(X11,X10))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc4_subset_1])])])])).
% 0.12/0.37  fof(c_0_12, plain, ![X8, X9]:k2_xboole_0(k1_tarski(X8),X9)!=k1_xboole_0, inference(variable_rename,[status(thm)],[t49_zfmisc_1])).
% 0.12/0.37  fof(c_0_13, plain, ![X5]:k2_tarski(X5,X5)=k1_tarski(X5), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.12/0.37  fof(c_0_14, plain, ![X6, X7]:k1_enumset1(X6,X6,X7)=k2_tarski(X6,X7), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.12/0.37  cnf(c_0_15, plain, (v1_xboole_0(X1)|v1_xboole_0(X2)|~v1_zfmisc_1(X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))|~v1_subset_1(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.12/0.37  cnf(c_0_16, plain, (~v1_xboole_0(X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))|~v1_subset_1(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.12/0.37  fof(c_0_17, plain, ![X12, X13]:(v1_xboole_0(X12)|~m1_subset_1(X13,X12)|m1_subset_1(k6_domain_1(X12,X13),k1_zfmisc_1(X12))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_k6_domain_1])])])).
% 0.12/0.37  fof(c_0_18, negated_conjecture, ~(![X1]:(~(v1_xboole_0(X1))=>![X2]:(m1_subset_1(X2,X1)=>~((v1_subset_1(k6_domain_1(X1,X2),X1)&v1_zfmisc_1(X1)))))), inference(assume_negation,[status(cth)],[t6_tex_2])).
% 0.12/0.37  cnf(c_0_19, plain, (k2_xboole_0(k1_tarski(X1),X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.12/0.37  cnf(c_0_20, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.37  cnf(c_0_21, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.12/0.37  fof(c_0_22, plain, ![X3]:k2_xboole_0(X3,X3)=X3, inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k2_xboole_0])])).
% 0.12/0.37  fof(c_0_23, plain, ![X14, X15]:(v1_xboole_0(X14)|~m1_subset_1(X15,X14)|k6_domain_1(X14,X15)=k1_tarski(X15)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_k6_domain_1])])])).
% 0.12/0.37  cnf(c_0_24, plain, (v1_xboole_0(X1)|~v1_zfmisc_1(X2)|~v1_subset_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(csr,[status(thm)],[c_0_15, c_0_16])).
% 0.12/0.37  cnf(c_0_25, plain, (v1_xboole_0(X1)|m1_subset_1(k6_domain_1(X1,X2),k1_zfmisc_1(X1))|~m1_subset_1(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.12/0.37  fof(c_0_26, negated_conjecture, (~v1_xboole_0(esk1_0)&(m1_subset_1(esk2_0,esk1_0)&(v1_subset_1(k6_domain_1(esk1_0,esk2_0),esk1_0)&v1_zfmisc_1(esk1_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_18])])])])).
% 0.12/0.37  cnf(c_0_27, plain, (k2_xboole_0(k1_enumset1(X1,X1,X1),X2)!=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19, c_0_20]), c_0_21])).
% 0.12/0.37  cnf(c_0_28, plain, (k2_xboole_0(X1,X1)=X1), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.12/0.37  cnf(c_0_29, plain, (v1_xboole_0(X1)|k6_domain_1(X1,X2)=k1_tarski(X2)|~m1_subset_1(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.12/0.37  fof(c_0_30, plain, ![X4]:(~v1_xboole_0(X4)|X4=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).
% 0.12/0.37  cnf(c_0_31, plain, (v1_xboole_0(k6_domain_1(X1,X2))|v1_xboole_0(X1)|~v1_zfmisc_1(X1)|~v1_subset_1(k6_domain_1(X1,X2),X1)|~m1_subset_1(X2,X1)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.12/0.37  cnf(c_0_32, negated_conjecture, (v1_subset_1(k6_domain_1(esk1_0,esk2_0),esk1_0)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.12/0.37  cnf(c_0_33, negated_conjecture, (v1_zfmisc_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.12/0.37  cnf(c_0_34, negated_conjecture, (m1_subset_1(esk2_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.12/0.37  cnf(c_0_35, negated_conjecture, (~v1_xboole_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.12/0.37  cnf(c_0_36, plain, (k1_enumset1(X1,X1,X1)!=k1_xboole_0), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.12/0.37  cnf(c_0_37, plain, (k6_domain_1(X1,X2)=k1_enumset1(X2,X2,X2)|v1_xboole_0(X1)|~m1_subset_1(X2,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29, c_0_20]), c_0_21])).
% 0.12/0.37  cnf(c_0_38, plain, (X1=k1_xboole_0|~v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.12/0.37  cnf(c_0_39, negated_conjecture, (v1_xboole_0(k6_domain_1(esk1_0,esk2_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_33]), c_0_34])]), c_0_35])).
% 0.12/0.37  cnf(c_0_40, plain, (v1_xboole_0(X1)|k6_domain_1(X1,X2)!=k1_xboole_0|~m1_subset_1(X2,X1)), inference(spm,[status(thm)],[c_0_36, c_0_37])).
% 0.12/0.37  cnf(c_0_41, negated_conjecture, (k6_domain_1(esk1_0,esk2_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_38, c_0_39])).
% 0.12/0.37  cnf(c_0_42, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_41]), c_0_34])]), c_0_35]), ['proof']).
% 0.12/0.37  # SZS output end CNFRefutation
% 0.12/0.37  # Proof object total steps             : 43
% 0.12/0.37  # Proof object clause steps            : 22
% 0.12/0.37  # Proof object formula steps           : 21
% 0.12/0.37  # Proof object conjectures             : 10
% 0.12/0.37  # Proof object clause conjectures      : 7
% 0.12/0.37  # Proof object formula conjectures     : 3
% 0.12/0.37  # Proof object initial clauses used    : 13
% 0.12/0.37  # Proof object initial formulas used   : 10
% 0.12/0.37  # Proof object generating inferences   : 6
% 0.12/0.37  # Proof object simplifying inferences  : 12
% 0.12/0.37  # Training examples: 0 positive, 0 negative
% 0.12/0.37  # Parsed axioms                        : 10
% 0.12/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.37  # Initial clauses                      : 13
% 0.12/0.37  # Removed in clause preprocessing      : 2
% 0.12/0.37  # Initial clauses in saturation        : 11
% 0.12/0.37  # Processed clauses                    : 30
% 0.12/0.37  # ...of these trivial                  : 0
% 0.12/0.37  # ...subsumed                          : 2
% 0.12/0.37  # ...remaining for further processing  : 28
% 0.12/0.37  # Other redundant clauses eliminated   : 0
% 0.12/0.37  # Clauses deleted for lack of memory   : 0
% 0.12/0.37  # Backward-subsumed                    : 0
% 0.12/0.37  # Backward-rewritten                   : 2
% 0.12/0.37  # Generated clauses                    : 17
% 0.12/0.37  # ...of the previous two non-trivial   : 17
% 0.12/0.37  # Contextual simplify-reflections      : 1
% 0.12/0.37  # Paramodulations                      : 17
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
% 0.12/0.37  # Current number of processed clauses  : 15
% 0.12/0.37  #    Positive orientable unit clauses  : 4
% 0.12/0.37  #    Positive unorientable unit clauses: 0
% 0.12/0.37  #    Negative unit clauses             : 3
% 0.12/0.37  #    Non-unit-clauses                  : 8
% 0.12/0.37  # Current number of unprocessed clauses: 4
% 0.12/0.37  # ...number of literals in the above   : 16
% 0.12/0.37  # Current number of archived formulas  : 0
% 0.12/0.37  # Current number of archived clauses   : 15
% 0.12/0.37  # Clause-clause subsumption calls (NU) : 18
% 0.12/0.37  # Rec. Clause-clause subsumption calls : 4
% 0.12/0.37  # Non-unit clause-clause subsumptions  : 2
% 0.12/0.37  # Unit Clause-clause subsumption calls : 10
% 0.12/0.37  # Rewrite failures with RHS unbound    : 0
% 0.12/0.37  # BW rewrite match attempts            : 1
% 0.12/0.37  # BW rewrite match successes           : 1
% 0.12/0.37  # Condensation attempts                : 0
% 0.12/0.37  # Condensation successes               : 0
% 0.12/0.37  # Termbank termtop insertions          : 1055
% 0.12/0.37  
% 0.12/0.37  # -------------------------------------------------
% 0.12/0.37  # User time                : 0.030 s
% 0.12/0.37  # System time              : 0.001 s
% 0.12/0.37  # Total time               : 0.031 s
% 0.12/0.37  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
