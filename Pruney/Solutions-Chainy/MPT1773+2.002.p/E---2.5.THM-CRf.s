%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:17:46 EST 2020

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   95 (1574 expanded)
%              Number of clauses        :   68 ( 512 expanded)
%              Number of leaves         :   13 ( 382 expanded)
%              Depth                    :   15
%              Number of atoms          :  548 (23417 expanded)
%              Number of equality atoms :   33 (1034 expanded)
%              Maximal formula depth    :   28 (   7 average)
%              Maximal clause size      :   38 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t84_tmap_1,conjecture,(
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
                & m1_pre_topc(X3,X1) )
             => ! [X4] :
                  ( ( ~ v2_struct_0(X4)
                    & m1_pre_topc(X4,X1) )
                 => ! [X5] :
                      ( ( v1_funct_1(X5)
                        & v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2))
                        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2)))) )
                     => ( m1_pre_topc(X3,X4)
                       => ! [X6] :
                            ( m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X4)))
                           => ! [X7] :
                                ( m1_subset_1(X7,u1_struct_0(X4))
                               => ! [X8] :
                                    ( m1_subset_1(X8,u1_struct_0(X3))
                                   => ( ( v3_pre_topc(X6,X4)
                                        & r2_hidden(X7,X6)
                                        & r1_tarski(X6,u1_struct_0(X3))
                                        & X7 = X8 )
                                     => ( r1_tmap_1(X4,X2,X5,X7)
                                      <=> r1_tmap_1(X3,X2,k3_tmap_1(X1,X2,X4,X3,X5),X8) ) ) ) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t84_tmap_1)).

fof(dt_m1_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => l1_pre_topc(X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_m1_pre_topc)).

fof(cc1_pre_topc,axiom,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => v2_pre_topc(X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc1_pre_topc)).

fof(t44_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => r1_tarski(k1_tops_1(X1,X2),X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t44_tops_1)).

fof(t56_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ! [X3] :
              ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
             => ( ( v3_pre_topc(X2,X1)
                  & r1_tarski(X2,X3) )
               => r1_tarski(X2,k1_tops_1(X1,X3)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t56_tops_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(d5_tmap_1,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & v2_pre_topc(X2)
            & l1_pre_topc(X2) )
         => ! [X3] :
              ( m1_pre_topc(X3,X1)
             => ! [X4] :
                  ( m1_pre_topc(X4,X1)
                 => ! [X5] :
                      ( ( v1_funct_1(X5)
                        & v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X2))
                        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2)))) )
                     => ( m1_pre_topc(X4,X3)
                       => k3_tmap_1(X1,X2,X3,X4,X5) = k2_partfun1(u1_struct_0(X3),u1_struct_0(X2),X5,u1_struct_0(X4)) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d5_tmap_1)).

fof(t7_tsep_1,axiom,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => ! [X3] :
              ( m1_pre_topc(X3,X2)
             => m1_pre_topc(X3,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_tsep_1)).

fof(d4_tmap_1,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & v2_pre_topc(X2)
            & l1_pre_topc(X2) )
         => ! [X3] :
              ( ( v1_funct_1(X3)
                & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))
                & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))) )
             => ! [X4] :
                  ( m1_pre_topc(X4,X1)
                 => k2_tmap_1(X1,X2,X3,X4) = k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X3,u1_struct_0(X4)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_tmap_1)).

fof(d1_connsp_2,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ! [X3] :
              ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
             => ( m1_connsp_2(X3,X1,X2)
              <=> r2_hidden(X2,k1_tops_1(X1,X3)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_connsp_2)).

fof(t2_tsep_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => m1_pre_topc(X1,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_tsep_1)).

fof(t65_tmap_1,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & v2_pre_topc(X2)
            & l1_pre_topc(X2) )
         => ! [X3] :
              ( ( v1_funct_1(X3)
                & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1))
                & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) )
             => ! [X4] :
                  ( ( ~ v2_struct_0(X4)
                    & m1_pre_topc(X4,X2) )
                 => ! [X5] :
                      ( m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X2)))
                     => ! [X6] :
                          ( m1_subset_1(X6,u1_struct_0(X2))
                         => ! [X7] :
                              ( m1_subset_1(X7,u1_struct_0(X4))
                             => ( ( r1_tarski(X5,u1_struct_0(X4))
                                  & m1_connsp_2(X5,X2,X6)
                                  & X6 = X7 )
                               => ( r1_tmap_1(X2,X1,X3,X6)
                                <=> r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X7) ) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_tmap_1)).

fof(t81_tmap_1,axiom,(
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
                & m1_pre_topc(X3,X1) )
             => ! [X4] :
                  ( ( ~ v2_struct_0(X4)
                    & m1_pre_topc(X4,X1) )
                 => ! [X5] :
                      ( ( v1_funct_1(X5)
                        & v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X2))
                        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2)))) )
                     => ! [X6] :
                          ( m1_subset_1(X6,u1_struct_0(X3))
                         => ! [X7] :
                              ( m1_subset_1(X7,u1_struct_0(X4))
                             => ( ( X6 = X7
                                  & m1_pre_topc(X4,X3)
                                  & r1_tmap_1(X3,X2,X5,X6) )
                               => r1_tmap_1(X4,X2,k3_tmap_1(X1,X2,X3,X4,X5),X7) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t81_tmap_1)).

fof(c_0_13,negated_conjecture,(
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
                  & m1_pre_topc(X3,X1) )
               => ! [X4] :
                    ( ( ~ v2_struct_0(X4)
                      & m1_pre_topc(X4,X1) )
                   => ! [X5] :
                        ( ( v1_funct_1(X5)
                          & v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2))
                          & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2)))) )
                       => ( m1_pre_topc(X3,X4)
                         => ! [X6] :
                              ( m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X4)))
                             => ! [X7] :
                                  ( m1_subset_1(X7,u1_struct_0(X4))
                                 => ! [X8] :
                                      ( m1_subset_1(X8,u1_struct_0(X3))
                                     => ( ( v3_pre_topc(X6,X4)
                                          & r2_hidden(X7,X6)
                                          & r1_tarski(X6,u1_struct_0(X3))
                                          & X7 = X8 )
                                       => ( r1_tmap_1(X4,X2,X5,X7)
                                        <=> r1_tmap_1(X3,X2,k3_tmap_1(X1,X2,X4,X3,X5),X8) ) ) ) ) ) ) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t84_tmap_1])).

fof(c_0_14,plain,(
    ! [X13,X14] :
      ( ~ l1_pre_topc(X13)
      | ~ m1_pre_topc(X14,X13)
      | l1_pre_topc(X14) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_m1_pre_topc])])])).

fof(c_0_15,negated_conjecture,
    ( ~ v2_struct_0(esk1_0)
    & v2_pre_topc(esk1_0)
    & l1_pre_topc(esk1_0)
    & ~ v2_struct_0(esk2_0)
    & v2_pre_topc(esk2_0)
    & l1_pre_topc(esk2_0)
    & ~ v2_struct_0(esk3_0)
    & m1_pre_topc(esk3_0,esk1_0)
    & ~ v2_struct_0(esk4_0)
    & m1_pre_topc(esk4_0,esk1_0)
    & v1_funct_1(esk5_0)
    & v1_funct_2(esk5_0,u1_struct_0(esk4_0),u1_struct_0(esk2_0))
    & m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk4_0),u1_struct_0(esk2_0))))
    & m1_pre_topc(esk3_0,esk4_0)
    & m1_subset_1(esk6_0,k1_zfmisc_1(u1_struct_0(esk4_0)))
    & m1_subset_1(esk7_0,u1_struct_0(esk4_0))
    & m1_subset_1(esk8_0,u1_struct_0(esk3_0))
    & v3_pre_topc(esk6_0,esk4_0)
    & r2_hidden(esk7_0,esk6_0)
    & r1_tarski(esk6_0,u1_struct_0(esk3_0))
    & esk7_0 = esk8_0
    & ( ~ r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0)
      | ~ r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0),esk8_0) )
    & ( r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0)
      | r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0),esk8_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_13])])])])).

fof(c_0_16,plain,(
    ! [X11,X12] :
      ( ~ v2_pre_topc(X11)
      | ~ l1_pre_topc(X11)
      | ~ m1_pre_topc(X12,X11)
      | v2_pre_topc(X12) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_pre_topc])])])).

fof(c_0_17,plain,(
    ! [X15,X16] :
      ( ~ l1_pre_topc(X15)
      | ~ m1_subset_1(X16,k1_zfmisc_1(u1_struct_0(X15)))
      | r1_tarski(k1_tops_1(X15,X16),X16) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_tops_1])])])).

cnf(c_0_18,plain,
    ( l1_pre_topc(X2)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_19,negated_conjecture,
    ( m1_pre_topc(esk4_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_20,negated_conjecture,
    ( l1_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_21,plain,(
    ! [X17,X18,X19] :
      ( ~ l1_pre_topc(X17)
      | ~ m1_subset_1(X18,k1_zfmisc_1(u1_struct_0(X17)))
      | ~ m1_subset_1(X19,k1_zfmisc_1(u1_struct_0(X17)))
      | ~ v3_pre_topc(X18,X17)
      | ~ r1_tarski(X18,X19)
      | r1_tarski(X18,k1_tops_1(X17,X19)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t56_tops_1])])])).

fof(c_0_22,plain,(
    ! [X9,X10] :
      ( ( r1_tarski(X9,X10)
        | X9 != X10 )
      & ( r1_tarski(X10,X9)
        | X9 != X10 )
      & ( ~ r1_tarski(X9,X10)
        | ~ r1_tarski(X10,X9)
        | X9 = X10 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

fof(c_0_23,plain,(
    ! [X27,X28,X29,X30,X31] :
      ( v2_struct_0(X27)
      | ~ v2_pre_topc(X27)
      | ~ l1_pre_topc(X27)
      | v2_struct_0(X28)
      | ~ v2_pre_topc(X28)
      | ~ l1_pre_topc(X28)
      | ~ m1_pre_topc(X29,X27)
      | ~ m1_pre_topc(X30,X27)
      | ~ v1_funct_1(X31)
      | ~ v1_funct_2(X31,u1_struct_0(X29),u1_struct_0(X28))
      | ~ m1_subset_1(X31,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X29),u1_struct_0(X28))))
      | ~ m1_pre_topc(X30,X29)
      | k3_tmap_1(X27,X28,X29,X30,X31) = k2_partfun1(u1_struct_0(X29),u1_struct_0(X28),X31,u1_struct_0(X30)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d5_tmap_1])])])])).

fof(c_0_24,plain,(
    ! [X40,X41,X42] :
      ( ~ v2_pre_topc(X40)
      | ~ l1_pre_topc(X40)
      | ~ m1_pre_topc(X41,X40)
      | ~ m1_pre_topc(X42,X41)
      | m1_pre_topc(X42,X40) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_tsep_1])])])).

fof(c_0_25,plain,(
    ! [X23,X24,X25,X26] :
      ( v2_struct_0(X23)
      | ~ v2_pre_topc(X23)
      | ~ l1_pre_topc(X23)
      | v2_struct_0(X24)
      | ~ v2_pre_topc(X24)
      | ~ l1_pre_topc(X24)
      | ~ v1_funct_1(X25)
      | ~ v1_funct_2(X25,u1_struct_0(X23),u1_struct_0(X24))
      | ~ m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X23),u1_struct_0(X24))))
      | ~ m1_pre_topc(X26,X23)
      | k2_tmap_1(X23,X24,X25,X26) = k2_partfun1(u1_struct_0(X23),u1_struct_0(X24),X25,u1_struct_0(X26)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d4_tmap_1])])])])).

cnf(c_0_26,plain,
    ( v2_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_27,negated_conjecture,
    ( v2_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_28,plain,
    ( r1_tarski(k1_tops_1(X1,X2),X2)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_29,negated_conjecture,
    ( m1_subset_1(esk6_0,k1_zfmisc_1(u1_struct_0(esk4_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_30,negated_conjecture,
    ( l1_pre_topc(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18,c_0_19]),c_0_20])])).

cnf(c_0_31,plain,
    ( r1_tarski(X2,k1_tops_1(X1,X3))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v3_pre_topc(X2,X1)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_32,negated_conjecture,
    ( v3_pre_topc(esk6_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_33,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_34,plain,
    ( v2_struct_0(X1)
    | v2_struct_0(X2)
    | k3_tmap_1(X1,X2,X3,X4,X5) = k2_partfun1(u1_struct_0(X3),u1_struct_0(X2),X5,u1_struct_0(X4))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X2)
    | ~ m1_pre_topc(X3,X1)
    | ~ m1_pre_topc(X4,X1)
    | ~ v1_funct_1(X5)
    | ~ v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X2))
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))
    | ~ m1_pre_topc(X4,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_35,plain,
    ( m1_pre_topc(X3,X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_pre_topc(X3,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_36,plain,
    ( v2_struct_0(X1)
    | v2_struct_0(X2)
    | k2_tmap_1(X1,X2,X3,X4) = k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X3,u1_struct_0(X4))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X2)
    | ~ v1_funct_1(X3)
    | ~ v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ m1_pre_topc(X4,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_37,negated_conjecture,
    ( v1_funct_2(esk5_0,u1_struct_0(esk4_0),u1_struct_0(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_38,negated_conjecture,
    ( v1_funct_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_39,negated_conjecture,
    ( m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk4_0),u1_struct_0(esk2_0)))) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_40,negated_conjecture,
    ( l1_pre_topc(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_41,negated_conjecture,
    ( v2_pre_topc(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_42,negated_conjecture,
    ( v2_pre_topc(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_19]),c_0_20]),c_0_27])])).

cnf(c_0_43,negated_conjecture,
    ( ~ v2_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_44,negated_conjecture,
    ( ~ v2_struct_0(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_45,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_46,negated_conjecture,
    ( r1_tarski(k1_tops_1(esk4_0,esk6_0),esk6_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_29]),c_0_30])])).

cnf(c_0_47,negated_conjecture,
    ( r1_tarski(esk6_0,k1_tops_1(esk4_0,X1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk4_0)))
    | ~ r1_tarski(esk6_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_29]),c_0_30])])).

cnf(c_0_48,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_33])).

cnf(c_0_49,plain,
    ( k3_tmap_1(X1,X2,X3,X4,X5) = k2_partfun1(u1_struct_0(X3),u1_struct_0(X2),X5,u1_struct_0(X4))
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X2))
    | ~ v1_funct_1(X5)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))
    | ~ m1_pre_topc(X4,X3)
    | ~ m1_pre_topc(X3,X1)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X1) ),
    inference(csr,[status(thm)],[c_0_34,c_0_35])).

cnf(c_0_50,negated_conjecture,
    ( k2_partfun1(u1_struct_0(esk4_0),u1_struct_0(esk2_0),esk5_0,u1_struct_0(X1)) = k2_tmap_1(esk4_0,esk2_0,esk5_0,X1)
    | ~ m1_pre_topc(X1,esk4_0) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_37]),c_0_38]),c_0_39]),c_0_40]),c_0_30]),c_0_41]),c_0_42])]),c_0_43]),c_0_44])).

cnf(c_0_51,negated_conjecture,
    ( m1_pre_topc(esk3_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_52,plain,(
    ! [X20,X21,X22] :
      ( ( ~ m1_connsp_2(X22,X20,X21)
        | r2_hidden(X21,k1_tops_1(X20,X22))
        | ~ m1_subset_1(X22,k1_zfmisc_1(u1_struct_0(X20)))
        | ~ m1_subset_1(X21,u1_struct_0(X20))
        | v2_struct_0(X20)
        | ~ v2_pre_topc(X20)
        | ~ l1_pre_topc(X20) )
      & ( ~ r2_hidden(X21,k1_tops_1(X20,X22))
        | m1_connsp_2(X22,X20,X21)
        | ~ m1_subset_1(X22,k1_zfmisc_1(u1_struct_0(X20)))
        | ~ m1_subset_1(X21,u1_struct_0(X20))
        | v2_struct_0(X20)
        | ~ v2_pre_topc(X20)
        | ~ l1_pre_topc(X20) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_connsp_2])])])])])).

cnf(c_0_53,negated_conjecture,
    ( k1_tops_1(esk4_0,esk6_0) = esk6_0
    | ~ r1_tarski(esk6_0,k1_tops_1(esk4_0,esk6_0)) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

cnf(c_0_54,negated_conjecture,
    ( r1_tarski(esk6_0,k1_tops_1(esk4_0,esk6_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_48]),c_0_29])])).

cnf(c_0_55,negated_conjecture,
    ( k3_tmap_1(X1,esk2_0,esk4_0,X2,esk5_0) = k2_partfun1(u1_struct_0(esk4_0),u1_struct_0(esk2_0),esk5_0,u1_struct_0(X2))
    | v2_struct_0(X1)
    | ~ m1_pre_topc(X2,esk4_0)
    | ~ m1_pre_topc(esk4_0,X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_37]),c_0_38]),c_0_39]),c_0_40]),c_0_41])]),c_0_43])).

cnf(c_0_56,negated_conjecture,
    ( k2_partfun1(u1_struct_0(esk4_0),u1_struct_0(esk2_0),esk5_0,u1_struct_0(esk3_0)) = k2_tmap_1(esk4_0,esk2_0,esk5_0,esk3_0) ),
    inference(spm,[status(thm)],[c_0_50,c_0_51])).

fof(c_0_57,plain,(
    ! [X32] :
      ( ~ l1_pre_topc(X32)
      | m1_pre_topc(X32,X32) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_tsep_1])])).

fof(c_0_58,plain,(
    ! [X33,X34,X35,X36,X37,X38,X39] :
      ( ( ~ r1_tmap_1(X34,X33,X35,X38)
        | r1_tmap_1(X36,X33,k2_tmap_1(X34,X33,X35,X36),X39)
        | ~ r1_tarski(X37,u1_struct_0(X36))
        | ~ m1_connsp_2(X37,X34,X38)
        | X38 != X39
        | ~ m1_subset_1(X39,u1_struct_0(X36))
        | ~ m1_subset_1(X38,u1_struct_0(X34))
        | ~ m1_subset_1(X37,k1_zfmisc_1(u1_struct_0(X34)))
        | v2_struct_0(X36)
        | ~ m1_pre_topc(X36,X34)
        | ~ v1_funct_1(X35)
        | ~ v1_funct_2(X35,u1_struct_0(X34),u1_struct_0(X33))
        | ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X34),u1_struct_0(X33))))
        | v2_struct_0(X34)
        | ~ v2_pre_topc(X34)
        | ~ l1_pre_topc(X34)
        | v2_struct_0(X33)
        | ~ v2_pre_topc(X33)
        | ~ l1_pre_topc(X33) )
      & ( ~ r1_tmap_1(X36,X33,k2_tmap_1(X34,X33,X35,X36),X39)
        | r1_tmap_1(X34,X33,X35,X38)
        | ~ r1_tarski(X37,u1_struct_0(X36))
        | ~ m1_connsp_2(X37,X34,X38)
        | X38 != X39
        | ~ m1_subset_1(X39,u1_struct_0(X36))
        | ~ m1_subset_1(X38,u1_struct_0(X34))
        | ~ m1_subset_1(X37,k1_zfmisc_1(u1_struct_0(X34)))
        | v2_struct_0(X36)
        | ~ m1_pre_topc(X36,X34)
        | ~ v1_funct_1(X35)
        | ~ v1_funct_2(X35,u1_struct_0(X34),u1_struct_0(X33))
        | ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X34),u1_struct_0(X33))))
        | v2_struct_0(X34)
        | ~ v2_pre_topc(X34)
        | ~ l1_pre_topc(X34)
        | v2_struct_0(X33)
        | ~ v2_pre_topc(X33)
        | ~ l1_pre_topc(X33) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t65_tmap_1])])])])])).

cnf(c_0_59,plain,
    ( m1_connsp_2(X3,X2,X1)
    | v2_struct_0(X2)
    | ~ r2_hidden(X1,k1_tops_1(X2,X3))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ m1_subset_1(X1,u1_struct_0(X2))
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_52])).

cnf(c_0_60,negated_conjecture,
    ( k1_tops_1(esk4_0,esk6_0) = esk6_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_53,c_0_54])])).

cnf(c_0_61,negated_conjecture,
    ( k3_tmap_1(X1,esk2_0,esk4_0,esk3_0,esk5_0) = k2_tmap_1(esk4_0,esk2_0,esk5_0,esk3_0)
    | v2_struct_0(X1)
    | ~ m1_pre_topc(esk4_0,X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_51]),c_0_56])).

cnf(c_0_62,plain,
    ( m1_pre_topc(X1,X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_57])).

cnf(c_0_63,plain,
    ( r1_tmap_1(X3,X2,X4,X6)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | v2_struct_0(X2)
    | ~ r1_tmap_1(X1,X2,k2_tmap_1(X3,X2,X4,X1),X5)
    | ~ r1_tarski(X7,u1_struct_0(X1))
    | ~ m1_connsp_2(X7,X3,X6)
    | X6 != X5
    | ~ m1_subset_1(X5,u1_struct_0(X1))
    | ~ m1_subset_1(X6,u1_struct_0(X3))
    | ~ m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(X3)))
    | ~ m1_pre_topc(X1,X3)
    | ~ v1_funct_1(X4)
    | ~ v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X2))
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))
    | ~ v2_pre_topc(X3)
    | ~ l1_pre_topc(X3)
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_64,negated_conjecture,
    ( m1_connsp_2(esk6_0,esk4_0,X1)
    | ~ r2_hidden(X1,esk6_0)
    | ~ m1_subset_1(X1,u1_struct_0(esk4_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59,c_0_60]),c_0_29]),c_0_30]),c_0_42])]),c_0_44])).

cnf(c_0_65,negated_conjecture,
    ( r2_hidden(esk7_0,esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_66,negated_conjecture,
    ( m1_subset_1(esk7_0,u1_struct_0(esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_67,negated_conjecture,
    ( k2_tmap_1(esk4_0,esk2_0,esk5_0,esk3_0) = k3_tmap_1(esk4_0,esk2_0,esk4_0,esk3_0,esk5_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61,c_0_62]),c_0_30]),c_0_42])]),c_0_44])).

fof(c_0_68,plain,(
    ! [X43,X44,X45,X46,X47,X48,X49] :
      ( v2_struct_0(X43)
      | ~ v2_pre_topc(X43)
      | ~ l1_pre_topc(X43)
      | v2_struct_0(X44)
      | ~ v2_pre_topc(X44)
      | ~ l1_pre_topc(X44)
      | v2_struct_0(X45)
      | ~ m1_pre_topc(X45,X43)
      | v2_struct_0(X46)
      | ~ m1_pre_topc(X46,X43)
      | ~ v1_funct_1(X47)
      | ~ v1_funct_2(X47,u1_struct_0(X45),u1_struct_0(X44))
      | ~ m1_subset_1(X47,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X45),u1_struct_0(X44))))
      | ~ m1_subset_1(X48,u1_struct_0(X45))
      | ~ m1_subset_1(X49,u1_struct_0(X46))
      | X48 != X49
      | ~ m1_pre_topc(X46,X45)
      | ~ r1_tmap_1(X45,X44,X47,X48)
      | r1_tmap_1(X46,X44,k3_tmap_1(X43,X44,X45,X46,X47),X49) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t81_tmap_1])])])])).

cnf(c_0_69,plain,
    ( r1_tmap_1(X1,X2,X3,X4)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X5)
    | ~ r1_tmap_1(X5,X2,k2_tmap_1(X1,X2,X3,X5),X4)
    | ~ v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))
    | ~ v1_funct_1(X3)
    | ~ m1_connsp_2(X6,X1,X4)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X4,u1_struct_0(X1))
    | ~ m1_subset_1(X4,u1_struct_0(X5))
    | ~ m1_pre_topc(X5,X1)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | ~ r1_tarski(X6,u1_struct_0(X5)) ),
    inference(er,[status(thm)],[c_0_63])).

cnf(c_0_70,negated_conjecture,
    ( m1_connsp_2(esk6_0,esk4_0,esk7_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_64,c_0_65]),c_0_66])])).

cnf(c_0_71,negated_conjecture,
    ( r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0)
    | r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0),esk8_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_72,negated_conjecture,
    ( esk7_0 = esk8_0 ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_73,negated_conjecture,
    ( k3_tmap_1(X1,esk2_0,esk4_0,esk3_0,esk5_0) = k3_tmap_1(esk4_0,esk2_0,esk4_0,esk3_0,esk5_0)
    | v2_struct_0(X1)
    | ~ m1_pre_topc(esk4_0,X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(rw,[status(thm)],[c_0_61,c_0_67])).

cnf(c_0_74,negated_conjecture,
    ( ~ v2_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_75,plain,
    ( v2_struct_0(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | v2_struct_0(X4)
    | r1_tmap_1(X4,X2,k3_tmap_1(X1,X2,X3,X4,X5),X7)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X2)
    | ~ m1_pre_topc(X3,X1)
    | ~ m1_pre_topc(X4,X1)
    | ~ v1_funct_1(X5)
    | ~ v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X2))
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))
    | ~ m1_subset_1(X6,u1_struct_0(X3))
    | ~ m1_subset_1(X7,u1_struct_0(X4))
    | X6 != X7
    | ~ m1_pre_topc(X4,X3)
    | ~ r1_tmap_1(X3,X2,X5,X6) ),
    inference(split_conjunct,[status(thm)],[c_0_68])).

cnf(c_0_76,negated_conjecture,
    ( r1_tmap_1(esk4_0,X1,X2,esk7_0)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | ~ r1_tmap_1(X3,X1,k2_tmap_1(esk4_0,X1,X2,X3),esk7_0)
    | ~ v1_funct_2(X2,u1_struct_0(esk4_0),u1_struct_0(X1))
    | ~ v1_funct_1(X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk4_0),u1_struct_0(X1))))
    | ~ m1_subset_1(esk7_0,u1_struct_0(X3))
    | ~ m1_pre_topc(X3,esk4_0)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1)
    | ~ r1_tarski(esk6_0,u1_struct_0(X3)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_69,c_0_70]),c_0_29]),c_0_66]),c_0_30]),c_0_42])]),c_0_44])).

cnf(c_0_77,negated_conjecture,
    ( m1_subset_1(esk8_0,u1_struct_0(esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_78,negated_conjecture,
    ( r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0),esk7_0)
    | r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0) ),
    inference(rw,[status(thm)],[c_0_71,c_0_72])).

cnf(c_0_79,negated_conjecture,
    ( k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0) = k3_tmap_1(esk4_0,esk2_0,esk4_0,esk3_0,esk5_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73,c_0_19]),c_0_20]),c_0_27])]),c_0_74])).

cnf(c_0_80,plain,
    ( r1_tmap_1(X1,X2,k3_tmap_1(X3,X2,X4,X1,X5),X6)
    | v2_struct_0(X1)
    | v2_struct_0(X4)
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | ~ r1_tmap_1(X4,X2,X5,X6)
    | ~ v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2))
    | ~ v1_funct_1(X5)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2))))
    | ~ m1_subset_1(X6,u1_struct_0(X1))
    | ~ m1_subset_1(X6,u1_struct_0(X4))
    | ~ m1_pre_topc(X1,X4)
    | ~ m1_pre_topc(X4,X3)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X3)
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X3) ),
    inference(er,[status(thm)],[inference(csr,[status(thm)],[c_0_75,c_0_35])])).

cnf(c_0_81,negated_conjecture,
    ( r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0)
    | v2_struct_0(X1)
    | ~ r1_tmap_1(X1,esk2_0,k2_tmap_1(esk4_0,esk2_0,esk5_0,X1),esk7_0)
    | ~ m1_subset_1(esk7_0,u1_struct_0(X1))
    | ~ m1_pre_topc(X1,esk4_0)
    | ~ r1_tarski(esk6_0,u1_struct_0(X1)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76,c_0_37]),c_0_38]),c_0_39]),c_0_40]),c_0_41])]),c_0_43])).

cnf(c_0_82,negated_conjecture,
    ( m1_subset_1(esk7_0,u1_struct_0(esk3_0)) ),
    inference(rw,[status(thm)],[c_0_77,c_0_72])).

cnf(c_0_83,negated_conjecture,
    ( r1_tarski(esk6_0,u1_struct_0(esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_84,negated_conjecture,
    ( ~ v2_struct_0(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_85,negated_conjecture,
    ( r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk4_0,esk2_0,esk4_0,esk3_0,esk5_0),esk7_0)
    | r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0) ),
    inference(rw,[status(thm)],[c_0_78,c_0_79])).

cnf(c_0_86,negated_conjecture,
    ( ~ r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0)
    | ~ r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0),esk8_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_87,negated_conjecture,
    ( r1_tmap_1(X1,esk2_0,k3_tmap_1(X2,esk2_0,esk4_0,X1,esk5_0),X3)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ r1_tmap_1(esk4_0,esk2_0,esk5_0,X3)
    | ~ m1_subset_1(X3,u1_struct_0(esk4_0))
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ m1_pre_topc(X1,esk4_0)
    | ~ m1_pre_topc(esk4_0,X2)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X2) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80,c_0_37]),c_0_38]),c_0_39]),c_0_40]),c_0_41])]),c_0_43]),c_0_44])).

cnf(c_0_88,negated_conjecture,
    ( r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0) ),
    inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81,c_0_67]),c_0_82]),c_0_51]),c_0_83])]),c_0_84]),c_0_85])).

cnf(c_0_89,negated_conjecture,
    ( ~ r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0),esk7_0)
    | ~ r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0) ),
    inference(rw,[status(thm)],[c_0_86,c_0_72])).

cnf(c_0_90,negated_conjecture,
    ( r1_tmap_1(X1,esk2_0,k3_tmap_1(X2,esk2_0,esk4_0,X1,esk5_0),esk7_0)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | ~ m1_subset_1(esk7_0,u1_struct_0(X1))
    | ~ m1_pre_topc(X1,esk4_0)
    | ~ m1_pre_topc(esk4_0,X2)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X2) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_87,c_0_88]),c_0_66])])).

cnf(c_0_91,negated_conjecture,
    ( ~ r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk4_0,esk2_0,esk4_0,esk3_0,esk5_0),esk7_0)
    | ~ r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0) ),
    inference(rw,[status(thm)],[c_0_89,c_0_79])).

cnf(c_0_92,negated_conjecture,
    ( r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(X1,esk2_0,esk4_0,esk3_0,esk5_0),esk7_0)
    | v2_struct_0(X1)
    | ~ m1_pre_topc(esk4_0,X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_90,c_0_51]),c_0_82])]),c_0_84])).

cnf(c_0_93,negated_conjecture,
    ( ~ r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk4_0,esk2_0,esk4_0,esk3_0,esk5_0),esk7_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_91,c_0_88])])).

cnf(c_0_94,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_92,c_0_62]),c_0_30]),c_0_42])]),c_0_93]),c_0_44]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.08/0.14  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.08/0.15  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.36  % Computer   : n008.cluster.edu
% 0.14/0.36  % Model      : x86_64 x86_64
% 0.14/0.36  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.36  % Memory     : 8042.1875MB
% 0.14/0.36  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.36  % CPULimit   : 60
% 0.14/0.36  % WCLimit    : 600
% 0.14/0.36  % DateTime   : Tue Dec  1 11:24:00 EST 2020
% 0.14/0.36  % CPUTime    : 
% 0.14/0.36  # Version: 2.5pre002
% 0.14/0.36  # No SInE strategy applied
% 0.14/0.36  # Trying AutoSched0 for 299 seconds
% 0.14/0.39  # AutoSched0-Mode selected heuristic G_E___208_B07_F1_SE_CS_SP_PS_S4d
% 0.14/0.39  # and selection function SelectCQIPrecWNTNp.
% 0.14/0.39  #
% 0.14/0.39  # Preprocessing time       : 0.017 s
% 0.14/0.39  # Presaturation interreduction done
% 0.14/0.39  
% 0.14/0.39  # Proof found!
% 0.14/0.39  # SZS status Theorem
% 0.14/0.39  # SZS output start CNFRefutation
% 0.14/0.39  fof(t84_tmap_1, conjecture, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X1))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X1))=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2)))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2)))))=>(m1_pre_topc(X3,X4)=>![X6]:(m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X4)))=>![X7]:(m1_subset_1(X7,u1_struct_0(X4))=>![X8]:(m1_subset_1(X8,u1_struct_0(X3))=>((((v3_pre_topc(X6,X4)&r2_hidden(X7,X6))&r1_tarski(X6,u1_struct_0(X3)))&X7=X8)=>(r1_tmap_1(X4,X2,X5,X7)<=>r1_tmap_1(X3,X2,k3_tmap_1(X1,X2,X4,X3,X5),X8)))))))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t84_tmap_1)).
% 0.14/0.39  fof(dt_m1_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_pre_topc(X2,X1)=>l1_pre_topc(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_m1_pre_topc)).
% 0.14/0.39  fof(cc1_pre_topc, axiom, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_pre_topc(X2,X1)=>v2_pre_topc(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc1_pre_topc)).
% 0.14/0.39  fof(t44_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>r1_tarski(k1_tops_1(X1,X2),X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t44_tops_1)).
% 0.14/0.39  fof(t56_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>((v3_pre_topc(X2,X1)&r1_tarski(X2,X3))=>r1_tarski(X2,k1_tops_1(X1,X3)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t56_tops_1)).
% 0.14/0.39  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.14/0.39  fof(d5_tmap_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:(m1_pre_topc(X3,X1)=>![X4]:(m1_pre_topc(X4,X1)=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X2)))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2)))))=>(m1_pre_topc(X4,X3)=>k3_tmap_1(X1,X2,X3,X4,X5)=k2_partfun1(u1_struct_0(X3),u1_struct_0(X2),X5,u1_struct_0(X4)))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d5_tmap_1)).
% 0.14/0.39  fof(t7_tsep_1, axiom, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_pre_topc(X2,X1)=>![X3]:(m1_pre_topc(X3,X2)=>m1_pre_topc(X3,X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_tsep_1)).
% 0.14/0.39  fof(d4_tmap_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))))=>![X4]:(m1_pre_topc(X4,X1)=>k2_tmap_1(X1,X2,X3,X4)=k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X3,u1_struct_0(X4)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d4_tmap_1)).
% 0.14/0.39  fof(d1_connsp_2, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>(m1_connsp_2(X3,X1,X2)<=>r2_hidden(X2,k1_tops_1(X1,X3)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_connsp_2)).
% 0.14/0.39  fof(t2_tsep_1, axiom, ![X1]:(l1_pre_topc(X1)=>m1_pre_topc(X1,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_tsep_1)).
% 0.14/0.39  fof(t65_tmap_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X2))=>![X5]:(m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X2)))=>![X6]:(m1_subset_1(X6,u1_struct_0(X2))=>![X7]:(m1_subset_1(X7,u1_struct_0(X4))=>(((r1_tarski(X5,u1_struct_0(X4))&m1_connsp_2(X5,X2,X6))&X6=X7)=>(r1_tmap_1(X2,X1,X3,X6)<=>r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X7)))))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t65_tmap_1)).
% 0.14/0.39  fof(t81_tmap_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X1))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X1))=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X2)))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2)))))=>![X6]:(m1_subset_1(X6,u1_struct_0(X3))=>![X7]:(m1_subset_1(X7,u1_struct_0(X4))=>(((X6=X7&m1_pre_topc(X4,X3))&r1_tmap_1(X3,X2,X5,X6))=>r1_tmap_1(X4,X2,k3_tmap_1(X1,X2,X3,X4,X5),X7))))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t81_tmap_1)).
% 0.14/0.39  fof(c_0_13, negated_conjecture, ~(![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X1))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X1))=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2)))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2)))))=>(m1_pre_topc(X3,X4)=>![X6]:(m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X4)))=>![X7]:(m1_subset_1(X7,u1_struct_0(X4))=>![X8]:(m1_subset_1(X8,u1_struct_0(X3))=>((((v3_pre_topc(X6,X4)&r2_hidden(X7,X6))&r1_tarski(X6,u1_struct_0(X3)))&X7=X8)=>(r1_tmap_1(X4,X2,X5,X7)<=>r1_tmap_1(X3,X2,k3_tmap_1(X1,X2,X4,X3,X5),X8))))))))))))), inference(assume_negation,[status(cth)],[t84_tmap_1])).
% 0.14/0.39  fof(c_0_14, plain, ![X13, X14]:(~l1_pre_topc(X13)|(~m1_pre_topc(X14,X13)|l1_pre_topc(X14))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_m1_pre_topc])])])).
% 0.14/0.39  fof(c_0_15, negated_conjecture, (((~v2_struct_0(esk1_0)&v2_pre_topc(esk1_0))&l1_pre_topc(esk1_0))&(((~v2_struct_0(esk2_0)&v2_pre_topc(esk2_0))&l1_pre_topc(esk2_0))&((~v2_struct_0(esk3_0)&m1_pre_topc(esk3_0,esk1_0))&((~v2_struct_0(esk4_0)&m1_pre_topc(esk4_0,esk1_0))&(((v1_funct_1(esk5_0)&v1_funct_2(esk5_0,u1_struct_0(esk4_0),u1_struct_0(esk2_0)))&m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk4_0),u1_struct_0(esk2_0)))))&(m1_pre_topc(esk3_0,esk4_0)&(m1_subset_1(esk6_0,k1_zfmisc_1(u1_struct_0(esk4_0)))&(m1_subset_1(esk7_0,u1_struct_0(esk4_0))&(m1_subset_1(esk8_0,u1_struct_0(esk3_0))&((((v3_pre_topc(esk6_0,esk4_0)&r2_hidden(esk7_0,esk6_0))&r1_tarski(esk6_0,u1_struct_0(esk3_0)))&esk7_0=esk8_0)&((~r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0)|~r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0),esk8_0))&(r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0)|r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0),esk8_0))))))))))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_13])])])])).
% 0.14/0.39  fof(c_0_16, plain, ![X11, X12]:(~v2_pre_topc(X11)|~l1_pre_topc(X11)|(~m1_pre_topc(X12,X11)|v2_pre_topc(X12))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_pre_topc])])])).
% 0.14/0.39  fof(c_0_17, plain, ![X15, X16]:(~l1_pre_topc(X15)|(~m1_subset_1(X16,k1_zfmisc_1(u1_struct_0(X15)))|r1_tarski(k1_tops_1(X15,X16),X16))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_tops_1])])])).
% 0.14/0.39  cnf(c_0_18, plain, (l1_pre_topc(X2)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.39  cnf(c_0_19, negated_conjecture, (m1_pre_topc(esk4_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_20, negated_conjecture, (l1_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  fof(c_0_21, plain, ![X17, X18, X19]:(~l1_pre_topc(X17)|(~m1_subset_1(X18,k1_zfmisc_1(u1_struct_0(X17)))|(~m1_subset_1(X19,k1_zfmisc_1(u1_struct_0(X17)))|(~v3_pre_topc(X18,X17)|~r1_tarski(X18,X19)|r1_tarski(X18,k1_tops_1(X17,X19)))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t56_tops_1])])])).
% 0.14/0.39  fof(c_0_22, plain, ![X9, X10]:(((r1_tarski(X9,X10)|X9!=X10)&(r1_tarski(X10,X9)|X9!=X10))&(~r1_tarski(X9,X10)|~r1_tarski(X10,X9)|X9=X10)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.14/0.39  fof(c_0_23, plain, ![X27, X28, X29, X30, X31]:(v2_struct_0(X27)|~v2_pre_topc(X27)|~l1_pre_topc(X27)|(v2_struct_0(X28)|~v2_pre_topc(X28)|~l1_pre_topc(X28)|(~m1_pre_topc(X29,X27)|(~m1_pre_topc(X30,X27)|(~v1_funct_1(X31)|~v1_funct_2(X31,u1_struct_0(X29),u1_struct_0(X28))|~m1_subset_1(X31,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X29),u1_struct_0(X28))))|(~m1_pre_topc(X30,X29)|k3_tmap_1(X27,X28,X29,X30,X31)=k2_partfun1(u1_struct_0(X29),u1_struct_0(X28),X31,u1_struct_0(X30)))))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d5_tmap_1])])])])).
% 0.14/0.39  fof(c_0_24, plain, ![X40, X41, X42]:(~v2_pre_topc(X40)|~l1_pre_topc(X40)|(~m1_pre_topc(X41,X40)|(~m1_pre_topc(X42,X41)|m1_pre_topc(X42,X40)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_tsep_1])])])).
% 0.14/0.39  fof(c_0_25, plain, ![X23, X24, X25, X26]:(v2_struct_0(X23)|~v2_pre_topc(X23)|~l1_pre_topc(X23)|(v2_struct_0(X24)|~v2_pre_topc(X24)|~l1_pre_topc(X24)|(~v1_funct_1(X25)|~v1_funct_2(X25,u1_struct_0(X23),u1_struct_0(X24))|~m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X23),u1_struct_0(X24))))|(~m1_pre_topc(X26,X23)|k2_tmap_1(X23,X24,X25,X26)=k2_partfun1(u1_struct_0(X23),u1_struct_0(X24),X25,u1_struct_0(X26)))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d4_tmap_1])])])])).
% 0.14/0.39  cnf(c_0_26, plain, (v2_pre_topc(X2)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.39  cnf(c_0_27, negated_conjecture, (v2_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_28, plain, (r1_tarski(k1_tops_1(X1,X2),X2)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.14/0.39  cnf(c_0_29, negated_conjecture, (m1_subset_1(esk6_0,k1_zfmisc_1(u1_struct_0(esk4_0)))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_30, negated_conjecture, (l1_pre_topc(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18, c_0_19]), c_0_20])])).
% 0.14/0.39  cnf(c_0_31, plain, (r1_tarski(X2,k1_tops_1(X1,X3))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~v3_pre_topc(X2,X1)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.14/0.39  cnf(c_0_32, negated_conjecture, (v3_pre_topc(esk6_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_33, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.14/0.39  cnf(c_0_34, plain, (v2_struct_0(X1)|v2_struct_0(X2)|k3_tmap_1(X1,X2,X3,X4,X5)=k2_partfun1(u1_struct_0(X3),u1_struct_0(X2),X5,u1_struct_0(X4))|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~v2_pre_topc(X2)|~l1_pre_topc(X2)|~m1_pre_topc(X3,X1)|~m1_pre_topc(X4,X1)|~v1_funct_1(X5)|~v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X2))|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))|~m1_pre_topc(X4,X3)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.14/0.39  cnf(c_0_35, plain, (m1_pre_topc(X3,X1)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)|~m1_pre_topc(X3,X2)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.14/0.39  cnf(c_0_36, plain, (v2_struct_0(X1)|v2_struct_0(X2)|k2_tmap_1(X1,X2,X3,X4)=k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X3,u1_struct_0(X4))|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~v2_pre_topc(X2)|~l1_pre_topc(X2)|~v1_funct_1(X3)|~v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))|~m1_pre_topc(X4,X1)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.14/0.39  cnf(c_0_37, negated_conjecture, (v1_funct_2(esk5_0,u1_struct_0(esk4_0),u1_struct_0(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_38, negated_conjecture, (v1_funct_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_39, negated_conjecture, (m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk4_0),u1_struct_0(esk2_0))))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_40, negated_conjecture, (l1_pre_topc(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_41, negated_conjecture, (v2_pre_topc(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_42, negated_conjecture, (v2_pre_topc(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_19]), c_0_20]), c_0_27])])).
% 0.14/0.39  cnf(c_0_43, negated_conjecture, (~v2_struct_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_44, negated_conjecture, (~v2_struct_0(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_45, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.14/0.39  cnf(c_0_46, negated_conjecture, (r1_tarski(k1_tops_1(esk4_0,esk6_0),esk6_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_29]), c_0_30])])).
% 0.14/0.39  cnf(c_0_47, negated_conjecture, (r1_tarski(esk6_0,k1_tops_1(esk4_0,X1))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk4_0)))|~r1_tarski(esk6_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_29]), c_0_30])])).
% 0.14/0.39  cnf(c_0_48, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_33])).
% 0.14/0.39  cnf(c_0_49, plain, (k3_tmap_1(X1,X2,X3,X4,X5)=k2_partfun1(u1_struct_0(X3),u1_struct_0(X2),X5,u1_struct_0(X4))|v2_struct_0(X1)|v2_struct_0(X2)|~v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X2))|~v1_funct_1(X5)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))|~m1_pre_topc(X4,X3)|~m1_pre_topc(X3,X1)|~l1_pre_topc(X2)|~l1_pre_topc(X1)|~v2_pre_topc(X2)|~v2_pre_topc(X1)), inference(csr,[status(thm)],[c_0_34, c_0_35])).
% 0.14/0.39  cnf(c_0_50, negated_conjecture, (k2_partfun1(u1_struct_0(esk4_0),u1_struct_0(esk2_0),esk5_0,u1_struct_0(X1))=k2_tmap_1(esk4_0,esk2_0,esk5_0,X1)|~m1_pre_topc(X1,esk4_0)), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_37]), c_0_38]), c_0_39]), c_0_40]), c_0_30]), c_0_41]), c_0_42])]), c_0_43]), c_0_44])).
% 0.14/0.39  cnf(c_0_51, negated_conjecture, (m1_pre_topc(esk3_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  fof(c_0_52, plain, ![X20, X21, X22]:((~m1_connsp_2(X22,X20,X21)|r2_hidden(X21,k1_tops_1(X20,X22))|~m1_subset_1(X22,k1_zfmisc_1(u1_struct_0(X20)))|~m1_subset_1(X21,u1_struct_0(X20))|(v2_struct_0(X20)|~v2_pre_topc(X20)|~l1_pre_topc(X20)))&(~r2_hidden(X21,k1_tops_1(X20,X22))|m1_connsp_2(X22,X20,X21)|~m1_subset_1(X22,k1_zfmisc_1(u1_struct_0(X20)))|~m1_subset_1(X21,u1_struct_0(X20))|(v2_struct_0(X20)|~v2_pre_topc(X20)|~l1_pre_topc(X20)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_connsp_2])])])])])).
% 0.14/0.39  cnf(c_0_53, negated_conjecture, (k1_tops_1(esk4_0,esk6_0)=esk6_0|~r1_tarski(esk6_0,k1_tops_1(esk4_0,esk6_0))), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.14/0.39  cnf(c_0_54, negated_conjecture, (r1_tarski(esk6_0,k1_tops_1(esk4_0,esk6_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_48]), c_0_29])])).
% 0.14/0.39  cnf(c_0_55, negated_conjecture, (k3_tmap_1(X1,esk2_0,esk4_0,X2,esk5_0)=k2_partfun1(u1_struct_0(esk4_0),u1_struct_0(esk2_0),esk5_0,u1_struct_0(X2))|v2_struct_0(X1)|~m1_pre_topc(X2,esk4_0)|~m1_pre_topc(esk4_0,X1)|~l1_pre_topc(X1)|~v2_pre_topc(X1)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_37]), c_0_38]), c_0_39]), c_0_40]), c_0_41])]), c_0_43])).
% 0.14/0.39  cnf(c_0_56, negated_conjecture, (k2_partfun1(u1_struct_0(esk4_0),u1_struct_0(esk2_0),esk5_0,u1_struct_0(esk3_0))=k2_tmap_1(esk4_0,esk2_0,esk5_0,esk3_0)), inference(spm,[status(thm)],[c_0_50, c_0_51])).
% 0.14/0.39  fof(c_0_57, plain, ![X32]:(~l1_pre_topc(X32)|m1_pre_topc(X32,X32)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_tsep_1])])).
% 0.14/0.39  fof(c_0_58, plain, ![X33, X34, X35, X36, X37, X38, X39]:((~r1_tmap_1(X34,X33,X35,X38)|r1_tmap_1(X36,X33,k2_tmap_1(X34,X33,X35,X36),X39)|(~r1_tarski(X37,u1_struct_0(X36))|~m1_connsp_2(X37,X34,X38)|X38!=X39)|~m1_subset_1(X39,u1_struct_0(X36))|~m1_subset_1(X38,u1_struct_0(X34))|~m1_subset_1(X37,k1_zfmisc_1(u1_struct_0(X34)))|(v2_struct_0(X36)|~m1_pre_topc(X36,X34))|(~v1_funct_1(X35)|~v1_funct_2(X35,u1_struct_0(X34),u1_struct_0(X33))|~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X34),u1_struct_0(X33)))))|(v2_struct_0(X34)|~v2_pre_topc(X34)|~l1_pre_topc(X34))|(v2_struct_0(X33)|~v2_pre_topc(X33)|~l1_pre_topc(X33)))&(~r1_tmap_1(X36,X33,k2_tmap_1(X34,X33,X35,X36),X39)|r1_tmap_1(X34,X33,X35,X38)|(~r1_tarski(X37,u1_struct_0(X36))|~m1_connsp_2(X37,X34,X38)|X38!=X39)|~m1_subset_1(X39,u1_struct_0(X36))|~m1_subset_1(X38,u1_struct_0(X34))|~m1_subset_1(X37,k1_zfmisc_1(u1_struct_0(X34)))|(v2_struct_0(X36)|~m1_pre_topc(X36,X34))|(~v1_funct_1(X35)|~v1_funct_2(X35,u1_struct_0(X34),u1_struct_0(X33))|~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X34),u1_struct_0(X33)))))|(v2_struct_0(X34)|~v2_pre_topc(X34)|~l1_pre_topc(X34))|(v2_struct_0(X33)|~v2_pre_topc(X33)|~l1_pre_topc(X33)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t65_tmap_1])])])])])).
% 0.14/0.39  cnf(c_0_59, plain, (m1_connsp_2(X3,X2,X1)|v2_struct_0(X2)|~r2_hidden(X1,k1_tops_1(X2,X3))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))|~m1_subset_1(X1,u1_struct_0(X2))|~v2_pre_topc(X2)|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_52])).
% 0.14/0.39  cnf(c_0_60, negated_conjecture, (k1_tops_1(esk4_0,esk6_0)=esk6_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_53, c_0_54])])).
% 0.14/0.39  cnf(c_0_61, negated_conjecture, (k3_tmap_1(X1,esk2_0,esk4_0,esk3_0,esk5_0)=k2_tmap_1(esk4_0,esk2_0,esk5_0,esk3_0)|v2_struct_0(X1)|~m1_pre_topc(esk4_0,X1)|~l1_pre_topc(X1)|~v2_pre_topc(X1)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_51]), c_0_56])).
% 0.14/0.39  cnf(c_0_62, plain, (m1_pre_topc(X1,X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_57])).
% 0.14/0.39  cnf(c_0_63, plain, (r1_tmap_1(X3,X2,X4,X6)|v2_struct_0(X1)|v2_struct_0(X3)|v2_struct_0(X2)|~r1_tmap_1(X1,X2,k2_tmap_1(X3,X2,X4,X1),X5)|~r1_tarski(X7,u1_struct_0(X1))|~m1_connsp_2(X7,X3,X6)|X6!=X5|~m1_subset_1(X5,u1_struct_0(X1))|~m1_subset_1(X6,u1_struct_0(X3))|~m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(X3)))|~m1_pre_topc(X1,X3)|~v1_funct_1(X4)|~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X2))|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))|~v2_pre_topc(X3)|~l1_pre_topc(X3)|~v2_pre_topc(X2)|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.14/0.39  cnf(c_0_64, negated_conjecture, (m1_connsp_2(esk6_0,esk4_0,X1)|~r2_hidden(X1,esk6_0)|~m1_subset_1(X1,u1_struct_0(esk4_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59, c_0_60]), c_0_29]), c_0_30]), c_0_42])]), c_0_44])).
% 0.14/0.39  cnf(c_0_65, negated_conjecture, (r2_hidden(esk7_0,esk6_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_66, negated_conjecture, (m1_subset_1(esk7_0,u1_struct_0(esk4_0))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_67, negated_conjecture, (k2_tmap_1(esk4_0,esk2_0,esk5_0,esk3_0)=k3_tmap_1(esk4_0,esk2_0,esk4_0,esk3_0,esk5_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61, c_0_62]), c_0_30]), c_0_42])]), c_0_44])).
% 0.14/0.39  fof(c_0_68, plain, ![X43, X44, X45, X46, X47, X48, X49]:(v2_struct_0(X43)|~v2_pre_topc(X43)|~l1_pre_topc(X43)|(v2_struct_0(X44)|~v2_pre_topc(X44)|~l1_pre_topc(X44)|(v2_struct_0(X45)|~m1_pre_topc(X45,X43)|(v2_struct_0(X46)|~m1_pre_topc(X46,X43)|(~v1_funct_1(X47)|~v1_funct_2(X47,u1_struct_0(X45),u1_struct_0(X44))|~m1_subset_1(X47,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X45),u1_struct_0(X44))))|(~m1_subset_1(X48,u1_struct_0(X45))|(~m1_subset_1(X49,u1_struct_0(X46))|(X48!=X49|~m1_pre_topc(X46,X45)|~r1_tmap_1(X45,X44,X47,X48)|r1_tmap_1(X46,X44,k3_tmap_1(X43,X44,X45,X46,X47),X49))))))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t81_tmap_1])])])])).
% 0.14/0.39  cnf(c_0_69, plain, (r1_tmap_1(X1,X2,X3,X4)|v2_struct_0(X1)|v2_struct_0(X2)|v2_struct_0(X5)|~r1_tmap_1(X5,X2,k2_tmap_1(X1,X2,X3,X5),X4)|~v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))|~v1_funct_1(X3)|~m1_connsp_2(X6,X1,X4)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))|~m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X4,u1_struct_0(X1))|~m1_subset_1(X4,u1_struct_0(X5))|~m1_pre_topc(X5,X1)|~l1_pre_topc(X1)|~l1_pre_topc(X2)|~v2_pre_topc(X1)|~v2_pre_topc(X2)|~r1_tarski(X6,u1_struct_0(X5))), inference(er,[status(thm)],[c_0_63])).
% 0.14/0.39  cnf(c_0_70, negated_conjecture, (m1_connsp_2(esk6_0,esk4_0,esk7_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_64, c_0_65]), c_0_66])])).
% 0.14/0.39  cnf(c_0_71, negated_conjecture, (r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0)|r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0),esk8_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_72, negated_conjecture, (esk7_0=esk8_0), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_73, negated_conjecture, (k3_tmap_1(X1,esk2_0,esk4_0,esk3_0,esk5_0)=k3_tmap_1(esk4_0,esk2_0,esk4_0,esk3_0,esk5_0)|v2_struct_0(X1)|~m1_pre_topc(esk4_0,X1)|~l1_pre_topc(X1)|~v2_pre_topc(X1)), inference(rw,[status(thm)],[c_0_61, c_0_67])).
% 0.14/0.39  cnf(c_0_74, negated_conjecture, (~v2_struct_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_75, plain, (v2_struct_0(X1)|v2_struct_0(X2)|v2_struct_0(X3)|v2_struct_0(X4)|r1_tmap_1(X4,X2,k3_tmap_1(X1,X2,X3,X4,X5),X7)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~v2_pre_topc(X2)|~l1_pre_topc(X2)|~m1_pre_topc(X3,X1)|~m1_pre_topc(X4,X1)|~v1_funct_1(X5)|~v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X2))|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))|~m1_subset_1(X6,u1_struct_0(X3))|~m1_subset_1(X7,u1_struct_0(X4))|X6!=X7|~m1_pre_topc(X4,X3)|~r1_tmap_1(X3,X2,X5,X6)), inference(split_conjunct,[status(thm)],[c_0_68])).
% 0.14/0.39  cnf(c_0_76, negated_conjecture, (r1_tmap_1(esk4_0,X1,X2,esk7_0)|v2_struct_0(X1)|v2_struct_0(X3)|~r1_tmap_1(X3,X1,k2_tmap_1(esk4_0,X1,X2,X3),esk7_0)|~v1_funct_2(X2,u1_struct_0(esk4_0),u1_struct_0(X1))|~v1_funct_1(X2)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk4_0),u1_struct_0(X1))))|~m1_subset_1(esk7_0,u1_struct_0(X3))|~m1_pre_topc(X3,esk4_0)|~l1_pre_topc(X1)|~v2_pre_topc(X1)|~r1_tarski(esk6_0,u1_struct_0(X3))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_69, c_0_70]), c_0_29]), c_0_66]), c_0_30]), c_0_42])]), c_0_44])).
% 0.14/0.39  cnf(c_0_77, negated_conjecture, (m1_subset_1(esk8_0,u1_struct_0(esk3_0))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_78, negated_conjecture, (r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0),esk7_0)|r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0)), inference(rw,[status(thm)],[c_0_71, c_0_72])).
% 0.14/0.39  cnf(c_0_79, negated_conjecture, (k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0)=k3_tmap_1(esk4_0,esk2_0,esk4_0,esk3_0,esk5_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73, c_0_19]), c_0_20]), c_0_27])]), c_0_74])).
% 0.14/0.39  cnf(c_0_80, plain, (r1_tmap_1(X1,X2,k3_tmap_1(X3,X2,X4,X1,X5),X6)|v2_struct_0(X1)|v2_struct_0(X4)|v2_struct_0(X2)|v2_struct_0(X3)|~r1_tmap_1(X4,X2,X5,X6)|~v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2))|~v1_funct_1(X5)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2))))|~m1_subset_1(X6,u1_struct_0(X1))|~m1_subset_1(X6,u1_struct_0(X4))|~m1_pre_topc(X1,X4)|~m1_pre_topc(X4,X3)|~l1_pre_topc(X2)|~l1_pre_topc(X3)|~v2_pre_topc(X2)|~v2_pre_topc(X3)), inference(er,[status(thm)],[inference(csr,[status(thm)],[c_0_75, c_0_35])])).
% 0.14/0.39  cnf(c_0_81, negated_conjecture, (r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0)|v2_struct_0(X1)|~r1_tmap_1(X1,esk2_0,k2_tmap_1(esk4_0,esk2_0,esk5_0,X1),esk7_0)|~m1_subset_1(esk7_0,u1_struct_0(X1))|~m1_pre_topc(X1,esk4_0)|~r1_tarski(esk6_0,u1_struct_0(X1))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76, c_0_37]), c_0_38]), c_0_39]), c_0_40]), c_0_41])]), c_0_43])).
% 0.14/0.39  cnf(c_0_82, negated_conjecture, (m1_subset_1(esk7_0,u1_struct_0(esk3_0))), inference(rw,[status(thm)],[c_0_77, c_0_72])).
% 0.14/0.39  cnf(c_0_83, negated_conjecture, (r1_tarski(esk6_0,u1_struct_0(esk3_0))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_84, negated_conjecture, (~v2_struct_0(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_85, negated_conjecture, (r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk4_0,esk2_0,esk4_0,esk3_0,esk5_0),esk7_0)|r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0)), inference(rw,[status(thm)],[c_0_78, c_0_79])).
% 0.14/0.39  cnf(c_0_86, negated_conjecture, (~r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0)|~r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0),esk8_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_87, negated_conjecture, (r1_tmap_1(X1,esk2_0,k3_tmap_1(X2,esk2_0,esk4_0,X1,esk5_0),X3)|v2_struct_0(X1)|v2_struct_0(X2)|~r1_tmap_1(esk4_0,esk2_0,esk5_0,X3)|~m1_subset_1(X3,u1_struct_0(esk4_0))|~m1_subset_1(X3,u1_struct_0(X1))|~m1_pre_topc(X1,esk4_0)|~m1_pre_topc(esk4_0,X2)|~l1_pre_topc(X2)|~v2_pre_topc(X2)), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80, c_0_37]), c_0_38]), c_0_39]), c_0_40]), c_0_41])]), c_0_43]), c_0_44])).
% 0.14/0.39  cnf(c_0_88, negated_conjecture, (r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0)), inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81, c_0_67]), c_0_82]), c_0_51]), c_0_83])]), c_0_84]), c_0_85])).
% 0.14/0.39  cnf(c_0_89, negated_conjecture, (~r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0),esk7_0)|~r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0)), inference(rw,[status(thm)],[c_0_86, c_0_72])).
% 0.14/0.39  cnf(c_0_90, negated_conjecture, (r1_tmap_1(X1,esk2_0,k3_tmap_1(X2,esk2_0,esk4_0,X1,esk5_0),esk7_0)|v2_struct_0(X2)|v2_struct_0(X1)|~m1_subset_1(esk7_0,u1_struct_0(X1))|~m1_pre_topc(X1,esk4_0)|~m1_pre_topc(esk4_0,X2)|~l1_pre_topc(X2)|~v2_pre_topc(X2)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_87, c_0_88]), c_0_66])])).
% 0.14/0.39  cnf(c_0_91, negated_conjecture, (~r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk4_0,esk2_0,esk4_0,esk3_0,esk5_0),esk7_0)|~r1_tmap_1(esk4_0,esk2_0,esk5_0,esk7_0)), inference(rw,[status(thm)],[c_0_89, c_0_79])).
% 0.14/0.39  cnf(c_0_92, negated_conjecture, (r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(X1,esk2_0,esk4_0,esk3_0,esk5_0),esk7_0)|v2_struct_0(X1)|~m1_pre_topc(esk4_0,X1)|~l1_pre_topc(X1)|~v2_pre_topc(X1)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_90, c_0_51]), c_0_82])]), c_0_84])).
% 0.14/0.39  cnf(c_0_93, negated_conjecture, (~r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk4_0,esk2_0,esk4_0,esk3_0,esk5_0),esk7_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_91, c_0_88])])).
% 0.14/0.39  cnf(c_0_94, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_92, c_0_62]), c_0_30]), c_0_42])]), c_0_93]), c_0_44]), ['proof']).
% 0.14/0.39  # SZS output end CNFRefutation
% 0.14/0.39  # Proof object total steps             : 95
% 0.14/0.39  # Proof object clause steps            : 68
% 0.14/0.39  # Proof object formula steps           : 27
% 0.14/0.39  # Proof object conjectures             : 54
% 0.14/0.39  # Proof object clause conjectures      : 51
% 0.14/0.39  # Proof object formula conjectures     : 3
% 0.14/0.39  # Proof object initial clauses used    : 35
% 0.14/0.39  # Proof object initial formulas used   : 13
% 0.14/0.39  # Proof object generating inferences   : 21
% 0.14/0.39  # Proof object simplifying inferences  : 93
% 0.14/0.39  # Training examples: 0 positive, 0 negative
% 0.14/0.39  # Parsed axioms                        : 13
% 0.14/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.39  # Initial clauses                      : 39
% 0.14/0.39  # Removed in clause preprocessing      : 0
% 0.14/0.39  # Initial clauses in saturation        : 39
% 0.14/0.39  # Processed clauses                    : 121
% 0.14/0.39  # ...of these trivial                  : 1
% 0.14/0.39  # ...subsumed                          : 0
% 0.14/0.39  # ...remaining for further processing  : 120
% 0.14/0.39  # Other redundant clauses eliminated   : 5
% 0.14/0.39  # Clauses deleted for lack of memory   : 0
% 0.14/0.39  # Backward-subsumed                    : 0
% 0.14/0.39  # Backward-rewritten                   : 12
% 0.14/0.39  # Generated clauses                    : 55
% 0.14/0.39  # ...of the previous two non-trivial   : 51
% 0.14/0.39  # Contextual simplify-reflections      : 3
% 0.14/0.39  # Paramodulations                      : 50
% 0.14/0.39  # Factorizations                       : 0
% 0.14/0.39  # Equation resolutions                 : 5
% 0.14/0.39  # Propositional unsat checks           : 0
% 0.14/0.39  #    Propositional check models        : 0
% 0.14/0.39  #    Propositional check unsatisfiable : 0
% 0.14/0.39  #    Propositional clauses             : 0
% 0.14/0.39  #    Propositional clauses after purity: 0
% 0.14/0.39  #    Propositional unsat core size     : 0
% 0.14/0.39  #    Propositional preprocessing time  : 0.000
% 0.14/0.39  #    Propositional encoding time       : 0.000
% 0.14/0.39  #    Propositional solver time         : 0.000
% 0.14/0.39  #    Success case prop preproc time    : 0.000
% 0.14/0.39  #    Success case prop encoding time   : 0.000
% 0.14/0.39  #    Success case prop solver time     : 0.000
% 0.14/0.39  # Current number of processed clauses  : 65
% 0.14/0.39  #    Positive orientable unit clauses  : 31
% 0.14/0.39  #    Positive unorientable unit clauses: 0
% 0.14/0.39  #    Negative unit clauses             : 5
% 0.14/0.39  #    Non-unit-clauses                  : 29
% 0.14/0.39  # Current number of unprocessed clauses: 2
% 0.14/0.39  # ...number of literals in the above   : 17
% 0.14/0.39  # Current number of archived formulas  : 0
% 0.14/0.39  # Current number of archived clauses   : 50
% 0.14/0.39  # Clause-clause subsumption calls (NU) : 942
% 0.14/0.39  # Rec. Clause-clause subsumption calls : 77
% 0.14/0.39  # Non-unit clause-clause subsumptions  : 3
% 0.14/0.39  # Unit Clause-clause subsumption calls : 19
% 0.14/0.39  # Rewrite failures with RHS unbound    : 0
% 0.14/0.39  # BW rewrite match attempts            : 22
% 0.14/0.39  # BW rewrite match successes           : 6
% 0.14/0.39  # Condensation attempts                : 0
% 0.14/0.39  # Condensation successes               : 0
% 0.14/0.39  # Termbank termtop insertions          : 6872
% 0.14/0.39  
% 0.14/0.39  # -------------------------------------------------
% 0.14/0.39  # User time                : 0.023 s
% 0.14/0.39  # System time              : 0.004 s
% 0.14/0.39  # Total time               : 0.027 s
% 0.14/0.39  # Maximum resident set size: 1608 pages
%------------------------------------------------------------------------------
