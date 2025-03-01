%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:22:51 EST 2020

% Result     : Theorem 2.25s
% Output     : CNFRefutation 2.25s
% Verified   : 
% Statistics : Number of formulae       :  173 (1907 expanded)
%              Number of clauses        :  112 ( 401 expanded)
%              Number of leaves         :   15 ( 832 expanded)
%              Depth                    :   30
%              Number of atoms          : 1024 (33297 expanded)
%              Number of equality atoms :  334 (2637 expanded)
%              Maximal formula depth    :   20 (   6 average)
%              Maximal clause size      :   42 (   4 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f8,conjecture,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( ( l1_pre_topc(X1)
            & v2_pre_topc(X1)
            & ~ v2_struct_0(X1) )
         => ! [X2] :
              ( ( m1_pre_topc(X2,X0)
                & ~ v2_struct_0(X2) )
             => ! [X3] :
                  ( ( m1_pre_topc(X3,X0)
                    & ~ v2_struct_0(X3) )
                 => ! [X4] :
                      ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                        & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                        & v1_funct_1(X4) )
                     => ( m1_pre_topc(X2,X3)
                       => ! [X5] :
                            ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                              & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1))
                              & v1_funct_1(X5) )
                           => ( ! [X6] :
                                  ( m1_subset_1(X6,u1_struct_0(X3))
                                 => ( r2_hidden(X6,u1_struct_0(X2))
                                   => k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6) ) )
                             => r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f9,negated_conjecture,(
    ~ ! [X0] :
        ( ( l1_pre_topc(X0)
          & v2_pre_topc(X0)
          & ~ v2_struct_0(X0) )
       => ! [X1] :
            ( ( l1_pre_topc(X1)
              & v2_pre_topc(X1)
              & ~ v2_struct_0(X1) )
           => ! [X2] :
                ( ( m1_pre_topc(X2,X0)
                  & ~ v2_struct_0(X2) )
               => ! [X3] :
                    ( ( m1_pre_topc(X3,X0)
                      & ~ v2_struct_0(X3) )
                   => ! [X4] :
                        ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                          & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                          & v1_funct_1(X4) )
                       => ( m1_pre_topc(X2,X3)
                         => ! [X5] :
                              ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                                & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1))
                                & v1_funct_1(X5) )
                             => ( ! [X6] :
                                    ( m1_subset_1(X6,u1_struct_0(X3))
                                   => ( r2_hidden(X6,u1_struct_0(X2))
                                     => k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6) ) )
                               => r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) ) ) ) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f8])).

fof(f21,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)
                          & ! [X6] :
                              ( k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6)
                              | ~ r2_hidden(X6,u1_struct_0(X2))
                              | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                          & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                          & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1))
                          & v1_funct_1(X5) )
                      & m1_pre_topc(X2,X3)
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                      & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                      & v1_funct_1(X4) )
                  & m1_pre_topc(X3,X0)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,X0)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f22,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)
                          & ! [X6] :
                              ( k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6)
                              | ~ r2_hidden(X6,u1_struct_0(X2))
                              | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                          & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                          & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1))
                          & v1_funct_1(X5) )
                      & m1_pre_topc(X2,X3)
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                      & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                      & v1_funct_1(X4) )
                  & m1_pre_topc(X3,X0)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,X0)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f21])).

fof(f31,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( ? [X5] :
          ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)
          & ! [X6] :
              ( k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6)
              | ~ r2_hidden(X6,u1_struct_0(X2))
              | ~ m1_subset_1(X6,u1_struct_0(X3)) )
          & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
          & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1))
          & v1_funct_1(X5) )
     => ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),sK6)
        & ! [X6] :
            ( k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(sK6,X6)
            | ~ r2_hidden(X6,u1_struct_0(X2))
            | ~ m1_subset_1(X6,u1_struct_0(X3)) )
        & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
        & v1_funct_2(sK6,u1_struct_0(X2),u1_struct_0(X1))
        & v1_funct_1(sK6) ) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,(
    ! [X2,X0,X3,X1] :
      ( ? [X4] :
          ( ? [X5] :
              ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)
              & ! [X6] :
                  ( k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6)
                  | ~ r2_hidden(X6,u1_struct_0(X2))
                  | ~ m1_subset_1(X6,u1_struct_0(X3)) )
              & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
              & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1))
              & v1_funct_1(X5) )
          & m1_pre_topc(X2,X3)
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
          & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
          & v1_funct_1(X4) )
     => ( ? [X5] :
            ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,sK5),X5)
            & ! [X6] :
                ( k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),sK5,X6) = k1_funct_1(X5,X6)
                | ~ r2_hidden(X6,u1_struct_0(X2))
                | ~ m1_subset_1(X6,u1_struct_0(X3)) )
            & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
            & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1))
            & v1_funct_1(X5) )
        & m1_pre_topc(X2,X3)
        & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
        & v1_funct_2(sK5,u1_struct_0(X3),u1_struct_0(X1))
        & v1_funct_1(sK5) ) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ? [X4] :
              ( ? [X5] :
                  ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)
                  & ! [X6] :
                      ( k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6)
                      | ~ r2_hidden(X6,u1_struct_0(X2))
                      | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                  & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                  & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1))
                  & v1_funct_1(X5) )
              & m1_pre_topc(X2,X3)
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
              & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
              & v1_funct_1(X4) )
          & m1_pre_topc(X3,X0)
          & ~ v2_struct_0(X3) )
     => ( ? [X4] :
            ( ? [X5] :
                ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,sK4,X2,X4),X5)
                & ! [X6] :
                    ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6)
                    | ~ r2_hidden(X6,u1_struct_0(X2))
                    | ~ m1_subset_1(X6,u1_struct_0(sK4)) )
                & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1))
                & v1_funct_1(X5) )
            & m1_pre_topc(X2,sK4)
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X1))))
            & v1_funct_2(X4,u1_struct_0(sK4),u1_struct_0(X1))
            & v1_funct_1(X4) )
        & m1_pre_topc(sK4,X0)
        & ~ v2_struct_0(sK4) ) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ? [X4] :
                  ( ? [X5] :
                      ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)
                      & ! [X6] :
                          ( k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6)
                          | ~ r2_hidden(X6,u1_struct_0(X2))
                          | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                      & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                      & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1))
                      & v1_funct_1(X5) )
                  & m1_pre_topc(X2,X3)
                  & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                  & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                  & v1_funct_1(X4) )
              & m1_pre_topc(X3,X0)
              & ~ v2_struct_0(X3) )
          & m1_pre_topc(X2,X0)
          & ~ v2_struct_0(X2) )
     => ( ? [X3] :
            ( ? [X4] :
                ( ? [X5] :
                    ( ~ r2_funct_2(u1_struct_0(sK3),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,sK3,X4),X5)
                    & ! [X6] :
                        ( k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6)
                        | ~ r2_hidden(X6,u1_struct_0(sK3))
                        | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                    & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
                    & v1_funct_2(X5,u1_struct_0(sK3),u1_struct_0(X1))
                    & v1_funct_1(X5) )
                & m1_pre_topc(sK3,X3)
                & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                & v1_funct_1(X4) )
            & m1_pre_topc(X3,X0)
            & ~ v2_struct_0(X3) )
        & m1_pre_topc(sK3,X0)
        & ~ v2_struct_0(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)
                          & ! [X6] :
                              ( k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6)
                              | ~ r2_hidden(X6,u1_struct_0(X2))
                              | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                          & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                          & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1))
                          & v1_funct_1(X5) )
                      & m1_pre_topc(X2,X3)
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                      & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                      & v1_funct_1(X4) )
                  & m1_pre_topc(X3,X0)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,X0)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
     => ( ? [X2] :
            ( ? [X3] :
                ( ? [X4] :
                    ( ? [X5] :
                        ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(sK2),k3_tmap_1(X0,sK2,X3,X2,X4),X5)
                        & ! [X6] :
                            ( k3_funct_2(u1_struct_0(X3),u1_struct_0(sK2),X4,X6) = k1_funct_1(X5,X6)
                            | ~ r2_hidden(X6,u1_struct_0(X2))
                            | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(sK2))))
                        & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(sK2))
                        & v1_funct_1(X5) )
                    & m1_pre_topc(X2,X3)
                    & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(sK2))))
                    & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(sK2))
                    & v1_funct_1(X4) )
                & m1_pre_topc(X3,X0)
                & ~ v2_struct_0(X3) )
            & m1_pre_topc(X2,X0)
            & ~ v2_struct_0(X2) )
        & l1_pre_topc(sK2)
        & v2_pre_topc(sK2)
        & ~ v2_struct_0(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( ? [X4] :
                        ( ? [X5] :
                            ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)
                            & ! [X6] :
                                ( k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6)
                                | ~ r2_hidden(X6,u1_struct_0(X2))
                                | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                            & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                            & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1))
                            & v1_funct_1(X5) )
                        & m1_pre_topc(X2,X3)
                        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                        & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                        & v1_funct_1(X4) )
                    & m1_pre_topc(X3,X0)
                    & ~ v2_struct_0(X3) )
                & m1_pre_topc(X2,X0)
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
                          ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(sK1,X1,X3,X2,X4),X5)
                          & ! [X6] :
                              ( k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6)
                              | ~ r2_hidden(X6,u1_struct_0(X2))
                              | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                          & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                          & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1))
                          & v1_funct_1(X5) )
                      & m1_pre_topc(X2,X3)
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                      & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                      & v1_funct_1(X4) )
                  & m1_pre_topc(X3,sK1)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,sK1)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(sK1)
      & v2_pre_topc(sK1)
      & ~ v2_struct_0(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,
    ( ~ r2_funct_2(u1_struct_0(sK3),u1_struct_0(sK2),k3_tmap_1(sK1,sK2,sK4,sK3,sK5),sK6)
    & ! [X6] :
        ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,X6) = k1_funct_1(sK6,X6)
        | ~ r2_hidden(X6,u1_struct_0(sK3))
        | ~ m1_subset_1(X6,u1_struct_0(sK4)) )
    & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2))))
    & v1_funct_2(sK6,u1_struct_0(sK3),u1_struct_0(sK2))
    & v1_funct_1(sK6)
    & m1_pre_topc(sK3,sK4)
    & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK2))))
    & v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2))
    & v1_funct_1(sK5)
    & m1_pre_topc(sK4,sK1)
    & ~ v2_struct_0(sK4)
    & m1_pre_topc(sK3,sK1)
    & ~ v2_struct_0(sK3)
    & l1_pre_topc(sK2)
    & v2_pre_topc(sK2)
    & ~ v2_struct_0(sK2)
    & l1_pre_topc(sK1)
    & v2_pre_topc(sK1)
    & ~ v2_struct_0(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4,sK5,sK6])],[f22,f31,f30,f29,f28,f27,f26])).

fof(f59,plain,(
    m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) ),
    inference(cnf_transformation,[],[f32])).

fof(f55,plain,(
    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK2)))) ),
    inference(cnf_transformation,[],[f32])).

fof(f2,axiom,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ! [X1] :
          ( ~ v1_xboole_0(X1)
         => ! [X2] :
              ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
                & v1_funct_2(X2,X0,X1)
                & v1_funct_1(X2) )
             => ! [X3] :
                  ( ( m1_subset_1(X3,k1_zfmisc_1(X0))
                    & ~ v1_xboole_0(X3) )
                 => ! [X4] :
                      ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))
                        & v1_funct_2(X4,X3,X1)
                        & v1_funct_1(X4) )
                     => ( ! [X5] :
                            ( m1_subset_1(X5,X0)
                           => ( r2_hidden(X5,X3)
                             => k3_funct_2(X0,X1,X2,X5) = k1_funct_1(X4,X5) ) )
                       => k2_partfun1(X0,X1,X2,X3) = X4 ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( k2_partfun1(X0,X1,X2,X3) = X4
                      | ? [X5] :
                          ( k3_funct_2(X0,X1,X2,X5) != k1_funct_1(X4,X5)
                          & r2_hidden(X5,X3)
                          & m1_subset_1(X5,X0) )
                      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))
                      | ~ v1_funct_2(X4,X3,X1)
                      | ~ v1_funct_1(X4) )
                  | ~ m1_subset_1(X3,k1_zfmisc_1(X0))
                  | v1_xboole_0(X3) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
              | ~ v1_funct_2(X2,X0,X1)
              | ~ v1_funct_1(X2) )
          | v1_xboole_0(X1) )
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( k2_partfun1(X0,X1,X2,X3) = X4
                      | ? [X5] :
                          ( k3_funct_2(X0,X1,X2,X5) != k1_funct_1(X4,X5)
                          & r2_hidden(X5,X3)
                          & m1_subset_1(X5,X0) )
                      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))
                      | ~ v1_funct_2(X4,X3,X1)
                      | ~ v1_funct_1(X4) )
                  | ~ m1_subset_1(X3,k1_zfmisc_1(X0))
                  | v1_xboole_0(X3) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
              | ~ v1_funct_2(X2,X0,X1)
              | ~ v1_funct_1(X2) )
          | v1_xboole_0(X1) )
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f12])).

fof(f24,plain,(
    ! [X4,X3,X2,X1,X0] :
      ( ? [X5] :
          ( k3_funct_2(X0,X1,X2,X5) != k1_funct_1(X4,X5)
          & r2_hidden(X5,X3)
          & m1_subset_1(X5,X0) )
     => ( k3_funct_2(X0,X1,X2,sK0(X0,X1,X2,X3,X4)) != k1_funct_1(X4,sK0(X0,X1,X2,X3,X4))
        & r2_hidden(sK0(X0,X1,X2,X3,X4),X3)
        & m1_subset_1(sK0(X0,X1,X2,X3,X4),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( k2_partfun1(X0,X1,X2,X3) = X4
                      | ( k3_funct_2(X0,X1,X2,sK0(X0,X1,X2,X3,X4)) != k1_funct_1(X4,sK0(X0,X1,X2,X3,X4))
                        & r2_hidden(sK0(X0,X1,X2,X3,X4),X3)
                        & m1_subset_1(sK0(X0,X1,X2,X3,X4),X0) )
                      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))
                      | ~ v1_funct_2(X4,X3,X1)
                      | ~ v1_funct_1(X4) )
                  | ~ m1_subset_1(X3,k1_zfmisc_1(X0))
                  | v1_xboole_0(X3) )
              | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
              | ~ v1_funct_2(X2,X0,X1)
              | ~ v1_funct_1(X2) )
          | v1_xboole_0(X1) )
      | v1_xboole_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f13,f24])).

fof(f35,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( k2_partfun1(X0,X1,X2,X3) = X4
      | m1_subset_1(sK0(X0,X1,X2,X3,X4),X0)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))
      | ~ v1_funct_2(X4,X3,X1)
      | ~ v1_funct_1(X4)
      | ~ m1_subset_1(X3,k1_zfmisc_1(X0))
      | v1_xboole_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f36,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( k2_partfun1(X0,X1,X2,X3) = X4
      | r2_hidden(sK0(X0,X1,X2,X3,X4),X3)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))
      | ~ v1_funct_2(X4,X3,X1)
      | ~ v1_funct_1(X4)
      | ~ m1_subset_1(X3,k1_zfmisc_1(X0))
      | v1_xboole_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f60,plain,(
    ! [X6] :
      ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,X6) = k1_funct_1(sK6,X6)
      | ~ r2_hidden(X6,u1_struct_0(sK3))
      | ~ m1_subset_1(X6,u1_struct_0(sK4)) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f45,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f32])).

fof(f52,plain,(
    m1_pre_topc(sK4,sK1) ),
    inference(cnf_transformation,[],[f32])).

fof(f56,plain,(
    m1_pre_topc(sK3,sK4) ),
    inference(cnf_transformation,[],[f32])).

fof(f7,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f42,plain,(
    ! [X0,X1] :
      ( m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f4,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => l1_pre_topc(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( ! [X1] :
          ( l1_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f39,plain,(
    ! [X0,X1] :
      ( l1_pre_topc(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f50,plain,(
    m1_pre_topc(sK3,sK1) ),
    inference(cnf_transformation,[],[f32])).

fof(f6,axiom,(
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

fof(f18,plain,(
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
    inference(ennf_transformation,[],[f6])).

fof(f19,plain,(
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
    inference(flattening,[],[f18])).

fof(f41,plain,(
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
    inference(cnf_transformation,[],[f19])).

fof(f46,plain,(
    ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f32])).

fof(f47,plain,(
    v2_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f32])).

fof(f48,plain,(
    l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f32])).

fof(f53,plain,(
    v1_funct_1(sK5) ),
    inference(cnf_transformation,[],[f32])).

fof(f54,plain,(
    v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f32])).

fof(f43,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f32])).

fof(f44,plain,(
    v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f32])).

fof(f5,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f17,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f16])).

fof(f40,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f3,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f38,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f49,plain,(
    ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f32])).

fof(f57,plain,(
    v1_funct_1(sK6) ),
    inference(cnf_transformation,[],[f32])).

fof(f58,plain,(
    v1_funct_2(sK6,u1_struct_0(sK3),u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f32])).

fof(f51,plain,(
    ~ v2_struct_0(sK4) ),
    inference(cnf_transformation,[],[f32])).

fof(f37,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( k2_partfun1(X0,X1,X2,X3) = X4
      | k3_funct_2(X0,X1,X2,sK0(X0,X1,X2,X3,X4)) != k1_funct_1(X4,sK0(X0,X1,X2,X3,X4))
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))
      | ~ v1_funct_2(X4,X3,X1)
      | ~ v1_funct_1(X4)
      | ~ m1_subset_1(X3,k1_zfmisc_1(X0))
      | v1_xboole_0(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | v1_xboole_0(X1)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f1,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( r2_funct_2(X0,X1,X2,X3)
      <=> X2 = X3 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_funct_2(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f11,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_funct_2(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f10])).

fof(f23,plain,(
    ! [X0,X1,X2,X3] :
      ( ( ( r2_funct_2(X0,X1,X2,X3)
          | X2 != X3 )
        & ( X2 = X3
          | ~ r2_funct_2(X0,X1,X2,X3) ) )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(nnf_transformation,[],[f11])).

fof(f34,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_funct_2(X0,X1,X2,X3)
      | X2 != X3
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f62,plain,(
    ! [X0,X3,X1] :
      ( r2_funct_2(X0,X1,X3,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(equality_resolution,[],[f34])).

fof(f61,plain,(
    ~ r2_funct_2(u1_struct_0(sK3),u1_struct_0(sK2),k3_tmap_1(sK1,sK2,sK4,sK3,sK5),sK6) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_12,negated_conjecture,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_624,negated_conjecture,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) ),
    inference(subtyping,[status(esa)],[c_12])).

cnf(c_1108,plain,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_624])).

cnf(c_16,negated_conjecture,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK2)))) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_620,negated_conjecture,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK2)))) ),
    inference(subtyping,[status(esa)],[c_16])).

cnf(c_1112,plain,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK2)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_620])).

cnf(c_4,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ v1_funct_2(X3,X4,X2)
    | ~ m1_subset_1(X4,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
    | m1_subset_1(sK0(X1,X2,X0,X4,X3),X1)
    | v1_xboole_0(X1)
    | v1_xboole_0(X2)
    | v1_xboole_0(X4)
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k2_partfun1(X1,X2,X0,X4) = X3 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_629,plain,
    ( ~ v1_funct_2(X0_53,X1_53,X2_53)
    | ~ v1_funct_2(X3_53,X4_53,X2_53)
    | ~ m1_subset_1(X4_53,k1_zfmisc_1(X1_53))
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
    | ~ m1_subset_1(X3_53,k1_zfmisc_1(k2_zfmisc_1(X4_53,X2_53)))
    | m1_subset_1(sK0(X1_53,X2_53,X0_53,X4_53,X3_53),X1_53)
    | v1_xboole_0(X1_53)
    | v1_xboole_0(X2_53)
    | v1_xboole_0(X4_53)
    | ~ v1_funct_1(X0_53)
    | ~ v1_funct_1(X3_53)
    | k2_partfun1(X1_53,X2_53,X0_53,X4_53) = X3_53 ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_1103,plain,
    ( k2_partfun1(X0_53,X1_53,X2_53,X3_53) = X4_53
    | v1_funct_2(X2_53,X0_53,X1_53) != iProver_top
    | v1_funct_2(X4_53,X3_53,X1_53) != iProver_top
    | m1_subset_1(X3_53,k1_zfmisc_1(X0_53)) != iProver_top
    | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
    | m1_subset_1(X4_53,k1_zfmisc_1(k2_zfmisc_1(X3_53,X1_53))) != iProver_top
    | m1_subset_1(sK0(X0_53,X1_53,X2_53,X3_53,X4_53),X0_53) = iProver_top
    | v1_xboole_0(X0_53) = iProver_top
    | v1_xboole_0(X1_53) = iProver_top
    | v1_xboole_0(X3_53) = iProver_top
    | v1_funct_1(X2_53) != iProver_top
    | v1_funct_1(X4_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_629])).

cnf(c_3,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ v1_funct_2(X3,X4,X2)
    | r2_hidden(sK0(X1,X2,X0,X4,X3),X4)
    | ~ m1_subset_1(X4,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
    | v1_xboole_0(X1)
    | v1_xboole_0(X2)
    | v1_xboole_0(X4)
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k2_partfun1(X1,X2,X0,X4) = X3 ),
    inference(cnf_transformation,[],[f36])).

cnf(c_630,plain,
    ( ~ v1_funct_2(X0_53,X1_53,X2_53)
    | ~ v1_funct_2(X3_53,X4_53,X2_53)
    | r2_hidden(sK0(X1_53,X2_53,X0_53,X4_53,X3_53),X4_53)
    | ~ m1_subset_1(X4_53,k1_zfmisc_1(X1_53))
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
    | ~ m1_subset_1(X3_53,k1_zfmisc_1(k2_zfmisc_1(X4_53,X2_53)))
    | v1_xboole_0(X1_53)
    | v1_xboole_0(X2_53)
    | v1_xboole_0(X4_53)
    | ~ v1_funct_1(X0_53)
    | ~ v1_funct_1(X3_53)
    | k2_partfun1(X1_53,X2_53,X0_53,X4_53) = X3_53 ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_1102,plain,
    ( k2_partfun1(X0_53,X1_53,X2_53,X3_53) = X4_53
    | v1_funct_2(X2_53,X0_53,X1_53) != iProver_top
    | v1_funct_2(X4_53,X3_53,X1_53) != iProver_top
    | r2_hidden(sK0(X0_53,X1_53,X2_53,X3_53,X4_53),X3_53) = iProver_top
    | m1_subset_1(X3_53,k1_zfmisc_1(X0_53)) != iProver_top
    | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
    | m1_subset_1(X4_53,k1_zfmisc_1(k2_zfmisc_1(X3_53,X1_53))) != iProver_top
    | v1_xboole_0(X0_53) = iProver_top
    | v1_xboole_0(X1_53) = iProver_top
    | v1_xboole_0(X3_53) = iProver_top
    | v1_funct_1(X2_53) != iProver_top
    | v1_funct_1(X4_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_630])).

cnf(c_11,negated_conjecture,
    ( ~ r2_hidden(X0,u1_struct_0(sK3))
    | ~ m1_subset_1(X0,u1_struct_0(sK4))
    | k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,X0) = k1_funct_1(sK6,X0) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_625,negated_conjecture,
    ( ~ r2_hidden(X0_53,u1_struct_0(sK3))
    | ~ m1_subset_1(X0_53,u1_struct_0(sK4))
    | k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,X0_53) = k1_funct_1(sK6,X0_53) ),
    inference(subtyping,[status(esa)],[c_11])).

cnf(c_1107,plain,
    ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,X0_53) = k1_funct_1(sK6,X0_53)
    | r2_hidden(X0_53,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(X0_53,u1_struct_0(sK4)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_625])).

cnf(c_1971,plain,
    ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(X0_53,X1_53,X2_53,u1_struct_0(sK3),X3_53)) = k1_funct_1(sK6,sK0(X0_53,X1_53,X2_53,u1_struct_0(sK3),X3_53))
    | k2_partfun1(X0_53,X1_53,X2_53,u1_struct_0(sK3)) = X3_53
    | v1_funct_2(X2_53,X0_53,X1_53) != iProver_top
    | v1_funct_2(X3_53,u1_struct_0(sK3),X1_53) != iProver_top
    | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
    | m1_subset_1(X3_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),X1_53))) != iProver_top
    | m1_subset_1(sK0(X0_53,X1_53,X2_53,u1_struct_0(sK3),X3_53),u1_struct_0(sK4)) != iProver_top
    | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(X0_53)) != iProver_top
    | v1_xboole_0(X0_53) = iProver_top
    | v1_xboole_0(X1_53) = iProver_top
    | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
    | v1_funct_1(X2_53) != iProver_top
    | v1_funct_1(X3_53) != iProver_top ),
    inference(superposition,[status(thm)],[c_1102,c_1107])).

cnf(c_2687,plain,
    ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),X0_53,X1_53,u1_struct_0(sK3),X2_53)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),X0_53,X1_53,u1_struct_0(sK3),X2_53))
    | k2_partfun1(u1_struct_0(sK4),X0_53,X1_53,u1_struct_0(sK3)) = X2_53
    | v1_funct_2(X1_53,u1_struct_0(sK4),X0_53) != iProver_top
    | v1_funct_2(X2_53,u1_struct_0(sK3),X0_53) != iProver_top
    | m1_subset_1(X1_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),X0_53))) != iProver_top
    | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),X0_53))) != iProver_top
    | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | v1_xboole_0(X0_53) = iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) = iProver_top
    | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
    | v1_funct_1(X2_53) != iProver_top
    | v1_funct_1(X1_53) != iProver_top ),
    inference(superposition,[status(thm)],[c_1103,c_1971])).

cnf(c_26,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_31,plain,
    ( l1_pre_topc(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_19,negated_conjecture,
    ( m1_pre_topc(sK4,sK1) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_38,plain,
    ( m1_pre_topc(sK4,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_15,negated_conjecture,
    ( m1_pre_topc(sK3,sK4) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_42,plain,
    ( m1_pre_topc(sK3,sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_9,plain,
    ( ~ m1_pre_topc(X0,X1)
    | m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_626,plain,
    ( ~ m1_pre_topc(X0_54,X1_54)
    | m1_subset_1(u1_struct_0(X0_54),k1_zfmisc_1(u1_struct_0(X1_54)))
    | ~ l1_pre_topc(X1_54) ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_1361,plain,
    ( ~ m1_pre_topc(sK3,sK4)
    | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4)))
    | ~ l1_pre_topc(sK4) ),
    inference(instantiation,[status(thm)],[c_626])).

cnf(c_1362,plain,
    ( m1_pre_topc(sK3,sK4) != iProver_top
    | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top
    | l1_pre_topc(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1361])).

cnf(c_6,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_628,plain,
    ( ~ m1_pre_topc(X0_54,X1_54)
    | ~ l1_pre_topc(X1_54)
    | l1_pre_topc(X0_54) ),
    inference(subtyping,[status(esa)],[c_6])).

cnf(c_1627,plain,
    ( ~ m1_pre_topc(sK4,X0_54)
    | ~ l1_pre_topc(X0_54)
    | l1_pre_topc(sK4) ),
    inference(instantiation,[status(thm)],[c_628])).

cnf(c_1709,plain,
    ( ~ m1_pre_topc(sK4,sK1)
    | l1_pre_topc(sK4)
    | ~ l1_pre_topc(sK1) ),
    inference(instantiation,[status(thm)],[c_1627])).

cnf(c_1710,plain,
    ( m1_pre_topc(sK4,sK1) != iProver_top
    | l1_pre_topc(sK4) = iProver_top
    | l1_pre_topc(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1709])).

cnf(c_2692,plain,
    ( m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),X0_53))) != iProver_top
    | m1_subset_1(X1_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),X0_53))) != iProver_top
    | v1_funct_2(X2_53,u1_struct_0(sK3),X0_53) != iProver_top
    | v1_funct_2(X1_53,u1_struct_0(sK4),X0_53) != iProver_top
    | k2_partfun1(u1_struct_0(sK4),X0_53,X1_53,u1_struct_0(sK3)) = X2_53
    | k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),X0_53,X1_53,u1_struct_0(sK3),X2_53)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),X0_53,X1_53,u1_struct_0(sK3),X2_53))
    | v1_xboole_0(X0_53) = iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) = iProver_top
    | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
    | v1_funct_1(X2_53) != iProver_top
    | v1_funct_1(X1_53) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2687,c_31,c_38,c_42,c_1362,c_1710])).

cnf(c_2693,plain,
    ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),X0_53,X1_53,u1_struct_0(sK3),X2_53)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),X0_53,X1_53,u1_struct_0(sK3),X2_53))
    | k2_partfun1(u1_struct_0(sK4),X0_53,X1_53,u1_struct_0(sK3)) = X2_53
    | v1_funct_2(X1_53,u1_struct_0(sK4),X0_53) != iProver_top
    | v1_funct_2(X2_53,u1_struct_0(sK3),X0_53) != iProver_top
    | m1_subset_1(X1_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),X0_53))) != iProver_top
    | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),X0_53))) != iProver_top
    | v1_xboole_0(X0_53) = iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) = iProver_top
    | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
    | v1_funct_1(X2_53) != iProver_top
    | v1_funct_1(X1_53) != iProver_top ),
    inference(renaming,[status(thm)],[c_2692])).

cnf(c_2709,plain,
    ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),X0_53)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),X0_53))
    | k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3)) = X0_53
    | v1_funct_2(X0_53,u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
    | v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) = iProver_top
    | v1_xboole_0(u1_struct_0(sK2)) = iProver_top
    | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
    | v1_funct_1(X0_53) != iProver_top
    | v1_funct_1(sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_1112,c_2693])).

cnf(c_21,negated_conjecture,
    ( m1_pre_topc(sK3,sK1) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_615,negated_conjecture,
    ( m1_pre_topc(sK3,sK1) ),
    inference(subtyping,[status(esa)],[c_21])).

cnf(c_1117,plain,
    ( m1_pre_topc(sK3,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_615])).

cnf(c_8,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_pre_topc(X3,X1)
    | ~ m1_pre_topc(X3,X4)
    | ~ m1_pre_topc(X1,X4)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X4)
    | v2_struct_0(X4)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X4)
    | ~ l1_pre_topc(X2)
    | ~ v1_funct_1(X0)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k3_tmap_1(X4,X2,X1,X3,X0) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_627,plain,
    ( ~ v1_funct_2(X0_53,u1_struct_0(X0_54),u1_struct_0(X1_54))
    | ~ m1_pre_topc(X2_54,X0_54)
    | ~ m1_pre_topc(X2_54,X3_54)
    | ~ m1_pre_topc(X0_54,X3_54)
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))))
    | ~ v2_pre_topc(X1_54)
    | ~ v2_pre_topc(X3_54)
    | v2_struct_0(X3_54)
    | v2_struct_0(X1_54)
    | ~ l1_pre_topc(X1_54)
    | ~ l1_pre_topc(X3_54)
    | ~ v1_funct_1(X0_53)
    | k2_partfun1(u1_struct_0(X0_54),u1_struct_0(X1_54),X0_53,u1_struct_0(X2_54)) = k3_tmap_1(X3_54,X1_54,X0_54,X2_54,X0_53) ),
    inference(subtyping,[status(esa)],[c_8])).

cnf(c_1105,plain,
    ( k2_partfun1(u1_struct_0(X0_54),u1_struct_0(X1_54),X0_53,u1_struct_0(X2_54)) = k3_tmap_1(X3_54,X1_54,X0_54,X2_54,X0_53)
    | v1_funct_2(X0_53,u1_struct_0(X0_54),u1_struct_0(X1_54)) != iProver_top
    | m1_pre_topc(X2_54,X0_54) != iProver_top
    | m1_pre_topc(X2_54,X3_54) != iProver_top
    | m1_pre_topc(X0_54,X3_54) != iProver_top
    | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54)))) != iProver_top
    | v2_pre_topc(X1_54) != iProver_top
    | v2_pre_topc(X3_54) != iProver_top
    | v2_struct_0(X1_54) = iProver_top
    | v2_struct_0(X3_54) = iProver_top
    | l1_pre_topc(X1_54) != iProver_top
    | l1_pre_topc(X3_54) != iProver_top
    | v1_funct_1(X0_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_627])).

cnf(c_2115,plain,
    ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(X0_54)) = k3_tmap_1(X1_54,sK2,sK4,X0_54,sK5)
    | v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2)) != iProver_top
    | m1_pre_topc(X0_54,X1_54) != iProver_top
    | m1_pre_topc(X0_54,sK4) != iProver_top
    | m1_pre_topc(sK4,X1_54) != iProver_top
    | v2_pre_topc(X1_54) != iProver_top
    | v2_pre_topc(sK2) != iProver_top
    | v2_struct_0(X1_54) = iProver_top
    | v2_struct_0(sK2) = iProver_top
    | l1_pre_topc(X1_54) != iProver_top
    | l1_pre_topc(sK2) != iProver_top
    | v1_funct_1(sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_1112,c_1105])).

cnf(c_25,negated_conjecture,
    ( ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_32,plain,
    ( v2_struct_0(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_24,negated_conjecture,
    ( v2_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_33,plain,
    ( v2_pre_topc(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_23,negated_conjecture,
    ( l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_34,plain,
    ( l1_pre_topc(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_18,negated_conjecture,
    ( v1_funct_1(sK5) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_39,plain,
    ( v1_funct_1(sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_17,negated_conjecture,
    ( v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_40,plain,
    ( v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_2400,plain,
    ( v2_struct_0(X1_54) = iProver_top
    | k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(X0_54)) = k3_tmap_1(X1_54,sK2,sK4,X0_54,sK5)
    | m1_pre_topc(X0_54,X1_54) != iProver_top
    | m1_pre_topc(X0_54,sK4) != iProver_top
    | m1_pre_topc(sK4,X1_54) != iProver_top
    | v2_pre_topc(X1_54) != iProver_top
    | l1_pre_topc(X1_54) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2115,c_32,c_33,c_34,c_39,c_40])).

cnf(c_2401,plain,
    ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(X0_54)) = k3_tmap_1(X1_54,sK2,sK4,X0_54,sK5)
    | m1_pre_topc(X0_54,X1_54) != iProver_top
    | m1_pre_topc(X0_54,sK4) != iProver_top
    | m1_pre_topc(sK4,X1_54) != iProver_top
    | v2_pre_topc(X1_54) != iProver_top
    | v2_struct_0(X1_54) = iProver_top
    | l1_pre_topc(X1_54) != iProver_top ),
    inference(renaming,[status(thm)],[c_2400])).

cnf(c_2415,plain,
    ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3)) = k3_tmap_1(sK1,sK2,sK4,sK3,sK5)
    | m1_pre_topc(sK4,sK1) != iProver_top
    | m1_pre_topc(sK3,sK4) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1117,c_2401])).

cnf(c_28,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_27,negated_conjecture,
    ( v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_1394,plain,
    ( ~ v1_funct_2(X0_53,u1_struct_0(sK4),u1_struct_0(X0_54))
    | ~ m1_pre_topc(sK4,X1_54)
    | ~ m1_pre_topc(sK3,X1_54)
    | ~ m1_pre_topc(sK3,sK4)
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0_54))))
    | ~ v2_pre_topc(X1_54)
    | ~ v2_pre_topc(X0_54)
    | v2_struct_0(X0_54)
    | v2_struct_0(X1_54)
    | ~ l1_pre_topc(X0_54)
    | ~ l1_pre_topc(X1_54)
    | ~ v1_funct_1(X0_53)
    | k2_partfun1(u1_struct_0(sK4),u1_struct_0(X0_54),X0_53,u1_struct_0(sK3)) = k3_tmap_1(X1_54,X0_54,sK4,sK3,X0_53) ),
    inference(instantiation,[status(thm)],[c_627])).

cnf(c_1550,plain,
    ( ~ v1_funct_2(X0_53,u1_struct_0(sK4),u1_struct_0(X0_54))
    | ~ m1_pre_topc(sK4,sK1)
    | ~ m1_pre_topc(sK3,sK4)
    | ~ m1_pre_topc(sK3,sK1)
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0_54))))
    | ~ v2_pre_topc(X0_54)
    | ~ v2_pre_topc(sK1)
    | v2_struct_0(X0_54)
    | v2_struct_0(sK1)
    | ~ l1_pre_topc(X0_54)
    | ~ l1_pre_topc(sK1)
    | ~ v1_funct_1(X0_53)
    | k2_partfun1(u1_struct_0(sK4),u1_struct_0(X0_54),X0_53,u1_struct_0(sK3)) = k3_tmap_1(sK1,X0_54,sK4,sK3,X0_53) ),
    inference(instantiation,[status(thm)],[c_1394])).

cnf(c_1552,plain,
    ( ~ v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2))
    | ~ m1_pre_topc(sK4,sK1)
    | ~ m1_pre_topc(sK3,sK4)
    | ~ m1_pre_topc(sK3,sK1)
    | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK2))))
    | ~ v2_pre_topc(sK1)
    | ~ v2_pre_topc(sK2)
    | v2_struct_0(sK1)
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(sK1)
    | ~ l1_pre_topc(sK2)
    | ~ v1_funct_1(sK5)
    | k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3)) = k3_tmap_1(sK1,sK2,sK4,sK3,sK5) ),
    inference(instantiation,[status(thm)],[c_1550])).

cnf(c_2603,plain,
    ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3)) = k3_tmap_1(sK1,sK2,sK4,sK3,sK5) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2415,c_28,c_27,c_26,c_25,c_24,c_23,c_21,c_19,c_18,c_17,c_16,c_15,c_1552])).

cnf(c_2763,plain,
    ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),X0_53)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),X0_53))
    | k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = X0_53
    | v1_funct_2(X0_53,u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
    | v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) = iProver_top
    | v1_xboole_0(u1_struct_0(sK2)) = iProver_top
    | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
    | v1_funct_1(X0_53) != iProver_top
    | v1_funct_1(sK5) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2709,c_2603])).

cnf(c_7,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_56,plain,
    ( v2_struct_0(X0) = iProver_top
    | l1_struct_0(X0) != iProver_top
    | v1_xboole_0(u1_struct_0(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_58,plain,
    ( v2_struct_0(sK2) = iProver_top
    | l1_struct_0(sK2) != iProver_top
    | v1_xboole_0(u1_struct_0(sK2)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_56])).

cnf(c_5,plain,
    ( ~ l1_pre_topc(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_60,plain,
    ( l1_pre_topc(X0) != iProver_top
    | l1_struct_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_62,plain,
    ( l1_pre_topc(sK2) != iProver_top
    | l1_struct_0(sK2) = iProver_top ),
    inference(instantiation,[status(thm)],[c_60])).

cnf(c_3003,plain,
    ( v1_funct_1(X0_53) != iProver_top
    | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
    | v1_funct_2(X0_53,u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
    | k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = X0_53
    | k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),X0_53)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),X0_53))
    | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2763,c_32,c_34,c_39,c_40,c_58,c_62])).

cnf(c_3004,plain,
    ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),X0_53)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),X0_53))
    | k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = X0_53
    | v1_funct_2(X0_53,u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) = iProver_top
    | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
    | v1_funct_1(X0_53) != iProver_top ),
    inference(renaming,[status(thm)],[c_3003])).

cnf(c_3016,plain,
    ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6))
    | k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6
    | v1_funct_2(sK6,u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) = iProver_top
    | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
    | v1_funct_1(sK6) != iProver_top ),
    inference(superposition,[status(thm)],[c_1108,c_3004])).

cnf(c_22,negated_conjecture,
    ( ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_35,plain,
    ( v2_struct_0(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_14,negated_conjecture,
    ( v1_funct_1(sK6) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_43,plain,
    ( v1_funct_1(sK6) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_13,negated_conjecture,
    ( v1_funct_2(sK6,u1_struct_0(sK3),u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_44,plain,
    ( v1_funct_2(sK6,u1_struct_0(sK3),u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_621,negated_conjecture,
    ( m1_pre_topc(sK3,sK4) ),
    inference(subtyping,[status(esa)],[c_15])).

cnf(c_1111,plain,
    ( m1_pre_topc(sK3,sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_621])).

cnf(c_1104,plain,
    ( m1_pre_topc(X0_54,X1_54) != iProver_top
    | l1_pre_topc(X1_54) != iProver_top
    | l1_pre_topc(X0_54) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_628])).

cnf(c_1940,plain,
    ( l1_pre_topc(sK4) != iProver_top
    | l1_pre_topc(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1111,c_1104])).

cnf(c_302,plain,
    ( v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(resolution,[status(thm)],[c_5,c_7])).

cnf(c_607,plain,
    ( v2_struct_0(X0_54)
    | ~ l1_pre_topc(X0_54)
    | ~ v1_xboole_0(u1_struct_0(X0_54)) ),
    inference(subtyping,[status(esa)],[c_302])).

cnf(c_3078,plain,
    ( v2_struct_0(sK3)
    | ~ l1_pre_topc(sK3)
    | ~ v1_xboole_0(u1_struct_0(sK3)) ),
    inference(instantiation,[status(thm)],[c_607])).

cnf(c_3079,plain,
    ( v2_struct_0(sK3) = iProver_top
    | l1_pre_topc(sK3) != iProver_top
    | v1_xboole_0(u1_struct_0(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3078])).

cnf(c_3115,plain,
    ( k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6
    | k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6))
    | v1_xboole_0(u1_struct_0(sK4)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3016,c_31,c_35,c_38,c_43,c_44,c_1710,c_1940,c_3079])).

cnf(c_3116,plain,
    ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6))
    | k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6
    | v1_xboole_0(u1_struct_0(sK4)) = iProver_top ),
    inference(renaming,[status(thm)],[c_3115])).

cnf(c_1125,plain,
    ( v2_struct_0(X0_54) = iProver_top
    | l1_pre_topc(X0_54) != iProver_top
    | v1_xboole_0(u1_struct_0(X0_54)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_607])).

cnf(c_3122,plain,
    ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6))
    | k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6
    | v2_struct_0(sK4) = iProver_top
    | l1_pre_topc(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_3116,c_1125])).

cnf(c_20,negated_conjecture,
    ( ~ v2_struct_0(sK4) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_3123,plain,
    ( v2_struct_0(sK4)
    | ~ l1_pre_topc(sK4)
    | k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6))
    | k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_3122])).

cnf(c_3125,plain,
    ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6))
    | k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3122,c_26,c_20,c_19,c_1709,c_3123])).

cnf(c_2,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ v1_funct_2(X3,X4,X2)
    | ~ m1_subset_1(X4,k1_zfmisc_1(X1))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
    | v1_xboole_0(X1)
    | v1_xboole_0(X2)
    | v1_xboole_0(X4)
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k3_funct_2(X1,X2,X0,sK0(X1,X2,X0,X4,X3)) != k1_funct_1(X3,sK0(X1,X2,X0,X4,X3))
    | k2_partfun1(X1,X2,X0,X4) = X3 ),
    inference(cnf_transformation,[],[f37])).

cnf(c_631,plain,
    ( ~ v1_funct_2(X0_53,X1_53,X2_53)
    | ~ v1_funct_2(X3_53,X4_53,X2_53)
    | ~ m1_subset_1(X4_53,k1_zfmisc_1(X1_53))
    | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
    | ~ m1_subset_1(X3_53,k1_zfmisc_1(k2_zfmisc_1(X4_53,X2_53)))
    | v1_xboole_0(X1_53)
    | v1_xboole_0(X2_53)
    | v1_xboole_0(X4_53)
    | ~ v1_funct_1(X0_53)
    | ~ v1_funct_1(X3_53)
    | k3_funct_2(X1_53,X2_53,X0_53,sK0(X1_53,X2_53,X0_53,X4_53,X3_53)) != k1_funct_1(X3_53,sK0(X1_53,X2_53,X0_53,X4_53,X3_53))
    | k2_partfun1(X1_53,X2_53,X0_53,X4_53) = X3_53 ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_1101,plain,
    ( k3_funct_2(X0_53,X1_53,X2_53,sK0(X0_53,X1_53,X2_53,X3_53,X4_53)) != k1_funct_1(X4_53,sK0(X0_53,X1_53,X2_53,X3_53,X4_53))
    | k2_partfun1(X0_53,X1_53,X2_53,X3_53) = X4_53
    | v1_funct_2(X2_53,X0_53,X1_53) != iProver_top
    | v1_funct_2(X4_53,X3_53,X1_53) != iProver_top
    | m1_subset_1(X3_53,k1_zfmisc_1(X0_53)) != iProver_top
    | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
    | m1_subset_1(X4_53,k1_zfmisc_1(k2_zfmisc_1(X3_53,X1_53))) != iProver_top
    | v1_xboole_0(X0_53) = iProver_top
    | v1_xboole_0(X1_53) = iProver_top
    | v1_xboole_0(X3_53) = iProver_top
    | v1_funct_1(X2_53) != iProver_top
    | v1_funct_1(X4_53) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_631])).

cnf(c_3129,plain,
    ( k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6
    | k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3)) = sK6
    | v1_funct_2(sK6,u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
    | v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK2)))) != iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) = iProver_top
    | v1_xboole_0(u1_struct_0(sK2)) = iProver_top
    | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
    | v1_funct_1(sK6) != iProver_top
    | v1_funct_1(sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_3125,c_1101])).

cnf(c_3130,plain,
    ( k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6
    | v1_funct_2(sK6,u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
    | v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
    | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK2)))) != iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) = iProver_top
    | v1_xboole_0(u1_struct_0(sK2)) = iProver_top
    | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
    | v1_funct_1(sK6) != iProver_top
    | v1_funct_1(sK5) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3129,c_2603])).

cnf(c_41,plain,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK2)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_45,plain,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_3166,plain,
    ( k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6
    | v1_xboole_0(u1_struct_0(sK4)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3130,c_31,c_32,c_34,c_35,c_38,c_39,c_40,c_41,c_42,c_43,c_44,c_45,c_58,c_62,c_1362,c_1710,c_1940,c_3079])).

cnf(c_3172,plain,
    ( k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6
    | v2_struct_0(sK4) = iProver_top
    | l1_pre_topc(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_3166,c_1125])).

cnf(c_37,plain,
    ( v2_struct_0(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_3175,plain,
    ( k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3172,c_31,c_37,c_38,c_1710])).

cnf(c_0,plain,
    ( r2_funct_2(X0,X1,X2,X2)
    | ~ v1_funct_2(X2,X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(X2) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_10,negated_conjecture,
    ( ~ r2_funct_2(u1_struct_0(sK3),u1_struct_0(sK2),k3_tmap_1(sK1,sK2,sK4,sK3,sK5),sK6) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_322,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | k3_tmap_1(sK1,sK2,sK4,sK3,sK5) != X0
    | u1_struct_0(sK2) != X2
    | u1_struct_0(sK3) != X1
    | sK6 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_10])).

cnf(c_323,plain,
    ( ~ v1_funct_2(k3_tmap_1(sK1,sK2,sK4,sK3,sK5),u1_struct_0(sK3),u1_struct_0(sK2))
    | ~ m1_subset_1(k3_tmap_1(sK1,sK2,sK4,sK3,sK5),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2))))
    | ~ v1_funct_1(k3_tmap_1(sK1,sK2,sK4,sK3,sK5))
    | sK6 != k3_tmap_1(sK1,sK2,sK4,sK3,sK5) ),
    inference(unflattening,[status(thm)],[c_322])).

cnf(c_606,plain,
    ( ~ v1_funct_2(k3_tmap_1(sK1,sK2,sK4,sK3,sK5),u1_struct_0(sK3),u1_struct_0(sK2))
    | ~ m1_subset_1(k3_tmap_1(sK1,sK2,sK4,sK3,sK5),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2))))
    | ~ v1_funct_1(k3_tmap_1(sK1,sK2,sK4,sK3,sK5))
    | sK6 != k3_tmap_1(sK1,sK2,sK4,sK3,sK5) ),
    inference(subtyping,[status(esa)],[c_323])).

cnf(c_1126,plain,
    ( sK6 != k3_tmap_1(sK1,sK2,sK4,sK3,sK5)
    | v1_funct_2(k3_tmap_1(sK1,sK2,sK4,sK3,sK5),u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(k3_tmap_1(sK1,sK2,sK4,sK3,sK5),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top
    | v1_funct_1(k3_tmap_1(sK1,sK2,sK4,sK3,sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_606])).

cnf(c_3181,plain,
    ( sK6 != sK6
    | v1_funct_2(sK6,u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top
    | v1_funct_1(sK6) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3175,c_1126])).

cnf(c_3182,plain,
    ( v1_funct_2(sK6,u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top
    | v1_funct_1(sK6) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_3181])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3182,c_45,c_44,c_43])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n004.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 11:25:23 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 2.25/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.25/0.98  
% 2.25/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.25/0.98  
% 2.25/0.98  ------  iProver source info
% 2.25/0.98  
% 2.25/0.98  git: date: 2020-06-30 10:37:57 +0100
% 2.25/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.25/0.98  git: non_committed_changes: false
% 2.25/0.98  git: last_make_outside_of_git: false
% 2.25/0.98  
% 2.25/0.98  ------ 
% 2.25/0.98  
% 2.25/0.98  ------ Input Options
% 2.25/0.98  
% 2.25/0.98  --out_options                           all
% 2.25/0.98  --tptp_safe_out                         true
% 2.25/0.98  --problem_path                          ""
% 2.25/0.98  --include_path                          ""
% 2.25/0.98  --clausifier                            res/vclausify_rel
% 2.25/0.98  --clausifier_options                    --mode clausify
% 2.25/0.98  --stdin                                 false
% 2.25/0.98  --stats_out                             all
% 2.25/0.98  
% 2.25/0.98  ------ General Options
% 2.25/0.98  
% 2.25/0.98  --fof                                   false
% 2.25/0.98  --time_out_real                         305.
% 2.25/0.98  --time_out_virtual                      -1.
% 2.25/0.98  --symbol_type_check                     false
% 2.25/0.98  --clausify_out                          false
% 2.25/0.98  --sig_cnt_out                           false
% 2.25/0.98  --trig_cnt_out                          false
% 2.25/0.98  --trig_cnt_out_tolerance                1.
% 2.25/0.98  --trig_cnt_out_sk_spl                   false
% 2.25/0.98  --abstr_cl_out                          false
% 2.25/0.98  
% 2.25/0.98  ------ Global Options
% 2.25/0.98  
% 2.25/0.98  --schedule                              default
% 2.25/0.98  --add_important_lit                     false
% 2.25/0.98  --prop_solver_per_cl                    1000
% 2.25/0.98  --min_unsat_core                        false
% 2.25/0.98  --soft_assumptions                      false
% 2.25/0.98  --soft_lemma_size                       3
% 2.25/0.98  --prop_impl_unit_size                   0
% 2.25/0.98  --prop_impl_unit                        []
% 2.25/0.98  --share_sel_clauses                     true
% 2.25/0.98  --reset_solvers                         false
% 2.25/0.98  --bc_imp_inh                            [conj_cone]
% 2.25/0.98  --conj_cone_tolerance                   3.
% 2.25/0.98  --extra_neg_conj                        none
% 2.25/0.98  --large_theory_mode                     true
% 2.25/0.98  --prolific_symb_bound                   200
% 2.25/0.98  --lt_threshold                          2000
% 2.25/0.98  --clause_weak_htbl                      true
% 2.25/0.98  --gc_record_bc_elim                     false
% 2.25/0.98  
% 2.25/0.98  ------ Preprocessing Options
% 2.25/0.98  
% 2.25/0.98  --preprocessing_flag                    true
% 2.25/0.98  --time_out_prep_mult                    0.1
% 2.25/0.98  --splitting_mode                        input
% 2.25/0.98  --splitting_grd                         true
% 2.25/0.98  --splitting_cvd                         false
% 2.25/0.98  --splitting_cvd_svl                     false
% 2.25/0.98  --splitting_nvd                         32
% 2.25/0.98  --sub_typing                            true
% 2.25/0.98  --prep_gs_sim                           true
% 2.25/0.98  --prep_unflatten                        true
% 2.25/0.98  --prep_res_sim                          true
% 2.25/0.98  --prep_upred                            true
% 2.25/0.98  --prep_sem_filter                       exhaustive
% 2.25/0.98  --prep_sem_filter_out                   false
% 2.25/0.98  --pred_elim                             true
% 2.25/0.98  --res_sim_input                         true
% 2.25/0.98  --eq_ax_congr_red                       true
% 2.25/0.98  --pure_diseq_elim                       true
% 2.25/0.98  --brand_transform                       false
% 2.25/0.98  --non_eq_to_eq                          false
% 2.25/0.98  --prep_def_merge                        true
% 2.25/0.98  --prep_def_merge_prop_impl              false
% 2.25/0.98  --prep_def_merge_mbd                    true
% 2.25/0.98  --prep_def_merge_tr_red                 false
% 2.25/0.98  --prep_def_merge_tr_cl                  false
% 2.25/0.98  --smt_preprocessing                     true
% 2.25/0.98  --smt_ac_axioms                         fast
% 2.25/0.98  --preprocessed_out                      false
% 2.25/0.98  --preprocessed_stats                    false
% 2.25/0.98  
% 2.25/0.98  ------ Abstraction refinement Options
% 2.25/0.98  
% 2.25/0.98  --abstr_ref                             []
% 2.25/0.98  --abstr_ref_prep                        false
% 2.25/0.98  --abstr_ref_until_sat                   false
% 2.25/0.98  --abstr_ref_sig_restrict                funpre
% 2.25/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.25/0.98  --abstr_ref_under                       []
% 2.25/0.98  
% 2.25/0.98  ------ SAT Options
% 2.25/0.98  
% 2.25/0.98  --sat_mode                              false
% 2.25/0.98  --sat_fm_restart_options                ""
% 2.25/0.98  --sat_gr_def                            false
% 2.25/0.98  --sat_epr_types                         true
% 2.25/0.98  --sat_non_cyclic_types                  false
% 2.25/0.98  --sat_finite_models                     false
% 2.25/0.98  --sat_fm_lemmas                         false
% 2.25/0.98  --sat_fm_prep                           false
% 2.25/0.98  --sat_fm_uc_incr                        true
% 2.25/0.98  --sat_out_model                         small
% 2.25/0.98  --sat_out_clauses                       false
% 2.25/0.98  
% 2.25/0.98  ------ QBF Options
% 2.25/0.98  
% 2.25/0.98  --qbf_mode                              false
% 2.25/0.98  --qbf_elim_univ                         false
% 2.25/0.98  --qbf_dom_inst                          none
% 2.25/0.98  --qbf_dom_pre_inst                      false
% 2.25/0.98  --qbf_sk_in                             false
% 2.25/0.98  --qbf_pred_elim                         true
% 2.25/0.98  --qbf_split                             512
% 2.25/0.98  
% 2.25/0.98  ------ BMC1 Options
% 2.25/0.98  
% 2.25/0.98  --bmc1_incremental                      false
% 2.25/0.98  --bmc1_axioms                           reachable_all
% 2.25/0.98  --bmc1_min_bound                        0
% 2.25/0.98  --bmc1_max_bound                        -1
% 2.25/0.98  --bmc1_max_bound_default                -1
% 2.25/0.98  --bmc1_symbol_reachability              true
% 2.25/0.98  --bmc1_property_lemmas                  false
% 2.25/0.98  --bmc1_k_induction                      false
% 2.25/0.98  --bmc1_non_equiv_states                 false
% 2.25/0.98  --bmc1_deadlock                         false
% 2.25/0.98  --bmc1_ucm                              false
% 2.25/0.98  --bmc1_add_unsat_core                   none
% 2.25/0.98  --bmc1_unsat_core_children              false
% 2.25/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.25/0.98  --bmc1_out_stat                         full
% 2.25/0.98  --bmc1_ground_init                      false
% 2.25/0.98  --bmc1_pre_inst_next_state              false
% 2.25/0.98  --bmc1_pre_inst_state                   false
% 2.25/0.98  --bmc1_pre_inst_reach_state             false
% 2.25/0.98  --bmc1_out_unsat_core                   false
% 2.25/0.98  --bmc1_aig_witness_out                  false
% 2.25/0.98  --bmc1_verbose                          false
% 2.25/0.98  --bmc1_dump_clauses_tptp                false
% 2.25/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.25/0.98  --bmc1_dump_file                        -
% 2.25/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.25/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.25/0.98  --bmc1_ucm_extend_mode                  1
% 2.25/0.98  --bmc1_ucm_init_mode                    2
% 2.25/0.98  --bmc1_ucm_cone_mode                    none
% 2.25/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.25/0.98  --bmc1_ucm_relax_model                  4
% 2.25/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.25/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.25/0.98  --bmc1_ucm_layered_model                none
% 2.25/0.98  --bmc1_ucm_max_lemma_size               10
% 2.25/0.98  
% 2.25/0.98  ------ AIG Options
% 2.25/0.98  
% 2.25/0.98  --aig_mode                              false
% 2.25/0.98  
% 2.25/0.98  ------ Instantiation Options
% 2.25/0.98  
% 2.25/0.98  --instantiation_flag                    true
% 2.25/0.98  --inst_sos_flag                         false
% 2.25/0.98  --inst_sos_phase                        true
% 2.25/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.25/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.25/0.98  --inst_lit_sel_side                     num_symb
% 2.25/0.98  --inst_solver_per_active                1400
% 2.25/0.98  --inst_solver_calls_frac                1.
% 2.25/0.98  --inst_passive_queue_type               priority_queues
% 2.25/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.25/0.98  --inst_passive_queues_freq              [25;2]
% 2.25/0.98  --inst_dismatching                      true
% 2.25/0.98  --inst_eager_unprocessed_to_passive     true
% 2.25/0.98  --inst_prop_sim_given                   true
% 2.25/0.98  --inst_prop_sim_new                     false
% 2.25/0.98  --inst_subs_new                         false
% 2.25/0.98  --inst_eq_res_simp                      false
% 2.25/0.98  --inst_subs_given                       false
% 2.25/0.98  --inst_orphan_elimination               true
% 2.25/0.98  --inst_learning_loop_flag               true
% 2.25/0.98  --inst_learning_start                   3000
% 2.25/0.98  --inst_learning_factor                  2
% 2.25/0.98  --inst_start_prop_sim_after_learn       3
% 2.25/0.98  --inst_sel_renew                        solver
% 2.25/0.98  --inst_lit_activity_flag                true
% 2.25/0.98  --inst_restr_to_given                   false
% 2.25/0.98  --inst_activity_threshold               500
% 2.25/0.98  --inst_out_proof                        true
% 2.25/0.98  
% 2.25/0.98  ------ Resolution Options
% 2.25/0.98  
% 2.25/0.98  --resolution_flag                       true
% 2.25/0.98  --res_lit_sel                           adaptive
% 2.25/0.98  --res_lit_sel_side                      none
% 2.25/0.98  --res_ordering                          kbo
% 2.25/0.98  --res_to_prop_solver                    active
% 2.25/0.98  --res_prop_simpl_new                    false
% 2.25/0.98  --res_prop_simpl_given                  true
% 2.25/0.98  --res_passive_queue_type                priority_queues
% 2.25/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.25/0.98  --res_passive_queues_freq               [15;5]
% 2.25/0.98  --res_forward_subs                      full
% 2.25/0.98  --res_backward_subs                     full
% 2.25/0.98  --res_forward_subs_resolution           true
% 2.25/0.98  --res_backward_subs_resolution          true
% 2.25/0.98  --res_orphan_elimination                true
% 2.25/0.98  --res_time_limit                        2.
% 2.25/0.98  --res_out_proof                         true
% 2.25/0.98  
% 2.25/0.98  ------ Superposition Options
% 2.25/0.98  
% 2.25/0.98  --superposition_flag                    true
% 2.25/0.98  --sup_passive_queue_type                priority_queues
% 2.25/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.25/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.25/0.98  --demod_completeness_check              fast
% 2.25/0.98  --demod_use_ground                      true
% 2.25/0.98  --sup_to_prop_solver                    passive
% 2.25/0.98  --sup_prop_simpl_new                    true
% 2.25/0.98  --sup_prop_simpl_given                  true
% 2.25/0.98  --sup_fun_splitting                     false
% 2.25/0.98  --sup_smt_interval                      50000
% 2.25/0.98  
% 2.25/0.98  ------ Superposition Simplification Setup
% 2.25/0.98  
% 2.25/0.98  --sup_indices_passive                   []
% 2.25/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.25/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.25/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.25/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.25/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.25/0.98  --sup_full_bw                           [BwDemod]
% 2.25/0.98  --sup_immed_triv                        [TrivRules]
% 2.25/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.25/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.25/0.98  --sup_immed_bw_main                     []
% 2.25/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.25/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.25/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.25/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.25/0.98  
% 2.25/0.98  ------ Combination Options
% 2.25/0.98  
% 2.25/0.98  --comb_res_mult                         3
% 2.25/0.98  --comb_sup_mult                         2
% 2.25/0.98  --comb_inst_mult                        10
% 2.25/0.98  
% 2.25/0.98  ------ Debug Options
% 2.25/0.98  
% 2.25/0.98  --dbg_backtrace                         false
% 2.25/0.98  --dbg_dump_prop_clauses                 false
% 2.25/0.98  --dbg_dump_prop_clauses_file            -
% 2.25/0.98  --dbg_out_stat                          false
% 2.25/0.98  ------ Parsing...
% 2.25/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.25/0.98  
% 2.25/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 2.25/0.98  
% 2.25/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.25/0.98  
% 2.25/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.25/0.98  ------ Proving...
% 2.25/0.98  ------ Problem Properties 
% 2.25/0.98  
% 2.25/0.98  
% 2.25/0.98  clauses                                 26
% 2.25/0.98  conjectures                             18
% 2.25/0.98  EPR                                     14
% 2.25/0.98  Horn                                    22
% 2.25/0.98  unary                                   17
% 2.25/0.98  binary                                  0
% 2.25/0.98  lits                                    82
% 2.25/0.98  lits eq                                 7
% 2.25/0.98  fd_pure                                 0
% 2.25/0.98  fd_pseudo                               0
% 2.25/0.98  fd_cond                                 0
% 2.25/0.98  fd_pseudo_cond                          3
% 2.25/0.98  AC symbols                              0
% 2.25/0.98  
% 2.25/0.98  ------ Schedule dynamic 5 is on 
% 2.25/0.98  
% 2.25/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.25/0.98  
% 2.25/0.98  
% 2.25/0.98  ------ 
% 2.25/0.98  Current options:
% 2.25/0.98  ------ 
% 2.25/0.98  
% 2.25/0.98  ------ Input Options
% 2.25/0.98  
% 2.25/0.98  --out_options                           all
% 2.25/0.98  --tptp_safe_out                         true
% 2.25/0.98  --problem_path                          ""
% 2.25/0.98  --include_path                          ""
% 2.25/0.98  --clausifier                            res/vclausify_rel
% 2.25/0.98  --clausifier_options                    --mode clausify
% 2.25/0.98  --stdin                                 false
% 2.25/0.98  --stats_out                             all
% 2.25/0.98  
% 2.25/0.98  ------ General Options
% 2.25/0.98  
% 2.25/0.98  --fof                                   false
% 2.25/0.98  --time_out_real                         305.
% 2.25/0.98  --time_out_virtual                      -1.
% 2.25/0.98  --symbol_type_check                     false
% 2.25/0.98  --clausify_out                          false
% 2.25/0.98  --sig_cnt_out                           false
% 2.25/0.98  --trig_cnt_out                          false
% 2.25/0.98  --trig_cnt_out_tolerance                1.
% 2.25/0.98  --trig_cnt_out_sk_spl                   false
% 2.25/0.98  --abstr_cl_out                          false
% 2.25/0.98  
% 2.25/0.98  ------ Global Options
% 2.25/0.98  
% 2.25/0.98  --schedule                              default
% 2.25/0.98  --add_important_lit                     false
% 2.25/0.98  --prop_solver_per_cl                    1000
% 2.25/0.98  --min_unsat_core                        false
% 2.25/0.98  --soft_assumptions                      false
% 2.25/0.98  --soft_lemma_size                       3
% 2.25/0.98  --prop_impl_unit_size                   0
% 2.25/0.98  --prop_impl_unit                        []
% 2.25/0.98  --share_sel_clauses                     true
% 2.25/0.98  --reset_solvers                         false
% 2.25/0.98  --bc_imp_inh                            [conj_cone]
% 2.25/0.98  --conj_cone_tolerance                   3.
% 2.25/0.98  --extra_neg_conj                        none
% 2.25/0.98  --large_theory_mode                     true
% 2.25/0.98  --prolific_symb_bound                   200
% 2.25/0.98  --lt_threshold                          2000
% 2.25/0.98  --clause_weak_htbl                      true
% 2.25/0.98  --gc_record_bc_elim                     false
% 2.25/0.98  
% 2.25/0.98  ------ Preprocessing Options
% 2.25/0.98  
% 2.25/0.98  --preprocessing_flag                    true
% 2.25/0.98  --time_out_prep_mult                    0.1
% 2.25/0.98  --splitting_mode                        input
% 2.25/0.98  --splitting_grd                         true
% 2.25/0.98  --splitting_cvd                         false
% 2.25/0.98  --splitting_cvd_svl                     false
% 2.25/0.98  --splitting_nvd                         32
% 2.25/0.98  --sub_typing                            true
% 2.25/0.98  --prep_gs_sim                           true
% 2.25/0.98  --prep_unflatten                        true
% 2.25/0.98  --prep_res_sim                          true
% 2.25/0.98  --prep_upred                            true
% 2.25/0.98  --prep_sem_filter                       exhaustive
% 2.25/0.98  --prep_sem_filter_out                   false
% 2.25/0.98  --pred_elim                             true
% 2.25/0.98  --res_sim_input                         true
% 2.25/0.98  --eq_ax_congr_red                       true
% 2.25/0.98  --pure_diseq_elim                       true
% 2.25/0.98  --brand_transform                       false
% 2.25/0.98  --non_eq_to_eq                          false
% 2.25/0.98  --prep_def_merge                        true
% 2.25/0.98  --prep_def_merge_prop_impl              false
% 2.25/0.98  --prep_def_merge_mbd                    true
% 2.25/0.98  --prep_def_merge_tr_red                 false
% 2.25/0.98  --prep_def_merge_tr_cl                  false
% 2.25/0.98  --smt_preprocessing                     true
% 2.25/0.98  --smt_ac_axioms                         fast
% 2.25/0.98  --preprocessed_out                      false
% 2.25/0.98  --preprocessed_stats                    false
% 2.25/0.98  
% 2.25/0.98  ------ Abstraction refinement Options
% 2.25/0.98  
% 2.25/0.98  --abstr_ref                             []
% 2.25/0.98  --abstr_ref_prep                        false
% 2.25/0.98  --abstr_ref_until_sat                   false
% 2.25/0.98  --abstr_ref_sig_restrict                funpre
% 2.25/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.25/0.98  --abstr_ref_under                       []
% 2.25/0.98  
% 2.25/0.98  ------ SAT Options
% 2.25/0.98  
% 2.25/0.98  --sat_mode                              false
% 2.25/0.98  --sat_fm_restart_options                ""
% 2.25/0.98  --sat_gr_def                            false
% 2.25/0.98  --sat_epr_types                         true
% 2.25/0.98  --sat_non_cyclic_types                  false
% 2.25/0.98  --sat_finite_models                     false
% 2.25/0.98  --sat_fm_lemmas                         false
% 2.25/0.98  --sat_fm_prep                           false
% 2.25/0.98  --sat_fm_uc_incr                        true
% 2.25/0.98  --sat_out_model                         small
% 2.25/0.98  --sat_out_clauses                       false
% 2.25/0.98  
% 2.25/0.98  ------ QBF Options
% 2.25/0.98  
% 2.25/0.98  --qbf_mode                              false
% 2.25/0.98  --qbf_elim_univ                         false
% 2.25/0.98  --qbf_dom_inst                          none
% 2.25/0.98  --qbf_dom_pre_inst                      false
% 2.25/0.98  --qbf_sk_in                             false
% 2.25/0.98  --qbf_pred_elim                         true
% 2.25/0.98  --qbf_split                             512
% 2.25/0.98  
% 2.25/0.98  ------ BMC1 Options
% 2.25/0.98  
% 2.25/0.98  --bmc1_incremental                      false
% 2.25/0.98  --bmc1_axioms                           reachable_all
% 2.25/0.98  --bmc1_min_bound                        0
% 2.25/0.98  --bmc1_max_bound                        -1
% 2.25/0.98  --bmc1_max_bound_default                -1
% 2.25/0.98  --bmc1_symbol_reachability              true
% 2.25/0.98  --bmc1_property_lemmas                  false
% 2.25/0.98  --bmc1_k_induction                      false
% 2.25/0.98  --bmc1_non_equiv_states                 false
% 2.25/0.98  --bmc1_deadlock                         false
% 2.25/0.98  --bmc1_ucm                              false
% 2.25/0.98  --bmc1_add_unsat_core                   none
% 2.25/0.98  --bmc1_unsat_core_children              false
% 2.25/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.25/0.98  --bmc1_out_stat                         full
% 2.25/0.98  --bmc1_ground_init                      false
% 2.25/0.98  --bmc1_pre_inst_next_state              false
% 2.25/0.98  --bmc1_pre_inst_state                   false
% 2.25/0.98  --bmc1_pre_inst_reach_state             false
% 2.25/0.98  --bmc1_out_unsat_core                   false
% 2.25/0.98  --bmc1_aig_witness_out                  false
% 2.25/0.98  --bmc1_verbose                          false
% 2.25/0.98  --bmc1_dump_clauses_tptp                false
% 2.25/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.25/0.98  --bmc1_dump_file                        -
% 2.25/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.25/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.25/0.98  --bmc1_ucm_extend_mode                  1
% 2.25/0.98  --bmc1_ucm_init_mode                    2
% 2.25/0.98  --bmc1_ucm_cone_mode                    none
% 2.25/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.25/0.98  --bmc1_ucm_relax_model                  4
% 2.25/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.25/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.25/0.98  --bmc1_ucm_layered_model                none
% 2.25/0.98  --bmc1_ucm_max_lemma_size               10
% 2.25/0.98  
% 2.25/0.98  ------ AIG Options
% 2.25/0.98  
% 2.25/0.98  --aig_mode                              false
% 2.25/0.98  
% 2.25/0.98  ------ Instantiation Options
% 2.25/0.98  
% 2.25/0.98  --instantiation_flag                    true
% 2.25/0.98  --inst_sos_flag                         false
% 2.25/0.98  --inst_sos_phase                        true
% 2.25/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.25/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.25/0.98  --inst_lit_sel_side                     none
% 2.25/0.98  --inst_solver_per_active                1400
% 2.25/0.98  --inst_solver_calls_frac                1.
% 2.25/0.98  --inst_passive_queue_type               priority_queues
% 2.25/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.25/0.98  --inst_passive_queues_freq              [25;2]
% 2.25/0.98  --inst_dismatching                      true
% 2.25/0.98  --inst_eager_unprocessed_to_passive     true
% 2.25/0.98  --inst_prop_sim_given                   true
% 2.25/0.98  --inst_prop_sim_new                     false
% 2.25/0.98  --inst_subs_new                         false
% 2.25/0.98  --inst_eq_res_simp                      false
% 2.25/0.98  --inst_subs_given                       false
% 2.25/0.98  --inst_orphan_elimination               true
% 2.25/0.98  --inst_learning_loop_flag               true
% 2.25/0.98  --inst_learning_start                   3000
% 2.25/0.98  --inst_learning_factor                  2
% 2.25/0.98  --inst_start_prop_sim_after_learn       3
% 2.25/0.98  --inst_sel_renew                        solver
% 2.25/0.98  --inst_lit_activity_flag                true
% 2.25/0.98  --inst_restr_to_given                   false
% 2.25/0.98  --inst_activity_threshold               500
% 2.25/0.98  --inst_out_proof                        true
% 2.25/0.98  
% 2.25/0.98  ------ Resolution Options
% 2.25/0.98  
% 2.25/0.98  --resolution_flag                       false
% 2.25/0.98  --res_lit_sel                           adaptive
% 2.25/0.98  --res_lit_sel_side                      none
% 2.25/0.98  --res_ordering                          kbo
% 2.25/0.98  --res_to_prop_solver                    active
% 2.25/0.98  --res_prop_simpl_new                    false
% 2.25/0.98  --res_prop_simpl_given                  true
% 2.25/0.98  --res_passive_queue_type                priority_queues
% 2.25/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.25/0.98  --res_passive_queues_freq               [15;5]
% 2.25/0.98  --res_forward_subs                      full
% 2.25/0.98  --res_backward_subs                     full
% 2.25/0.98  --res_forward_subs_resolution           true
% 2.25/0.98  --res_backward_subs_resolution          true
% 2.25/0.98  --res_orphan_elimination                true
% 2.25/0.98  --res_time_limit                        2.
% 2.25/0.98  --res_out_proof                         true
% 2.25/0.98  
% 2.25/0.98  ------ Superposition Options
% 2.25/0.98  
% 2.25/0.98  --superposition_flag                    true
% 2.25/0.98  --sup_passive_queue_type                priority_queues
% 2.25/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.25/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.25/0.98  --demod_completeness_check              fast
% 2.25/0.98  --demod_use_ground                      true
% 2.25/0.98  --sup_to_prop_solver                    passive
% 2.25/0.98  --sup_prop_simpl_new                    true
% 2.25/0.98  --sup_prop_simpl_given                  true
% 2.25/0.98  --sup_fun_splitting                     false
% 2.25/0.98  --sup_smt_interval                      50000
% 2.25/0.98  
% 2.25/0.98  ------ Superposition Simplification Setup
% 2.25/0.98  
% 2.25/0.98  --sup_indices_passive                   []
% 2.25/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.25/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.25/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.25/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.25/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.25/0.98  --sup_full_bw                           [BwDemod]
% 2.25/0.98  --sup_immed_triv                        [TrivRules]
% 2.25/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.25/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.25/0.98  --sup_immed_bw_main                     []
% 2.25/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.25/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.25/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.25/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.25/0.98  
% 2.25/0.98  ------ Combination Options
% 2.25/0.98  
% 2.25/0.98  --comb_res_mult                         3
% 2.25/0.98  --comb_sup_mult                         2
% 2.25/0.98  --comb_inst_mult                        10
% 2.25/0.98  
% 2.25/0.98  ------ Debug Options
% 2.25/0.98  
% 2.25/0.98  --dbg_backtrace                         false
% 2.25/0.98  --dbg_dump_prop_clauses                 false
% 2.25/0.98  --dbg_dump_prop_clauses_file            -
% 2.25/0.98  --dbg_out_stat                          false
% 2.25/0.98  
% 2.25/0.98  
% 2.25/0.98  
% 2.25/0.98  
% 2.25/0.98  ------ Proving...
% 2.25/0.98  
% 2.25/0.98  
% 2.25/0.98  % SZS status Theorem for theBenchmark.p
% 2.25/0.98  
% 2.25/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 2.25/0.98  
% 2.25/0.98  fof(f8,conjecture,(
% 2.25/0.98    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) => (m1_pre_topc(X2,X3) => ! [X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X5)) => (! [X6] : (m1_subset_1(X6,u1_struct_0(X3)) => (r2_hidden(X6,u1_struct_0(X2)) => k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6))) => r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)))))))))),
% 2.25/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.25/0.98  
% 2.25/0.98  fof(f9,negated_conjecture,(
% 2.25/0.98    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) => (m1_pre_topc(X2,X3) => ! [X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X5)) => (! [X6] : (m1_subset_1(X6,u1_struct_0(X3)) => (r2_hidden(X6,u1_struct_0(X2)) => k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6))) => r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5)))))))))),
% 2.25/0.98    inference(negated_conjecture,[],[f8])).
% 2.25/0.98  
% 2.25/0.98  fof(f21,plain,(
% 2.25/0.98    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : ((? [X5] : ((~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) & ! [X6] : ((k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6) | ~r2_hidden(X6,u1_struct_0(X2))) | ~m1_subset_1(X6,u1_struct_0(X3)))) & (m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X5))) & m1_pre_topc(X2,X3)) & (m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4))) & (m1_pre_topc(X3,X0) & ~v2_struct_0(X3))) & (m1_pre_topc(X2,X0) & ~v2_struct_0(X2))) & (l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 2.25/0.98    inference(ennf_transformation,[],[f9])).
% 2.25/0.98  
% 2.25/0.98  fof(f22,plain,(
% 2.25/0.98    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) & ! [X6] : (k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6) | ~r2_hidden(X6,u1_struct_0(X2)) | ~m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X5)) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.25/0.98    inference(flattening,[],[f21])).
% 2.25/0.98  
% 2.25/0.98  fof(f31,plain,(
% 2.25/0.98    ( ! [X4,X2,X0,X3,X1] : (? [X5] : (~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) & ! [X6] : (k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6) | ~r2_hidden(X6,u1_struct_0(X2)) | ~m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X5)) => (~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),sK6) & ! [X6] : (k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(sK6,X6) | ~r2_hidden(X6,u1_struct_0(X2)) | ~m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(sK6,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(sK6))) )),
% 2.25/0.98    introduced(choice_axiom,[])).
% 2.25/0.98  
% 2.25/0.98  fof(f30,plain,(
% 2.25/0.98    ( ! [X2,X0,X3,X1] : (? [X4] : (? [X5] : (~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) & ! [X6] : (k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6) | ~r2_hidden(X6,u1_struct_0(X2)) | ~m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X5)) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) => (? [X5] : (~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,sK5),X5) & ! [X6] : (k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),sK5,X6) = k1_funct_1(X5,X6) | ~r2_hidden(X6,u1_struct_0(X2)) | ~m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X5)) & m1_pre_topc(X2,X3) & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(sK5,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(sK5))) )),
% 2.25/0.98    introduced(choice_axiom,[])).
% 2.25/0.98  
% 2.25/0.98  fof(f29,plain,(
% 2.25/0.98    ( ! [X2,X0,X1] : (? [X3] : (? [X4] : (? [X5] : (~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) & ! [X6] : (k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6) | ~r2_hidden(X6,u1_struct_0(X2)) | ~m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X5)) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => (? [X4] : (? [X5] : (~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,sK4,X2,X4),X5) & ! [X6] : (k3_funct_2(u1_struct_0(sK4),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6) | ~r2_hidden(X6,u1_struct_0(X2)) | ~m1_subset_1(X6,u1_struct_0(sK4))) & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X5)) & m1_pre_topc(X2,sK4) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(sK4),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(sK4,X0) & ~v2_struct_0(sK4))) )),
% 2.25/0.98    introduced(choice_axiom,[])).
% 2.25/0.98  
% 2.25/0.98  fof(f28,plain,(
% 2.25/0.98    ( ! [X0,X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) & ! [X6] : (k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6) | ~r2_hidden(X6,u1_struct_0(X2)) | ~m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X5)) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => (? [X3] : (? [X4] : (? [X5] : (~r2_funct_2(u1_struct_0(sK3),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,sK3,X4),X5) & ! [X6] : (k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6) | ~r2_hidden(X6,u1_struct_0(sK3)) | ~m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1)))) & v1_funct_2(X5,u1_struct_0(sK3),u1_struct_0(X1)) & v1_funct_1(X5)) & m1_pre_topc(sK3,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(sK3,X0) & ~v2_struct_0(sK3))) )),
% 2.25/0.98    introduced(choice_axiom,[])).
% 2.25/0.98  
% 2.25/0.98  fof(f27,plain,(
% 2.25/0.98    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) & ! [X6] : (k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6) | ~r2_hidden(X6,u1_struct_0(X2)) | ~m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X5)) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => (? [X2] : (? [X3] : (? [X4] : (? [X5] : (~r2_funct_2(u1_struct_0(X2),u1_struct_0(sK2),k3_tmap_1(X0,sK2,X3,X2,X4),X5) & ! [X6] : (k3_funct_2(u1_struct_0(X3),u1_struct_0(sK2),X4,X6) = k1_funct_1(X5,X6) | ~r2_hidden(X6,u1_struct_0(X2)) | ~m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(sK2)))) & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(sK2)) & v1_funct_1(X5)) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(sK2)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(sK2)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(sK2) & v2_pre_topc(sK2) & ~v2_struct_0(sK2))) )),
% 2.25/0.98    introduced(choice_axiom,[])).
% 2.25/0.98  
% 2.25/0.98  fof(f26,plain,(
% 2.25/0.98    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(X0,X1,X3,X2,X4),X5) & ! [X6] : (k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6) | ~r2_hidden(X6,u1_struct_0(X2)) | ~m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X5)) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),k3_tmap_1(sK1,X1,X3,X2,X4),X5) & ! [X6] : (k3_funct_2(u1_struct_0(X3),u1_struct_0(X1),X4,X6) = k1_funct_1(X5,X6) | ~r2_hidden(X6,u1_struct_0(X2)) | ~m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X5,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X5)) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,sK1) & ~v2_struct_0(X3)) & m1_pre_topc(X2,sK1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1))),
% 2.25/0.98    introduced(choice_axiom,[])).
% 2.25/0.98  
% 2.25/0.98  fof(f32,plain,(
% 2.25/0.98    (((((~r2_funct_2(u1_struct_0(sK3),u1_struct_0(sK2),k3_tmap_1(sK1,sK2,sK4,sK3,sK5),sK6) & ! [X6] : (k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,X6) = k1_funct_1(sK6,X6) | ~r2_hidden(X6,u1_struct_0(sK3)) | ~m1_subset_1(X6,u1_struct_0(sK4))) & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) & v1_funct_2(sK6,u1_struct_0(sK3),u1_struct_0(sK2)) & v1_funct_1(sK6)) & m1_pre_topc(sK3,sK4) & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK2)))) & v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2)) & v1_funct_1(sK5)) & m1_pre_topc(sK4,sK1) & ~v2_struct_0(sK4)) & m1_pre_topc(sK3,sK1) & ~v2_struct_0(sK3)) & l1_pre_topc(sK2) & v2_pre_topc(sK2) & ~v2_struct_0(sK2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1)),
% 2.25/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4,sK5,sK6])],[f22,f31,f30,f29,f28,f27,f26])).
% 2.25/0.98  
% 2.25/0.98  fof(f59,plain,(
% 2.25/0.98    m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2))))),
% 2.25/0.98    inference(cnf_transformation,[],[f32])).
% 2.25/0.98  
% 2.25/0.98  fof(f55,plain,(
% 2.25/0.98    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK2))))),
% 2.25/0.98    inference(cnf_transformation,[],[f32])).
% 2.25/0.98  
% 2.25/0.98  fof(f2,axiom,(
% 2.25/0.98    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(X0)) & ~v1_xboole_0(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X1))) & v1_funct_2(X4,X3,X1) & v1_funct_1(X4)) => (! [X5] : (m1_subset_1(X5,X0) => (r2_hidden(X5,X3) => k3_funct_2(X0,X1,X2,X5) = k1_funct_1(X4,X5))) => k2_partfun1(X0,X1,X2,X3) = X4))))))),
% 2.25/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.25/0.98  
% 2.25/0.98  fof(f12,plain,(
% 2.25/0.98    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : ((k2_partfun1(X0,X1,X2,X3) = X4 | ? [X5] : ((k3_funct_2(X0,X1,X2,X5) != k1_funct_1(X4,X5) & r2_hidden(X5,X3)) & m1_subset_1(X5,X0))) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X1))) | ~v1_funct_2(X4,X3,X1) | ~v1_funct_1(X4))) | (~m1_subset_1(X3,k1_zfmisc_1(X0)) | v1_xboole_0(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | v1_xboole_0(X1)) | v1_xboole_0(X0))),
% 2.25/0.98    inference(ennf_transformation,[],[f2])).
% 2.25/0.98  
% 2.25/0.98  fof(f13,plain,(
% 2.25/0.98    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (k2_partfun1(X0,X1,X2,X3) = X4 | ? [X5] : (k3_funct_2(X0,X1,X2,X5) != k1_funct_1(X4,X5) & r2_hidden(X5,X3) & m1_subset_1(X5,X0)) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X1))) | ~v1_funct_2(X4,X3,X1) | ~v1_funct_1(X4)) | ~m1_subset_1(X3,k1_zfmisc_1(X0)) | v1_xboole_0(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) | v1_xboole_0(X1)) | v1_xboole_0(X0))),
% 2.25/0.98    inference(flattening,[],[f12])).
% 2.25/0.98  
% 2.25/0.98  fof(f24,plain,(
% 2.25/0.98    ! [X4,X3,X2,X1,X0] : (? [X5] : (k3_funct_2(X0,X1,X2,X5) != k1_funct_1(X4,X5) & r2_hidden(X5,X3) & m1_subset_1(X5,X0)) => (k3_funct_2(X0,X1,X2,sK0(X0,X1,X2,X3,X4)) != k1_funct_1(X4,sK0(X0,X1,X2,X3,X4)) & r2_hidden(sK0(X0,X1,X2,X3,X4),X3) & m1_subset_1(sK0(X0,X1,X2,X3,X4),X0)))),
% 2.25/0.98    introduced(choice_axiom,[])).
% 2.25/0.98  
% 2.25/0.98  fof(f25,plain,(
% 2.25/0.98    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (k2_partfun1(X0,X1,X2,X3) = X4 | (k3_funct_2(X0,X1,X2,sK0(X0,X1,X2,X3,X4)) != k1_funct_1(X4,sK0(X0,X1,X2,X3,X4)) & r2_hidden(sK0(X0,X1,X2,X3,X4),X3) & m1_subset_1(sK0(X0,X1,X2,X3,X4),X0)) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X1))) | ~v1_funct_2(X4,X3,X1) | ~v1_funct_1(X4)) | ~m1_subset_1(X3,k1_zfmisc_1(X0)) | v1_xboole_0(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) | v1_xboole_0(X1)) | v1_xboole_0(X0))),
% 2.25/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f13,f24])).
% 2.25/0.98  
% 2.25/0.98  fof(f35,plain,(
% 2.25/0.98    ( ! [X4,X2,X0,X3,X1] : (k2_partfun1(X0,X1,X2,X3) = X4 | m1_subset_1(sK0(X0,X1,X2,X3,X4),X0) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X1))) | ~v1_funct_2(X4,X3,X1) | ~v1_funct_1(X4) | ~m1_subset_1(X3,k1_zfmisc_1(X0)) | v1_xboole_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | v1_xboole_0(X1) | v1_xboole_0(X0)) )),
% 2.25/0.98    inference(cnf_transformation,[],[f25])).
% 2.25/0.98  
% 2.25/0.98  fof(f36,plain,(
% 2.25/0.98    ( ! [X4,X2,X0,X3,X1] : (k2_partfun1(X0,X1,X2,X3) = X4 | r2_hidden(sK0(X0,X1,X2,X3,X4),X3) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X1))) | ~v1_funct_2(X4,X3,X1) | ~v1_funct_1(X4) | ~m1_subset_1(X3,k1_zfmisc_1(X0)) | v1_xboole_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | v1_xboole_0(X1) | v1_xboole_0(X0)) )),
% 2.25/0.98    inference(cnf_transformation,[],[f25])).
% 2.25/0.98  
% 2.25/0.98  fof(f60,plain,(
% 2.25/0.98    ( ! [X6] : (k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,X6) = k1_funct_1(sK6,X6) | ~r2_hidden(X6,u1_struct_0(sK3)) | ~m1_subset_1(X6,u1_struct_0(sK4))) )),
% 2.25/0.98    inference(cnf_transformation,[],[f32])).
% 2.25/0.98  
% 2.25/0.98  fof(f45,plain,(
% 2.25/0.98    l1_pre_topc(sK1)),
% 2.25/0.98    inference(cnf_transformation,[],[f32])).
% 2.25/0.98  
% 2.25/0.98  fof(f52,plain,(
% 2.25/0.98    m1_pre_topc(sK4,sK1)),
% 2.25/0.98    inference(cnf_transformation,[],[f32])).
% 2.25/0.98  
% 2.25/0.98  fof(f56,plain,(
% 2.25/0.98    m1_pre_topc(sK3,sK4)),
% 2.25/0.98    inference(cnf_transformation,[],[f32])).
% 2.25/0.98  
% 2.25/0.98  fof(f7,axiom,(
% 2.25/0.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.25/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.25/0.98  
% 2.25/0.98  fof(f20,plain,(
% 2.25/0.98    ! [X0] : (! [X1] : (m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 2.25/0.98    inference(ennf_transformation,[],[f7])).
% 2.25/0.98  
% 2.25/0.98  fof(f42,plain,(
% 2.25/0.98    ( ! [X0,X1] : (m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 2.25/0.98    inference(cnf_transformation,[],[f20])).
% 2.25/0.98  
% 2.25/0.98  fof(f4,axiom,(
% 2.25/0.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => l1_pre_topc(X1)))),
% 2.25/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.25/0.98  
% 2.25/0.98  fof(f15,plain,(
% 2.25/0.98    ! [X0] : (! [X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 2.25/0.98    inference(ennf_transformation,[],[f4])).
% 2.25/0.98  
% 2.25/0.98  fof(f39,plain,(
% 2.25/0.98    ( ! [X0,X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 2.25/0.98    inference(cnf_transformation,[],[f15])).
% 2.25/0.98  
% 2.25/0.98  fof(f50,plain,(
% 2.25/0.98    m1_pre_topc(sK3,sK1)),
% 2.25/0.98    inference(cnf_transformation,[],[f32])).
% 2.25/0.98  
% 2.25/0.98  fof(f6,axiom,(
% 2.25/0.98    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : (m1_pre_topc(X2,X0) => ! [X3] : (m1_pre_topc(X3,X0) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X4)) => (m1_pre_topc(X3,X2) => k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4)))))))),
% 2.25/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.25/0.98  
% 2.25/0.98  fof(f18,plain,(
% 2.25/0.98    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : ((k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) | ~m1_pre_topc(X3,X2)) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4))) | ~m1_pre_topc(X3,X0)) | ~m1_pre_topc(X2,X0)) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.25/0.98    inference(ennf_transformation,[],[f6])).
% 2.25/0.98  
% 2.25/0.98  fof(f19,plain,(
% 2.25/0.98    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) | ~m1_pre_topc(X3,X2) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4)) | ~m1_pre_topc(X3,X0)) | ~m1_pre_topc(X2,X0)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.25/0.98    inference(flattening,[],[f18])).
% 2.25/0.98  
% 2.25/0.98  fof(f41,plain,(
% 2.25/0.98    ( ! [X4,X2,X0,X3,X1] : (k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) | ~m1_pre_topc(X3,X2) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | ~m1_pre_topc(X2,X0) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.25/0.98    inference(cnf_transformation,[],[f19])).
% 2.25/0.98  
% 2.25/0.98  fof(f46,plain,(
% 2.25/0.98    ~v2_struct_0(sK2)),
% 2.25/0.98    inference(cnf_transformation,[],[f32])).
% 2.25/0.98  
% 2.25/0.98  fof(f47,plain,(
% 2.25/0.98    v2_pre_topc(sK2)),
% 2.25/0.98    inference(cnf_transformation,[],[f32])).
% 2.25/0.98  
% 2.25/0.98  fof(f48,plain,(
% 2.25/0.98    l1_pre_topc(sK2)),
% 2.25/0.98    inference(cnf_transformation,[],[f32])).
% 2.25/0.98  
% 2.25/0.98  fof(f53,plain,(
% 2.25/0.98    v1_funct_1(sK5)),
% 2.25/0.98    inference(cnf_transformation,[],[f32])).
% 2.25/0.98  
% 2.25/0.98  fof(f54,plain,(
% 2.25/0.98    v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2))),
% 2.25/0.98    inference(cnf_transformation,[],[f32])).
% 2.25/0.98  
% 2.25/0.98  fof(f43,plain,(
% 2.25/0.98    ~v2_struct_0(sK1)),
% 2.25/0.98    inference(cnf_transformation,[],[f32])).
% 2.25/0.98  
% 2.25/0.98  fof(f44,plain,(
% 2.25/0.98    v2_pre_topc(sK1)),
% 2.25/0.98    inference(cnf_transformation,[],[f32])).
% 2.25/0.98  
% 2.25/0.98  fof(f5,axiom,(
% 2.25/0.98    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 2.25/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.25/0.98  
% 2.25/0.98  fof(f16,plain,(
% 2.25/0.98    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 2.25/0.98    inference(ennf_transformation,[],[f5])).
% 2.25/0.98  
% 2.25/0.98  fof(f17,plain,(
% 2.25/0.98    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 2.25/0.98    inference(flattening,[],[f16])).
% 2.25/0.98  
% 2.25/0.98  fof(f40,plain,(
% 2.25/0.98    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 2.25/0.98    inference(cnf_transformation,[],[f17])).
% 2.25/0.98  
% 2.25/0.98  fof(f3,axiom,(
% 2.25/0.98    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 2.25/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.25/0.98  
% 2.25/0.98  fof(f14,plain,(
% 2.25/0.98    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 2.25/0.98    inference(ennf_transformation,[],[f3])).
% 2.25/0.98  
% 2.25/0.98  fof(f38,plain,(
% 2.25/0.98    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 2.25/0.98    inference(cnf_transformation,[],[f14])).
% 2.25/0.98  
% 2.25/0.98  fof(f49,plain,(
% 2.25/0.98    ~v2_struct_0(sK3)),
% 2.25/0.98    inference(cnf_transformation,[],[f32])).
% 2.25/0.98  
% 2.25/0.98  fof(f57,plain,(
% 2.25/0.98    v1_funct_1(sK6)),
% 2.25/0.98    inference(cnf_transformation,[],[f32])).
% 2.25/0.98  
% 2.25/0.98  fof(f58,plain,(
% 2.25/0.98    v1_funct_2(sK6,u1_struct_0(sK3),u1_struct_0(sK2))),
% 2.25/0.98    inference(cnf_transformation,[],[f32])).
% 2.25/0.98  
% 2.25/0.98  fof(f51,plain,(
% 2.25/0.98    ~v2_struct_0(sK4)),
% 2.25/0.98    inference(cnf_transformation,[],[f32])).
% 2.25/0.98  
% 2.25/0.98  fof(f37,plain,(
% 2.25/0.98    ( ! [X4,X2,X0,X3,X1] : (k2_partfun1(X0,X1,X2,X3) = X4 | k3_funct_2(X0,X1,X2,sK0(X0,X1,X2,X3,X4)) != k1_funct_1(X4,sK0(X0,X1,X2,X3,X4)) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X1))) | ~v1_funct_2(X4,X3,X1) | ~v1_funct_1(X4) | ~m1_subset_1(X3,k1_zfmisc_1(X0)) | v1_xboole_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | v1_xboole_0(X1) | v1_xboole_0(X0)) )),
% 2.25/0.98    inference(cnf_transformation,[],[f25])).
% 2.25/0.98  
% 2.25/0.98  fof(f1,axiom,(
% 2.25/0.98    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (r2_funct_2(X0,X1,X2,X3) <=> X2 = X3))),
% 2.25/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.25/0.98  
% 2.25/0.98  fof(f10,plain,(
% 2.25/0.98    ! [X0,X1,X2,X3] : ((r2_funct_2(X0,X1,X2,X3) <=> X2 = X3) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 2.25/0.98    inference(ennf_transformation,[],[f1])).
% 2.25/0.98  
% 2.25/0.98  fof(f11,plain,(
% 2.25/0.98    ! [X0,X1,X2,X3] : ((r2_funct_2(X0,X1,X2,X3) <=> X2 = X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 2.25/0.98    inference(flattening,[],[f10])).
% 2.25/0.98  
% 2.25/0.98  fof(f23,plain,(
% 2.25/0.98    ! [X0,X1,X2,X3] : (((r2_funct_2(X0,X1,X2,X3) | X2 != X3) & (X2 = X3 | ~r2_funct_2(X0,X1,X2,X3))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 2.25/0.98    inference(nnf_transformation,[],[f11])).
% 2.25/0.98  
% 2.25/0.98  fof(f34,plain,(
% 2.25/0.98    ( ! [X2,X0,X3,X1] : (r2_funct_2(X0,X1,X2,X3) | X2 != X3 | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.25/0.98    inference(cnf_transformation,[],[f23])).
% 2.25/0.98  
% 2.25/0.98  fof(f62,plain,(
% 2.25/0.98    ( ! [X0,X3,X1] : (r2_funct_2(X0,X1,X3,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 2.25/0.98    inference(equality_resolution,[],[f34])).
% 2.25/0.98  
% 2.25/0.98  fof(f61,plain,(
% 2.25/0.98    ~r2_funct_2(u1_struct_0(sK3),u1_struct_0(sK2),k3_tmap_1(sK1,sK2,sK4,sK3,sK5),sK6)),
% 2.25/0.98    inference(cnf_transformation,[],[f32])).
% 2.25/0.98  
% 2.25/0.98  cnf(c_12,negated_conjecture,
% 2.25/0.98      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) ),
% 2.25/0.98      inference(cnf_transformation,[],[f59]) ).
% 2.25/0.98  
% 2.25/0.98  cnf(c_624,negated_conjecture,
% 2.25/0.98      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) ),
% 2.25/0.98      inference(subtyping,[status(esa)],[c_12]) ).
% 2.25/0.98  
% 2.25/0.98  cnf(c_1108,plain,
% 2.25/0.98      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) = iProver_top ),
% 2.25/0.98      inference(predicate_to_equality,[status(thm)],[c_624]) ).
% 2.25/0.98  
% 2.25/0.98  cnf(c_16,negated_conjecture,
% 2.25/0.98      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK2)))) ),
% 2.25/0.98      inference(cnf_transformation,[],[f55]) ).
% 2.25/0.98  
% 2.25/0.98  cnf(c_620,negated_conjecture,
% 2.25/0.98      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK2)))) ),
% 2.25/0.98      inference(subtyping,[status(esa)],[c_16]) ).
% 2.25/0.98  
% 2.25/0.98  cnf(c_1112,plain,
% 2.25/0.98      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK2)))) = iProver_top ),
% 2.25/0.98      inference(predicate_to_equality,[status(thm)],[c_620]) ).
% 2.25/0.98  
% 2.25/0.98  cnf(c_4,plain,
% 2.25/0.98      ( ~ v1_funct_2(X0,X1,X2)
% 2.25/0.98      | ~ v1_funct_2(X3,X4,X2)
% 2.25/0.98      | ~ m1_subset_1(X4,k1_zfmisc_1(X1))
% 2.25/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.25/0.98      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
% 2.25/0.98      | m1_subset_1(sK0(X1,X2,X0,X4,X3),X1)
% 2.25/0.98      | v1_xboole_0(X1)
% 2.25/0.98      | v1_xboole_0(X2)
% 2.25/0.98      | v1_xboole_0(X4)
% 2.25/0.98      | ~ v1_funct_1(X0)
% 2.25/0.98      | ~ v1_funct_1(X3)
% 2.25/0.98      | k2_partfun1(X1,X2,X0,X4) = X3 ),
% 2.25/0.98      inference(cnf_transformation,[],[f35]) ).
% 2.25/0.98  
% 2.25/0.98  cnf(c_629,plain,
% 2.25/0.98      ( ~ v1_funct_2(X0_53,X1_53,X2_53)
% 2.25/0.98      | ~ v1_funct_2(X3_53,X4_53,X2_53)
% 2.25/0.98      | ~ m1_subset_1(X4_53,k1_zfmisc_1(X1_53))
% 2.25/0.98      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
% 2.25/0.98      | ~ m1_subset_1(X3_53,k1_zfmisc_1(k2_zfmisc_1(X4_53,X2_53)))
% 2.25/0.98      | m1_subset_1(sK0(X1_53,X2_53,X0_53,X4_53,X3_53),X1_53)
% 2.25/0.98      | v1_xboole_0(X1_53)
% 2.25/0.98      | v1_xboole_0(X2_53)
% 2.25/0.98      | v1_xboole_0(X4_53)
% 2.25/0.98      | ~ v1_funct_1(X0_53)
% 2.25/0.98      | ~ v1_funct_1(X3_53)
% 2.25/0.98      | k2_partfun1(X1_53,X2_53,X0_53,X4_53) = X3_53 ),
% 2.25/0.98      inference(subtyping,[status(esa)],[c_4]) ).
% 2.25/0.98  
% 2.25/0.98  cnf(c_1103,plain,
% 2.25/0.98      ( k2_partfun1(X0_53,X1_53,X2_53,X3_53) = X4_53
% 2.25/0.98      | v1_funct_2(X2_53,X0_53,X1_53) != iProver_top
% 2.25/0.98      | v1_funct_2(X4_53,X3_53,X1_53) != iProver_top
% 2.25/0.98      | m1_subset_1(X3_53,k1_zfmisc_1(X0_53)) != iProver_top
% 2.25/0.98      | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
% 2.25/0.98      | m1_subset_1(X4_53,k1_zfmisc_1(k2_zfmisc_1(X3_53,X1_53))) != iProver_top
% 2.25/0.98      | m1_subset_1(sK0(X0_53,X1_53,X2_53,X3_53,X4_53),X0_53) = iProver_top
% 2.25/0.98      | v1_xboole_0(X0_53) = iProver_top
% 2.25/0.98      | v1_xboole_0(X1_53) = iProver_top
% 2.25/0.98      | v1_xboole_0(X3_53) = iProver_top
% 2.25/0.99      | v1_funct_1(X2_53) != iProver_top
% 2.25/0.99      | v1_funct_1(X4_53) != iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_629]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_3,plain,
% 2.25/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.25/0.99      | ~ v1_funct_2(X3,X4,X2)
% 2.25/0.99      | r2_hidden(sK0(X1,X2,X0,X4,X3),X4)
% 2.25/0.99      | ~ m1_subset_1(X4,k1_zfmisc_1(X1))
% 2.25/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.25/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
% 2.25/0.99      | v1_xboole_0(X1)
% 2.25/0.99      | v1_xboole_0(X2)
% 2.25/0.99      | v1_xboole_0(X4)
% 2.25/0.99      | ~ v1_funct_1(X0)
% 2.25/0.99      | ~ v1_funct_1(X3)
% 2.25/0.99      | k2_partfun1(X1,X2,X0,X4) = X3 ),
% 2.25/0.99      inference(cnf_transformation,[],[f36]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_630,plain,
% 2.25/0.99      ( ~ v1_funct_2(X0_53,X1_53,X2_53)
% 2.25/0.99      | ~ v1_funct_2(X3_53,X4_53,X2_53)
% 2.25/0.99      | r2_hidden(sK0(X1_53,X2_53,X0_53,X4_53,X3_53),X4_53)
% 2.25/0.99      | ~ m1_subset_1(X4_53,k1_zfmisc_1(X1_53))
% 2.25/0.99      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
% 2.25/0.99      | ~ m1_subset_1(X3_53,k1_zfmisc_1(k2_zfmisc_1(X4_53,X2_53)))
% 2.25/0.99      | v1_xboole_0(X1_53)
% 2.25/0.99      | v1_xboole_0(X2_53)
% 2.25/0.99      | v1_xboole_0(X4_53)
% 2.25/0.99      | ~ v1_funct_1(X0_53)
% 2.25/0.99      | ~ v1_funct_1(X3_53)
% 2.25/0.99      | k2_partfun1(X1_53,X2_53,X0_53,X4_53) = X3_53 ),
% 2.25/0.99      inference(subtyping,[status(esa)],[c_3]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_1102,plain,
% 2.25/0.99      ( k2_partfun1(X0_53,X1_53,X2_53,X3_53) = X4_53
% 2.25/0.99      | v1_funct_2(X2_53,X0_53,X1_53) != iProver_top
% 2.25/0.99      | v1_funct_2(X4_53,X3_53,X1_53) != iProver_top
% 2.25/0.99      | r2_hidden(sK0(X0_53,X1_53,X2_53,X3_53,X4_53),X3_53) = iProver_top
% 2.25/0.99      | m1_subset_1(X3_53,k1_zfmisc_1(X0_53)) != iProver_top
% 2.25/0.99      | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
% 2.25/0.99      | m1_subset_1(X4_53,k1_zfmisc_1(k2_zfmisc_1(X3_53,X1_53))) != iProver_top
% 2.25/0.99      | v1_xboole_0(X0_53) = iProver_top
% 2.25/0.99      | v1_xboole_0(X1_53) = iProver_top
% 2.25/0.99      | v1_xboole_0(X3_53) = iProver_top
% 2.25/0.99      | v1_funct_1(X2_53) != iProver_top
% 2.25/0.99      | v1_funct_1(X4_53) != iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_630]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_11,negated_conjecture,
% 2.25/0.99      ( ~ r2_hidden(X0,u1_struct_0(sK3))
% 2.25/0.99      | ~ m1_subset_1(X0,u1_struct_0(sK4))
% 2.25/0.99      | k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,X0) = k1_funct_1(sK6,X0) ),
% 2.25/0.99      inference(cnf_transformation,[],[f60]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_625,negated_conjecture,
% 2.25/0.99      ( ~ r2_hidden(X0_53,u1_struct_0(sK3))
% 2.25/0.99      | ~ m1_subset_1(X0_53,u1_struct_0(sK4))
% 2.25/0.99      | k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,X0_53) = k1_funct_1(sK6,X0_53) ),
% 2.25/0.99      inference(subtyping,[status(esa)],[c_11]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_1107,plain,
% 2.25/0.99      ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,X0_53) = k1_funct_1(sK6,X0_53)
% 2.25/0.99      | r2_hidden(X0_53,u1_struct_0(sK3)) != iProver_top
% 2.25/0.99      | m1_subset_1(X0_53,u1_struct_0(sK4)) != iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_625]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_1971,plain,
% 2.25/0.99      ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(X0_53,X1_53,X2_53,u1_struct_0(sK3),X3_53)) = k1_funct_1(sK6,sK0(X0_53,X1_53,X2_53,u1_struct_0(sK3),X3_53))
% 2.25/0.99      | k2_partfun1(X0_53,X1_53,X2_53,u1_struct_0(sK3)) = X3_53
% 2.25/0.99      | v1_funct_2(X2_53,X0_53,X1_53) != iProver_top
% 2.25/0.99      | v1_funct_2(X3_53,u1_struct_0(sK3),X1_53) != iProver_top
% 2.25/0.99      | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
% 2.25/0.99      | m1_subset_1(X3_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),X1_53))) != iProver_top
% 2.25/0.99      | m1_subset_1(sK0(X0_53,X1_53,X2_53,u1_struct_0(sK3),X3_53),u1_struct_0(sK4)) != iProver_top
% 2.25/0.99      | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(X0_53)) != iProver_top
% 2.25/0.99      | v1_xboole_0(X0_53) = iProver_top
% 2.25/0.99      | v1_xboole_0(X1_53) = iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
% 2.25/0.99      | v1_funct_1(X2_53) != iProver_top
% 2.25/0.99      | v1_funct_1(X3_53) != iProver_top ),
% 2.25/0.99      inference(superposition,[status(thm)],[c_1102,c_1107]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_2687,plain,
% 2.25/0.99      ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),X0_53,X1_53,u1_struct_0(sK3),X2_53)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),X0_53,X1_53,u1_struct_0(sK3),X2_53))
% 2.25/0.99      | k2_partfun1(u1_struct_0(sK4),X0_53,X1_53,u1_struct_0(sK3)) = X2_53
% 2.25/0.99      | v1_funct_2(X1_53,u1_struct_0(sK4),X0_53) != iProver_top
% 2.25/0.99      | v1_funct_2(X2_53,u1_struct_0(sK3),X0_53) != iProver_top
% 2.25/0.99      | m1_subset_1(X1_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),X0_53))) != iProver_top
% 2.25/0.99      | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),X0_53))) != iProver_top
% 2.25/0.99      | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 2.25/0.99      | v1_xboole_0(X0_53) = iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK4)) = iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
% 2.25/0.99      | v1_funct_1(X2_53) != iProver_top
% 2.25/0.99      | v1_funct_1(X1_53) != iProver_top ),
% 2.25/0.99      inference(superposition,[status(thm)],[c_1103,c_1971]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_26,negated_conjecture,
% 2.25/0.99      ( l1_pre_topc(sK1) ),
% 2.25/0.99      inference(cnf_transformation,[],[f45]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_31,plain,
% 2.25/0.99      ( l1_pre_topc(sK1) = iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_19,negated_conjecture,
% 2.25/0.99      ( m1_pre_topc(sK4,sK1) ),
% 2.25/0.99      inference(cnf_transformation,[],[f52]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_38,plain,
% 2.25/0.99      ( m1_pre_topc(sK4,sK1) = iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_15,negated_conjecture,
% 2.25/0.99      ( m1_pre_topc(sK3,sK4) ),
% 2.25/0.99      inference(cnf_transformation,[],[f56]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_42,plain,
% 2.25/0.99      ( m1_pre_topc(sK3,sK4) = iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_9,plain,
% 2.25/0.99      ( ~ m1_pre_topc(X0,X1)
% 2.25/0.99      | m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.25/0.99      | ~ l1_pre_topc(X1) ),
% 2.25/0.99      inference(cnf_transformation,[],[f42]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_626,plain,
% 2.25/0.99      ( ~ m1_pre_topc(X0_54,X1_54)
% 2.25/0.99      | m1_subset_1(u1_struct_0(X0_54),k1_zfmisc_1(u1_struct_0(X1_54)))
% 2.25/0.99      | ~ l1_pre_topc(X1_54) ),
% 2.25/0.99      inference(subtyping,[status(esa)],[c_9]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_1361,plain,
% 2.25/0.99      ( ~ m1_pre_topc(sK3,sK4)
% 2.25/0.99      | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4)))
% 2.25/0.99      | ~ l1_pre_topc(sK4) ),
% 2.25/0.99      inference(instantiation,[status(thm)],[c_626]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_1362,plain,
% 2.25/0.99      ( m1_pre_topc(sK3,sK4) != iProver_top
% 2.25/0.99      | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4))) = iProver_top
% 2.25/0.99      | l1_pre_topc(sK4) != iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_1361]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_6,plain,
% 2.25/0.99      ( ~ m1_pre_topc(X0,X1) | ~ l1_pre_topc(X1) | l1_pre_topc(X0) ),
% 2.25/0.99      inference(cnf_transformation,[],[f39]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_628,plain,
% 2.25/0.99      ( ~ m1_pre_topc(X0_54,X1_54)
% 2.25/0.99      | ~ l1_pre_topc(X1_54)
% 2.25/0.99      | l1_pre_topc(X0_54) ),
% 2.25/0.99      inference(subtyping,[status(esa)],[c_6]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_1627,plain,
% 2.25/0.99      ( ~ m1_pre_topc(sK4,X0_54)
% 2.25/0.99      | ~ l1_pre_topc(X0_54)
% 2.25/0.99      | l1_pre_topc(sK4) ),
% 2.25/0.99      inference(instantiation,[status(thm)],[c_628]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_1709,plain,
% 2.25/0.99      ( ~ m1_pre_topc(sK4,sK1) | l1_pre_topc(sK4) | ~ l1_pre_topc(sK1) ),
% 2.25/0.99      inference(instantiation,[status(thm)],[c_1627]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_1710,plain,
% 2.25/0.99      ( m1_pre_topc(sK4,sK1) != iProver_top
% 2.25/0.99      | l1_pre_topc(sK4) = iProver_top
% 2.25/0.99      | l1_pre_topc(sK1) != iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_1709]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_2692,plain,
% 2.25/0.99      ( m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),X0_53))) != iProver_top
% 2.25/0.99      | m1_subset_1(X1_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),X0_53))) != iProver_top
% 2.25/0.99      | v1_funct_2(X2_53,u1_struct_0(sK3),X0_53) != iProver_top
% 2.25/0.99      | v1_funct_2(X1_53,u1_struct_0(sK4),X0_53) != iProver_top
% 2.25/0.99      | k2_partfun1(u1_struct_0(sK4),X0_53,X1_53,u1_struct_0(sK3)) = X2_53
% 2.25/0.99      | k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),X0_53,X1_53,u1_struct_0(sK3),X2_53)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),X0_53,X1_53,u1_struct_0(sK3),X2_53))
% 2.25/0.99      | v1_xboole_0(X0_53) = iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK4)) = iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
% 2.25/0.99      | v1_funct_1(X2_53) != iProver_top
% 2.25/0.99      | v1_funct_1(X1_53) != iProver_top ),
% 2.25/0.99      inference(global_propositional_subsumption,
% 2.25/0.99                [status(thm)],
% 2.25/0.99                [c_2687,c_31,c_38,c_42,c_1362,c_1710]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_2693,plain,
% 2.25/0.99      ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),X0_53,X1_53,u1_struct_0(sK3),X2_53)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),X0_53,X1_53,u1_struct_0(sK3),X2_53))
% 2.25/0.99      | k2_partfun1(u1_struct_0(sK4),X0_53,X1_53,u1_struct_0(sK3)) = X2_53
% 2.25/0.99      | v1_funct_2(X1_53,u1_struct_0(sK4),X0_53) != iProver_top
% 2.25/0.99      | v1_funct_2(X2_53,u1_struct_0(sK3),X0_53) != iProver_top
% 2.25/0.99      | m1_subset_1(X1_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),X0_53))) != iProver_top
% 2.25/0.99      | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),X0_53))) != iProver_top
% 2.25/0.99      | v1_xboole_0(X0_53) = iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK4)) = iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
% 2.25/0.99      | v1_funct_1(X2_53) != iProver_top
% 2.25/0.99      | v1_funct_1(X1_53) != iProver_top ),
% 2.25/0.99      inference(renaming,[status(thm)],[c_2692]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_2709,plain,
% 2.25/0.99      ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),X0_53)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),X0_53))
% 2.25/0.99      | k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3)) = X0_53
% 2.25/0.99      | v1_funct_2(X0_53,u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
% 2.25/0.99      | v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2)) != iProver_top
% 2.25/0.99      | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK4)) = iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK2)) = iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
% 2.25/0.99      | v1_funct_1(X0_53) != iProver_top
% 2.25/0.99      | v1_funct_1(sK5) != iProver_top ),
% 2.25/0.99      inference(superposition,[status(thm)],[c_1112,c_2693]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_21,negated_conjecture,
% 2.25/0.99      ( m1_pre_topc(sK3,sK1) ),
% 2.25/0.99      inference(cnf_transformation,[],[f50]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_615,negated_conjecture,
% 2.25/0.99      ( m1_pre_topc(sK3,sK1) ),
% 2.25/0.99      inference(subtyping,[status(esa)],[c_21]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_1117,plain,
% 2.25/0.99      ( m1_pre_topc(sK3,sK1) = iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_615]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_8,plain,
% 2.25/0.99      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 2.25/0.99      | ~ m1_pre_topc(X3,X1)
% 2.25/0.99      | ~ m1_pre_topc(X3,X4)
% 2.25/0.99      | ~ m1_pre_topc(X1,X4)
% 2.25/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 2.25/0.99      | ~ v2_pre_topc(X2)
% 2.25/0.99      | ~ v2_pre_topc(X4)
% 2.25/0.99      | v2_struct_0(X4)
% 2.25/0.99      | v2_struct_0(X2)
% 2.25/0.99      | ~ l1_pre_topc(X4)
% 2.25/0.99      | ~ l1_pre_topc(X2)
% 2.25/0.99      | ~ v1_funct_1(X0)
% 2.25/0.99      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k3_tmap_1(X4,X2,X1,X3,X0) ),
% 2.25/0.99      inference(cnf_transformation,[],[f41]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_627,plain,
% 2.25/0.99      ( ~ v1_funct_2(X0_53,u1_struct_0(X0_54),u1_struct_0(X1_54))
% 2.25/0.99      | ~ m1_pre_topc(X2_54,X0_54)
% 2.25/0.99      | ~ m1_pre_topc(X2_54,X3_54)
% 2.25/0.99      | ~ m1_pre_topc(X0_54,X3_54)
% 2.25/0.99      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))))
% 2.25/0.99      | ~ v2_pre_topc(X1_54)
% 2.25/0.99      | ~ v2_pre_topc(X3_54)
% 2.25/0.99      | v2_struct_0(X3_54)
% 2.25/0.99      | v2_struct_0(X1_54)
% 2.25/0.99      | ~ l1_pre_topc(X1_54)
% 2.25/0.99      | ~ l1_pre_topc(X3_54)
% 2.25/0.99      | ~ v1_funct_1(X0_53)
% 2.25/0.99      | k2_partfun1(u1_struct_0(X0_54),u1_struct_0(X1_54),X0_53,u1_struct_0(X2_54)) = k3_tmap_1(X3_54,X1_54,X0_54,X2_54,X0_53) ),
% 2.25/0.99      inference(subtyping,[status(esa)],[c_8]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_1105,plain,
% 2.25/0.99      ( k2_partfun1(u1_struct_0(X0_54),u1_struct_0(X1_54),X0_53,u1_struct_0(X2_54)) = k3_tmap_1(X3_54,X1_54,X0_54,X2_54,X0_53)
% 2.25/0.99      | v1_funct_2(X0_53,u1_struct_0(X0_54),u1_struct_0(X1_54)) != iProver_top
% 2.25/0.99      | m1_pre_topc(X2_54,X0_54) != iProver_top
% 2.25/0.99      | m1_pre_topc(X2_54,X3_54) != iProver_top
% 2.25/0.99      | m1_pre_topc(X0_54,X3_54) != iProver_top
% 2.25/0.99      | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54)))) != iProver_top
% 2.25/0.99      | v2_pre_topc(X1_54) != iProver_top
% 2.25/0.99      | v2_pre_topc(X3_54) != iProver_top
% 2.25/0.99      | v2_struct_0(X1_54) = iProver_top
% 2.25/0.99      | v2_struct_0(X3_54) = iProver_top
% 2.25/0.99      | l1_pre_topc(X1_54) != iProver_top
% 2.25/0.99      | l1_pre_topc(X3_54) != iProver_top
% 2.25/0.99      | v1_funct_1(X0_53) != iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_627]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_2115,plain,
% 2.25/0.99      ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(X0_54)) = k3_tmap_1(X1_54,sK2,sK4,X0_54,sK5)
% 2.25/0.99      | v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2)) != iProver_top
% 2.25/0.99      | m1_pre_topc(X0_54,X1_54) != iProver_top
% 2.25/0.99      | m1_pre_topc(X0_54,sK4) != iProver_top
% 2.25/0.99      | m1_pre_topc(sK4,X1_54) != iProver_top
% 2.25/0.99      | v2_pre_topc(X1_54) != iProver_top
% 2.25/0.99      | v2_pre_topc(sK2) != iProver_top
% 2.25/0.99      | v2_struct_0(X1_54) = iProver_top
% 2.25/0.99      | v2_struct_0(sK2) = iProver_top
% 2.25/0.99      | l1_pre_topc(X1_54) != iProver_top
% 2.25/0.99      | l1_pre_topc(sK2) != iProver_top
% 2.25/0.99      | v1_funct_1(sK5) != iProver_top ),
% 2.25/0.99      inference(superposition,[status(thm)],[c_1112,c_1105]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_25,negated_conjecture,
% 2.25/0.99      ( ~ v2_struct_0(sK2) ),
% 2.25/0.99      inference(cnf_transformation,[],[f46]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_32,plain,
% 2.25/0.99      ( v2_struct_0(sK2) != iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_24,negated_conjecture,
% 2.25/0.99      ( v2_pre_topc(sK2) ),
% 2.25/0.99      inference(cnf_transformation,[],[f47]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_33,plain,
% 2.25/0.99      ( v2_pre_topc(sK2) = iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_23,negated_conjecture,
% 2.25/0.99      ( l1_pre_topc(sK2) ),
% 2.25/0.99      inference(cnf_transformation,[],[f48]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_34,plain,
% 2.25/0.99      ( l1_pre_topc(sK2) = iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_18,negated_conjecture,
% 2.25/0.99      ( v1_funct_1(sK5) ),
% 2.25/0.99      inference(cnf_transformation,[],[f53]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_39,plain,
% 2.25/0.99      ( v1_funct_1(sK5) = iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_17,negated_conjecture,
% 2.25/0.99      ( v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2)) ),
% 2.25/0.99      inference(cnf_transformation,[],[f54]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_40,plain,
% 2.25/0.99      ( v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2)) = iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_2400,plain,
% 2.25/0.99      ( v2_struct_0(X1_54) = iProver_top
% 2.25/0.99      | k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(X0_54)) = k3_tmap_1(X1_54,sK2,sK4,X0_54,sK5)
% 2.25/0.99      | m1_pre_topc(X0_54,X1_54) != iProver_top
% 2.25/0.99      | m1_pre_topc(X0_54,sK4) != iProver_top
% 2.25/0.99      | m1_pre_topc(sK4,X1_54) != iProver_top
% 2.25/0.99      | v2_pre_topc(X1_54) != iProver_top
% 2.25/0.99      | l1_pre_topc(X1_54) != iProver_top ),
% 2.25/0.99      inference(global_propositional_subsumption,
% 2.25/0.99                [status(thm)],
% 2.25/0.99                [c_2115,c_32,c_33,c_34,c_39,c_40]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_2401,plain,
% 2.25/0.99      ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(X0_54)) = k3_tmap_1(X1_54,sK2,sK4,X0_54,sK5)
% 2.25/0.99      | m1_pre_topc(X0_54,X1_54) != iProver_top
% 2.25/0.99      | m1_pre_topc(X0_54,sK4) != iProver_top
% 2.25/0.99      | m1_pre_topc(sK4,X1_54) != iProver_top
% 2.25/0.99      | v2_pre_topc(X1_54) != iProver_top
% 2.25/0.99      | v2_struct_0(X1_54) = iProver_top
% 2.25/0.99      | l1_pre_topc(X1_54) != iProver_top ),
% 2.25/0.99      inference(renaming,[status(thm)],[c_2400]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_2415,plain,
% 2.25/0.99      ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3)) = k3_tmap_1(sK1,sK2,sK4,sK3,sK5)
% 2.25/0.99      | m1_pre_topc(sK4,sK1) != iProver_top
% 2.25/0.99      | m1_pre_topc(sK3,sK4) != iProver_top
% 2.25/0.99      | v2_pre_topc(sK1) != iProver_top
% 2.25/0.99      | v2_struct_0(sK1) = iProver_top
% 2.25/0.99      | l1_pre_topc(sK1) != iProver_top ),
% 2.25/0.99      inference(superposition,[status(thm)],[c_1117,c_2401]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_28,negated_conjecture,
% 2.25/0.99      ( ~ v2_struct_0(sK1) ),
% 2.25/0.99      inference(cnf_transformation,[],[f43]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_27,negated_conjecture,
% 2.25/0.99      ( v2_pre_topc(sK1) ),
% 2.25/0.99      inference(cnf_transformation,[],[f44]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_1394,plain,
% 2.25/0.99      ( ~ v1_funct_2(X0_53,u1_struct_0(sK4),u1_struct_0(X0_54))
% 2.25/0.99      | ~ m1_pre_topc(sK4,X1_54)
% 2.25/0.99      | ~ m1_pre_topc(sK3,X1_54)
% 2.25/0.99      | ~ m1_pre_topc(sK3,sK4)
% 2.25/0.99      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0_54))))
% 2.25/0.99      | ~ v2_pre_topc(X1_54)
% 2.25/0.99      | ~ v2_pre_topc(X0_54)
% 2.25/0.99      | v2_struct_0(X0_54)
% 2.25/0.99      | v2_struct_0(X1_54)
% 2.25/0.99      | ~ l1_pre_topc(X0_54)
% 2.25/0.99      | ~ l1_pre_topc(X1_54)
% 2.25/0.99      | ~ v1_funct_1(X0_53)
% 2.25/0.99      | k2_partfun1(u1_struct_0(sK4),u1_struct_0(X0_54),X0_53,u1_struct_0(sK3)) = k3_tmap_1(X1_54,X0_54,sK4,sK3,X0_53) ),
% 2.25/0.99      inference(instantiation,[status(thm)],[c_627]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_1550,plain,
% 2.25/0.99      ( ~ v1_funct_2(X0_53,u1_struct_0(sK4),u1_struct_0(X0_54))
% 2.25/0.99      | ~ m1_pre_topc(sK4,sK1)
% 2.25/0.99      | ~ m1_pre_topc(sK3,sK4)
% 2.25/0.99      | ~ m1_pre_topc(sK3,sK1)
% 2.25/0.99      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(X0_54))))
% 2.25/0.99      | ~ v2_pre_topc(X0_54)
% 2.25/0.99      | ~ v2_pre_topc(sK1)
% 2.25/0.99      | v2_struct_0(X0_54)
% 2.25/0.99      | v2_struct_0(sK1)
% 2.25/0.99      | ~ l1_pre_topc(X0_54)
% 2.25/0.99      | ~ l1_pre_topc(sK1)
% 2.25/0.99      | ~ v1_funct_1(X0_53)
% 2.25/0.99      | k2_partfun1(u1_struct_0(sK4),u1_struct_0(X0_54),X0_53,u1_struct_0(sK3)) = k3_tmap_1(sK1,X0_54,sK4,sK3,X0_53) ),
% 2.25/0.99      inference(instantiation,[status(thm)],[c_1394]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_1552,plain,
% 2.25/0.99      ( ~ v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2))
% 2.25/0.99      | ~ m1_pre_topc(sK4,sK1)
% 2.25/0.99      | ~ m1_pre_topc(sK3,sK4)
% 2.25/0.99      | ~ m1_pre_topc(sK3,sK1)
% 2.25/0.99      | ~ m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK2))))
% 2.25/0.99      | ~ v2_pre_topc(sK1)
% 2.25/0.99      | ~ v2_pre_topc(sK2)
% 2.25/0.99      | v2_struct_0(sK1)
% 2.25/0.99      | v2_struct_0(sK2)
% 2.25/0.99      | ~ l1_pre_topc(sK1)
% 2.25/0.99      | ~ l1_pre_topc(sK2)
% 2.25/0.99      | ~ v1_funct_1(sK5)
% 2.25/0.99      | k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3)) = k3_tmap_1(sK1,sK2,sK4,sK3,sK5) ),
% 2.25/0.99      inference(instantiation,[status(thm)],[c_1550]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_2603,plain,
% 2.25/0.99      ( k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3)) = k3_tmap_1(sK1,sK2,sK4,sK3,sK5) ),
% 2.25/0.99      inference(global_propositional_subsumption,
% 2.25/0.99                [status(thm)],
% 2.25/0.99                [c_2415,c_28,c_27,c_26,c_25,c_24,c_23,c_21,c_19,c_18,
% 2.25/0.99                 c_17,c_16,c_15,c_1552]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_2763,plain,
% 2.25/0.99      ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),X0_53)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),X0_53))
% 2.25/0.99      | k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = X0_53
% 2.25/0.99      | v1_funct_2(X0_53,u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
% 2.25/0.99      | v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2)) != iProver_top
% 2.25/0.99      | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK4)) = iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK2)) = iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
% 2.25/0.99      | v1_funct_1(X0_53) != iProver_top
% 2.25/0.99      | v1_funct_1(sK5) != iProver_top ),
% 2.25/0.99      inference(demodulation,[status(thm)],[c_2709,c_2603]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_7,plain,
% 2.25/0.99      ( v2_struct_0(X0)
% 2.25/0.99      | ~ l1_struct_0(X0)
% 2.25/0.99      | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 2.25/0.99      inference(cnf_transformation,[],[f40]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_56,plain,
% 2.25/0.99      ( v2_struct_0(X0) = iProver_top
% 2.25/0.99      | l1_struct_0(X0) != iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(X0)) != iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_58,plain,
% 2.25/0.99      ( v2_struct_0(sK2) = iProver_top
% 2.25/0.99      | l1_struct_0(sK2) != iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK2)) != iProver_top ),
% 2.25/0.99      inference(instantiation,[status(thm)],[c_56]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_5,plain,
% 2.25/0.99      ( ~ l1_pre_topc(X0) | l1_struct_0(X0) ),
% 2.25/0.99      inference(cnf_transformation,[],[f38]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_60,plain,
% 2.25/0.99      ( l1_pre_topc(X0) != iProver_top | l1_struct_0(X0) = iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_62,plain,
% 2.25/0.99      ( l1_pre_topc(sK2) != iProver_top
% 2.25/0.99      | l1_struct_0(sK2) = iProver_top ),
% 2.25/0.99      inference(instantiation,[status(thm)],[c_60]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_3003,plain,
% 2.25/0.99      ( v1_funct_1(X0_53) != iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
% 2.25/0.99      | v1_funct_2(X0_53,u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
% 2.25/0.99      | k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = X0_53
% 2.25/0.99      | k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),X0_53)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),X0_53))
% 2.25/0.99      | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK4)) = iProver_top ),
% 2.25/0.99      inference(global_propositional_subsumption,
% 2.25/0.99                [status(thm)],
% 2.25/0.99                [c_2763,c_32,c_34,c_39,c_40,c_58,c_62]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_3004,plain,
% 2.25/0.99      ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),X0_53)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),X0_53))
% 2.25/0.99      | k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = X0_53
% 2.25/0.99      | v1_funct_2(X0_53,u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
% 2.25/0.99      | m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK4)) = iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
% 2.25/0.99      | v1_funct_1(X0_53) != iProver_top ),
% 2.25/0.99      inference(renaming,[status(thm)],[c_3003]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_3016,plain,
% 2.25/0.99      ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6))
% 2.25/0.99      | k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6
% 2.25/0.99      | v1_funct_2(sK6,u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK4)) = iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
% 2.25/0.99      | v1_funct_1(sK6) != iProver_top ),
% 2.25/0.99      inference(superposition,[status(thm)],[c_1108,c_3004]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_22,negated_conjecture,
% 2.25/0.99      ( ~ v2_struct_0(sK3) ),
% 2.25/0.99      inference(cnf_transformation,[],[f49]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_35,plain,
% 2.25/0.99      ( v2_struct_0(sK3) != iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_14,negated_conjecture,
% 2.25/0.99      ( v1_funct_1(sK6) ),
% 2.25/0.99      inference(cnf_transformation,[],[f57]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_43,plain,
% 2.25/0.99      ( v1_funct_1(sK6) = iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_13,negated_conjecture,
% 2.25/0.99      ( v1_funct_2(sK6,u1_struct_0(sK3),u1_struct_0(sK2)) ),
% 2.25/0.99      inference(cnf_transformation,[],[f58]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_44,plain,
% 2.25/0.99      ( v1_funct_2(sK6,u1_struct_0(sK3),u1_struct_0(sK2)) = iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_621,negated_conjecture,
% 2.25/0.99      ( m1_pre_topc(sK3,sK4) ),
% 2.25/0.99      inference(subtyping,[status(esa)],[c_15]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_1111,plain,
% 2.25/0.99      ( m1_pre_topc(sK3,sK4) = iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_621]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_1104,plain,
% 2.25/0.99      ( m1_pre_topc(X0_54,X1_54) != iProver_top
% 2.25/0.99      | l1_pre_topc(X1_54) != iProver_top
% 2.25/0.99      | l1_pre_topc(X0_54) = iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_628]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_1940,plain,
% 2.25/0.99      ( l1_pre_topc(sK4) != iProver_top
% 2.25/0.99      | l1_pre_topc(sK3) = iProver_top ),
% 2.25/0.99      inference(superposition,[status(thm)],[c_1111,c_1104]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_302,plain,
% 2.25/0.99      ( v2_struct_0(X0)
% 2.25/0.99      | ~ l1_pre_topc(X0)
% 2.25/0.99      | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 2.25/0.99      inference(resolution,[status(thm)],[c_5,c_7]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_607,plain,
% 2.25/0.99      ( v2_struct_0(X0_54)
% 2.25/0.99      | ~ l1_pre_topc(X0_54)
% 2.25/0.99      | ~ v1_xboole_0(u1_struct_0(X0_54)) ),
% 2.25/0.99      inference(subtyping,[status(esa)],[c_302]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_3078,plain,
% 2.25/0.99      ( v2_struct_0(sK3)
% 2.25/0.99      | ~ l1_pre_topc(sK3)
% 2.25/0.99      | ~ v1_xboole_0(u1_struct_0(sK3)) ),
% 2.25/0.99      inference(instantiation,[status(thm)],[c_607]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_3079,plain,
% 2.25/0.99      ( v2_struct_0(sK3) = iProver_top
% 2.25/0.99      | l1_pre_topc(sK3) != iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK3)) != iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_3078]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_3115,plain,
% 2.25/0.99      ( k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6
% 2.25/0.99      | k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6))
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK4)) = iProver_top ),
% 2.25/0.99      inference(global_propositional_subsumption,
% 2.25/0.99                [status(thm)],
% 2.25/0.99                [c_3016,c_31,c_35,c_38,c_43,c_44,c_1710,c_1940,c_3079]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_3116,plain,
% 2.25/0.99      ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6))
% 2.25/0.99      | k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK4)) = iProver_top ),
% 2.25/0.99      inference(renaming,[status(thm)],[c_3115]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_1125,plain,
% 2.25/0.99      ( v2_struct_0(X0_54) = iProver_top
% 2.25/0.99      | l1_pre_topc(X0_54) != iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(X0_54)) != iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_607]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_3122,plain,
% 2.25/0.99      ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6))
% 2.25/0.99      | k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6
% 2.25/0.99      | v2_struct_0(sK4) = iProver_top
% 2.25/0.99      | l1_pre_topc(sK4) != iProver_top ),
% 2.25/0.99      inference(superposition,[status(thm)],[c_3116,c_1125]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_20,negated_conjecture,
% 2.25/0.99      ( ~ v2_struct_0(sK4) ),
% 2.25/0.99      inference(cnf_transformation,[],[f51]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_3123,plain,
% 2.25/0.99      ( v2_struct_0(sK4)
% 2.25/0.99      | ~ l1_pre_topc(sK4)
% 2.25/0.99      | k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6))
% 2.25/0.99      | k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6 ),
% 2.25/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_3122]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_3125,plain,
% 2.25/0.99      ( k3_funct_2(u1_struct_0(sK4),u1_struct_0(sK2),sK5,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6)) = k1_funct_1(sK6,sK0(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3),sK6))
% 2.25/0.99      | k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6 ),
% 2.25/0.99      inference(global_propositional_subsumption,
% 2.25/0.99                [status(thm)],
% 2.25/0.99                [c_3122,c_26,c_20,c_19,c_1709,c_3123]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_2,plain,
% 2.25/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.25/0.99      | ~ v1_funct_2(X3,X4,X2)
% 2.25/0.99      | ~ m1_subset_1(X4,k1_zfmisc_1(X1))
% 2.25/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.25/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
% 2.25/0.99      | v1_xboole_0(X1)
% 2.25/0.99      | v1_xboole_0(X2)
% 2.25/0.99      | v1_xboole_0(X4)
% 2.25/0.99      | ~ v1_funct_1(X0)
% 2.25/0.99      | ~ v1_funct_1(X3)
% 2.25/0.99      | k3_funct_2(X1,X2,X0,sK0(X1,X2,X0,X4,X3)) != k1_funct_1(X3,sK0(X1,X2,X0,X4,X3))
% 2.25/0.99      | k2_partfun1(X1,X2,X0,X4) = X3 ),
% 2.25/0.99      inference(cnf_transformation,[],[f37]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_631,plain,
% 2.25/0.99      ( ~ v1_funct_2(X0_53,X1_53,X2_53)
% 2.25/0.99      | ~ v1_funct_2(X3_53,X4_53,X2_53)
% 2.25/0.99      | ~ m1_subset_1(X4_53,k1_zfmisc_1(X1_53))
% 2.25/0.99      | ~ m1_subset_1(X0_53,k1_zfmisc_1(k2_zfmisc_1(X1_53,X2_53)))
% 2.25/0.99      | ~ m1_subset_1(X3_53,k1_zfmisc_1(k2_zfmisc_1(X4_53,X2_53)))
% 2.25/0.99      | v1_xboole_0(X1_53)
% 2.25/0.99      | v1_xboole_0(X2_53)
% 2.25/0.99      | v1_xboole_0(X4_53)
% 2.25/0.99      | ~ v1_funct_1(X0_53)
% 2.25/0.99      | ~ v1_funct_1(X3_53)
% 2.25/0.99      | k3_funct_2(X1_53,X2_53,X0_53,sK0(X1_53,X2_53,X0_53,X4_53,X3_53)) != k1_funct_1(X3_53,sK0(X1_53,X2_53,X0_53,X4_53,X3_53))
% 2.25/0.99      | k2_partfun1(X1_53,X2_53,X0_53,X4_53) = X3_53 ),
% 2.25/0.99      inference(subtyping,[status(esa)],[c_2]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_1101,plain,
% 2.25/0.99      ( k3_funct_2(X0_53,X1_53,X2_53,sK0(X0_53,X1_53,X2_53,X3_53,X4_53)) != k1_funct_1(X4_53,sK0(X0_53,X1_53,X2_53,X3_53,X4_53))
% 2.25/0.99      | k2_partfun1(X0_53,X1_53,X2_53,X3_53) = X4_53
% 2.25/0.99      | v1_funct_2(X2_53,X0_53,X1_53) != iProver_top
% 2.25/0.99      | v1_funct_2(X4_53,X3_53,X1_53) != iProver_top
% 2.25/0.99      | m1_subset_1(X3_53,k1_zfmisc_1(X0_53)) != iProver_top
% 2.25/0.99      | m1_subset_1(X2_53,k1_zfmisc_1(k2_zfmisc_1(X0_53,X1_53))) != iProver_top
% 2.25/0.99      | m1_subset_1(X4_53,k1_zfmisc_1(k2_zfmisc_1(X3_53,X1_53))) != iProver_top
% 2.25/0.99      | v1_xboole_0(X0_53) = iProver_top
% 2.25/0.99      | v1_xboole_0(X1_53) = iProver_top
% 2.25/0.99      | v1_xboole_0(X3_53) = iProver_top
% 2.25/0.99      | v1_funct_1(X2_53) != iProver_top
% 2.25/0.99      | v1_funct_1(X4_53) != iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_631]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_3129,plain,
% 2.25/0.99      ( k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6
% 2.25/0.99      | k2_partfun1(u1_struct_0(sK4),u1_struct_0(sK2),sK5,u1_struct_0(sK3)) = sK6
% 2.25/0.99      | v1_funct_2(sK6,u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
% 2.25/0.99      | v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2)) != iProver_top
% 2.25/0.99      | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 2.25/0.99      | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top
% 2.25/0.99      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK2)))) != iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK4)) = iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK2)) = iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
% 2.25/0.99      | v1_funct_1(sK6) != iProver_top
% 2.25/0.99      | v1_funct_1(sK5) != iProver_top ),
% 2.25/0.99      inference(superposition,[status(thm)],[c_3125,c_1101]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_3130,plain,
% 2.25/0.99      ( k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6
% 2.25/0.99      | v1_funct_2(sK6,u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
% 2.25/0.99      | v1_funct_2(sK5,u1_struct_0(sK4),u1_struct_0(sK2)) != iProver_top
% 2.25/0.99      | m1_subset_1(u1_struct_0(sK3),k1_zfmisc_1(u1_struct_0(sK4))) != iProver_top
% 2.25/0.99      | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top
% 2.25/0.99      | m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK2)))) != iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK4)) = iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK2)) = iProver_top
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK3)) = iProver_top
% 2.25/0.99      | v1_funct_1(sK6) != iProver_top
% 2.25/0.99      | v1_funct_1(sK5) != iProver_top ),
% 2.25/0.99      inference(demodulation,[status(thm)],[c_3129,c_2603]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_41,plain,
% 2.25/0.99      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK4),u1_struct_0(sK2)))) = iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_45,plain,
% 2.25/0.99      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) = iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_3166,plain,
% 2.25/0.99      ( k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6
% 2.25/0.99      | v1_xboole_0(u1_struct_0(sK4)) = iProver_top ),
% 2.25/0.99      inference(global_propositional_subsumption,
% 2.25/0.99                [status(thm)],
% 2.25/0.99                [c_3130,c_31,c_32,c_34,c_35,c_38,c_39,c_40,c_41,c_42,
% 2.25/0.99                 c_43,c_44,c_45,c_58,c_62,c_1362,c_1710,c_1940,c_3079]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_3172,plain,
% 2.25/0.99      ( k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6
% 2.25/0.99      | v2_struct_0(sK4) = iProver_top
% 2.25/0.99      | l1_pre_topc(sK4) != iProver_top ),
% 2.25/0.99      inference(superposition,[status(thm)],[c_3166,c_1125]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_37,plain,
% 2.25/0.99      ( v2_struct_0(sK4) != iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_3175,plain,
% 2.25/0.99      ( k3_tmap_1(sK1,sK2,sK4,sK3,sK5) = sK6 ),
% 2.25/0.99      inference(global_propositional_subsumption,
% 2.25/0.99                [status(thm)],
% 2.25/0.99                [c_3172,c_31,c_37,c_38,c_1710]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_0,plain,
% 2.25/0.99      ( r2_funct_2(X0,X1,X2,X2)
% 2.25/0.99      | ~ v1_funct_2(X2,X0,X1)
% 2.25/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.25/0.99      | ~ v1_funct_1(X2) ),
% 2.25/0.99      inference(cnf_transformation,[],[f62]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_10,negated_conjecture,
% 2.25/0.99      ( ~ r2_funct_2(u1_struct_0(sK3),u1_struct_0(sK2),k3_tmap_1(sK1,sK2,sK4,sK3,sK5),sK6) ),
% 2.25/0.99      inference(cnf_transformation,[],[f61]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_322,plain,
% 2.25/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 2.25/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.25/0.99      | ~ v1_funct_1(X0)
% 2.25/0.99      | k3_tmap_1(sK1,sK2,sK4,sK3,sK5) != X0
% 2.25/0.99      | u1_struct_0(sK2) != X2
% 2.25/0.99      | u1_struct_0(sK3) != X1
% 2.25/0.99      | sK6 != X0 ),
% 2.25/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_10]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_323,plain,
% 2.25/0.99      ( ~ v1_funct_2(k3_tmap_1(sK1,sK2,sK4,sK3,sK5),u1_struct_0(sK3),u1_struct_0(sK2))
% 2.25/0.99      | ~ m1_subset_1(k3_tmap_1(sK1,sK2,sK4,sK3,sK5),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2))))
% 2.25/0.99      | ~ v1_funct_1(k3_tmap_1(sK1,sK2,sK4,sK3,sK5))
% 2.25/0.99      | sK6 != k3_tmap_1(sK1,sK2,sK4,sK3,sK5) ),
% 2.25/0.99      inference(unflattening,[status(thm)],[c_322]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_606,plain,
% 2.25/0.99      ( ~ v1_funct_2(k3_tmap_1(sK1,sK2,sK4,sK3,sK5),u1_struct_0(sK3),u1_struct_0(sK2))
% 2.25/0.99      | ~ m1_subset_1(k3_tmap_1(sK1,sK2,sK4,sK3,sK5),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2))))
% 2.25/0.99      | ~ v1_funct_1(k3_tmap_1(sK1,sK2,sK4,sK3,sK5))
% 2.25/0.99      | sK6 != k3_tmap_1(sK1,sK2,sK4,sK3,sK5) ),
% 2.25/0.99      inference(subtyping,[status(esa)],[c_323]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_1126,plain,
% 2.25/0.99      ( sK6 != k3_tmap_1(sK1,sK2,sK4,sK3,sK5)
% 2.25/0.99      | v1_funct_2(k3_tmap_1(sK1,sK2,sK4,sK3,sK5),u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
% 2.25/0.99      | m1_subset_1(k3_tmap_1(sK1,sK2,sK4,sK3,sK5),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top
% 2.25/0.99      | v1_funct_1(k3_tmap_1(sK1,sK2,sK4,sK3,sK5)) != iProver_top ),
% 2.25/0.99      inference(predicate_to_equality,[status(thm)],[c_606]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_3181,plain,
% 2.25/0.99      ( sK6 != sK6
% 2.25/0.99      | v1_funct_2(sK6,u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
% 2.25/0.99      | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top
% 2.25/0.99      | v1_funct_1(sK6) != iProver_top ),
% 2.25/0.99      inference(demodulation,[status(thm)],[c_3175,c_1126]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(c_3182,plain,
% 2.25/0.99      ( v1_funct_2(sK6,u1_struct_0(sK3),u1_struct_0(sK2)) != iProver_top
% 2.25/0.99      | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK2)))) != iProver_top
% 2.25/0.99      | v1_funct_1(sK6) != iProver_top ),
% 2.25/0.99      inference(equality_resolution_simp,[status(thm)],[c_3181]) ).
% 2.25/0.99  
% 2.25/0.99  cnf(contradiction,plain,
% 2.25/0.99      ( $false ),
% 2.25/0.99      inference(minisat,[status(thm)],[c_3182,c_45,c_44,c_43]) ).
% 2.25/0.99  
% 2.25/0.99  
% 2.25/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.25/0.99  
% 2.25/0.99  ------                               Statistics
% 2.25/0.99  
% 2.25/0.99  ------ General
% 2.25/0.99  
% 2.25/0.99  abstr_ref_over_cycles:                  0
% 2.25/0.99  abstr_ref_under_cycles:                 0
% 2.25/0.99  gc_basic_clause_elim:                   0
% 2.25/0.99  forced_gc_time:                         0
% 2.25/0.99  parsing_time:                           0.008
% 2.25/0.99  unif_index_cands_time:                  0.
% 2.25/0.99  unif_index_add_time:                    0.
% 2.25/0.99  orderings_time:                         0.
% 2.25/0.99  out_proof_time:                         0.013
% 2.25/0.99  total_time:                             0.178
% 2.25/0.99  num_of_symbols:                         59
% 2.25/0.99  num_of_terms:                           4014
% 2.25/0.99  
% 2.25/0.99  ------ Preprocessing
% 2.25/0.99  
% 2.25/0.99  num_of_splits:                          0
% 2.25/0.99  num_of_split_atoms:                     0
% 2.25/0.99  num_of_reused_defs:                     0
% 2.25/0.99  num_eq_ax_congr_red:                    29
% 2.25/0.99  num_of_sem_filtered_clauses:            1
% 2.25/0.99  num_of_subtypes:                        3
% 2.25/0.99  monotx_restored_types:                  0
% 2.25/0.99  sat_num_of_epr_types:                   0
% 2.25/0.99  sat_num_of_non_cyclic_types:            0
% 2.25/0.99  sat_guarded_non_collapsed_types:        1
% 2.25/0.99  num_pure_diseq_elim:                    0
% 2.25/0.99  simp_replaced_by:                       0
% 2.25/0.99  res_preprocessed:                       138
% 2.25/0.99  prep_upred:                             0
% 2.25/0.99  prep_unflattend:                        11
% 2.25/0.99  smt_new_axioms:                         0
% 2.25/0.99  pred_elim_cands:                        9
% 2.25/0.99  pred_elim:                              2
% 2.25/0.99  pred_elim_cl:                           3
% 2.25/0.99  pred_elim_cycles:                       4
% 2.25/0.99  merged_defs:                            0
% 2.25/0.99  merged_defs_ncl:                        0
% 2.25/0.99  bin_hyper_res:                          0
% 2.25/0.99  prep_cycles:                            4
% 2.25/0.99  pred_elim_time:                         0.006
% 2.25/0.99  splitting_time:                         0.
% 2.25/0.99  sem_filter_time:                        0.
% 2.25/0.99  monotx_time:                            0.
% 2.25/0.99  subtype_inf_time:                       0.
% 2.25/0.99  
% 2.25/0.99  ------ Problem properties
% 2.25/0.99  
% 2.25/0.99  clauses:                                26
% 2.25/0.99  conjectures:                            18
% 2.25/0.99  epr:                                    14
% 2.25/0.99  horn:                                   22
% 2.25/0.99  ground:                                 18
% 2.25/0.99  unary:                                  17
% 2.25/0.99  binary:                                 0
% 2.25/0.99  lits:                                   82
% 2.25/0.99  lits_eq:                                7
% 2.25/0.99  fd_pure:                                0
% 2.25/0.99  fd_pseudo:                              0
% 2.25/0.99  fd_cond:                                0
% 2.25/0.99  fd_pseudo_cond:                         3
% 2.25/0.99  ac_symbols:                             0
% 2.25/0.99  
% 2.25/0.99  ------ Propositional Solver
% 2.25/0.99  
% 2.25/0.99  prop_solver_calls:                      27
% 2.25/0.99  prop_fast_solver_calls:                 1163
% 2.25/0.99  smt_solver_calls:                       0
% 2.25/0.99  smt_fast_solver_calls:                  0
% 2.25/0.99  prop_num_of_clauses:                    874
% 2.25/0.99  prop_preprocess_simplified:             3875
% 2.25/0.99  prop_fo_subsumed:                       56
% 2.25/0.99  prop_solver_time:                       0.
% 2.25/0.99  smt_solver_time:                        0.
% 2.25/0.99  smt_fast_solver_time:                   0.
% 2.25/0.99  prop_fast_solver_time:                  0.
% 2.25/0.99  prop_unsat_core_time:                   0.
% 2.25/0.99  
% 2.25/0.99  ------ QBF
% 2.25/0.99  
% 2.25/0.99  qbf_q_res:                              0
% 2.25/0.99  qbf_num_tautologies:                    0
% 2.25/0.99  qbf_prep_cycles:                        0
% 2.25/0.99  
% 2.25/0.99  ------ BMC1
% 2.25/0.99  
% 2.25/0.99  bmc1_current_bound:                     -1
% 2.25/0.99  bmc1_last_solved_bound:                 -1
% 2.25/0.99  bmc1_unsat_core_size:                   -1
% 2.25/0.99  bmc1_unsat_core_parents_size:           -1
% 2.25/0.99  bmc1_merge_next_fun:                    0
% 2.25/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.25/0.99  
% 2.25/0.99  ------ Instantiation
% 2.25/0.99  
% 2.25/0.99  inst_num_of_clauses:                    280
% 2.25/0.99  inst_num_in_passive:                    22
% 2.25/0.99  inst_num_in_active:                     202
% 2.25/0.99  inst_num_in_unprocessed:                56
% 2.25/0.99  inst_num_of_loops:                      220
% 2.25/0.99  inst_num_of_learning_restarts:          0
% 2.25/0.99  inst_num_moves_active_passive:          15
% 2.25/0.99  inst_lit_activity:                      0
% 2.25/0.99  inst_lit_activity_moves:                0
% 2.25/0.99  inst_num_tautologies:                   0
% 2.25/0.99  inst_num_prop_implied:                  0
% 2.25/0.99  inst_num_existing_simplified:           0
% 2.25/0.99  inst_num_eq_res_simplified:             0
% 2.25/0.99  inst_num_child_elim:                    0
% 2.25/0.99  inst_num_of_dismatching_blockings:      19
% 2.25/0.99  inst_num_of_non_proper_insts:           201
% 2.25/0.99  inst_num_of_duplicates:                 0
% 2.25/0.99  inst_inst_num_from_inst_to_res:         0
% 2.25/0.99  inst_dismatching_checking_time:         0.
% 2.25/0.99  
% 2.25/0.99  ------ Resolution
% 2.25/0.99  
% 2.25/0.99  res_num_of_clauses:                     0
% 2.25/0.99  res_num_in_passive:                     0
% 2.25/0.99  res_num_in_active:                      0
% 2.25/0.99  res_num_of_loops:                       142
% 2.25/0.99  res_forward_subset_subsumed:            35
% 2.25/0.99  res_backward_subset_subsumed:           2
% 2.25/0.99  res_forward_subsumed:                   0
% 2.25/0.99  res_backward_subsumed:                  0
% 2.25/0.99  res_forward_subsumption_resolution:     0
% 2.25/0.99  res_backward_subsumption_resolution:    0
% 2.25/0.99  res_clause_to_clause_subsumption:       137
% 2.25/0.99  res_orphan_elimination:                 0
% 2.25/0.99  res_tautology_del:                      38
% 2.25/0.99  res_num_eq_res_simplified:              0
% 2.25/0.99  res_num_sel_changes:                    0
% 2.25/0.99  res_moves_from_active_to_pass:          0
% 2.25/0.99  
% 2.25/0.99  ------ Superposition
% 2.25/0.99  
% 2.25/0.99  sup_time_total:                         0.
% 2.25/0.99  sup_time_generating:                    0.
% 2.25/0.99  sup_time_sim_full:                      0.
% 2.25/0.99  sup_time_sim_immed:                     0.
% 2.25/0.99  
% 2.25/0.99  sup_num_of_clauses:                     44
% 2.25/0.99  sup_num_in_active:                      36
% 2.25/0.99  sup_num_in_passive:                     8
% 2.25/0.99  sup_num_of_loops:                       43
% 2.25/0.99  sup_fw_superposition:                   17
% 2.25/0.99  sup_bw_superposition:                   4
% 2.25/0.99  sup_immediate_simplified:               2
% 2.25/0.99  sup_given_eliminated:                   0
% 2.25/0.99  comparisons_done:                       0
% 2.25/0.99  comparisons_avoided:                    12
% 2.25/0.99  
% 2.25/0.99  ------ Simplifications
% 2.25/0.99  
% 2.25/0.99  
% 2.25/0.99  sim_fw_subset_subsumed:                 0
% 2.25/0.99  sim_bw_subset_subsumed:                 2
% 2.25/0.99  sim_fw_subsumed:                        0
% 2.25/0.99  sim_bw_subsumed:                        0
% 2.25/0.99  sim_fw_subsumption_res:                 0
% 2.25/0.99  sim_bw_subsumption_res:                 0
% 2.25/0.99  sim_tautology_del:                      0
% 2.25/0.99  sim_eq_tautology_del:                   0
% 2.25/0.99  sim_eq_res_simp:                        1
% 2.25/0.99  sim_fw_demodulated:                     2
% 2.25/0.99  sim_bw_demodulated:                     5
% 2.25/0.99  sim_light_normalised:                   0
% 2.25/0.99  sim_joinable_taut:                      0
% 2.25/0.99  sim_joinable_simp:                      0
% 2.25/0.99  sim_ac_normalised:                      0
% 2.25/0.99  sim_smt_subsumption:                    0
% 2.25/0.99  
%------------------------------------------------------------------------------
