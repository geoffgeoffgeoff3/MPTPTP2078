%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:17:53 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   89 ( 706 expanded)
%              Number of clauses        :   60 ( 230 expanded)
%              Number of leaves         :   14 ( 170 expanded)
%              Depth                    :   13
%              Number of atoms          :  508 (9885 expanded)
%              Number of equality atoms :   29 ( 466 expanded)
%              Maximal formula depth    :   25 (   6 average)
%              Maximal clause size      :   34 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t87_tmap_1,conjecture,(
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
                & m1_pre_topc(X3,X2) )
             => ! [X4] :
                  ( ( ~ v2_struct_0(X4)
                    & m1_pre_topc(X4,X2) )
                 => ! [X5] :
                      ( ( v1_funct_1(X5)
                        & v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X1))
                        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X1)))) )
                     => ( ( v1_tsep_1(X3,X2)
                          & m1_pre_topc(X3,X2)
                          & m1_pre_topc(X3,X4) )
                       => ! [X6] :
                            ( m1_subset_1(X6,u1_struct_0(X4))
                           => ! [X7] :
                                ( m1_subset_1(X7,u1_struct_0(X3))
                               => ( X6 = X7
                                 => ( r1_tmap_1(X4,X1,X5,X6)
                                  <=> r1_tmap_1(X3,X1,k3_tmap_1(X2,X1,X4,X3,X5),X7) ) ) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t87_tmap_1)).

fof(dt_m1_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => l1_pre_topc(X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_m1_pre_topc)).

fof(cc1_pre_topc,axiom,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => v2_pre_topc(X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_pre_topc)).

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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_tmap_1)).

fof(t7_tsep_1,axiom,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => ! [X3] :
              ( m1_pre_topc(X3,X2)
             => m1_pre_topc(X3,X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_tsep_1)).

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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_tmap_1)).

fof(t1_tsep_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X1))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_tsep_1)).

fof(d1_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( X2 = k1_zfmisc_1(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> r1_tarski(X3,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_zfmisc_1)).

fof(t2_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,X2)
     => ( v1_xboole_0(X2)
        | r2_hidden(X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_subset)).

fof(fc1_subset_1,axiom,(
    ! [X1] : ~ v1_xboole_0(k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_subset_1)).

fof(t64_tmap_1,axiom,(
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
                      ( m1_subset_1(X5,u1_struct_0(X2))
                     => ! [X6] :
                          ( m1_subset_1(X6,u1_struct_0(X4))
                         => ( ( X5 = X6
                              & r1_tmap_1(X2,X1,X3,X5) )
                           => r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X6) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t64_tmap_1)).

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

fof(t67_tmap_1,axiom,(
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
                    & v1_tsep_1(X4,X2)
                    & m1_pre_topc(X4,X2) )
                 => ! [X5] :
                      ( m1_subset_1(X5,u1_struct_0(X2))
                     => ! [X6] :
                          ( m1_subset_1(X6,u1_struct_0(X4))
                         => ( X5 = X6
                           => ( r1_tmap_1(X2,X1,X3,X5)
                            <=> r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X6) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t67_tmap_1)).

fof(t19_tsep_1,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( ( v1_tsep_1(X2,X1)
            & m1_pre_topc(X2,X1) )
         => ! [X3] :
              ( ( ~ v2_struct_0(X3)
                & m1_pre_topc(X3,X1) )
             => ( r1_tarski(u1_struct_0(X2),u1_struct_0(X3))
               => ( v1_tsep_1(X2,X3)
                  & m1_pre_topc(X2,X3) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t19_tsep_1)).

fof(c_0_14,negated_conjecture,(
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
                  & m1_pre_topc(X3,X2) )
               => ! [X4] :
                    ( ( ~ v2_struct_0(X4)
                      & m1_pre_topc(X4,X2) )
                   => ! [X5] :
                        ( ( v1_funct_1(X5)
                          & v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X1))
                          & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X1)))) )
                       => ( ( v1_tsep_1(X3,X2)
                            & m1_pre_topc(X3,X2)
                            & m1_pre_topc(X3,X4) )
                         => ! [X6] :
                              ( m1_subset_1(X6,u1_struct_0(X4))
                             => ! [X7] :
                                  ( m1_subset_1(X7,u1_struct_0(X3))
                                 => ( X6 = X7
                                   => ( r1_tmap_1(X4,X1,X5,X6)
                                    <=> r1_tmap_1(X3,X1,k3_tmap_1(X2,X1,X4,X3,X5),X7) ) ) ) ) ) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t87_tmap_1])).

fof(c_0_15,plain,(
    ! [X20,X21] :
      ( ~ l1_pre_topc(X20)
      | ~ m1_pre_topc(X21,X20)
      | l1_pre_topc(X21) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_m1_pre_topc])])])).

fof(c_0_16,negated_conjecture,
    ( ~ v2_struct_0(esk2_0)
    & v2_pre_topc(esk2_0)
    & l1_pre_topc(esk2_0)
    & ~ v2_struct_0(esk3_0)
    & v2_pre_topc(esk3_0)
    & l1_pre_topc(esk3_0)
    & ~ v2_struct_0(esk4_0)
    & m1_pre_topc(esk4_0,esk3_0)
    & ~ v2_struct_0(esk5_0)
    & m1_pre_topc(esk5_0,esk3_0)
    & v1_funct_1(esk6_0)
    & v1_funct_2(esk6_0,u1_struct_0(esk5_0),u1_struct_0(esk2_0))
    & m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk5_0),u1_struct_0(esk2_0))))
    & v1_tsep_1(esk4_0,esk3_0)
    & m1_pre_topc(esk4_0,esk3_0)
    & m1_pre_topc(esk4_0,esk5_0)
    & m1_subset_1(esk7_0,u1_struct_0(esk5_0))
    & m1_subset_1(esk8_0,u1_struct_0(esk4_0))
    & esk7_0 = esk8_0
    & ( ~ r1_tmap_1(esk5_0,esk2_0,esk6_0,esk7_0)
      | ~ r1_tmap_1(esk4_0,esk2_0,k3_tmap_1(esk3_0,esk2_0,esk5_0,esk4_0,esk6_0),esk8_0) )
    & ( r1_tmap_1(esk5_0,esk2_0,esk6_0,esk7_0)
      | r1_tmap_1(esk4_0,esk2_0,k3_tmap_1(esk3_0,esk2_0,esk5_0,esk4_0,esk6_0),esk8_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_14])])])])).

fof(c_0_17,plain,(
    ! [X18,X19] :
      ( ~ v2_pre_topc(X18)
      | ~ l1_pre_topc(X18)
      | ~ m1_pre_topc(X19,X18)
      | v2_pre_topc(X19) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_pre_topc])])])).

fof(c_0_18,plain,(
    ! [X29,X30,X31,X32,X33] :
      ( v2_struct_0(X29)
      | ~ v2_pre_topc(X29)
      | ~ l1_pre_topc(X29)
      | v2_struct_0(X30)
      | ~ v2_pre_topc(X30)
      | ~ l1_pre_topc(X30)
      | ~ m1_pre_topc(X31,X29)
      | ~ m1_pre_topc(X32,X29)
      | ~ v1_funct_1(X33)
      | ~ v1_funct_2(X33,u1_struct_0(X31),u1_struct_0(X30))
      | ~ m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X31),u1_struct_0(X30))))
      | ~ m1_pre_topc(X32,X31)
      | k3_tmap_1(X29,X30,X31,X32,X33) = k2_partfun1(u1_struct_0(X31),u1_struct_0(X30),X33,u1_struct_0(X32)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d5_tmap_1])])])])).

fof(c_0_19,plain,(
    ! [X51,X52,X53] :
      ( ~ v2_pre_topc(X51)
      | ~ l1_pre_topc(X51)
      | ~ m1_pre_topc(X52,X51)
      | ~ m1_pre_topc(X53,X52)
      | m1_pre_topc(X53,X51) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_tsep_1])])])).

fof(c_0_20,plain,(
    ! [X25,X26,X27,X28] :
      ( v2_struct_0(X25)
      | ~ v2_pre_topc(X25)
      | ~ l1_pre_topc(X25)
      | v2_struct_0(X26)
      | ~ v2_pre_topc(X26)
      | ~ l1_pre_topc(X26)
      | ~ v1_funct_1(X27)
      | ~ v1_funct_2(X27,u1_struct_0(X25),u1_struct_0(X26))
      | ~ m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X25),u1_struct_0(X26))))
      | ~ m1_pre_topc(X28,X25)
      | k2_tmap_1(X25,X26,X27,X28) = k2_partfun1(u1_struct_0(X25),u1_struct_0(X26),X27,u1_struct_0(X28)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d4_tmap_1])])])])).

cnf(c_0_21,plain,
    ( l1_pre_topc(X2)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_22,negated_conjecture,
    ( m1_pre_topc(esk5_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_23,negated_conjecture,
    ( l1_pre_topc(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_24,plain,
    ( v2_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_25,negated_conjecture,
    ( v2_pre_topc(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_26,plain,
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
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_27,plain,
    ( m1_pre_topc(X3,X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_pre_topc(X3,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_28,plain,
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
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_29,negated_conjecture,
    ( v1_funct_2(esk6_0,u1_struct_0(esk5_0),u1_struct_0(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_30,negated_conjecture,
    ( v1_funct_1(esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_31,negated_conjecture,
    ( l1_pre_topc(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_32,negated_conjecture,
    ( l1_pre_topc(esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21,c_0_22]),c_0_23])])).

cnf(c_0_33,negated_conjecture,
    ( v2_pre_topc(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_34,negated_conjecture,
    ( v2_pre_topc(esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_22]),c_0_23]),c_0_25])])).

cnf(c_0_35,negated_conjecture,
    ( m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk5_0),u1_struct_0(esk2_0)))) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_36,negated_conjecture,
    ( ~ v2_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_37,negated_conjecture,
    ( ~ v2_struct_0(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_38,plain,(
    ! [X37,X38] :
      ( ~ l1_pre_topc(X37)
      | ~ m1_pre_topc(X38,X37)
      | m1_subset_1(u1_struct_0(X38),k1_zfmisc_1(u1_struct_0(X37))) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_tsep_1])])])).

cnf(c_0_39,plain,
    ( k3_tmap_1(X1,X2,X3,X4,X5) = k2_partfun1(u1_struct_0(X3),u1_struct_0(X2),X5,u1_struct_0(X4))
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X2))
    | ~ v1_funct_1(X5)
    | ~ m1_pre_topc(X4,X3)
    | ~ m1_pre_topc(X3,X1)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2)))) ),
    inference(csr,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_40,negated_conjecture,
    ( k2_partfun1(u1_struct_0(esk5_0),u1_struct_0(esk2_0),esk6_0,u1_struct_0(X1)) = k2_tmap_1(esk5_0,esk2_0,esk6_0,X1)
    | ~ m1_pre_topc(X1,esk5_0) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_29]),c_0_30]),c_0_31]),c_0_32]),c_0_33]),c_0_34]),c_0_35])]),c_0_36]),c_0_37])).

cnf(c_0_41,negated_conjecture,
    ( m1_pre_topc(esk4_0,esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_42,plain,(
    ! [X8,X9,X10,X11,X12,X13] :
      ( ( ~ r2_hidden(X10,X9)
        | r1_tarski(X10,X8)
        | X9 != k1_zfmisc_1(X8) )
      & ( ~ r1_tarski(X11,X8)
        | r2_hidden(X11,X9)
        | X9 != k1_zfmisc_1(X8) )
      & ( ~ r2_hidden(esk1_2(X12,X13),X13)
        | ~ r1_tarski(esk1_2(X12,X13),X12)
        | X13 = k1_zfmisc_1(X12) )
      & ( r2_hidden(esk1_2(X12,X13),X13)
        | r1_tarski(esk1_2(X12,X13),X12)
        | X13 = k1_zfmisc_1(X12) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_zfmisc_1])])])])])])).

fof(c_0_43,plain,(
    ! [X16,X17] :
      ( ~ m1_subset_1(X16,X17)
      | v1_xboole_0(X17)
      | r2_hidden(X16,X17) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).

cnf(c_0_44,plain,
    ( m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

fof(c_0_45,plain,(
    ! [X15] : ~ v1_xboole_0(k1_zfmisc_1(X15)) ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[fc1_subset_1])])).

fof(c_0_46,plain,(
    ! [X39,X40,X41,X42,X43,X44] :
      ( v2_struct_0(X39)
      | ~ v2_pre_topc(X39)
      | ~ l1_pre_topc(X39)
      | v2_struct_0(X40)
      | ~ v2_pre_topc(X40)
      | ~ l1_pre_topc(X40)
      | ~ v1_funct_1(X41)
      | ~ v1_funct_2(X41,u1_struct_0(X40),u1_struct_0(X39))
      | ~ m1_subset_1(X41,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X40),u1_struct_0(X39))))
      | v2_struct_0(X42)
      | ~ m1_pre_topc(X42,X40)
      | ~ m1_subset_1(X43,u1_struct_0(X40))
      | ~ m1_subset_1(X44,u1_struct_0(X42))
      | X43 != X44
      | ~ r1_tmap_1(X40,X39,X41,X43)
      | r1_tmap_1(X42,X39,k2_tmap_1(X40,X39,X41,X42),X44) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t64_tmap_1])])])])).

fof(c_0_47,plain,(
    ! [X22,X23,X24] :
      ( v2_struct_0(X22)
      | ~ l1_pre_topc(X22)
      | v2_struct_0(X23)
      | ~ m1_pre_topc(X23,X22)
      | ~ m1_subset_1(X24,u1_struct_0(X23))
      | m1_subset_1(X24,u1_struct_0(X22)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t55_pre_topc])])])])).

cnf(c_0_48,negated_conjecture,
    ( k3_tmap_1(X1,esk2_0,esk5_0,X2,esk6_0) = k2_partfun1(u1_struct_0(esk5_0),u1_struct_0(esk2_0),esk6_0,u1_struct_0(X2))
    | v2_struct_0(X1)
    | ~ m1_pre_topc(X2,esk5_0)
    | ~ m1_pre_topc(esk5_0,X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_29]),c_0_30]),c_0_31]),c_0_33]),c_0_35])]),c_0_36])).

cnf(c_0_49,negated_conjecture,
    ( k2_partfun1(u1_struct_0(esk5_0),u1_struct_0(esk2_0),esk6_0,u1_struct_0(esk4_0)) = k2_tmap_1(esk5_0,esk2_0,esk6_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_40,c_0_41])).

cnf(c_0_50,plain,
    ( r1_tarski(X1,X3)
    | ~ r2_hidden(X1,X2)
    | X2 != k1_zfmisc_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_51,plain,
    ( v1_xboole_0(X2)
    | r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_52,negated_conjecture,
    ( m1_subset_1(u1_struct_0(esk4_0),k1_zfmisc_1(u1_struct_0(esk5_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_41]),c_0_32])])).

cnf(c_0_53,plain,
    ( ~ v1_xboole_0(k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

cnf(c_0_54,plain,
    ( v2_struct_0(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X4)
    | r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X6)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X2)
    | ~ v1_funct_1(X3)
    | ~ v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
    | ~ m1_pre_topc(X4,X2)
    | ~ m1_subset_1(X5,u1_struct_0(X2))
    | ~ m1_subset_1(X6,u1_struct_0(X4))
    | X5 != X6
    | ~ r1_tmap_1(X2,X1,X3,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_46])).

cnf(c_0_55,plain,
    ( v2_struct_0(X1)
    | v2_struct_0(X2)
    | m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_subset_1(X3,u1_struct_0(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_56,negated_conjecture,
    ( r1_tmap_1(esk5_0,esk2_0,esk6_0,esk7_0)
    | r1_tmap_1(esk4_0,esk2_0,k3_tmap_1(esk3_0,esk2_0,esk5_0,esk4_0,esk6_0),esk8_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_57,negated_conjecture,
    ( esk7_0 = esk8_0 ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_58,negated_conjecture,
    ( k3_tmap_1(X1,esk2_0,esk5_0,esk4_0,esk6_0) = k2_tmap_1(esk5_0,esk2_0,esk6_0,esk4_0)
    | v2_struct_0(X1)
    | ~ m1_pre_topc(esk5_0,X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_41]),c_0_49])).

cnf(c_0_59,negated_conjecture,
    ( ~ v2_struct_0(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_60,plain,(
    ! [X45,X46,X47,X48,X49,X50] :
      ( ( ~ r1_tmap_1(X46,X45,X47,X49)
        | r1_tmap_1(X48,X45,k2_tmap_1(X46,X45,X47,X48),X50)
        | X49 != X50
        | ~ m1_subset_1(X50,u1_struct_0(X48))
        | ~ m1_subset_1(X49,u1_struct_0(X46))
        | v2_struct_0(X48)
        | ~ v1_tsep_1(X48,X46)
        | ~ m1_pre_topc(X48,X46)
        | ~ v1_funct_1(X47)
        | ~ v1_funct_2(X47,u1_struct_0(X46),u1_struct_0(X45))
        | ~ m1_subset_1(X47,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X46),u1_struct_0(X45))))
        | v2_struct_0(X46)
        | ~ v2_pre_topc(X46)
        | ~ l1_pre_topc(X46)
        | v2_struct_0(X45)
        | ~ v2_pre_topc(X45)
        | ~ l1_pre_topc(X45) )
      & ( ~ r1_tmap_1(X48,X45,k2_tmap_1(X46,X45,X47,X48),X50)
        | r1_tmap_1(X46,X45,X47,X49)
        | X49 != X50
        | ~ m1_subset_1(X50,u1_struct_0(X48))
        | ~ m1_subset_1(X49,u1_struct_0(X46))
        | v2_struct_0(X48)
        | ~ v1_tsep_1(X48,X46)
        | ~ m1_pre_topc(X48,X46)
        | ~ v1_funct_1(X47)
        | ~ v1_funct_2(X47,u1_struct_0(X46),u1_struct_0(X45))
        | ~ m1_subset_1(X47,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X46),u1_struct_0(X45))))
        | v2_struct_0(X46)
        | ~ v2_pre_topc(X46)
        | ~ l1_pre_topc(X46)
        | v2_struct_0(X45)
        | ~ v2_pre_topc(X45)
        | ~ l1_pre_topc(X45) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t67_tmap_1])])])])])).

fof(c_0_61,plain,(
    ! [X34,X35,X36] :
      ( ( v1_tsep_1(X35,X36)
        | ~ r1_tarski(u1_struct_0(X35),u1_struct_0(X36))
        | v2_struct_0(X36)
        | ~ m1_pre_topc(X36,X34)
        | ~ v1_tsep_1(X35,X34)
        | ~ m1_pre_topc(X35,X34)
        | v2_struct_0(X34)
        | ~ v2_pre_topc(X34)
        | ~ l1_pre_topc(X34) )
      & ( m1_pre_topc(X35,X36)
        | ~ r1_tarski(u1_struct_0(X35),u1_struct_0(X36))
        | v2_struct_0(X36)
        | ~ m1_pre_topc(X36,X34)
        | ~ v1_tsep_1(X35,X34)
        | ~ m1_pre_topc(X35,X34)
        | v2_struct_0(X34)
        | ~ v2_pre_topc(X34)
        | ~ l1_pre_topc(X34) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t19_tsep_1])])])])])).

cnf(c_0_62,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(X1,k1_zfmisc_1(X2)) ),
    inference(er,[status(thm)],[c_0_50])).

cnf(c_0_63,negated_conjecture,
    ( r2_hidden(u1_struct_0(esk4_0),k1_zfmisc_1(u1_struct_0(esk5_0))) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_52]),c_0_53])).

cnf(c_0_64,plain,
    ( r1_tmap_1(X1,X2,k2_tmap_1(X3,X2,X4,X1),X5)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | v2_struct_0(X2)
    | ~ r1_tmap_1(X3,X2,X4,X5)
    | ~ v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X2))
    | ~ v1_funct_1(X4)
    | ~ m1_pre_topc(X1,X3)
    | ~ l1_pre_topc(X3)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X3)
    | ~ v2_pre_topc(X2)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))
    | ~ m1_subset_1(X5,u1_struct_0(X1)) ),
    inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_54]),c_0_55])).

cnf(c_0_65,negated_conjecture,
    ( r1_tmap_1(esk4_0,esk2_0,k3_tmap_1(esk3_0,esk2_0,esk5_0,esk4_0,esk6_0),esk7_0)
    | r1_tmap_1(esk5_0,esk2_0,esk6_0,esk7_0) ),
    inference(rw,[status(thm)],[c_0_56,c_0_57])).

cnf(c_0_66,negated_conjecture,
    ( k3_tmap_1(esk3_0,esk2_0,esk5_0,esk4_0,esk6_0) = k2_tmap_1(esk5_0,esk2_0,esk6_0,esk4_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_22]),c_0_23]),c_0_25])]),c_0_59])).

cnf(c_0_67,plain,
    ( r1_tmap_1(X3,X2,X4,X6)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | v2_struct_0(X2)
    | ~ r1_tmap_1(X1,X2,k2_tmap_1(X3,X2,X4,X1),X5)
    | X6 != X5
    | ~ m1_subset_1(X5,u1_struct_0(X1))
    | ~ m1_subset_1(X6,u1_struct_0(X3))
    | ~ v1_tsep_1(X1,X3)
    | ~ m1_pre_topc(X1,X3)
    | ~ v1_funct_1(X4)
    | ~ v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X2))
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))
    | ~ v2_pre_topc(X3)
    | ~ l1_pre_topc(X3)
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_60])).

cnf(c_0_68,plain,
    ( v1_tsep_1(X1,X2)
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | ~ r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_pre_topc(X2,X3)
    | ~ v1_tsep_1(X1,X3)
    | ~ m1_pre_topc(X1,X3)
    | ~ v2_pre_topc(X3)
    | ~ l1_pre_topc(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_61])).

cnf(c_0_69,negated_conjecture,
    ( r1_tarski(u1_struct_0(esk4_0),u1_struct_0(esk5_0)) ),
    inference(spm,[status(thm)],[c_0_62,c_0_63])).

cnf(c_0_70,negated_conjecture,
    ( m1_pre_topc(esk4_0,X1)
    | ~ m1_pre_topc(esk5_0,X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(spm,[status(thm)],[c_0_27,c_0_41])).

cnf(c_0_71,negated_conjecture,
    ( ~ r1_tmap_1(esk5_0,esk2_0,esk6_0,esk7_0)
    | ~ r1_tmap_1(esk4_0,esk2_0,k3_tmap_1(esk3_0,esk2_0,esk5_0,esk4_0,esk6_0),esk8_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_72,negated_conjecture,
    ( r1_tmap_1(X1,esk2_0,k2_tmap_1(esk5_0,esk2_0,esk6_0,X1),X2)
    | v2_struct_0(X1)
    | ~ r1_tmap_1(esk5_0,esk2_0,esk6_0,X2)
    | ~ m1_pre_topc(X1,esk5_0)
    | ~ m1_subset_1(X2,u1_struct_0(X1)) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_64,c_0_29]),c_0_30]),c_0_32]),c_0_31]),c_0_34]),c_0_33]),c_0_35])]),c_0_36]),c_0_37])).

cnf(c_0_73,negated_conjecture,
    ( r1_tmap_1(esk4_0,esk2_0,k2_tmap_1(esk5_0,esk2_0,esk6_0,esk4_0),esk7_0)
    | r1_tmap_1(esk5_0,esk2_0,esk6_0,esk7_0) ),
    inference(rw,[status(thm)],[c_0_65,c_0_66])).

cnf(c_0_74,negated_conjecture,
    ( m1_subset_1(esk8_0,u1_struct_0(esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_75,plain,
    ( r1_tmap_1(X1,X2,X3,X4)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X5)
    | ~ r1_tmap_1(X5,X2,k2_tmap_1(X1,X2,X3,X5),X4)
    | ~ v1_tsep_1(X5,X1)
    | ~ v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))
    | ~ v1_funct_1(X3)
    | ~ m1_pre_topc(X5,X1)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ m1_subset_1(X4,u1_struct_0(X5)) ),
    inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_67]),c_0_55])).

cnf(c_0_76,negated_conjecture,
    ( v1_tsep_1(esk4_0,esk5_0)
    | v2_struct_0(X1)
    | ~ v1_tsep_1(esk4_0,X1)
    | ~ m1_pre_topc(esk5_0,X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_68,c_0_69]),c_0_37]),c_0_70])).

cnf(c_0_77,negated_conjecture,
    ( v1_tsep_1(esk4_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_78,negated_conjecture,
    ( ~ r1_tmap_1(esk4_0,esk2_0,k3_tmap_1(esk3_0,esk2_0,esk5_0,esk4_0,esk6_0),esk7_0)
    | ~ r1_tmap_1(esk5_0,esk2_0,esk6_0,esk7_0) ),
    inference(rw,[status(thm)],[c_0_71,c_0_57])).

cnf(c_0_79,negated_conjecture,
    ( r1_tmap_1(esk4_0,esk2_0,k2_tmap_1(esk5_0,esk2_0,esk6_0,esk4_0),esk7_0)
    | r1_tmap_1(X1,esk2_0,k2_tmap_1(esk5_0,esk2_0,esk6_0,X1),esk7_0)
    | v2_struct_0(X1)
    | ~ m1_pre_topc(X1,esk5_0)
    | ~ m1_subset_1(esk7_0,u1_struct_0(X1)) ),
    inference(spm,[status(thm)],[c_0_72,c_0_73])).

cnf(c_0_80,negated_conjecture,
    ( m1_subset_1(esk7_0,u1_struct_0(esk4_0)) ),
    inference(rw,[status(thm)],[c_0_74,c_0_57])).

cnf(c_0_81,negated_conjecture,
    ( ~ v2_struct_0(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_82,negated_conjecture,
    ( r1_tmap_1(esk5_0,esk2_0,esk6_0,X1)
    | v2_struct_0(X2)
    | ~ r1_tmap_1(X2,esk2_0,k2_tmap_1(esk5_0,esk2_0,esk6_0,X2),X1)
    | ~ v1_tsep_1(X2,esk5_0)
    | ~ m1_pre_topc(X2,esk5_0)
    | ~ m1_subset_1(X1,u1_struct_0(X2)) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75,c_0_29]),c_0_30]),c_0_32]),c_0_31]),c_0_34]),c_0_33]),c_0_35])]),c_0_36]),c_0_37])).

cnf(c_0_83,negated_conjecture,
    ( v1_tsep_1(esk4_0,esk5_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76,c_0_77]),c_0_22]),c_0_23]),c_0_25])]),c_0_59])).

cnf(c_0_84,negated_conjecture,
    ( ~ r1_tmap_1(esk4_0,esk2_0,k2_tmap_1(esk5_0,esk2_0,esk6_0,esk4_0),esk7_0)
    | ~ r1_tmap_1(esk5_0,esk2_0,esk6_0,esk7_0) ),
    inference(rw,[status(thm)],[c_0_78,c_0_66])).

cnf(c_0_85,negated_conjecture,
    ( r1_tmap_1(esk4_0,esk2_0,k2_tmap_1(esk5_0,esk2_0,esk6_0,esk4_0),esk7_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79,c_0_80]),c_0_41])]),c_0_81])).

cnf(c_0_86,negated_conjecture,
    ( r1_tmap_1(esk5_0,esk2_0,esk6_0,X1)
    | ~ r1_tmap_1(esk4_0,esk2_0,k2_tmap_1(esk5_0,esk2_0,esk6_0,esk4_0),X1)
    | ~ m1_subset_1(X1,u1_struct_0(esk4_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_82,c_0_83]),c_0_41])]),c_0_81])).

cnf(c_0_87,negated_conjecture,
    ( ~ r1_tmap_1(esk5_0,esk2_0,esk6_0,esk7_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_84,c_0_85])])).

cnf(c_0_88,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_86,c_0_85]),c_0_80])]),c_0_87]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 20:11:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.19/0.41  # AutoSched0-Mode selected heuristic G_E___208_B07_F1_SE_CS_SP_PS_S4d
% 0.19/0.41  # and selection function SelectCQIPrecWNTNp.
% 0.19/0.41  #
% 0.19/0.41  # Preprocessing time       : 0.047 s
% 0.19/0.41  # Presaturation interreduction done
% 0.19/0.41  
% 0.19/0.41  # Proof found!
% 0.19/0.41  # SZS status Theorem
% 0.19/0.41  # SZS output start CNFRefutation
% 0.19/0.41  fof(t87_tmap_1, conjecture, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X2))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X2))=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X1)))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X1)))))=>(((v1_tsep_1(X3,X2)&m1_pre_topc(X3,X2))&m1_pre_topc(X3,X4))=>![X6]:(m1_subset_1(X6,u1_struct_0(X4))=>![X7]:(m1_subset_1(X7,u1_struct_0(X3))=>(X6=X7=>(r1_tmap_1(X4,X1,X5,X6)<=>r1_tmap_1(X3,X1,k3_tmap_1(X2,X1,X4,X3,X5),X7))))))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t87_tmap_1)).
% 0.19/0.41  fof(dt_m1_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_pre_topc(X2,X1)=>l1_pre_topc(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_m1_pre_topc)).
% 0.19/0.41  fof(cc1_pre_topc, axiom, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_pre_topc(X2,X1)=>v2_pre_topc(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_pre_topc)).
% 0.19/0.41  fof(d5_tmap_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:(m1_pre_topc(X3,X1)=>![X4]:(m1_pre_topc(X4,X1)=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X2)))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2)))))=>(m1_pre_topc(X4,X3)=>k3_tmap_1(X1,X2,X3,X4,X5)=k2_partfun1(u1_struct_0(X3),u1_struct_0(X2),X5,u1_struct_0(X4)))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d5_tmap_1)).
% 0.19/0.41  fof(t7_tsep_1, axiom, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_pre_topc(X2,X1)=>![X3]:(m1_pre_topc(X3,X2)=>m1_pre_topc(X3,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_tsep_1)).
% 0.19/0.41  fof(d4_tmap_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))))=>![X4]:(m1_pre_topc(X4,X1)=>k2_tmap_1(X1,X2,X3,X4)=k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X3,u1_struct_0(X4)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_tmap_1)).
% 0.19/0.41  fof(t1_tsep_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_pre_topc(X2,X1)=>m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t1_tsep_1)).
% 0.19/0.41  fof(d1_zfmisc_1, axiom, ![X1, X2]:(X2=k1_zfmisc_1(X1)<=>![X3]:(r2_hidden(X3,X2)<=>r1_tarski(X3,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_zfmisc_1)).
% 0.19/0.41  fof(t2_subset, axiom, ![X1, X2]:(m1_subset_1(X1,X2)=>(v1_xboole_0(X2)|r2_hidden(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_subset)).
% 0.19/0.41  fof(fc1_subset_1, axiom, ![X1]:~(v1_xboole_0(k1_zfmisc_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc1_subset_1)).
% 0.19/0.41  fof(t64_tmap_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X2))=>![X5]:(m1_subset_1(X5,u1_struct_0(X2))=>![X6]:(m1_subset_1(X6,u1_struct_0(X4))=>((X5=X6&r1_tmap_1(X2,X1,X3,X5))=>r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X6)))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t64_tmap_1)).
% 0.19/0.41  fof(t55_pre_topc, axiom, ![X1]:((~(v2_struct_0(X1))&l1_pre_topc(X1))=>![X2]:((~(v2_struct_0(X2))&m1_pre_topc(X2,X1))=>![X3]:(m1_subset_1(X3,u1_struct_0(X2))=>m1_subset_1(X3,u1_struct_0(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t55_pre_topc)).
% 0.19/0.41  fof(t67_tmap_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))))=>![X4]:(((~(v2_struct_0(X4))&v1_tsep_1(X4,X2))&m1_pre_topc(X4,X2))=>![X5]:(m1_subset_1(X5,u1_struct_0(X2))=>![X6]:(m1_subset_1(X6,u1_struct_0(X4))=>(X5=X6=>(r1_tmap_1(X2,X1,X3,X5)<=>r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X6))))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t67_tmap_1)).
% 0.19/0.41  fof(t19_tsep_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:((v1_tsep_1(X2,X1)&m1_pre_topc(X2,X1))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X1))=>(r1_tarski(u1_struct_0(X2),u1_struct_0(X3))=>(v1_tsep_1(X2,X3)&m1_pre_topc(X2,X3)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t19_tsep_1)).
% 0.19/0.41  fof(c_0_14, negated_conjecture, ~(![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X2))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X2))=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X1)))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X1)))))=>(((v1_tsep_1(X3,X2)&m1_pre_topc(X3,X2))&m1_pre_topc(X3,X4))=>![X6]:(m1_subset_1(X6,u1_struct_0(X4))=>![X7]:(m1_subset_1(X7,u1_struct_0(X3))=>(X6=X7=>(r1_tmap_1(X4,X1,X5,X6)<=>r1_tmap_1(X3,X1,k3_tmap_1(X2,X1,X4,X3,X5),X7)))))))))))), inference(assume_negation,[status(cth)],[t87_tmap_1])).
% 0.19/0.41  fof(c_0_15, plain, ![X20, X21]:(~l1_pre_topc(X20)|(~m1_pre_topc(X21,X20)|l1_pre_topc(X21))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_m1_pre_topc])])])).
% 0.19/0.41  fof(c_0_16, negated_conjecture, (((~v2_struct_0(esk2_0)&v2_pre_topc(esk2_0))&l1_pre_topc(esk2_0))&(((~v2_struct_0(esk3_0)&v2_pre_topc(esk3_0))&l1_pre_topc(esk3_0))&((~v2_struct_0(esk4_0)&m1_pre_topc(esk4_0,esk3_0))&((~v2_struct_0(esk5_0)&m1_pre_topc(esk5_0,esk3_0))&(((v1_funct_1(esk6_0)&v1_funct_2(esk6_0,u1_struct_0(esk5_0),u1_struct_0(esk2_0)))&m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk5_0),u1_struct_0(esk2_0)))))&(((v1_tsep_1(esk4_0,esk3_0)&m1_pre_topc(esk4_0,esk3_0))&m1_pre_topc(esk4_0,esk5_0))&(m1_subset_1(esk7_0,u1_struct_0(esk5_0))&(m1_subset_1(esk8_0,u1_struct_0(esk4_0))&(esk7_0=esk8_0&((~r1_tmap_1(esk5_0,esk2_0,esk6_0,esk7_0)|~r1_tmap_1(esk4_0,esk2_0,k3_tmap_1(esk3_0,esk2_0,esk5_0,esk4_0,esk6_0),esk8_0))&(r1_tmap_1(esk5_0,esk2_0,esk6_0,esk7_0)|r1_tmap_1(esk4_0,esk2_0,k3_tmap_1(esk3_0,esk2_0,esk5_0,esk4_0,esk6_0),esk8_0)))))))))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_14])])])])).
% 0.19/0.41  fof(c_0_17, plain, ![X18, X19]:(~v2_pre_topc(X18)|~l1_pre_topc(X18)|(~m1_pre_topc(X19,X18)|v2_pre_topc(X19))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_pre_topc])])])).
% 0.19/0.41  fof(c_0_18, plain, ![X29, X30, X31, X32, X33]:(v2_struct_0(X29)|~v2_pre_topc(X29)|~l1_pre_topc(X29)|(v2_struct_0(X30)|~v2_pre_topc(X30)|~l1_pre_topc(X30)|(~m1_pre_topc(X31,X29)|(~m1_pre_topc(X32,X29)|(~v1_funct_1(X33)|~v1_funct_2(X33,u1_struct_0(X31),u1_struct_0(X30))|~m1_subset_1(X33,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X31),u1_struct_0(X30))))|(~m1_pre_topc(X32,X31)|k3_tmap_1(X29,X30,X31,X32,X33)=k2_partfun1(u1_struct_0(X31),u1_struct_0(X30),X33,u1_struct_0(X32)))))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d5_tmap_1])])])])).
% 0.19/0.41  fof(c_0_19, plain, ![X51, X52, X53]:(~v2_pre_topc(X51)|~l1_pre_topc(X51)|(~m1_pre_topc(X52,X51)|(~m1_pre_topc(X53,X52)|m1_pre_topc(X53,X51)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_tsep_1])])])).
% 0.19/0.41  fof(c_0_20, plain, ![X25, X26, X27, X28]:(v2_struct_0(X25)|~v2_pre_topc(X25)|~l1_pre_topc(X25)|(v2_struct_0(X26)|~v2_pre_topc(X26)|~l1_pre_topc(X26)|(~v1_funct_1(X27)|~v1_funct_2(X27,u1_struct_0(X25),u1_struct_0(X26))|~m1_subset_1(X27,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X25),u1_struct_0(X26))))|(~m1_pre_topc(X28,X25)|k2_tmap_1(X25,X26,X27,X28)=k2_partfun1(u1_struct_0(X25),u1_struct_0(X26),X27,u1_struct_0(X28)))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d4_tmap_1])])])])).
% 0.19/0.41  cnf(c_0_21, plain, (l1_pre_topc(X2)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.41  cnf(c_0_22, negated_conjecture, (m1_pre_topc(esk5_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.41  cnf(c_0_23, negated_conjecture, (l1_pre_topc(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.41  cnf(c_0_24, plain, (v2_pre_topc(X2)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.19/0.41  cnf(c_0_25, negated_conjecture, (v2_pre_topc(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.41  cnf(c_0_26, plain, (v2_struct_0(X1)|v2_struct_0(X2)|k3_tmap_1(X1,X2,X3,X4,X5)=k2_partfun1(u1_struct_0(X3),u1_struct_0(X2),X5,u1_struct_0(X4))|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~v2_pre_topc(X2)|~l1_pre_topc(X2)|~m1_pre_topc(X3,X1)|~m1_pre_topc(X4,X1)|~v1_funct_1(X5)|~v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X2))|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))|~m1_pre_topc(X4,X3)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.41  cnf(c_0_27, plain, (m1_pre_topc(X3,X1)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)|~m1_pre_topc(X3,X2)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.19/0.41  cnf(c_0_28, plain, (v2_struct_0(X1)|v2_struct_0(X2)|k2_tmap_1(X1,X2,X3,X4)=k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X3,u1_struct_0(X4))|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~v2_pre_topc(X2)|~l1_pre_topc(X2)|~v1_funct_1(X3)|~v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))|~m1_pre_topc(X4,X1)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.41  cnf(c_0_29, negated_conjecture, (v1_funct_2(esk6_0,u1_struct_0(esk5_0),u1_struct_0(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.41  cnf(c_0_30, negated_conjecture, (v1_funct_1(esk6_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.41  cnf(c_0_31, negated_conjecture, (l1_pre_topc(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.41  cnf(c_0_32, negated_conjecture, (l1_pre_topc(esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21, c_0_22]), c_0_23])])).
% 0.19/0.41  cnf(c_0_33, negated_conjecture, (v2_pre_topc(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.41  cnf(c_0_34, negated_conjecture, (v2_pre_topc(esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_22]), c_0_23]), c_0_25])])).
% 0.19/0.41  cnf(c_0_35, negated_conjecture, (m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk5_0),u1_struct_0(esk2_0))))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.41  cnf(c_0_36, negated_conjecture, (~v2_struct_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.41  cnf(c_0_37, negated_conjecture, (~v2_struct_0(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.41  fof(c_0_38, plain, ![X37, X38]:(~l1_pre_topc(X37)|(~m1_pre_topc(X38,X37)|m1_subset_1(u1_struct_0(X38),k1_zfmisc_1(u1_struct_0(X37))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_tsep_1])])])).
% 0.19/0.41  cnf(c_0_39, plain, (k3_tmap_1(X1,X2,X3,X4,X5)=k2_partfun1(u1_struct_0(X3),u1_struct_0(X2),X5,u1_struct_0(X4))|v2_struct_0(X1)|v2_struct_0(X2)|~v1_funct_2(X5,u1_struct_0(X3),u1_struct_0(X2))|~v1_funct_1(X5)|~m1_pre_topc(X4,X3)|~m1_pre_topc(X3,X1)|~l1_pre_topc(X2)|~l1_pre_topc(X1)|~v2_pre_topc(X2)|~v2_pre_topc(X1)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))), inference(csr,[status(thm)],[c_0_26, c_0_27])).
% 0.19/0.41  cnf(c_0_40, negated_conjecture, (k2_partfun1(u1_struct_0(esk5_0),u1_struct_0(esk2_0),esk6_0,u1_struct_0(X1))=k2_tmap_1(esk5_0,esk2_0,esk6_0,X1)|~m1_pre_topc(X1,esk5_0)), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_29]), c_0_30]), c_0_31]), c_0_32]), c_0_33]), c_0_34]), c_0_35])]), c_0_36]), c_0_37])).
% 0.19/0.41  cnf(c_0_41, negated_conjecture, (m1_pre_topc(esk4_0,esk5_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.41  fof(c_0_42, plain, ![X8, X9, X10, X11, X12, X13]:(((~r2_hidden(X10,X9)|r1_tarski(X10,X8)|X9!=k1_zfmisc_1(X8))&(~r1_tarski(X11,X8)|r2_hidden(X11,X9)|X9!=k1_zfmisc_1(X8)))&((~r2_hidden(esk1_2(X12,X13),X13)|~r1_tarski(esk1_2(X12,X13),X12)|X13=k1_zfmisc_1(X12))&(r2_hidden(esk1_2(X12,X13),X13)|r1_tarski(esk1_2(X12,X13),X12)|X13=k1_zfmisc_1(X12)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_zfmisc_1])])])])])])).
% 0.19/0.41  fof(c_0_43, plain, ![X16, X17]:(~m1_subset_1(X16,X17)|(v1_xboole_0(X17)|r2_hidden(X16,X17))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).
% 0.19/0.41  cnf(c_0_44, plain, (m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X1)))|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.19/0.41  fof(c_0_45, plain, ![X15]:~v1_xboole_0(k1_zfmisc_1(X15)), inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[fc1_subset_1])])).
% 0.19/0.41  fof(c_0_46, plain, ![X39, X40, X41, X42, X43, X44]:(v2_struct_0(X39)|~v2_pre_topc(X39)|~l1_pre_topc(X39)|(v2_struct_0(X40)|~v2_pre_topc(X40)|~l1_pre_topc(X40)|(~v1_funct_1(X41)|~v1_funct_2(X41,u1_struct_0(X40),u1_struct_0(X39))|~m1_subset_1(X41,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X40),u1_struct_0(X39))))|(v2_struct_0(X42)|~m1_pre_topc(X42,X40)|(~m1_subset_1(X43,u1_struct_0(X40))|(~m1_subset_1(X44,u1_struct_0(X42))|(X43!=X44|~r1_tmap_1(X40,X39,X41,X43)|r1_tmap_1(X42,X39,k2_tmap_1(X40,X39,X41,X42),X44)))))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t64_tmap_1])])])])).
% 0.19/0.41  fof(c_0_47, plain, ![X22, X23, X24]:(v2_struct_0(X22)|~l1_pre_topc(X22)|(v2_struct_0(X23)|~m1_pre_topc(X23,X22)|(~m1_subset_1(X24,u1_struct_0(X23))|m1_subset_1(X24,u1_struct_0(X22))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t55_pre_topc])])])])).
% 0.19/0.41  cnf(c_0_48, negated_conjecture, (k3_tmap_1(X1,esk2_0,esk5_0,X2,esk6_0)=k2_partfun1(u1_struct_0(esk5_0),u1_struct_0(esk2_0),esk6_0,u1_struct_0(X2))|v2_struct_0(X1)|~m1_pre_topc(X2,esk5_0)|~m1_pre_topc(esk5_0,X1)|~l1_pre_topc(X1)|~v2_pre_topc(X1)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_29]), c_0_30]), c_0_31]), c_0_33]), c_0_35])]), c_0_36])).
% 0.19/0.41  cnf(c_0_49, negated_conjecture, (k2_partfun1(u1_struct_0(esk5_0),u1_struct_0(esk2_0),esk6_0,u1_struct_0(esk4_0))=k2_tmap_1(esk5_0,esk2_0,esk6_0,esk4_0)), inference(spm,[status(thm)],[c_0_40, c_0_41])).
% 0.19/0.41  cnf(c_0_50, plain, (r1_tarski(X1,X3)|~r2_hidden(X1,X2)|X2!=k1_zfmisc_1(X3)), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.19/0.41  cnf(c_0_51, plain, (v1_xboole_0(X2)|r2_hidden(X1,X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.19/0.41  cnf(c_0_52, negated_conjecture, (m1_subset_1(u1_struct_0(esk4_0),k1_zfmisc_1(u1_struct_0(esk5_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_41]), c_0_32])])).
% 0.19/0.41  cnf(c_0_53, plain, (~v1_xboole_0(k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_45])).
% 0.19/0.41  cnf(c_0_54, plain, (v2_struct_0(X1)|v2_struct_0(X2)|v2_struct_0(X4)|r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X6)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~v2_pre_topc(X2)|~l1_pre_topc(X2)|~v1_funct_1(X3)|~v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1))|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))|~m1_pre_topc(X4,X2)|~m1_subset_1(X5,u1_struct_0(X2))|~m1_subset_1(X6,u1_struct_0(X4))|X5!=X6|~r1_tmap_1(X2,X1,X3,X5)), inference(split_conjunct,[status(thm)],[c_0_46])).
% 0.19/0.41  cnf(c_0_55, plain, (v2_struct_0(X1)|v2_struct_0(X2)|m1_subset_1(X3,u1_struct_0(X1))|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)|~m1_subset_1(X3,u1_struct_0(X2))), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.19/0.41  cnf(c_0_56, negated_conjecture, (r1_tmap_1(esk5_0,esk2_0,esk6_0,esk7_0)|r1_tmap_1(esk4_0,esk2_0,k3_tmap_1(esk3_0,esk2_0,esk5_0,esk4_0,esk6_0),esk8_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.41  cnf(c_0_57, negated_conjecture, (esk7_0=esk8_0), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.41  cnf(c_0_58, negated_conjecture, (k3_tmap_1(X1,esk2_0,esk5_0,esk4_0,esk6_0)=k2_tmap_1(esk5_0,esk2_0,esk6_0,esk4_0)|v2_struct_0(X1)|~m1_pre_topc(esk5_0,X1)|~l1_pre_topc(X1)|~v2_pre_topc(X1)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_41]), c_0_49])).
% 0.19/0.41  cnf(c_0_59, negated_conjecture, (~v2_struct_0(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.41  fof(c_0_60, plain, ![X45, X46, X47, X48, X49, X50]:((~r1_tmap_1(X46,X45,X47,X49)|r1_tmap_1(X48,X45,k2_tmap_1(X46,X45,X47,X48),X50)|X49!=X50|~m1_subset_1(X50,u1_struct_0(X48))|~m1_subset_1(X49,u1_struct_0(X46))|(v2_struct_0(X48)|~v1_tsep_1(X48,X46)|~m1_pre_topc(X48,X46))|(~v1_funct_1(X47)|~v1_funct_2(X47,u1_struct_0(X46),u1_struct_0(X45))|~m1_subset_1(X47,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X46),u1_struct_0(X45)))))|(v2_struct_0(X46)|~v2_pre_topc(X46)|~l1_pre_topc(X46))|(v2_struct_0(X45)|~v2_pre_topc(X45)|~l1_pre_topc(X45)))&(~r1_tmap_1(X48,X45,k2_tmap_1(X46,X45,X47,X48),X50)|r1_tmap_1(X46,X45,X47,X49)|X49!=X50|~m1_subset_1(X50,u1_struct_0(X48))|~m1_subset_1(X49,u1_struct_0(X46))|(v2_struct_0(X48)|~v1_tsep_1(X48,X46)|~m1_pre_topc(X48,X46))|(~v1_funct_1(X47)|~v1_funct_2(X47,u1_struct_0(X46),u1_struct_0(X45))|~m1_subset_1(X47,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X46),u1_struct_0(X45)))))|(v2_struct_0(X46)|~v2_pre_topc(X46)|~l1_pre_topc(X46))|(v2_struct_0(X45)|~v2_pre_topc(X45)|~l1_pre_topc(X45)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t67_tmap_1])])])])])).
% 0.19/0.41  fof(c_0_61, plain, ![X34, X35, X36]:((v1_tsep_1(X35,X36)|~r1_tarski(u1_struct_0(X35),u1_struct_0(X36))|(v2_struct_0(X36)|~m1_pre_topc(X36,X34))|(~v1_tsep_1(X35,X34)|~m1_pre_topc(X35,X34))|(v2_struct_0(X34)|~v2_pre_topc(X34)|~l1_pre_topc(X34)))&(m1_pre_topc(X35,X36)|~r1_tarski(u1_struct_0(X35),u1_struct_0(X36))|(v2_struct_0(X36)|~m1_pre_topc(X36,X34))|(~v1_tsep_1(X35,X34)|~m1_pre_topc(X35,X34))|(v2_struct_0(X34)|~v2_pre_topc(X34)|~l1_pre_topc(X34)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t19_tsep_1])])])])])).
% 0.19/0.41  cnf(c_0_62, plain, (r1_tarski(X1,X2)|~r2_hidden(X1,k1_zfmisc_1(X2))), inference(er,[status(thm)],[c_0_50])).
% 0.19/0.41  cnf(c_0_63, negated_conjecture, (r2_hidden(u1_struct_0(esk4_0),k1_zfmisc_1(u1_struct_0(esk5_0)))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_52]), c_0_53])).
% 0.19/0.41  cnf(c_0_64, plain, (r1_tmap_1(X1,X2,k2_tmap_1(X3,X2,X4,X1),X5)|v2_struct_0(X1)|v2_struct_0(X3)|v2_struct_0(X2)|~r1_tmap_1(X3,X2,X4,X5)|~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X2))|~v1_funct_1(X4)|~m1_pre_topc(X1,X3)|~l1_pre_topc(X3)|~l1_pre_topc(X2)|~v2_pre_topc(X3)|~v2_pre_topc(X2)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))|~m1_subset_1(X5,u1_struct_0(X1))), inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_54]), c_0_55])).
% 0.19/0.41  cnf(c_0_65, negated_conjecture, (r1_tmap_1(esk4_0,esk2_0,k3_tmap_1(esk3_0,esk2_0,esk5_0,esk4_0,esk6_0),esk7_0)|r1_tmap_1(esk5_0,esk2_0,esk6_0,esk7_0)), inference(rw,[status(thm)],[c_0_56, c_0_57])).
% 0.19/0.41  cnf(c_0_66, negated_conjecture, (k3_tmap_1(esk3_0,esk2_0,esk5_0,esk4_0,esk6_0)=k2_tmap_1(esk5_0,esk2_0,esk6_0,esk4_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58, c_0_22]), c_0_23]), c_0_25])]), c_0_59])).
% 0.19/0.41  cnf(c_0_67, plain, (r1_tmap_1(X3,X2,X4,X6)|v2_struct_0(X1)|v2_struct_0(X3)|v2_struct_0(X2)|~r1_tmap_1(X1,X2,k2_tmap_1(X3,X2,X4,X1),X5)|X6!=X5|~m1_subset_1(X5,u1_struct_0(X1))|~m1_subset_1(X6,u1_struct_0(X3))|~v1_tsep_1(X1,X3)|~m1_pre_topc(X1,X3)|~v1_funct_1(X4)|~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X2))|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))|~v2_pre_topc(X3)|~l1_pre_topc(X3)|~v2_pre_topc(X2)|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_60])).
% 0.19/0.41  cnf(c_0_68, plain, (v1_tsep_1(X1,X2)|v2_struct_0(X2)|v2_struct_0(X3)|~r1_tarski(u1_struct_0(X1),u1_struct_0(X2))|~m1_pre_topc(X2,X3)|~v1_tsep_1(X1,X3)|~m1_pre_topc(X1,X3)|~v2_pre_topc(X3)|~l1_pre_topc(X3)), inference(split_conjunct,[status(thm)],[c_0_61])).
% 0.19/0.41  cnf(c_0_69, negated_conjecture, (r1_tarski(u1_struct_0(esk4_0),u1_struct_0(esk5_0))), inference(spm,[status(thm)],[c_0_62, c_0_63])).
% 0.19/0.41  cnf(c_0_70, negated_conjecture, (m1_pre_topc(esk4_0,X1)|~m1_pre_topc(esk5_0,X1)|~l1_pre_topc(X1)|~v2_pre_topc(X1)), inference(spm,[status(thm)],[c_0_27, c_0_41])).
% 0.19/0.41  cnf(c_0_71, negated_conjecture, (~r1_tmap_1(esk5_0,esk2_0,esk6_0,esk7_0)|~r1_tmap_1(esk4_0,esk2_0,k3_tmap_1(esk3_0,esk2_0,esk5_0,esk4_0,esk6_0),esk8_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.41  cnf(c_0_72, negated_conjecture, (r1_tmap_1(X1,esk2_0,k2_tmap_1(esk5_0,esk2_0,esk6_0,X1),X2)|v2_struct_0(X1)|~r1_tmap_1(esk5_0,esk2_0,esk6_0,X2)|~m1_pre_topc(X1,esk5_0)|~m1_subset_1(X2,u1_struct_0(X1))), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_64, c_0_29]), c_0_30]), c_0_32]), c_0_31]), c_0_34]), c_0_33]), c_0_35])]), c_0_36]), c_0_37])).
% 0.19/0.41  cnf(c_0_73, negated_conjecture, (r1_tmap_1(esk4_0,esk2_0,k2_tmap_1(esk5_0,esk2_0,esk6_0,esk4_0),esk7_0)|r1_tmap_1(esk5_0,esk2_0,esk6_0,esk7_0)), inference(rw,[status(thm)],[c_0_65, c_0_66])).
% 0.19/0.41  cnf(c_0_74, negated_conjecture, (m1_subset_1(esk8_0,u1_struct_0(esk4_0))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.41  cnf(c_0_75, plain, (r1_tmap_1(X1,X2,X3,X4)|v2_struct_0(X1)|v2_struct_0(X2)|v2_struct_0(X5)|~r1_tmap_1(X5,X2,k2_tmap_1(X1,X2,X3,X5),X4)|~v1_tsep_1(X5,X1)|~v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))|~v1_funct_1(X3)|~m1_pre_topc(X5,X1)|~l1_pre_topc(X1)|~l1_pre_topc(X2)|~v2_pre_topc(X1)|~v2_pre_topc(X2)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))|~m1_subset_1(X4,u1_struct_0(X5))), inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_67]), c_0_55])).
% 0.19/0.41  cnf(c_0_76, negated_conjecture, (v1_tsep_1(esk4_0,esk5_0)|v2_struct_0(X1)|~v1_tsep_1(esk4_0,X1)|~m1_pre_topc(esk5_0,X1)|~l1_pre_topc(X1)|~v2_pre_topc(X1)), inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_68, c_0_69]), c_0_37]), c_0_70])).
% 0.19/0.41  cnf(c_0_77, negated_conjecture, (v1_tsep_1(esk4_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.41  cnf(c_0_78, negated_conjecture, (~r1_tmap_1(esk4_0,esk2_0,k3_tmap_1(esk3_0,esk2_0,esk5_0,esk4_0,esk6_0),esk7_0)|~r1_tmap_1(esk5_0,esk2_0,esk6_0,esk7_0)), inference(rw,[status(thm)],[c_0_71, c_0_57])).
% 0.19/0.41  cnf(c_0_79, negated_conjecture, (r1_tmap_1(esk4_0,esk2_0,k2_tmap_1(esk5_0,esk2_0,esk6_0,esk4_0),esk7_0)|r1_tmap_1(X1,esk2_0,k2_tmap_1(esk5_0,esk2_0,esk6_0,X1),esk7_0)|v2_struct_0(X1)|~m1_pre_topc(X1,esk5_0)|~m1_subset_1(esk7_0,u1_struct_0(X1))), inference(spm,[status(thm)],[c_0_72, c_0_73])).
% 0.19/0.41  cnf(c_0_80, negated_conjecture, (m1_subset_1(esk7_0,u1_struct_0(esk4_0))), inference(rw,[status(thm)],[c_0_74, c_0_57])).
% 0.19/0.41  cnf(c_0_81, negated_conjecture, (~v2_struct_0(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.41  cnf(c_0_82, negated_conjecture, (r1_tmap_1(esk5_0,esk2_0,esk6_0,X1)|v2_struct_0(X2)|~r1_tmap_1(X2,esk2_0,k2_tmap_1(esk5_0,esk2_0,esk6_0,X2),X1)|~v1_tsep_1(X2,esk5_0)|~m1_pre_topc(X2,esk5_0)|~m1_subset_1(X1,u1_struct_0(X2))), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75, c_0_29]), c_0_30]), c_0_32]), c_0_31]), c_0_34]), c_0_33]), c_0_35])]), c_0_36]), c_0_37])).
% 0.19/0.41  cnf(c_0_83, negated_conjecture, (v1_tsep_1(esk4_0,esk5_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76, c_0_77]), c_0_22]), c_0_23]), c_0_25])]), c_0_59])).
% 0.19/0.41  cnf(c_0_84, negated_conjecture, (~r1_tmap_1(esk4_0,esk2_0,k2_tmap_1(esk5_0,esk2_0,esk6_0,esk4_0),esk7_0)|~r1_tmap_1(esk5_0,esk2_0,esk6_0,esk7_0)), inference(rw,[status(thm)],[c_0_78, c_0_66])).
% 0.19/0.41  cnf(c_0_85, negated_conjecture, (r1_tmap_1(esk4_0,esk2_0,k2_tmap_1(esk5_0,esk2_0,esk6_0,esk4_0),esk7_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79, c_0_80]), c_0_41])]), c_0_81])).
% 0.19/0.41  cnf(c_0_86, negated_conjecture, (r1_tmap_1(esk5_0,esk2_0,esk6_0,X1)|~r1_tmap_1(esk4_0,esk2_0,k2_tmap_1(esk5_0,esk2_0,esk6_0,esk4_0),X1)|~m1_subset_1(X1,u1_struct_0(esk4_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_82, c_0_83]), c_0_41])]), c_0_81])).
% 0.19/0.41  cnf(c_0_87, negated_conjecture, (~r1_tmap_1(esk5_0,esk2_0,esk6_0,esk7_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_84, c_0_85])])).
% 0.19/0.41  cnf(c_0_88, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_86, c_0_85]), c_0_80])]), c_0_87]), ['proof']).
% 0.19/0.41  # SZS output end CNFRefutation
% 0.19/0.41  # Proof object total steps             : 89
% 0.19/0.41  # Proof object clause steps            : 60
% 0.19/0.41  # Proof object formula steps           : 29
% 0.19/0.41  # Proof object conjectures             : 46
% 0.19/0.41  # Proof object clause conjectures      : 43
% 0.19/0.41  # Proof object formula conjectures     : 3
% 0.19/0.41  # Proof object initial clauses used    : 31
% 0.19/0.41  # Proof object initial formulas used   : 14
% 0.19/0.41  # Proof object generating inferences   : 19
% 0.19/0.41  # Proof object simplifying inferences  : 75
% 0.19/0.41  # Training examples: 0 positive, 0 negative
% 0.19/0.41  # Parsed axioms                        : 14
% 0.19/0.41  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.41  # Initial clauses                      : 39
% 0.19/0.41  # Removed in clause preprocessing      : 0
% 0.19/0.41  # Initial clauses in saturation        : 39
% 0.19/0.41  # Processed clauses                    : 128
% 0.19/0.41  # ...of these trivial                  : 3
% 0.19/0.41  # ...subsumed                          : 3
% 0.19/0.41  # ...remaining for further processing  : 122
% 0.19/0.41  # Other redundant clauses eliminated   : 5
% 0.19/0.41  # Clauses deleted for lack of memory   : 0
% 0.19/0.41  # Backward-subsumed                    : 0
% 0.19/0.41  # Backward-rewritten                   : 6
% 0.19/0.41  # Generated clauses                    : 69
% 0.19/0.41  # ...of the previous two non-trivial   : 55
% 0.19/0.41  # Contextual simplify-reflections      : 5
% 0.19/0.41  # Paramodulations                      : 62
% 0.19/0.41  # Factorizations                       : 2
% 0.19/0.41  # Equation resolutions                 : 5
% 0.19/0.41  # Propositional unsat checks           : 0
% 0.19/0.41  #    Propositional check models        : 0
% 0.19/0.41  #    Propositional check unsatisfiable : 0
% 0.19/0.41  #    Propositional clauses             : 0
% 0.19/0.41  #    Propositional clauses after purity: 0
% 0.19/0.41  #    Propositional unsat core size     : 0
% 0.19/0.41  #    Propositional preprocessing time  : 0.000
% 0.19/0.41  #    Propositional encoding time       : 0.000
% 0.19/0.41  #    Propositional solver time         : 0.000
% 0.19/0.41  #    Success case prop preproc time    : 0.000
% 0.19/0.41  #    Success case prop encoding time   : 0.000
% 0.19/0.41  #    Success case prop solver time     : 0.000
% 0.19/0.41  # Current number of processed clauses  : 74
% 0.19/0.41  #    Positive orientable unit clauses  : 34
% 0.19/0.41  #    Positive unorientable unit clauses: 0
% 0.19/0.41  #    Negative unit clauses             : 6
% 0.19/0.41  #    Non-unit-clauses                  : 34
% 0.19/0.41  # Current number of unprocessed clauses: 0
% 0.19/0.41  # ...number of literals in the above   : 0
% 0.19/0.41  # Current number of archived formulas  : 0
% 0.19/0.41  # Current number of archived clauses   : 43
% 0.19/0.41  # Clause-clause subsumption calls (NU) : 758
% 0.19/0.41  # Rec. Clause-clause subsumption calls : 101
% 0.19/0.41  # Non-unit clause-clause subsumptions  : 8
% 0.19/0.41  # Unit Clause-clause subsumption calls : 10
% 0.19/0.41  # Rewrite failures with RHS unbound    : 0
% 0.19/0.41  # BW rewrite match attempts            : 6
% 0.19/0.41  # BW rewrite match successes           : 3
% 0.19/0.41  # Condensation attempts                : 0
% 0.19/0.41  # Condensation successes               : 0
% 0.19/0.41  # Termbank termtop insertions          : 6489
% 0.19/0.41  
% 0.19/0.41  # -------------------------------------------------
% 0.19/0.41  # User time                : 0.058 s
% 0.19/0.41  # System time              : 0.008 s
% 0.19/0.41  # Total time               : 0.065 s
% 0.19/0.41  # Maximum resident set size: 1604 pages
%------------------------------------------------------------------------------
