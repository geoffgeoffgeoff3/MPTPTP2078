%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:19:01 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   51 (  84 expanded)
%              Number of clauses        :   26 (  34 expanded)
%              Number of leaves         :   12 (  22 expanded)
%              Depth                    :    8
%              Number of atoms          :   98 ( 176 expanded)
%              Number of equality atoms :   31 (  47 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal clause size      :    5 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t6_tex_2,conjecture,(
    ! [X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,X1)
         => ~ ( v1_subset_1(k6_domain_1(X1,X2),X1)
              & v1_zfmisc_1(X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t6_tex_2)).

fof(cc2_tex_2,axiom,(
    ! [X1] :
      ( ( ~ v1_xboole_0(X1)
        & v1_zfmisc_1(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X1))
         => ( ~ v1_xboole_0(X2)
           => ~ v1_subset_1(X2,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_tex_2)).

fof(cc4_subset_1,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X1))
         => ~ v1_subset_1(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc4_subset_1)).

fof(dt_k6_domain_1,axiom,(
    ! [X1,X2] :
      ( ( ~ v1_xboole_0(X1)
        & m1_subset_1(X2,X1) )
     => m1_subset_1(k6_domain_1(X1,X2),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k6_domain_1)).

fof(d1_ordinal1,axiom,(
    ! [X1] : k1_ordinal1(X1) = k2_xboole_0(X1,k1_tarski(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_ordinal1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(redefinition_k6_domain_1,axiom,(
    ! [X1,X2] :
      ( ( ~ v1_xboole_0(X1)
        & m1_subset_1(X2,X1) )
     => k6_domain_1(X1,X2) = k1_tarski(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k6_domain_1)).

fof(l13_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l13_xboole_0)).

fof(t14_ordinal1,axiom,(
    ! [X1] : X1 != k1_ordinal1(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t14_ordinal1)).

fof(t1_boole,axiom,(
    ! [X1] : k2_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_boole)).

fof(c_0_12,negated_conjecture,(
    ~ ! [X1] :
        ( ~ v1_xboole_0(X1)
       => ! [X2] :
            ( m1_subset_1(X2,X1)
           => ~ ( v1_subset_1(k6_domain_1(X1,X2),X1)
                & v1_zfmisc_1(X1) ) ) ) ),
    inference(assume_negation,[status(cth)],[t6_tex_2])).

fof(c_0_13,plain,(
    ! [X18,X19] :
      ( v1_xboole_0(X18)
      | ~ v1_zfmisc_1(X18)
      | ~ m1_subset_1(X19,k1_zfmisc_1(X18))
      | v1_xboole_0(X19)
      | ~ v1_subset_1(X19,X18) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc2_tex_2])])])])).

fof(c_0_14,plain,(
    ! [X10,X11] :
      ( ~ v1_xboole_0(X10)
      | ~ m1_subset_1(X11,k1_zfmisc_1(X10))
      | ~ v1_subset_1(X11,X10) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc4_subset_1])])])])).

fof(c_0_15,plain,(
    ! [X14,X15] :
      ( v1_xboole_0(X14)
      | ~ m1_subset_1(X15,X14)
      | m1_subset_1(k6_domain_1(X14,X15),k1_zfmisc_1(X14)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_k6_domain_1])])])).

fof(c_0_16,negated_conjecture,
    ( ~ v1_xboole_0(esk1_0)
    & m1_subset_1(esk2_0,esk1_0)
    & v1_subset_1(k6_domain_1(esk1_0,esk2_0),esk1_0)
    & v1_zfmisc_1(esk1_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_12])])])])).

cnf(c_0_17,plain,
    ( v1_xboole_0(X1)
    | v1_xboole_0(X2)
    | ~ v1_zfmisc_1(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ v1_subset_1(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_18,plain,
    ( ~ v1_xboole_0(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1))
    | ~ v1_subset_1(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_19,plain,
    ( v1_xboole_0(X1)
    | m1_subset_1(k6_domain_1(X1,X2),k1_zfmisc_1(X1))
    | ~ m1_subset_1(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_20,negated_conjecture,
    ( m1_subset_1(esk2_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_21,negated_conjecture,
    ( ~ v1_xboole_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_22,plain,(
    ! [X12] : k1_ordinal1(X12) = k2_xboole_0(X12,k1_tarski(X12)) ),
    inference(variable_rename,[status(thm)],[d1_ordinal1])).

fof(c_0_23,plain,(
    ! [X5] : k2_tarski(X5,X5) = k1_tarski(X5) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_24,plain,(
    ! [X8,X9] : k3_tarski(k2_tarski(X8,X9)) = k2_xboole_0(X8,X9) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

fof(c_0_25,plain,(
    ! [X6,X7] : k1_enumset1(X6,X6,X7) = k2_tarski(X6,X7) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_26,plain,(
    ! [X16,X17] :
      ( v1_xboole_0(X16)
      | ~ m1_subset_1(X17,X16)
      | k6_domain_1(X16,X17) = k1_tarski(X17) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_k6_domain_1])])])).

fof(c_0_27,plain,(
    ! [X3] :
      ( ~ v1_xboole_0(X3)
      | X3 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).

cnf(c_0_28,plain,
    ( v1_xboole_0(X1)
    | ~ v1_zfmisc_1(X2)
    | ~ v1_subset_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(csr,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_29,negated_conjecture,
    ( m1_subset_1(k6_domain_1(esk1_0,esk2_0),k1_zfmisc_1(esk1_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_21])).

cnf(c_0_30,negated_conjecture,
    ( v1_zfmisc_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_31,negated_conjecture,
    ( v1_subset_1(k6_domain_1(esk1_0,esk2_0),esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_32,plain,(
    ! [X13] : X13 != k1_ordinal1(X13) ),
    inference(variable_rename,[status(thm)],[t14_ordinal1])).

cnf(c_0_33,plain,
    ( k1_ordinal1(X1) = k2_xboole_0(X1,k1_tarski(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_34,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_35,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_36,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_37,plain,
    ( v1_xboole_0(X1)
    | k6_domain_1(X1,X2) = k1_tarski(X2)
    | ~ m1_subset_1(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_38,plain,
    ( X1 = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_39,negated_conjecture,
    ( v1_xboole_0(k6_domain_1(esk1_0,esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_29]),c_0_30]),c_0_31])])).

fof(c_0_40,plain,(
    ! [X4] : k2_xboole_0(X4,k1_xboole_0) = X4 ),
    inference(variable_rename,[status(thm)],[t1_boole])).

cnf(c_0_41,plain,
    ( X1 != k1_ordinal1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_42,plain,
    ( k1_ordinal1(X1) = k2_xboole_0(X1,k2_tarski(X1,X1)) ),
    inference(rw,[status(thm)],[c_0_33,c_0_34])).

cnf(c_0_43,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_44,plain,
    ( k6_domain_1(X1,X2) = k1_enumset1(X2,X2,X2)
    | v1_xboole_0(X1)
    | ~ m1_subset_1(X2,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_37,c_0_34]),c_0_36])).

cnf(c_0_45,negated_conjecture,
    ( k6_domain_1(esk1_0,esk2_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_38,c_0_39])).

cnf(c_0_46,plain,
    ( k2_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

cnf(c_0_47,plain,
    ( X1 != k3_tarski(k1_enumset1(X1,X1,k1_enumset1(X1,X1,X1))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_41,c_0_42]),c_0_36]),c_0_43])).

cnf(c_0_48,negated_conjecture,
    ( k1_enumset1(esk2_0,esk2_0,esk2_0) = k1_xboole_0 ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_20]),c_0_45]),c_0_21])).

cnf(c_0_49,plain,
    ( k3_tarski(k1_enumset1(X1,X1,k1_xboole_0)) = X1 ),
    inference(rw,[status(thm)],[c_0_46,c_0_43])).

cnf(c_0_50,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_48]),c_0_49])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n005.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 11:37:02 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.12/0.37  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.12/0.37  #
% 0.12/0.37  # Preprocessing time       : 0.027 s
% 0.12/0.37  # Presaturation interreduction done
% 0.12/0.37  
% 0.12/0.37  # Proof found!
% 0.12/0.37  # SZS status Theorem
% 0.12/0.37  # SZS output start CNFRefutation
% 0.12/0.37  fof(t6_tex_2, conjecture, ![X1]:(~(v1_xboole_0(X1))=>![X2]:(m1_subset_1(X2,X1)=>~((v1_subset_1(k6_domain_1(X1,X2),X1)&v1_zfmisc_1(X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t6_tex_2)).
% 0.12/0.37  fof(cc2_tex_2, axiom, ![X1]:((~(v1_xboole_0(X1))&v1_zfmisc_1(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>(~(v1_xboole_0(X2))=>~(v1_subset_1(X2,X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc2_tex_2)).
% 0.12/0.37  fof(cc4_subset_1, axiom, ![X1]:(v1_xboole_0(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>~(v1_subset_1(X2,X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc4_subset_1)).
% 0.12/0.37  fof(dt_k6_domain_1, axiom, ![X1, X2]:((~(v1_xboole_0(X1))&m1_subset_1(X2,X1))=>m1_subset_1(k6_domain_1(X1,X2),k1_zfmisc_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k6_domain_1)).
% 0.12/0.37  fof(d1_ordinal1, axiom, ![X1]:k1_ordinal1(X1)=k2_xboole_0(X1,k1_tarski(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_ordinal1)).
% 0.12/0.37  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.12/0.37  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.12/0.37  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.12/0.37  fof(redefinition_k6_domain_1, axiom, ![X1, X2]:((~(v1_xboole_0(X1))&m1_subset_1(X2,X1))=>k6_domain_1(X1,X2)=k1_tarski(X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k6_domain_1)).
% 0.12/0.37  fof(l13_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)=>X1=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l13_xboole_0)).
% 0.12/0.37  fof(t14_ordinal1, axiom, ![X1]:X1!=k1_ordinal1(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t14_ordinal1)).
% 0.12/0.37  fof(t1_boole, axiom, ![X1]:k2_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t1_boole)).
% 0.12/0.37  fof(c_0_12, negated_conjecture, ~(![X1]:(~(v1_xboole_0(X1))=>![X2]:(m1_subset_1(X2,X1)=>~((v1_subset_1(k6_domain_1(X1,X2),X1)&v1_zfmisc_1(X1)))))), inference(assume_negation,[status(cth)],[t6_tex_2])).
% 0.12/0.37  fof(c_0_13, plain, ![X18, X19]:(v1_xboole_0(X18)|~v1_zfmisc_1(X18)|(~m1_subset_1(X19,k1_zfmisc_1(X18))|(v1_xboole_0(X19)|~v1_subset_1(X19,X18)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc2_tex_2])])])])).
% 0.12/0.37  fof(c_0_14, plain, ![X10, X11]:(~v1_xboole_0(X10)|(~m1_subset_1(X11,k1_zfmisc_1(X10))|~v1_subset_1(X11,X10))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc4_subset_1])])])])).
% 0.12/0.37  fof(c_0_15, plain, ![X14, X15]:(v1_xboole_0(X14)|~m1_subset_1(X15,X14)|m1_subset_1(k6_domain_1(X14,X15),k1_zfmisc_1(X14))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_k6_domain_1])])])).
% 0.12/0.37  fof(c_0_16, negated_conjecture, (~v1_xboole_0(esk1_0)&(m1_subset_1(esk2_0,esk1_0)&(v1_subset_1(k6_domain_1(esk1_0,esk2_0),esk1_0)&v1_zfmisc_1(esk1_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_12])])])])).
% 0.12/0.37  cnf(c_0_17, plain, (v1_xboole_0(X1)|v1_xboole_0(X2)|~v1_zfmisc_1(X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))|~v1_subset_1(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.37  cnf(c_0_18, plain, (~v1_xboole_0(X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))|~v1_subset_1(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.12/0.37  cnf(c_0_19, plain, (v1_xboole_0(X1)|m1_subset_1(k6_domain_1(X1,X2),k1_zfmisc_1(X1))|~m1_subset_1(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.12/0.37  cnf(c_0_20, negated_conjecture, (m1_subset_1(esk2_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.12/0.37  cnf(c_0_21, negated_conjecture, (~v1_xboole_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.12/0.37  fof(c_0_22, plain, ![X12]:k1_ordinal1(X12)=k2_xboole_0(X12,k1_tarski(X12)), inference(variable_rename,[status(thm)],[d1_ordinal1])).
% 0.12/0.37  fof(c_0_23, plain, ![X5]:k2_tarski(X5,X5)=k1_tarski(X5), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.12/0.37  fof(c_0_24, plain, ![X8, X9]:k3_tarski(k2_tarski(X8,X9))=k2_xboole_0(X8,X9), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.12/0.37  fof(c_0_25, plain, ![X6, X7]:k1_enumset1(X6,X6,X7)=k2_tarski(X6,X7), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.12/0.37  fof(c_0_26, plain, ![X16, X17]:(v1_xboole_0(X16)|~m1_subset_1(X17,X16)|k6_domain_1(X16,X17)=k1_tarski(X17)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_k6_domain_1])])])).
% 0.12/0.37  fof(c_0_27, plain, ![X3]:(~v1_xboole_0(X3)|X3=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).
% 0.12/0.37  cnf(c_0_28, plain, (v1_xboole_0(X1)|~v1_zfmisc_1(X2)|~v1_subset_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(csr,[status(thm)],[c_0_17, c_0_18])).
% 0.12/0.37  cnf(c_0_29, negated_conjecture, (m1_subset_1(k6_domain_1(esk1_0,esk2_0),k1_zfmisc_1(esk1_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_20]), c_0_21])).
% 0.12/0.37  cnf(c_0_30, negated_conjecture, (v1_zfmisc_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.12/0.37  cnf(c_0_31, negated_conjecture, (v1_subset_1(k6_domain_1(esk1_0,esk2_0),esk1_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.12/0.37  fof(c_0_32, plain, ![X13]:X13!=k1_ordinal1(X13), inference(variable_rename,[status(thm)],[t14_ordinal1])).
% 0.12/0.37  cnf(c_0_33, plain, (k1_ordinal1(X1)=k2_xboole_0(X1,k1_tarski(X1))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.12/0.37  cnf(c_0_34, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.12/0.37  cnf(c_0_35, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.12/0.37  cnf(c_0_36, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.12/0.37  cnf(c_0_37, plain, (v1_xboole_0(X1)|k6_domain_1(X1,X2)=k1_tarski(X2)|~m1_subset_1(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.12/0.37  cnf(c_0_38, plain, (X1=k1_xboole_0|~v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.12/0.37  cnf(c_0_39, negated_conjecture, (v1_xboole_0(k6_domain_1(esk1_0,esk2_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_29]), c_0_30]), c_0_31])])).
% 0.12/0.37  fof(c_0_40, plain, ![X4]:k2_xboole_0(X4,k1_xboole_0)=X4, inference(variable_rename,[status(thm)],[t1_boole])).
% 0.12/0.37  cnf(c_0_41, plain, (X1!=k1_ordinal1(X1)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.12/0.37  cnf(c_0_42, plain, (k1_ordinal1(X1)=k2_xboole_0(X1,k2_tarski(X1,X1))), inference(rw,[status(thm)],[c_0_33, c_0_34])).
% 0.12/0.37  cnf(c_0_43, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_35, c_0_36])).
% 0.12/0.37  cnf(c_0_44, plain, (k6_domain_1(X1,X2)=k1_enumset1(X2,X2,X2)|v1_xboole_0(X1)|~m1_subset_1(X2,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_37, c_0_34]), c_0_36])).
% 0.12/0.37  cnf(c_0_45, negated_conjecture, (k6_domain_1(esk1_0,esk2_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_38, c_0_39])).
% 0.12/0.37  cnf(c_0_46, plain, (k2_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_40])).
% 0.12/0.37  cnf(c_0_47, plain, (X1!=k3_tarski(k1_enumset1(X1,X1,k1_enumset1(X1,X1,X1)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_41, c_0_42]), c_0_36]), c_0_43])).
% 0.12/0.37  cnf(c_0_48, negated_conjecture, (k1_enumset1(esk2_0,esk2_0,esk2_0)=k1_xboole_0), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_20]), c_0_45]), c_0_21])).
% 0.12/0.37  cnf(c_0_49, plain, (k3_tarski(k1_enumset1(X1,X1,k1_xboole_0))=X1), inference(rw,[status(thm)],[c_0_46, c_0_43])).
% 0.12/0.37  cnf(c_0_50, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_48]), c_0_49])]), ['proof']).
% 0.12/0.37  # SZS output end CNFRefutation
% 0.12/0.37  # Proof object total steps             : 51
% 0.12/0.37  # Proof object clause steps            : 26
% 0.12/0.37  # Proof object formula steps           : 25
% 0.12/0.37  # Proof object conjectures             : 12
% 0.12/0.37  # Proof object clause conjectures      : 9
% 0.12/0.37  # Proof object formula conjectures     : 3
% 0.12/0.37  # Proof object initial clauses used    : 15
% 0.12/0.37  # Proof object initial formulas used   : 12
% 0.12/0.37  # Proof object generating inferences   : 5
% 0.12/0.37  # Proof object simplifying inferences  : 17
% 0.12/0.37  # Training examples: 0 positive, 0 negative
% 0.12/0.37  # Parsed axioms                        : 12
% 0.12/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.37  # Initial clauses                      : 15
% 0.12/0.37  # Removed in clause preprocessing      : 4
% 0.12/0.37  # Initial clauses in saturation        : 11
% 0.12/0.37  # Processed clauses                    : 29
% 0.12/0.37  # ...of these trivial                  : 0
% 0.12/0.37  # ...subsumed                          : 1
% 0.12/0.37  # ...remaining for further processing  : 28
% 0.12/0.37  # Other redundant clauses eliminated   : 0
% 0.12/0.37  # Clauses deleted for lack of memory   : 0
% 0.12/0.37  # Backward-subsumed                    : 0
% 0.12/0.37  # Backward-rewritten                   : 3
% 0.12/0.37  # Generated clauses                    : 7
% 0.12/0.37  # ...of the previous two non-trivial   : 9
% 0.12/0.37  # Contextual simplify-reflections      : 1
% 0.12/0.37  # Paramodulations                      : 7
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
% 0.12/0.37  # Current number of processed clauses  : 14
% 0.12/0.37  #    Positive orientable unit clauses  : 7
% 0.12/0.37  #    Positive unorientable unit clauses: 0
% 0.12/0.37  #    Negative unit clauses             : 2
% 0.12/0.37  #    Non-unit-clauses                  : 5
% 0.12/0.37  # Current number of unprocessed clauses: 2
% 0.12/0.37  # ...number of literals in the above   : 3
% 0.12/0.37  # Current number of archived formulas  : 0
% 0.12/0.37  # Current number of archived clauses   : 18
% 0.12/0.37  # Clause-clause subsumption calls (NU) : 9
% 0.12/0.37  # Rec. Clause-clause subsumption calls : 8
% 0.12/0.37  # Non-unit clause-clause subsumptions  : 1
% 0.12/0.37  # Unit Clause-clause subsumption calls : 1
% 0.12/0.37  # Rewrite failures with RHS unbound    : 0
% 0.12/0.37  # BW rewrite match attempts            : 1
% 0.12/0.37  # BW rewrite match successes           : 1
% 0.12/0.37  # Condensation attempts                : 0
% 0.12/0.37  # Condensation successes               : 0
% 0.12/0.37  # Termbank termtop insertions          : 997
% 0.12/0.37  
% 0.12/0.37  # -------------------------------------------------
% 0.12/0.37  # User time                : 0.027 s
% 0.12/0.37  # System time              : 0.004 s
% 0.12/0.37  # Total time               : 0.031 s
% 0.12/0.37  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
