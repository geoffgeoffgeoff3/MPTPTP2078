%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT1297+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n032.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:41:04 EST 2020

% Result     : Theorem 0.16s
% Output     : CNFRefutation 0.16s
% Verified   : 
% Statistics : Number of formulae       :   21 (  61 expanded)
%              Number of clauses        :   12 (  21 expanded)
%              Number of leaves         :    4 (  15 expanded)
%              Depth                    :    6
%              Number of atoms          :   52 ( 210 expanded)
%              Number of equality atoms :    4 (   4 expanded)
%              Maximal formula depth    :    7 (   4 average)
%              Maximal clause size      :    6 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t13_tops_2,conjecture,(
    ! [X1] :
      ( l1_struct_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
         => ( v1_finset_1(k7_setfam_1(u1_struct_0(X1),X2))
          <=> v1_finset_1(X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t13_tops_2)).

fof(l13_tops_2,axiom,(
    ! [X1] :
      ( l1_struct_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
         => ( v1_finset_1(k7_setfam_1(u1_struct_0(X1),X2))
           => v1_finset_1(X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l13_tops_2)).

fof(dt_k7_setfam_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))
     => m1_subset_1(k7_setfam_1(X1,X2),k1_zfmisc_1(k1_zfmisc_1(X1))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k7_setfam_1)).

fof(involutiveness_k7_setfam_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))
     => k7_setfam_1(X1,k7_setfam_1(X1,X2)) = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',involutiveness_k7_setfam_1)).

fof(c_0_4,negated_conjecture,(
    ~ ! [X1] :
        ( l1_struct_0(X1)
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
           => ( v1_finset_1(k7_setfam_1(u1_struct_0(X1),X2))
            <=> v1_finset_1(X2) ) ) ) ),
    inference(assume_negation,[status(cth)],[t13_tops_2])).

fof(c_0_5,plain,(
    ! [X7,X8] :
      ( ~ l1_struct_0(X7)
      | ~ m1_subset_1(X8,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X7))))
      | ~ v1_finset_1(k7_setfam_1(u1_struct_0(X7),X8))
      | v1_finset_1(X8) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_tops_2])])])).

fof(c_0_6,negated_conjecture,
    ( l1_struct_0(esk1_0)
    & m1_subset_1(esk2_0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk1_0))))
    & ( ~ v1_finset_1(k7_setfam_1(u1_struct_0(esk1_0),esk2_0))
      | ~ v1_finset_1(esk2_0) )
    & ( v1_finset_1(k7_setfam_1(u1_struct_0(esk1_0),esk2_0))
      | v1_finset_1(esk2_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_4])])])).

fof(c_0_7,plain,(
    ! [X3,X4] :
      ( ~ m1_subset_1(X4,k1_zfmisc_1(k1_zfmisc_1(X3)))
      | m1_subset_1(k7_setfam_1(X3,X4),k1_zfmisc_1(k1_zfmisc_1(X3))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k7_setfam_1])])).

fof(c_0_8,plain,(
    ! [X5,X6] :
      ( ~ m1_subset_1(X6,k1_zfmisc_1(k1_zfmisc_1(X5)))
      | k7_setfam_1(X5,k7_setfam_1(X5,X6)) = X6 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[involutiveness_k7_setfam_1])])).

cnf(c_0_9,plain,
    ( v1_finset_1(X2)
    | ~ l1_struct_0(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
    | ~ v1_finset_1(k7_setfam_1(u1_struct_0(X1),X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_10,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk1_0)))) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_11,negated_conjecture,
    ( l1_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_12,negated_conjecture,
    ( v1_finset_1(k7_setfam_1(u1_struct_0(esk1_0),esk2_0))
    | v1_finset_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_13,plain,
    ( m1_subset_1(k7_setfam_1(X2,X1),k1_zfmisc_1(k1_zfmisc_1(X2)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_14,plain,
    ( k7_setfam_1(X2,k7_setfam_1(X2,X1)) = X1
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_15,negated_conjecture,
    ( ~ v1_finset_1(k7_setfam_1(u1_struct_0(esk1_0),esk2_0))
    | ~ v1_finset_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_16,negated_conjecture,
    ( v1_finset_1(esk2_0) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_9,c_0_10]),c_0_11])]),c_0_12])).

cnf(c_0_17,plain,
    ( v1_finset_1(k7_setfam_1(u1_struct_0(X1),X2))
    | ~ v1_finset_1(k7_setfam_1(u1_struct_0(X1),k7_setfam_1(u1_struct_0(X1),X2)))
    | ~ l1_struct_0(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1)))) ),
    inference(spm,[status(thm)],[c_0_9,c_0_13])).

cnf(c_0_18,negated_conjecture,
    ( k7_setfam_1(u1_struct_0(esk1_0),k7_setfam_1(u1_struct_0(esk1_0),esk2_0)) = esk2_0 ),
    inference(spm,[status(thm)],[c_0_14,c_0_10])).

cnf(c_0_19,negated_conjecture,
    ( ~ v1_finset_1(k7_setfam_1(u1_struct_0(esk1_0),esk2_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_15,c_0_16])])).

cnf(c_0_20,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17,c_0_18]),c_0_16]),c_0_11]),c_0_10])]),c_0_19]),
    [proof]).

%------------------------------------------------------------------------------
