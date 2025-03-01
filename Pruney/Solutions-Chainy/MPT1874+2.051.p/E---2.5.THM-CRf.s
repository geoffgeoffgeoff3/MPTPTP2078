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
% DateTime   : Thu Dec  3 11:20:09 EST 2020

% Result     : Theorem 0.09s
% Output     : CNFRefutation 0.09s
% Verified   : 
% Statistics : Number of formulae       :   53 ( 138 expanded)
%              Number of clauses        :   36 (  59 expanded)
%              Number of leaves         :    8 (  34 expanded)
%              Depth                    :    9
%              Number of atoms          :  171 ( 562 expanded)
%              Number of equality atoms :   18 (  62 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   26 (   2 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t63_subset_1,axiom,(
    ! [X1,X2] :
      ( r2_hidden(X1,X2)
     => m1_subset_1(k1_tarski(X1),k1_zfmisc_1(X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t63_subset_1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).

fof(t41_tex_2,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v2_tex_2(X2,X1)
          <=> ! [X3] :
                ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
               => ( r1_tarski(X3,X2)
                 => k9_subset_1(u1_struct_0(X1),X2,k2_pre_topc(X1,X3)) = X3 ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_tex_2)).

fof(t42_tex_2,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v2_tex_2(X2,X1)
           => ! [X3] :
                ( m1_subset_1(X3,u1_struct_0(X1))
               => ( r2_hidden(X3,X2)
                 => k9_subset_1(u1_struct_0(X1),X2,k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X3))) = k6_domain_1(u1_struct_0(X1),X3) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t42_tex_2)).

fof(redefinition_k6_domain_1,axiom,(
    ! [X1,X2] :
      ( ( ~ v1_xboole_0(X1)
        & m1_subset_1(X2,X1) )
     => k6_domain_1(X1,X2) = k1_tarski(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k6_domain_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_subset)).

fof(t5_subset,axiom,(
    ! [X1,X2,X3] :
      ~ ( r2_hidden(X1,X2)
        & m1_subset_1(X2,k1_zfmisc_1(X3))
        & v1_xboole_0(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_subset)).

fof(c_0_8,plain,(
    ! [X14,X15] :
      ( ~ r2_hidden(X14,X15)
      | m1_subset_1(k1_tarski(X14),k1_zfmisc_1(X15)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t63_subset_1])])).

fof(c_0_9,plain,(
    ! [X13] : k2_tarski(X13,X13) = k1_tarski(X13) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_10,plain,(
    ! [X4,X5,X6,X7,X8] :
      ( ( ~ r1_tarski(X4,X5)
        | ~ r2_hidden(X6,X4)
        | r2_hidden(X6,X5) )
      & ( r2_hidden(esk1_2(X7,X8),X7)
        | r1_tarski(X7,X8) )
      & ( ~ r2_hidden(esk1_2(X7,X8),X8)
        | r1_tarski(X7,X8) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

fof(c_0_11,plain,(
    ! [X23,X24,X25] :
      ( ( ~ v2_tex_2(X24,X23)
        | ~ m1_subset_1(X25,k1_zfmisc_1(u1_struct_0(X23)))
        | ~ r1_tarski(X25,X24)
        | k9_subset_1(u1_struct_0(X23),X24,k2_pre_topc(X23,X25)) = X25
        | ~ m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))
        | v2_struct_0(X23)
        | ~ v2_pre_topc(X23)
        | ~ l1_pre_topc(X23) )
      & ( m1_subset_1(esk2_2(X23,X24),k1_zfmisc_1(u1_struct_0(X23)))
        | v2_tex_2(X24,X23)
        | ~ m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))
        | v2_struct_0(X23)
        | ~ v2_pre_topc(X23)
        | ~ l1_pre_topc(X23) )
      & ( r1_tarski(esk2_2(X23,X24),X24)
        | v2_tex_2(X24,X23)
        | ~ m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))
        | v2_struct_0(X23)
        | ~ v2_pre_topc(X23)
        | ~ l1_pre_topc(X23) )
      & ( k9_subset_1(u1_struct_0(X23),X24,k2_pre_topc(X23,esk2_2(X23,X24))) != esk2_2(X23,X24)
        | v2_tex_2(X24,X23)
        | ~ m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))
        | v2_struct_0(X23)
        | ~ v2_pre_topc(X23)
        | ~ l1_pre_topc(X23) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t41_tex_2])])])])])])).

cnf(c_0_12,plain,
    ( m1_subset_1(k1_tarski(X1),k1_zfmisc_1(X2))
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

fof(c_0_14,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & v2_pre_topc(X1)
          & l1_pre_topc(X1) )
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
           => ( v2_tex_2(X2,X1)
             => ! [X3] :
                  ( m1_subset_1(X3,u1_struct_0(X1))
                 => ( r2_hidden(X3,X2)
                   => k9_subset_1(u1_struct_0(X1),X2,k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X3))) = k6_domain_1(u1_struct_0(X1),X3) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t42_tex_2])).

fof(c_0_15,plain,(
    ! [X21,X22] :
      ( v1_xboole_0(X21)
      | ~ m1_subset_1(X22,X21)
      | k6_domain_1(X21,X22) = k1_tarski(X22) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_k6_domain_1])])])).

fof(c_0_16,plain,(
    ! [X16,X17] :
      ( ( ~ m1_subset_1(X16,k1_zfmisc_1(X17))
        | r1_tarski(X16,X17) )
      & ( ~ r1_tarski(X16,X17)
        | m1_subset_1(X16,k1_zfmisc_1(X17)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

cnf(c_0_17,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(esk1_2(X1,X2),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_18,plain,
    ( r2_hidden(esk1_2(X1,X2),X1)
    | r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_19,plain,
    ( k9_subset_1(u1_struct_0(X2),X1,k2_pre_topc(X2,X3)) = X3
    | v2_struct_0(X2)
    | ~ v2_tex_2(X1,X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ r1_tarski(X3,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_20,plain,
    ( m1_subset_1(k2_tarski(X1,X1),k1_zfmisc_1(X2))
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[c_0_12,c_0_13])).

fof(c_0_21,negated_conjecture,
    ( ~ v2_struct_0(esk3_0)
    & v2_pre_topc(esk3_0)
    & l1_pre_topc(esk3_0)
    & m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0)))
    & v2_tex_2(esk4_0,esk3_0)
    & m1_subset_1(esk5_0,u1_struct_0(esk3_0))
    & r2_hidden(esk5_0,esk4_0)
    & k9_subset_1(u1_struct_0(esk3_0),esk4_0,k2_pre_topc(esk3_0,k6_domain_1(u1_struct_0(esk3_0),esk5_0))) != k6_domain_1(u1_struct_0(esk3_0),esk5_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_14])])])])).

cnf(c_0_22,plain,
    ( v1_xboole_0(X1)
    | k6_domain_1(X1,X2) = k1_tarski(X2)
    | ~ m1_subset_1(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_23,plain,(
    ! [X18,X19,X20] :
      ( ~ r2_hidden(X18,X19)
      | ~ m1_subset_1(X19,k1_zfmisc_1(X20))
      | ~ v1_xboole_0(X20) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t5_subset])])).

cnf(c_0_24,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_25,plain,
    ( r1_tarski(X1,X1) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_26,plain,
    ( k9_subset_1(u1_struct_0(X1),X2,k2_pre_topc(X1,k2_tarski(X3,X3))) = k2_tarski(X3,X3)
    | v2_struct_0(X1)
    | ~ v2_tex_2(X2,X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X3,u1_struct_0(X1))
    | ~ r1_tarski(k2_tarski(X3,X3),X2) ),
    inference(spm,[status(thm)],[c_0_19,c_0_20])).

cnf(c_0_27,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_28,negated_conjecture,
    ( v2_tex_2(esk4_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_29,negated_conjecture,
    ( l1_pre_topc(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_30,negated_conjecture,
    ( v2_pre_topc(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_31,negated_conjecture,
    ( ~ v2_struct_0(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_32,plain,
    ( k6_domain_1(X1,X2) = k2_tarski(X2,X2)
    | v1_xboole_0(X1)
    | ~ m1_subset_1(X2,X1) ),
    inference(rw,[status(thm)],[c_0_22,c_0_13])).

cnf(c_0_33,negated_conjecture,
    ( m1_subset_1(esk5_0,u1_struct_0(esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_34,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3))
    | ~ v1_xboole_0(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_35,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_36,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_37,negated_conjecture,
    ( r2_hidden(esk5_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_38,negated_conjecture,
    ( k9_subset_1(u1_struct_0(esk3_0),esk4_0,k2_pre_topc(esk3_0,k2_tarski(X1,X1))) = k2_tarski(X1,X1)
    | ~ r2_hidden(X1,u1_struct_0(esk3_0))
    | ~ r1_tarski(k2_tarski(X1,X1),esk4_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_28]),c_0_29]),c_0_30])]),c_0_31])).

cnf(c_0_39,negated_conjecture,
    ( k2_tarski(esk5_0,esk5_0) = k6_domain_1(u1_struct_0(esk3_0),esk5_0)
    | v1_xboole_0(u1_struct_0(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_32,c_0_33])).

cnf(c_0_40,negated_conjecture,
    ( k9_subset_1(u1_struct_0(esk3_0),esk4_0,k2_pre_topc(esk3_0,k6_domain_1(u1_struct_0(esk3_0),esk5_0))) != k6_domain_1(u1_struct_0(esk3_0),esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_41,plain,
    ( ~ v1_xboole_0(X1)
    | ~ r2_hidden(X2,X1) ),
    inference(spm,[status(thm)],[c_0_34,c_0_35])).

cnf(c_0_42,negated_conjecture,
    ( r2_hidden(esk5_0,X1)
    | ~ r1_tarski(esk4_0,X1) ),
    inference(spm,[status(thm)],[c_0_36,c_0_37])).

cnf(c_0_43,negated_conjecture,
    ( ~ r2_hidden(esk5_0,u1_struct_0(esk3_0))
    | ~ r1_tarski(k6_domain_1(u1_struct_0(esk3_0),esk5_0),esk4_0) ),
    inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_39]),c_0_40]),c_0_41])).

cnf(c_0_44,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_45,negated_conjecture,
    ( v1_xboole_0(u1_struct_0(esk3_0))
    | m1_subset_1(k6_domain_1(u1_struct_0(esk3_0),esk5_0),k1_zfmisc_1(X1))
    | ~ r2_hidden(esk5_0,X1) ),
    inference(spm,[status(thm)],[c_0_20,c_0_39])).

cnf(c_0_46,negated_conjecture,
    ( r2_hidden(esk5_0,X1)
    | ~ r1_tarski(esk4_0,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(spm,[status(thm)],[c_0_36,c_0_42])).

cnf(c_0_47,negated_conjecture,
    ( ~ m1_subset_1(k6_domain_1(u1_struct_0(esk3_0),esk5_0),k1_zfmisc_1(esk4_0))
    | ~ r2_hidden(esk5_0,u1_struct_0(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_43,c_0_44])).

cnf(c_0_48,negated_conjecture,
    ( v1_xboole_0(u1_struct_0(esk3_0))
    | m1_subset_1(k6_domain_1(u1_struct_0(esk3_0),esk5_0),k1_zfmisc_1(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_45,c_0_37])).

cnf(c_0_49,negated_conjecture,
    ( r2_hidden(esk5_0,X1)
    | ~ m1_subset_1(esk4_0,k1_zfmisc_1(X2))
    | ~ r1_tarski(X2,X1) ),
    inference(spm,[status(thm)],[c_0_46,c_0_44])).

cnf(c_0_50,negated_conjecture,
    ( ~ r2_hidden(esk5_0,u1_struct_0(esk3_0)) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_48]),c_0_41])).

cnf(c_0_51,negated_conjecture,
    ( r2_hidden(esk5_0,X1)
    | ~ r1_tarski(u1_struct_0(esk3_0),X1) ),
    inference(spm,[status(thm)],[c_0_49,c_0_27])).

cnf(c_0_52,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_51]),c_0_25])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.02/0.09  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.02/0.10  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.09/0.28  % Computer   : n010.cluster.edu
% 0.09/0.28  % Model      : x86_64 x86_64
% 0.09/0.28  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.09/0.28  % Memory     : 8042.1875MB
% 0.09/0.28  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.09/0.28  % CPULimit   : 60
% 0.09/0.28  % WCLimit    : 600
% 0.09/0.28  % DateTime   : Tue Dec  1 15:32:44 EST 2020
% 0.09/0.29  % CPUTime    : 
% 0.09/0.29  # Version: 2.5pre002
% 0.09/0.29  # No SInE strategy applied
% 0.09/0.29  # Trying AutoSched0 for 299 seconds
% 0.09/0.31  # AutoSched0-Mode selected heuristic G_E___302_C18_F1_URBAN_RG_S04BN
% 0.09/0.31  # and selection function PSelectComplexExceptUniqMaxHorn.
% 0.09/0.31  #
% 0.09/0.31  # Preprocessing time       : 0.014 s
% 0.09/0.31  
% 0.09/0.31  # Proof found!
% 0.09/0.31  # SZS status Theorem
% 0.09/0.31  # SZS output start CNFRefutation
% 0.09/0.31  fof(t63_subset_1, axiom, ![X1, X2]:(r2_hidden(X1,X2)=>m1_subset_1(k1_tarski(X1),k1_zfmisc_1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t63_subset_1)).
% 0.09/0.31  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 0.09/0.31  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_tarski)).
% 0.09/0.31  fof(t41_tex_2, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v2_tex_2(X2,X1)<=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>(r1_tarski(X3,X2)=>k9_subset_1(u1_struct_0(X1),X2,k2_pre_topc(X1,X3))=X3))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t41_tex_2)).
% 0.09/0.31  fof(t42_tex_2, conjecture, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v2_tex_2(X2,X1)=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>(r2_hidden(X3,X2)=>k9_subset_1(u1_struct_0(X1),X2,k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X3)))=k6_domain_1(u1_struct_0(X1),X3)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t42_tex_2)).
% 0.09/0.31  fof(redefinition_k6_domain_1, axiom, ![X1, X2]:((~(v1_xboole_0(X1))&m1_subset_1(X2,X1))=>k6_domain_1(X1,X2)=k1_tarski(X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k6_domain_1)).
% 0.09/0.31  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_subset)).
% 0.09/0.31  fof(t5_subset, axiom, ![X1, X2, X3]:~(((r2_hidden(X1,X2)&m1_subset_1(X2,k1_zfmisc_1(X3)))&v1_xboole_0(X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t5_subset)).
% 0.09/0.31  fof(c_0_8, plain, ![X14, X15]:(~r2_hidden(X14,X15)|m1_subset_1(k1_tarski(X14),k1_zfmisc_1(X15))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t63_subset_1])])).
% 0.09/0.31  fof(c_0_9, plain, ![X13]:k2_tarski(X13,X13)=k1_tarski(X13), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.09/0.31  fof(c_0_10, plain, ![X4, X5, X6, X7, X8]:((~r1_tarski(X4,X5)|(~r2_hidden(X6,X4)|r2_hidden(X6,X5)))&((r2_hidden(esk1_2(X7,X8),X7)|r1_tarski(X7,X8))&(~r2_hidden(esk1_2(X7,X8),X8)|r1_tarski(X7,X8)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.09/0.31  fof(c_0_11, plain, ![X23, X24, X25]:((~v2_tex_2(X24,X23)|(~m1_subset_1(X25,k1_zfmisc_1(u1_struct_0(X23)))|(~r1_tarski(X25,X24)|k9_subset_1(u1_struct_0(X23),X24,k2_pre_topc(X23,X25))=X25))|~m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))|(v2_struct_0(X23)|~v2_pre_topc(X23)|~l1_pre_topc(X23)))&((m1_subset_1(esk2_2(X23,X24),k1_zfmisc_1(u1_struct_0(X23)))|v2_tex_2(X24,X23)|~m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))|(v2_struct_0(X23)|~v2_pre_topc(X23)|~l1_pre_topc(X23)))&((r1_tarski(esk2_2(X23,X24),X24)|v2_tex_2(X24,X23)|~m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))|(v2_struct_0(X23)|~v2_pre_topc(X23)|~l1_pre_topc(X23)))&(k9_subset_1(u1_struct_0(X23),X24,k2_pre_topc(X23,esk2_2(X23,X24)))!=esk2_2(X23,X24)|v2_tex_2(X24,X23)|~m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))|(v2_struct_0(X23)|~v2_pre_topc(X23)|~l1_pre_topc(X23)))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t41_tex_2])])])])])])).
% 0.09/0.31  cnf(c_0_12, plain, (m1_subset_1(k1_tarski(X1),k1_zfmisc_1(X2))|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.09/0.31  cnf(c_0_13, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.09/0.31  fof(c_0_14, negated_conjecture, ~(![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v2_tex_2(X2,X1)=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>(r2_hidden(X3,X2)=>k9_subset_1(u1_struct_0(X1),X2,k2_pre_topc(X1,k6_domain_1(u1_struct_0(X1),X3)))=k6_domain_1(u1_struct_0(X1),X3))))))), inference(assume_negation,[status(cth)],[t42_tex_2])).
% 0.09/0.31  fof(c_0_15, plain, ![X21, X22]:(v1_xboole_0(X21)|~m1_subset_1(X22,X21)|k6_domain_1(X21,X22)=k1_tarski(X22)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_k6_domain_1])])])).
% 0.09/0.31  fof(c_0_16, plain, ![X16, X17]:((~m1_subset_1(X16,k1_zfmisc_1(X17))|r1_tarski(X16,X17))&(~r1_tarski(X16,X17)|m1_subset_1(X16,k1_zfmisc_1(X17)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.09/0.31  cnf(c_0_17, plain, (r1_tarski(X1,X2)|~r2_hidden(esk1_2(X1,X2),X2)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.09/0.31  cnf(c_0_18, plain, (r2_hidden(esk1_2(X1,X2),X1)|r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.09/0.31  cnf(c_0_19, plain, (k9_subset_1(u1_struct_0(X2),X1,k2_pre_topc(X2,X3))=X3|v2_struct_0(X2)|~v2_tex_2(X1,X2)|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))|~r1_tarski(X3,X1)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))|~v2_pre_topc(X2)|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.09/0.31  cnf(c_0_20, plain, (m1_subset_1(k2_tarski(X1,X1),k1_zfmisc_1(X2))|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[c_0_12, c_0_13])).
% 0.09/0.31  fof(c_0_21, negated_conjecture, (((~v2_struct_0(esk3_0)&v2_pre_topc(esk3_0))&l1_pre_topc(esk3_0))&(m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0)))&(v2_tex_2(esk4_0,esk3_0)&(m1_subset_1(esk5_0,u1_struct_0(esk3_0))&(r2_hidden(esk5_0,esk4_0)&k9_subset_1(u1_struct_0(esk3_0),esk4_0,k2_pre_topc(esk3_0,k6_domain_1(u1_struct_0(esk3_0),esk5_0)))!=k6_domain_1(u1_struct_0(esk3_0),esk5_0)))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_14])])])])).
% 0.09/0.31  cnf(c_0_22, plain, (v1_xboole_0(X1)|k6_domain_1(X1,X2)=k1_tarski(X2)|~m1_subset_1(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.09/0.31  fof(c_0_23, plain, ![X18, X19, X20]:(~r2_hidden(X18,X19)|~m1_subset_1(X19,k1_zfmisc_1(X20))|~v1_xboole_0(X20)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t5_subset])])).
% 0.09/0.31  cnf(c_0_24, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.09/0.31  cnf(c_0_25, plain, (r1_tarski(X1,X1)), inference(spm,[status(thm)],[c_0_17, c_0_18])).
% 0.09/0.31  cnf(c_0_26, plain, (k9_subset_1(u1_struct_0(X1),X2,k2_pre_topc(X1,k2_tarski(X3,X3)))=k2_tarski(X3,X3)|v2_struct_0(X1)|~v2_tex_2(X2,X1)|~l1_pre_topc(X1)|~v2_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~r2_hidden(X3,u1_struct_0(X1))|~r1_tarski(k2_tarski(X3,X3),X2)), inference(spm,[status(thm)],[c_0_19, c_0_20])).
% 0.09/0.31  cnf(c_0_27, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.09/0.31  cnf(c_0_28, negated_conjecture, (v2_tex_2(esk4_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.09/0.31  cnf(c_0_29, negated_conjecture, (l1_pre_topc(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.09/0.31  cnf(c_0_30, negated_conjecture, (v2_pre_topc(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.09/0.31  cnf(c_0_31, negated_conjecture, (~v2_struct_0(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.09/0.31  cnf(c_0_32, plain, (k6_domain_1(X1,X2)=k2_tarski(X2,X2)|v1_xboole_0(X1)|~m1_subset_1(X2,X1)), inference(rw,[status(thm)],[c_0_22, c_0_13])).
% 0.09/0.31  cnf(c_0_33, negated_conjecture, (m1_subset_1(esk5_0,u1_struct_0(esk3_0))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.09/0.31  cnf(c_0_34, plain, (~r2_hidden(X1,X2)|~m1_subset_1(X2,k1_zfmisc_1(X3))|~v1_xboole_0(X3)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.09/0.31  cnf(c_0_35, plain, (m1_subset_1(X1,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.09/0.31  cnf(c_0_36, plain, (r2_hidden(X3,X2)|~r1_tarski(X1,X2)|~r2_hidden(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.09/0.31  cnf(c_0_37, negated_conjecture, (r2_hidden(esk5_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.09/0.31  cnf(c_0_38, negated_conjecture, (k9_subset_1(u1_struct_0(esk3_0),esk4_0,k2_pre_topc(esk3_0,k2_tarski(X1,X1)))=k2_tarski(X1,X1)|~r2_hidden(X1,u1_struct_0(esk3_0))|~r1_tarski(k2_tarski(X1,X1),esk4_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_28]), c_0_29]), c_0_30])]), c_0_31])).
% 0.09/0.31  cnf(c_0_39, negated_conjecture, (k2_tarski(esk5_0,esk5_0)=k6_domain_1(u1_struct_0(esk3_0),esk5_0)|v1_xboole_0(u1_struct_0(esk3_0))), inference(spm,[status(thm)],[c_0_32, c_0_33])).
% 0.09/0.31  cnf(c_0_40, negated_conjecture, (k9_subset_1(u1_struct_0(esk3_0),esk4_0,k2_pre_topc(esk3_0,k6_domain_1(u1_struct_0(esk3_0),esk5_0)))!=k6_domain_1(u1_struct_0(esk3_0),esk5_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.09/0.31  cnf(c_0_41, plain, (~v1_xboole_0(X1)|~r2_hidden(X2,X1)), inference(spm,[status(thm)],[c_0_34, c_0_35])).
% 0.09/0.31  cnf(c_0_42, negated_conjecture, (r2_hidden(esk5_0,X1)|~r1_tarski(esk4_0,X1)), inference(spm,[status(thm)],[c_0_36, c_0_37])).
% 0.09/0.31  cnf(c_0_43, negated_conjecture, (~r2_hidden(esk5_0,u1_struct_0(esk3_0))|~r1_tarski(k6_domain_1(u1_struct_0(esk3_0),esk5_0),esk4_0)), inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_39]), c_0_40]), c_0_41])).
% 0.09/0.31  cnf(c_0_44, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.09/0.31  cnf(c_0_45, negated_conjecture, (v1_xboole_0(u1_struct_0(esk3_0))|m1_subset_1(k6_domain_1(u1_struct_0(esk3_0),esk5_0),k1_zfmisc_1(X1))|~r2_hidden(esk5_0,X1)), inference(spm,[status(thm)],[c_0_20, c_0_39])).
% 0.09/0.31  cnf(c_0_46, negated_conjecture, (r2_hidden(esk5_0,X1)|~r1_tarski(esk4_0,X2)|~r1_tarski(X2,X1)), inference(spm,[status(thm)],[c_0_36, c_0_42])).
% 0.09/0.31  cnf(c_0_47, negated_conjecture, (~m1_subset_1(k6_domain_1(u1_struct_0(esk3_0),esk5_0),k1_zfmisc_1(esk4_0))|~r2_hidden(esk5_0,u1_struct_0(esk3_0))), inference(spm,[status(thm)],[c_0_43, c_0_44])).
% 0.09/0.31  cnf(c_0_48, negated_conjecture, (v1_xboole_0(u1_struct_0(esk3_0))|m1_subset_1(k6_domain_1(u1_struct_0(esk3_0),esk5_0),k1_zfmisc_1(esk4_0))), inference(spm,[status(thm)],[c_0_45, c_0_37])).
% 0.09/0.31  cnf(c_0_49, negated_conjecture, (r2_hidden(esk5_0,X1)|~m1_subset_1(esk4_0,k1_zfmisc_1(X2))|~r1_tarski(X2,X1)), inference(spm,[status(thm)],[c_0_46, c_0_44])).
% 0.09/0.31  cnf(c_0_50, negated_conjecture, (~r2_hidden(esk5_0,u1_struct_0(esk3_0))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_48]), c_0_41])).
% 0.09/0.31  cnf(c_0_51, negated_conjecture, (r2_hidden(esk5_0,X1)|~r1_tarski(u1_struct_0(esk3_0),X1)), inference(spm,[status(thm)],[c_0_49, c_0_27])).
% 0.09/0.31  cnf(c_0_52, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_51]), c_0_25])]), ['proof']).
% 0.09/0.31  # SZS output end CNFRefutation
% 0.09/0.31  # Proof object total steps             : 53
% 0.09/0.31  # Proof object clause steps            : 36
% 0.09/0.31  # Proof object formula steps           : 17
% 0.09/0.31  # Proof object conjectures             : 23
% 0.09/0.31  # Proof object clause conjectures      : 20
% 0.09/0.31  # Proof object formula conjectures     : 3
% 0.09/0.31  # Proof object initial clauses used    : 18
% 0.09/0.31  # Proof object initial formulas used   : 8
% 0.09/0.31  # Proof object generating inferences   : 16
% 0.09/0.31  # Proof object simplifying inferences  : 12
% 0.09/0.31  # Training examples: 0 positive, 0 negative
% 0.09/0.31  # Parsed axioms                        : 9
% 0.09/0.31  # Removed by relevancy pruning/SinE    : 0
% 0.09/0.31  # Initial clauses                      : 22
% 0.09/0.31  # Removed in clause preprocessing      : 1
% 0.09/0.31  # Initial clauses in saturation        : 21
% 0.09/0.31  # Processed clauses                    : 117
% 0.09/0.31  # ...of these trivial                  : 0
% 0.09/0.31  # ...subsumed                          : 22
% 0.09/0.31  # ...remaining for further processing  : 95
% 0.09/0.31  # Other redundant clauses eliminated   : 0
% 0.09/0.31  # Clauses deleted for lack of memory   : 0
% 0.09/0.31  # Backward-subsumed                    : 1
% 0.09/0.31  # Backward-rewritten                   : 0
% 0.09/0.31  # Generated clauses                    : 256
% 0.09/0.31  # ...of the previous two non-trivial   : 248
% 0.09/0.31  # Contextual simplify-reflections      : 3
% 0.09/0.31  # Paramodulations                      : 254
% 0.09/0.31  # Factorizations                       : 2
% 0.09/0.31  # Equation resolutions                 : 0
% 0.09/0.31  # Propositional unsat checks           : 0
% 0.09/0.31  #    Propositional check models        : 0
% 0.09/0.31  #    Propositional check unsatisfiable : 0
% 0.09/0.31  #    Propositional clauses             : 0
% 0.09/0.31  #    Propositional clauses after purity: 0
% 0.09/0.31  #    Propositional unsat core size     : 0
% 0.09/0.31  #    Propositional preprocessing time  : 0.000
% 0.09/0.31  #    Propositional encoding time       : 0.000
% 0.09/0.31  #    Propositional solver time         : 0.000
% 0.09/0.31  #    Success case prop preproc time    : 0.000
% 0.09/0.31  #    Success case prop encoding time   : 0.000
% 0.09/0.31  #    Success case prop solver time     : 0.000
% 0.09/0.31  # Current number of processed clauses  : 94
% 0.09/0.31  #    Positive orientable unit clauses  : 8
% 0.09/0.31  #    Positive unorientable unit clauses: 0
% 0.09/0.31  #    Negative unit clauses             : 4
% 0.09/0.31  #    Non-unit-clauses                  : 82
% 0.09/0.31  # Current number of unprocessed clauses: 151
% 0.09/0.31  # ...number of literals in the above   : 719
% 0.09/0.31  # Current number of archived formulas  : 0
% 0.09/0.31  # Current number of archived clauses   : 2
% 0.09/0.31  # Clause-clause subsumption calls (NU) : 1233
% 0.09/0.31  # Rec. Clause-clause subsumption calls : 580
% 0.09/0.31  # Non-unit clause-clause subsumptions  : 25
% 0.09/0.31  # Unit Clause-clause subsumption calls : 26
% 0.09/0.31  # Rewrite failures with RHS unbound    : 0
% 0.09/0.31  # BW rewrite match attempts            : 13
% 0.09/0.31  # BW rewrite match successes           : 0
% 0.09/0.31  # Condensation attempts                : 0
% 0.09/0.31  # Condensation successes               : 0
% 0.09/0.31  # Termbank termtop insertions          : 7384
% 0.09/0.31  
% 0.09/0.31  # -------------------------------------------------
% 0.09/0.31  # User time                : 0.016 s
% 0.09/0.31  # System time              : 0.007 s
% 0.09/0.31  # Total time               : 0.023 s
% 0.09/0.31  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
