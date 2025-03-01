%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:19:17 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   62 (5951 expanded)
%              Number of clauses        :   53 (2429 expanded)
%              Number of leaves         :    4 (1390 expanded)
%              Depth                    :   14
%              Number of atoms          :  278 (28811 expanded)
%              Number of equality atoms :   24 (6307 expanded)
%              Maximal formula depth    :   27 (   4 average)
%              Maximal clause size      :   90 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(free_g1_pre_topc,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))
     => ! [X3,X4] :
          ( g1_pre_topc(X1,X2) = g1_pre_topc(X3,X4)
         => ( X1 = X3
            & X2 = X4 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',free_g1_pre_topc)).

fof(dt_u1_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => m1_subset_1(u1_pre_topc(X1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1)))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_u1_pre_topc)).

fof(t12_tex_2,conjecture,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( l1_pre_topc(X2)
         => ( ( g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))
              & v2_pre_topc(X1) )
           => v2_pre_topc(X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_tex_2)).

fof(d1_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ( v2_pre_topc(X1)
      <=> ( r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))
          & ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
             => ( r1_tarski(X2,u1_pre_topc(X1))
               => r2_hidden(k5_setfam_1(u1_struct_0(X1),X2),u1_pre_topc(X1)) ) )
          & ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
             => ! [X3] :
                  ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
                 => ( ( r2_hidden(X2,u1_pre_topc(X1))
                      & r2_hidden(X3,u1_pre_topc(X1)) )
                   => r2_hidden(k9_subset_1(u1_struct_0(X1),X2,X3),u1_pre_topc(X1)) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_pre_topc)).

fof(c_0_4,plain,(
    ! [X13,X14,X15,X16] :
      ( ( X13 = X15
        | g1_pre_topc(X13,X14) != g1_pre_topc(X15,X16)
        | ~ m1_subset_1(X14,k1_zfmisc_1(k1_zfmisc_1(X13))) )
      & ( X14 = X16
        | g1_pre_topc(X13,X14) != g1_pre_topc(X15,X16)
        | ~ m1_subset_1(X14,k1_zfmisc_1(k1_zfmisc_1(X13))) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[free_g1_pre_topc])])])])).

fof(c_0_5,plain,(
    ! [X12] :
      ( ~ l1_pre_topc(X12)
      | m1_subset_1(u1_pre_topc(X12),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X12)))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_u1_pre_topc])])).

fof(c_0_6,negated_conjecture,(
    ~ ! [X1] :
        ( l1_pre_topc(X1)
       => ! [X2] :
            ( l1_pre_topc(X2)
           => ( ( g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))
                & v2_pre_topc(X1) )
             => v2_pre_topc(X2) ) ) ) ),
    inference(assume_negation,[status(cth)],[t12_tex_2])).

cnf(c_0_7,plain,
    ( X1 = X2
    | g1_pre_topc(X3,X1) != g1_pre_topc(X4,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_8,plain,
    ( m1_subset_1(u1_pre_topc(X1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

fof(c_0_9,negated_conjecture,
    ( l1_pre_topc(esk4_0)
    & l1_pre_topc(esk5_0)
    & g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk4_0)) = g1_pre_topc(u1_struct_0(esk5_0),u1_pre_topc(esk5_0))
    & v2_pre_topc(esk4_0)
    & ~ v2_pre_topc(esk5_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).

cnf(c_0_10,plain,
    ( u1_pre_topc(X1) = X2
    | g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) != g1_pre_topc(X3,X2)
    | ~ l1_pre_topc(X1) ),
    inference(spm,[status(thm)],[c_0_7,c_0_8])).

cnf(c_0_11,negated_conjecture,
    ( g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk4_0)) = g1_pre_topc(u1_struct_0(esk5_0),u1_pre_topc(esk5_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_12,negated_conjecture,
    ( l1_pre_topc(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_13,negated_conjecture,
    ( u1_pre_topc(esk4_0) = X1
    | g1_pre_topc(u1_struct_0(esk5_0),u1_pre_topc(esk5_0)) != g1_pre_topc(X2,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_10,c_0_11]),c_0_12])])).

cnf(c_0_14,negated_conjecture,
    ( u1_pre_topc(esk4_0) = u1_pre_topc(esk5_0) ),
    inference(er,[status(thm)],[c_0_13])).

fof(c_0_15,plain,(
    ! [X5,X6,X7,X8] :
      ( ( r2_hidden(u1_struct_0(X5),u1_pre_topc(X5))
        | ~ v2_pre_topc(X5)
        | ~ l1_pre_topc(X5) )
      & ( ~ m1_subset_1(X6,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X5))))
        | ~ r1_tarski(X6,u1_pre_topc(X5))
        | r2_hidden(k5_setfam_1(u1_struct_0(X5),X6),u1_pre_topc(X5))
        | ~ v2_pre_topc(X5)
        | ~ l1_pre_topc(X5) )
      & ( ~ m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(X5)))
        | ~ m1_subset_1(X8,k1_zfmisc_1(u1_struct_0(X5)))
        | ~ r2_hidden(X7,u1_pre_topc(X5))
        | ~ r2_hidden(X8,u1_pre_topc(X5))
        | r2_hidden(k9_subset_1(u1_struct_0(X5),X7,X8),u1_pre_topc(X5))
        | ~ v2_pre_topc(X5)
        | ~ l1_pre_topc(X5) )
      & ( m1_subset_1(esk2_1(X5),k1_zfmisc_1(u1_struct_0(X5)))
        | m1_subset_1(esk1_1(X5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X5))))
        | ~ r2_hidden(u1_struct_0(X5),u1_pre_topc(X5))
        | v2_pre_topc(X5)
        | ~ l1_pre_topc(X5) )
      & ( m1_subset_1(esk3_1(X5),k1_zfmisc_1(u1_struct_0(X5)))
        | m1_subset_1(esk1_1(X5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X5))))
        | ~ r2_hidden(u1_struct_0(X5),u1_pre_topc(X5))
        | v2_pre_topc(X5)
        | ~ l1_pre_topc(X5) )
      & ( r2_hidden(esk2_1(X5),u1_pre_topc(X5))
        | m1_subset_1(esk1_1(X5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X5))))
        | ~ r2_hidden(u1_struct_0(X5),u1_pre_topc(X5))
        | v2_pre_topc(X5)
        | ~ l1_pre_topc(X5) )
      & ( r2_hidden(esk3_1(X5),u1_pre_topc(X5))
        | m1_subset_1(esk1_1(X5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X5))))
        | ~ r2_hidden(u1_struct_0(X5),u1_pre_topc(X5))
        | v2_pre_topc(X5)
        | ~ l1_pre_topc(X5) )
      & ( ~ r2_hidden(k9_subset_1(u1_struct_0(X5),esk2_1(X5),esk3_1(X5)),u1_pre_topc(X5))
        | m1_subset_1(esk1_1(X5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X5))))
        | ~ r2_hidden(u1_struct_0(X5),u1_pre_topc(X5))
        | v2_pre_topc(X5)
        | ~ l1_pre_topc(X5) )
      & ( m1_subset_1(esk2_1(X5),k1_zfmisc_1(u1_struct_0(X5)))
        | r1_tarski(esk1_1(X5),u1_pre_topc(X5))
        | ~ r2_hidden(u1_struct_0(X5),u1_pre_topc(X5))
        | v2_pre_topc(X5)
        | ~ l1_pre_topc(X5) )
      & ( m1_subset_1(esk3_1(X5),k1_zfmisc_1(u1_struct_0(X5)))
        | r1_tarski(esk1_1(X5),u1_pre_topc(X5))
        | ~ r2_hidden(u1_struct_0(X5),u1_pre_topc(X5))
        | v2_pre_topc(X5)
        | ~ l1_pre_topc(X5) )
      & ( r2_hidden(esk2_1(X5),u1_pre_topc(X5))
        | r1_tarski(esk1_1(X5),u1_pre_topc(X5))
        | ~ r2_hidden(u1_struct_0(X5),u1_pre_topc(X5))
        | v2_pre_topc(X5)
        | ~ l1_pre_topc(X5) )
      & ( r2_hidden(esk3_1(X5),u1_pre_topc(X5))
        | r1_tarski(esk1_1(X5),u1_pre_topc(X5))
        | ~ r2_hidden(u1_struct_0(X5),u1_pre_topc(X5))
        | v2_pre_topc(X5)
        | ~ l1_pre_topc(X5) )
      & ( ~ r2_hidden(k9_subset_1(u1_struct_0(X5),esk2_1(X5),esk3_1(X5)),u1_pre_topc(X5))
        | r1_tarski(esk1_1(X5),u1_pre_topc(X5))
        | ~ r2_hidden(u1_struct_0(X5),u1_pre_topc(X5))
        | v2_pre_topc(X5)
        | ~ l1_pre_topc(X5) )
      & ( m1_subset_1(esk2_1(X5),k1_zfmisc_1(u1_struct_0(X5)))
        | ~ r2_hidden(k5_setfam_1(u1_struct_0(X5),esk1_1(X5)),u1_pre_topc(X5))
        | ~ r2_hidden(u1_struct_0(X5),u1_pre_topc(X5))
        | v2_pre_topc(X5)
        | ~ l1_pre_topc(X5) )
      & ( m1_subset_1(esk3_1(X5),k1_zfmisc_1(u1_struct_0(X5)))
        | ~ r2_hidden(k5_setfam_1(u1_struct_0(X5),esk1_1(X5)),u1_pre_topc(X5))
        | ~ r2_hidden(u1_struct_0(X5),u1_pre_topc(X5))
        | v2_pre_topc(X5)
        | ~ l1_pre_topc(X5) )
      & ( r2_hidden(esk2_1(X5),u1_pre_topc(X5))
        | ~ r2_hidden(k5_setfam_1(u1_struct_0(X5),esk1_1(X5)),u1_pre_topc(X5))
        | ~ r2_hidden(u1_struct_0(X5),u1_pre_topc(X5))
        | v2_pre_topc(X5)
        | ~ l1_pre_topc(X5) )
      & ( r2_hidden(esk3_1(X5),u1_pre_topc(X5))
        | ~ r2_hidden(k5_setfam_1(u1_struct_0(X5),esk1_1(X5)),u1_pre_topc(X5))
        | ~ r2_hidden(u1_struct_0(X5),u1_pre_topc(X5))
        | v2_pre_topc(X5)
        | ~ l1_pre_topc(X5) )
      & ( ~ r2_hidden(k9_subset_1(u1_struct_0(X5),esk2_1(X5),esk3_1(X5)),u1_pre_topc(X5))
        | ~ r2_hidden(k5_setfam_1(u1_struct_0(X5),esk1_1(X5)),u1_pre_topc(X5))
        | ~ r2_hidden(u1_struct_0(X5),u1_pre_topc(X5))
        | v2_pre_topc(X5)
        | ~ l1_pre_topc(X5) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_pre_topc])])])])])).

cnf(c_0_16,plain,
    ( X1 = X2
    | g1_pre_topc(X1,X3) != g1_pre_topc(X2,X4)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_17,negated_conjecture,
    ( m1_subset_1(u1_pre_topc(esk5_0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk4_0)))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_8,c_0_14]),c_0_12])])).

cnf(c_0_18,negated_conjecture,
    ( g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk5_0)) = g1_pre_topc(u1_struct_0(esk5_0),u1_pre_topc(esk5_0)) ),
    inference(rw,[status(thm)],[c_0_11,c_0_14])).

cnf(c_0_19,plain,
    ( r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_20,negated_conjecture,
    ( v2_pre_topc(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_21,negated_conjecture,
    ( u1_struct_0(esk4_0) = X1
    | g1_pre_topc(u1_struct_0(esk5_0),u1_pre_topc(esk5_0)) != g1_pre_topc(X1,X2) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_17]),c_0_18])).

cnf(c_0_22,negated_conjecture,
    ( r2_hidden(u1_struct_0(esk4_0),u1_pre_topc(esk5_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_14]),c_0_20]),c_0_12])])).

cnf(c_0_23,negated_conjecture,
    ( u1_struct_0(esk4_0) = u1_struct_0(esk5_0) ),
    inference(er,[status(thm)],[c_0_21])).

cnf(c_0_24,plain,
    ( r2_hidden(k5_setfam_1(u1_struct_0(X2),X1),u1_pre_topc(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2))))
    | ~ r1_tarski(X1,u1_pre_topc(X2))
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_25,plain,
    ( m1_subset_1(esk3_1(X1),k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(esk1_1(X1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
    | v2_pre_topc(X1)
    | ~ r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_26,negated_conjecture,
    ( r2_hidden(u1_struct_0(esk5_0),u1_pre_topc(esk5_0)) ),
    inference(rw,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_27,negated_conjecture,
    ( l1_pre_topc(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_28,negated_conjecture,
    ( ~ v2_pre_topc(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_29,plain,
    ( m1_subset_1(esk3_1(X1),k1_zfmisc_1(u1_struct_0(X1)))
    | r1_tarski(esk1_1(X1),u1_pre_topc(X1))
    | v2_pre_topc(X1)
    | ~ r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_30,plain,
    ( m1_subset_1(esk2_1(X1),k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(esk1_1(X1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
    | v2_pre_topc(X1)
    | ~ r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_31,plain,
    ( m1_subset_1(esk2_1(X1),k1_zfmisc_1(u1_struct_0(X1)))
    | r1_tarski(esk1_1(X1),u1_pre_topc(X1))
    | v2_pre_topc(X1)
    | ~ r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_32,plain,
    ( r2_hidden(esk3_1(X1),u1_pre_topc(X1))
    | m1_subset_1(esk1_1(X1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
    | v2_pre_topc(X1)
    | ~ r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_33,plain,
    ( r2_hidden(esk3_1(X1),u1_pre_topc(X1))
    | r1_tarski(esk1_1(X1),u1_pre_topc(X1))
    | v2_pre_topc(X1)
    | ~ r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_34,plain,
    ( r2_hidden(esk2_1(X1),u1_pre_topc(X1))
    | m1_subset_1(esk1_1(X1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
    | v2_pre_topc(X1)
    | ~ r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_35,plain,
    ( r2_hidden(esk2_1(X1),u1_pre_topc(X1))
    | r1_tarski(esk1_1(X1),u1_pre_topc(X1))
    | v2_pre_topc(X1)
    | ~ r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_36,plain,
    ( r2_hidden(k9_subset_1(u1_struct_0(X2),X1,X3),u1_pre_topc(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ r2_hidden(X1,u1_pre_topc(X2))
    | ~ r2_hidden(X3,u1_pre_topc(X2))
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_37,plain,
    ( m1_subset_1(esk3_1(X1),k1_zfmisc_1(u1_struct_0(X1)))
    | v2_pre_topc(X1)
    | ~ r2_hidden(k5_setfam_1(u1_struct_0(X1),esk1_1(X1)),u1_pre_topc(X1))
    | ~ r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_38,negated_conjecture,
    ( r2_hidden(k5_setfam_1(u1_struct_0(esk5_0),X1),u1_pre_topc(esk5_0))
    | ~ r1_tarski(X1,u1_pre_topc(esk5_0))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk5_0)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_14]),c_0_20]),c_0_12])]),c_0_23]),c_0_23])).

cnf(c_0_39,negated_conjecture,
    ( m1_subset_1(esk1_1(esk5_0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk5_0))))
    | m1_subset_1(esk3_1(esk5_0),k1_zfmisc_1(u1_struct_0(esk5_0))) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_26]),c_0_27])]),c_0_28])).

cnf(c_0_40,negated_conjecture,
    ( r1_tarski(esk1_1(esk5_0),u1_pre_topc(esk5_0))
    | m1_subset_1(esk3_1(esk5_0),k1_zfmisc_1(u1_struct_0(esk5_0))) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_26]),c_0_27])]),c_0_28])).

cnf(c_0_41,plain,
    ( m1_subset_1(esk2_1(X1),k1_zfmisc_1(u1_struct_0(X1)))
    | v2_pre_topc(X1)
    | ~ r2_hidden(k5_setfam_1(u1_struct_0(X1),esk1_1(X1)),u1_pre_topc(X1))
    | ~ r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_42,negated_conjecture,
    ( m1_subset_1(esk1_1(esk5_0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk5_0))))
    | m1_subset_1(esk2_1(esk5_0),k1_zfmisc_1(u1_struct_0(esk5_0))) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_26]),c_0_27])]),c_0_28])).

cnf(c_0_43,negated_conjecture,
    ( r1_tarski(esk1_1(esk5_0),u1_pre_topc(esk5_0))
    | m1_subset_1(esk2_1(esk5_0),k1_zfmisc_1(u1_struct_0(esk5_0))) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_26]),c_0_27])]),c_0_28])).

cnf(c_0_44,plain,
    ( r2_hidden(esk3_1(X1),u1_pre_topc(X1))
    | v2_pre_topc(X1)
    | ~ r2_hidden(k5_setfam_1(u1_struct_0(X1),esk1_1(X1)),u1_pre_topc(X1))
    | ~ r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_45,negated_conjecture,
    ( m1_subset_1(esk1_1(esk5_0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk5_0))))
    | r2_hidden(esk3_1(esk5_0),u1_pre_topc(esk5_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_26]),c_0_27])]),c_0_28])).

cnf(c_0_46,negated_conjecture,
    ( r1_tarski(esk1_1(esk5_0),u1_pre_topc(esk5_0))
    | r2_hidden(esk3_1(esk5_0),u1_pre_topc(esk5_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_26]),c_0_27])]),c_0_28])).

cnf(c_0_47,plain,
    ( r2_hidden(esk2_1(X1),u1_pre_topc(X1))
    | v2_pre_topc(X1)
    | ~ r2_hidden(k5_setfam_1(u1_struct_0(X1),esk1_1(X1)),u1_pre_topc(X1))
    | ~ r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_48,negated_conjecture,
    ( m1_subset_1(esk1_1(esk5_0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk5_0))))
    | r2_hidden(esk2_1(esk5_0),u1_pre_topc(esk5_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_26]),c_0_27])]),c_0_28])).

cnf(c_0_49,negated_conjecture,
    ( r1_tarski(esk1_1(esk5_0),u1_pre_topc(esk5_0))
    | r2_hidden(esk2_1(esk5_0),u1_pre_topc(esk5_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_26]),c_0_27])]),c_0_28])).

cnf(c_0_50,plain,
    ( v2_pre_topc(X1)
    | ~ r2_hidden(k9_subset_1(u1_struct_0(X1),esk2_1(X1),esk3_1(X1)),u1_pre_topc(X1))
    | ~ r2_hidden(k5_setfam_1(u1_struct_0(X1),esk1_1(X1)),u1_pre_topc(X1))
    | ~ r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_51,negated_conjecture,
    ( r2_hidden(k9_subset_1(u1_struct_0(esk5_0),X1,X2),u1_pre_topc(esk5_0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(esk5_0)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk5_0)))
    | ~ r2_hidden(X2,u1_pre_topc(esk5_0))
    | ~ r2_hidden(X1,u1_pre_topc(esk5_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_14]),c_0_23]),c_0_23]),c_0_23]),c_0_20]),c_0_12])])).

cnf(c_0_52,negated_conjecture,
    ( m1_subset_1(esk3_1(esk5_0),k1_zfmisc_1(u1_struct_0(esk5_0))) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_38]),c_0_26]),c_0_27])]),c_0_28]),c_0_39]),c_0_40])).

cnf(c_0_53,negated_conjecture,
    ( m1_subset_1(esk2_1(esk5_0),k1_zfmisc_1(u1_struct_0(esk5_0))) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_38]),c_0_26]),c_0_27])]),c_0_28]),c_0_42]),c_0_43])).

cnf(c_0_54,negated_conjecture,
    ( r2_hidden(esk3_1(esk5_0),u1_pre_topc(esk5_0)) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_38]),c_0_26]),c_0_27])]),c_0_28]),c_0_45]),c_0_46])).

cnf(c_0_55,negated_conjecture,
    ( r2_hidden(esk2_1(esk5_0),u1_pre_topc(esk5_0)) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_38]),c_0_26]),c_0_27])]),c_0_28]),c_0_48]),c_0_49])).

cnf(c_0_56,plain,
    ( r1_tarski(esk1_1(X1),u1_pre_topc(X1))
    | v2_pre_topc(X1)
    | ~ r2_hidden(k9_subset_1(u1_struct_0(X1),esk2_1(X1),esk3_1(X1)),u1_pre_topc(X1))
    | ~ r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_57,negated_conjecture,
    ( ~ r2_hidden(k5_setfam_1(u1_struct_0(esk5_0),esk1_1(esk5_0)),u1_pre_topc(esk5_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_51]),c_0_26]),c_0_27]),c_0_52]),c_0_53]),c_0_54]),c_0_55])]),c_0_28])).

cnf(c_0_58,negated_conjecture,
    ( r1_tarski(esk1_1(esk5_0),u1_pre_topc(esk5_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56,c_0_51]),c_0_26]),c_0_27]),c_0_52]),c_0_53]),c_0_54]),c_0_55])]),c_0_28])).

cnf(c_0_59,plain,
    ( m1_subset_1(esk1_1(X1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
    | v2_pre_topc(X1)
    | ~ r2_hidden(k9_subset_1(u1_struct_0(X1),esk2_1(X1),esk3_1(X1)),u1_pre_topc(X1))
    | ~ r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_60,negated_conjecture,
    ( ~ m1_subset_1(esk1_1(esk5_0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk5_0)))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_38]),c_0_58])])).

cnf(c_0_61,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59,c_0_51]),c_0_26]),c_0_27]),c_0_52]),c_0_53]),c_0_54]),c_0_55])]),c_0_28]),c_0_60]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n006.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 14:20:07 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.20/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.20/0.38  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.20/0.38  #
% 0.20/0.38  # Preprocessing time       : 0.027 s
% 0.20/0.38  # Presaturation interreduction done
% 0.20/0.38  
% 0.20/0.38  # Proof found!
% 0.20/0.38  # SZS status Theorem
% 0.20/0.38  # SZS output start CNFRefutation
% 0.20/0.38  fof(free_g1_pre_topc, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))=>![X3, X4]:(g1_pre_topc(X1,X2)=g1_pre_topc(X3,X4)=>(X1=X3&X2=X4))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', free_g1_pre_topc)).
% 0.20/0.38  fof(dt_u1_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>m1_subset_1(u1_pre_topc(X1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_u1_pre_topc)).
% 0.20/0.38  fof(t12_tex_2, conjecture, ![X1]:(l1_pre_topc(X1)=>![X2]:(l1_pre_topc(X2)=>((g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1))=g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))&v2_pre_topc(X1))=>v2_pre_topc(X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t12_tex_2)).
% 0.20/0.38  fof(d1_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>(v2_pre_topc(X1)<=>((r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))&![X2]:(m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))=>(r1_tarski(X2,u1_pre_topc(X1))=>r2_hidden(k5_setfam_1(u1_struct_0(X1),X2),u1_pre_topc(X1)))))&![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>((r2_hidden(X2,u1_pre_topc(X1))&r2_hidden(X3,u1_pre_topc(X1)))=>r2_hidden(k9_subset_1(u1_struct_0(X1),X2,X3),u1_pre_topc(X1)))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_pre_topc)).
% 0.20/0.38  fof(c_0_4, plain, ![X13, X14, X15, X16]:((X13=X15|g1_pre_topc(X13,X14)!=g1_pre_topc(X15,X16)|~m1_subset_1(X14,k1_zfmisc_1(k1_zfmisc_1(X13))))&(X14=X16|g1_pre_topc(X13,X14)!=g1_pre_topc(X15,X16)|~m1_subset_1(X14,k1_zfmisc_1(k1_zfmisc_1(X13))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[free_g1_pre_topc])])])])).
% 0.20/0.38  fof(c_0_5, plain, ![X12]:(~l1_pre_topc(X12)|m1_subset_1(u1_pre_topc(X12),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X12))))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_u1_pre_topc])])).
% 0.20/0.38  fof(c_0_6, negated_conjecture, ~(![X1]:(l1_pre_topc(X1)=>![X2]:(l1_pre_topc(X2)=>((g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1))=g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))&v2_pre_topc(X1))=>v2_pre_topc(X2))))), inference(assume_negation,[status(cth)],[t12_tex_2])).
% 0.20/0.38  cnf(c_0_7, plain, (X1=X2|g1_pre_topc(X3,X1)!=g1_pre_topc(X4,X2)|~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X3)))), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.20/0.38  cnf(c_0_8, plain, (m1_subset_1(u1_pre_topc(X1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.20/0.38  fof(c_0_9, negated_conjecture, (l1_pre_topc(esk4_0)&(l1_pre_topc(esk5_0)&((g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk4_0))=g1_pre_topc(u1_struct_0(esk5_0),u1_pre_topc(esk5_0))&v2_pre_topc(esk4_0))&~v2_pre_topc(esk5_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).
% 0.20/0.38  cnf(c_0_10, plain, (u1_pre_topc(X1)=X2|g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1))!=g1_pre_topc(X3,X2)|~l1_pre_topc(X1)), inference(spm,[status(thm)],[c_0_7, c_0_8])).
% 0.20/0.38  cnf(c_0_11, negated_conjecture, (g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk4_0))=g1_pre_topc(u1_struct_0(esk5_0),u1_pre_topc(esk5_0))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.20/0.38  cnf(c_0_12, negated_conjecture, (l1_pre_topc(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.20/0.38  cnf(c_0_13, negated_conjecture, (u1_pre_topc(esk4_0)=X1|g1_pre_topc(u1_struct_0(esk5_0),u1_pre_topc(esk5_0))!=g1_pre_topc(X2,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_10, c_0_11]), c_0_12])])).
% 0.20/0.38  cnf(c_0_14, negated_conjecture, (u1_pre_topc(esk4_0)=u1_pre_topc(esk5_0)), inference(er,[status(thm)],[c_0_13])).
% 0.20/0.38  fof(c_0_15, plain, ![X5, X6, X7, X8]:((((r2_hidden(u1_struct_0(X5),u1_pre_topc(X5))|~v2_pre_topc(X5)|~l1_pre_topc(X5))&(~m1_subset_1(X6,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X5))))|(~r1_tarski(X6,u1_pre_topc(X5))|r2_hidden(k5_setfam_1(u1_struct_0(X5),X6),u1_pre_topc(X5)))|~v2_pre_topc(X5)|~l1_pre_topc(X5)))&(~m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(X5)))|(~m1_subset_1(X8,k1_zfmisc_1(u1_struct_0(X5)))|(~r2_hidden(X7,u1_pre_topc(X5))|~r2_hidden(X8,u1_pre_topc(X5))|r2_hidden(k9_subset_1(u1_struct_0(X5),X7,X8),u1_pre_topc(X5))))|~v2_pre_topc(X5)|~l1_pre_topc(X5)))&(((m1_subset_1(esk2_1(X5),k1_zfmisc_1(u1_struct_0(X5)))|(m1_subset_1(esk1_1(X5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X5))))|~r2_hidden(u1_struct_0(X5),u1_pre_topc(X5)))|v2_pre_topc(X5)|~l1_pre_topc(X5))&((m1_subset_1(esk3_1(X5),k1_zfmisc_1(u1_struct_0(X5)))|(m1_subset_1(esk1_1(X5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X5))))|~r2_hidden(u1_struct_0(X5),u1_pre_topc(X5)))|v2_pre_topc(X5)|~l1_pre_topc(X5))&(((r2_hidden(esk2_1(X5),u1_pre_topc(X5))|(m1_subset_1(esk1_1(X5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X5))))|~r2_hidden(u1_struct_0(X5),u1_pre_topc(X5)))|v2_pre_topc(X5)|~l1_pre_topc(X5))&(r2_hidden(esk3_1(X5),u1_pre_topc(X5))|(m1_subset_1(esk1_1(X5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X5))))|~r2_hidden(u1_struct_0(X5),u1_pre_topc(X5)))|v2_pre_topc(X5)|~l1_pre_topc(X5)))&(~r2_hidden(k9_subset_1(u1_struct_0(X5),esk2_1(X5),esk3_1(X5)),u1_pre_topc(X5))|(m1_subset_1(esk1_1(X5),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X5))))|~r2_hidden(u1_struct_0(X5),u1_pre_topc(X5)))|v2_pre_topc(X5)|~l1_pre_topc(X5)))))&(((m1_subset_1(esk2_1(X5),k1_zfmisc_1(u1_struct_0(X5)))|(r1_tarski(esk1_1(X5),u1_pre_topc(X5))|~r2_hidden(u1_struct_0(X5),u1_pre_topc(X5)))|v2_pre_topc(X5)|~l1_pre_topc(X5))&((m1_subset_1(esk3_1(X5),k1_zfmisc_1(u1_struct_0(X5)))|(r1_tarski(esk1_1(X5),u1_pre_topc(X5))|~r2_hidden(u1_struct_0(X5),u1_pre_topc(X5)))|v2_pre_topc(X5)|~l1_pre_topc(X5))&(((r2_hidden(esk2_1(X5),u1_pre_topc(X5))|(r1_tarski(esk1_1(X5),u1_pre_topc(X5))|~r2_hidden(u1_struct_0(X5),u1_pre_topc(X5)))|v2_pre_topc(X5)|~l1_pre_topc(X5))&(r2_hidden(esk3_1(X5),u1_pre_topc(X5))|(r1_tarski(esk1_1(X5),u1_pre_topc(X5))|~r2_hidden(u1_struct_0(X5),u1_pre_topc(X5)))|v2_pre_topc(X5)|~l1_pre_topc(X5)))&(~r2_hidden(k9_subset_1(u1_struct_0(X5),esk2_1(X5),esk3_1(X5)),u1_pre_topc(X5))|(r1_tarski(esk1_1(X5),u1_pre_topc(X5))|~r2_hidden(u1_struct_0(X5),u1_pre_topc(X5)))|v2_pre_topc(X5)|~l1_pre_topc(X5)))))&((m1_subset_1(esk2_1(X5),k1_zfmisc_1(u1_struct_0(X5)))|(~r2_hidden(k5_setfam_1(u1_struct_0(X5),esk1_1(X5)),u1_pre_topc(X5))|~r2_hidden(u1_struct_0(X5),u1_pre_topc(X5)))|v2_pre_topc(X5)|~l1_pre_topc(X5))&((m1_subset_1(esk3_1(X5),k1_zfmisc_1(u1_struct_0(X5)))|(~r2_hidden(k5_setfam_1(u1_struct_0(X5),esk1_1(X5)),u1_pre_topc(X5))|~r2_hidden(u1_struct_0(X5),u1_pre_topc(X5)))|v2_pre_topc(X5)|~l1_pre_topc(X5))&(((r2_hidden(esk2_1(X5),u1_pre_topc(X5))|(~r2_hidden(k5_setfam_1(u1_struct_0(X5),esk1_1(X5)),u1_pre_topc(X5))|~r2_hidden(u1_struct_0(X5),u1_pre_topc(X5)))|v2_pre_topc(X5)|~l1_pre_topc(X5))&(r2_hidden(esk3_1(X5),u1_pre_topc(X5))|(~r2_hidden(k5_setfam_1(u1_struct_0(X5),esk1_1(X5)),u1_pre_topc(X5))|~r2_hidden(u1_struct_0(X5),u1_pre_topc(X5)))|v2_pre_topc(X5)|~l1_pre_topc(X5)))&(~r2_hidden(k9_subset_1(u1_struct_0(X5),esk2_1(X5),esk3_1(X5)),u1_pre_topc(X5))|(~r2_hidden(k5_setfam_1(u1_struct_0(X5),esk1_1(X5)),u1_pre_topc(X5))|~r2_hidden(u1_struct_0(X5),u1_pre_topc(X5)))|v2_pre_topc(X5)|~l1_pre_topc(X5)))))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_pre_topc])])])])])).
% 0.20/0.38  cnf(c_0_16, plain, (X1=X2|g1_pre_topc(X1,X3)!=g1_pre_topc(X2,X4)|~m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(X1)))), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.20/0.38  cnf(c_0_17, negated_conjecture, (m1_subset_1(u1_pre_topc(esk5_0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk4_0))))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_8, c_0_14]), c_0_12])])).
% 0.20/0.38  cnf(c_0_18, negated_conjecture, (g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk5_0))=g1_pre_topc(u1_struct_0(esk5_0),u1_pre_topc(esk5_0))), inference(rw,[status(thm)],[c_0_11, c_0_14])).
% 0.20/0.38  cnf(c_0_19, plain, (r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))|~v2_pre_topc(X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_20, negated_conjecture, (v2_pre_topc(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.20/0.38  cnf(c_0_21, negated_conjecture, (u1_struct_0(esk4_0)=X1|g1_pre_topc(u1_struct_0(esk5_0),u1_pre_topc(esk5_0))!=g1_pre_topc(X1,X2)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_17]), c_0_18])).
% 0.20/0.38  cnf(c_0_22, negated_conjecture, (r2_hidden(u1_struct_0(esk4_0),u1_pre_topc(esk5_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_14]), c_0_20]), c_0_12])])).
% 0.20/0.38  cnf(c_0_23, negated_conjecture, (u1_struct_0(esk4_0)=u1_struct_0(esk5_0)), inference(er,[status(thm)],[c_0_21])).
% 0.20/0.38  cnf(c_0_24, plain, (r2_hidden(k5_setfam_1(u1_struct_0(X2),X1),u1_pre_topc(X2))|~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X2))))|~r1_tarski(X1,u1_pre_topc(X2))|~v2_pre_topc(X2)|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_25, plain, (m1_subset_1(esk3_1(X1),k1_zfmisc_1(u1_struct_0(X1)))|m1_subset_1(esk1_1(X1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))|v2_pre_topc(X1)|~r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_26, negated_conjecture, (r2_hidden(u1_struct_0(esk5_0),u1_pre_topc(esk5_0))), inference(rw,[status(thm)],[c_0_22, c_0_23])).
% 0.20/0.38  cnf(c_0_27, negated_conjecture, (l1_pre_topc(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.20/0.38  cnf(c_0_28, negated_conjecture, (~v2_pre_topc(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.20/0.38  cnf(c_0_29, plain, (m1_subset_1(esk3_1(X1),k1_zfmisc_1(u1_struct_0(X1)))|r1_tarski(esk1_1(X1),u1_pre_topc(X1))|v2_pre_topc(X1)|~r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_30, plain, (m1_subset_1(esk2_1(X1),k1_zfmisc_1(u1_struct_0(X1)))|m1_subset_1(esk1_1(X1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))|v2_pre_topc(X1)|~r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_31, plain, (m1_subset_1(esk2_1(X1),k1_zfmisc_1(u1_struct_0(X1)))|r1_tarski(esk1_1(X1),u1_pre_topc(X1))|v2_pre_topc(X1)|~r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_32, plain, (r2_hidden(esk3_1(X1),u1_pre_topc(X1))|m1_subset_1(esk1_1(X1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))|v2_pre_topc(X1)|~r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_33, plain, (r2_hidden(esk3_1(X1),u1_pre_topc(X1))|r1_tarski(esk1_1(X1),u1_pre_topc(X1))|v2_pre_topc(X1)|~r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_34, plain, (r2_hidden(esk2_1(X1),u1_pre_topc(X1))|m1_subset_1(esk1_1(X1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))|v2_pre_topc(X1)|~r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_35, plain, (r2_hidden(esk2_1(X1),u1_pre_topc(X1))|r1_tarski(esk1_1(X1),u1_pre_topc(X1))|v2_pre_topc(X1)|~r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_36, plain, (r2_hidden(k9_subset_1(u1_struct_0(X2),X1,X3),u1_pre_topc(X2))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))|~r2_hidden(X1,u1_pre_topc(X2))|~r2_hidden(X3,u1_pre_topc(X2))|~v2_pre_topc(X2)|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_37, plain, (m1_subset_1(esk3_1(X1),k1_zfmisc_1(u1_struct_0(X1)))|v2_pre_topc(X1)|~r2_hidden(k5_setfam_1(u1_struct_0(X1),esk1_1(X1)),u1_pre_topc(X1))|~r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_38, negated_conjecture, (r2_hidden(k5_setfam_1(u1_struct_0(esk5_0),X1),u1_pre_topc(esk5_0))|~r1_tarski(X1,u1_pre_topc(esk5_0))|~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk5_0))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_14]), c_0_20]), c_0_12])]), c_0_23]), c_0_23])).
% 0.20/0.38  cnf(c_0_39, negated_conjecture, (m1_subset_1(esk1_1(esk5_0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk5_0))))|m1_subset_1(esk3_1(esk5_0),k1_zfmisc_1(u1_struct_0(esk5_0)))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_26]), c_0_27])]), c_0_28])).
% 0.20/0.38  cnf(c_0_40, negated_conjecture, (r1_tarski(esk1_1(esk5_0),u1_pre_topc(esk5_0))|m1_subset_1(esk3_1(esk5_0),k1_zfmisc_1(u1_struct_0(esk5_0)))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_26]), c_0_27])]), c_0_28])).
% 0.20/0.38  cnf(c_0_41, plain, (m1_subset_1(esk2_1(X1),k1_zfmisc_1(u1_struct_0(X1)))|v2_pre_topc(X1)|~r2_hidden(k5_setfam_1(u1_struct_0(X1),esk1_1(X1)),u1_pre_topc(X1))|~r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_42, negated_conjecture, (m1_subset_1(esk1_1(esk5_0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk5_0))))|m1_subset_1(esk2_1(esk5_0),k1_zfmisc_1(u1_struct_0(esk5_0)))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_26]), c_0_27])]), c_0_28])).
% 0.20/0.38  cnf(c_0_43, negated_conjecture, (r1_tarski(esk1_1(esk5_0),u1_pre_topc(esk5_0))|m1_subset_1(esk2_1(esk5_0),k1_zfmisc_1(u1_struct_0(esk5_0)))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_26]), c_0_27])]), c_0_28])).
% 0.20/0.38  cnf(c_0_44, plain, (r2_hidden(esk3_1(X1),u1_pre_topc(X1))|v2_pre_topc(X1)|~r2_hidden(k5_setfam_1(u1_struct_0(X1),esk1_1(X1)),u1_pre_topc(X1))|~r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_45, negated_conjecture, (m1_subset_1(esk1_1(esk5_0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk5_0))))|r2_hidden(esk3_1(esk5_0),u1_pre_topc(esk5_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_26]), c_0_27])]), c_0_28])).
% 0.20/0.38  cnf(c_0_46, negated_conjecture, (r1_tarski(esk1_1(esk5_0),u1_pre_topc(esk5_0))|r2_hidden(esk3_1(esk5_0),u1_pre_topc(esk5_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_26]), c_0_27])]), c_0_28])).
% 0.20/0.38  cnf(c_0_47, plain, (r2_hidden(esk2_1(X1),u1_pre_topc(X1))|v2_pre_topc(X1)|~r2_hidden(k5_setfam_1(u1_struct_0(X1),esk1_1(X1)),u1_pre_topc(X1))|~r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_48, negated_conjecture, (m1_subset_1(esk1_1(esk5_0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk5_0))))|r2_hidden(esk2_1(esk5_0),u1_pre_topc(esk5_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_26]), c_0_27])]), c_0_28])).
% 0.20/0.38  cnf(c_0_49, negated_conjecture, (r1_tarski(esk1_1(esk5_0),u1_pre_topc(esk5_0))|r2_hidden(esk2_1(esk5_0),u1_pre_topc(esk5_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_26]), c_0_27])]), c_0_28])).
% 0.20/0.38  cnf(c_0_50, plain, (v2_pre_topc(X1)|~r2_hidden(k9_subset_1(u1_struct_0(X1),esk2_1(X1),esk3_1(X1)),u1_pre_topc(X1))|~r2_hidden(k5_setfam_1(u1_struct_0(X1),esk1_1(X1)),u1_pre_topc(X1))|~r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_51, negated_conjecture, (r2_hidden(k9_subset_1(u1_struct_0(esk5_0),X1,X2),u1_pre_topc(esk5_0))|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(esk5_0)))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk5_0)))|~r2_hidden(X2,u1_pre_topc(esk5_0))|~r2_hidden(X1,u1_pre_topc(esk5_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_14]), c_0_23]), c_0_23]), c_0_23]), c_0_20]), c_0_12])])).
% 0.20/0.38  cnf(c_0_52, negated_conjecture, (m1_subset_1(esk3_1(esk5_0),k1_zfmisc_1(u1_struct_0(esk5_0)))), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_38]), c_0_26]), c_0_27])]), c_0_28]), c_0_39]), c_0_40])).
% 0.20/0.38  cnf(c_0_53, negated_conjecture, (m1_subset_1(esk2_1(esk5_0),k1_zfmisc_1(u1_struct_0(esk5_0)))), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_38]), c_0_26]), c_0_27])]), c_0_28]), c_0_42]), c_0_43])).
% 0.20/0.38  cnf(c_0_54, negated_conjecture, (r2_hidden(esk3_1(esk5_0),u1_pre_topc(esk5_0))), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_38]), c_0_26]), c_0_27])]), c_0_28]), c_0_45]), c_0_46])).
% 0.20/0.38  cnf(c_0_55, negated_conjecture, (r2_hidden(esk2_1(esk5_0),u1_pre_topc(esk5_0))), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_38]), c_0_26]), c_0_27])]), c_0_28]), c_0_48]), c_0_49])).
% 0.20/0.38  cnf(c_0_56, plain, (r1_tarski(esk1_1(X1),u1_pre_topc(X1))|v2_pre_topc(X1)|~r2_hidden(k9_subset_1(u1_struct_0(X1),esk2_1(X1),esk3_1(X1)),u1_pre_topc(X1))|~r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_57, negated_conjecture, (~r2_hidden(k5_setfam_1(u1_struct_0(esk5_0),esk1_1(esk5_0)),u1_pre_topc(esk5_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_51]), c_0_26]), c_0_27]), c_0_52]), c_0_53]), c_0_54]), c_0_55])]), c_0_28])).
% 0.20/0.38  cnf(c_0_58, negated_conjecture, (r1_tarski(esk1_1(esk5_0),u1_pre_topc(esk5_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56, c_0_51]), c_0_26]), c_0_27]), c_0_52]), c_0_53]), c_0_54]), c_0_55])]), c_0_28])).
% 0.20/0.38  cnf(c_0_59, plain, (m1_subset_1(esk1_1(X1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))|v2_pre_topc(X1)|~r2_hidden(k9_subset_1(u1_struct_0(X1),esk2_1(X1),esk3_1(X1)),u1_pre_topc(X1))|~r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_60, negated_conjecture, (~m1_subset_1(esk1_1(esk5_0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk5_0))))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_38]), c_0_58])])).
% 0.20/0.38  cnf(c_0_61, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59, c_0_51]), c_0_26]), c_0_27]), c_0_52]), c_0_53]), c_0_54]), c_0_55])]), c_0_28]), c_0_60]), ['proof']).
% 0.20/0.38  # SZS output end CNFRefutation
% 0.20/0.38  # Proof object total steps             : 62
% 0.20/0.38  # Proof object clause steps            : 53
% 0.20/0.38  # Proof object formula steps           : 9
% 0.20/0.38  # Proof object conjectures             : 34
% 0.20/0.38  # Proof object clause conjectures      : 31
% 0.20/0.38  # Proof object formula conjectures     : 3
% 0.20/0.38  # Proof object initial clauses used    : 26
% 0.20/0.38  # Proof object initial formulas used   : 4
% 0.20/0.38  # Proof object generating inferences   : 25
% 0.20/0.38  # Proof object simplifying inferences  : 96
% 0.20/0.38  # Training examples: 0 positive, 0 negative
% 0.20/0.38  # Parsed axioms                        : 4
% 0.20/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.38  # Initial clauses                      : 26
% 0.20/0.38  # Removed in clause preprocessing      : 0
% 0.20/0.38  # Initial clauses in saturation        : 26
% 0.20/0.38  # Processed clauses                    : 103
% 0.20/0.38  # ...of these trivial                  : 2
% 0.20/0.38  # ...subsumed                          : 10
% 0.20/0.38  # ...remaining for further processing  : 90
% 0.20/0.38  # Other redundant clauses eliminated   : 0
% 0.20/0.38  # Clauses deleted for lack of memory   : 0
% 0.20/0.38  # Backward-subsumed                    : 2
% 0.20/0.38  # Backward-rewritten                   : 20
% 0.20/0.38  # Generated clauses                    : 105
% 0.20/0.38  # ...of the previous two non-trivial   : 53
% 0.20/0.38  # Contextual simplify-reflections      : 8
% 0.20/0.38  # Paramodulations                      : 91
% 0.20/0.38  # Factorizations                       : 0
% 0.20/0.38  # Equation resolutions                 : 14
% 0.20/0.38  # Propositional unsat checks           : 0
% 0.20/0.38  #    Propositional check models        : 0
% 0.20/0.38  #    Propositional check unsatisfiable : 0
% 0.20/0.38  #    Propositional clauses             : 0
% 0.20/0.38  #    Propositional clauses after purity: 0
% 0.20/0.38  #    Propositional unsat core size     : 0
% 0.20/0.38  #    Propositional preprocessing time  : 0.000
% 0.20/0.38  #    Propositional encoding time       : 0.000
% 0.20/0.38  #    Propositional solver time         : 0.000
% 0.20/0.38  #    Success case prop preproc time    : 0.000
% 0.20/0.38  #    Success case prop encoding time   : 0.000
% 0.20/0.38  #    Success case prop solver time     : 0.000
% 0.20/0.38  # Current number of processed clauses  : 42
% 0.20/0.38  #    Positive orientable unit clauses  : 12
% 0.20/0.38  #    Positive unorientable unit clauses: 0
% 0.20/0.38  #    Negative unit clauses             : 3
% 0.20/0.38  #    Non-unit-clauses                  : 27
% 0.20/0.38  # Current number of unprocessed clauses: 1
% 0.20/0.38  # ...number of literals in the above   : 5
% 0.20/0.38  # Current number of archived formulas  : 0
% 0.20/0.38  # Current number of archived clauses   : 48
% 0.20/0.38  # Clause-clause subsumption calls (NU) : 223
% 0.20/0.38  # Rec. Clause-clause subsumption calls : 61
% 0.20/0.38  # Non-unit clause-clause subsumptions  : 17
% 0.20/0.38  # Unit Clause-clause subsumption calls : 40
% 0.20/0.38  # Rewrite failures with RHS unbound    : 0
% 0.20/0.38  # BW rewrite match attempts            : 6
% 0.20/0.38  # BW rewrite match successes           : 6
% 0.20/0.38  # Condensation attempts                : 0
% 0.20/0.38  # Condensation successes               : 0
% 0.20/0.38  # Termbank termtop insertions          : 5131
% 0.20/0.38  
% 0.20/0.38  # -------------------------------------------------
% 0.20/0.38  # User time                : 0.032 s
% 0.20/0.38  # System time              : 0.004 s
% 0.20/0.38  # Total time               : 0.037 s
% 0.20/0.38  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
