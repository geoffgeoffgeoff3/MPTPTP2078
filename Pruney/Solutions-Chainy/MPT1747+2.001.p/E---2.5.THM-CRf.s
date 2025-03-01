%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:17:14 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   60 ( 386 expanded)
%              Number of clauses        :   44 ( 127 expanded)
%              Number of leaves         :    8 (  92 expanded)
%              Depth                    :   15
%              Number of atoms          :  306 (5131 expanded)
%              Number of equality atoms :   40 ( 342 expanded)
%              Maximal formula depth    :   20 (   5 average)
%              Maximal clause size      :   68 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t56_tmap_1,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & v2_pre_topc(X2)
            & l1_pre_topc(X2) )
         => ! [X3] :
              ( ( ~ v2_struct_0(X3)
                & v2_pre_topc(X3)
                & l1_pre_topc(X3) )
             => ( ( u1_struct_0(X2) = u1_struct_0(X3)
                  & r1_tarski(u1_pre_topc(X3),u1_pre_topc(X2)) )
               => ! [X4] :
                    ( ( v1_funct_1(X4)
                      & v1_funct_2(X4,u1_struct_0(X1),u1_struct_0(X2))
                      & v5_pre_topc(X4,X1,X2)
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))) )
                   => ( v1_funct_1(X4)
                      & v1_funct_2(X4,u1_struct_0(X1),u1_struct_0(X3))
                      & v5_pre_topc(X4,X1,X3)
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X3)))) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t56_tmap_1)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).

fof(d5_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v3_pre_topc(X2,X1)
          <=> r2_hidden(X2,u1_pre_topc(X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_pre_topc)).

fof(t55_tops_2,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( l1_pre_topc(X2)
         => ! [X3] :
              ( ( v1_funct_1(X3)
                & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))
                & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))) )
             => ( ( k2_struct_0(X2) = k1_xboole_0
                 => k2_struct_0(X1) = k1_xboole_0 )
               => ( v5_pre_topc(X3,X1,X2)
                <=> ! [X4] :
                      ( m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X2)))
                     => ( v3_pre_topc(X4,X2)
                       => v3_pre_topc(k8_relset_1(u1_struct_0(X1),u1_struct_0(X2),X3,X4),X1) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t55_tops_2)).

fof(d3_struct_0,axiom,(
    ! [X1] :
      ( l1_struct_0(X1)
     => k2_struct_0(X1) = u1_struct_0(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_struct_0)).

fof(dt_l1_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => l1_struct_0(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_l1_pre_topc)).

fof(fc2_struct_0,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_struct_0(X1) )
     => ~ v1_xboole_0(u1_struct_0(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc2_struct_0)).

fof(fc1_xboole_0,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(c_0_8,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & v2_pre_topc(X1)
          & l1_pre_topc(X1) )
       => ! [X2] :
            ( ( ~ v2_struct_0(X2)
              & v2_pre_topc(X2)
              & l1_pre_topc(X2) )
           => ! [X3] :
                ( ( ~ v2_struct_0(X3)
                  & v2_pre_topc(X3)
                  & l1_pre_topc(X3) )
               => ( ( u1_struct_0(X2) = u1_struct_0(X3)
                    & r1_tarski(u1_pre_topc(X3),u1_pre_topc(X2)) )
                 => ! [X4] :
                      ( ( v1_funct_1(X4)
                        & v1_funct_2(X4,u1_struct_0(X1),u1_struct_0(X2))
                        & v5_pre_topc(X4,X1,X2)
                        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))) )
                     => ( v1_funct_1(X4)
                        & v1_funct_2(X4,u1_struct_0(X1),u1_struct_0(X3))
                        & v5_pre_topc(X4,X1,X3)
                        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X3)))) ) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t56_tmap_1])).

fof(c_0_9,negated_conjecture,
    ( ~ v2_struct_0(esk3_0)
    & v2_pre_topc(esk3_0)
    & l1_pre_topc(esk3_0)
    & ~ v2_struct_0(esk4_0)
    & v2_pre_topc(esk4_0)
    & l1_pre_topc(esk4_0)
    & ~ v2_struct_0(esk5_0)
    & v2_pre_topc(esk5_0)
    & l1_pre_topc(esk5_0)
    & u1_struct_0(esk4_0) = u1_struct_0(esk5_0)
    & r1_tarski(u1_pre_topc(esk5_0),u1_pre_topc(esk4_0))
    & v1_funct_1(esk6_0)
    & v1_funct_2(esk6_0,u1_struct_0(esk3_0),u1_struct_0(esk4_0))
    & v5_pre_topc(esk6_0,esk3_0,esk4_0)
    & m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(esk4_0))))
    & ( ~ v1_funct_1(esk6_0)
      | ~ v1_funct_2(esk6_0,u1_struct_0(esk3_0),u1_struct_0(esk5_0))
      | ~ v5_pre_topc(esk6_0,esk3_0,esk5_0)
      | ~ m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(esk5_0)))) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_8])])])])).

fof(c_0_10,plain,(
    ! [X5,X6,X7,X8,X9] :
      ( ( ~ r1_tarski(X5,X6)
        | ~ r2_hidden(X7,X5)
        | r2_hidden(X7,X6) )
      & ( r2_hidden(esk1_2(X8,X9),X8)
        | r1_tarski(X8,X9) )
      & ( ~ r2_hidden(esk1_2(X8,X9),X9)
        | r1_tarski(X8,X9) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

fof(c_0_11,plain,(
    ! [X12,X13] :
      ( ( ~ v3_pre_topc(X13,X12)
        | r2_hidden(X13,u1_pre_topc(X12))
        | ~ m1_subset_1(X13,k1_zfmisc_1(u1_struct_0(X12)))
        | ~ l1_pre_topc(X12) )
      & ( ~ r2_hidden(X13,u1_pre_topc(X12))
        | v3_pre_topc(X13,X12)
        | ~ m1_subset_1(X13,k1_zfmisc_1(u1_struct_0(X12)))
        | ~ l1_pre_topc(X12) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_pre_topc])])])])).

fof(c_0_12,plain,(
    ! [X16,X17,X18,X19] :
      ( ( ~ v5_pre_topc(X18,X16,X17)
        | ~ m1_subset_1(X19,k1_zfmisc_1(u1_struct_0(X17)))
        | ~ v3_pre_topc(X19,X17)
        | v3_pre_topc(k8_relset_1(u1_struct_0(X16),u1_struct_0(X17),X18,X19),X16)
        | k2_struct_0(X17) = k1_xboole_0
        | ~ v1_funct_1(X18)
        | ~ v1_funct_2(X18,u1_struct_0(X16),u1_struct_0(X17))
        | ~ m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X16),u1_struct_0(X17))))
        | ~ l1_pre_topc(X17)
        | ~ l1_pre_topc(X16) )
      & ( m1_subset_1(esk2_3(X16,X17,X18),k1_zfmisc_1(u1_struct_0(X17)))
        | v5_pre_topc(X18,X16,X17)
        | k2_struct_0(X17) = k1_xboole_0
        | ~ v1_funct_1(X18)
        | ~ v1_funct_2(X18,u1_struct_0(X16),u1_struct_0(X17))
        | ~ m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X16),u1_struct_0(X17))))
        | ~ l1_pre_topc(X17)
        | ~ l1_pre_topc(X16) )
      & ( v3_pre_topc(esk2_3(X16,X17,X18),X17)
        | v5_pre_topc(X18,X16,X17)
        | k2_struct_0(X17) = k1_xboole_0
        | ~ v1_funct_1(X18)
        | ~ v1_funct_2(X18,u1_struct_0(X16),u1_struct_0(X17))
        | ~ m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X16),u1_struct_0(X17))))
        | ~ l1_pre_topc(X17)
        | ~ l1_pre_topc(X16) )
      & ( ~ v3_pre_topc(k8_relset_1(u1_struct_0(X16),u1_struct_0(X17),X18,esk2_3(X16,X17,X18)),X16)
        | v5_pre_topc(X18,X16,X17)
        | k2_struct_0(X17) = k1_xboole_0
        | ~ v1_funct_1(X18)
        | ~ v1_funct_2(X18,u1_struct_0(X16),u1_struct_0(X17))
        | ~ m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X16),u1_struct_0(X17))))
        | ~ l1_pre_topc(X17)
        | ~ l1_pre_topc(X16) )
      & ( ~ v5_pre_topc(X18,X16,X17)
        | ~ m1_subset_1(X19,k1_zfmisc_1(u1_struct_0(X17)))
        | ~ v3_pre_topc(X19,X17)
        | v3_pre_topc(k8_relset_1(u1_struct_0(X16),u1_struct_0(X17),X18,X19),X16)
        | k2_struct_0(X16) != k1_xboole_0
        | ~ v1_funct_1(X18)
        | ~ v1_funct_2(X18,u1_struct_0(X16),u1_struct_0(X17))
        | ~ m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X16),u1_struct_0(X17))))
        | ~ l1_pre_topc(X17)
        | ~ l1_pre_topc(X16) )
      & ( m1_subset_1(esk2_3(X16,X17,X18),k1_zfmisc_1(u1_struct_0(X17)))
        | v5_pre_topc(X18,X16,X17)
        | k2_struct_0(X16) != k1_xboole_0
        | ~ v1_funct_1(X18)
        | ~ v1_funct_2(X18,u1_struct_0(X16),u1_struct_0(X17))
        | ~ m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X16),u1_struct_0(X17))))
        | ~ l1_pre_topc(X17)
        | ~ l1_pre_topc(X16) )
      & ( v3_pre_topc(esk2_3(X16,X17,X18),X17)
        | v5_pre_topc(X18,X16,X17)
        | k2_struct_0(X16) != k1_xboole_0
        | ~ v1_funct_1(X18)
        | ~ v1_funct_2(X18,u1_struct_0(X16),u1_struct_0(X17))
        | ~ m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X16),u1_struct_0(X17))))
        | ~ l1_pre_topc(X17)
        | ~ l1_pre_topc(X16) )
      & ( ~ v3_pre_topc(k8_relset_1(u1_struct_0(X16),u1_struct_0(X17),X18,esk2_3(X16,X17,X18)),X16)
        | v5_pre_topc(X18,X16,X17)
        | k2_struct_0(X16) != k1_xboole_0
        | ~ v1_funct_1(X18)
        | ~ v1_funct_2(X18,u1_struct_0(X16),u1_struct_0(X17))
        | ~ m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X16),u1_struct_0(X17))))
        | ~ l1_pre_topc(X17)
        | ~ l1_pre_topc(X16) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_tops_2])])])])])).

cnf(c_0_13,negated_conjecture,
    ( ~ v1_funct_1(esk6_0)
    | ~ v1_funct_2(esk6_0,u1_struct_0(esk3_0),u1_struct_0(esk5_0))
    | ~ v5_pre_topc(esk6_0,esk3_0,esk5_0)
    | ~ m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(esk5_0)))) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_14,negated_conjecture,
    ( v1_funct_1(esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_15,negated_conjecture,
    ( u1_struct_0(esk4_0) = u1_struct_0(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_16,negated_conjecture,
    ( v1_funct_2(esk6_0,u1_struct_0(esk3_0),u1_struct_0(esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_17,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_18,plain,
    ( r2_hidden(X1,u1_pre_topc(X2))
    | ~ v3_pre_topc(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_19,plain,
    ( m1_subset_1(esk2_3(X1,X2,X3),k1_zfmisc_1(u1_struct_0(X2)))
    | v5_pre_topc(X3,X1,X2)
    | k2_struct_0(X2) = k1_xboole_0
    | ~ v1_funct_1(X3)
    | ~ v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_20,negated_conjecture,
    ( l1_pre_topc(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_21,negated_conjecture,
    ( ~ v5_pre_topc(esk6_0,esk3_0,esk5_0)
    | ~ m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(esk4_0)))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_13,c_0_14]),c_0_15]),c_0_16]),c_0_15])])).

cnf(c_0_22,negated_conjecture,
    ( m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(esk4_0)))) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_23,plain,
    ( v3_pre_topc(esk2_3(X1,X2,X3),X2)
    | v5_pre_topc(X3,X1,X2)
    | k2_struct_0(X2) = k1_xboole_0
    | ~ v1_funct_1(X3)
    | ~ v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_24,plain,
    ( r2_hidden(X1,X2)
    | ~ v3_pre_topc(X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X3)))
    | ~ l1_pre_topc(X3)
    | ~ r1_tarski(u1_pre_topc(X3),X2) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_25,negated_conjecture,
    ( k2_struct_0(esk5_0) = k1_xboole_0
    | v5_pre_topc(X1,X2,esk5_0)
    | m1_subset_1(esk2_3(X2,esk5_0,X1),k1_zfmisc_1(u1_struct_0(esk4_0)))
    | ~ v1_funct_2(X1,u1_struct_0(X2),u1_struct_0(esk4_0))
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(esk4_0))))
    | ~ l1_pre_topc(X2) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_15]),c_0_20])])).

cnf(c_0_26,negated_conjecture,
    ( l1_pre_topc(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_27,negated_conjecture,
    ( ~ v5_pre_topc(esk6_0,esk3_0,esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_21,c_0_22])])).

cnf(c_0_28,negated_conjecture,
    ( k2_struct_0(esk5_0) = k1_xboole_0
    | v5_pre_topc(X1,X2,esk5_0)
    | v3_pre_topc(esk2_3(X2,esk5_0,X1),esk5_0)
    | ~ v1_funct_2(X1,u1_struct_0(X2),u1_struct_0(esk4_0))
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(esk4_0))))
    | ~ l1_pre_topc(X2) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_15]),c_0_20])])).

cnf(c_0_29,negated_conjecture,
    ( r2_hidden(X1,X2)
    | ~ v3_pre_topc(X1,esk5_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk4_0)))
    | ~ r1_tarski(u1_pre_topc(esk5_0),X2) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_15]),c_0_20])])).

cnf(c_0_30,negated_conjecture,
    ( k2_struct_0(esk5_0) = k1_xboole_0
    | m1_subset_1(esk2_3(esk3_0,esk5_0,esk6_0),k1_zfmisc_1(u1_struct_0(esk4_0))) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_22]),c_0_16]),c_0_14]),c_0_26])]),c_0_27])).

cnf(c_0_31,negated_conjecture,
    ( k2_struct_0(esk5_0) = k1_xboole_0
    | v3_pre_topc(esk2_3(esk3_0,esk5_0,esk6_0),esk5_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_22]),c_0_16]),c_0_14]),c_0_26])]),c_0_27])).

cnf(c_0_32,plain,
    ( v3_pre_topc(k8_relset_1(u1_struct_0(X2),u1_struct_0(X3),X1,X4),X2)
    | k2_struct_0(X3) = k1_xboole_0
    | ~ v5_pre_topc(X1,X2,X3)
    | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X3)))
    | ~ v3_pre_topc(X4,X3)
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X1,u1_struct_0(X2),u1_struct_0(X3))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X3))))
    | ~ l1_pre_topc(X3)
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_33,negated_conjecture,
    ( v5_pre_topc(esk6_0,esk3_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_34,negated_conjecture,
    ( l1_pre_topc(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_35,negated_conjecture,
    ( k2_struct_0(esk5_0) = k1_xboole_0
    | r2_hidden(esk2_3(esk3_0,esk5_0,esk6_0),X1)
    | ~ r1_tarski(u1_pre_topc(esk5_0),X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30]),c_0_31])).

cnf(c_0_36,negated_conjecture,
    ( r1_tarski(u1_pre_topc(esk5_0),u1_pre_topc(esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_37,negated_conjecture,
    ( k2_struct_0(esk4_0) = k1_xboole_0
    | v3_pre_topc(k8_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk4_0),esk6_0,X1),esk3_0)
    | ~ v3_pre_topc(X1,esk4_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk4_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_22]),c_0_33]),c_0_16]),c_0_14]),c_0_34]),c_0_26])])).

cnf(c_0_38,plain,
    ( v3_pre_topc(X1,X2)
    | ~ r2_hidden(X1,u1_pre_topc(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_39,negated_conjecture,
    ( k2_struct_0(esk5_0) = k1_xboole_0
    | r2_hidden(esk2_3(esk3_0,esk5_0,esk6_0),u1_pre_topc(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

fof(c_0_40,plain,(
    ! [X11] :
      ( ~ l1_struct_0(X11)
      | k2_struct_0(X11) = u1_struct_0(X11) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).

fof(c_0_41,plain,(
    ! [X14] :
      ( ~ l1_pre_topc(X14)
      | l1_struct_0(X14) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_pre_topc])])).

cnf(c_0_42,plain,
    ( v5_pre_topc(X3,X1,X2)
    | k2_struct_0(X2) = k1_xboole_0
    | ~ v3_pre_topc(k8_relset_1(u1_struct_0(X1),u1_struct_0(X2),X3,esk2_3(X1,X2,X3)),X1)
    | ~ v1_funct_1(X3)
    | ~ v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_43,negated_conjecture,
    ( k2_struct_0(esk5_0) = k1_xboole_0
    | k2_struct_0(esk4_0) = k1_xboole_0
    | v3_pre_topc(k8_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk4_0),esk6_0,esk2_3(esk3_0,esk5_0,esk6_0)),esk3_0)
    | ~ v3_pre_topc(esk2_3(esk3_0,esk5_0,esk6_0),esk4_0) ),
    inference(spm,[status(thm)],[c_0_37,c_0_30])).

cnf(c_0_44,negated_conjecture,
    ( k2_struct_0(esk5_0) = k1_xboole_0
    | v3_pre_topc(esk2_3(esk3_0,esk5_0,esk6_0),esk4_0) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_39]),c_0_34])]),c_0_30])).

cnf(c_0_45,plain,
    ( k2_struct_0(X1) = u1_struct_0(X1)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

cnf(c_0_46,plain,
    ( l1_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_41])).

cnf(c_0_47,negated_conjecture,
    ( k2_struct_0(esk5_0) = k1_xboole_0
    | v5_pre_topc(X1,X2,esk5_0)
    | ~ v1_funct_2(X1,u1_struct_0(X2),u1_struct_0(esk4_0))
    | ~ v1_funct_1(X1)
    | ~ v3_pre_topc(k8_relset_1(u1_struct_0(X2),u1_struct_0(esk4_0),X1,esk2_3(X2,esk5_0,X1)),X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(esk4_0))))
    | ~ l1_pre_topc(X2) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42,c_0_15]),c_0_20])])).

cnf(c_0_48,negated_conjecture,
    ( k2_struct_0(esk4_0) = k1_xboole_0
    | k2_struct_0(esk5_0) = k1_xboole_0
    | v3_pre_topc(k8_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk4_0),esk6_0,esk2_3(esk3_0,esk5_0,esk6_0)),esk3_0) ),
    inference(spm,[status(thm)],[c_0_43,c_0_44])).

fof(c_0_49,plain,(
    ! [X15] :
      ( v2_struct_0(X15)
      | ~ l1_struct_0(X15)
      | ~ v1_xboole_0(u1_struct_0(X15)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_struct_0])])])).

cnf(c_0_50,plain,
    ( k2_struct_0(X1) = u1_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

cnf(c_0_51,negated_conjecture,
    ( k2_struct_0(esk4_0) = k1_xboole_0
    | k2_struct_0(esk5_0) = k1_xboole_0 ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_48]),c_0_16]),c_0_14]),c_0_22]),c_0_26])]),c_0_27])).

cnf(c_0_52,plain,
    ( v2_struct_0(X1)
    | ~ l1_struct_0(X1)
    | ~ v1_xboole_0(u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_49])).

cnf(c_0_53,negated_conjecture,
    ( ~ v2_struct_0(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_54,negated_conjecture,
    ( k2_struct_0(esk4_0) = k1_xboole_0
    | u1_struct_0(esk4_0) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_51]),c_0_15]),c_0_20])])).

cnf(c_0_55,negated_conjecture,
    ( ~ l1_struct_0(esk5_0)
    | ~ v1_xboole_0(u1_struct_0(esk4_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_52,c_0_15]),c_0_53])).

cnf(c_0_56,negated_conjecture,
    ( u1_struct_0(esk4_0) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_54]),c_0_34])])).

cnf(c_0_57,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[fc1_xboole_0])).

cnf(c_0_58,negated_conjecture,
    ( ~ l1_struct_0(esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_55,c_0_56]),c_0_57])])).

cnf(c_0_59,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_46]),c_0_20])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.33  % Computer   : n003.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 10:40:42 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic G_E___302_C18_F1_URBAN_RG_S04BN
% 0.13/0.38  # and selection function PSelectComplexExceptUniqMaxHorn.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.029 s
% 0.13/0.38  
% 0.13/0.38  # Proof found!
% 0.13/0.38  # SZS status Theorem
% 0.13/0.38  # SZS output start CNFRefutation
% 0.13/0.38  fof(t56_tmap_1, conjecture, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:(((~(v2_struct_0(X3))&v2_pre_topc(X3))&l1_pre_topc(X3))=>((u1_struct_0(X2)=u1_struct_0(X3)&r1_tarski(u1_pre_topc(X3),u1_pre_topc(X2)))=>![X4]:((((v1_funct_1(X4)&v1_funct_2(X4,u1_struct_0(X1),u1_struct_0(X2)))&v5_pre_topc(X4,X1,X2))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))))=>(((v1_funct_1(X4)&v1_funct_2(X4,u1_struct_0(X1),u1_struct_0(X3)))&v5_pre_topc(X4,X1,X3))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X3)))))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t56_tmap_1)).
% 0.13/0.38  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_tarski)).
% 0.13/0.38  fof(d5_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v3_pre_topc(X2,X1)<=>r2_hidden(X2,u1_pre_topc(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d5_pre_topc)).
% 0.13/0.38  fof(t55_tops_2, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(l1_pre_topc(X2)=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))))=>((k2_struct_0(X2)=k1_xboole_0=>k2_struct_0(X1)=k1_xboole_0)=>(v5_pre_topc(X3,X1,X2)<=>![X4]:(m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X2)))=>(v3_pre_topc(X4,X2)=>v3_pre_topc(k8_relset_1(u1_struct_0(X1),u1_struct_0(X2),X3,X4),X1)))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t55_tops_2)).
% 0.13/0.38  fof(d3_struct_0, axiom, ![X1]:(l1_struct_0(X1)=>k2_struct_0(X1)=u1_struct_0(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_struct_0)).
% 0.13/0.38  fof(dt_l1_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>l1_struct_0(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_l1_pre_topc)).
% 0.13/0.38  fof(fc2_struct_0, axiom, ![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>~(v1_xboole_0(u1_struct_0(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc2_struct_0)).
% 0.13/0.38  fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc1_xboole_0)).
% 0.13/0.38  fof(c_0_8, negated_conjecture, ~(![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:(((~(v2_struct_0(X3))&v2_pre_topc(X3))&l1_pre_topc(X3))=>((u1_struct_0(X2)=u1_struct_0(X3)&r1_tarski(u1_pre_topc(X3),u1_pre_topc(X2)))=>![X4]:((((v1_funct_1(X4)&v1_funct_2(X4,u1_struct_0(X1),u1_struct_0(X2)))&v5_pre_topc(X4,X1,X2))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))))=>(((v1_funct_1(X4)&v1_funct_2(X4,u1_struct_0(X1),u1_struct_0(X3)))&v5_pre_topc(X4,X1,X3))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X3))))))))))), inference(assume_negation,[status(cth)],[t56_tmap_1])).
% 0.13/0.38  fof(c_0_9, negated_conjecture, (((~v2_struct_0(esk3_0)&v2_pre_topc(esk3_0))&l1_pre_topc(esk3_0))&(((~v2_struct_0(esk4_0)&v2_pre_topc(esk4_0))&l1_pre_topc(esk4_0))&(((~v2_struct_0(esk5_0)&v2_pre_topc(esk5_0))&l1_pre_topc(esk5_0))&((u1_struct_0(esk4_0)=u1_struct_0(esk5_0)&r1_tarski(u1_pre_topc(esk5_0),u1_pre_topc(esk4_0)))&((((v1_funct_1(esk6_0)&v1_funct_2(esk6_0,u1_struct_0(esk3_0),u1_struct_0(esk4_0)))&v5_pre_topc(esk6_0,esk3_0,esk4_0))&m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(esk4_0)))))&(~v1_funct_1(esk6_0)|~v1_funct_2(esk6_0,u1_struct_0(esk3_0),u1_struct_0(esk5_0))|~v5_pre_topc(esk6_0,esk3_0,esk5_0)|~m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(esk5_0)))))))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_8])])])])).
% 0.13/0.38  fof(c_0_10, plain, ![X5, X6, X7, X8, X9]:((~r1_tarski(X5,X6)|(~r2_hidden(X7,X5)|r2_hidden(X7,X6)))&((r2_hidden(esk1_2(X8,X9),X8)|r1_tarski(X8,X9))&(~r2_hidden(esk1_2(X8,X9),X9)|r1_tarski(X8,X9)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.13/0.38  fof(c_0_11, plain, ![X12, X13]:((~v3_pre_topc(X13,X12)|r2_hidden(X13,u1_pre_topc(X12))|~m1_subset_1(X13,k1_zfmisc_1(u1_struct_0(X12)))|~l1_pre_topc(X12))&(~r2_hidden(X13,u1_pre_topc(X12))|v3_pre_topc(X13,X12)|~m1_subset_1(X13,k1_zfmisc_1(u1_struct_0(X12)))|~l1_pre_topc(X12))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_pre_topc])])])])).
% 0.13/0.38  fof(c_0_12, plain, ![X16, X17, X18, X19]:(((~v5_pre_topc(X18,X16,X17)|(~m1_subset_1(X19,k1_zfmisc_1(u1_struct_0(X17)))|(~v3_pre_topc(X19,X17)|v3_pre_topc(k8_relset_1(u1_struct_0(X16),u1_struct_0(X17),X18,X19),X16)))|k2_struct_0(X17)=k1_xboole_0|(~v1_funct_1(X18)|~v1_funct_2(X18,u1_struct_0(X16),u1_struct_0(X17))|~m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X16),u1_struct_0(X17)))))|~l1_pre_topc(X17)|~l1_pre_topc(X16))&((m1_subset_1(esk2_3(X16,X17,X18),k1_zfmisc_1(u1_struct_0(X17)))|v5_pre_topc(X18,X16,X17)|k2_struct_0(X17)=k1_xboole_0|(~v1_funct_1(X18)|~v1_funct_2(X18,u1_struct_0(X16),u1_struct_0(X17))|~m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X16),u1_struct_0(X17)))))|~l1_pre_topc(X17)|~l1_pre_topc(X16))&((v3_pre_topc(esk2_3(X16,X17,X18),X17)|v5_pre_topc(X18,X16,X17)|k2_struct_0(X17)=k1_xboole_0|(~v1_funct_1(X18)|~v1_funct_2(X18,u1_struct_0(X16),u1_struct_0(X17))|~m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X16),u1_struct_0(X17)))))|~l1_pre_topc(X17)|~l1_pre_topc(X16))&(~v3_pre_topc(k8_relset_1(u1_struct_0(X16),u1_struct_0(X17),X18,esk2_3(X16,X17,X18)),X16)|v5_pre_topc(X18,X16,X17)|k2_struct_0(X17)=k1_xboole_0|(~v1_funct_1(X18)|~v1_funct_2(X18,u1_struct_0(X16),u1_struct_0(X17))|~m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X16),u1_struct_0(X17)))))|~l1_pre_topc(X17)|~l1_pre_topc(X16)))))&((~v5_pre_topc(X18,X16,X17)|(~m1_subset_1(X19,k1_zfmisc_1(u1_struct_0(X17)))|(~v3_pre_topc(X19,X17)|v3_pre_topc(k8_relset_1(u1_struct_0(X16),u1_struct_0(X17),X18,X19),X16)))|k2_struct_0(X16)!=k1_xboole_0|(~v1_funct_1(X18)|~v1_funct_2(X18,u1_struct_0(X16),u1_struct_0(X17))|~m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X16),u1_struct_0(X17)))))|~l1_pre_topc(X17)|~l1_pre_topc(X16))&((m1_subset_1(esk2_3(X16,X17,X18),k1_zfmisc_1(u1_struct_0(X17)))|v5_pre_topc(X18,X16,X17)|k2_struct_0(X16)!=k1_xboole_0|(~v1_funct_1(X18)|~v1_funct_2(X18,u1_struct_0(X16),u1_struct_0(X17))|~m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X16),u1_struct_0(X17)))))|~l1_pre_topc(X17)|~l1_pre_topc(X16))&((v3_pre_topc(esk2_3(X16,X17,X18),X17)|v5_pre_topc(X18,X16,X17)|k2_struct_0(X16)!=k1_xboole_0|(~v1_funct_1(X18)|~v1_funct_2(X18,u1_struct_0(X16),u1_struct_0(X17))|~m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X16),u1_struct_0(X17)))))|~l1_pre_topc(X17)|~l1_pre_topc(X16))&(~v3_pre_topc(k8_relset_1(u1_struct_0(X16),u1_struct_0(X17),X18,esk2_3(X16,X17,X18)),X16)|v5_pre_topc(X18,X16,X17)|k2_struct_0(X16)!=k1_xboole_0|(~v1_funct_1(X18)|~v1_funct_2(X18,u1_struct_0(X16),u1_struct_0(X17))|~m1_subset_1(X18,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X16),u1_struct_0(X17)))))|~l1_pre_topc(X17)|~l1_pre_topc(X16)))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_tops_2])])])])])).
% 0.13/0.38  cnf(c_0_13, negated_conjecture, (~v1_funct_1(esk6_0)|~v1_funct_2(esk6_0,u1_struct_0(esk3_0),u1_struct_0(esk5_0))|~v5_pre_topc(esk6_0,esk3_0,esk5_0)|~m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(esk5_0))))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_14, negated_conjecture, (v1_funct_1(esk6_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_15, negated_conjecture, (u1_struct_0(esk4_0)=u1_struct_0(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_16, negated_conjecture, (v1_funct_2(esk6_0,u1_struct_0(esk3_0),u1_struct_0(esk4_0))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_17, plain, (r2_hidden(X3,X2)|~r1_tarski(X1,X2)|~r2_hidden(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_18, plain, (r2_hidden(X1,u1_pre_topc(X2))|~v3_pre_topc(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  cnf(c_0_19, plain, (m1_subset_1(esk2_3(X1,X2,X3),k1_zfmisc_1(u1_struct_0(X2)))|v5_pre_topc(X3,X1,X2)|k2_struct_0(X2)=k1_xboole_0|~v1_funct_1(X3)|~v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))|~l1_pre_topc(X2)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.38  cnf(c_0_20, negated_conjecture, (l1_pre_topc(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_21, negated_conjecture, (~v5_pre_topc(esk6_0,esk3_0,esk5_0)|~m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(esk4_0))))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_13, c_0_14]), c_0_15]), c_0_16]), c_0_15])])).
% 0.13/0.38  cnf(c_0_22, negated_conjecture, (m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(esk4_0))))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_23, plain, (v3_pre_topc(esk2_3(X1,X2,X3),X2)|v5_pre_topc(X3,X1,X2)|k2_struct_0(X2)=k1_xboole_0|~v1_funct_1(X3)|~v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))|~l1_pre_topc(X2)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.38  cnf(c_0_24, plain, (r2_hidden(X1,X2)|~v3_pre_topc(X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X3)))|~l1_pre_topc(X3)|~r1_tarski(u1_pre_topc(X3),X2)), inference(spm,[status(thm)],[c_0_17, c_0_18])).
% 0.13/0.38  cnf(c_0_25, negated_conjecture, (k2_struct_0(esk5_0)=k1_xboole_0|v5_pre_topc(X1,X2,esk5_0)|m1_subset_1(esk2_3(X2,esk5_0,X1),k1_zfmisc_1(u1_struct_0(esk4_0)))|~v1_funct_2(X1,u1_struct_0(X2),u1_struct_0(esk4_0))|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(esk4_0))))|~l1_pre_topc(X2)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_15]), c_0_20])])).
% 0.13/0.38  cnf(c_0_26, negated_conjecture, (l1_pre_topc(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_27, negated_conjecture, (~v5_pre_topc(esk6_0,esk3_0,esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_21, c_0_22])])).
% 0.13/0.38  cnf(c_0_28, negated_conjecture, (k2_struct_0(esk5_0)=k1_xboole_0|v5_pre_topc(X1,X2,esk5_0)|v3_pre_topc(esk2_3(X2,esk5_0,X1),esk5_0)|~v1_funct_2(X1,u1_struct_0(X2),u1_struct_0(esk4_0))|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(esk4_0))))|~l1_pre_topc(X2)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_15]), c_0_20])])).
% 0.13/0.38  cnf(c_0_29, negated_conjecture, (r2_hidden(X1,X2)|~v3_pre_topc(X1,esk5_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk4_0)))|~r1_tarski(u1_pre_topc(esk5_0),X2)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_15]), c_0_20])])).
% 0.13/0.38  cnf(c_0_30, negated_conjecture, (k2_struct_0(esk5_0)=k1_xboole_0|m1_subset_1(esk2_3(esk3_0,esk5_0,esk6_0),k1_zfmisc_1(u1_struct_0(esk4_0)))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_22]), c_0_16]), c_0_14]), c_0_26])]), c_0_27])).
% 0.13/0.38  cnf(c_0_31, negated_conjecture, (k2_struct_0(esk5_0)=k1_xboole_0|v3_pre_topc(esk2_3(esk3_0,esk5_0,esk6_0),esk5_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_22]), c_0_16]), c_0_14]), c_0_26])]), c_0_27])).
% 0.13/0.38  cnf(c_0_32, plain, (v3_pre_topc(k8_relset_1(u1_struct_0(X2),u1_struct_0(X3),X1,X4),X2)|k2_struct_0(X3)=k1_xboole_0|~v5_pre_topc(X1,X2,X3)|~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X3)))|~v3_pre_topc(X4,X3)|~v1_funct_1(X1)|~v1_funct_2(X1,u1_struct_0(X2),u1_struct_0(X3))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X3))))|~l1_pre_topc(X3)|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.38  cnf(c_0_33, negated_conjecture, (v5_pre_topc(esk6_0,esk3_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_34, negated_conjecture, (l1_pre_topc(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_35, negated_conjecture, (k2_struct_0(esk5_0)=k1_xboole_0|r2_hidden(esk2_3(esk3_0,esk5_0,esk6_0),X1)|~r1_tarski(u1_pre_topc(esk5_0),X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_30]), c_0_31])).
% 0.13/0.38  cnf(c_0_36, negated_conjecture, (r1_tarski(u1_pre_topc(esk5_0),u1_pre_topc(esk4_0))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_37, negated_conjecture, (k2_struct_0(esk4_0)=k1_xboole_0|v3_pre_topc(k8_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk4_0),esk6_0,X1),esk3_0)|~v3_pre_topc(X1,esk4_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk4_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_22]), c_0_33]), c_0_16]), c_0_14]), c_0_34]), c_0_26])])).
% 0.13/0.38  cnf(c_0_38, plain, (v3_pre_topc(X1,X2)|~r2_hidden(X1,u1_pre_topc(X2))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  cnf(c_0_39, negated_conjecture, (k2_struct_0(esk5_0)=k1_xboole_0|r2_hidden(esk2_3(esk3_0,esk5_0,esk6_0),u1_pre_topc(esk4_0))), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 0.13/0.38  fof(c_0_40, plain, ![X11]:(~l1_struct_0(X11)|k2_struct_0(X11)=u1_struct_0(X11)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).
% 0.13/0.38  fof(c_0_41, plain, ![X14]:(~l1_pre_topc(X14)|l1_struct_0(X14)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_pre_topc])])).
% 0.13/0.38  cnf(c_0_42, plain, (v5_pre_topc(X3,X1,X2)|k2_struct_0(X2)=k1_xboole_0|~v3_pre_topc(k8_relset_1(u1_struct_0(X1),u1_struct_0(X2),X3,esk2_3(X1,X2,X3)),X1)|~v1_funct_1(X3)|~v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))|~l1_pre_topc(X2)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.38  cnf(c_0_43, negated_conjecture, (k2_struct_0(esk5_0)=k1_xboole_0|k2_struct_0(esk4_0)=k1_xboole_0|v3_pre_topc(k8_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk4_0),esk6_0,esk2_3(esk3_0,esk5_0,esk6_0)),esk3_0)|~v3_pre_topc(esk2_3(esk3_0,esk5_0,esk6_0),esk4_0)), inference(spm,[status(thm)],[c_0_37, c_0_30])).
% 0.13/0.38  cnf(c_0_44, negated_conjecture, (k2_struct_0(esk5_0)=k1_xboole_0|v3_pre_topc(esk2_3(esk3_0,esk5_0,esk6_0),esk4_0)), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_39]), c_0_34])]), c_0_30])).
% 0.13/0.38  cnf(c_0_45, plain, (k2_struct_0(X1)=u1_struct_0(X1)|~l1_struct_0(X1)), inference(split_conjunct,[status(thm)],[c_0_40])).
% 0.13/0.38  cnf(c_0_46, plain, (l1_struct_0(X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_41])).
% 0.13/0.38  cnf(c_0_47, negated_conjecture, (k2_struct_0(esk5_0)=k1_xboole_0|v5_pre_topc(X1,X2,esk5_0)|~v1_funct_2(X1,u1_struct_0(X2),u1_struct_0(esk4_0))|~v1_funct_1(X1)|~v3_pre_topc(k8_relset_1(u1_struct_0(X2),u1_struct_0(esk4_0),X1,esk2_3(X2,esk5_0,X1)),X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(esk4_0))))|~l1_pre_topc(X2)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_15]), c_0_20])])).
% 0.13/0.38  cnf(c_0_48, negated_conjecture, (k2_struct_0(esk4_0)=k1_xboole_0|k2_struct_0(esk5_0)=k1_xboole_0|v3_pre_topc(k8_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk4_0),esk6_0,esk2_3(esk3_0,esk5_0,esk6_0)),esk3_0)), inference(spm,[status(thm)],[c_0_43, c_0_44])).
% 0.13/0.38  fof(c_0_49, plain, ![X15]:(v2_struct_0(X15)|~l1_struct_0(X15)|~v1_xboole_0(u1_struct_0(X15))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_struct_0])])])).
% 0.13/0.38  cnf(c_0_50, plain, (k2_struct_0(X1)=u1_struct_0(X1)|~l1_pre_topc(X1)), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.13/0.38  cnf(c_0_51, negated_conjecture, (k2_struct_0(esk4_0)=k1_xboole_0|k2_struct_0(esk5_0)=k1_xboole_0), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_48]), c_0_16]), c_0_14]), c_0_22]), c_0_26])]), c_0_27])).
% 0.13/0.38  cnf(c_0_52, plain, (v2_struct_0(X1)|~l1_struct_0(X1)|~v1_xboole_0(u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_49])).
% 0.13/0.38  cnf(c_0_53, negated_conjecture, (~v2_struct_0(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_54, negated_conjecture, (k2_struct_0(esk4_0)=k1_xboole_0|u1_struct_0(esk4_0)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_51]), c_0_15]), c_0_20])])).
% 0.13/0.38  cnf(c_0_55, negated_conjecture, (~l1_struct_0(esk5_0)|~v1_xboole_0(u1_struct_0(esk4_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_52, c_0_15]), c_0_53])).
% 0.13/0.38  cnf(c_0_56, negated_conjecture, (u1_struct_0(esk4_0)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_54]), c_0_34])])).
% 0.13/0.38  cnf(c_0_57, plain, (v1_xboole_0(k1_xboole_0)), inference(split_conjunct,[status(thm)],[fc1_xboole_0])).
% 0.13/0.38  cnf(c_0_58, negated_conjecture, (~l1_struct_0(esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_55, c_0_56]), c_0_57])])).
% 0.13/0.38  cnf(c_0_59, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58, c_0_46]), c_0_20])]), ['proof']).
% 0.13/0.38  # SZS output end CNFRefutation
% 0.13/0.38  # Proof object total steps             : 60
% 0.13/0.38  # Proof object clause steps            : 44
% 0.13/0.38  # Proof object formula steps           : 16
% 0.13/0.38  # Proof object conjectures             : 34
% 0.13/0.38  # Proof object clause conjectures      : 31
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 22
% 0.13/0.38  # Proof object initial formulas used   : 8
% 0.13/0.38  # Proof object generating inferences   : 19
% 0.13/0.38  # Proof object simplifying inferences  : 52
% 0.13/0.38  # Training examples: 0 positive, 0 negative
% 0.13/0.38  # Parsed axioms                        : 8
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 33
% 0.13/0.38  # Removed in clause preprocessing      : 0
% 0.13/0.38  # Initial clauses in saturation        : 33
% 0.13/0.38  # Processed clauses                    : 121
% 0.13/0.38  # ...of these trivial                  : 0
% 0.13/0.38  # ...subsumed                          : 18
% 0.13/0.38  # ...remaining for further processing  : 103
% 0.13/0.38  # Other redundant clauses eliminated   : 0
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 8
% 0.13/0.38  # Backward-rewritten                   : 39
% 0.13/0.38  # Generated clauses                    : 138
% 0.13/0.38  # ...of the previous two non-trivial   : 161
% 0.13/0.38  # Contextual simplify-reflections      : 7
% 0.13/0.38  # Paramodulations                      : 138
% 0.13/0.38  # Factorizations                       : 0
% 0.13/0.38  # Equation resolutions                 : 0
% 0.13/0.38  # Propositional unsat checks           : 0
% 0.13/0.38  #    Propositional check models        : 0
% 0.13/0.38  #    Propositional check unsatisfiable : 0
% 0.13/0.38  #    Propositional clauses             : 0
% 0.13/0.38  #    Propositional clauses after purity: 0
% 0.13/0.38  #    Propositional unsat core size     : 0
% 0.13/0.38  #    Propositional preprocessing time  : 0.000
% 0.13/0.38  #    Propositional encoding time       : 0.000
% 0.13/0.38  #    Propositional solver time         : 0.000
% 0.13/0.38  #    Success case prop preproc time    : 0.000
% 0.13/0.38  #    Success case prop encoding time   : 0.000
% 0.13/0.38  #    Success case prop solver time     : 0.000
% 0.13/0.38  # Current number of processed clauses  : 56
% 0.13/0.38  #    Positive orientable unit clauses  : 12
% 0.13/0.38  #    Positive unorientable unit clauses: 0
% 0.13/0.38  #    Negative unit clauses             : 7
% 0.13/0.38  #    Non-unit-clauses                  : 37
% 0.13/0.38  # Current number of unprocessed clauses: 56
% 0.13/0.38  # ...number of literals in the above   : 340
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 47
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 1782
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 208
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 31
% 0.13/0.38  # Unit Clause-clause subsumption calls : 51
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 6
% 0.13/0.38  # BW rewrite match successes           : 2
% 0.13/0.38  # Condensation attempts                : 0
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.38  # Termbank termtop insertions          : 8055
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.045 s
% 0.13/0.38  # System time              : 0.001 s
% 0.13/0.38  # Total time               : 0.046 s
% 0.13/0.38  # Maximum resident set size: 1584 pages
%------------------------------------------------------------------------------
