%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:17:59 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   87 (1175 expanded)
%              Number of clauses        :   58 ( 424 expanded)
%              Number of leaves         :   14 ( 288 expanded)
%              Depth                    :   17
%              Number of atoms          :  396 (11619 expanded)
%              Number of equality atoms :   44 (1352 expanded)
%              Maximal formula depth    :   32 (   5 average)
%              Maximal clause size      :   44 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t88_tmap_1,conjecture,(
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
                     => ( g1_pre_topc(u1_struct_0(X3),u1_pre_topc(X3)) = X4
                       => ! [X6] :
                            ( m1_subset_1(X6,u1_struct_0(X4))
                           => ! [X7] :
                                ( m1_subset_1(X7,u1_struct_0(X3))
                               => ( ( X6 = X7
                                    & r1_tmap_1(X3,X2,k3_tmap_1(X1,X2,X4,X3,X5),X7) )
                                 => r1_tmap_1(X4,X2,X5,X6) ) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t88_tmap_1)).

fof(free_g1_pre_topc,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))
     => ! [X3,X4] :
          ( g1_pre_topc(X1,X2) = g1_pre_topc(X3,X4)
         => ( X1 = X3
            & X2 = X4 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',free_g1_pre_topc)).

fof(dt_u1_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => m1_subset_1(u1_pre_topc(X1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1)))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_u1_pre_topc)).

fof(dt_m1_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => l1_pre_topc(X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_m1_pre_topc)).

fof(abstractness_v1_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ( v1_pre_topc(X1)
       => X1 = g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',abstractness_v1_pre_topc)).

fof(fc7_pre_topc,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_pre_topc(X1) )
     => ( ~ v2_struct_0(g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))
        & v1_pre_topc(g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc7_pre_topc)).

fof(t83_tmap_1,axiom,(
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
                                   => ( ( r1_tarski(X6,u1_struct_0(X3))
                                        & m1_connsp_2(X6,X4,X7)
                                        & X7 = X8 )
                                     => ( r1_tmap_1(X4,X2,X5,X7)
                                      <=> r1_tmap_1(X3,X2,k3_tmap_1(X1,X2,X4,X3,X5),X8) ) ) ) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t83_tmap_1)).

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

fof(t25_tmap_1,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & m1_pre_topc(X2,X1) )
         => k1_tsep_1(X1,X2,X2) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t25_tmap_1)).

fof(t22_tsep_1,axiom,(
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
             => m1_pre_topc(X2,k1_tsep_1(X1,X2,X3)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t22_tsep_1)).

fof(cc1_pre_topc,axiom,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => v2_pre_topc(X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc1_pre_topc)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).

fof(existence_m1_connsp_2,axiom,(
    ! [X1,X2] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1)
        & m1_subset_1(X2,u1_struct_0(X1)) )
     => ? [X3] : m1_connsp_2(X3,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',existence_m1_connsp_2)).

fof(dt_m1_connsp_2,axiom,(
    ! [X1,X2] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1)
        & m1_subset_1(X2,u1_struct_0(X1)) )
     => ! [X3] :
          ( m1_connsp_2(X3,X1,X2)
         => m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_m1_connsp_2)).

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
                  & m1_pre_topc(X3,X1) )
               => ! [X4] :
                    ( ( ~ v2_struct_0(X4)
                      & m1_pre_topc(X4,X1) )
                   => ! [X5] :
                        ( ( v1_funct_1(X5)
                          & v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2))
                          & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2)))) )
                       => ( g1_pre_topc(u1_struct_0(X3),u1_pre_topc(X3)) = X4
                         => ! [X6] :
                              ( m1_subset_1(X6,u1_struct_0(X4))
                             => ! [X7] :
                                  ( m1_subset_1(X7,u1_struct_0(X3))
                                 => ( ( X6 = X7
                                      & r1_tmap_1(X3,X2,k3_tmap_1(X1,X2,X4,X3,X5),X7) )
                                   => r1_tmap_1(X4,X2,X5,X6) ) ) ) ) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t88_tmap_1])).

fof(c_0_15,plain,(
    ! [X18,X19,X20,X21] :
      ( ( X18 = X20
        | g1_pre_topc(X18,X19) != g1_pre_topc(X20,X21)
        | ~ m1_subset_1(X19,k1_zfmisc_1(k1_zfmisc_1(X18))) )
      & ( X19 = X21
        | g1_pre_topc(X18,X19) != g1_pre_topc(X20,X21)
        | ~ m1_subset_1(X19,k1_zfmisc_1(k1_zfmisc_1(X18))) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[free_g1_pre_topc])])])])).

fof(c_0_16,plain,(
    ! [X16] :
      ( ~ l1_pre_topc(X16)
      | m1_subset_1(u1_pre_topc(X16),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X16)))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_u1_pre_topc])])).

fof(c_0_17,plain,(
    ! [X14,X15] :
      ( ~ l1_pre_topc(X14)
      | ~ m1_pre_topc(X15,X14)
      | l1_pre_topc(X15) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_m1_pre_topc])])])).

fof(c_0_18,negated_conjecture,
    ( ~ v2_struct_0(esk2_0)
    & v2_pre_topc(esk2_0)
    & l1_pre_topc(esk2_0)
    & ~ v2_struct_0(esk3_0)
    & v2_pre_topc(esk3_0)
    & l1_pre_topc(esk3_0)
    & ~ v2_struct_0(esk4_0)
    & m1_pre_topc(esk4_0,esk2_0)
    & ~ v2_struct_0(esk5_0)
    & m1_pre_topc(esk5_0,esk2_0)
    & v1_funct_1(esk6_0)
    & v1_funct_2(esk6_0,u1_struct_0(esk5_0),u1_struct_0(esk3_0))
    & m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk5_0),u1_struct_0(esk3_0))))
    & g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk4_0)) = esk5_0
    & m1_subset_1(esk7_0,u1_struct_0(esk5_0))
    & m1_subset_1(esk8_0,u1_struct_0(esk4_0))
    & esk7_0 = esk8_0
    & r1_tmap_1(esk4_0,esk3_0,k3_tmap_1(esk2_0,esk3_0,esk5_0,esk4_0,esk6_0),esk8_0)
    & ~ r1_tmap_1(esk5_0,esk3_0,esk6_0,esk7_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_14])])])])).

cnf(c_0_19,plain,
    ( X1 = X2
    | g1_pre_topc(X3,X1) != g1_pre_topc(X4,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_20,plain,
    ( m1_subset_1(u1_pre_topc(X1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_21,plain,
    ( l1_pre_topc(X2)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_22,negated_conjecture,
    ( m1_pre_topc(esk4_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_23,negated_conjecture,
    ( l1_pre_topc(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_24,plain,
    ( u1_pre_topc(X1) = X2
    | g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)) != g1_pre_topc(X3,X2)
    | ~ l1_pre_topc(X1) ),
    inference(spm,[status(thm)],[c_0_19,c_0_20])).

cnf(c_0_25,negated_conjecture,
    ( g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk4_0)) = esk5_0 ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_26,negated_conjecture,
    ( l1_pre_topc(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21,c_0_22]),c_0_23])])).

fof(c_0_27,plain,(
    ! [X11] :
      ( ~ l1_pre_topc(X11)
      | ~ v1_pre_topc(X11)
      | X11 = g1_pre_topc(u1_struct_0(X11),u1_pre_topc(X11)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[abstractness_v1_pre_topc])])).

fof(c_0_28,plain,(
    ! [X17] :
      ( ( ~ v2_struct_0(g1_pre_topc(u1_struct_0(X17),u1_pre_topc(X17)))
        | v2_struct_0(X17)
        | ~ l1_pre_topc(X17) )
      & ( v1_pre_topc(g1_pre_topc(u1_struct_0(X17),u1_pre_topc(X17)))
        | v2_struct_0(X17)
        | ~ l1_pre_topc(X17) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc7_pre_topc])])])])).

cnf(c_0_29,negated_conjecture,
    ( u1_pre_topc(esk4_0) = X1
    | g1_pre_topc(X2,X1) != esk5_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_25]),c_0_26])])).

cnf(c_0_30,plain,
    ( X1 = g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1))
    | ~ l1_pre_topc(X1)
    | ~ v1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_31,plain,
    ( v1_pre_topc(g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_32,negated_conjecture,
    ( ~ v2_struct_0(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_33,negated_conjecture,
    ( m1_pre_topc(esk5_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_34,negated_conjecture,
    ( u1_pre_topc(esk4_0) = u1_pre_topc(X1)
    | X1 != esk5_0
    | ~ v1_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(spm,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_35,negated_conjecture,
    ( v1_pre_topc(esk5_0) ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_26]),c_0_25]),c_0_32])).

cnf(c_0_36,negated_conjecture,
    ( l1_pre_topc(esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21,c_0_33]),c_0_23])])).

cnf(c_0_37,negated_conjecture,
    ( u1_pre_topc(esk4_0) = u1_pre_topc(esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_35]),c_0_36])])).

cnf(c_0_38,plain,
    ( X1 = X2
    | g1_pre_topc(X1,X3) != g1_pre_topc(X2,X4)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_39,negated_conjecture,
    ( m1_subset_1(u1_pre_topc(esk5_0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk4_0)))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_37]),c_0_26])])).

cnf(c_0_40,negated_conjecture,
    ( g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk5_0)) = esk5_0 ),
    inference(rw,[status(thm)],[c_0_25,c_0_37])).

cnf(c_0_41,negated_conjecture,
    ( u1_struct_0(esk4_0) = X1
    | g1_pre_topc(X1,X2) != esk5_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_39]),c_0_40])).

cnf(c_0_42,negated_conjecture,
    ( u1_struct_0(esk4_0) = u1_struct_0(X1)
    | X1 != esk5_0
    | ~ v1_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(spm,[status(thm)],[c_0_41,c_0_30])).

fof(c_0_43,plain,(
    ! [X36,X37,X38,X39,X40,X41,X42,X43] :
      ( ( ~ r1_tmap_1(X39,X37,X40,X42)
        | r1_tmap_1(X38,X37,k3_tmap_1(X36,X37,X39,X38,X40),X43)
        | ~ r1_tarski(X41,u1_struct_0(X38))
        | ~ m1_connsp_2(X41,X39,X42)
        | X42 != X43
        | ~ m1_subset_1(X43,u1_struct_0(X38))
        | ~ m1_subset_1(X42,u1_struct_0(X39))
        | ~ m1_subset_1(X41,k1_zfmisc_1(u1_struct_0(X39)))
        | ~ m1_pre_topc(X38,X39)
        | ~ v1_funct_1(X40)
        | ~ v1_funct_2(X40,u1_struct_0(X39),u1_struct_0(X37))
        | ~ m1_subset_1(X40,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X39),u1_struct_0(X37))))
        | v2_struct_0(X39)
        | ~ m1_pre_topc(X39,X36)
        | v2_struct_0(X38)
        | ~ m1_pre_topc(X38,X36)
        | v2_struct_0(X37)
        | ~ v2_pre_topc(X37)
        | ~ l1_pre_topc(X37)
        | v2_struct_0(X36)
        | ~ v2_pre_topc(X36)
        | ~ l1_pre_topc(X36) )
      & ( ~ r1_tmap_1(X38,X37,k3_tmap_1(X36,X37,X39,X38,X40),X43)
        | r1_tmap_1(X39,X37,X40,X42)
        | ~ r1_tarski(X41,u1_struct_0(X38))
        | ~ m1_connsp_2(X41,X39,X42)
        | X42 != X43
        | ~ m1_subset_1(X43,u1_struct_0(X38))
        | ~ m1_subset_1(X42,u1_struct_0(X39))
        | ~ m1_subset_1(X41,k1_zfmisc_1(u1_struct_0(X39)))
        | ~ m1_pre_topc(X38,X39)
        | ~ v1_funct_1(X40)
        | ~ v1_funct_2(X40,u1_struct_0(X39),u1_struct_0(X37))
        | ~ m1_subset_1(X40,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X39),u1_struct_0(X37))))
        | v2_struct_0(X39)
        | ~ m1_pre_topc(X39,X36)
        | v2_struct_0(X38)
        | ~ m1_pre_topc(X38,X36)
        | v2_struct_0(X37)
        | ~ v2_pre_topc(X37)
        | ~ l1_pre_topc(X37)
        | v2_struct_0(X36)
        | ~ v2_pre_topc(X36)
        | ~ l1_pre_topc(X36) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t83_tmap_1])])])])])).

fof(c_0_44,plain,(
    ! [X33,X34,X35] :
      ( ~ v2_pre_topc(X33)
      | ~ l1_pre_topc(X33)
      | ~ m1_pre_topc(X34,X33)
      | ~ m1_pre_topc(X35,X34)
      | m1_pre_topc(X35,X33) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_tsep_1])])])).

fof(c_0_45,plain,(
    ! [X31,X32] :
      ( v2_struct_0(X31)
      | ~ v2_pre_topc(X31)
      | ~ l1_pre_topc(X31)
      | v2_struct_0(X32)
      | ~ m1_pre_topc(X32,X31)
      | k1_tsep_1(X31,X32,X32) = g1_pre_topc(u1_struct_0(X32),u1_pre_topc(X32)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t25_tmap_1])])])])).

cnf(c_0_46,negated_conjecture,
    ( u1_struct_0(esk4_0) = u1_struct_0(esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42,c_0_35]),c_0_36])])).

cnf(c_0_47,plain,
    ( r1_tmap_1(X4,X2,X5,X7)
    | v2_struct_0(X4)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | ~ r1_tmap_1(X1,X2,k3_tmap_1(X3,X2,X4,X1,X5),X6)
    | ~ r1_tarski(X8,u1_struct_0(X1))
    | ~ m1_connsp_2(X8,X4,X7)
    | X7 != X6
    | ~ m1_subset_1(X6,u1_struct_0(X1))
    | ~ m1_subset_1(X7,u1_struct_0(X4))
    | ~ m1_subset_1(X8,k1_zfmisc_1(u1_struct_0(X4)))
    | ~ m1_pre_topc(X1,X4)
    | ~ v1_funct_1(X5)
    | ~ v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2))
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2))))
    | ~ m1_pre_topc(X4,X3)
    | ~ m1_pre_topc(X1,X3)
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X3)
    | ~ l1_pre_topc(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_48,plain,
    ( m1_pre_topc(X3,X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_pre_topc(X3,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

fof(c_0_49,plain,(
    ! [X28,X29,X30] :
      ( v2_struct_0(X28)
      | ~ v2_pre_topc(X28)
      | ~ l1_pre_topc(X28)
      | v2_struct_0(X29)
      | ~ m1_pre_topc(X29,X28)
      | v2_struct_0(X30)
      | ~ m1_pre_topc(X30,X28)
      | m1_pre_topc(X29,k1_tsep_1(X28,X29,X30)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t22_tsep_1])])])])).

cnf(c_0_50,plain,
    ( v2_struct_0(X1)
    | v2_struct_0(X2)
    | k1_tsep_1(X1,X2,X2) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

cnf(c_0_51,negated_conjecture,
    ( g1_pre_topc(u1_struct_0(esk5_0),u1_pre_topc(esk5_0)) = esk5_0 ),
    inference(rw,[status(thm)],[c_0_40,c_0_46])).

cnf(c_0_52,negated_conjecture,
    ( v2_pre_topc(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_53,negated_conjecture,
    ( ~ v2_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

fof(c_0_54,plain,(
    ! [X12,X13] :
      ( ~ v2_pre_topc(X12)
      | ~ l1_pre_topc(X12)
      | ~ m1_pre_topc(X13,X12)
      | v2_pre_topc(X13) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_pre_topc])])])).

cnf(c_0_55,plain,
    ( r1_tmap_1(X1,X2,X3,X4)
    | v2_struct_0(X1)
    | v2_struct_0(X5)
    | v2_struct_0(X2)
    | v2_struct_0(X6)
    | ~ r1_tmap_1(X6,X2,k3_tmap_1(X5,X2,X1,X6,X3),X4)
    | ~ v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))
    | ~ v1_funct_1(X3)
    | ~ m1_connsp_2(X7,X1,X4)
    | ~ m1_pre_topc(X1,X5)
    | ~ m1_pre_topc(X6,X1)
    | ~ v2_pre_topc(X5)
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X5)
    | ~ l1_pre_topc(X2)
    | ~ r1_tarski(X7,u1_struct_0(X6))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X4,u1_struct_0(X1))
    | ~ m1_subset_1(X4,u1_struct_0(X6)) ),
    inference(er,[status(thm)],[inference(csr,[status(thm)],[c_0_47,c_0_48])])).

cnf(c_0_56,negated_conjecture,
    ( m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk5_0),u1_struct_0(esk3_0)))) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_57,negated_conjecture,
    ( v1_funct_2(esk6_0,u1_struct_0(esk5_0),u1_struct_0(esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_58,negated_conjecture,
    ( v1_funct_1(esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_59,negated_conjecture,
    ( v2_pre_topc(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_60,negated_conjecture,
    ( l1_pre_topc(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_61,negated_conjecture,
    ( ~ v2_struct_0(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_62,negated_conjecture,
    ( ~ v2_struct_0(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_63,negated_conjecture,
    ( r1_tmap_1(esk4_0,esk3_0,k3_tmap_1(esk2_0,esk3_0,esk5_0,esk4_0,esk6_0),esk8_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_64,negated_conjecture,
    ( esk7_0 = esk8_0 ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_65,plain,
    ( v2_struct_0(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | m1_pre_topc(X2,k1_tsep_1(X1,X2,X3))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_pre_topc(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_49])).

cnf(c_0_66,negated_conjecture,
    ( k1_tsep_1(esk2_0,esk4_0,esk4_0) = esk5_0 ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_22]),c_0_46]),c_0_37]),c_0_51]),c_0_52]),c_0_23])]),c_0_32]),c_0_53])).

fof(c_0_67,plain,(
    ! [X9,X10] :
      ( ( ~ m1_subset_1(X9,k1_zfmisc_1(X10))
        | r1_tarski(X9,X10) )
      & ( ~ r1_tarski(X9,X10)
        | m1_subset_1(X9,k1_zfmisc_1(X10)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

fof(c_0_68,plain,(
    ! [X25,X26] :
      ( v2_struct_0(X25)
      | ~ v2_pre_topc(X25)
      | ~ l1_pre_topc(X25)
      | ~ m1_subset_1(X26,u1_struct_0(X25))
      | m1_connsp_2(esk1_2(X25,X26),X25,X26) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[existence_m1_connsp_2])])])])).

cnf(c_0_69,plain,
    ( v2_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_54])).

fof(c_0_70,plain,(
    ! [X22,X23,X24] :
      ( v2_struct_0(X22)
      | ~ v2_pre_topc(X22)
      | ~ l1_pre_topc(X22)
      | ~ m1_subset_1(X23,u1_struct_0(X22))
      | ~ m1_connsp_2(X24,X22,X23)
      | m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X22))) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_m1_connsp_2])])])])).

cnf(c_0_71,negated_conjecture,
    ( r1_tmap_1(esk5_0,esk3_0,esk6_0,X1)
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | ~ r1_tmap_1(X3,esk3_0,k3_tmap_1(X2,esk3_0,esk5_0,X3,esk6_0),X1)
    | ~ m1_connsp_2(X4,esk5_0,X1)
    | ~ m1_pre_topc(esk5_0,X2)
    | ~ m1_pre_topc(X3,esk5_0)
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X2)
    | ~ r1_tarski(X4,u1_struct_0(X3))
    | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(esk5_0)))
    | ~ m1_subset_1(X1,u1_struct_0(esk5_0))
    | ~ m1_subset_1(X1,u1_struct_0(X3)) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_56]),c_0_57]),c_0_58]),c_0_59]),c_0_60])]),c_0_61]),c_0_62])).

cnf(c_0_72,negated_conjecture,
    ( r1_tmap_1(esk4_0,esk3_0,k3_tmap_1(esk2_0,esk3_0,esk5_0,esk4_0,esk6_0),esk7_0) ),
    inference(rw,[status(thm)],[c_0_63,c_0_64])).

cnf(c_0_73,negated_conjecture,
    ( m1_pre_topc(esk4_0,esk5_0) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65,c_0_66]),c_0_22]),c_0_52]),c_0_23])]),c_0_32]),c_0_53])).

cnf(c_0_74,negated_conjecture,
    ( m1_subset_1(esk7_0,u1_struct_0(esk5_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_75,negated_conjecture,
    ( ~ r1_tmap_1(esk5_0,esk3_0,esk6_0,esk7_0) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_76,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_67])).

cnf(c_0_77,plain,
    ( v2_struct_0(X1)
    | m1_connsp_2(esk1_2(X1,X2),X1,X2)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_68])).

cnf(c_0_78,negated_conjecture,
    ( v2_pre_topc(esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_69,c_0_33]),c_0_52]),c_0_23])])).

cnf(c_0_79,plain,
    ( v2_struct_0(X1)
    | m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_connsp_2(X3,X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_70])).

cnf(c_0_80,negated_conjecture,
    ( ~ m1_connsp_2(X1,esk5_0,esk7_0)
    | ~ r1_tarski(X1,u1_struct_0(esk5_0)) ),
    inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71,c_0_72]),c_0_33]),c_0_73]),c_0_52]),c_0_23]),c_0_46]),c_0_74]),c_0_46]),c_0_74])]),c_0_75]),c_0_53]),c_0_32]),c_0_76])).

cnf(c_0_81,negated_conjecture,
    ( m1_connsp_2(esk1_2(esk5_0,esk7_0),esk5_0,esk7_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_77,c_0_74]),c_0_78]),c_0_36])]),c_0_62])).

cnf(c_0_82,negated_conjecture,
    ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk5_0)))
    | ~ m1_connsp_2(X1,esk5_0,esk7_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79,c_0_74]),c_0_78]),c_0_36])]),c_0_62])).

cnf(c_0_83,negated_conjecture,
    ( ~ r1_tarski(esk1_2(esk5_0,esk7_0),u1_struct_0(esk5_0)) ),
    inference(spm,[status(thm)],[c_0_80,c_0_81])).

cnf(c_0_84,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_67])).

cnf(c_0_85,negated_conjecture,
    ( m1_subset_1(esk1_2(esk5_0,esk7_0),k1_zfmisc_1(u1_struct_0(esk5_0))) ),
    inference(spm,[status(thm)],[c_0_82,c_0_81])).

cnf(c_0_86,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83,c_0_84]),c_0_85])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.35  % Computer   : n024.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 19:48:06 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.19/0.35  # Version: 2.5pre002
% 0.19/0.35  # No SInE strategy applied
% 0.19/0.35  # Trying AutoSched0 for 299 seconds
% 0.19/0.40  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_AE_CS_SP_PS_S0V
% 0.19/0.40  # and selection function PSelectComplexExceptRRHorn.
% 0.19/0.40  #
% 0.19/0.40  # Preprocessing time       : 0.030 s
% 0.19/0.40  # Presaturation interreduction done
% 0.19/0.40  
% 0.19/0.40  # Proof found!
% 0.19/0.40  # SZS status Theorem
% 0.19/0.40  # SZS output start CNFRefutation
% 0.19/0.40  fof(t88_tmap_1, conjecture, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X1))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X1))=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2)))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2)))))=>(g1_pre_topc(u1_struct_0(X3),u1_pre_topc(X3))=X4=>![X6]:(m1_subset_1(X6,u1_struct_0(X4))=>![X7]:(m1_subset_1(X7,u1_struct_0(X3))=>((X6=X7&r1_tmap_1(X3,X2,k3_tmap_1(X1,X2,X4,X3,X5),X7))=>r1_tmap_1(X4,X2,X5,X6)))))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t88_tmap_1)).
% 0.19/0.40  fof(free_g1_pre_topc, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))=>![X3, X4]:(g1_pre_topc(X1,X2)=g1_pre_topc(X3,X4)=>(X1=X3&X2=X4))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', free_g1_pre_topc)).
% 0.19/0.40  fof(dt_u1_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>m1_subset_1(u1_pre_topc(X1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_u1_pre_topc)).
% 0.19/0.40  fof(dt_m1_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_pre_topc(X2,X1)=>l1_pre_topc(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_m1_pre_topc)).
% 0.19/0.40  fof(abstractness_v1_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>(v1_pre_topc(X1)=>X1=g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', abstractness_v1_pre_topc)).
% 0.19/0.40  fof(fc7_pre_topc, axiom, ![X1]:((~(v2_struct_0(X1))&l1_pre_topc(X1))=>(~(v2_struct_0(g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1))))&v1_pre_topc(g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc7_pre_topc)).
% 0.19/0.40  fof(t83_tmap_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X1))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X1))=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2)))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2)))))=>(m1_pre_topc(X3,X4)=>![X6]:(m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X4)))=>![X7]:(m1_subset_1(X7,u1_struct_0(X4))=>![X8]:(m1_subset_1(X8,u1_struct_0(X3))=>(((r1_tarski(X6,u1_struct_0(X3))&m1_connsp_2(X6,X4,X7))&X7=X8)=>(r1_tmap_1(X4,X2,X5,X7)<=>r1_tmap_1(X3,X2,k3_tmap_1(X1,X2,X4,X3,X5),X8)))))))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t83_tmap_1)).
% 0.19/0.40  fof(t7_tsep_1, axiom, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_pre_topc(X2,X1)=>![X3]:(m1_pre_topc(X3,X2)=>m1_pre_topc(X3,X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_tsep_1)).
% 0.19/0.40  fof(t25_tmap_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:((~(v2_struct_0(X2))&m1_pre_topc(X2,X1))=>k1_tsep_1(X1,X2,X2)=g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t25_tmap_1)).
% 0.19/0.40  fof(t22_tsep_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:((~(v2_struct_0(X2))&m1_pre_topc(X2,X1))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X1))=>m1_pre_topc(X2,k1_tsep_1(X1,X2,X3))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t22_tsep_1)).
% 0.19/0.40  fof(cc1_pre_topc, axiom, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_pre_topc(X2,X1)=>v2_pre_topc(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc1_pre_topc)).
% 0.19/0.40  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_subset)).
% 0.19/0.40  fof(existence_m1_connsp_2, axiom, ![X1, X2]:((((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))&m1_subset_1(X2,u1_struct_0(X1)))=>?[X3]:m1_connsp_2(X3,X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', existence_m1_connsp_2)).
% 0.19/0.40  fof(dt_m1_connsp_2, axiom, ![X1, X2]:((((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))&m1_subset_1(X2,u1_struct_0(X1)))=>![X3]:(m1_connsp_2(X3,X1,X2)=>m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_m1_connsp_2)).
% 0.19/0.40  fof(c_0_14, negated_conjecture, ~(![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X1))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X1))=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2)))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2)))))=>(g1_pre_topc(u1_struct_0(X3),u1_pre_topc(X3))=X4=>![X6]:(m1_subset_1(X6,u1_struct_0(X4))=>![X7]:(m1_subset_1(X7,u1_struct_0(X3))=>((X6=X7&r1_tmap_1(X3,X2,k3_tmap_1(X1,X2,X4,X3,X5),X7))=>r1_tmap_1(X4,X2,X5,X6))))))))))), inference(assume_negation,[status(cth)],[t88_tmap_1])).
% 0.19/0.40  fof(c_0_15, plain, ![X18, X19, X20, X21]:((X18=X20|g1_pre_topc(X18,X19)!=g1_pre_topc(X20,X21)|~m1_subset_1(X19,k1_zfmisc_1(k1_zfmisc_1(X18))))&(X19=X21|g1_pre_topc(X18,X19)!=g1_pre_topc(X20,X21)|~m1_subset_1(X19,k1_zfmisc_1(k1_zfmisc_1(X18))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[free_g1_pre_topc])])])])).
% 0.19/0.40  fof(c_0_16, plain, ![X16]:(~l1_pre_topc(X16)|m1_subset_1(u1_pre_topc(X16),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X16))))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_u1_pre_topc])])).
% 0.19/0.40  fof(c_0_17, plain, ![X14, X15]:(~l1_pre_topc(X14)|(~m1_pre_topc(X15,X14)|l1_pre_topc(X15))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_m1_pre_topc])])])).
% 0.19/0.40  fof(c_0_18, negated_conjecture, (((~v2_struct_0(esk2_0)&v2_pre_topc(esk2_0))&l1_pre_topc(esk2_0))&(((~v2_struct_0(esk3_0)&v2_pre_topc(esk3_0))&l1_pre_topc(esk3_0))&((~v2_struct_0(esk4_0)&m1_pre_topc(esk4_0,esk2_0))&((~v2_struct_0(esk5_0)&m1_pre_topc(esk5_0,esk2_0))&(((v1_funct_1(esk6_0)&v1_funct_2(esk6_0,u1_struct_0(esk5_0),u1_struct_0(esk3_0)))&m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk5_0),u1_struct_0(esk3_0)))))&(g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk4_0))=esk5_0&(m1_subset_1(esk7_0,u1_struct_0(esk5_0))&(m1_subset_1(esk8_0,u1_struct_0(esk4_0))&((esk7_0=esk8_0&r1_tmap_1(esk4_0,esk3_0,k3_tmap_1(esk2_0,esk3_0,esk5_0,esk4_0,esk6_0),esk8_0))&~r1_tmap_1(esk5_0,esk3_0,esk6_0,esk7_0)))))))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_14])])])])).
% 0.19/0.40  cnf(c_0_19, plain, (X1=X2|g1_pre_topc(X3,X1)!=g1_pre_topc(X4,X2)|~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X3)))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.40  cnf(c_0_20, plain, (m1_subset_1(u1_pre_topc(X1),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.40  cnf(c_0_21, plain, (l1_pre_topc(X2)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.19/0.40  cnf(c_0_22, negated_conjecture, (m1_pre_topc(esk4_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.40  cnf(c_0_23, negated_conjecture, (l1_pre_topc(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.40  cnf(c_0_24, plain, (u1_pre_topc(X1)=X2|g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1))!=g1_pre_topc(X3,X2)|~l1_pre_topc(X1)), inference(spm,[status(thm)],[c_0_19, c_0_20])).
% 0.19/0.40  cnf(c_0_25, negated_conjecture, (g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk4_0))=esk5_0), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.40  cnf(c_0_26, negated_conjecture, (l1_pre_topc(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21, c_0_22]), c_0_23])])).
% 0.19/0.40  fof(c_0_27, plain, ![X11]:(~l1_pre_topc(X11)|(~v1_pre_topc(X11)|X11=g1_pre_topc(u1_struct_0(X11),u1_pre_topc(X11)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[abstractness_v1_pre_topc])])).
% 0.19/0.40  fof(c_0_28, plain, ![X17]:((~v2_struct_0(g1_pre_topc(u1_struct_0(X17),u1_pre_topc(X17)))|(v2_struct_0(X17)|~l1_pre_topc(X17)))&(v1_pre_topc(g1_pre_topc(u1_struct_0(X17),u1_pre_topc(X17)))|(v2_struct_0(X17)|~l1_pre_topc(X17)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc7_pre_topc])])])])).
% 0.19/0.40  cnf(c_0_29, negated_conjecture, (u1_pre_topc(esk4_0)=X1|g1_pre_topc(X2,X1)!=esk5_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_25]), c_0_26])])).
% 0.19/0.40  cnf(c_0_30, plain, (X1=g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1))|~l1_pre_topc(X1)|~v1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.19/0.40  cnf(c_0_31, plain, (v1_pre_topc(g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))|v2_struct_0(X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.19/0.40  cnf(c_0_32, negated_conjecture, (~v2_struct_0(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.40  cnf(c_0_33, negated_conjecture, (m1_pre_topc(esk5_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.40  cnf(c_0_34, negated_conjecture, (u1_pre_topc(esk4_0)=u1_pre_topc(X1)|X1!=esk5_0|~v1_pre_topc(X1)|~l1_pre_topc(X1)), inference(spm,[status(thm)],[c_0_29, c_0_30])).
% 0.19/0.40  cnf(c_0_35, negated_conjecture, (v1_pre_topc(esk5_0)), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_26]), c_0_25]), c_0_32])).
% 0.19/0.40  cnf(c_0_36, negated_conjecture, (l1_pre_topc(esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21, c_0_33]), c_0_23])])).
% 0.19/0.40  cnf(c_0_37, negated_conjecture, (u1_pre_topc(esk4_0)=u1_pre_topc(esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_35]), c_0_36])])).
% 0.19/0.40  cnf(c_0_38, plain, (X1=X2|g1_pre_topc(X1,X3)!=g1_pre_topc(X2,X4)|~m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(X1)))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.40  cnf(c_0_39, negated_conjecture, (m1_subset_1(u1_pre_topc(esk5_0),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk4_0))))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20, c_0_37]), c_0_26])])).
% 0.19/0.40  cnf(c_0_40, negated_conjecture, (g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk5_0))=esk5_0), inference(rw,[status(thm)],[c_0_25, c_0_37])).
% 0.19/0.40  cnf(c_0_41, negated_conjecture, (u1_struct_0(esk4_0)=X1|g1_pre_topc(X1,X2)!=esk5_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_39]), c_0_40])).
% 0.19/0.40  cnf(c_0_42, negated_conjecture, (u1_struct_0(esk4_0)=u1_struct_0(X1)|X1!=esk5_0|~v1_pre_topc(X1)|~l1_pre_topc(X1)), inference(spm,[status(thm)],[c_0_41, c_0_30])).
% 0.19/0.40  fof(c_0_43, plain, ![X36, X37, X38, X39, X40, X41, X42, X43]:((~r1_tmap_1(X39,X37,X40,X42)|r1_tmap_1(X38,X37,k3_tmap_1(X36,X37,X39,X38,X40),X43)|(~r1_tarski(X41,u1_struct_0(X38))|~m1_connsp_2(X41,X39,X42)|X42!=X43)|~m1_subset_1(X43,u1_struct_0(X38))|~m1_subset_1(X42,u1_struct_0(X39))|~m1_subset_1(X41,k1_zfmisc_1(u1_struct_0(X39)))|~m1_pre_topc(X38,X39)|(~v1_funct_1(X40)|~v1_funct_2(X40,u1_struct_0(X39),u1_struct_0(X37))|~m1_subset_1(X40,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X39),u1_struct_0(X37)))))|(v2_struct_0(X39)|~m1_pre_topc(X39,X36))|(v2_struct_0(X38)|~m1_pre_topc(X38,X36))|(v2_struct_0(X37)|~v2_pre_topc(X37)|~l1_pre_topc(X37))|(v2_struct_0(X36)|~v2_pre_topc(X36)|~l1_pre_topc(X36)))&(~r1_tmap_1(X38,X37,k3_tmap_1(X36,X37,X39,X38,X40),X43)|r1_tmap_1(X39,X37,X40,X42)|(~r1_tarski(X41,u1_struct_0(X38))|~m1_connsp_2(X41,X39,X42)|X42!=X43)|~m1_subset_1(X43,u1_struct_0(X38))|~m1_subset_1(X42,u1_struct_0(X39))|~m1_subset_1(X41,k1_zfmisc_1(u1_struct_0(X39)))|~m1_pre_topc(X38,X39)|(~v1_funct_1(X40)|~v1_funct_2(X40,u1_struct_0(X39),u1_struct_0(X37))|~m1_subset_1(X40,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X39),u1_struct_0(X37)))))|(v2_struct_0(X39)|~m1_pre_topc(X39,X36))|(v2_struct_0(X38)|~m1_pre_topc(X38,X36))|(v2_struct_0(X37)|~v2_pre_topc(X37)|~l1_pre_topc(X37))|(v2_struct_0(X36)|~v2_pre_topc(X36)|~l1_pre_topc(X36)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t83_tmap_1])])])])])).
% 0.19/0.40  fof(c_0_44, plain, ![X33, X34, X35]:(~v2_pre_topc(X33)|~l1_pre_topc(X33)|(~m1_pre_topc(X34,X33)|(~m1_pre_topc(X35,X34)|m1_pre_topc(X35,X33)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_tsep_1])])])).
% 0.19/0.40  fof(c_0_45, plain, ![X31, X32]:(v2_struct_0(X31)|~v2_pre_topc(X31)|~l1_pre_topc(X31)|(v2_struct_0(X32)|~m1_pre_topc(X32,X31)|k1_tsep_1(X31,X32,X32)=g1_pre_topc(u1_struct_0(X32),u1_pre_topc(X32)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t25_tmap_1])])])])).
% 0.19/0.40  cnf(c_0_46, negated_conjecture, (u1_struct_0(esk4_0)=u1_struct_0(esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_35]), c_0_36])])).
% 0.19/0.40  cnf(c_0_47, plain, (r1_tmap_1(X4,X2,X5,X7)|v2_struct_0(X4)|v2_struct_0(X1)|v2_struct_0(X2)|v2_struct_0(X3)|~r1_tmap_1(X1,X2,k3_tmap_1(X3,X2,X4,X1,X5),X6)|~r1_tarski(X8,u1_struct_0(X1))|~m1_connsp_2(X8,X4,X7)|X7!=X6|~m1_subset_1(X6,u1_struct_0(X1))|~m1_subset_1(X7,u1_struct_0(X4))|~m1_subset_1(X8,k1_zfmisc_1(u1_struct_0(X4)))|~m1_pre_topc(X1,X4)|~v1_funct_1(X5)|~v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2))|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2))))|~m1_pre_topc(X4,X3)|~m1_pre_topc(X1,X3)|~v2_pre_topc(X2)|~l1_pre_topc(X2)|~v2_pre_topc(X3)|~l1_pre_topc(X3)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.19/0.40  cnf(c_0_48, plain, (m1_pre_topc(X3,X1)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)|~m1_pre_topc(X3,X2)), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.19/0.40  fof(c_0_49, plain, ![X28, X29, X30]:(v2_struct_0(X28)|~v2_pre_topc(X28)|~l1_pre_topc(X28)|(v2_struct_0(X29)|~m1_pre_topc(X29,X28)|(v2_struct_0(X30)|~m1_pre_topc(X30,X28)|m1_pre_topc(X29,k1_tsep_1(X28,X29,X30))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t22_tsep_1])])])])).
% 0.19/0.40  cnf(c_0_50, plain, (v2_struct_0(X1)|v2_struct_0(X2)|k1_tsep_1(X1,X2,X2)=g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_45])).
% 0.19/0.40  cnf(c_0_51, negated_conjecture, (g1_pre_topc(u1_struct_0(esk5_0),u1_pre_topc(esk5_0))=esk5_0), inference(rw,[status(thm)],[c_0_40, c_0_46])).
% 0.19/0.40  cnf(c_0_52, negated_conjecture, (v2_pre_topc(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.40  cnf(c_0_53, negated_conjecture, (~v2_struct_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.40  fof(c_0_54, plain, ![X12, X13]:(~v2_pre_topc(X12)|~l1_pre_topc(X12)|(~m1_pre_topc(X13,X12)|v2_pre_topc(X13))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_pre_topc])])])).
% 0.19/0.40  cnf(c_0_55, plain, (r1_tmap_1(X1,X2,X3,X4)|v2_struct_0(X1)|v2_struct_0(X5)|v2_struct_0(X2)|v2_struct_0(X6)|~r1_tmap_1(X6,X2,k3_tmap_1(X5,X2,X1,X6,X3),X4)|~v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))|~v1_funct_1(X3)|~m1_connsp_2(X7,X1,X4)|~m1_pre_topc(X1,X5)|~m1_pre_topc(X6,X1)|~v2_pre_topc(X5)|~v2_pre_topc(X2)|~l1_pre_topc(X5)|~l1_pre_topc(X2)|~r1_tarski(X7,u1_struct_0(X6))|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))|~m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X4,u1_struct_0(X1))|~m1_subset_1(X4,u1_struct_0(X6))), inference(er,[status(thm)],[inference(csr,[status(thm)],[c_0_47, c_0_48])])).
% 0.19/0.40  cnf(c_0_56, negated_conjecture, (m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk5_0),u1_struct_0(esk3_0))))), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.40  cnf(c_0_57, negated_conjecture, (v1_funct_2(esk6_0,u1_struct_0(esk5_0),u1_struct_0(esk3_0))), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.40  cnf(c_0_58, negated_conjecture, (v1_funct_1(esk6_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.40  cnf(c_0_59, negated_conjecture, (v2_pre_topc(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.40  cnf(c_0_60, negated_conjecture, (l1_pre_topc(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.40  cnf(c_0_61, negated_conjecture, (~v2_struct_0(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.40  cnf(c_0_62, negated_conjecture, (~v2_struct_0(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.40  cnf(c_0_63, negated_conjecture, (r1_tmap_1(esk4_0,esk3_0,k3_tmap_1(esk2_0,esk3_0,esk5_0,esk4_0,esk6_0),esk8_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.40  cnf(c_0_64, negated_conjecture, (esk7_0=esk8_0), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.40  cnf(c_0_65, plain, (v2_struct_0(X1)|v2_struct_0(X2)|v2_struct_0(X3)|m1_pre_topc(X2,k1_tsep_1(X1,X2,X3))|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)|~m1_pre_topc(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_49])).
% 0.19/0.40  cnf(c_0_66, negated_conjecture, (k1_tsep_1(esk2_0,esk4_0,esk4_0)=esk5_0), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_22]), c_0_46]), c_0_37]), c_0_51]), c_0_52]), c_0_23])]), c_0_32]), c_0_53])).
% 0.19/0.40  fof(c_0_67, plain, ![X9, X10]:((~m1_subset_1(X9,k1_zfmisc_1(X10))|r1_tarski(X9,X10))&(~r1_tarski(X9,X10)|m1_subset_1(X9,k1_zfmisc_1(X10)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.19/0.40  fof(c_0_68, plain, ![X25, X26]:(v2_struct_0(X25)|~v2_pre_topc(X25)|~l1_pre_topc(X25)|~m1_subset_1(X26,u1_struct_0(X25))|m1_connsp_2(esk1_2(X25,X26),X25,X26)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[existence_m1_connsp_2])])])])).
% 0.19/0.40  cnf(c_0_69, plain, (v2_pre_topc(X2)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_54])).
% 0.19/0.40  fof(c_0_70, plain, ![X22, X23, X24]:(v2_struct_0(X22)|~v2_pre_topc(X22)|~l1_pre_topc(X22)|~m1_subset_1(X23,u1_struct_0(X22))|(~m1_connsp_2(X24,X22,X23)|m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X22))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_m1_connsp_2])])])])).
% 0.19/0.40  cnf(c_0_71, negated_conjecture, (r1_tmap_1(esk5_0,esk3_0,esk6_0,X1)|v2_struct_0(X2)|v2_struct_0(X3)|~r1_tmap_1(X3,esk3_0,k3_tmap_1(X2,esk3_0,esk5_0,X3,esk6_0),X1)|~m1_connsp_2(X4,esk5_0,X1)|~m1_pre_topc(esk5_0,X2)|~m1_pre_topc(X3,esk5_0)|~v2_pre_topc(X2)|~l1_pre_topc(X2)|~r1_tarski(X4,u1_struct_0(X3))|~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(esk5_0)))|~m1_subset_1(X1,u1_struct_0(esk5_0))|~m1_subset_1(X1,u1_struct_0(X3))), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_56]), c_0_57]), c_0_58]), c_0_59]), c_0_60])]), c_0_61]), c_0_62])).
% 0.19/0.40  cnf(c_0_72, negated_conjecture, (r1_tmap_1(esk4_0,esk3_0,k3_tmap_1(esk2_0,esk3_0,esk5_0,esk4_0,esk6_0),esk7_0)), inference(rw,[status(thm)],[c_0_63, c_0_64])).
% 0.19/0.40  cnf(c_0_73, negated_conjecture, (m1_pre_topc(esk4_0,esk5_0)), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65, c_0_66]), c_0_22]), c_0_52]), c_0_23])]), c_0_32]), c_0_53])).
% 0.19/0.40  cnf(c_0_74, negated_conjecture, (m1_subset_1(esk7_0,u1_struct_0(esk5_0))), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.40  cnf(c_0_75, negated_conjecture, (~r1_tmap_1(esk5_0,esk3_0,esk6_0,esk7_0)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.40  cnf(c_0_76, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_67])).
% 0.19/0.40  cnf(c_0_77, plain, (v2_struct_0(X1)|m1_connsp_2(esk1_2(X1,X2),X1,X2)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_subset_1(X2,u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_68])).
% 0.19/0.40  cnf(c_0_78, negated_conjecture, (v2_pre_topc(esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_69, c_0_33]), c_0_52]), c_0_23])])).
% 0.19/0.40  cnf(c_0_79, plain, (v2_struct_0(X1)|m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_subset_1(X2,u1_struct_0(X1))|~m1_connsp_2(X3,X1,X2)), inference(split_conjunct,[status(thm)],[c_0_70])).
% 0.19/0.40  cnf(c_0_80, negated_conjecture, (~m1_connsp_2(X1,esk5_0,esk7_0)|~r1_tarski(X1,u1_struct_0(esk5_0))), inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71, c_0_72]), c_0_33]), c_0_73]), c_0_52]), c_0_23]), c_0_46]), c_0_74]), c_0_46]), c_0_74])]), c_0_75]), c_0_53]), c_0_32]), c_0_76])).
% 0.19/0.40  cnf(c_0_81, negated_conjecture, (m1_connsp_2(esk1_2(esk5_0,esk7_0),esk5_0,esk7_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_77, c_0_74]), c_0_78]), c_0_36])]), c_0_62])).
% 0.19/0.40  cnf(c_0_82, negated_conjecture, (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk5_0)))|~m1_connsp_2(X1,esk5_0,esk7_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79, c_0_74]), c_0_78]), c_0_36])]), c_0_62])).
% 0.19/0.40  cnf(c_0_83, negated_conjecture, (~r1_tarski(esk1_2(esk5_0,esk7_0),u1_struct_0(esk5_0))), inference(spm,[status(thm)],[c_0_80, c_0_81])).
% 0.19/0.40  cnf(c_0_84, plain, (r1_tarski(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_67])).
% 0.19/0.40  cnf(c_0_85, negated_conjecture, (m1_subset_1(esk1_2(esk5_0,esk7_0),k1_zfmisc_1(u1_struct_0(esk5_0)))), inference(spm,[status(thm)],[c_0_82, c_0_81])).
% 0.19/0.40  cnf(c_0_86, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83, c_0_84]), c_0_85])]), ['proof']).
% 0.19/0.40  # SZS output end CNFRefutation
% 0.19/0.40  # Proof object total steps             : 87
% 0.19/0.40  # Proof object clause steps            : 58
% 0.19/0.40  # Proof object formula steps           : 29
% 0.19/0.40  # Proof object conjectures             : 44
% 0.19/0.40  # Proof object clause conjectures      : 41
% 0.19/0.40  # Proof object formula conjectures     : 3
% 0.19/0.40  # Proof object initial clauses used    : 33
% 0.19/0.40  # Proof object initial formulas used   : 14
% 0.19/0.40  # Proof object generating inferences   : 21
% 0.19/0.40  # Proof object simplifying inferences  : 67
% 0.19/0.40  # Training examples: 0 positive, 0 negative
% 0.19/0.40  # Parsed axioms                        : 14
% 0.19/0.40  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.40  # Initial clauses                      : 36
% 0.19/0.40  # Removed in clause preprocessing      : 0
% 0.19/0.40  # Initial clauses in saturation        : 36
% 0.19/0.40  # Processed clauses                    : 262
% 0.19/0.40  # ...of these trivial                  : 22
% 0.19/0.40  # ...subsumed                          : 52
% 0.19/0.40  # ...remaining for further processing  : 188
% 0.19/0.40  # Other redundant clauses eliminated   : 4
% 0.19/0.40  # Clauses deleted for lack of memory   : 0
% 0.19/0.40  # Backward-subsumed                    : 2
% 0.19/0.40  # Backward-rewritten                   : 13
% 0.19/0.40  # Generated clauses                    : 360
% 0.19/0.40  # ...of the previous two non-trivial   : 301
% 0.19/0.40  # Contextual simplify-reflections      : 4
% 0.19/0.40  # Paramodulations                      : 343
% 0.19/0.40  # Factorizations                       : 8
% 0.19/0.40  # Equation resolutions                 : 9
% 0.19/0.40  # Propositional unsat checks           : 0
% 0.19/0.40  #    Propositional check models        : 0
% 0.19/0.40  #    Propositional check unsatisfiable : 0
% 0.19/0.40  #    Propositional clauses             : 0
% 0.19/0.40  #    Propositional clauses after purity: 0
% 0.19/0.40  #    Propositional unsat core size     : 0
% 0.19/0.40  #    Propositional preprocessing time  : 0.000
% 0.19/0.40  #    Propositional encoding time       : 0.000
% 0.19/0.40  #    Propositional solver time         : 0.000
% 0.19/0.40  #    Success case prop preproc time    : 0.000
% 0.19/0.40  #    Success case prop encoding time   : 0.000
% 0.19/0.40  #    Success case prop solver time     : 0.000
% 0.19/0.40  # Current number of processed clauses  : 135
% 0.19/0.40  #    Positive orientable unit clauses  : 36
% 0.19/0.40  #    Positive unorientable unit clauses: 0
% 0.19/0.40  #    Negative unit clauses             : 6
% 0.19/0.40  #    Non-unit-clauses                  : 93
% 0.19/0.40  # Current number of unprocessed clauses: 103
% 0.19/0.40  # ...number of literals in the above   : 686
% 0.19/0.40  # Current number of archived formulas  : 0
% 0.19/0.40  # Current number of archived clauses   : 51
% 0.19/0.40  # Clause-clause subsumption calls (NU) : 2166
% 0.19/0.40  # Rec. Clause-clause subsumption calls : 504
% 0.19/0.40  # Non-unit clause-clause subsumptions  : 50
% 0.19/0.40  # Unit Clause-clause subsumption calls : 19
% 0.19/0.40  # Rewrite failures with RHS unbound    : 0
% 0.19/0.40  # BW rewrite match attempts            : 12
% 0.19/0.40  # BW rewrite match successes           : 6
% 0.19/0.40  # Condensation attempts                : 0
% 0.19/0.40  # Condensation successes               : 0
% 0.19/0.40  # Termbank termtop insertions          : 11671
% 0.19/0.40  
% 0.19/0.40  # -------------------------------------------------
% 0.19/0.40  # User time                : 0.048 s
% 0.19/0.40  # System time              : 0.005 s
% 0.19/0.40  # Total time               : 0.053 s
% 0.19/0.40  # Maximum resident set size: 1600 pages
%------------------------------------------------------------------------------
