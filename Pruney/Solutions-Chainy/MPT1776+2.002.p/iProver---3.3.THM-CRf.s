%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:23:20 EST 2020

% Result     : Theorem 3.13s
% Output     : CNFRefutation 3.13s
% Verified   : 
% Statistics : Number of formulae       :  238 (2735 expanded)
%              Number of clauses        :  143 ( 505 expanded)
%              Number of leaves         :   24 (1138 expanded)
%              Depth                    :   28
%              Number of atoms          : 1784 (52526 expanded)
%              Number of equality atoms :  472 (3967 expanded)
%              Maximal formula depth    :   24 (   8 average)
%              Maximal clause size      :   46 (   6 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f15,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_pre_topc(X1)
            & v2_pre_topc(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( ( m1_pre_topc(X2,X1)
                & ~ v2_struct_0(X2) )
             => ! [X3] :
                  ( ( m1_pre_topc(X3,X1)
                    & ~ v2_struct_0(X3) )
                 => ! [X4] :
                      ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0))))
                        & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0))
                        & v1_funct_1(X4) )
                     => ( ( m1_pre_topc(X2,X3)
                          & m1_pre_topc(X2,X1)
                          & v1_tsep_1(X2,X1) )
                       => ! [X5] :
                            ( m1_subset_1(X5,u1_struct_0(X3))
                           => ! [X6] :
                                ( m1_subset_1(X6,u1_struct_0(X2))
                               => ( X5 = X6
                                 => ( r1_tmap_1(X3,X0,X4,X5)
                                  <=> r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) ) ) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( l1_pre_topc(X1)
              & v2_pre_topc(X1)
              & ~ v2_struct_0(X1) )
           => ! [X2] :
                ( ( m1_pre_topc(X2,X1)
                  & ~ v2_struct_0(X2) )
               => ! [X3] :
                    ( ( m1_pre_topc(X3,X1)
                      & ~ v2_struct_0(X3) )
                   => ! [X4] :
                        ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0))))
                          & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0))
                          & v1_funct_1(X4) )
                       => ( ( m1_pre_topc(X2,X3)
                            & m1_pre_topc(X2,X1)
                            & v1_tsep_1(X2,X1) )
                         => ! [X5] :
                              ( m1_subset_1(X5,u1_struct_0(X3))
                             => ! [X6] :
                                  ( m1_subset_1(X6,u1_struct_0(X2))
                                 => ( X5 = X6
                                   => ( r1_tmap_1(X3,X0,X4,X5)
                                    <=> r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) ) ) ) ) ) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f15])).

fof(f39,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ? [X6] :
                              ( ( r1_tmap_1(X3,X0,X4,X5)
                              <~> r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) )
                              & X5 = X6
                              & m1_subset_1(X6,u1_struct_0(X2)) )
                          & m1_subset_1(X5,u1_struct_0(X3)) )
                      & m1_pre_topc(X2,X3)
                      & m1_pre_topc(X2,X1)
                      & v1_tsep_1(X2,X1)
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0))))
                      & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0))
                      & v1_funct_1(X4) )
                  & m1_pre_topc(X3,X1)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,X1)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f40,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ? [X6] :
                              ( ( r1_tmap_1(X3,X0,X4,X5)
                              <~> r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) )
                              & X5 = X6
                              & m1_subset_1(X6,u1_struct_0(X2)) )
                          & m1_subset_1(X5,u1_struct_0(X3)) )
                      & m1_pre_topc(X2,X3)
                      & m1_pre_topc(X2,X1)
                      & v1_tsep_1(X2,X1)
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0))))
                      & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0))
                      & v1_funct_1(X4) )
                  & m1_pre_topc(X3,X1)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,X1)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f39])).

fof(f47,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ? [X6] :
                              ( ( ~ r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
                                | ~ r1_tmap_1(X3,X0,X4,X5) )
                              & ( r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
                                | r1_tmap_1(X3,X0,X4,X5) )
                              & X5 = X6
                              & m1_subset_1(X6,u1_struct_0(X2)) )
                          & m1_subset_1(X5,u1_struct_0(X3)) )
                      & m1_pre_topc(X2,X3)
                      & m1_pre_topc(X2,X1)
                      & v1_tsep_1(X2,X1)
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0))))
                      & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0))
                      & v1_funct_1(X4) )
                  & m1_pre_topc(X3,X1)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,X1)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f40])).

fof(f48,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ? [X6] :
                              ( ( ~ r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
                                | ~ r1_tmap_1(X3,X0,X4,X5) )
                              & ( r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
                                | r1_tmap_1(X3,X0,X4,X5) )
                              & X5 = X6
                              & m1_subset_1(X6,u1_struct_0(X2)) )
                          & m1_subset_1(X5,u1_struct_0(X3)) )
                      & m1_pre_topc(X2,X3)
                      & m1_pre_topc(X2,X1)
                      & v1_tsep_1(X2,X1)
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0))))
                      & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0))
                      & v1_funct_1(X4) )
                  & m1_pre_topc(X3,X1)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,X1)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f47])).

fof(f55,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( ? [X6] :
          ( ( ~ r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
            | ~ r1_tmap_1(X3,X0,X4,X5) )
          & ( r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
            | r1_tmap_1(X3,X0,X4,X5) )
          & X5 = X6
          & m1_subset_1(X6,u1_struct_0(X2)) )
     => ( ( ~ r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),sK7)
          | ~ r1_tmap_1(X3,X0,X4,X5) )
        & ( r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),sK7)
          | r1_tmap_1(X3,X0,X4,X5) )
        & sK7 = X5
        & m1_subset_1(sK7,u1_struct_0(X2)) ) ) ),
    introduced(choice_axiom,[])).

fof(f54,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( ? [X5] :
          ( ? [X6] :
              ( ( ~ r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
                | ~ r1_tmap_1(X3,X0,X4,X5) )
              & ( r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
                | r1_tmap_1(X3,X0,X4,X5) )
              & X5 = X6
              & m1_subset_1(X6,u1_struct_0(X2)) )
          & m1_subset_1(X5,u1_struct_0(X3)) )
     => ( ? [X6] :
            ( ( ~ r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
              | ~ r1_tmap_1(X3,X0,X4,sK6) )
            & ( r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
              | r1_tmap_1(X3,X0,X4,sK6) )
            & sK6 = X6
            & m1_subset_1(X6,u1_struct_0(X2)) )
        & m1_subset_1(sK6,u1_struct_0(X3)) ) ) ),
    introduced(choice_axiom,[])).

fof(f53,plain,(
    ! [X2,X0,X3,X1] :
      ( ? [X4] :
          ( ? [X5] :
              ( ? [X6] :
                  ( ( ~ r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
                    | ~ r1_tmap_1(X3,X0,X4,X5) )
                  & ( r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
                    | r1_tmap_1(X3,X0,X4,X5) )
                  & X5 = X6
                  & m1_subset_1(X6,u1_struct_0(X2)) )
              & m1_subset_1(X5,u1_struct_0(X3)) )
          & m1_pre_topc(X2,X3)
          & m1_pre_topc(X2,X1)
          & v1_tsep_1(X2,X1)
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0))))
          & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0))
          & v1_funct_1(X4) )
     => ( ? [X5] :
            ( ? [X6] :
                ( ( ~ r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,sK5),X6)
                  | ~ r1_tmap_1(X3,X0,sK5,X5) )
                & ( r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,sK5),X6)
                  | r1_tmap_1(X3,X0,sK5,X5) )
                & X5 = X6
                & m1_subset_1(X6,u1_struct_0(X2)) )
            & m1_subset_1(X5,u1_struct_0(X3)) )
        & m1_pre_topc(X2,X3)
        & m1_pre_topc(X2,X1)
        & v1_tsep_1(X2,X1)
        & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0))))
        & v1_funct_2(sK5,u1_struct_0(X3),u1_struct_0(X0))
        & v1_funct_1(sK5) ) ) ),
    introduced(choice_axiom,[])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ? [X4] :
              ( ? [X5] :
                  ( ? [X6] :
                      ( ( ~ r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
                        | ~ r1_tmap_1(X3,X0,X4,X5) )
                      & ( r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
                        | r1_tmap_1(X3,X0,X4,X5) )
                      & X5 = X6
                      & m1_subset_1(X6,u1_struct_0(X2)) )
                  & m1_subset_1(X5,u1_struct_0(X3)) )
              & m1_pre_topc(X2,X3)
              & m1_pre_topc(X2,X1)
              & v1_tsep_1(X2,X1)
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0))))
              & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0))
              & v1_funct_1(X4) )
          & m1_pre_topc(X3,X1)
          & ~ v2_struct_0(X3) )
     => ( ? [X4] :
            ( ? [X5] :
                ( ? [X6] :
                    ( ( ~ r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,sK4,X2,X4),X6)
                      | ~ r1_tmap_1(sK4,X0,X4,X5) )
                    & ( r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,sK4,X2,X4),X6)
                      | r1_tmap_1(sK4,X0,X4,X5) )
                    & X5 = X6
                    & m1_subset_1(X6,u1_struct_0(X2)) )
                & m1_subset_1(X5,u1_struct_0(sK4)) )
            & m1_pre_topc(X2,sK4)
            & m1_pre_topc(X2,X1)
            & v1_tsep_1(X2,X1)
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0))))
            & v1_funct_2(X4,u1_struct_0(sK4),u1_struct_0(X0))
            & v1_funct_1(X4) )
        & m1_pre_topc(sK4,X1)
        & ~ v2_struct_0(sK4) ) ) ),
    introduced(choice_axiom,[])).

fof(f51,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ? [X4] :
                  ( ? [X5] :
                      ( ? [X6] :
                          ( ( ~ r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
                            | ~ r1_tmap_1(X3,X0,X4,X5) )
                          & ( r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
                            | r1_tmap_1(X3,X0,X4,X5) )
                          & X5 = X6
                          & m1_subset_1(X6,u1_struct_0(X2)) )
                      & m1_subset_1(X5,u1_struct_0(X3)) )
                  & m1_pre_topc(X2,X3)
                  & m1_pre_topc(X2,X1)
                  & v1_tsep_1(X2,X1)
                  & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0))))
                  & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0))
                  & v1_funct_1(X4) )
              & m1_pre_topc(X3,X1)
              & ~ v2_struct_0(X3) )
          & m1_pre_topc(X2,X1)
          & ~ v2_struct_0(X2) )
     => ( ? [X3] :
            ( ? [X4] :
                ( ? [X5] :
                    ( ? [X6] :
                        ( ( ~ r1_tmap_1(sK3,X0,k3_tmap_1(X1,X0,X3,sK3,X4),X6)
                          | ~ r1_tmap_1(X3,X0,X4,X5) )
                        & ( r1_tmap_1(sK3,X0,k3_tmap_1(X1,X0,X3,sK3,X4),X6)
                          | r1_tmap_1(X3,X0,X4,X5) )
                        & X5 = X6
                        & m1_subset_1(X6,u1_struct_0(sK3)) )
                    & m1_subset_1(X5,u1_struct_0(X3)) )
                & m1_pre_topc(sK3,X3)
                & m1_pre_topc(sK3,X1)
                & v1_tsep_1(sK3,X1)
                & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0))))
                & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0))
                & v1_funct_1(X4) )
            & m1_pre_topc(X3,X1)
            & ~ v2_struct_0(X3) )
        & m1_pre_topc(sK3,X1)
        & ~ v2_struct_0(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f50,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ? [X6] :
                              ( ( ~ r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
                                | ~ r1_tmap_1(X3,X0,X4,X5) )
                              & ( r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
                                | r1_tmap_1(X3,X0,X4,X5) )
                              & X5 = X6
                              & m1_subset_1(X6,u1_struct_0(X2)) )
                          & m1_subset_1(X5,u1_struct_0(X3)) )
                      & m1_pre_topc(X2,X3)
                      & m1_pre_topc(X2,X1)
                      & v1_tsep_1(X2,X1)
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0))))
                      & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0))
                      & v1_funct_1(X4) )
                  & m1_pre_topc(X3,X1)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,X1)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
     => ( ? [X2] :
            ( ? [X3] :
                ( ? [X4] :
                    ( ? [X5] :
                        ( ? [X6] :
                            ( ( ~ r1_tmap_1(X2,X0,k3_tmap_1(sK2,X0,X3,X2,X4),X6)
                              | ~ r1_tmap_1(X3,X0,X4,X5) )
                            & ( r1_tmap_1(X2,X0,k3_tmap_1(sK2,X0,X3,X2,X4),X6)
                              | r1_tmap_1(X3,X0,X4,X5) )
                            & X5 = X6
                            & m1_subset_1(X6,u1_struct_0(X2)) )
                        & m1_subset_1(X5,u1_struct_0(X3)) )
                    & m1_pre_topc(X2,X3)
                    & m1_pre_topc(X2,sK2)
                    & v1_tsep_1(X2,sK2)
                    & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0))))
                    & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0))
                    & v1_funct_1(X4) )
                & m1_pre_topc(X3,sK2)
                & ~ v2_struct_0(X3) )
            & m1_pre_topc(X2,sK2)
            & ~ v2_struct_0(X2) )
        & l1_pre_topc(sK2)
        & v2_pre_topc(sK2)
        & ~ v2_struct_0(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f49,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( ? [X4] :
                        ( ? [X5] :
                            ( ? [X6] :
                                ( ( ~ r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
                                  | ~ r1_tmap_1(X3,X0,X4,X5) )
                                & ( r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
                                  | r1_tmap_1(X3,X0,X4,X5) )
                                & X5 = X6
                                & m1_subset_1(X6,u1_struct_0(X2)) )
                            & m1_subset_1(X5,u1_struct_0(X3)) )
                        & m1_pre_topc(X2,X3)
                        & m1_pre_topc(X2,X1)
                        & v1_tsep_1(X2,X1)
                        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0))))
                        & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0))
                        & v1_funct_1(X4) )
                    & m1_pre_topc(X3,X1)
                    & ~ v2_struct_0(X3) )
                & m1_pre_topc(X2,X1)
                & ~ v2_struct_0(X2) )
            & l1_pre_topc(X1)
            & v2_pre_topc(X1)
            & ~ v2_struct_0(X1) )
        & l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ? [X6] :
                              ( ( ~ r1_tmap_1(X2,sK1,k3_tmap_1(X1,sK1,X3,X2,X4),X6)
                                | ~ r1_tmap_1(X3,sK1,X4,X5) )
                              & ( r1_tmap_1(X2,sK1,k3_tmap_1(X1,sK1,X3,X2,X4),X6)
                                | r1_tmap_1(X3,sK1,X4,X5) )
                              & X5 = X6
                              & m1_subset_1(X6,u1_struct_0(X2)) )
                          & m1_subset_1(X5,u1_struct_0(X3)) )
                      & m1_pre_topc(X2,X3)
                      & m1_pre_topc(X2,X1)
                      & v1_tsep_1(X2,X1)
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(sK1))))
                      & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(sK1))
                      & v1_funct_1(X4) )
                  & m1_pre_topc(X3,X1)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,X1)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(sK1)
      & v2_pre_topc(sK1)
      & ~ v2_struct_0(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f56,plain,
    ( ( ~ r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7)
      | ~ r1_tmap_1(sK4,sK1,sK5,sK6) )
    & ( r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7)
      | r1_tmap_1(sK4,sK1,sK5,sK6) )
    & sK6 = sK7
    & m1_subset_1(sK7,u1_struct_0(sK3))
    & m1_subset_1(sK6,u1_struct_0(sK4))
    & m1_pre_topc(sK3,sK4)
    & m1_pre_topc(sK3,sK2)
    & v1_tsep_1(sK3,sK2)
    & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK1))))
    & v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK1))
    & v1_funct_1(sK5)
    & m1_pre_topc(sK4,sK2)
    & ~ v2_struct_0(sK4)
    & m1_pre_topc(sK3,sK2)
    & ~ v2_struct_0(sK3)
    & l1_pre_topc(sK2)
    & v2_pre_topc(sK2)
    & ~ v2_struct_0(sK2)
    & l1_pre_topc(sK1)
    & v2_pre_topc(sK1)
    & ~ v2_struct_0(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4,sK5,sK6,sK7])],[f48,f55,f54,f53,f52,f51,f50,f49])).

fof(f88,plain,(
    m1_pre_topc(sK4,sK2) ),
    inference(cnf_transformation,[],[f56])).

fof(f94,plain,(
    m1_pre_topc(sK3,sK4) ),
    inference(cnf_transformation,[],[f56])).

fof(f9,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_pre_topc(X1)
            & v2_pre_topc(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( m1_pre_topc(X2,X0)
             => ! [X3] :
                  ( m1_pre_topc(X3,X0)
                 => ! [X4] :
                      ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                        & v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
                        & v1_funct_1(X4) )
                     => ( m1_pre_topc(X3,X2)
                       => k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4)
                      | ~ m1_pre_topc(X3,X2)
                      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                      | ~ v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
                      | ~ v1_funct_1(X4) )
                  | ~ m1_pre_topc(X3,X0) )
              | ~ m1_pre_topc(X2,X0) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f29,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4)
                      | ~ m1_pre_topc(X3,X2)
                      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                      | ~ v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
                      | ~ v1_funct_1(X4) )
                  | ~ m1_pre_topc(X3,X0) )
              | ~ m1_pre_topc(X2,X0) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f28])).

fof(f71,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4)
      | ~ m1_pre_topc(X3,X2)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
      | ~ v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
      | ~ v1_funct_1(X4)
      | ~ m1_pre_topc(X3,X0)
      | ~ m1_pre_topc(X2,X0)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f90,plain,(
    v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f56])).

fof(f89,plain,(
    v1_funct_1(sK5) ),
    inference(cnf_transformation,[],[f56])).

fof(f14,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ! [X2] :
              ( m1_pre_topc(X2,X1)
             => m1_pre_topc(X2,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( m1_pre_topc(X2,X0)
              | ~ m1_pre_topc(X2,X1) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f38,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( m1_pre_topc(X2,X0)
              | ~ m1_pre_topc(X2,X1) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f37])).

fof(f78,plain,(
    ! [X2,X0,X1] :
      ( m1_pre_topc(X2,X0)
      | ~ m1_pre_topc(X2,X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f79,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f56])).

fof(f80,plain,(
    v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f56])).

fof(f81,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f56])).

fof(f91,plain,(
    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f56])).

fof(f8,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_pre_topc(X1)
            & v2_pre_topc(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
                & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
                & v1_funct_1(X2) )
             => ! [X3] :
                  ( m1_pre_topc(X3,X0)
                 => k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3))
                  | ~ m1_pre_topc(X3,X0) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3))
                  | ~ m1_pre_topc(X3,X0) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
              | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f26])).

fof(f70,plain,(
    ! [X2,X0,X3,X1] :
      ( k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3))
      | ~ m1_pre_topc(X3,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
      | ~ v1_funct_1(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f84,plain,(
    l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f56])).

fof(f87,plain,(
    ~ v2_struct_0(sK4) ),
    inference(cnf_transformation,[],[f56])).

fof(f5,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => l1_pre_topc(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( l1_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f67,plain,(
    ! [X0,X1] :
      ( l1_pre_topc(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f83,plain,(
    v2_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f56])).

fof(f3,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => v2_pre_topc(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f18])).

fof(f65,plain,(
    ! [X0,X1] :
      ( v2_pre_topc(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f82,plain,(
    ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f56])).

fof(f98,plain,
    ( r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7)
    | r1_tmap_1(sK4,sK1,sK5,sK6) ),
    inference(cnf_transformation,[],[f56])).

fof(f97,plain,(
    sK6 = sK7 ),
    inference(cnf_transformation,[],[f56])).

fof(f85,plain,(
    ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f56])).

fof(f96,plain,(
    m1_subset_1(sK7,u1_struct_0(sK3)) ),
    inference(cnf_transformation,[],[f56])).

fof(f13,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_pre_topc(X1)
            & v2_pre_topc(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
                & v1_funct_1(X2) )
             => ! [X3] :
                  ( ( m1_pre_topc(X3,X1)
                    & v1_tsep_1(X3,X1)
                    & ~ v2_struct_0(X3) )
                 => ! [X4] :
                      ( m1_subset_1(X4,u1_struct_0(X1))
                     => ! [X5] :
                          ( m1_subset_1(X5,u1_struct_0(X3))
                         => ( X4 = X5
                           => ( r1_tmap_1(X1,X0,X2,X4)
                            <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( ( r1_tmap_1(X1,X0,X2,X4)
                          <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) )
                          | X4 != X5
                          | ~ m1_subset_1(X5,u1_struct_0(X3)) )
                      | ~ m1_subset_1(X4,u1_struct_0(X1)) )
                  | ~ m1_pre_topc(X3,X1)
                  | ~ v1_tsep_1(X3,X1)
                  | v2_struct_0(X3) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
              | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f36,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( ( r1_tmap_1(X1,X0,X2,X4)
                          <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) )
                          | X4 != X5
                          | ~ m1_subset_1(X5,u1_struct_0(X3)) )
                      | ~ m1_subset_1(X4,u1_struct_0(X1)) )
                  | ~ m1_pre_topc(X3,X1)
                  | ~ v1_tsep_1(X3,X1)
                  | v2_struct_0(X3) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
              | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f35])).

fof(f46,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( ( ( r1_tmap_1(X1,X0,X2,X4)
                              | ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) )
                            & ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
                              | ~ r1_tmap_1(X1,X0,X2,X4) ) )
                          | X4 != X5
                          | ~ m1_subset_1(X5,u1_struct_0(X3)) )
                      | ~ m1_subset_1(X4,u1_struct_0(X1)) )
                  | ~ m1_pre_topc(X3,X1)
                  | ~ v1_tsep_1(X3,X1)
                  | v2_struct_0(X3) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
              | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f36])).

fof(f76,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
      | ~ r1_tmap_1(X1,X0,X2,X4)
      | X4 != X5
      | ~ m1_subset_1(X5,u1_struct_0(X3))
      | ~ m1_subset_1(X4,u1_struct_0(X1))
      | ~ m1_pre_topc(X3,X1)
      | ~ v1_tsep_1(X3,X1)
      | v2_struct_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
      | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
      | ~ v1_funct_1(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f46])).

fof(f104,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
      | ~ r1_tmap_1(X1,X0,X2,X5)
      | ~ m1_subset_1(X5,u1_struct_0(X3))
      | ~ m1_subset_1(X5,u1_struct_0(X1))
      | ~ m1_pre_topc(X3,X1)
      | ~ v1_tsep_1(X3,X1)
      | v2_struct_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
      | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
      | ~ v1_funct_1(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f76])).

fof(f12,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_pre_topc(X1)
            & v2_pre_topc(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
                & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
                & v1_funct_1(X2) )
             => ! [X3] :
                  ( ( m1_pre_topc(X3,X1)
                    & ~ v2_struct_0(X3) )
                 => ! [X4] :
                      ( m1_subset_1(X4,u1_struct_0(X1))
                     => ! [X5] :
                          ( m1_subset_1(X5,u1_struct_0(X3))
                         => ( ( r1_tmap_1(X1,X0,X2,X4)
                              & X4 = X5 )
                           => r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
                          | ~ r1_tmap_1(X1,X0,X2,X4)
                          | X4 != X5
                          | ~ m1_subset_1(X5,u1_struct_0(X3)) )
                      | ~ m1_subset_1(X4,u1_struct_0(X1)) )
                  | ~ m1_pre_topc(X3,X1)
                  | v2_struct_0(X3) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
              | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f34,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
                          | ~ r1_tmap_1(X1,X0,X2,X4)
                          | X4 != X5
                          | ~ m1_subset_1(X5,u1_struct_0(X3)) )
                      | ~ m1_subset_1(X4,u1_struct_0(X1)) )
                  | ~ m1_pre_topc(X3,X1)
                  | v2_struct_0(X3) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
              | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
              | ~ v1_funct_1(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f33])).

fof(f75,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
      | ~ r1_tmap_1(X1,X0,X2,X4)
      | X4 != X5
      | ~ m1_subset_1(X5,u1_struct_0(X3))
      | ~ m1_subset_1(X4,u1_struct_0(X1))
      | ~ m1_pre_topc(X3,X1)
      | v2_struct_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
      | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
      | ~ v1_funct_1(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f102,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
      | ~ r1_tmap_1(X1,X0,X2,X5)
      | ~ m1_subset_1(X5,u1_struct_0(X3))
      | ~ m1_subset_1(X5,u1_struct_0(X1))
      | ~ m1_pre_topc(X3,X1)
      | v2_struct_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
      | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
      | ~ v1_funct_1(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f75])).

fof(f7,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_pre_topc(X1,X0)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X1))
             => m1_subset_1(X2,u1_struct_0(X0)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
              | ~ m1_subset_1(X2,u1_struct_0(X1)) )
          | ~ m1_pre_topc(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( m1_subset_1(X2,u1_struct_0(X0))
              | ~ m1_subset_1(X2,u1_struct_0(X1)) )
          | ~ m1_pre_topc(X1,X0)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f24])).

fof(f69,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X2,u1_struct_0(X0))
      | ~ m1_subset_1(X2,u1_struct_0(X1))
      | ~ m1_pre_topc(X1,X0)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f99,plain,
    ( ~ r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7)
    | ~ r1_tmap_1(sK4,sK1,sK5,sK6) ),
    inference(cnf_transformation,[],[f56])).

fof(f77,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( r1_tmap_1(X1,X0,X2,X4)
      | ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
      | X4 != X5
      | ~ m1_subset_1(X5,u1_struct_0(X3))
      | ~ m1_subset_1(X4,u1_struct_0(X1))
      | ~ m1_pre_topc(X3,X1)
      | ~ v1_tsep_1(X3,X1)
      | v2_struct_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
      | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
      | ~ v1_funct_1(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f46])).

fof(f103,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r1_tmap_1(X1,X0,X2,X5)
      | ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)
      | ~ m1_subset_1(X5,u1_struct_0(X3))
      | ~ m1_subset_1(X5,u1_struct_0(X1))
      | ~ m1_pre_topc(X3,X1)
      | ~ v1_tsep_1(X3,X1)
      | v2_struct_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0))))
      | ~ v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0))
      | ~ v1_funct_1(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f77])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) ) )
      & ( ~ v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( ( ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) )
        | ~ v1_xboole_0(X0) )
      & ( ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) )
        | v1_xboole_0(X0) ) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f45,plain,(
    ! [X0,X1] :
      ( ( ( ( m1_subset_1(X1,X0)
            | ~ v1_xboole_0(X1) )
          & ( v1_xboole_0(X1)
            | ~ m1_subset_1(X1,X0) ) )
        | ~ v1_xboole_0(X0) )
      & ( ( ( m1_subset_1(X1,X0)
            | ~ r2_hidden(X1,X0) )
          & ( r2_hidden(X1,X0)
            | ~ m1_subset_1(X1,X0) ) )
        | v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f63,plain,(
    ! [X0,X1] :
      ( v1_xboole_0(X1)
      | ~ m1_subset_1(X1,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( k1_zfmisc_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> r1_tarski(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ? [X2] :
            ( ( ~ r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) )
            & ( r1_tarski(X2,X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | ~ r1_tarski(X2,X0) )
            & ( r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f42,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ? [X2] :
            ( ( ~ r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) )
            & ( r1_tarski(X2,X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(rectify,[],[f41])).

fof(f43,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X2,X0)
            | ~ r2_hidden(X2,X1) )
          & ( r1_tarski(X2,X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ~ r1_tarski(sK0(X0,X1),X0)
          | ~ r2_hidden(sK0(X0,X1),X1) )
        & ( r1_tarski(sK0(X0,X1),X0)
          | r2_hidden(sK0(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f44,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ( ( ~ r1_tarski(sK0(X0,X1),X0)
            | ~ r2_hidden(sK0(X0,X1),X1) )
          & ( r1_tarski(sK0(X0,X1),X0)
            | r2_hidden(sK0(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f42,f43])).

fof(f57,plain,(
    ! [X0,X3,X1] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,X1)
      | k1_zfmisc_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f44])).

fof(f101,plain,(
    ! [X0,X3] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,k1_zfmisc_1(X0)) ) ),
    inference(equality_resolution,[],[f57])).

fof(f86,plain,(
    m1_pre_topc(sK3,sK2) ),
    inference(cnf_transformation,[],[f56])).

fof(f10,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( m1_pre_topc(X1,X0)
            & v1_tsep_1(X1,X0) )
         => ! [X2] :
              ( ( m1_pre_topc(X2,X0)
                & ~ v2_struct_0(X2) )
             => ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
               => ( m1_pre_topc(X1,X2)
                  & v1_tsep_1(X1,X2) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( m1_pre_topc(X1,X2)
                & v1_tsep_1(X1,X2) )
              | ~ r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
              | ~ m1_pre_topc(X2,X0)
              | v2_struct_0(X2) )
          | ~ m1_pre_topc(X1,X0)
          | ~ v1_tsep_1(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( m1_pre_topc(X1,X2)
                & v1_tsep_1(X1,X2) )
              | ~ r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
              | ~ m1_pre_topc(X2,X0)
              | v2_struct_0(X2) )
          | ~ m1_pre_topc(X1,X0)
          | ~ v1_tsep_1(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f30])).

fof(f72,plain,(
    ! [X2,X0,X1] :
      ( v1_tsep_1(X1,X2)
      | ~ r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ m1_pre_topc(X1,X0)
      | ~ v1_tsep_1(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f61,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f4,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f66,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f6,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f23,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f22])).

fof(f68,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f11,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f74,plain,(
    ! [X0,X1] :
      ( m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f92,plain,(
    v1_tsep_1(sK3,sK2) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_33,negated_conjecture,
    ( m1_pre_topc(sK4,sK2) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_2714,plain,
    ( m1_pre_topc(sK4,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_33])).

cnf(c_27,negated_conjecture,
    ( m1_pre_topc(sK3,sK4) ),
    inference(cnf_transformation,[],[f94])).

cnf(c_2718,plain,
    ( m1_pre_topc(sK3,sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_14,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_pre_topc(X3,X4)
    | ~ m1_pre_topc(X3,X1)
    | ~ m1_pre_topc(X1,X4)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ v1_funct_1(X0)
    | v2_struct_0(X4)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X4)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X4)
    | ~ v2_pre_topc(X2)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k3_tmap_1(X4,X2,X1,X3,X0) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_31,negated_conjecture,
    ( v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_861,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_pre_topc(X1,X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X4))))
    | ~ v1_funct_1(X3)
    | v2_struct_0(X4)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X4)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X4)
    | ~ v2_pre_topc(X2)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X4),X3,u1_struct_0(X0)) = k3_tmap_1(X2,X4,X1,X0,X3)
    | u1_struct_0(X1) != u1_struct_0(sK4)
    | u1_struct_0(X4) != u1_struct_0(sK1)
    | sK5 != X3 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_31])).

cnf(c_862,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_pre_topc(X1,X2)
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X3))))
    | ~ v1_funct_1(sK5)
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X3)
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X3)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X3),sK5,u1_struct_0(X0)) = k3_tmap_1(X2,X3,X1,X0,sK5)
    | u1_struct_0(X1) != u1_struct_0(sK4)
    | u1_struct_0(X3) != u1_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_861])).

cnf(c_32,negated_conjecture,
    ( v1_funct_1(sK5) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_866,plain,
    ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X3))))
    | ~ m1_pre_topc(X1,X2)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_pre_topc(X0,X1)
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X3)
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X3)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X3),sK5,u1_struct_0(X0)) = k3_tmap_1(X2,X3,X1,X0,sK5)
    | u1_struct_0(X1) != u1_struct_0(sK4)
    | u1_struct_0(X3) != u1_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_862,c_32])).

cnf(c_867,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_pre_topc(X1,X2)
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X3))))
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X3)
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X3)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X3),sK5,u1_struct_0(X0)) = k3_tmap_1(X2,X3,X1,X0,sK5)
    | u1_struct_0(X1) != u1_struct_0(sK4)
    | u1_struct_0(X3) != u1_struct_0(sK1) ),
    inference(renaming,[status(thm)],[c_866])).

cnf(c_21,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X0)
    | m1_pre_topc(X2,X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_898,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X1,X2)
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X3))))
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X3)
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X3)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X3),sK5,u1_struct_0(X0)) = k3_tmap_1(X2,X3,X1,X0,sK5)
    | u1_struct_0(X1) != u1_struct_0(sK4)
    | u1_struct_0(X3) != u1_struct_0(sK1) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_867,c_21])).

cnf(c_2704,plain,
    ( k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),sK5,u1_struct_0(X2)) = k3_tmap_1(X3,X1,X0,X2,sK5)
    | u1_struct_0(X0) != u1_struct_0(sK4)
    | u1_struct_0(X1) != u1_struct_0(sK1)
    | m1_pre_topc(X2,X0) != iProver_top
    | m1_pre_topc(X0,X3) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) != iProver_top
    | v2_struct_0(X3) = iProver_top
    | v2_struct_0(X1) = iProver_top
    | l1_pre_topc(X3) != iProver_top
    | l1_pre_topc(X1) != iProver_top
    | v2_pre_topc(X3) != iProver_top
    | v2_pre_topc(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_898])).

cnf(c_4345,plain,
    ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(X0),sK5,u1_struct_0(X1)) = k3_tmap_1(X2,X0,sK4,X1,sK5)
    | u1_struct_0(X0) != u1_struct_0(sK1)
    | m1_pre_topc(X1,sK4) != iProver_top
    | m1_pre_topc(sK4,X2) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(X2) = iProver_top
    | l1_pre_topc(X0) != iProver_top
    | l1_pre_topc(X2) != iProver_top
    | v2_pre_topc(X0) != iProver_top
    | v2_pre_topc(X2) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_2704])).

cnf(c_4700,plain,
    ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK1),sK5,u1_struct_0(X0)) = k3_tmap_1(X1,sK1,sK4,X0,sK5)
    | m1_pre_topc(X0,sK4) != iProver_top
    | m1_pre_topc(sK4,X1) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK1)))) != iProver_top
    | v2_struct_0(X1) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(X1) != iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | v2_pre_topc(X1) != iProver_top
    | v2_pre_topc(sK1) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_4345])).

cnf(c_42,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_43,plain,
    ( v2_struct_0(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_42])).

cnf(c_41,negated_conjecture,
    ( v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_44,plain,
    ( v2_pre_topc(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_41])).

cnf(c_40,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_45,plain,
    ( l1_pre_topc(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_40])).

cnf(c_30,negated_conjecture,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f91])).

cnf(c_55,plain,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK1)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_30])).

cnf(c_5521,plain,
    ( v2_pre_topc(X1) != iProver_top
    | v2_struct_0(X1) = iProver_top
    | k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK1),sK5,u1_struct_0(X0)) = k3_tmap_1(X1,sK1,sK4,X0,sK5)
    | m1_pre_topc(X0,sK4) != iProver_top
    | m1_pre_topc(sK4,X1) != iProver_top
    | l1_pre_topc(X1) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4700,c_43,c_44,c_45,c_55])).

cnf(c_5522,plain,
    ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK1),sK5,u1_struct_0(X0)) = k3_tmap_1(X1,sK1,sK4,X0,sK5)
    | m1_pre_topc(X0,sK4) != iProver_top
    | m1_pre_topc(sK4,X1) != iProver_top
    | v2_struct_0(X1) = iProver_top
    | l1_pre_topc(X1) != iProver_top
    | v2_pre_topc(X1) != iProver_top ),
    inference(renaming,[status(thm)],[c_5521])).

cnf(c_5533,plain,
    ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK1),sK5,u1_struct_0(sK3)) = k3_tmap_1(X0,sK1,sK4,sK3,sK5)
    | m1_pre_topc(sK4,X0) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | l1_pre_topc(X0) != iProver_top
    | v2_pre_topc(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_2718,c_5522])).

cnf(c_13,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_pre_topc(X3,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ v1_funct_1(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k2_tmap_1(X1,X2,X0,X3) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_912,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X3))))
    | ~ v1_funct_1(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X3)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X3)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X3),X2,u1_struct_0(X0)) = k2_tmap_1(X1,X3,X2,X0)
    | u1_struct_0(X1) != u1_struct_0(sK4)
    | u1_struct_0(X3) != u1_struct_0(sK1)
    | sK5 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_31])).

cnf(c_913,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ v1_funct_1(sK5)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),sK5,u1_struct_0(X0)) = k2_tmap_1(X1,X2,sK5,X0)
    | u1_struct_0(X1) != u1_struct_0(sK4)
    | u1_struct_0(X2) != u1_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_912])).

cnf(c_917,plain,
    ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ m1_pre_topc(X0,X1)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),sK5,u1_struct_0(X0)) = k2_tmap_1(X1,X2,sK5,X0)
    | u1_struct_0(X1) != u1_struct_0(sK4)
    | u1_struct_0(X2) != u1_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_913,c_32])).

cnf(c_918,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),sK5,u1_struct_0(X0)) = k2_tmap_1(X1,X2,sK5,X0)
    | u1_struct_0(X1) != u1_struct_0(sK4)
    | u1_struct_0(X2) != u1_struct_0(sK1) ),
    inference(renaming,[status(thm)],[c_917])).

cnf(c_2703,plain,
    ( k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),sK5,u1_struct_0(X2)) = k2_tmap_1(X0,X1,sK5,X2)
    | u1_struct_0(X0) != u1_struct_0(sK4)
    | u1_struct_0(X1) != u1_struct_0(sK1)
    | m1_pre_topc(X2,X0) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(X1) = iProver_top
    | l1_pre_topc(X0) != iProver_top
    | l1_pre_topc(X1) != iProver_top
    | v2_pre_topc(X0) != iProver_top
    | v2_pre_topc(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_918])).

cnf(c_3714,plain,
    ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(X0),sK5,u1_struct_0(X1)) = k2_tmap_1(sK4,X0,sK5,X1)
    | u1_struct_0(X0) != u1_struct_0(sK1)
    | m1_pre_topc(X1,sK4) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(sK4) = iProver_top
    | l1_pre_topc(X0) != iProver_top
    | l1_pre_topc(sK4) != iProver_top
    | v2_pre_topc(X0) != iProver_top
    | v2_pre_topc(sK4) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_2703])).

cnf(c_37,negated_conjecture,
    ( l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_48,plain,
    ( l1_pre_topc(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_37])).

cnf(c_34,negated_conjecture,
    ( ~ v2_struct_0(sK4) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_51,plain,
    ( v2_struct_0(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_34])).

cnf(c_1760,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_3104,plain,
    ( u1_struct_0(sK4) = u1_struct_0(sK4) ),
    inference(instantiation,[status(thm)],[c_1760])).

cnf(c_3106,plain,
    ( ~ m1_pre_topc(X0,sK4)
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X1))))
    | v2_struct_0(X1)
    | v2_struct_0(sK4)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK4)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK4)
    | k2_partfun1(u1_struct_0(sK4),u1_struct_0(X1),sK5,u1_struct_0(X0)) = k2_tmap_1(sK4,X1,sK5,X0)
    | u1_struct_0(X1) != u1_struct_0(sK1)
    | u1_struct_0(sK4) != u1_struct_0(sK4) ),
    inference(instantiation,[status(thm)],[c_918])).

cnf(c_3107,plain,
    ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(X0),sK5,u1_struct_0(X1)) = k2_tmap_1(sK4,X0,sK5,X1)
    | u1_struct_0(X0) != u1_struct_0(sK1)
    | u1_struct_0(sK4) != u1_struct_0(sK4)
    | m1_pre_topc(X1,sK4) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(sK4) = iProver_top
    | l1_pre_topc(X0) != iProver_top
    | l1_pre_topc(sK4) != iProver_top
    | v2_pre_topc(X0) != iProver_top
    | v2_pre_topc(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3106])).

cnf(c_10,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_2728,plain,
    ( m1_pre_topc(X0,X1) != iProver_top
    | l1_pre_topc(X1) != iProver_top
    | l1_pre_topc(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_3839,plain,
    ( l1_pre_topc(sK4) = iProver_top
    | l1_pre_topc(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_2714,c_2728])).

cnf(c_4190,plain,
    ( l1_pre_topc(X0) != iProver_top
    | k2_partfun1(u1_struct_0(sK4),u1_struct_0(X0),sK5,u1_struct_0(X1)) = k2_tmap_1(sK4,X0,sK5,X1)
    | u1_struct_0(X0) != u1_struct_0(sK1)
    | m1_pre_topc(X1,sK4) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_pre_topc(X0) != iProver_top
    | v2_pre_topc(sK4) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3714,c_48,c_51,c_3104,c_3107,c_3839])).

cnf(c_4191,plain,
    ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(X0),sK5,u1_struct_0(X1)) = k2_tmap_1(sK4,X0,sK5,X1)
    | u1_struct_0(X0) != u1_struct_0(sK1)
    | m1_pre_topc(X1,sK4) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | l1_pre_topc(X0) != iProver_top
    | v2_pre_topc(X0) != iProver_top
    | v2_pre_topc(sK4) != iProver_top ),
    inference(renaming,[status(thm)],[c_4190])).

cnf(c_4204,plain,
    ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK1),sK5,u1_struct_0(X0)) = k2_tmap_1(sK4,sK1,sK5,X0)
    | m1_pre_topc(X0,sK4) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK1)))) != iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | v2_pre_topc(sK4) != iProver_top
    | v2_pre_topc(sK1) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_4191])).

cnf(c_38,negated_conjecture,
    ( v2_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_47,plain,
    ( v2_pre_topc(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_38])).

cnf(c_52,plain,
    ( m1_pre_topc(sK4,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_33])).

cnf(c_8,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1)
    | v2_pre_topc(X0) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_4160,plain,
    ( ~ m1_pre_topc(sK4,X0)
    | ~ l1_pre_topc(X0)
    | ~ v2_pre_topc(X0)
    | v2_pre_topc(sK4) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_4434,plain,
    ( ~ m1_pre_topc(sK4,sK2)
    | ~ l1_pre_topc(sK2)
    | v2_pre_topc(sK4)
    | ~ v2_pre_topc(sK2) ),
    inference(instantiation,[status(thm)],[c_4160])).

cnf(c_4435,plain,
    ( m1_pre_topc(sK4,sK2) != iProver_top
    | l1_pre_topc(sK2) != iProver_top
    | v2_pre_topc(sK4) = iProver_top
    | v2_pre_topc(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4434])).

cnf(c_4661,plain,
    ( m1_pre_topc(X0,sK4) != iProver_top
    | k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK1),sK5,u1_struct_0(X0)) = k2_tmap_1(sK4,sK1,sK5,X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_4204,c_43,c_44,c_45,c_47,c_48,c_52,c_55,c_4435])).

cnf(c_4662,plain,
    ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK1),sK5,u1_struct_0(X0)) = k2_tmap_1(sK4,sK1,sK5,X0)
    | m1_pre_topc(X0,sK4) != iProver_top ),
    inference(renaming,[status(thm)],[c_4661])).

cnf(c_4669,plain,
    ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK1),sK5,u1_struct_0(sK3)) = k2_tmap_1(sK4,sK1,sK5,sK3) ),
    inference(superposition,[status(thm)],[c_2718,c_4662])).

cnf(c_5534,plain,
    ( k3_tmap_1(X0,sK1,sK4,sK3,sK5) = k2_tmap_1(sK4,sK1,sK5,sK3)
    | m1_pre_topc(sK4,X0) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | l1_pre_topc(X0) != iProver_top
    | v2_pre_topc(X0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_5533,c_4669])).

cnf(c_6095,plain,
    ( k3_tmap_1(sK2,sK1,sK4,sK3,sK5) = k2_tmap_1(sK4,sK1,sK5,sK3)
    | v2_struct_0(sK2) = iProver_top
    | l1_pre_topc(sK2) != iProver_top
    | v2_pre_topc(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_2714,c_5534])).

cnf(c_39,negated_conjecture,
    ( ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_46,plain,
    ( v2_struct_0(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_39])).

cnf(c_6146,plain,
    ( k3_tmap_1(sK2,sK1,sK4,sK3,sK5) = k2_tmap_1(sK4,sK1,sK5,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_6095,c_46,c_47,c_48])).

cnf(c_23,negated_conjecture,
    ( r1_tmap_1(sK4,sK1,sK5,sK6)
    | r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7) ),
    inference(cnf_transformation,[],[f98])).

cnf(c_2721,plain,
    ( r1_tmap_1(sK4,sK1,sK5,sK6) = iProver_top
    | r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_24,negated_conjecture,
    ( sK6 = sK7 ),
    inference(cnf_transformation,[],[f97])).

cnf(c_2815,plain,
    ( r1_tmap_1(sK4,sK1,sK5,sK7) = iProver_top
    | r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2721,c_24])).

cnf(c_6149,plain,
    ( r1_tmap_1(sK4,sK1,sK5,sK7) = iProver_top
    | r1_tmap_1(sK3,sK1,k2_tmap_1(sK4,sK1,sK5,sK3),sK7) = iProver_top ),
    inference(demodulation,[status(thm)],[c_6146,c_2815])).

cnf(c_36,negated_conjecture,
    ( ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_49,plain,
    ( v2_struct_0(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_36])).

cnf(c_58,plain,
    ( m1_pre_topc(sK3,sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_25,negated_conjecture,
    ( m1_subset_1(sK7,u1_struct_0(sK3)) ),
    inference(cnf_transformation,[],[f96])).

cnf(c_60,plain,
    ( m1_subset_1(sK7,u1_struct_0(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_20,plain,
    ( ~ r1_tmap_1(X0,X1,X2,X3)
    | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ v1_tsep_1(X4,X0)
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ v1_funct_1(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X0)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X0) ),
    inference(cnf_transformation,[],[f104])).

cnf(c_18,plain,
    ( ~ r1_tmap_1(X0,X1,X2,X3)
    | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ v1_funct_1(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X0)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X0) ),
    inference(cnf_transformation,[],[f102])).

cnf(c_221,plain,
    ( ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
    | ~ r1_tmap_1(X0,X1,X2,X3)
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ v1_funct_1(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X0)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_20,c_18])).

cnf(c_222,plain,
    ( ~ r1_tmap_1(X0,X1,X2,X3)
    | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ v1_funct_1(X2)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X0)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X0)
    | ~ v2_pre_topc(X1) ),
    inference(renaming,[status(thm)],[c_221])).

cnf(c_957,plain,
    ( ~ r1_tmap_1(X0,X1,X2,X3)
    | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ v1_funct_1(X2)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X0)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X0)
    | ~ v2_pre_topc(X1)
    | u1_struct_0(X0) != u1_struct_0(sK4)
    | u1_struct_0(X1) != u1_struct_0(sK1)
    | sK5 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_222,c_31])).

cnf(c_958,plain,
    ( r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK5,X0),X3)
    | ~ r1_tmap_1(X2,X1,sK5,X3)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X2))
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
    | ~ v1_funct_1(sK5)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | u1_struct_0(X2) != u1_struct_0(sK4)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_957])).

cnf(c_962,plain,
    ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
    | ~ m1_subset_1(X3,u1_struct_0(X2))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_pre_topc(X0,X2)
    | ~ r1_tmap_1(X2,X1,sK5,X3)
    | r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK5,X0),X3)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | u1_struct_0(X2) != u1_struct_0(sK4)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_958,c_32])).

cnf(c_963,plain,
    ( r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK5,X0),X3)
    | ~ r1_tmap_1(X2,X1,sK5,X3)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X2))
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | u1_struct_0(X2) != u1_struct_0(sK4)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(renaming,[status(thm)],[c_962])).

cnf(c_12,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | m1_subset_1(X2,u1_struct_0(X1))
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_998,plain,
    ( r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK5,X0),X3)
    | ~ r1_tmap_1(X2,X1,sK5,X3)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | u1_struct_0(X2) != u1_struct_0(sK4)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_963,c_12])).

cnf(c_2702,plain,
    ( u1_struct_0(X0) != u1_struct_0(sK4)
    | u1_struct_0(X1) != u1_struct_0(sK1)
    | r1_tmap_1(X2,X1,k2_tmap_1(X0,X1,sK5,X2),X3) = iProver_top
    | r1_tmap_1(X0,X1,sK5,X3) != iProver_top
    | m1_pre_topc(X2,X0) != iProver_top
    | m1_subset_1(X3,u1_struct_0(X2)) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) != iProver_top
    | v2_struct_0(X1) = iProver_top
    | v2_struct_0(X2) = iProver_top
    | v2_struct_0(X0) = iProver_top
    | l1_pre_topc(X1) != iProver_top
    | l1_pre_topc(X0) != iProver_top
    | v2_pre_topc(X1) != iProver_top
    | v2_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_998])).

cnf(c_3752,plain,
    ( u1_struct_0(X0) != u1_struct_0(sK1)
    | r1_tmap_1(X1,X0,k2_tmap_1(sK4,X0,sK5,X1),X2) = iProver_top
    | r1_tmap_1(sK4,X0,sK5,X2) != iProver_top
    | m1_pre_topc(X1,sK4) != iProver_top
    | m1_subset_1(X2,u1_struct_0(X1)) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
    | v2_struct_0(X1) = iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(sK4) = iProver_top
    | l1_pre_topc(X0) != iProver_top
    | l1_pre_topc(sK4) != iProver_top
    | v2_pre_topc(X0) != iProver_top
    | v2_pre_topc(sK4) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_2702])).

cnf(c_3628,plain,
    ( r1_tmap_1(X0,X1,k2_tmap_1(sK4,X1,sK5,X0),X2)
    | ~ r1_tmap_1(sK4,X1,sK5,X2)
    | ~ m1_pre_topc(X0,sK4)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X1))))
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(sK4)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK4)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK4)
    | u1_struct_0(X1) != u1_struct_0(sK1)
    | u1_struct_0(sK4) != u1_struct_0(sK4) ),
    inference(instantiation,[status(thm)],[c_998])).

cnf(c_3629,plain,
    ( u1_struct_0(X0) != u1_struct_0(sK1)
    | u1_struct_0(sK4) != u1_struct_0(sK4)
    | r1_tmap_1(X1,X0,k2_tmap_1(sK4,X0,sK5,X1),X2) = iProver_top
    | r1_tmap_1(sK4,X0,sK5,X2) != iProver_top
    | m1_pre_topc(X1,sK4) != iProver_top
    | m1_subset_1(X2,u1_struct_0(X1)) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(X1) = iProver_top
    | v2_struct_0(sK4) = iProver_top
    | l1_pre_topc(X0) != iProver_top
    | l1_pre_topc(sK4) != iProver_top
    | v2_pre_topc(X0) != iProver_top
    | v2_pre_topc(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3628])).

cnf(c_4705,plain,
    ( v2_pre_topc(X0) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(X1) = iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
    | m1_subset_1(X2,u1_struct_0(X1)) != iProver_top
    | m1_pre_topc(X1,sK4) != iProver_top
    | r1_tmap_1(sK4,X0,sK5,X2) != iProver_top
    | r1_tmap_1(X1,X0,k2_tmap_1(sK4,X0,sK5,X1),X2) = iProver_top
    | u1_struct_0(X0) != u1_struct_0(sK1)
    | l1_pre_topc(X0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3752,c_47,c_48,c_51,c_52,c_3839,c_4435])).

cnf(c_4706,plain,
    ( u1_struct_0(X0) != u1_struct_0(sK1)
    | r1_tmap_1(X1,X0,k2_tmap_1(sK4,X0,sK5,X1),X2) = iProver_top
    | r1_tmap_1(sK4,X0,sK5,X2) != iProver_top
    | m1_pre_topc(X1,sK4) != iProver_top
    | m1_subset_1(X2,u1_struct_0(X1)) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
    | v2_struct_0(X1) = iProver_top
    | v2_struct_0(X0) = iProver_top
    | l1_pre_topc(X0) != iProver_top
    | v2_pre_topc(X0) != iProver_top ),
    inference(renaming,[status(thm)],[c_4705])).

cnf(c_4721,plain,
    ( r1_tmap_1(X0,sK1,k2_tmap_1(sK4,sK1,sK5,X0),X1) = iProver_top
    | r1_tmap_1(sK4,sK1,sK5,X1) != iProver_top
    | m1_pre_topc(X0,sK4) != iProver_top
    | m1_subset_1(X1,u1_struct_0(X0)) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK1)))) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | v2_pre_topc(sK1) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_4706])).

cnf(c_5413,plain,
    ( v2_struct_0(X0) = iProver_top
    | r1_tmap_1(X0,sK1,k2_tmap_1(sK4,sK1,sK5,X0),X1) = iProver_top
    | r1_tmap_1(sK4,sK1,sK5,X1) != iProver_top
    | m1_pre_topc(X0,sK4) != iProver_top
    | m1_subset_1(X1,u1_struct_0(X0)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4721,c_43,c_44,c_45,c_55])).

cnf(c_5414,plain,
    ( r1_tmap_1(X0,sK1,k2_tmap_1(sK4,sK1,sK5,X0),X1) = iProver_top
    | r1_tmap_1(sK4,sK1,sK5,X1) != iProver_top
    | m1_pre_topc(X0,sK4) != iProver_top
    | m1_subset_1(X1,u1_struct_0(X0)) != iProver_top
    | v2_struct_0(X0) = iProver_top ),
    inference(renaming,[status(thm)],[c_5413])).

cnf(c_22,negated_conjecture,
    ( ~ r1_tmap_1(sK4,sK1,sK5,sK6)
    | ~ r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7) ),
    inference(cnf_transformation,[],[f99])).

cnf(c_2722,plain,
    ( r1_tmap_1(sK4,sK1,sK5,sK6) != iProver_top
    | r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_2832,plain,
    ( r1_tmap_1(sK4,sK1,sK5,sK7) != iProver_top
    | r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2722,c_24])).

cnf(c_6150,plain,
    ( r1_tmap_1(sK4,sK1,sK5,sK7) != iProver_top
    | r1_tmap_1(sK3,sK1,k2_tmap_1(sK4,sK1,sK5,sK3),sK7) != iProver_top ),
    inference(demodulation,[status(thm)],[c_6146,c_2832])).

cnf(c_6164,plain,
    ( r1_tmap_1(sK4,sK1,sK5,sK7) != iProver_top
    | m1_pre_topc(sK3,sK4) != iProver_top
    | m1_subset_1(sK7,u1_struct_0(sK3)) != iProver_top
    | v2_struct_0(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_5414,c_6150])).

cnf(c_6222,plain,
    ( r1_tmap_1(sK3,sK1,k2_tmap_1(sK4,sK1,sK5,sK3),sK7) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6149,c_49,c_58,c_60,c_6164])).

cnf(c_19,plain,
    ( r1_tmap_1(X0,X1,X2,X3)
    | ~ r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ v1_tsep_1(X4,X0)
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ v1_funct_1(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X0)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X0) ),
    inference(cnf_transformation,[],[f103])).

cnf(c_1014,plain,
    ( r1_tmap_1(X0,X1,X2,X3)
    | ~ r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
    | ~ v1_tsep_1(X4,X0)
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ v1_funct_1(X2)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X0)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X0)
    | ~ v2_pre_topc(X1)
    | u1_struct_0(X0) != u1_struct_0(sK4)
    | u1_struct_0(X1) != u1_struct_0(sK1)
    | sK5 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_31])).

cnf(c_1015,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK5,X0),X3)
    | r1_tmap_1(X2,X1,sK5,X3)
    | ~ v1_tsep_1(X0,X2)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X2))
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
    | ~ v1_funct_1(sK5)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | u1_struct_0(X2) != u1_struct_0(sK4)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_1014])).

cnf(c_1019,plain,
    ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
    | ~ m1_subset_1(X3,u1_struct_0(X2))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_pre_topc(X0,X2)
    | ~ v1_tsep_1(X0,X2)
    | r1_tmap_1(X2,X1,sK5,X3)
    | ~ r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK5,X0),X3)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | u1_struct_0(X2) != u1_struct_0(sK4)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1015,c_32])).

cnf(c_1020,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK5,X0),X3)
    | r1_tmap_1(X2,X1,sK5,X3)
    | ~ v1_tsep_1(X0,X2)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X2))
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | u1_struct_0(X2) != u1_struct_0(sK4)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(renaming,[status(thm)],[c_1019])).

cnf(c_1057,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK5,X0),X3)
    | r1_tmap_1(X2,X1,sK5,X3)
    | ~ v1_tsep_1(X0,X2)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | u1_struct_0(X2) != u1_struct_0(sK4)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1020,c_12])).

cnf(c_2701,plain,
    ( u1_struct_0(X0) != u1_struct_0(sK4)
    | u1_struct_0(X1) != u1_struct_0(sK1)
    | r1_tmap_1(X2,X1,k2_tmap_1(X0,X1,sK5,X2),X3) != iProver_top
    | r1_tmap_1(X0,X1,sK5,X3) = iProver_top
    | v1_tsep_1(X2,X0) != iProver_top
    | m1_pre_topc(X2,X0) != iProver_top
    | m1_subset_1(X3,u1_struct_0(X2)) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) != iProver_top
    | v2_struct_0(X1) = iProver_top
    | v2_struct_0(X2) = iProver_top
    | v2_struct_0(X0) = iProver_top
    | l1_pre_topc(X1) != iProver_top
    | l1_pre_topc(X0) != iProver_top
    | v2_pre_topc(X1) != iProver_top
    | v2_pre_topc(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1057])).

cnf(c_3229,plain,
    ( u1_struct_0(X0) != u1_struct_0(sK1)
    | r1_tmap_1(X1,X0,k2_tmap_1(sK4,X0,sK5,X1),X2) != iProver_top
    | r1_tmap_1(sK4,X0,sK5,X2) = iProver_top
    | v1_tsep_1(X1,sK4) != iProver_top
    | m1_pre_topc(X1,sK4) != iProver_top
    | m1_subset_1(X2,u1_struct_0(X1)) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
    | v2_struct_0(X1) = iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(sK4) = iProver_top
    | l1_pre_topc(X0) != iProver_top
    | l1_pre_topc(sK4) != iProver_top
    | v2_pre_topc(X0) != iProver_top
    | v2_pre_topc(sK4) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_2701])).

cnf(c_3627,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK4,X1,sK5,X0),X2)
    | r1_tmap_1(sK4,X1,sK5,X2)
    | ~ v1_tsep_1(X0,sK4)
    | ~ m1_pre_topc(X0,sK4)
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X1))))
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(sK4)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK4)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK4)
    | u1_struct_0(X1) != u1_struct_0(sK1)
    | u1_struct_0(sK4) != u1_struct_0(sK4) ),
    inference(instantiation,[status(thm)],[c_1057])).

cnf(c_3633,plain,
    ( u1_struct_0(X0) != u1_struct_0(sK1)
    | u1_struct_0(sK4) != u1_struct_0(sK4)
    | r1_tmap_1(X1,X0,k2_tmap_1(sK4,X0,sK5,X1),X2) != iProver_top
    | r1_tmap_1(sK4,X0,sK5,X2) = iProver_top
    | v1_tsep_1(X1,sK4) != iProver_top
    | m1_pre_topc(X1,sK4) != iProver_top
    | m1_subset_1(X2,u1_struct_0(X1)) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(X1) = iProver_top
    | v2_struct_0(sK4) = iProver_top
    | l1_pre_topc(X0) != iProver_top
    | l1_pre_topc(sK4) != iProver_top
    | v2_pre_topc(X0) != iProver_top
    | v2_pre_topc(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3627])).

cnf(c_4794,plain,
    ( v2_pre_topc(X0) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(X1) = iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
    | m1_subset_1(X2,u1_struct_0(X1)) != iProver_top
    | m1_pre_topc(X1,sK4) != iProver_top
    | v1_tsep_1(X1,sK4) != iProver_top
    | r1_tmap_1(sK4,X0,sK5,X2) = iProver_top
    | r1_tmap_1(X1,X0,k2_tmap_1(sK4,X0,sK5,X1),X2) != iProver_top
    | u1_struct_0(X0) != u1_struct_0(sK1)
    | l1_pre_topc(X0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3229,c_47,c_48,c_51,c_52,c_3839,c_4435])).

cnf(c_4795,plain,
    ( u1_struct_0(X0) != u1_struct_0(sK1)
    | r1_tmap_1(X1,X0,k2_tmap_1(sK4,X0,sK5,X1),X2) != iProver_top
    | r1_tmap_1(sK4,X0,sK5,X2) = iProver_top
    | v1_tsep_1(X1,sK4) != iProver_top
    | m1_pre_topc(X1,sK4) != iProver_top
    | m1_subset_1(X2,u1_struct_0(X1)) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
    | v2_struct_0(X1) = iProver_top
    | v2_struct_0(X0) = iProver_top
    | l1_pre_topc(X0) != iProver_top
    | v2_pre_topc(X0) != iProver_top ),
    inference(renaming,[status(thm)],[c_4794])).

cnf(c_4811,plain,
    ( r1_tmap_1(X0,sK1,k2_tmap_1(sK4,sK1,sK5,X0),X1) != iProver_top
    | r1_tmap_1(sK4,sK1,sK5,X1) = iProver_top
    | v1_tsep_1(X0,sK4) != iProver_top
    | m1_pre_topc(X0,sK4) != iProver_top
    | m1_subset_1(X1,u1_struct_0(X0)) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK1)))) != iProver_top
    | v2_struct_0(X0) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | v2_pre_topc(sK1) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_4795])).

cnf(c_6896,plain,
    ( v2_struct_0(X0) = iProver_top
    | r1_tmap_1(X0,sK1,k2_tmap_1(sK4,sK1,sK5,X0),X1) != iProver_top
    | r1_tmap_1(sK4,sK1,sK5,X1) = iProver_top
    | v1_tsep_1(X0,sK4) != iProver_top
    | m1_pre_topc(X0,sK4) != iProver_top
    | m1_subset_1(X1,u1_struct_0(X0)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4811,c_43,c_44,c_45,c_55])).

cnf(c_6897,plain,
    ( r1_tmap_1(X0,sK1,k2_tmap_1(sK4,sK1,sK5,X0),X1) != iProver_top
    | r1_tmap_1(sK4,sK1,sK5,X1) = iProver_top
    | v1_tsep_1(X0,sK4) != iProver_top
    | m1_pre_topc(X0,sK4) != iProver_top
    | m1_subset_1(X1,u1_struct_0(X0)) != iProver_top
    | v2_struct_0(X0) = iProver_top ),
    inference(renaming,[status(thm)],[c_6896])).

cnf(c_6909,plain,
    ( r1_tmap_1(sK4,sK1,sK5,sK7) = iProver_top
    | v1_tsep_1(sK3,sK4) != iProver_top
    | m1_pre_topc(sK3,sK4) != iProver_top
    | m1_subset_1(sK7,u1_struct_0(sK3)) != iProver_top
    | v2_struct_0(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_6222,c_6897])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,X1)
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_6013,plain,
    ( ~ m1_subset_1(u1_struct_0(X0),X1)
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(u1_struct_0(X0)) ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_6843,plain,
    ( ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4)))
    | v1_xboole_0(u1_struct_0(sK3))
    | ~ v1_xboole_0(k1_zfmisc_1(u1_struct_0(sK4))) ),
    inference(instantiation,[status(thm)],[c_6013])).

cnf(c_6844,plain,
    ( m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
    | v1_xboole_0(k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6843])).

cnf(c_3,plain,
    ( ~ r2_hidden(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f101])).

cnf(c_4174,plain,
    ( ~ r2_hidden(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4)))
    | r1_tarski(u1_struct_0(sK3),u1_struct_0(sK4)) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_4175,plain,
    ( r2_hidden(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | r1_tarski(u1_struct_0(sK3),u1_struct_0(sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4174])).

cnf(c_35,negated_conjecture,
    ( m1_pre_topc(sK3,sK2) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_2717,plain,
    ( m1_pre_topc(sK3,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_3838,plain,
    ( l1_pre_topc(sK2) != iProver_top
    | l1_pre_topc(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_2717,c_2728])).

cnf(c_16,plain,
    ( ~ v1_tsep_1(X0,X1)
    | v1_tsep_1(X0,X2)
    | ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X1)
    | ~ r1_tarski(u1_struct_0(X0),u1_struct_0(X2))
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_3240,plain,
    ( v1_tsep_1(sK3,X0)
    | ~ v1_tsep_1(sK3,sK2)
    | ~ m1_pre_topc(X0,sK2)
    | ~ m1_pre_topc(sK3,sK2)
    | ~ r1_tarski(u1_struct_0(sK3),u1_struct_0(X0))
    | v2_struct_0(X0)
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK2)
    | ~ v2_pre_topc(sK2) ),
    inference(instantiation,[status(thm)],[c_16])).

cnf(c_3611,plain,
    ( v1_tsep_1(sK3,sK4)
    | ~ v1_tsep_1(sK3,sK2)
    | ~ m1_pre_topc(sK4,sK2)
    | ~ m1_pre_topc(sK3,sK2)
    | ~ r1_tarski(u1_struct_0(sK3),u1_struct_0(sK4))
    | v2_struct_0(sK4)
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK2)
    | ~ v2_pre_topc(sK2) ),
    inference(instantiation,[status(thm)],[c_3240])).

cnf(c_3612,plain,
    ( v1_tsep_1(sK3,sK4) = iProver_top
    | v1_tsep_1(sK3,sK2) != iProver_top
    | m1_pre_topc(sK4,sK2) != iProver_top
    | m1_pre_topc(sK3,sK2) != iProver_top
    | r1_tarski(u1_struct_0(sK3),u1_struct_0(sK4)) != iProver_top
    | v2_struct_0(sK4) = iProver_top
    | v2_struct_0(sK2) = iProver_top
    | l1_pre_topc(sK2) != iProver_top
    | v2_pre_topc(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3611])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_3306,plain,
    ( ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4)))
    | r2_hidden(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4)))
    | v1_xboole_0(k1_zfmisc_1(u1_struct_0(sK4))) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_3307,plain,
    ( m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | r2_hidden(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top
    | v1_xboole_0(k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3306])).

cnf(c_9,plain,
    ( l1_struct_0(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_11,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_532,plain,
    ( v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(resolution,[status(thm)],[c_9,c_11])).

cnf(c_3265,plain,
    ( v2_struct_0(sK3)
    | ~ l1_pre_topc(sK3)
    | ~ v1_xboole_0(u1_struct_0(sK3)) ),
    inference(instantiation,[status(thm)],[c_532])).

cnf(c_3266,plain,
    ( v2_struct_0(sK3) = iProver_top
    | l1_pre_topc(sK3) != iProver_top
    | v1_xboole_0(u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3265])).

cnf(c_17,plain,
    ( ~ m1_pre_topc(X0,X1)
    | m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_3132,plain,
    ( ~ m1_pre_topc(sK3,sK4)
    | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ l1_pre_topc(sK4) ),
    inference(instantiation,[status(thm)],[c_17])).

cnf(c_3133,plain,
    ( m1_pre_topc(sK3,sK4) != iProver_top
    | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top
    | l1_pre_topc(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3132])).

cnf(c_29,negated_conjecture,
    ( v1_tsep_1(sK3,sK2) ),
    inference(cnf_transformation,[],[f92])).

cnf(c_56,plain,
    ( v1_tsep_1(sK3,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_50,plain,
    ( m1_pre_topc(sK3,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_6909,c_6844,c_6164,c_4175,c_3839,c_3838,c_3612,c_3307,c_3266,c_3133,c_60,c_58,c_56,c_52,c_51,c_50,c_49,c_48,c_47,c_46])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n016.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 18:47:19 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running in FOF mode
% 3.13/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.13/0.99  
% 3.13/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.13/0.99  
% 3.13/0.99  ------  iProver source info
% 3.13/0.99  
% 3.13/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.13/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.13/0.99  git: non_committed_changes: false
% 3.13/0.99  git: last_make_outside_of_git: false
% 3.13/0.99  
% 3.13/0.99  ------ 
% 3.13/0.99  
% 3.13/0.99  ------ Input Options
% 3.13/0.99  
% 3.13/0.99  --out_options                           all
% 3.13/0.99  --tptp_safe_out                         true
% 3.13/0.99  --problem_path                          ""
% 3.13/0.99  --include_path                          ""
% 3.13/0.99  --clausifier                            res/vclausify_rel
% 3.13/0.99  --clausifier_options                    --mode clausify
% 3.13/0.99  --stdin                                 false
% 3.13/0.99  --stats_out                             all
% 3.13/0.99  
% 3.13/0.99  ------ General Options
% 3.13/0.99  
% 3.13/0.99  --fof                                   false
% 3.13/0.99  --time_out_real                         305.
% 3.13/0.99  --time_out_virtual                      -1.
% 3.13/0.99  --symbol_type_check                     false
% 3.13/0.99  --clausify_out                          false
% 3.13/0.99  --sig_cnt_out                           false
% 3.13/0.99  --trig_cnt_out                          false
% 3.13/0.99  --trig_cnt_out_tolerance                1.
% 3.13/0.99  --trig_cnt_out_sk_spl                   false
% 3.13/0.99  --abstr_cl_out                          false
% 3.13/0.99  
% 3.13/0.99  ------ Global Options
% 3.13/0.99  
% 3.13/0.99  --schedule                              default
% 3.13/0.99  --add_important_lit                     false
% 3.13/0.99  --prop_solver_per_cl                    1000
% 3.13/0.99  --min_unsat_core                        false
% 3.13/0.99  --soft_assumptions                      false
% 3.13/0.99  --soft_lemma_size                       3
% 3.13/0.99  --prop_impl_unit_size                   0
% 3.13/0.99  --prop_impl_unit                        []
% 3.13/0.99  --share_sel_clauses                     true
% 3.13/0.99  --reset_solvers                         false
% 3.13/0.99  --bc_imp_inh                            [conj_cone]
% 3.13/0.99  --conj_cone_tolerance                   3.
% 3.13/0.99  --extra_neg_conj                        none
% 3.13/0.99  --large_theory_mode                     true
% 3.13/0.99  --prolific_symb_bound                   200
% 3.13/0.99  --lt_threshold                          2000
% 3.13/0.99  --clause_weak_htbl                      true
% 3.13/0.99  --gc_record_bc_elim                     false
% 3.13/0.99  
% 3.13/0.99  ------ Preprocessing Options
% 3.13/0.99  
% 3.13/0.99  --preprocessing_flag                    true
% 3.13/0.99  --time_out_prep_mult                    0.1
% 3.13/0.99  --splitting_mode                        input
% 3.13/0.99  --splitting_grd                         true
% 3.13/0.99  --splitting_cvd                         false
% 3.13/0.99  --splitting_cvd_svl                     false
% 3.13/0.99  --splitting_nvd                         32
% 3.13/0.99  --sub_typing                            true
% 3.13/0.99  --prep_gs_sim                           true
% 3.13/0.99  --prep_unflatten                        true
% 3.13/0.99  --prep_res_sim                          true
% 3.13/0.99  --prep_upred                            true
% 3.13/0.99  --prep_sem_filter                       exhaustive
% 3.13/0.99  --prep_sem_filter_out                   false
% 3.13/0.99  --pred_elim                             true
% 3.13/0.99  --res_sim_input                         true
% 3.13/0.99  --eq_ax_congr_red                       true
% 3.13/0.99  --pure_diseq_elim                       true
% 3.13/0.99  --brand_transform                       false
% 3.13/0.99  --non_eq_to_eq                          false
% 3.13/0.99  --prep_def_merge                        true
% 3.13/0.99  --prep_def_merge_prop_impl              false
% 3.13/0.99  --prep_def_merge_mbd                    true
% 3.13/0.99  --prep_def_merge_tr_red                 false
% 3.13/0.99  --prep_def_merge_tr_cl                  false
% 3.13/0.99  --smt_preprocessing                     true
% 3.13/0.99  --smt_ac_axioms                         fast
% 3.13/0.99  --preprocessed_out                      false
% 3.13/0.99  --preprocessed_stats                    false
% 3.13/0.99  
% 3.13/0.99  ------ Abstraction refinement Options
% 3.13/0.99  
% 3.13/0.99  --abstr_ref                             []
% 3.13/0.99  --abstr_ref_prep                        false
% 3.13/0.99  --abstr_ref_until_sat                   false
% 3.13/0.99  --abstr_ref_sig_restrict                funpre
% 3.13/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.13/0.99  --abstr_ref_under                       []
% 3.13/0.99  
% 3.13/0.99  ------ SAT Options
% 3.13/0.99  
% 3.13/0.99  --sat_mode                              false
% 3.13/0.99  --sat_fm_restart_options                ""
% 3.13/0.99  --sat_gr_def                            false
% 3.13/0.99  --sat_epr_types                         true
% 3.13/0.99  --sat_non_cyclic_types                  false
% 3.13/0.99  --sat_finite_models                     false
% 3.13/0.99  --sat_fm_lemmas                         false
% 3.13/0.99  --sat_fm_prep                           false
% 3.13/0.99  --sat_fm_uc_incr                        true
% 3.13/0.99  --sat_out_model                         small
% 3.13/0.99  --sat_out_clauses                       false
% 3.13/0.99  
% 3.13/0.99  ------ QBF Options
% 3.13/0.99  
% 3.13/0.99  --qbf_mode                              false
% 3.13/0.99  --qbf_elim_univ                         false
% 3.13/0.99  --qbf_dom_inst                          none
% 3.13/0.99  --qbf_dom_pre_inst                      false
% 3.13/0.99  --qbf_sk_in                             false
% 3.13/0.99  --qbf_pred_elim                         true
% 3.13/0.99  --qbf_split                             512
% 3.13/0.99  
% 3.13/0.99  ------ BMC1 Options
% 3.13/0.99  
% 3.13/0.99  --bmc1_incremental                      false
% 3.13/0.99  --bmc1_axioms                           reachable_all
% 3.13/0.99  --bmc1_min_bound                        0
% 3.13/0.99  --bmc1_max_bound                        -1
% 3.13/0.99  --bmc1_max_bound_default                -1
% 3.13/0.99  --bmc1_symbol_reachability              true
% 3.13/0.99  --bmc1_property_lemmas                  false
% 3.13/0.99  --bmc1_k_induction                      false
% 3.13/0.99  --bmc1_non_equiv_states                 false
% 3.13/0.99  --bmc1_deadlock                         false
% 3.13/0.99  --bmc1_ucm                              false
% 3.13/0.99  --bmc1_add_unsat_core                   none
% 3.13/0.99  --bmc1_unsat_core_children              false
% 3.13/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.13/0.99  --bmc1_out_stat                         full
% 3.13/0.99  --bmc1_ground_init                      false
% 3.13/0.99  --bmc1_pre_inst_next_state              false
% 3.13/0.99  --bmc1_pre_inst_state                   false
% 3.13/0.99  --bmc1_pre_inst_reach_state             false
% 3.13/0.99  --bmc1_out_unsat_core                   false
% 3.13/0.99  --bmc1_aig_witness_out                  false
% 3.13/0.99  --bmc1_verbose                          false
% 3.13/0.99  --bmc1_dump_clauses_tptp                false
% 3.13/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.13/0.99  --bmc1_dump_file                        -
% 3.13/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.13/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.13/0.99  --bmc1_ucm_extend_mode                  1
% 3.13/0.99  --bmc1_ucm_init_mode                    2
% 3.13/0.99  --bmc1_ucm_cone_mode                    none
% 3.13/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.13/0.99  --bmc1_ucm_relax_model                  4
% 3.13/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.13/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.13/0.99  --bmc1_ucm_layered_model                none
% 3.13/0.99  --bmc1_ucm_max_lemma_size               10
% 3.13/0.99  
% 3.13/0.99  ------ AIG Options
% 3.13/0.99  
% 3.13/0.99  --aig_mode                              false
% 3.13/0.99  
% 3.13/0.99  ------ Instantiation Options
% 3.13/0.99  
% 3.13/0.99  --instantiation_flag                    true
% 3.13/0.99  --inst_sos_flag                         false
% 3.13/0.99  --inst_sos_phase                        true
% 3.13/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.13/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.13/0.99  --inst_lit_sel_side                     num_symb
% 3.13/0.99  --inst_solver_per_active                1400
% 3.13/0.99  --inst_solver_calls_frac                1.
% 3.13/0.99  --inst_passive_queue_type               priority_queues
% 3.13/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.13/0.99  --inst_passive_queues_freq              [25;2]
% 3.13/0.99  --inst_dismatching                      true
% 3.13/0.99  --inst_eager_unprocessed_to_passive     true
% 3.13/0.99  --inst_prop_sim_given                   true
% 3.13/0.99  --inst_prop_sim_new                     false
% 3.13/0.99  --inst_subs_new                         false
% 3.13/0.99  --inst_eq_res_simp                      false
% 3.13/0.99  --inst_subs_given                       false
% 3.13/0.99  --inst_orphan_elimination               true
% 3.13/0.99  --inst_learning_loop_flag               true
% 3.13/0.99  --inst_learning_start                   3000
% 3.13/0.99  --inst_learning_factor                  2
% 3.13/0.99  --inst_start_prop_sim_after_learn       3
% 3.13/0.99  --inst_sel_renew                        solver
% 3.13/0.99  --inst_lit_activity_flag                true
% 3.13/0.99  --inst_restr_to_given                   false
% 3.13/0.99  --inst_activity_threshold               500
% 3.13/0.99  --inst_out_proof                        true
% 3.13/0.99  
% 3.13/0.99  ------ Resolution Options
% 3.13/0.99  
% 3.13/0.99  --resolution_flag                       true
% 3.13/0.99  --res_lit_sel                           adaptive
% 3.13/0.99  --res_lit_sel_side                      none
% 3.13/0.99  --res_ordering                          kbo
% 3.13/0.99  --res_to_prop_solver                    active
% 3.13/0.99  --res_prop_simpl_new                    false
% 3.13/0.99  --res_prop_simpl_given                  true
% 3.13/0.99  --res_passive_queue_type                priority_queues
% 3.13/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.13/0.99  --res_passive_queues_freq               [15;5]
% 3.13/0.99  --res_forward_subs                      full
% 3.13/0.99  --res_backward_subs                     full
% 3.13/0.99  --res_forward_subs_resolution           true
% 3.13/0.99  --res_backward_subs_resolution          true
% 3.13/0.99  --res_orphan_elimination                true
% 3.13/0.99  --res_time_limit                        2.
% 3.13/0.99  --res_out_proof                         true
% 3.13/0.99  
% 3.13/0.99  ------ Superposition Options
% 3.13/0.99  
% 3.13/0.99  --superposition_flag                    true
% 3.13/0.99  --sup_passive_queue_type                priority_queues
% 3.13/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.13/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.13/0.99  --demod_completeness_check              fast
% 3.13/0.99  --demod_use_ground                      true
% 3.13/0.99  --sup_to_prop_solver                    passive
% 3.13/0.99  --sup_prop_simpl_new                    true
% 3.13/0.99  --sup_prop_simpl_given                  true
% 3.13/0.99  --sup_fun_splitting                     false
% 3.13/0.99  --sup_smt_interval                      50000
% 3.13/0.99  
% 3.13/0.99  ------ Superposition Simplification Setup
% 3.13/0.99  
% 3.13/0.99  --sup_indices_passive                   []
% 3.13/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.13/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.13/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.13/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.13/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.13/0.99  --sup_full_bw                           [BwDemod]
% 3.13/0.99  --sup_immed_triv                        [TrivRules]
% 3.13/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.13/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.13/0.99  --sup_immed_bw_main                     []
% 3.13/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.13/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.13/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.13/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.13/0.99  
% 3.13/0.99  ------ Combination Options
% 3.13/0.99  
% 3.13/0.99  --comb_res_mult                         3
% 3.13/0.99  --comb_sup_mult                         2
% 3.13/0.99  --comb_inst_mult                        10
% 3.13/0.99  
% 3.13/0.99  ------ Debug Options
% 3.13/0.99  
% 3.13/0.99  --dbg_backtrace                         false
% 3.13/0.99  --dbg_dump_prop_clauses                 false
% 3.13/0.99  --dbg_dump_prop_clauses_file            -
% 3.13/0.99  --dbg_out_stat                          false
% 3.13/0.99  ------ Parsing...
% 3.13/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.13/0.99  
% 3.13/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 3.13/0.99  
% 3.13/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.13/0.99  
% 3.13/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.13/0.99  ------ Proving...
% 3.13/0.99  ------ Problem Properties 
% 3.13/0.99  
% 3.13/0.99  
% 3.13/0.99  clauses                                 38
% 3.13/0.99  conjectures                             18
% 3.13/0.99  EPR                                     20
% 3.13/0.99  Horn                                    27
% 3.13/0.99  unary                                   16
% 3.13/0.99  binary                                  4
% 3.13/0.99  lits                                    136
% 3.13/0.99  lits eq                                 13
% 3.13/0.99  fd_pure                                 0
% 3.13/0.99  fd_pseudo                               0
% 3.13/0.99  fd_cond                                 0
% 3.13/0.99  fd_pseudo_cond                          2
% 3.13/0.99  AC symbols                              0
% 3.13/0.99  
% 3.13/0.99  ------ Schedule dynamic 5 is on 
% 3.13/0.99  
% 3.13/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.13/0.99  
% 3.13/0.99  
% 3.13/0.99  ------ 
% 3.13/0.99  Current options:
% 3.13/0.99  ------ 
% 3.13/0.99  
% 3.13/0.99  ------ Input Options
% 3.13/0.99  
% 3.13/0.99  --out_options                           all
% 3.13/0.99  --tptp_safe_out                         true
% 3.13/0.99  --problem_path                          ""
% 3.13/0.99  --include_path                          ""
% 3.13/0.99  --clausifier                            res/vclausify_rel
% 3.13/0.99  --clausifier_options                    --mode clausify
% 3.13/0.99  --stdin                                 false
% 3.13/0.99  --stats_out                             all
% 3.13/0.99  
% 3.13/0.99  ------ General Options
% 3.13/0.99  
% 3.13/0.99  --fof                                   false
% 3.13/0.99  --time_out_real                         305.
% 3.13/0.99  --time_out_virtual                      -1.
% 3.13/0.99  --symbol_type_check                     false
% 3.13/0.99  --clausify_out                          false
% 3.13/0.99  --sig_cnt_out                           false
% 3.13/0.99  --trig_cnt_out                          false
% 3.13/0.99  --trig_cnt_out_tolerance                1.
% 3.13/0.99  --trig_cnt_out_sk_spl                   false
% 3.13/0.99  --abstr_cl_out                          false
% 3.13/0.99  
% 3.13/0.99  ------ Global Options
% 3.13/0.99  
% 3.13/0.99  --schedule                              default
% 3.13/0.99  --add_important_lit                     false
% 3.13/0.99  --prop_solver_per_cl                    1000
% 3.13/0.99  --min_unsat_core                        false
% 3.13/0.99  --soft_assumptions                      false
% 3.13/0.99  --soft_lemma_size                       3
% 3.13/0.99  --prop_impl_unit_size                   0
% 3.13/0.99  --prop_impl_unit                        []
% 3.13/0.99  --share_sel_clauses                     true
% 3.13/0.99  --reset_solvers                         false
% 3.13/0.99  --bc_imp_inh                            [conj_cone]
% 3.13/0.99  --conj_cone_tolerance                   3.
% 3.13/0.99  --extra_neg_conj                        none
% 3.13/0.99  --large_theory_mode                     true
% 3.13/0.99  --prolific_symb_bound                   200
% 3.13/0.99  --lt_threshold                          2000
% 3.13/0.99  --clause_weak_htbl                      true
% 3.13/0.99  --gc_record_bc_elim                     false
% 3.13/0.99  
% 3.13/0.99  ------ Preprocessing Options
% 3.13/0.99  
% 3.13/0.99  --preprocessing_flag                    true
% 3.13/0.99  --time_out_prep_mult                    0.1
% 3.13/0.99  --splitting_mode                        input
% 3.13/0.99  --splitting_grd                         true
% 3.13/0.99  --splitting_cvd                         false
% 3.13/0.99  --splitting_cvd_svl                     false
% 3.13/0.99  --splitting_nvd                         32
% 3.13/0.99  --sub_typing                            true
% 3.13/0.99  --prep_gs_sim                           true
% 3.13/0.99  --prep_unflatten                        true
% 3.13/0.99  --prep_res_sim                          true
% 3.13/0.99  --prep_upred                            true
% 3.13/0.99  --prep_sem_filter                       exhaustive
% 3.13/0.99  --prep_sem_filter_out                   false
% 3.13/0.99  --pred_elim                             true
% 3.13/0.99  --res_sim_input                         true
% 3.13/0.99  --eq_ax_congr_red                       true
% 3.13/0.99  --pure_diseq_elim                       true
% 3.13/0.99  --brand_transform                       false
% 3.13/0.99  --non_eq_to_eq                          false
% 3.13/0.99  --prep_def_merge                        true
% 3.13/0.99  --prep_def_merge_prop_impl              false
% 3.13/0.99  --prep_def_merge_mbd                    true
% 3.13/0.99  --prep_def_merge_tr_red                 false
% 3.13/0.99  --prep_def_merge_tr_cl                  false
% 3.13/0.99  --smt_preprocessing                     true
% 3.13/0.99  --smt_ac_axioms                         fast
% 3.13/0.99  --preprocessed_out                      false
% 3.13/0.99  --preprocessed_stats                    false
% 3.13/0.99  
% 3.13/0.99  ------ Abstraction refinement Options
% 3.13/0.99  
% 3.13/0.99  --abstr_ref                             []
% 3.13/0.99  --abstr_ref_prep                        false
% 3.13/0.99  --abstr_ref_until_sat                   false
% 3.13/0.99  --abstr_ref_sig_restrict                funpre
% 3.13/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.13/0.99  --abstr_ref_under                       []
% 3.13/0.99  
% 3.13/0.99  ------ SAT Options
% 3.13/0.99  
% 3.13/0.99  --sat_mode                              false
% 3.13/0.99  --sat_fm_restart_options                ""
% 3.13/0.99  --sat_gr_def                            false
% 3.13/0.99  --sat_epr_types                         true
% 3.13/0.99  --sat_non_cyclic_types                  false
% 3.13/0.99  --sat_finite_models                     false
% 3.13/0.99  --sat_fm_lemmas                         false
% 3.13/0.99  --sat_fm_prep                           false
% 3.13/0.99  --sat_fm_uc_incr                        true
% 3.13/0.99  --sat_out_model                         small
% 3.13/0.99  --sat_out_clauses                       false
% 3.13/0.99  
% 3.13/0.99  ------ QBF Options
% 3.13/0.99  
% 3.13/0.99  --qbf_mode                              false
% 3.13/0.99  --qbf_elim_univ                         false
% 3.13/0.99  --qbf_dom_inst                          none
% 3.13/0.99  --qbf_dom_pre_inst                      false
% 3.13/0.99  --qbf_sk_in                             false
% 3.13/0.99  --qbf_pred_elim                         true
% 3.13/0.99  --qbf_split                             512
% 3.13/0.99  
% 3.13/0.99  ------ BMC1 Options
% 3.13/0.99  
% 3.13/0.99  --bmc1_incremental                      false
% 3.13/0.99  --bmc1_axioms                           reachable_all
% 3.13/0.99  --bmc1_min_bound                        0
% 3.13/0.99  --bmc1_max_bound                        -1
% 3.13/0.99  --bmc1_max_bound_default                -1
% 3.13/0.99  --bmc1_symbol_reachability              true
% 3.13/0.99  --bmc1_property_lemmas                  false
% 3.13/0.99  --bmc1_k_induction                      false
% 3.13/0.99  --bmc1_non_equiv_states                 false
% 3.13/0.99  --bmc1_deadlock                         false
% 3.13/0.99  --bmc1_ucm                              false
% 3.13/0.99  --bmc1_add_unsat_core                   none
% 3.13/0.99  --bmc1_unsat_core_children              false
% 3.13/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.13/0.99  --bmc1_out_stat                         full
% 3.13/0.99  --bmc1_ground_init                      false
% 3.13/0.99  --bmc1_pre_inst_next_state              false
% 3.13/0.99  --bmc1_pre_inst_state                   false
% 3.13/0.99  --bmc1_pre_inst_reach_state             false
% 3.13/0.99  --bmc1_out_unsat_core                   false
% 3.13/0.99  --bmc1_aig_witness_out                  false
% 3.13/0.99  --bmc1_verbose                          false
% 3.13/0.99  --bmc1_dump_clauses_tptp                false
% 3.13/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.13/0.99  --bmc1_dump_file                        -
% 3.13/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.13/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.13/0.99  --bmc1_ucm_extend_mode                  1
% 3.13/0.99  --bmc1_ucm_init_mode                    2
% 3.13/0.99  --bmc1_ucm_cone_mode                    none
% 3.13/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.13/0.99  --bmc1_ucm_relax_model                  4
% 3.13/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.13/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.13/0.99  --bmc1_ucm_layered_model                none
% 3.13/0.99  --bmc1_ucm_max_lemma_size               10
% 3.13/0.99  
% 3.13/0.99  ------ AIG Options
% 3.13/0.99  
% 3.13/0.99  --aig_mode                              false
% 3.13/0.99  
% 3.13/0.99  ------ Instantiation Options
% 3.13/0.99  
% 3.13/0.99  --instantiation_flag                    true
% 3.13/0.99  --inst_sos_flag                         false
% 3.13/0.99  --inst_sos_phase                        true
% 3.13/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.13/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.13/0.99  --inst_lit_sel_side                     none
% 3.13/0.99  --inst_solver_per_active                1400
% 3.13/0.99  --inst_solver_calls_frac                1.
% 3.13/0.99  --inst_passive_queue_type               priority_queues
% 3.13/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.13/0.99  --inst_passive_queues_freq              [25;2]
% 3.13/0.99  --inst_dismatching                      true
% 3.13/0.99  --inst_eager_unprocessed_to_passive     true
% 3.13/0.99  --inst_prop_sim_given                   true
% 3.13/0.99  --inst_prop_sim_new                     false
% 3.13/0.99  --inst_subs_new                         false
% 3.13/0.99  --inst_eq_res_simp                      false
% 3.13/0.99  --inst_subs_given                       false
% 3.13/0.99  --inst_orphan_elimination               true
% 3.13/0.99  --inst_learning_loop_flag               true
% 3.13/0.99  --inst_learning_start                   3000
% 3.13/0.99  --inst_learning_factor                  2
% 3.13/0.99  --inst_start_prop_sim_after_learn       3
% 3.13/0.99  --inst_sel_renew                        solver
% 3.13/0.99  --inst_lit_activity_flag                true
% 3.13/0.99  --inst_restr_to_given                   false
% 3.13/0.99  --inst_activity_threshold               500
% 3.13/0.99  --inst_out_proof                        true
% 3.13/0.99  
% 3.13/0.99  ------ Resolution Options
% 3.13/0.99  
% 3.13/0.99  --resolution_flag                       false
% 3.13/0.99  --res_lit_sel                           adaptive
% 3.13/0.99  --res_lit_sel_side                      none
% 3.13/0.99  --res_ordering                          kbo
% 3.13/0.99  --res_to_prop_solver                    active
% 3.13/0.99  --res_prop_simpl_new                    false
% 3.13/0.99  --res_prop_simpl_given                  true
% 3.13/0.99  --res_passive_queue_type                priority_queues
% 3.13/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.13/0.99  --res_passive_queues_freq               [15;5]
% 3.13/0.99  --res_forward_subs                      full
% 3.13/0.99  --res_backward_subs                     full
% 3.13/0.99  --res_forward_subs_resolution           true
% 3.13/0.99  --res_backward_subs_resolution          true
% 3.13/0.99  --res_orphan_elimination                true
% 3.13/0.99  --res_time_limit                        2.
% 3.13/0.99  --res_out_proof                         true
% 3.13/0.99  
% 3.13/0.99  ------ Superposition Options
% 3.13/0.99  
% 3.13/0.99  --superposition_flag                    true
% 3.13/0.99  --sup_passive_queue_type                priority_queues
% 3.13/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.13/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.13/0.99  --demod_completeness_check              fast
% 3.13/0.99  --demod_use_ground                      true
% 3.13/0.99  --sup_to_prop_solver                    passive
% 3.13/0.99  --sup_prop_simpl_new                    true
% 3.13/0.99  --sup_prop_simpl_given                  true
% 3.13/0.99  --sup_fun_splitting                     false
% 3.13/0.99  --sup_smt_interval                      50000
% 3.13/0.99  
% 3.13/0.99  ------ Superposition Simplification Setup
% 3.13/0.99  
% 3.13/0.99  --sup_indices_passive                   []
% 3.13/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.13/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.13/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.13/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.13/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.13/0.99  --sup_full_bw                           [BwDemod]
% 3.13/0.99  --sup_immed_triv                        [TrivRules]
% 3.13/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.13/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.13/0.99  --sup_immed_bw_main                     []
% 3.13/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.13/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.13/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.13/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.13/0.99  
% 3.13/0.99  ------ Combination Options
% 3.13/0.99  
% 3.13/0.99  --comb_res_mult                         3
% 3.13/0.99  --comb_sup_mult                         2
% 3.13/0.99  --comb_inst_mult                        10
% 3.13/0.99  
% 3.13/0.99  ------ Debug Options
% 3.13/0.99  
% 3.13/0.99  --dbg_backtrace                         false
% 3.13/0.99  --dbg_dump_prop_clauses                 false
% 3.13/0.99  --dbg_dump_prop_clauses_file            -
% 3.13/0.99  --dbg_out_stat                          false
% 3.13/0.99  
% 3.13/0.99  
% 3.13/0.99  
% 3.13/0.99  
% 3.13/0.99  ------ Proving...
% 3.13/0.99  
% 3.13/0.99  
% 3.13/0.99  % SZS status Theorem for theBenchmark.p
% 3.13/0.99  
% 3.13/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.13/0.99  
% 3.13/0.99  fof(f15,conjecture,(
% 3.13/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) => ((m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1)) => ! [X5] : (m1_subset_1(X5,u1_struct_0(X3)) => ! [X6] : (m1_subset_1(X6,u1_struct_0(X2)) => (X5 = X6 => (r1_tmap_1(X3,X0,X4,X5) <=> r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)))))))))))),
% 3.13/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.13/0.99  
% 3.13/0.99  fof(f16,negated_conjecture,(
% 3.13/0.99    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) => ((m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1)) => ! [X5] : (m1_subset_1(X5,u1_struct_0(X3)) => ! [X6] : (m1_subset_1(X6,u1_struct_0(X2)) => (X5 = X6 => (r1_tmap_1(X3,X0,X4,X5) <=> r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)))))))))))),
% 3.13/0.99    inference(negated_conjecture,[],[f15])).
% 3.13/0.99  
% 3.13/0.99  fof(f39,plain,(
% 3.13/0.99    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : ((? [X5] : (? [X6] : (((r1_tmap_1(X3,X0,X4,X5) <~> r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)) & X5 = X6) & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & (m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1))) & (m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4))) & (m1_pre_topc(X3,X1) & ~v2_struct_0(X3))) & (m1_pre_topc(X2,X1) & ~v2_struct_0(X2))) & (l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 3.13/0.99    inference(ennf_transformation,[],[f16])).
% 3.13/0.99  
% 3.13/0.99  fof(f40,plain,(
% 3.13/0.99    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((r1_tmap_1(X3,X0,X4,X5) <~> r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 3.13/0.99    inference(flattening,[],[f39])).
% 3.13/0.99  
% 3.13/0.99  fof(f47,plain,(
% 3.13/0.99    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : (((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5))) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 3.13/0.99    inference(nnf_transformation,[],[f40])).
% 3.13/0.99  
% 3.13/0.99  fof(f48,plain,(
% 3.13/0.99    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 3.13/0.99    inference(flattening,[],[f47])).
% 3.13/0.99  
% 3.13/0.99  fof(f55,plain,(
% 3.13/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) => ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),sK7) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),sK7) | r1_tmap_1(X3,X0,X4,X5)) & sK7 = X5 & m1_subset_1(sK7,u1_struct_0(X2)))) )),
% 3.13/0.99    introduced(choice_axiom,[])).
% 3.13/0.99  
% 3.13/0.99  fof(f54,plain,(
% 3.13/0.99    ( ! [X4,X2,X0,X3,X1] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) => (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,sK6)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,sK6)) & sK6 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(sK6,u1_struct_0(X3)))) )),
% 3.13/0.99    introduced(choice_axiom,[])).
% 3.13/0.99  
% 3.13/0.99  fof(f53,plain,(
% 3.13/0.99    ( ! [X2,X0,X3,X1] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) => (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,sK5),X6) | ~r1_tmap_1(X3,X0,sK5,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,sK5),X6) | r1_tmap_1(X3,X0,sK5,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(sK5,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(sK5))) )),
% 3.13/0.99    introduced(choice_axiom,[])).
% 3.13/0.99  
% 3.13/0.99  fof(f52,plain,(
% 3.13/0.99    ( ! [X2,X0,X1] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) => (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,sK4,X2,X4),X6) | ~r1_tmap_1(sK4,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,sK4,X2,X4),X6) | r1_tmap_1(sK4,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(sK4))) & m1_pre_topc(X2,sK4) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(sK4),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(sK4,X1) & ~v2_struct_0(sK4))) )),
% 3.13/0.99    introduced(choice_axiom,[])).
% 3.13/0.99  
% 3.13/0.99  fof(f51,plain,(
% 3.13/0.99    ( ! [X0,X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) => (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(sK3,X0,k3_tmap_1(X1,X0,X3,sK3,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(sK3,X0,k3_tmap_1(X1,X0,X3,sK3,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(sK3))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(sK3,X3) & m1_pre_topc(sK3,X1) & v1_tsep_1(sK3,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) & m1_pre_topc(sK3,X1) & ~v2_struct_0(sK3))) )),
% 3.13/0.99    introduced(choice_axiom,[])).
% 3.13/0.99  
% 3.13/0.99  fof(f50,plain,(
% 3.13/0.99    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(sK2,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(sK2,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,sK2) & v1_tsep_1(X2,sK2) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(X3,sK2) & ~v2_struct_0(X3)) & m1_pre_topc(X2,sK2) & ~v2_struct_0(X2)) & l1_pre_topc(sK2) & v2_pre_topc(sK2) & ~v2_struct_0(sK2))) )),
% 3.13/0.99    introduced(choice_axiom,[])).
% 3.13/0.99  
% 3.13/0.99  fof(f49,plain,(
% 3.13/0.99    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,sK1,k3_tmap_1(X1,sK1,X3,X2,X4),X6) | ~r1_tmap_1(X3,sK1,X4,X5)) & (r1_tmap_1(X2,sK1,k3_tmap_1(X1,sK1,X3,X2,X4),X6) | r1_tmap_1(X3,sK1,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(sK1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(sK1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1))),
% 3.13/0.99    introduced(choice_axiom,[])).
% 3.13/0.99  
% 3.13/0.99  fof(f56,plain,(
% 3.13/0.99    (((((((~r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7) | ~r1_tmap_1(sK4,sK1,sK5,sK6)) & (r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7) | r1_tmap_1(sK4,sK1,sK5,sK6)) & sK6 = sK7 & m1_subset_1(sK7,u1_struct_0(sK3))) & m1_subset_1(sK6,u1_struct_0(sK4))) & m1_pre_topc(sK3,sK4) & m1_pre_topc(sK3,sK2) & v1_tsep_1(sK3,sK2) & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK1)))) & v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK1)) & v1_funct_1(sK5)) & m1_pre_topc(sK4,sK2) & ~v2_struct_0(sK4)) & m1_pre_topc(sK3,sK2) & ~v2_struct_0(sK3)) & l1_pre_topc(sK2) & v2_pre_topc(sK2) & ~v2_struct_0(sK2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1)),
% 3.13/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4,sK5,sK6,sK7])],[f48,f55,f54,f53,f52,f51,f50,f49])).
% 3.13/0.99  
% 3.13/0.99  fof(f88,plain,(
% 3.13/0.99    m1_pre_topc(sK4,sK2)),
% 3.13/0.99    inference(cnf_transformation,[],[f56])).
% 3.13/0.99  
% 3.13/0.99  fof(f94,plain,(
% 3.13/0.99    m1_pre_topc(sK3,sK4)),
% 3.13/0.99    inference(cnf_transformation,[],[f56])).
% 3.13/0.99  
% 3.13/0.99  fof(f9,axiom,(
% 3.13/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : (m1_pre_topc(X2,X0) => ! [X3] : (m1_pre_topc(X3,X0) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X4)) => (m1_pre_topc(X3,X2) => k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4)))))))),
% 3.13/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.13/0.99  
% 3.13/0.99  fof(f28,plain,(
% 3.13/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : ((k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) | ~m1_pre_topc(X3,X2)) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4))) | ~m1_pre_topc(X3,X0)) | ~m1_pre_topc(X2,X0)) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.13/0.99    inference(ennf_transformation,[],[f9])).
% 3.13/0.99  
% 3.13/0.99  fof(f29,plain,(
% 3.13/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) | ~m1_pre_topc(X3,X2) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4)) | ~m1_pre_topc(X3,X0)) | ~m1_pre_topc(X2,X0)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.13/0.99    inference(flattening,[],[f28])).
% 3.13/0.99  
% 3.13/0.99  fof(f71,plain,(
% 3.13/0.99    ( ! [X4,X2,X0,X3,X1] : (k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) | ~m1_pre_topc(X3,X2) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | ~m1_pre_topc(X2,X0) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.13/0.99    inference(cnf_transformation,[],[f29])).
% 3.13/0.99  
% 3.13/0.99  fof(f90,plain,(
% 3.13/0.99    v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK1))),
% 3.13/0.99    inference(cnf_transformation,[],[f56])).
% 3.13/0.99  
% 3.13/0.99  fof(f89,plain,(
% 3.13/0.99    v1_funct_1(sK5)),
% 3.13/0.99    inference(cnf_transformation,[],[f56])).
% 3.13/0.99  
% 3.13/0.99  fof(f14,axiom,(
% 3.13/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => ! [X2] : (m1_pre_topc(X2,X1) => m1_pre_topc(X2,X0))))),
% 3.13/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.13/0.99  
% 3.13/0.99  fof(f37,plain,(
% 3.13/0.99    ! [X0] : (! [X1] : (! [X2] : (m1_pre_topc(X2,X0) | ~m1_pre_topc(X2,X1)) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 3.13/0.99    inference(ennf_transformation,[],[f14])).
% 3.13/0.99  
% 3.13/0.99  fof(f38,plain,(
% 3.13/0.99    ! [X0] : (! [X1] : (! [X2] : (m1_pre_topc(X2,X0) | ~m1_pre_topc(X2,X1)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 3.13/0.99    inference(flattening,[],[f37])).
% 3.13/0.99  
% 3.13/0.99  fof(f78,plain,(
% 3.13/0.99    ( ! [X2,X0,X1] : (m1_pre_topc(X2,X0) | ~m1_pre_topc(X2,X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 3.13/0.99    inference(cnf_transformation,[],[f38])).
% 3.13/0.99  
% 3.13/0.99  fof(f79,plain,(
% 3.13/0.99    ~v2_struct_0(sK1)),
% 3.13/0.99    inference(cnf_transformation,[],[f56])).
% 3.13/0.99  
% 3.13/0.99  fof(f80,plain,(
% 3.13/0.99    v2_pre_topc(sK1)),
% 3.13/0.99    inference(cnf_transformation,[],[f56])).
% 3.13/0.99  
% 3.13/0.99  fof(f81,plain,(
% 3.13/0.99    l1_pre_topc(sK1)),
% 3.13/0.99    inference(cnf_transformation,[],[f56])).
% 3.13/0.99  
% 3.13/0.99  fof(f91,plain,(
% 3.13/0.99    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK1))))),
% 3.13/0.99    inference(cnf_transformation,[],[f56])).
% 3.13/0.99  
% 3.13/0.99  fof(f8,axiom,(
% 3.13/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ! [X3] : (m1_pre_topc(X3,X0) => k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3))))))),
% 3.13/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.13/0.99  
% 3.13/0.99  fof(f26,plain,(
% 3.13/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) | ~m1_pre_topc(X3,X0)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2))) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.13/0.99    inference(ennf_transformation,[],[f8])).
% 3.13/0.99  
% 3.13/0.99  fof(f27,plain,(
% 3.13/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) | ~m1_pre_topc(X3,X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.13/0.99    inference(flattening,[],[f26])).
% 3.13/0.99  
% 3.13/0.99  fof(f70,plain,(
% 3.13/0.99    ( ! [X2,X0,X3,X1] : (k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) | ~m1_pre_topc(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.13/0.99    inference(cnf_transformation,[],[f27])).
% 3.13/0.99  
% 3.13/0.99  fof(f84,plain,(
% 3.13/0.99    l1_pre_topc(sK2)),
% 3.13/0.99    inference(cnf_transformation,[],[f56])).
% 3.13/0.99  
% 3.13/0.99  fof(f87,plain,(
% 3.13/0.99    ~v2_struct_0(sK4)),
% 3.13/0.99    inference(cnf_transformation,[],[f56])).
% 3.13/0.99  
% 3.13/0.99  fof(f5,axiom,(
% 3.13/0.99    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => l1_pre_topc(X1)))),
% 3.13/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.13/0.99  
% 3.13/0.99  fof(f21,plain,(
% 3.13/0.99    ! [X0] : (! [X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 3.13/0.99    inference(ennf_transformation,[],[f5])).
% 3.13/0.99  
% 3.13/0.99  fof(f67,plain,(
% 3.13/0.99    ( ! [X0,X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 3.13/0.99    inference(cnf_transformation,[],[f21])).
% 3.13/0.99  
% 3.13/0.99  fof(f83,plain,(
% 3.13/0.99    v2_pre_topc(sK2)),
% 3.13/0.99    inference(cnf_transformation,[],[f56])).
% 3.13/0.99  
% 3.13/0.99  fof(f3,axiom,(
% 3.13/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => v2_pre_topc(X1)))),
% 3.13/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.13/0.99  
% 3.13/0.99  fof(f18,plain,(
% 3.13/0.99    ! [X0] : (! [X1] : (v2_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 3.13/0.99    inference(ennf_transformation,[],[f3])).
% 3.13/0.99  
% 3.13/0.99  fof(f19,plain,(
% 3.13/0.99    ! [X0] : (! [X1] : (v2_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 3.13/0.99    inference(flattening,[],[f18])).
% 3.13/0.99  
% 3.13/0.99  fof(f65,plain,(
% 3.13/0.99    ( ! [X0,X1] : (v2_pre_topc(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 3.13/0.99    inference(cnf_transformation,[],[f19])).
% 3.13/0.99  
% 3.13/0.99  fof(f82,plain,(
% 3.13/0.99    ~v2_struct_0(sK2)),
% 3.13/0.99    inference(cnf_transformation,[],[f56])).
% 3.13/0.99  
% 3.13/0.99  fof(f98,plain,(
% 3.13/0.99    r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7) | r1_tmap_1(sK4,sK1,sK5,sK6)),
% 3.13/1.00    inference(cnf_transformation,[],[f56])).
% 3.13/1.00  
% 3.13/1.00  fof(f97,plain,(
% 3.13/1.00    sK6 = sK7),
% 3.13/1.00    inference(cnf_transformation,[],[f56])).
% 3.13/1.00  
% 3.13/1.00  fof(f85,plain,(
% 3.13/1.00    ~v2_struct_0(sK3)),
% 3.13/1.00    inference(cnf_transformation,[],[f56])).
% 3.13/1.00  
% 3.13/1.00  fof(f96,plain,(
% 3.13/1.00    m1_subset_1(sK7,u1_struct_0(sK3))),
% 3.13/1.00    inference(cnf_transformation,[],[f56])).
% 3.13/1.00  
% 3.13/1.00  fof(f13,axiom,(
% 3.13/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X2)) => ! [X3] : ((m1_pre_topc(X3,X1) & v1_tsep_1(X3,X1) & ~v2_struct_0(X3)) => ! [X4] : (m1_subset_1(X4,u1_struct_0(X1)) => ! [X5] : (m1_subset_1(X5,u1_struct_0(X3)) => (X4 = X5 => (r1_tmap_1(X1,X0,X2,X4) <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)))))))))),
% 3.13/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.13/1.00  
% 3.13/1.00  fof(f35,plain,(
% 3.13/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : (((r1_tmap_1(X1,X0,X2,X4) <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)) | X4 != X5) | ~m1_subset_1(X5,u1_struct_0(X3))) | ~m1_subset_1(X4,u1_struct_0(X1))) | (~m1_pre_topc(X3,X1) | ~v1_tsep_1(X3,X1) | v2_struct_0(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2))) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.13/1.00    inference(ennf_transformation,[],[f13])).
% 3.13/1.00  
% 3.13/1.00  fof(f36,plain,(
% 3.13/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : ((r1_tmap_1(X1,X0,X2,X4) <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)) | X4 != X5 | ~m1_subset_1(X5,u1_struct_0(X3))) | ~m1_subset_1(X4,u1_struct_0(X1))) | ~m1_pre_topc(X3,X1) | ~v1_tsep_1(X3,X1) | v2_struct_0(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.13/1.00    inference(flattening,[],[f35])).
% 3.13/1.00  
% 3.13/1.00  fof(f46,plain,(
% 3.13/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : (((r1_tmap_1(X1,X0,X2,X4) | ~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5)) & (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | ~r1_tmap_1(X1,X0,X2,X4))) | X4 != X5 | ~m1_subset_1(X5,u1_struct_0(X3))) | ~m1_subset_1(X4,u1_struct_0(X1))) | ~m1_pre_topc(X3,X1) | ~v1_tsep_1(X3,X1) | v2_struct_0(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.13/1.00    inference(nnf_transformation,[],[f36])).
% 3.13/1.00  
% 3.13/1.00  fof(f76,plain,(
% 3.13/1.00    ( ! [X4,X2,X0,X5,X3,X1] : (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | ~r1_tmap_1(X1,X0,X2,X4) | X4 != X5 | ~m1_subset_1(X5,u1_struct_0(X3)) | ~m1_subset_1(X4,u1_struct_0(X1)) | ~m1_pre_topc(X3,X1) | ~v1_tsep_1(X3,X1) | v2_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.13/1.00    inference(cnf_transformation,[],[f46])).
% 3.13/1.00  
% 3.13/1.00  fof(f104,plain,(
% 3.13/1.00    ( ! [X2,X0,X5,X3,X1] : (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | ~r1_tmap_1(X1,X0,X2,X5) | ~m1_subset_1(X5,u1_struct_0(X3)) | ~m1_subset_1(X5,u1_struct_0(X1)) | ~m1_pre_topc(X3,X1) | ~v1_tsep_1(X3,X1) | v2_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.13/1.00    inference(equality_resolution,[],[f76])).
% 3.13/1.00  
% 3.13/1.00  fof(f12,axiom,(
% 3.13/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X2)) => ! [X3] : ((m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) => ! [X4] : (m1_subset_1(X4,u1_struct_0(X1)) => ! [X5] : (m1_subset_1(X5,u1_struct_0(X3)) => ((r1_tmap_1(X1,X0,X2,X4) & X4 = X5) => r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5))))))))),
% 3.13/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.13/1.00  
% 3.13/1.00  fof(f33,plain,(
% 3.13/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : ((r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | (~r1_tmap_1(X1,X0,X2,X4) | X4 != X5)) | ~m1_subset_1(X5,u1_struct_0(X3))) | ~m1_subset_1(X4,u1_struct_0(X1))) | (~m1_pre_topc(X3,X1) | v2_struct_0(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2))) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.13/1.00    inference(ennf_transformation,[],[f12])).
% 3.13/1.00  
% 3.13/1.00  fof(f34,plain,(
% 3.13/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | ~r1_tmap_1(X1,X0,X2,X4) | X4 != X5 | ~m1_subset_1(X5,u1_struct_0(X3))) | ~m1_subset_1(X4,u1_struct_0(X1))) | ~m1_pre_topc(X3,X1) | v2_struct_0(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.13/1.00    inference(flattening,[],[f33])).
% 3.13/1.00  
% 3.13/1.00  fof(f75,plain,(
% 3.13/1.00    ( ! [X4,X2,X0,X5,X3,X1] : (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | ~r1_tmap_1(X1,X0,X2,X4) | X4 != X5 | ~m1_subset_1(X5,u1_struct_0(X3)) | ~m1_subset_1(X4,u1_struct_0(X1)) | ~m1_pre_topc(X3,X1) | v2_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.13/1.00    inference(cnf_transformation,[],[f34])).
% 3.13/1.00  
% 3.13/1.00  fof(f102,plain,(
% 3.13/1.00    ( ! [X2,X0,X5,X3,X1] : (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | ~r1_tmap_1(X1,X0,X2,X5) | ~m1_subset_1(X5,u1_struct_0(X3)) | ~m1_subset_1(X5,u1_struct_0(X1)) | ~m1_pre_topc(X3,X1) | v2_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.13/1.00    inference(equality_resolution,[],[f75])).
% 3.13/1.00  
% 3.13/1.00  fof(f7,axiom,(
% 3.13/1.00    ! [X0] : ((l1_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_pre_topc(X1,X0) & ~v2_struct_0(X1)) => ! [X2] : (m1_subset_1(X2,u1_struct_0(X1)) => m1_subset_1(X2,u1_struct_0(X0)))))),
% 3.13/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.13/1.00  
% 3.13/1.00  fof(f24,plain,(
% 3.13/1.00    ! [X0] : (! [X1] : (! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X1))) | (~m1_pre_topc(X1,X0) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | v2_struct_0(X0)))),
% 3.13/1.00    inference(ennf_transformation,[],[f7])).
% 3.13/1.00  
% 3.13/1.00  fof(f25,plain,(
% 3.13/1.00    ! [X0] : (! [X1] : (! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X1))) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | v2_struct_0(X0))),
% 3.13/1.00    inference(flattening,[],[f24])).
% 3.13/1.00  
% 3.13/1.00  fof(f69,plain,(
% 3.13/1.00    ( ! [X2,X0,X1] : (m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X1)) | ~m1_pre_topc(X1,X0) | v2_struct_0(X1) | ~l1_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.13/1.00    inference(cnf_transformation,[],[f25])).
% 3.13/1.00  
% 3.13/1.00  fof(f99,plain,(
% 3.13/1.00    ~r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7) | ~r1_tmap_1(sK4,sK1,sK5,sK6)),
% 3.13/1.00    inference(cnf_transformation,[],[f56])).
% 3.13/1.00  
% 3.13/1.00  fof(f77,plain,(
% 3.13/1.00    ( ! [X4,X2,X0,X5,X3,X1] : (r1_tmap_1(X1,X0,X2,X4) | ~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | X4 != X5 | ~m1_subset_1(X5,u1_struct_0(X3)) | ~m1_subset_1(X4,u1_struct_0(X1)) | ~m1_pre_topc(X3,X1) | ~v1_tsep_1(X3,X1) | v2_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.13/1.00    inference(cnf_transformation,[],[f46])).
% 3.13/1.00  
% 3.13/1.00  fof(f103,plain,(
% 3.13/1.00    ( ! [X2,X0,X5,X3,X1] : (r1_tmap_1(X1,X0,X2,X5) | ~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X5) | ~m1_subset_1(X5,u1_struct_0(X3)) | ~m1_subset_1(X5,u1_struct_0(X1)) | ~m1_pre_topc(X3,X1) | ~v1_tsep_1(X3,X1) | v2_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.13/1.00    inference(equality_resolution,[],[f77])).
% 3.13/1.00  
% 3.13/1.00  fof(f2,axiom,(
% 3.13/1.00    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 3.13/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.13/1.00  
% 3.13/1.00  fof(f17,plain,(
% 3.13/1.00    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 3.13/1.00    inference(ennf_transformation,[],[f2])).
% 3.13/1.00  
% 3.13/1.00  fof(f45,plain,(
% 3.13/1.00    ! [X0,X1] : ((((m1_subset_1(X1,X0) | ~v1_xboole_0(X1)) & (v1_xboole_0(X1) | ~m1_subset_1(X1,X0))) | ~v1_xboole_0(X0)) & (((m1_subset_1(X1,X0) | ~r2_hidden(X1,X0)) & (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0))) | v1_xboole_0(X0)))),
% 3.13/1.00    inference(nnf_transformation,[],[f17])).
% 3.13/1.00  
% 3.13/1.00  fof(f63,plain,(
% 3.13/1.00    ( ! [X0,X1] : (v1_xboole_0(X1) | ~m1_subset_1(X1,X0) | ~v1_xboole_0(X0)) )),
% 3.13/1.00    inference(cnf_transformation,[],[f45])).
% 3.13/1.00  
% 3.13/1.00  fof(f1,axiom,(
% 3.13/1.00    ! [X0,X1] : (k1_zfmisc_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> r1_tarski(X2,X0)))),
% 3.13/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.13/1.00  
% 3.13/1.00  fof(f41,plain,(
% 3.13/1.00    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ~r1_tarski(X2,X0)) & (r1_tarski(X2,X0) | ~r2_hidden(X2,X1))) | k1_zfmisc_1(X0) != X1))),
% 3.13/1.00    inference(nnf_transformation,[],[f1])).
% 3.13/1.00  
% 3.13/1.00  fof(f42,plain,(
% 3.13/1.00    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 3.13/1.00    inference(rectify,[],[f41])).
% 3.13/1.00  
% 3.13/1.00  fof(f43,plain,(
% 3.13/1.00    ! [X1,X0] : (? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1))) => ((~r1_tarski(sK0(X0,X1),X0) | ~r2_hidden(sK0(X0,X1),X1)) & (r1_tarski(sK0(X0,X1),X0) | r2_hidden(sK0(X0,X1),X1))))),
% 3.13/1.00    introduced(choice_axiom,[])).
% 3.13/1.00  
% 3.13/1.00  fof(f44,plain,(
% 3.13/1.00    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ((~r1_tarski(sK0(X0,X1),X0) | ~r2_hidden(sK0(X0,X1),X1)) & (r1_tarski(sK0(X0,X1),X0) | r2_hidden(sK0(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 3.13/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f42,f43])).
% 3.13/1.00  
% 3.13/1.00  fof(f57,plain,(
% 3.13/1.00    ( ! [X0,X3,X1] : (r1_tarski(X3,X0) | ~r2_hidden(X3,X1) | k1_zfmisc_1(X0) != X1) )),
% 3.13/1.00    inference(cnf_transformation,[],[f44])).
% 3.13/1.00  
% 3.13/1.00  fof(f101,plain,(
% 3.13/1.00    ( ! [X0,X3] : (r1_tarski(X3,X0) | ~r2_hidden(X3,k1_zfmisc_1(X0))) )),
% 3.13/1.00    inference(equality_resolution,[],[f57])).
% 3.13/1.00  
% 3.13/1.00  fof(f86,plain,(
% 3.13/1.00    m1_pre_topc(sK3,sK2)),
% 3.13/1.00    inference(cnf_transformation,[],[f56])).
% 3.13/1.00  
% 3.13/1.00  fof(f10,axiom,(
% 3.13/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => (r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) => (m1_pre_topc(X1,X2) & v1_tsep_1(X1,X2))))))),
% 3.13/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.13/1.00  
% 3.13/1.00  fof(f30,plain,(
% 3.13/1.00    ! [X0] : (! [X1] : (! [X2] : (((m1_pre_topc(X1,X2) & v1_tsep_1(X1,X2)) | ~r1_tarski(u1_struct_0(X1),u1_struct_0(X2))) | (~m1_pre_topc(X2,X0) | v2_struct_0(X2))) | (~m1_pre_topc(X1,X0) | ~v1_tsep_1(X1,X0))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 3.13/1.00    inference(ennf_transformation,[],[f10])).
% 3.13/1.00  
% 3.13/1.00  fof(f31,plain,(
% 3.13/1.00    ! [X0] : (! [X1] : (! [X2] : ((m1_pre_topc(X1,X2) & v1_tsep_1(X1,X2)) | ~r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2)) | ~m1_pre_topc(X1,X0) | ~v1_tsep_1(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 3.13/1.00    inference(flattening,[],[f30])).
% 3.13/1.00  
% 3.13/1.00  fof(f72,plain,(
% 3.13/1.00    ( ! [X2,X0,X1] : (v1_tsep_1(X1,X2) | ~r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_pre_topc(X1,X0) | ~v1_tsep_1(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 3.13/1.00    inference(cnf_transformation,[],[f31])).
% 3.13/1.00  
% 3.13/1.00  fof(f61,plain,(
% 3.13/1.00    ( ! [X0,X1] : (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 3.13/1.00    inference(cnf_transformation,[],[f45])).
% 3.13/1.00  
% 3.13/1.00  fof(f4,axiom,(
% 3.13/1.00    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 3.13/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.13/1.00  
% 3.13/1.00  fof(f20,plain,(
% 3.13/1.00    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 3.13/1.00    inference(ennf_transformation,[],[f4])).
% 3.13/1.00  
% 3.13/1.00  fof(f66,plain,(
% 3.13/1.00    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 3.13/1.00    inference(cnf_transformation,[],[f20])).
% 3.13/1.00  
% 3.13/1.00  fof(f6,axiom,(
% 3.13/1.00    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 3.13/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.13/1.00  
% 3.13/1.00  fof(f22,plain,(
% 3.13/1.00    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 3.13/1.00    inference(ennf_transformation,[],[f6])).
% 3.13/1.00  
% 3.13/1.00  fof(f23,plain,(
% 3.13/1.00    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 3.13/1.00    inference(flattening,[],[f22])).
% 3.13/1.00  
% 3.13/1.00  fof(f68,plain,(
% 3.13/1.00    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 3.13/1.00    inference(cnf_transformation,[],[f23])).
% 3.13/1.00  
% 3.13/1.00  fof(f11,axiom,(
% 3.13/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))))),
% 3.13/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.13/1.00  
% 3.13/1.00  fof(f32,plain,(
% 3.13/1.00    ! [X0] : (! [X1] : (m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 3.13/1.00    inference(ennf_transformation,[],[f11])).
% 3.13/1.00  
% 3.13/1.00  fof(f74,plain,(
% 3.13/1.00    ( ! [X0,X1] : (m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 3.13/1.00    inference(cnf_transformation,[],[f32])).
% 3.13/1.00  
% 3.13/1.00  fof(f92,plain,(
% 3.13/1.00    v1_tsep_1(sK3,sK2)),
% 3.13/1.00    inference(cnf_transformation,[],[f56])).
% 3.13/1.00  
% 3.13/1.00  cnf(c_33,negated_conjecture,
% 3.13/1.00      ( m1_pre_topc(sK4,sK2) ),
% 3.13/1.00      inference(cnf_transformation,[],[f88]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_2714,plain,
% 3.13/1.00      ( m1_pre_topc(sK4,sK2) = iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_33]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_27,negated_conjecture,
% 3.13/1.00      ( m1_pre_topc(sK3,sK4) ),
% 3.13/1.00      inference(cnf_transformation,[],[f94]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_2718,plain,
% 3.13/1.00      ( m1_pre_topc(sK3,sK4) = iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_14,plain,
% 3.13/1.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 3.13/1.00      | ~ m1_pre_topc(X3,X4)
% 3.13/1.00      | ~ m1_pre_topc(X3,X1)
% 3.13/1.00      | ~ m1_pre_topc(X1,X4)
% 3.13/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 3.13/1.00      | ~ v1_funct_1(X0)
% 3.13/1.00      | v2_struct_0(X4)
% 3.13/1.00      | v2_struct_0(X2)
% 3.13/1.00      | ~ l1_pre_topc(X4)
% 3.13/1.00      | ~ l1_pre_topc(X2)
% 3.13/1.00      | ~ v2_pre_topc(X4)
% 3.13/1.00      | ~ v2_pre_topc(X2)
% 3.13/1.00      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k3_tmap_1(X4,X2,X1,X3,X0) ),
% 3.13/1.00      inference(cnf_transformation,[],[f71]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_31,negated_conjecture,
% 3.13/1.00      ( v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK1)) ),
% 3.13/1.00      inference(cnf_transformation,[],[f90]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_861,plain,
% 3.13/1.00      ( ~ m1_pre_topc(X0,X1)
% 3.13/1.00      | ~ m1_pre_topc(X0,X2)
% 3.13/1.00      | ~ m1_pre_topc(X1,X2)
% 3.13/1.00      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X4))))
% 3.13/1.00      | ~ v1_funct_1(X3)
% 3.13/1.00      | v2_struct_0(X4)
% 3.13/1.00      | v2_struct_0(X2)
% 3.13/1.00      | ~ l1_pre_topc(X4)
% 3.13/1.00      | ~ l1_pre_topc(X2)
% 3.13/1.00      | ~ v2_pre_topc(X4)
% 3.13/1.00      | ~ v2_pre_topc(X2)
% 3.13/1.00      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X4),X3,u1_struct_0(X0)) = k3_tmap_1(X2,X4,X1,X0,X3)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X4) != u1_struct_0(sK1)
% 3.13/1.00      | sK5 != X3 ),
% 3.13/1.00      inference(resolution_lifted,[status(thm)],[c_14,c_31]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_862,plain,
% 3.13/1.00      ( ~ m1_pre_topc(X0,X1)
% 3.13/1.00      | ~ m1_pre_topc(X0,X2)
% 3.13/1.00      | ~ m1_pre_topc(X1,X2)
% 3.13/1.00      | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X3))))
% 3.13/1.00      | ~ v1_funct_1(sK5)
% 3.13/1.00      | v2_struct_0(X2)
% 3.13/1.00      | v2_struct_0(X3)
% 3.13/1.00      | ~ l1_pre_topc(X2)
% 3.13/1.00      | ~ l1_pre_topc(X3)
% 3.13/1.00      | ~ v2_pre_topc(X2)
% 3.13/1.00      | ~ v2_pre_topc(X3)
% 3.13/1.00      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X3),sK5,u1_struct_0(X0)) = k3_tmap_1(X2,X3,X1,X0,sK5)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X3) != u1_struct_0(sK1) ),
% 3.13/1.00      inference(unflattening,[status(thm)],[c_861]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_32,negated_conjecture,
% 3.13/1.00      ( v1_funct_1(sK5) ),
% 3.13/1.00      inference(cnf_transformation,[],[f89]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_866,plain,
% 3.13/1.00      ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X3))))
% 3.13/1.00      | ~ m1_pre_topc(X1,X2)
% 3.13/1.00      | ~ m1_pre_topc(X0,X2)
% 3.13/1.00      | ~ m1_pre_topc(X0,X1)
% 3.13/1.00      | v2_struct_0(X2)
% 3.13/1.00      | v2_struct_0(X3)
% 3.13/1.00      | ~ l1_pre_topc(X2)
% 3.13/1.00      | ~ l1_pre_topc(X3)
% 3.13/1.00      | ~ v2_pre_topc(X2)
% 3.13/1.00      | ~ v2_pre_topc(X3)
% 3.13/1.00      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X3),sK5,u1_struct_0(X0)) = k3_tmap_1(X2,X3,X1,X0,sK5)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X3) != u1_struct_0(sK1) ),
% 3.13/1.00      inference(global_propositional_subsumption,
% 3.13/1.00                [status(thm)],
% 3.13/1.00                [c_862,c_32]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_867,plain,
% 3.13/1.00      ( ~ m1_pre_topc(X0,X1)
% 3.13/1.00      | ~ m1_pre_topc(X0,X2)
% 3.13/1.00      | ~ m1_pre_topc(X1,X2)
% 3.13/1.00      | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X3))))
% 3.13/1.00      | v2_struct_0(X2)
% 3.13/1.00      | v2_struct_0(X3)
% 3.13/1.00      | ~ l1_pre_topc(X2)
% 3.13/1.00      | ~ l1_pre_topc(X3)
% 3.13/1.00      | ~ v2_pre_topc(X2)
% 3.13/1.00      | ~ v2_pre_topc(X3)
% 3.13/1.00      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X3),sK5,u1_struct_0(X0)) = k3_tmap_1(X2,X3,X1,X0,sK5)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X3) != u1_struct_0(sK1) ),
% 3.13/1.00      inference(renaming,[status(thm)],[c_866]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_21,plain,
% 3.13/1.00      ( ~ m1_pre_topc(X0,X1)
% 3.13/1.00      | ~ m1_pre_topc(X2,X0)
% 3.13/1.00      | m1_pre_topc(X2,X1)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X1) ),
% 3.13/1.00      inference(cnf_transformation,[],[f78]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_898,plain,
% 3.13/1.00      ( ~ m1_pre_topc(X0,X1)
% 3.13/1.00      | ~ m1_pre_topc(X1,X2)
% 3.13/1.00      | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X3))))
% 3.13/1.00      | v2_struct_0(X2)
% 3.13/1.00      | v2_struct_0(X3)
% 3.13/1.00      | ~ l1_pre_topc(X2)
% 3.13/1.00      | ~ l1_pre_topc(X3)
% 3.13/1.00      | ~ v2_pre_topc(X2)
% 3.13/1.00      | ~ v2_pre_topc(X3)
% 3.13/1.00      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X3),sK5,u1_struct_0(X0)) = k3_tmap_1(X2,X3,X1,X0,sK5)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X3) != u1_struct_0(sK1) ),
% 3.13/1.00      inference(forward_subsumption_resolution,
% 3.13/1.00                [status(thm)],
% 3.13/1.00                [c_867,c_21]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_2704,plain,
% 3.13/1.00      ( k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),sK5,u1_struct_0(X2)) = k3_tmap_1(X3,X1,X0,X2,sK5)
% 3.13/1.00      | u1_struct_0(X0) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK1)
% 3.13/1.00      | m1_pre_topc(X2,X0) != iProver_top
% 3.13/1.00      | m1_pre_topc(X0,X3) != iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) != iProver_top
% 3.13/1.00      | v2_struct_0(X3) = iProver_top
% 3.13/1.00      | v2_struct_0(X1) = iProver_top
% 3.13/1.00      | l1_pre_topc(X3) != iProver_top
% 3.13/1.00      | l1_pre_topc(X1) != iProver_top
% 3.13/1.00      | v2_pre_topc(X3) != iProver_top
% 3.13/1.00      | v2_pre_topc(X1) != iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_898]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_4345,plain,
% 3.13/1.00      ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(X0),sK5,u1_struct_0(X1)) = k3_tmap_1(X2,X0,sK4,X1,sK5)
% 3.13/1.00      | u1_struct_0(X0) != u1_struct_0(sK1)
% 3.13/1.00      | m1_pre_topc(X1,sK4) != iProver_top
% 3.13/1.00      | m1_pre_topc(sK4,X2) != iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | v2_struct_0(X2) = iProver_top
% 3.13/1.00      | l1_pre_topc(X0) != iProver_top
% 3.13/1.00      | l1_pre_topc(X2) != iProver_top
% 3.13/1.00      | v2_pre_topc(X0) != iProver_top
% 3.13/1.00      | v2_pre_topc(X2) != iProver_top ),
% 3.13/1.00      inference(equality_resolution,[status(thm)],[c_2704]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_4700,plain,
% 3.13/1.00      ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK1),sK5,u1_struct_0(X0)) = k3_tmap_1(X1,sK1,sK4,X0,sK5)
% 3.13/1.00      | m1_pre_topc(X0,sK4) != iProver_top
% 3.13/1.00      | m1_pre_topc(sK4,X1) != iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK1)))) != iProver_top
% 3.13/1.00      | v2_struct_0(X1) = iProver_top
% 3.13/1.00      | v2_struct_0(sK1) = iProver_top
% 3.13/1.00      | l1_pre_topc(X1) != iProver_top
% 3.13/1.00      | l1_pre_topc(sK1) != iProver_top
% 3.13/1.00      | v2_pre_topc(X1) != iProver_top
% 3.13/1.00      | v2_pre_topc(sK1) != iProver_top ),
% 3.13/1.00      inference(equality_resolution,[status(thm)],[c_4345]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_42,negated_conjecture,
% 3.13/1.00      ( ~ v2_struct_0(sK1) ),
% 3.13/1.00      inference(cnf_transformation,[],[f79]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_43,plain,
% 3.13/1.00      ( v2_struct_0(sK1) != iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_42]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_41,negated_conjecture,
% 3.13/1.00      ( v2_pre_topc(sK1) ),
% 3.13/1.00      inference(cnf_transformation,[],[f80]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_44,plain,
% 3.13/1.00      ( v2_pre_topc(sK1) = iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_41]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_40,negated_conjecture,
% 3.13/1.00      ( l1_pre_topc(sK1) ),
% 3.13/1.00      inference(cnf_transformation,[],[f81]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_45,plain,
% 3.13/1.00      ( l1_pre_topc(sK1) = iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_40]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_30,negated_conjecture,
% 3.13/1.00      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK1)))) ),
% 3.13/1.00      inference(cnf_transformation,[],[f91]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_55,plain,
% 3.13/1.00      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK1)))) = iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_30]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_5521,plain,
% 3.13/1.00      ( v2_pre_topc(X1) != iProver_top
% 3.13/1.00      | v2_struct_0(X1) = iProver_top
% 3.13/1.00      | k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK1),sK5,u1_struct_0(X0)) = k3_tmap_1(X1,sK1,sK4,X0,sK5)
% 3.13/1.00      | m1_pre_topc(X0,sK4) != iProver_top
% 3.13/1.00      | m1_pre_topc(sK4,X1) != iProver_top
% 3.13/1.00      | l1_pre_topc(X1) != iProver_top ),
% 3.13/1.00      inference(global_propositional_subsumption,
% 3.13/1.00                [status(thm)],
% 3.13/1.00                [c_4700,c_43,c_44,c_45,c_55]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_5522,plain,
% 3.13/1.00      ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK1),sK5,u1_struct_0(X0)) = k3_tmap_1(X1,sK1,sK4,X0,sK5)
% 3.13/1.00      | m1_pre_topc(X0,sK4) != iProver_top
% 3.13/1.00      | m1_pre_topc(sK4,X1) != iProver_top
% 3.13/1.00      | v2_struct_0(X1) = iProver_top
% 3.13/1.00      | l1_pre_topc(X1) != iProver_top
% 3.13/1.00      | v2_pre_topc(X1) != iProver_top ),
% 3.13/1.00      inference(renaming,[status(thm)],[c_5521]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_5533,plain,
% 3.13/1.00      ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK1),sK5,u1_struct_0(sK3)) = k3_tmap_1(X0,sK1,sK4,sK3,sK5)
% 3.13/1.00      | m1_pre_topc(sK4,X0) != iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | l1_pre_topc(X0) != iProver_top
% 3.13/1.00      | v2_pre_topc(X0) != iProver_top ),
% 3.13/1.00      inference(superposition,[status(thm)],[c_2718,c_5522]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_13,plain,
% 3.13/1.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 3.13/1.00      | ~ m1_pre_topc(X3,X1)
% 3.13/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 3.13/1.00      | ~ v1_funct_1(X0)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X2)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ l1_pre_topc(X2)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X2)
% 3.13/1.00      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k2_tmap_1(X1,X2,X0,X3) ),
% 3.13/1.00      inference(cnf_transformation,[],[f70]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_912,plain,
% 3.13/1.00      ( ~ m1_pre_topc(X0,X1)
% 3.13/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X3))))
% 3.13/1.00      | ~ v1_funct_1(X2)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X3)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ l1_pre_topc(X3)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X3)
% 3.13/1.00      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X3),X2,u1_struct_0(X0)) = k2_tmap_1(X1,X3,X2,X0)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X3) != u1_struct_0(sK1)
% 3.13/1.00      | sK5 != X2 ),
% 3.13/1.00      inference(resolution_lifted,[status(thm)],[c_13,c_31]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_913,plain,
% 3.13/1.00      ( ~ m1_pre_topc(X0,X1)
% 3.13/1.00      | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 3.13/1.00      | ~ v1_funct_1(sK5)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X2)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ l1_pre_topc(X2)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X2)
% 3.13/1.00      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),sK5,u1_struct_0(X0)) = k2_tmap_1(X1,X2,sK5,X0)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X2) != u1_struct_0(sK1) ),
% 3.13/1.00      inference(unflattening,[status(thm)],[c_912]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_917,plain,
% 3.13/1.00      ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 3.13/1.00      | ~ m1_pre_topc(X0,X1)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X2)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ l1_pre_topc(X2)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X2)
% 3.13/1.00      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),sK5,u1_struct_0(X0)) = k2_tmap_1(X1,X2,sK5,X0)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X2) != u1_struct_0(sK1) ),
% 3.13/1.00      inference(global_propositional_subsumption,
% 3.13/1.00                [status(thm)],
% 3.13/1.00                [c_913,c_32]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_918,plain,
% 3.13/1.00      ( ~ m1_pre_topc(X0,X1)
% 3.13/1.00      | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X2)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ l1_pre_topc(X2)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X2)
% 3.13/1.00      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),sK5,u1_struct_0(X0)) = k2_tmap_1(X1,X2,sK5,X0)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X2) != u1_struct_0(sK1) ),
% 3.13/1.00      inference(renaming,[status(thm)],[c_917]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_2703,plain,
% 3.13/1.00      ( k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),sK5,u1_struct_0(X2)) = k2_tmap_1(X0,X1,sK5,X2)
% 3.13/1.00      | u1_struct_0(X0) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK1)
% 3.13/1.00      | m1_pre_topc(X2,X0) != iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) != iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | v2_struct_0(X1) = iProver_top
% 3.13/1.00      | l1_pre_topc(X0) != iProver_top
% 3.13/1.00      | l1_pre_topc(X1) != iProver_top
% 3.13/1.00      | v2_pre_topc(X0) != iProver_top
% 3.13/1.00      | v2_pre_topc(X1) != iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_918]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3714,plain,
% 3.13/1.00      ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(X0),sK5,u1_struct_0(X1)) = k2_tmap_1(sK4,X0,sK5,X1)
% 3.13/1.00      | u1_struct_0(X0) != u1_struct_0(sK1)
% 3.13/1.00      | m1_pre_topc(X1,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | v2_struct_0(sK4) = iProver_top
% 3.13/1.00      | l1_pre_topc(X0) != iProver_top
% 3.13/1.00      | l1_pre_topc(sK4) != iProver_top
% 3.13/1.00      | v2_pre_topc(X0) != iProver_top
% 3.13/1.00      | v2_pre_topc(sK4) != iProver_top ),
% 3.13/1.00      inference(equality_resolution,[status(thm)],[c_2703]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_37,negated_conjecture,
% 3.13/1.00      ( l1_pre_topc(sK2) ),
% 3.13/1.00      inference(cnf_transformation,[],[f84]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_48,plain,
% 3.13/1.00      ( l1_pre_topc(sK2) = iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_37]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_34,negated_conjecture,
% 3.13/1.00      ( ~ v2_struct_0(sK4) ),
% 3.13/1.00      inference(cnf_transformation,[],[f87]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_51,plain,
% 3.13/1.00      ( v2_struct_0(sK4) != iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_34]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_1760,plain,( X0 = X0 ),theory(equality) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3104,plain,
% 3.13/1.00      ( u1_struct_0(sK4) = u1_struct_0(sK4) ),
% 3.13/1.00      inference(instantiation,[status(thm)],[c_1760]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3106,plain,
% 3.13/1.00      ( ~ m1_pre_topc(X0,sK4)
% 3.13/1.00      | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X1))))
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(sK4)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ l1_pre_topc(sK4)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(sK4)
% 3.13/1.00      | k2_partfun1(u1_struct_0(sK4),u1_struct_0(X1),sK5,u1_struct_0(X0)) = k2_tmap_1(sK4,X1,sK5,X0)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK1)
% 3.13/1.00      | u1_struct_0(sK4) != u1_struct_0(sK4) ),
% 3.13/1.00      inference(instantiation,[status(thm)],[c_918]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3107,plain,
% 3.13/1.00      ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(X0),sK5,u1_struct_0(X1)) = k2_tmap_1(sK4,X0,sK5,X1)
% 3.13/1.00      | u1_struct_0(X0) != u1_struct_0(sK1)
% 3.13/1.00      | u1_struct_0(sK4) != u1_struct_0(sK4)
% 3.13/1.00      | m1_pre_topc(X1,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | v2_struct_0(sK4) = iProver_top
% 3.13/1.00      | l1_pre_topc(X0) != iProver_top
% 3.13/1.00      | l1_pre_topc(sK4) != iProver_top
% 3.13/1.00      | v2_pre_topc(X0) != iProver_top
% 3.13/1.00      | v2_pre_topc(sK4) != iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_3106]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_10,plain,
% 3.13/1.00      ( ~ m1_pre_topc(X0,X1) | ~ l1_pre_topc(X1) | l1_pre_topc(X0) ),
% 3.13/1.00      inference(cnf_transformation,[],[f67]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_2728,plain,
% 3.13/1.00      ( m1_pre_topc(X0,X1) != iProver_top
% 3.13/1.00      | l1_pre_topc(X1) != iProver_top
% 3.13/1.00      | l1_pre_topc(X0) = iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3839,plain,
% 3.13/1.00      ( l1_pre_topc(sK4) = iProver_top
% 3.13/1.00      | l1_pre_topc(sK2) != iProver_top ),
% 3.13/1.00      inference(superposition,[status(thm)],[c_2714,c_2728]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_4190,plain,
% 3.13/1.00      ( l1_pre_topc(X0) != iProver_top
% 3.13/1.00      | k2_partfun1(u1_struct_0(sK4),u1_struct_0(X0),sK5,u1_struct_0(X1)) = k2_tmap_1(sK4,X0,sK5,X1)
% 3.13/1.00      | u1_struct_0(X0) != u1_struct_0(sK1)
% 3.13/1.00      | m1_pre_topc(X1,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | v2_pre_topc(X0) != iProver_top
% 3.13/1.00      | v2_pre_topc(sK4) != iProver_top ),
% 3.13/1.00      inference(global_propositional_subsumption,
% 3.13/1.00                [status(thm)],
% 3.13/1.00                [c_3714,c_48,c_51,c_3104,c_3107,c_3839]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_4191,plain,
% 3.13/1.00      ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(X0),sK5,u1_struct_0(X1)) = k2_tmap_1(sK4,X0,sK5,X1)
% 3.13/1.00      | u1_struct_0(X0) != u1_struct_0(sK1)
% 3.13/1.00      | m1_pre_topc(X1,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | l1_pre_topc(X0) != iProver_top
% 3.13/1.00      | v2_pre_topc(X0) != iProver_top
% 3.13/1.00      | v2_pre_topc(sK4) != iProver_top ),
% 3.13/1.00      inference(renaming,[status(thm)],[c_4190]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_4204,plain,
% 3.13/1.00      ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK1),sK5,u1_struct_0(X0)) = k2_tmap_1(sK4,sK1,sK5,X0)
% 3.13/1.00      | m1_pre_topc(X0,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK1)))) != iProver_top
% 3.13/1.00      | v2_struct_0(sK1) = iProver_top
% 3.13/1.00      | l1_pre_topc(sK1) != iProver_top
% 3.13/1.00      | v2_pre_topc(sK4) != iProver_top
% 3.13/1.00      | v2_pre_topc(sK1) != iProver_top ),
% 3.13/1.00      inference(equality_resolution,[status(thm)],[c_4191]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_38,negated_conjecture,
% 3.13/1.00      ( v2_pre_topc(sK2) ),
% 3.13/1.00      inference(cnf_transformation,[],[f83]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_47,plain,
% 3.13/1.00      ( v2_pre_topc(sK2) = iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_38]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_52,plain,
% 3.13/1.00      ( m1_pre_topc(sK4,sK2) = iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_33]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_8,plain,
% 3.13/1.00      ( ~ m1_pre_topc(X0,X1)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | v2_pre_topc(X0) ),
% 3.13/1.00      inference(cnf_transformation,[],[f65]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_4160,plain,
% 3.13/1.00      ( ~ m1_pre_topc(sK4,X0)
% 3.13/1.00      | ~ l1_pre_topc(X0)
% 3.13/1.00      | ~ v2_pre_topc(X0)
% 3.13/1.00      | v2_pre_topc(sK4) ),
% 3.13/1.00      inference(instantiation,[status(thm)],[c_8]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_4434,plain,
% 3.13/1.00      ( ~ m1_pre_topc(sK4,sK2)
% 3.13/1.00      | ~ l1_pre_topc(sK2)
% 3.13/1.00      | v2_pre_topc(sK4)
% 3.13/1.00      | ~ v2_pre_topc(sK2) ),
% 3.13/1.00      inference(instantiation,[status(thm)],[c_4160]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_4435,plain,
% 3.13/1.00      ( m1_pre_topc(sK4,sK2) != iProver_top
% 3.13/1.00      | l1_pre_topc(sK2) != iProver_top
% 3.13/1.00      | v2_pre_topc(sK4) = iProver_top
% 3.13/1.00      | v2_pre_topc(sK2) != iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_4434]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_4661,plain,
% 3.13/1.00      ( m1_pre_topc(X0,sK4) != iProver_top
% 3.13/1.00      | k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK1),sK5,u1_struct_0(X0)) = k2_tmap_1(sK4,sK1,sK5,X0) ),
% 3.13/1.00      inference(global_propositional_subsumption,
% 3.13/1.00                [status(thm)],
% 3.13/1.00                [c_4204,c_43,c_44,c_45,c_47,c_48,c_52,c_55,c_4435]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_4662,plain,
% 3.13/1.00      ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK1),sK5,u1_struct_0(X0)) = k2_tmap_1(sK4,sK1,sK5,X0)
% 3.13/1.00      | m1_pre_topc(X0,sK4) != iProver_top ),
% 3.13/1.00      inference(renaming,[status(thm)],[c_4661]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_4669,plain,
% 3.13/1.00      ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK1),sK5,u1_struct_0(sK3)) = k2_tmap_1(sK4,sK1,sK5,sK3) ),
% 3.13/1.00      inference(superposition,[status(thm)],[c_2718,c_4662]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_5534,plain,
% 3.13/1.00      ( k3_tmap_1(X0,sK1,sK4,sK3,sK5) = k2_tmap_1(sK4,sK1,sK5,sK3)
% 3.13/1.00      | m1_pre_topc(sK4,X0) != iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | l1_pre_topc(X0) != iProver_top
% 3.13/1.00      | v2_pre_topc(X0) != iProver_top ),
% 3.13/1.00      inference(light_normalisation,[status(thm)],[c_5533,c_4669]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_6095,plain,
% 3.13/1.00      ( k3_tmap_1(sK2,sK1,sK4,sK3,sK5) = k2_tmap_1(sK4,sK1,sK5,sK3)
% 3.13/1.00      | v2_struct_0(sK2) = iProver_top
% 3.13/1.00      | l1_pre_topc(sK2) != iProver_top
% 3.13/1.00      | v2_pre_topc(sK2) != iProver_top ),
% 3.13/1.00      inference(superposition,[status(thm)],[c_2714,c_5534]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_39,negated_conjecture,
% 3.13/1.00      ( ~ v2_struct_0(sK2) ),
% 3.13/1.00      inference(cnf_transformation,[],[f82]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_46,plain,
% 3.13/1.00      ( v2_struct_0(sK2) != iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_39]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_6146,plain,
% 3.13/1.00      ( k3_tmap_1(sK2,sK1,sK4,sK3,sK5) = k2_tmap_1(sK4,sK1,sK5,sK3) ),
% 3.13/1.00      inference(global_propositional_subsumption,
% 3.13/1.00                [status(thm)],
% 3.13/1.00                [c_6095,c_46,c_47,c_48]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_23,negated_conjecture,
% 3.13/1.00      ( r1_tmap_1(sK4,sK1,sK5,sK6)
% 3.13/1.00      | r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7) ),
% 3.13/1.00      inference(cnf_transformation,[],[f98]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_2721,plain,
% 3.13/1.00      ( r1_tmap_1(sK4,sK1,sK5,sK6) = iProver_top
% 3.13/1.00      | r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7) = iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_24,negated_conjecture,
% 3.13/1.00      ( sK6 = sK7 ),
% 3.13/1.00      inference(cnf_transformation,[],[f97]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_2815,plain,
% 3.13/1.00      ( r1_tmap_1(sK4,sK1,sK5,sK7) = iProver_top
% 3.13/1.00      | r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7) = iProver_top ),
% 3.13/1.00      inference(light_normalisation,[status(thm)],[c_2721,c_24]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_6149,plain,
% 3.13/1.00      ( r1_tmap_1(sK4,sK1,sK5,sK7) = iProver_top
% 3.13/1.00      | r1_tmap_1(sK3,sK1,k2_tmap_1(sK4,sK1,sK5,sK3),sK7) = iProver_top ),
% 3.13/1.00      inference(demodulation,[status(thm)],[c_6146,c_2815]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_36,negated_conjecture,
% 3.13/1.00      ( ~ v2_struct_0(sK3) ),
% 3.13/1.00      inference(cnf_transformation,[],[f85]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_49,plain,
% 3.13/1.00      ( v2_struct_0(sK3) != iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_36]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_58,plain,
% 3.13/1.00      ( m1_pre_topc(sK3,sK4) = iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_25,negated_conjecture,
% 3.13/1.00      ( m1_subset_1(sK7,u1_struct_0(sK3)) ),
% 3.13/1.00      inference(cnf_transformation,[],[f96]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_60,plain,
% 3.13/1.00      ( m1_subset_1(sK7,u1_struct_0(sK3)) = iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_20,plain,
% 3.13/1.00      ( ~ r1_tmap_1(X0,X1,X2,X3)
% 3.13/1.00      | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
% 3.13/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 3.13/1.00      | ~ v1_tsep_1(X4,X0)
% 3.13/1.00      | ~ m1_pre_topc(X4,X0)
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.13/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 3.13/1.00      | ~ v1_funct_1(X2)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X0)
% 3.13/1.00      | v2_struct_0(X4)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ l1_pre_topc(X0)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X0) ),
% 3.13/1.00      inference(cnf_transformation,[],[f104]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_18,plain,
% 3.13/1.00      ( ~ r1_tmap_1(X0,X1,X2,X3)
% 3.13/1.00      | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
% 3.13/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 3.13/1.00      | ~ m1_pre_topc(X4,X0)
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.13/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 3.13/1.00      | ~ v1_funct_1(X2)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X0)
% 3.13/1.00      | v2_struct_0(X4)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ l1_pre_topc(X0)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X0) ),
% 3.13/1.00      inference(cnf_transformation,[],[f102]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_221,plain,
% 3.13/1.00      ( ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 3.13/1.00      | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
% 3.13/1.00      | ~ r1_tmap_1(X0,X1,X2,X3)
% 3.13/1.00      | ~ m1_pre_topc(X4,X0)
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.13/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 3.13/1.00      | ~ v1_funct_1(X2)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X0)
% 3.13/1.00      | v2_struct_0(X4)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ l1_pre_topc(X0)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X0) ),
% 3.13/1.00      inference(global_propositional_subsumption,
% 3.13/1.00                [status(thm)],
% 3.13/1.00                [c_20,c_18]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_222,plain,
% 3.13/1.00      ( ~ r1_tmap_1(X0,X1,X2,X3)
% 3.13/1.00      | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
% 3.13/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 3.13/1.00      | ~ m1_pre_topc(X4,X0)
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.13/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 3.13/1.00      | ~ v1_funct_1(X2)
% 3.13/1.00      | v2_struct_0(X0)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X4)
% 3.13/1.00      | ~ l1_pre_topc(X0)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X0)
% 3.13/1.00      | ~ v2_pre_topc(X1) ),
% 3.13/1.00      inference(renaming,[status(thm)],[c_221]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_957,plain,
% 3.13/1.00      ( ~ r1_tmap_1(X0,X1,X2,X3)
% 3.13/1.00      | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
% 3.13/1.00      | ~ m1_pre_topc(X4,X0)
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.13/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 3.13/1.00      | ~ v1_funct_1(X2)
% 3.13/1.00      | v2_struct_0(X0)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X4)
% 3.13/1.00      | ~ l1_pre_topc(X0)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X0)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | u1_struct_0(X0) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK1)
% 3.13/1.00      | sK5 != X2 ),
% 3.13/1.00      inference(resolution_lifted,[status(thm)],[c_222,c_31]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_958,plain,
% 3.13/1.00      ( r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK5,X0),X3)
% 3.13/1.00      | ~ r1_tmap_1(X2,X1,sK5,X3)
% 3.13/1.00      | ~ m1_pre_topc(X0,X2)
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X2))
% 3.13/1.00      | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
% 3.13/1.00      | ~ v1_funct_1(sK5)
% 3.13/1.00      | v2_struct_0(X2)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X0)
% 3.13/1.00      | ~ l1_pre_topc(X2)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X2)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | u1_struct_0(X2) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 3.13/1.00      inference(unflattening,[status(thm)],[c_957]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_962,plain,
% 3.13/1.00      ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X2))
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.13/1.00      | ~ m1_pre_topc(X0,X2)
% 3.13/1.00      | ~ r1_tmap_1(X2,X1,sK5,X3)
% 3.13/1.00      | r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK5,X0),X3)
% 3.13/1.00      | v2_struct_0(X2)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X0)
% 3.13/1.00      | ~ l1_pre_topc(X2)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X2)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | u1_struct_0(X2) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 3.13/1.00      inference(global_propositional_subsumption,
% 3.13/1.00                [status(thm)],
% 3.13/1.00                [c_958,c_32]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_963,plain,
% 3.13/1.00      ( r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK5,X0),X3)
% 3.13/1.00      | ~ r1_tmap_1(X2,X1,sK5,X3)
% 3.13/1.00      | ~ m1_pre_topc(X0,X2)
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X2))
% 3.13/1.00      | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
% 3.13/1.00      | v2_struct_0(X0)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X2)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ l1_pre_topc(X2)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X2)
% 3.13/1.00      | u1_struct_0(X2) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 3.13/1.00      inference(renaming,[status(thm)],[c_962]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_12,plain,
% 3.13/1.00      ( ~ m1_pre_topc(X0,X1)
% 3.13/1.00      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.13/1.00      | m1_subset_1(X2,u1_struct_0(X1))
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X0)
% 3.13/1.00      | ~ l1_pre_topc(X1) ),
% 3.13/1.00      inference(cnf_transformation,[],[f69]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_998,plain,
% 3.13/1.00      ( r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK5,X0),X3)
% 3.13/1.00      | ~ r1_tmap_1(X2,X1,sK5,X3)
% 3.13/1.00      | ~ m1_pre_topc(X0,X2)
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.13/1.00      | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
% 3.13/1.00      | v2_struct_0(X0)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X2)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ l1_pre_topc(X2)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X2)
% 3.13/1.00      | u1_struct_0(X2) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 3.13/1.00      inference(forward_subsumption_resolution,
% 3.13/1.00                [status(thm)],
% 3.13/1.00                [c_963,c_12]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_2702,plain,
% 3.13/1.00      ( u1_struct_0(X0) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK1)
% 3.13/1.00      | r1_tmap_1(X2,X1,k2_tmap_1(X0,X1,sK5,X2),X3) = iProver_top
% 3.13/1.00      | r1_tmap_1(X0,X1,sK5,X3) != iProver_top
% 3.13/1.00      | m1_pre_topc(X2,X0) != iProver_top
% 3.13/1.00      | m1_subset_1(X3,u1_struct_0(X2)) != iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) != iProver_top
% 3.13/1.00      | v2_struct_0(X1) = iProver_top
% 3.13/1.00      | v2_struct_0(X2) = iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | l1_pre_topc(X1) != iProver_top
% 3.13/1.00      | l1_pre_topc(X0) != iProver_top
% 3.13/1.00      | v2_pre_topc(X1) != iProver_top
% 3.13/1.00      | v2_pre_topc(X0) != iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_998]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3752,plain,
% 3.13/1.00      ( u1_struct_0(X0) != u1_struct_0(sK1)
% 3.13/1.00      | r1_tmap_1(X1,X0,k2_tmap_1(sK4,X0,sK5,X1),X2) = iProver_top
% 3.13/1.00      | r1_tmap_1(sK4,X0,sK5,X2) != iProver_top
% 3.13/1.00      | m1_pre_topc(X1,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(X2,u1_struct_0(X1)) != iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
% 3.13/1.00      | v2_struct_0(X1) = iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | v2_struct_0(sK4) = iProver_top
% 3.13/1.00      | l1_pre_topc(X0) != iProver_top
% 3.13/1.00      | l1_pre_topc(sK4) != iProver_top
% 3.13/1.00      | v2_pre_topc(X0) != iProver_top
% 3.13/1.00      | v2_pre_topc(sK4) != iProver_top ),
% 3.13/1.00      inference(equality_resolution,[status(thm)],[c_2702]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3628,plain,
% 3.13/1.00      ( r1_tmap_1(X0,X1,k2_tmap_1(sK4,X1,sK5,X0),X2)
% 3.13/1.00      | ~ r1_tmap_1(sK4,X1,sK5,X2)
% 3.13/1.00      | ~ m1_pre_topc(X0,sK4)
% 3.13/1.00      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.13/1.00      | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X1))))
% 3.13/1.00      | v2_struct_0(X0)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(sK4)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ l1_pre_topc(sK4)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(sK4)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK1)
% 3.13/1.00      | u1_struct_0(sK4) != u1_struct_0(sK4) ),
% 3.13/1.00      inference(instantiation,[status(thm)],[c_998]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3629,plain,
% 3.13/1.00      ( u1_struct_0(X0) != u1_struct_0(sK1)
% 3.13/1.00      | u1_struct_0(sK4) != u1_struct_0(sK4)
% 3.13/1.00      | r1_tmap_1(X1,X0,k2_tmap_1(sK4,X0,sK5,X1),X2) = iProver_top
% 3.13/1.00      | r1_tmap_1(sK4,X0,sK5,X2) != iProver_top
% 3.13/1.00      | m1_pre_topc(X1,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(X2,u1_struct_0(X1)) != iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | v2_struct_0(X1) = iProver_top
% 3.13/1.00      | v2_struct_0(sK4) = iProver_top
% 3.13/1.00      | l1_pre_topc(X0) != iProver_top
% 3.13/1.00      | l1_pre_topc(sK4) != iProver_top
% 3.13/1.00      | v2_pre_topc(X0) != iProver_top
% 3.13/1.00      | v2_pre_topc(sK4) != iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_3628]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_4705,plain,
% 3.13/1.00      ( v2_pre_topc(X0) != iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | v2_struct_0(X1) = iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
% 3.13/1.00      | m1_subset_1(X2,u1_struct_0(X1)) != iProver_top
% 3.13/1.00      | m1_pre_topc(X1,sK4) != iProver_top
% 3.13/1.00      | r1_tmap_1(sK4,X0,sK5,X2) != iProver_top
% 3.13/1.00      | r1_tmap_1(X1,X0,k2_tmap_1(sK4,X0,sK5,X1),X2) = iProver_top
% 3.13/1.00      | u1_struct_0(X0) != u1_struct_0(sK1)
% 3.13/1.00      | l1_pre_topc(X0) != iProver_top ),
% 3.13/1.00      inference(global_propositional_subsumption,
% 3.13/1.00                [status(thm)],
% 3.13/1.00                [c_3752,c_47,c_48,c_51,c_52,c_3839,c_4435]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_4706,plain,
% 3.13/1.00      ( u1_struct_0(X0) != u1_struct_0(sK1)
% 3.13/1.00      | r1_tmap_1(X1,X0,k2_tmap_1(sK4,X0,sK5,X1),X2) = iProver_top
% 3.13/1.00      | r1_tmap_1(sK4,X0,sK5,X2) != iProver_top
% 3.13/1.00      | m1_pre_topc(X1,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(X2,u1_struct_0(X1)) != iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
% 3.13/1.00      | v2_struct_0(X1) = iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | l1_pre_topc(X0) != iProver_top
% 3.13/1.00      | v2_pre_topc(X0) != iProver_top ),
% 3.13/1.00      inference(renaming,[status(thm)],[c_4705]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_4721,plain,
% 3.13/1.00      ( r1_tmap_1(X0,sK1,k2_tmap_1(sK4,sK1,sK5,X0),X1) = iProver_top
% 3.13/1.00      | r1_tmap_1(sK4,sK1,sK5,X1) != iProver_top
% 3.13/1.00      | m1_pre_topc(X0,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(X1,u1_struct_0(X0)) != iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK1)))) != iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | v2_struct_0(sK1) = iProver_top
% 3.13/1.00      | l1_pre_topc(sK1) != iProver_top
% 3.13/1.00      | v2_pre_topc(sK1) != iProver_top ),
% 3.13/1.00      inference(equality_resolution,[status(thm)],[c_4706]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_5413,plain,
% 3.13/1.00      ( v2_struct_0(X0) = iProver_top
% 3.13/1.00      | r1_tmap_1(X0,sK1,k2_tmap_1(sK4,sK1,sK5,X0),X1) = iProver_top
% 3.13/1.00      | r1_tmap_1(sK4,sK1,sK5,X1) != iProver_top
% 3.13/1.00      | m1_pre_topc(X0,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(X1,u1_struct_0(X0)) != iProver_top ),
% 3.13/1.00      inference(global_propositional_subsumption,
% 3.13/1.00                [status(thm)],
% 3.13/1.00                [c_4721,c_43,c_44,c_45,c_55]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_5414,plain,
% 3.13/1.00      ( r1_tmap_1(X0,sK1,k2_tmap_1(sK4,sK1,sK5,X0),X1) = iProver_top
% 3.13/1.00      | r1_tmap_1(sK4,sK1,sK5,X1) != iProver_top
% 3.13/1.00      | m1_pre_topc(X0,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(X1,u1_struct_0(X0)) != iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top ),
% 3.13/1.00      inference(renaming,[status(thm)],[c_5413]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_22,negated_conjecture,
% 3.13/1.00      ( ~ r1_tmap_1(sK4,sK1,sK5,sK6)
% 3.13/1.00      | ~ r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7) ),
% 3.13/1.00      inference(cnf_transformation,[],[f99]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_2722,plain,
% 3.13/1.00      ( r1_tmap_1(sK4,sK1,sK5,sK6) != iProver_top
% 3.13/1.00      | r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7) != iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_2832,plain,
% 3.13/1.00      ( r1_tmap_1(sK4,sK1,sK5,sK7) != iProver_top
% 3.13/1.00      | r1_tmap_1(sK3,sK1,k3_tmap_1(sK2,sK1,sK4,sK3,sK5),sK7) != iProver_top ),
% 3.13/1.00      inference(light_normalisation,[status(thm)],[c_2722,c_24]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_6150,plain,
% 3.13/1.00      ( r1_tmap_1(sK4,sK1,sK5,sK7) != iProver_top
% 3.13/1.00      | r1_tmap_1(sK3,sK1,k2_tmap_1(sK4,sK1,sK5,sK3),sK7) != iProver_top ),
% 3.13/1.00      inference(demodulation,[status(thm)],[c_6146,c_2832]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_6164,plain,
% 3.13/1.00      ( r1_tmap_1(sK4,sK1,sK5,sK7) != iProver_top
% 3.13/1.00      | m1_pre_topc(sK3,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(sK7,u1_struct_0(sK3)) != iProver_top
% 3.13/1.00      | v2_struct_0(sK3) = iProver_top ),
% 3.13/1.00      inference(superposition,[status(thm)],[c_5414,c_6150]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_6222,plain,
% 3.13/1.00      ( r1_tmap_1(sK3,sK1,k2_tmap_1(sK4,sK1,sK5,sK3),sK7) = iProver_top ),
% 3.13/1.00      inference(global_propositional_subsumption,
% 3.13/1.00                [status(thm)],
% 3.13/1.00                [c_6149,c_49,c_58,c_60,c_6164]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_19,plain,
% 3.13/1.00      ( r1_tmap_1(X0,X1,X2,X3)
% 3.13/1.00      | ~ r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
% 3.13/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 3.13/1.00      | ~ v1_tsep_1(X4,X0)
% 3.13/1.00      | ~ m1_pre_topc(X4,X0)
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.13/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 3.13/1.00      | ~ v1_funct_1(X2)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X0)
% 3.13/1.00      | v2_struct_0(X4)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ l1_pre_topc(X0)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X0) ),
% 3.13/1.00      inference(cnf_transformation,[],[f103]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_1014,plain,
% 3.13/1.00      ( r1_tmap_1(X0,X1,X2,X3)
% 3.13/1.00      | ~ r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
% 3.13/1.00      | ~ v1_tsep_1(X4,X0)
% 3.13/1.00      | ~ m1_pre_topc(X4,X0)
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.13/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 3.13/1.00      | ~ v1_funct_1(X2)
% 3.13/1.00      | v2_struct_0(X0)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X4)
% 3.13/1.00      | ~ l1_pre_topc(X0)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X0)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | u1_struct_0(X0) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK1)
% 3.13/1.00      | sK5 != X2 ),
% 3.13/1.00      inference(resolution_lifted,[status(thm)],[c_19,c_31]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_1015,plain,
% 3.13/1.00      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK5,X0),X3)
% 3.13/1.00      | r1_tmap_1(X2,X1,sK5,X3)
% 3.13/1.00      | ~ v1_tsep_1(X0,X2)
% 3.13/1.00      | ~ m1_pre_topc(X0,X2)
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X2))
% 3.13/1.00      | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
% 3.13/1.00      | ~ v1_funct_1(sK5)
% 3.13/1.00      | v2_struct_0(X2)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X0)
% 3.13/1.00      | ~ l1_pre_topc(X2)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X2)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | u1_struct_0(X2) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 3.13/1.00      inference(unflattening,[status(thm)],[c_1014]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_1019,plain,
% 3.13/1.00      ( ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X2))
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.13/1.00      | ~ m1_pre_topc(X0,X2)
% 3.13/1.00      | ~ v1_tsep_1(X0,X2)
% 3.13/1.00      | r1_tmap_1(X2,X1,sK5,X3)
% 3.13/1.00      | ~ r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK5,X0),X3)
% 3.13/1.00      | v2_struct_0(X2)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X0)
% 3.13/1.00      | ~ l1_pre_topc(X2)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X2)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | u1_struct_0(X2) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 3.13/1.00      inference(global_propositional_subsumption,
% 3.13/1.00                [status(thm)],
% 3.13/1.00                [c_1015,c_32]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_1020,plain,
% 3.13/1.00      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK5,X0),X3)
% 3.13/1.00      | r1_tmap_1(X2,X1,sK5,X3)
% 3.13/1.00      | ~ v1_tsep_1(X0,X2)
% 3.13/1.00      | ~ m1_pre_topc(X0,X2)
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X2))
% 3.13/1.00      | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
% 3.13/1.00      | v2_struct_0(X0)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X2)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ l1_pre_topc(X2)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X2)
% 3.13/1.00      | u1_struct_0(X2) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 3.13/1.00      inference(renaming,[status(thm)],[c_1019]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_1057,plain,
% 3.13/1.00      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(X2,X1,sK5,X0),X3)
% 3.13/1.00      | r1_tmap_1(X2,X1,sK5,X3)
% 3.13/1.00      | ~ v1_tsep_1(X0,X2)
% 3.13/1.00      | ~ m1_pre_topc(X0,X2)
% 3.13/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 3.13/1.00      | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
% 3.13/1.00      | v2_struct_0(X0)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X2)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ l1_pre_topc(X2)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X2)
% 3.13/1.00      | u1_struct_0(X2) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 3.13/1.00      inference(forward_subsumption_resolution,
% 3.13/1.00                [status(thm)],
% 3.13/1.00                [c_1020,c_12]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_2701,plain,
% 3.13/1.00      ( u1_struct_0(X0) != u1_struct_0(sK4)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK1)
% 3.13/1.00      | r1_tmap_1(X2,X1,k2_tmap_1(X0,X1,sK5,X2),X3) != iProver_top
% 3.13/1.00      | r1_tmap_1(X0,X1,sK5,X3) = iProver_top
% 3.13/1.00      | v1_tsep_1(X2,X0) != iProver_top
% 3.13/1.00      | m1_pre_topc(X2,X0) != iProver_top
% 3.13/1.00      | m1_subset_1(X3,u1_struct_0(X2)) != iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) != iProver_top
% 3.13/1.00      | v2_struct_0(X1) = iProver_top
% 3.13/1.00      | v2_struct_0(X2) = iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | l1_pre_topc(X1) != iProver_top
% 3.13/1.00      | l1_pre_topc(X0) != iProver_top
% 3.13/1.00      | v2_pre_topc(X1) != iProver_top
% 3.13/1.00      | v2_pre_topc(X0) != iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_1057]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3229,plain,
% 3.13/1.00      ( u1_struct_0(X0) != u1_struct_0(sK1)
% 3.13/1.00      | r1_tmap_1(X1,X0,k2_tmap_1(sK4,X0,sK5,X1),X2) != iProver_top
% 3.13/1.00      | r1_tmap_1(sK4,X0,sK5,X2) = iProver_top
% 3.13/1.00      | v1_tsep_1(X1,sK4) != iProver_top
% 3.13/1.00      | m1_pre_topc(X1,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(X2,u1_struct_0(X1)) != iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
% 3.13/1.00      | v2_struct_0(X1) = iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | v2_struct_0(sK4) = iProver_top
% 3.13/1.00      | l1_pre_topc(X0) != iProver_top
% 3.13/1.00      | l1_pre_topc(sK4) != iProver_top
% 3.13/1.00      | v2_pre_topc(X0) != iProver_top
% 3.13/1.00      | v2_pre_topc(sK4) != iProver_top ),
% 3.13/1.00      inference(equality_resolution,[status(thm)],[c_2701]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3627,plain,
% 3.13/1.00      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK4,X1,sK5,X0),X2)
% 3.13/1.00      | r1_tmap_1(sK4,X1,sK5,X2)
% 3.13/1.00      | ~ v1_tsep_1(X0,sK4)
% 3.13/1.00      | ~ m1_pre_topc(X0,sK4)
% 3.13/1.00      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 3.13/1.00      | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X1))))
% 3.13/1.00      | v2_struct_0(X0)
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(sK4)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ l1_pre_topc(sK4)
% 3.13/1.00      | ~ v2_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(sK4)
% 3.13/1.00      | u1_struct_0(X1) != u1_struct_0(sK1)
% 3.13/1.00      | u1_struct_0(sK4) != u1_struct_0(sK4) ),
% 3.13/1.00      inference(instantiation,[status(thm)],[c_1057]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3633,plain,
% 3.13/1.00      ( u1_struct_0(X0) != u1_struct_0(sK1)
% 3.13/1.00      | u1_struct_0(sK4) != u1_struct_0(sK4)
% 3.13/1.00      | r1_tmap_1(X1,X0,k2_tmap_1(sK4,X0,sK5,X1),X2) != iProver_top
% 3.13/1.00      | r1_tmap_1(sK4,X0,sK5,X2) = iProver_top
% 3.13/1.00      | v1_tsep_1(X1,sK4) != iProver_top
% 3.13/1.00      | m1_pre_topc(X1,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(X2,u1_struct_0(X1)) != iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | v2_struct_0(X1) = iProver_top
% 3.13/1.00      | v2_struct_0(sK4) = iProver_top
% 3.13/1.00      | l1_pre_topc(X0) != iProver_top
% 3.13/1.00      | l1_pre_topc(sK4) != iProver_top
% 3.13/1.00      | v2_pre_topc(X0) != iProver_top
% 3.13/1.00      | v2_pre_topc(sK4) != iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_3627]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_4794,plain,
% 3.13/1.00      ( v2_pre_topc(X0) != iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | v2_struct_0(X1) = iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
% 3.13/1.00      | m1_subset_1(X2,u1_struct_0(X1)) != iProver_top
% 3.13/1.00      | m1_pre_topc(X1,sK4) != iProver_top
% 3.13/1.00      | v1_tsep_1(X1,sK4) != iProver_top
% 3.13/1.00      | r1_tmap_1(sK4,X0,sK5,X2) = iProver_top
% 3.13/1.00      | r1_tmap_1(X1,X0,k2_tmap_1(sK4,X0,sK5,X1),X2) != iProver_top
% 3.13/1.00      | u1_struct_0(X0) != u1_struct_0(sK1)
% 3.13/1.00      | l1_pre_topc(X0) != iProver_top ),
% 3.13/1.00      inference(global_propositional_subsumption,
% 3.13/1.00                [status(thm)],
% 3.13/1.00                [c_3229,c_47,c_48,c_51,c_52,c_3839,c_4435]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_4795,plain,
% 3.13/1.00      ( u1_struct_0(X0) != u1_struct_0(sK1)
% 3.13/1.00      | r1_tmap_1(X1,X0,k2_tmap_1(sK4,X0,sK5,X1),X2) != iProver_top
% 3.13/1.00      | r1_tmap_1(sK4,X0,sK5,X2) = iProver_top
% 3.13/1.00      | v1_tsep_1(X1,sK4) != iProver_top
% 3.13/1.00      | m1_pre_topc(X1,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(X2,u1_struct_0(X1)) != iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0)))) != iProver_top
% 3.13/1.00      | v2_struct_0(X1) = iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | l1_pre_topc(X0) != iProver_top
% 3.13/1.00      | v2_pre_topc(X0) != iProver_top ),
% 3.13/1.00      inference(renaming,[status(thm)],[c_4794]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_4811,plain,
% 3.13/1.00      ( r1_tmap_1(X0,sK1,k2_tmap_1(sK4,sK1,sK5,X0),X1) != iProver_top
% 3.13/1.00      | r1_tmap_1(sK4,sK1,sK5,X1) = iProver_top
% 3.13/1.00      | v1_tsep_1(X0,sK4) != iProver_top
% 3.13/1.00      | m1_pre_topc(X0,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(X1,u1_struct_0(X0)) != iProver_top
% 3.13/1.00      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK1)))) != iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top
% 3.13/1.00      | v2_struct_0(sK1) = iProver_top
% 3.13/1.00      | l1_pre_topc(sK1) != iProver_top
% 3.13/1.00      | v2_pre_topc(sK1) != iProver_top ),
% 3.13/1.00      inference(equality_resolution,[status(thm)],[c_4795]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_6896,plain,
% 3.13/1.00      ( v2_struct_0(X0) = iProver_top
% 3.13/1.00      | r1_tmap_1(X0,sK1,k2_tmap_1(sK4,sK1,sK5,X0),X1) != iProver_top
% 3.13/1.00      | r1_tmap_1(sK4,sK1,sK5,X1) = iProver_top
% 3.13/1.00      | v1_tsep_1(X0,sK4) != iProver_top
% 3.13/1.00      | m1_pre_topc(X0,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(X1,u1_struct_0(X0)) != iProver_top ),
% 3.13/1.00      inference(global_propositional_subsumption,
% 3.13/1.00                [status(thm)],
% 3.13/1.00                [c_4811,c_43,c_44,c_45,c_55]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_6897,plain,
% 3.13/1.00      ( r1_tmap_1(X0,sK1,k2_tmap_1(sK4,sK1,sK5,X0),X1) != iProver_top
% 3.13/1.00      | r1_tmap_1(sK4,sK1,sK5,X1) = iProver_top
% 3.13/1.00      | v1_tsep_1(X0,sK4) != iProver_top
% 3.13/1.00      | m1_pre_topc(X0,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(X1,u1_struct_0(X0)) != iProver_top
% 3.13/1.00      | v2_struct_0(X0) = iProver_top ),
% 3.13/1.00      inference(renaming,[status(thm)],[c_6896]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_6909,plain,
% 3.13/1.00      ( r1_tmap_1(sK4,sK1,sK5,sK7) = iProver_top
% 3.13/1.00      | v1_tsep_1(sK3,sK4) != iProver_top
% 3.13/1.00      | m1_pre_topc(sK3,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(sK7,u1_struct_0(sK3)) != iProver_top
% 3.13/1.00      | v2_struct_0(sK3) = iProver_top ),
% 3.13/1.00      inference(superposition,[status(thm)],[c_6222,c_6897]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_5,plain,
% 3.13/1.00      ( ~ m1_subset_1(X0,X1) | ~ v1_xboole_0(X1) | v1_xboole_0(X0) ),
% 3.13/1.00      inference(cnf_transformation,[],[f63]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_6013,plain,
% 3.13/1.00      ( ~ m1_subset_1(u1_struct_0(X0),X1)
% 3.13/1.00      | ~ v1_xboole_0(X1)
% 3.13/1.00      | v1_xboole_0(u1_struct_0(X0)) ),
% 3.13/1.00      inference(instantiation,[status(thm)],[c_5]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_6843,plain,
% 3.13/1.00      ( ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4)))
% 3.13/1.00      | v1_xboole_0(u1_struct_0(sK3))
% 3.13/1.00      | ~ v1_xboole_0(k1_zfmisc_1(u1_struct_0(sK4))) ),
% 3.13/1.00      inference(instantiation,[status(thm)],[c_6013]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_6844,plain,
% 3.13/1.00      ( m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 3.13/1.00      | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
% 3.13/1.00      | v1_xboole_0(k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_6843]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3,plain,
% 3.13/1.00      ( ~ r2_hidden(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 3.13/1.00      inference(cnf_transformation,[],[f101]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_4174,plain,
% 3.13/1.00      ( ~ r2_hidden(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4)))
% 3.13/1.00      | r1_tarski(u1_struct_0(sK3),u1_struct_0(sK4)) ),
% 3.13/1.00      inference(instantiation,[status(thm)],[c_3]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_4175,plain,
% 3.13/1.00      ( r2_hidden(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 3.13/1.00      | r1_tarski(u1_struct_0(sK3),u1_struct_0(sK4)) = iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_4174]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_35,negated_conjecture,
% 3.13/1.00      ( m1_pre_topc(sK3,sK2) ),
% 3.13/1.00      inference(cnf_transformation,[],[f86]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_2717,plain,
% 3.13/1.00      ( m1_pre_topc(sK3,sK2) = iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3838,plain,
% 3.13/1.00      ( l1_pre_topc(sK2) != iProver_top
% 3.13/1.00      | l1_pre_topc(sK3) = iProver_top ),
% 3.13/1.00      inference(superposition,[status(thm)],[c_2717,c_2728]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_16,plain,
% 3.13/1.00      ( ~ v1_tsep_1(X0,X1)
% 3.13/1.00      | v1_tsep_1(X0,X2)
% 3.13/1.00      | ~ m1_pre_topc(X0,X1)
% 3.13/1.00      | ~ m1_pre_topc(X2,X1)
% 3.13/1.00      | ~ r1_tarski(u1_struct_0(X0),u1_struct_0(X2))
% 3.13/1.00      | v2_struct_0(X1)
% 3.13/1.00      | v2_struct_0(X2)
% 3.13/1.00      | ~ l1_pre_topc(X1)
% 3.13/1.00      | ~ v2_pre_topc(X1) ),
% 3.13/1.00      inference(cnf_transformation,[],[f72]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3240,plain,
% 3.13/1.00      ( v1_tsep_1(sK3,X0)
% 3.13/1.00      | ~ v1_tsep_1(sK3,sK2)
% 3.13/1.00      | ~ m1_pre_topc(X0,sK2)
% 3.13/1.00      | ~ m1_pre_topc(sK3,sK2)
% 3.13/1.00      | ~ r1_tarski(u1_struct_0(sK3),u1_struct_0(X0))
% 3.13/1.00      | v2_struct_0(X0)
% 3.13/1.00      | v2_struct_0(sK2)
% 3.13/1.00      | ~ l1_pre_topc(sK2)
% 3.13/1.00      | ~ v2_pre_topc(sK2) ),
% 3.13/1.00      inference(instantiation,[status(thm)],[c_16]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3611,plain,
% 3.13/1.00      ( v1_tsep_1(sK3,sK4)
% 3.13/1.00      | ~ v1_tsep_1(sK3,sK2)
% 3.13/1.00      | ~ m1_pre_topc(sK4,sK2)
% 3.13/1.00      | ~ m1_pre_topc(sK3,sK2)
% 3.13/1.00      | ~ r1_tarski(u1_struct_0(sK3),u1_struct_0(sK4))
% 3.13/1.00      | v2_struct_0(sK4)
% 3.13/1.00      | v2_struct_0(sK2)
% 3.13/1.00      | ~ l1_pre_topc(sK2)
% 3.13/1.00      | ~ v2_pre_topc(sK2) ),
% 3.13/1.00      inference(instantiation,[status(thm)],[c_3240]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3612,plain,
% 3.13/1.00      ( v1_tsep_1(sK3,sK4) = iProver_top
% 3.13/1.00      | v1_tsep_1(sK3,sK2) != iProver_top
% 3.13/1.00      | m1_pre_topc(sK4,sK2) != iProver_top
% 3.13/1.00      | m1_pre_topc(sK3,sK2) != iProver_top
% 3.13/1.00      | r1_tarski(u1_struct_0(sK3),u1_struct_0(sK4)) != iProver_top
% 3.13/1.00      | v2_struct_0(sK4) = iProver_top
% 3.13/1.00      | v2_struct_0(sK2) = iProver_top
% 3.13/1.00      | l1_pre_topc(sK2) != iProver_top
% 3.13/1.00      | v2_pre_topc(sK2) != iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_3611]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_7,plain,
% 3.13/1.00      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 3.13/1.00      inference(cnf_transformation,[],[f61]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3306,plain,
% 3.13/1.00      ( ~ m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4)))
% 3.13/1.00      | r2_hidden(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4)))
% 3.13/1.00      | v1_xboole_0(k1_zfmisc_1(u1_struct_0(sK4))) ),
% 3.13/1.00      inference(instantiation,[status(thm)],[c_7]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3307,plain,
% 3.13/1.00      ( m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 3.13/1.00      | r2_hidden(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top
% 3.13/1.00      | v1_xboole_0(k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_3306]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_9,plain,
% 3.13/1.00      ( l1_struct_0(X0) | ~ l1_pre_topc(X0) ),
% 3.13/1.00      inference(cnf_transformation,[],[f66]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_11,plain,
% 3.13/1.00      ( v2_struct_0(X0)
% 3.13/1.00      | ~ l1_struct_0(X0)
% 3.13/1.00      | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 3.13/1.00      inference(cnf_transformation,[],[f68]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_532,plain,
% 3.13/1.00      ( v2_struct_0(X0)
% 3.13/1.00      | ~ l1_pre_topc(X0)
% 3.13/1.00      | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 3.13/1.00      inference(resolution,[status(thm)],[c_9,c_11]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3265,plain,
% 3.13/1.00      ( v2_struct_0(sK3)
% 3.13/1.00      | ~ l1_pre_topc(sK3)
% 3.13/1.00      | ~ v1_xboole_0(u1_struct_0(sK3)) ),
% 3.13/1.00      inference(instantiation,[status(thm)],[c_532]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3266,plain,
% 3.13/1.00      ( v2_struct_0(sK3) = iProver_top
% 3.13/1.00      | l1_pre_topc(sK3) != iProver_top
% 3.13/1.00      | v1_xboole_0(u1_struct_0(sK3)) != iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_3265]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_17,plain,
% 3.13/1.00      ( ~ m1_pre_topc(X0,X1)
% 3.13/1.00      | m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
% 3.13/1.00      | ~ l1_pre_topc(X1) ),
% 3.13/1.00      inference(cnf_transformation,[],[f74]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3132,plain,
% 3.13/1.00      ( ~ m1_pre_topc(sK3,sK4)
% 3.13/1.00      | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4)))
% 3.13/1.00      | ~ l1_pre_topc(sK4) ),
% 3.13/1.00      inference(instantiation,[status(thm)],[c_17]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_3133,plain,
% 3.13/1.00      ( m1_pre_topc(sK3,sK4) != iProver_top
% 3.13/1.00      | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top
% 3.13/1.00      | l1_pre_topc(sK4) != iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_3132]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_29,negated_conjecture,
% 3.13/1.00      ( v1_tsep_1(sK3,sK2) ),
% 3.13/1.00      inference(cnf_transformation,[],[f92]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_56,plain,
% 3.13/1.00      ( v1_tsep_1(sK3,sK2) = iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(c_50,plain,
% 3.13/1.00      ( m1_pre_topc(sK3,sK2) = iProver_top ),
% 3.13/1.00      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 3.13/1.00  
% 3.13/1.00  cnf(contradiction,plain,
% 3.13/1.00      ( $false ),
% 3.13/1.00      inference(minisat,
% 3.13/1.00                [status(thm)],
% 3.13/1.00                [c_6909,c_6844,c_6164,c_4175,c_3839,c_3838,c_3612,c_3307,
% 3.13/1.00                 c_3266,c_3133,c_60,c_58,c_56,c_52,c_51,c_50,c_49,c_48,
% 3.13/1.00                 c_47,c_46]) ).
% 3.13/1.00  
% 3.13/1.00  
% 3.13/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.13/1.00  
% 3.13/1.00  ------                               Statistics
% 3.13/1.00  
% 3.13/1.00  ------ General
% 3.13/1.00  
% 3.13/1.00  abstr_ref_over_cycles:                  0
% 3.13/1.00  abstr_ref_under_cycles:                 0
% 3.13/1.00  gc_basic_clause_elim:                   0
% 3.13/1.00  forced_gc_time:                         0
% 3.13/1.00  parsing_time:                           0.013
% 3.13/1.00  unif_index_cands_time:                  0.
% 3.13/1.00  unif_index_add_time:                    0.
% 3.13/1.00  orderings_time:                         0.
% 3.13/1.00  out_proof_time:                         0.019
% 3.13/1.00  total_time:                             0.216
% 3.13/1.00  num_of_symbols:                         58
% 3.13/1.00  num_of_terms:                           3358
% 3.13/1.00  
% 3.13/1.00  ------ Preprocessing
% 3.13/1.00  
% 3.13/1.00  num_of_splits:                          0
% 3.13/1.00  num_of_split_atoms:                     0
% 3.13/1.00  num_of_reused_defs:                     0
% 3.13/1.00  num_eq_ax_congr_red:                    18
% 3.13/1.00  num_of_sem_filtered_clauses:            1
% 3.13/1.00  num_of_subtypes:                        0
% 3.13/1.00  monotx_restored_types:                  0
% 3.13/1.00  sat_num_of_epr_types:                   0
% 3.13/1.00  sat_num_of_non_cyclic_types:            0
% 3.13/1.00  sat_guarded_non_collapsed_types:        0
% 3.13/1.00  num_pure_diseq_elim:                    0
% 3.13/1.00  simp_replaced_by:                       0
% 3.13/1.00  res_preprocessed:                       193
% 3.13/1.00  prep_upred:                             0
% 3.13/1.00  prep_unflattend:                        49
% 3.13/1.00  smt_new_axioms:                         0
% 3.13/1.00  pred_elim_cands:                        10
% 3.13/1.00  pred_elim:                              3
% 3.13/1.00  pred_elim_cl:                           4
% 3.13/1.00  pred_elim_cycles:                       8
% 3.13/1.00  merged_defs:                            16
% 3.13/1.00  merged_defs_ncl:                        0
% 3.13/1.00  bin_hyper_res:                          16
% 3.13/1.00  prep_cycles:                            4
% 3.13/1.00  pred_elim_time:                         0.02
% 3.13/1.00  splitting_time:                         0.
% 3.13/1.00  sem_filter_time:                        0.
% 3.13/1.00  monotx_time:                            0.001
% 3.13/1.00  subtype_inf_time:                       0.
% 3.13/1.00  
% 3.13/1.00  ------ Problem properties
% 3.13/1.00  
% 3.13/1.00  clauses:                                38
% 3.13/1.00  conjectures:                            18
% 3.13/1.00  epr:                                    20
% 3.13/1.00  horn:                                   27
% 3.13/1.00  ground:                                 18
% 3.13/1.00  unary:                                  16
% 3.13/1.00  binary:                                 4
% 3.13/1.00  lits:                                   136
% 3.13/1.00  lits_eq:                                13
% 3.13/1.00  fd_pure:                                0
% 3.13/1.00  fd_pseudo:                              0
% 3.13/1.00  fd_cond:                                0
% 3.13/1.00  fd_pseudo_cond:                         2
% 3.13/1.00  ac_symbols:                             0
% 3.13/1.00  
% 3.13/1.00  ------ Propositional Solver
% 3.13/1.00  
% 3.13/1.00  prop_solver_calls:                      28
% 3.13/1.00  prop_fast_solver_calls:                 2117
% 3.13/1.00  smt_solver_calls:                       0
% 3.13/1.00  smt_fast_solver_calls:                  0
% 3.13/1.00  prop_num_of_clauses:                    1903
% 3.13/1.00  prop_preprocess_simplified:             7114
% 3.13/1.00  prop_fo_subsumed:                       71
% 3.13/1.00  prop_solver_time:                       0.
% 3.13/1.00  smt_solver_time:                        0.
% 3.13/1.00  smt_fast_solver_time:                   0.
% 3.13/1.00  prop_fast_solver_time:                  0.
% 3.13/1.00  prop_unsat_core_time:                   0.
% 3.13/1.00  
% 3.13/1.00  ------ QBF
% 3.13/1.00  
% 3.13/1.00  qbf_q_res:                              0
% 3.13/1.00  qbf_num_tautologies:                    0
% 3.13/1.00  qbf_prep_cycles:                        0
% 3.13/1.00  
% 3.13/1.00  ------ BMC1
% 3.13/1.00  
% 3.13/1.00  bmc1_current_bound:                     -1
% 3.13/1.00  bmc1_last_solved_bound:                 -1
% 3.13/1.00  bmc1_unsat_core_size:                   -1
% 3.13/1.00  bmc1_unsat_core_parents_size:           -1
% 3.13/1.00  bmc1_merge_next_fun:                    0
% 3.13/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.13/1.00  
% 3.13/1.00  ------ Instantiation
% 3.13/1.00  
% 3.13/1.00  inst_num_of_clauses:                    512
% 3.13/1.00  inst_num_in_passive:                    168
% 3.13/1.00  inst_num_in_active:                     314
% 3.13/1.00  inst_num_in_unprocessed:                30
% 3.13/1.00  inst_num_of_loops:                      410
% 3.13/1.00  inst_num_of_learning_restarts:          0
% 3.13/1.00  inst_num_moves_active_passive:          93
% 3.13/1.00  inst_lit_activity:                      0
% 3.13/1.00  inst_lit_activity_moves:                0
% 3.13/1.00  inst_num_tautologies:                   0
% 3.13/1.00  inst_num_prop_implied:                  0
% 3.13/1.00  inst_num_existing_simplified:           0
% 3.13/1.00  inst_num_eq_res_simplified:             0
% 3.13/1.00  inst_num_child_elim:                    0
% 3.13/1.00  inst_num_of_dismatching_blockings:      146
% 3.13/1.00  inst_num_of_non_proper_insts:           501
% 3.13/1.00  inst_num_of_duplicates:                 0
% 3.13/1.00  inst_inst_num_from_inst_to_res:         0
% 3.13/1.00  inst_dismatching_checking_time:         0.
% 3.13/1.00  
% 3.13/1.00  ------ Resolution
% 3.13/1.00  
% 3.13/1.00  res_num_of_clauses:                     0
% 3.13/1.00  res_num_in_passive:                     0
% 3.13/1.00  res_num_in_active:                      0
% 3.13/1.00  res_num_of_loops:                       197
% 3.13/1.00  res_forward_subset_subsumed:            42
% 3.13/1.00  res_backward_subset_subsumed:           0
% 3.13/1.00  res_forward_subsumed:                   0
% 3.13/1.00  res_backward_subsumed:                  0
% 3.13/1.00  res_forward_subsumption_resolution:     3
% 3.13/1.00  res_backward_subsumption_resolution:    0
% 3.13/1.00  res_clause_to_clause_subsumption:       279
% 3.13/1.00  res_orphan_elimination:                 0
% 3.13/1.00  res_tautology_del:                      83
% 3.13/1.00  res_num_eq_res_simplified:              0
% 3.13/1.00  res_num_sel_changes:                    0
% 3.13/1.00  res_moves_from_active_to_pass:          0
% 3.13/1.00  
% 3.13/1.00  ------ Superposition
% 3.13/1.00  
% 3.13/1.00  sup_time_total:                         0.
% 3.13/1.00  sup_time_generating:                    0.
% 3.13/1.00  sup_time_sim_full:                      0.
% 3.13/1.00  sup_time_sim_immed:                     0.
% 3.13/1.00  
% 3.13/1.00  sup_num_of_clauses:                     87
% 3.13/1.00  sup_num_in_active:                      78
% 3.13/1.00  sup_num_in_passive:                     9
% 3.13/1.00  sup_num_of_loops:                       80
% 3.13/1.00  sup_fw_superposition:                   38
% 3.13/1.00  sup_bw_superposition:                   32
% 3.13/1.00  sup_immediate_simplified:               16
% 3.13/1.00  sup_given_eliminated:                   0
% 3.13/1.00  comparisons_done:                       0
% 3.13/1.00  comparisons_avoided:                    0
% 3.13/1.00  
% 3.13/1.00  ------ Simplifications
% 3.13/1.00  
% 3.13/1.00  
% 3.13/1.00  sim_fw_subset_subsumed:                 13
% 3.13/1.00  sim_bw_subset_subsumed:                 3
% 3.13/1.00  sim_fw_subsumed:                        2
% 3.13/1.00  sim_bw_subsumed:                        0
% 3.13/1.00  sim_fw_subsumption_res:                 0
% 3.13/1.00  sim_bw_subsumption_res:                 0
% 3.13/1.00  sim_tautology_del:                      10
% 3.13/1.00  sim_eq_tautology_del:                   0
% 3.13/1.00  sim_eq_res_simp:                        0
% 3.13/1.00  sim_fw_demodulated:                     0
% 3.13/1.00  sim_bw_demodulated:                     2
% 3.13/1.00  sim_light_normalised:                   4
% 3.13/1.00  sim_joinable_taut:                      0
% 3.13/1.00  sim_joinable_simp:                      0
% 3.13/1.00  sim_ac_normalised:                      0
% 3.13/1.00  sim_smt_subsumption:                    0
% 3.13/1.00  
%------------------------------------------------------------------------------
