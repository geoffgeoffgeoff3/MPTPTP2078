%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:23:07 EST 2020

% Result     : Theorem 1.98s
% Output     : CNFRefutation 1.98s
% Verified   : 
% Statistics : Number of formulae       :  204 (4430 expanded)
%              Number of clauses        :  141 ( 826 expanded)
%              Number of leaves         :   16 (1970 expanded)
%              Depth                    :   30
%              Number of atoms          : 1628 (91418 expanded)
%              Number of equality atoms :  442 (6673 expanded)
%              Maximal formula depth    :   27 (   8 average)
%              Maximal clause size      :   48 (   6 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f7,conjecture,(
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
                            ( m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))
                           => ! [X6] :
                                ( m1_subset_1(X6,u1_struct_0(X3))
                               => ! [X7] :
                                    ( m1_subset_1(X7,u1_struct_0(X2))
                                   => ( ( X6 = X7
                                        & m1_connsp_2(X5,X3,X6)
                                        & r1_tarski(X5,u1_struct_0(X2)) )
                                     => ( r1_tmap_1(X3,X1,X4,X6)
                                      <=> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) ) ) ) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f8,negated_conjecture,(
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
                              ( m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))
                             => ! [X6] :
                                  ( m1_subset_1(X6,u1_struct_0(X3))
                                 => ! [X7] :
                                      ( m1_subset_1(X7,u1_struct_0(X2))
                                     => ( ( X6 = X7
                                          & m1_connsp_2(X5,X3,X6)
                                          & r1_tarski(X5,u1_struct_0(X2)) )
                                       => ( r1_tmap_1(X3,X1,X4,X6)
                                        <=> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) ) ) ) ) ) ) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f7])).

fof(f20,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ? [X6] :
                              ( ? [X7] :
                                  ( ( r1_tmap_1(X3,X1,X4,X6)
                                  <~> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) )
                                  & X6 = X7
                                  & m1_connsp_2(X5,X3,X6)
                                  & r1_tarski(X5,u1_struct_0(X2))
                                  & m1_subset_1(X7,u1_struct_0(X2)) )
                              & m1_subset_1(X6,u1_struct_0(X3)) )
                          & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) )
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
    inference(ennf_transformation,[],[f8])).

fof(f21,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ? [X6] :
                              ( ? [X7] :
                                  ( ( r1_tmap_1(X3,X1,X4,X6)
                                  <~> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) )
                                  & X6 = X7
                                  & m1_connsp_2(X5,X3,X6)
                                  & r1_tarski(X5,u1_struct_0(X2))
                                  & m1_subset_1(X7,u1_struct_0(X2)) )
                              & m1_subset_1(X6,u1_struct_0(X3)) )
                          & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) )
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
    inference(flattening,[],[f20])).

fof(f23,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ? [X6] :
                              ( ? [X7] :
                                  ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                                    | ~ r1_tmap_1(X3,X1,X4,X6) )
                                  & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                                    | r1_tmap_1(X3,X1,X4,X6) )
                                  & X6 = X7
                                  & m1_connsp_2(X5,X3,X6)
                                  & r1_tarski(X5,u1_struct_0(X2))
                                  & m1_subset_1(X7,u1_struct_0(X2)) )
                              & m1_subset_1(X6,u1_struct_0(X3)) )
                          & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) )
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
    inference(nnf_transformation,[],[f21])).

fof(f24,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ? [X6] :
                              ( ? [X7] :
                                  ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                                    | ~ r1_tmap_1(X3,X1,X4,X6) )
                                  & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                                    | r1_tmap_1(X3,X1,X4,X6) )
                                  & X6 = X7
                                  & m1_connsp_2(X5,X3,X6)
                                  & r1_tarski(X5,u1_struct_0(X2))
                                  & m1_subset_1(X7,u1_struct_0(X2)) )
                              & m1_subset_1(X6,u1_struct_0(X3)) )
                          & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) )
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
    inference(flattening,[],[f23])).

fof(f32,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] :
      ( ? [X7] :
          ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
            | ~ r1_tmap_1(X3,X1,X4,X6) )
          & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
            | r1_tmap_1(X3,X1,X4,X6) )
          & X6 = X7
          & m1_connsp_2(X5,X3,X6)
          & r1_tarski(X5,u1_struct_0(X2))
          & m1_subset_1(X7,u1_struct_0(X2)) )
     => ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),sK7)
          | ~ r1_tmap_1(X3,X1,X4,X6) )
        & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),sK7)
          | r1_tmap_1(X3,X1,X4,X6) )
        & sK7 = X6
        & m1_connsp_2(X5,X3,X6)
        & r1_tarski(X5,u1_struct_0(X2))
        & m1_subset_1(sK7,u1_struct_0(X2)) ) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( ? [X6] :
          ( ? [X7] :
              ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                | ~ r1_tmap_1(X3,X1,X4,X6) )
              & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                | r1_tmap_1(X3,X1,X4,X6) )
              & X6 = X7
              & m1_connsp_2(X5,X3,X6)
              & r1_tarski(X5,u1_struct_0(X2))
              & m1_subset_1(X7,u1_struct_0(X2)) )
          & m1_subset_1(X6,u1_struct_0(X3)) )
     => ( ? [X7] :
            ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
              | ~ r1_tmap_1(X3,X1,X4,sK6) )
            & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
              | r1_tmap_1(X3,X1,X4,sK6) )
            & sK6 = X7
            & m1_connsp_2(X5,X3,sK6)
            & r1_tarski(X5,u1_struct_0(X2))
            & m1_subset_1(X7,u1_struct_0(X2)) )
        & m1_subset_1(sK6,u1_struct_0(X3)) ) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( ? [X5] :
          ( ? [X6] :
              ( ? [X7] :
                  ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                    | ~ r1_tmap_1(X3,X1,X4,X6) )
                  & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                    | r1_tmap_1(X3,X1,X4,X6) )
                  & X6 = X7
                  & m1_connsp_2(X5,X3,X6)
                  & r1_tarski(X5,u1_struct_0(X2))
                  & m1_subset_1(X7,u1_struct_0(X2)) )
              & m1_subset_1(X6,u1_struct_0(X3)) )
          & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) )
     => ( ? [X6] :
            ( ? [X7] :
                ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                  | ~ r1_tmap_1(X3,X1,X4,X6) )
                & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                  | r1_tmap_1(X3,X1,X4,X6) )
                & X6 = X7
                & m1_connsp_2(sK5,X3,X6)
                & r1_tarski(sK5,u1_struct_0(X2))
                & m1_subset_1(X7,u1_struct_0(X2)) )
            & m1_subset_1(X6,u1_struct_0(X3)) )
        & m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(X3))) ) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,(
    ! [X2,X0,X3,X1] :
      ( ? [X4] :
          ( ? [X5] :
              ( ? [X6] :
                  ( ? [X7] :
                      ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                        | ~ r1_tmap_1(X3,X1,X4,X6) )
                      & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                        | r1_tmap_1(X3,X1,X4,X6) )
                      & X6 = X7
                      & m1_connsp_2(X5,X3,X6)
                      & r1_tarski(X5,u1_struct_0(X2))
                      & m1_subset_1(X7,u1_struct_0(X2)) )
                  & m1_subset_1(X6,u1_struct_0(X3)) )
              & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) )
          & m1_pre_topc(X2,X3)
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
          & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
          & v1_funct_1(X4) )
     => ( ? [X5] :
            ( ? [X6] :
                ( ? [X7] :
                    ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,sK4),X7)
                      | ~ r1_tmap_1(X3,X1,sK4,X6) )
                    & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,sK4),X7)
                      | r1_tmap_1(X3,X1,sK4,X6) )
                    & X6 = X7
                    & m1_connsp_2(X5,X3,X6)
                    & r1_tarski(X5,u1_struct_0(X2))
                    & m1_subset_1(X7,u1_struct_0(X2)) )
                & m1_subset_1(X6,u1_struct_0(X3)) )
            & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) )
        & m1_pre_topc(X2,X3)
        & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
        & v1_funct_2(sK4,u1_struct_0(X3),u1_struct_0(X1))
        & v1_funct_1(sK4) ) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ? [X4] :
              ( ? [X5] :
                  ( ? [X6] :
                      ( ? [X7] :
                          ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                            | ~ r1_tmap_1(X3,X1,X4,X6) )
                          & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                            | r1_tmap_1(X3,X1,X4,X6) )
                          & X6 = X7
                          & m1_connsp_2(X5,X3,X6)
                          & r1_tarski(X5,u1_struct_0(X2))
                          & m1_subset_1(X7,u1_struct_0(X2)) )
                      & m1_subset_1(X6,u1_struct_0(X3)) )
                  & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) )
              & m1_pre_topc(X2,X3)
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
              & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
              & v1_funct_1(X4) )
          & m1_pre_topc(X3,X0)
          & ~ v2_struct_0(X3) )
     => ( ? [X4] :
            ( ? [X5] :
                ( ? [X6] :
                    ( ? [X7] :
                        ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,sK3,X2,X4),X7)
                          | ~ r1_tmap_1(sK3,X1,X4,X6) )
                        & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,sK3,X2,X4),X7)
                          | r1_tmap_1(sK3,X1,X4,X6) )
                        & X6 = X7
                        & m1_connsp_2(X5,sK3,X6)
                        & r1_tarski(X5,u1_struct_0(X2))
                        & m1_subset_1(X7,u1_struct_0(X2)) )
                    & m1_subset_1(X6,u1_struct_0(sK3)) )
                & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(sK3))) )
            & m1_pre_topc(X2,sK3)
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
            & v1_funct_2(X4,u1_struct_0(sK3),u1_struct_0(X1))
            & v1_funct_1(X4) )
        & m1_pre_topc(sK3,X0)
        & ~ v2_struct_0(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ? [X4] :
                  ( ? [X5] :
                      ( ? [X6] :
                          ( ? [X7] :
                              ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                                | ~ r1_tmap_1(X3,X1,X4,X6) )
                              & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                                | r1_tmap_1(X3,X1,X4,X6) )
                              & X6 = X7
                              & m1_connsp_2(X5,X3,X6)
                              & r1_tarski(X5,u1_struct_0(X2))
                              & m1_subset_1(X7,u1_struct_0(X2)) )
                          & m1_subset_1(X6,u1_struct_0(X3)) )
                      & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) )
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
                    ( ? [X6] :
                        ( ? [X7] :
                            ( ( ~ r1_tmap_1(sK2,X1,k3_tmap_1(X0,X1,X3,sK2,X4),X7)
                              | ~ r1_tmap_1(X3,X1,X4,X6) )
                            & ( r1_tmap_1(sK2,X1,k3_tmap_1(X0,X1,X3,sK2,X4),X7)
                              | r1_tmap_1(X3,X1,X4,X6) )
                            & X6 = X7
                            & m1_connsp_2(X5,X3,X6)
                            & r1_tarski(X5,u1_struct_0(sK2))
                            & m1_subset_1(X7,u1_struct_0(sK2)) )
                        & m1_subset_1(X6,u1_struct_0(X3)) )
                    & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) )
                & m1_pre_topc(sK2,X3)
                & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                & v1_funct_1(X4) )
            & m1_pre_topc(X3,X0)
            & ~ v2_struct_0(X3) )
        & m1_pre_topc(sK2,X0)
        & ~ v2_struct_0(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ? [X6] :
                              ( ? [X7] :
                                  ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                                    | ~ r1_tmap_1(X3,X1,X4,X6) )
                                  & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                                    | r1_tmap_1(X3,X1,X4,X6) )
                                  & X6 = X7
                                  & m1_connsp_2(X5,X3,X6)
                                  & r1_tarski(X5,u1_struct_0(X2))
                                  & m1_subset_1(X7,u1_struct_0(X2)) )
                              & m1_subset_1(X6,u1_struct_0(X3)) )
                          & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) )
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
                        ( ? [X6] :
                            ( ? [X7] :
                                ( ( ~ r1_tmap_1(X2,sK1,k3_tmap_1(X0,sK1,X3,X2,X4),X7)
                                  | ~ r1_tmap_1(X3,sK1,X4,X6) )
                                & ( r1_tmap_1(X2,sK1,k3_tmap_1(X0,sK1,X3,X2,X4),X7)
                                  | r1_tmap_1(X3,sK1,X4,X6) )
                                & X6 = X7
                                & m1_connsp_2(X5,X3,X6)
                                & r1_tarski(X5,u1_struct_0(X2))
                                & m1_subset_1(X7,u1_struct_0(X2)) )
                            & m1_subset_1(X6,u1_struct_0(X3)) )
                        & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) )
                    & m1_pre_topc(X2,X3)
                    & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(sK1))))
                    & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(sK1))
                    & v1_funct_1(X4) )
                & m1_pre_topc(X3,X0)
                & ~ v2_struct_0(X3) )
            & m1_pre_topc(X2,X0)
            & ~ v2_struct_0(X2) )
        & l1_pre_topc(sK1)
        & v2_pre_topc(sK1)
        & ~ v2_struct_0(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( ? [X4] :
                        ( ? [X5] :
                            ( ? [X6] :
                                ( ? [X7] :
                                    ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                                      | ~ r1_tmap_1(X3,X1,X4,X6) )
                                    & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                                      | r1_tmap_1(X3,X1,X4,X6) )
                                    & X6 = X7
                                    & m1_connsp_2(X5,X3,X6)
                                    & r1_tarski(X5,u1_struct_0(X2))
                                    & m1_subset_1(X7,u1_struct_0(X2)) )
                                & m1_subset_1(X6,u1_struct_0(X3)) )
                            & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) )
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
                          ( ? [X6] :
                              ( ? [X7] :
                                  ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(sK0,X1,X3,X2,X4),X7)
                                    | ~ r1_tmap_1(X3,X1,X4,X6) )
                                  & ( r1_tmap_1(X2,X1,k3_tmap_1(sK0,X1,X3,X2,X4),X7)
                                    | r1_tmap_1(X3,X1,X4,X6) )
                                  & X6 = X7
                                  & m1_connsp_2(X5,X3,X6)
                                  & r1_tarski(X5,u1_struct_0(X2))
                                  & m1_subset_1(X7,u1_struct_0(X2)) )
                              & m1_subset_1(X6,u1_struct_0(X3)) )
                          & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) )
                      & m1_pre_topc(X2,X3)
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                      & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                      & v1_funct_1(X4) )
                  & m1_pre_topc(X3,sK0)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,sK0)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(sK0)
      & v2_pre_topc(sK0)
      & ~ v2_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,
    ( ( ~ r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7)
      | ~ r1_tmap_1(sK3,sK1,sK4,sK6) )
    & ( r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7)
      | r1_tmap_1(sK3,sK1,sK4,sK6) )
    & sK6 = sK7
    & m1_connsp_2(sK5,sK3,sK6)
    & r1_tarski(sK5,u1_struct_0(sK2))
    & m1_subset_1(sK7,u1_struct_0(sK2))
    & m1_subset_1(sK6,u1_struct_0(sK3))
    & m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK3)))
    & m1_pre_topc(sK2,sK3)
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1))))
    & v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1))
    & v1_funct_1(sK4)
    & m1_pre_topc(sK3,sK0)
    & ~ v2_struct_0(sK3)
    & m1_pre_topc(sK2,sK0)
    & ~ v2_struct_0(sK2)
    & l1_pre_topc(sK1)
    & v2_pre_topc(sK1)
    & ~ v2_struct_0(sK1)
    & l1_pre_topc(sK0)
    & v2_pre_topc(sK0)
    & ~ v2_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7])],[f24,f32,f31,f30,f29,f28,f27,f26,f25])).

fof(f52,plain,(
    v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f33])).

fof(f5,axiom,(
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
                      ( m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
                     => ! [X5] :
                          ( m1_subset_1(X5,u1_struct_0(X1))
                         => ! [X6] :
                              ( m1_subset_1(X6,u1_struct_0(X3))
                             => ( ( X5 = X6
                                  & m1_connsp_2(X4,X1,X5)
                                  & r1_tarski(X4,u1_struct_0(X3)) )
                               => ( r1_tmap_1(X1,X0,X2,X5)
                                <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6) ) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( ! [X6] :
                              ( ( r1_tmap_1(X1,X0,X2,X5)
                              <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6) )
                              | X5 != X6
                              | ~ m1_connsp_2(X4,X1,X5)
                              | ~ r1_tarski(X4,u1_struct_0(X3))
                              | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                          | ~ m1_subset_1(X5,u1_struct_0(X1)) )
                      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
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
    inference(ennf_transformation,[],[f5])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( ! [X6] :
                              ( ( r1_tmap_1(X1,X0,X2,X5)
                              <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6) )
                              | X5 != X6
                              | ~ m1_connsp_2(X4,X1,X5)
                              | ~ r1_tarski(X4,u1_struct_0(X3))
                              | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                          | ~ m1_subset_1(X5,u1_struct_0(X1)) )
                      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
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
    inference(flattening,[],[f16])).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( ! [X6] :
                              ( ( ( r1_tmap_1(X1,X0,X2,X5)
                                  | ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6) )
                                & ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6)
                                  | ~ r1_tmap_1(X1,X0,X2,X5) ) )
                              | X5 != X6
                              | ~ m1_connsp_2(X4,X1,X5)
                              | ~ r1_tarski(X4,u1_struct_0(X3))
                              | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                          | ~ m1_subset_1(X5,u1_struct_0(X1)) )
                      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
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
    inference(nnf_transformation,[],[f17])).

fof(f38,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] :
      ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6)
      | ~ r1_tmap_1(X1,X0,X2,X5)
      | X5 != X6
      | ~ m1_connsp_2(X4,X1,X5)
      | ~ r1_tarski(X4,u1_struct_0(X3))
      | ~ m1_subset_1(X6,u1_struct_0(X3))
      | ~ m1_subset_1(X5,u1_struct_0(X1))
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
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
    inference(cnf_transformation,[],[f22])).

fof(f64,plain,(
    ! [X6,X4,X2,X0,X3,X1] :
      ( r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6)
      | ~ r1_tmap_1(X1,X0,X2,X6)
      | ~ m1_connsp_2(X4,X1,X6)
      | ~ r1_tarski(X4,u1_struct_0(X3))
      | ~ m1_subset_1(X6,u1_struct_0(X3))
      | ~ m1_subset_1(X6,u1_struct_0(X1))
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
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
    inference(equality_resolution,[],[f38])).

fof(f59,plain,(
    m1_connsp_2(sK5,sK3,sK6) ),
    inference(cnf_transformation,[],[f33])).

fof(f49,plain,(
    ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f33])).

fof(f55,plain,(
    m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK3))) ),
    inference(cnf_transformation,[],[f33])).

fof(f56,plain,(
    m1_subset_1(sK6,u1_struct_0(sK3)) ),
    inference(cnf_transformation,[],[f33])).

fof(f51,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f33])).

fof(f60,plain,(
    sK6 = sK7 ),
    inference(cnf_transformation,[],[f33])).

fof(f42,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f33])).

fof(f43,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f33])).

fof(f50,plain,(
    m1_pre_topc(sK3,sK0) ),
    inference(cnf_transformation,[],[f33])).

fof(f2,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => l1_pre_topc(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0] :
      ( ! [X1] :
          ( l1_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f35,plain,(
    ! [X0,X1] :
      ( l1_pre_topc(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f1,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => v2_pre_topc(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f10,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f9])).

fof(f34,plain,(
    ! [X0,X1] :
      ( v2_pre_topc(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f44,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f33])).

fof(f45,plain,(
    v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f33])).

fof(f46,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f33])).

fof(f53,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f33])).

fof(f54,plain,(
    m1_pre_topc(sK2,sK3) ),
    inference(cnf_transformation,[],[f33])).

fof(f4,axiom,(
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

fof(f14,plain,(
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
    inference(ennf_transformation,[],[f4])).

fof(f15,plain,(
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
    inference(flattening,[],[f14])).

fof(f37,plain,(
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
    inference(cnf_transformation,[],[f15])).

fof(f6,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ! [X2] :
              ( m1_pre_topc(X2,X1)
             => m1_pre_topc(X2,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( m1_pre_topc(X2,X0)
              | ~ m1_pre_topc(X2,X1) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( m1_pre_topc(X2,X0)
              | ~ m1_pre_topc(X2,X1) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f18])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( m1_pre_topc(X2,X0)
      | ~ m1_pre_topc(X2,X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f3,axiom,(
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

fof(f12,plain,(
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
    inference(ennf_transformation,[],[f3])).

fof(f13,plain,(
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
    inference(flattening,[],[f12])).

fof(f36,plain,(
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
    inference(cnf_transformation,[],[f13])).

fof(f41,plain,(
    ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f33])).

fof(f62,plain,
    ( ~ r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7)
    | ~ r1_tmap_1(sK3,sK1,sK4,sK6) ),
    inference(cnf_transformation,[],[f33])).

fof(f47,plain,(
    ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f33])).

fof(f57,plain,(
    m1_subset_1(sK7,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f33])).

fof(f58,plain,(
    r1_tarski(sK5,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f33])).

fof(f61,plain,
    ( r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7)
    | r1_tmap_1(sK3,sK1,sK4,sK6) ),
    inference(cnf_transformation,[],[f33])).

fof(f39,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] :
      ( r1_tmap_1(X1,X0,X2,X5)
      | ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6)
      | X5 != X6
      | ~ m1_connsp_2(X4,X1,X5)
      | ~ r1_tarski(X4,u1_struct_0(X3))
      | ~ m1_subset_1(X6,u1_struct_0(X3))
      | ~ m1_subset_1(X5,u1_struct_0(X1))
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
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
    inference(cnf_transformation,[],[f22])).

fof(f63,plain,(
    ! [X6,X4,X2,X0,X3,X1] :
      ( r1_tmap_1(X1,X0,X2,X6)
      | ~ r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6)
      | ~ m1_connsp_2(X4,X1,X6)
      | ~ r1_tarski(X4,u1_struct_0(X3))
      | ~ m1_subset_1(X6,u1_struct_0(X3))
      | ~ m1_subset_1(X6,u1_struct_0(X1))
      | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
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
    inference(equality_resolution,[],[f39])).

cnf(c_17,negated_conjecture,
    ( v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_5,plain,
    ( ~ r1_tmap_1(X0,X1,X2,X3)
    | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
    | ~ m1_connsp_2(X5,X0,X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ r1_tarski(X5,u1_struct_0(X4))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_pre_topc(X4,X0)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X4)
    | ~ v1_funct_1(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X0)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X0) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_10,negated_conjecture,
    ( m1_connsp_2(sK5,sK3,sK6) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_349,plain,
    ( ~ r1_tmap_1(X0,X1,X2,X3)
    | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ r1_tarski(X5,u1_struct_0(X4))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_pre_topc(X4,X0)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X4)
    | ~ v1_funct_1(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X0)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X0)
    | sK5 != X5
    | sK6 != X3
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_10])).

cnf(c_350,plain,
    ( r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,X2,X0),sK6)
    | ~ r1_tmap_1(sK3,X1,X2,sK6)
    | ~ v1_funct_2(X2,u1_struct_0(sK3),u1_struct_0(X1))
    | ~ r1_tarski(sK5,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
    | ~ m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ m1_subset_1(sK6,u1_struct_0(X0))
    | ~ m1_subset_1(sK6,u1_struct_0(sK3))
    | ~ m1_pre_topc(X0,sK3)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(sK3)
    | ~ v1_funct_1(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK3)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK3) ),
    inference(unflattening,[status(thm)],[c_349])).

cnf(c_20,negated_conjecture,
    ( ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_14,negated_conjecture,
    ( m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK3))) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_13,negated_conjecture,
    ( m1_subset_1(sK6,u1_struct_0(sK3)) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_354,plain,
    ( v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ m1_pre_topc(X0,sK3)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
    | ~ r1_tarski(sK5,u1_struct_0(X0))
    | ~ v1_funct_2(X2,u1_struct_0(sK3),u1_struct_0(X1))
    | ~ r1_tmap_1(sK3,X1,X2,sK6)
    | r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,X2,X0),sK6)
    | ~ m1_subset_1(sK6,u1_struct_0(X0))
    | ~ v1_funct_1(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK3)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_350,c_20,c_14,c_13])).

cnf(c_355,plain,
    ( r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,X2,X0),sK6)
    | ~ r1_tmap_1(sK3,X1,X2,sK6)
    | ~ v1_funct_2(X2,u1_struct_0(sK3),u1_struct_0(X1))
    | ~ r1_tarski(sK5,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
    | ~ m1_subset_1(sK6,u1_struct_0(X0))
    | ~ m1_pre_topc(X0,sK3)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ v1_funct_1(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK3)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK3) ),
    inference(renaming,[status(thm)],[c_354])).

cnf(c_706,plain,
    ( r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,X2,X0),sK6)
    | ~ r1_tmap_1(sK3,X1,X2,sK6)
    | ~ r1_tarski(sK5,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
    | ~ m1_subset_1(sK6,u1_struct_0(X0))
    | ~ m1_pre_topc(X0,sK3)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ v1_funct_1(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK3)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK1)
    | u1_struct_0(sK3) != u1_struct_0(sK3)
    | sK4 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_355])).

cnf(c_707,plain,
    ( r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,sK4,X0),sK6)
    | ~ r1_tmap_1(sK3,X1,sK4,sK6)
    | ~ r1_tarski(sK5,u1_struct_0(X0))
    | ~ m1_subset_1(sK6,u1_struct_0(X0))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
    | ~ m1_pre_topc(X0,sK3)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ v1_funct_1(sK4)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK3)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_706])).

cnf(c_18,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_711,plain,
    ( v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ m1_pre_topc(X0,sK3)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
    | ~ m1_subset_1(sK6,u1_struct_0(X0))
    | ~ r1_tarski(sK5,u1_struct_0(X0))
    | ~ r1_tmap_1(sK3,X1,sK4,sK6)
    | r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,sK4,X0),sK6)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK3)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_707,c_18])).

cnf(c_712,plain,
    ( r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,sK4,X0),sK6)
    | ~ r1_tmap_1(sK3,X1,sK4,sK6)
    | ~ r1_tarski(sK5,u1_struct_0(X0))
    | ~ m1_subset_1(sK6,u1_struct_0(X0))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
    | ~ m1_pre_topc(X0,sK3)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK3)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(renaming,[status(thm)],[c_711])).

cnf(c_1170,plain,
    ( r1_tmap_1(X0_52,X1_52,k2_tmap_1(sK3,X1_52,sK4,X0_52),sK6)
    | ~ r1_tmap_1(sK3,X1_52,sK4,sK6)
    | ~ r1_tarski(sK5,u1_struct_0(X0_52))
    | ~ m1_subset_1(sK6,u1_struct_0(X0_52))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1_52))))
    | ~ m1_pre_topc(X0_52,sK3)
    | v2_struct_0(X1_52)
    | v2_struct_0(X0_52)
    | ~ l1_pre_topc(X1_52)
    | ~ l1_pre_topc(sK3)
    | ~ v2_pre_topc(X1_52)
    | ~ v2_pre_topc(sK3)
    | u1_struct_0(X1_52) != u1_struct_0(sK1) ),
    inference(subtyping,[status(esa)],[c_712])).

cnf(c_1198,plain,
    ( r1_tmap_1(X0_52,X1_52,k2_tmap_1(sK3,X1_52,sK4,X0_52),sK6)
    | ~ r1_tmap_1(sK3,X1_52,sK4,sK6)
    | ~ r1_tarski(sK5,u1_struct_0(X0_52))
    | ~ m1_subset_1(sK6,u1_struct_0(X0_52))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1_52))))
    | ~ m1_pre_topc(X0_52,sK3)
    | v2_struct_0(X1_52)
    | v2_struct_0(X0_52)
    | ~ l1_pre_topc(X1_52)
    | ~ v2_pre_topc(X1_52)
    | u1_struct_0(X1_52) != u1_struct_0(sK1)
    | ~ sP1_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP1_iProver_split])],[c_1170])).

cnf(c_1858,plain,
    ( u1_struct_0(X0_52) != u1_struct_0(sK1)
    | r1_tmap_1(X1_52,X0_52,k2_tmap_1(sK3,X0_52,sK4,X1_52),sK6) = iProver_top
    | r1_tmap_1(sK3,X0_52,sK4,sK6) != iProver_top
    | r1_tarski(sK5,u1_struct_0(X1_52)) != iProver_top
    | m1_subset_1(sK6,u1_struct_0(X1_52)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_52)))) != iProver_top
    | m1_pre_topc(X1_52,sK3) != iProver_top
    | v2_struct_0(X0_52) = iProver_top
    | v2_struct_0(X1_52) = iProver_top
    | l1_pre_topc(X0_52) != iProver_top
    | v2_pre_topc(X0_52) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1198])).

cnf(c_9,negated_conjecture,
    ( sK6 = sK7 ),
    inference(cnf_transformation,[],[f60])).

cnf(c_1190,negated_conjecture,
    ( sK6 = sK7 ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_2011,plain,
    ( u1_struct_0(X0_52) != u1_struct_0(sK1)
    | r1_tmap_1(X1_52,X0_52,k2_tmap_1(sK3,X0_52,sK4,X1_52),sK7) = iProver_top
    | r1_tmap_1(sK3,X0_52,sK4,sK7) != iProver_top
    | r1_tarski(sK5,u1_struct_0(X1_52)) != iProver_top
    | m1_subset_1(sK7,u1_struct_0(X1_52)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_52)))) != iProver_top
    | m1_pre_topc(X1_52,sK3) != iProver_top
    | v2_struct_0(X1_52) = iProver_top
    | v2_struct_0(X0_52) = iProver_top
    | l1_pre_topc(X0_52) != iProver_top
    | v2_pre_topc(X0_52) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1858,c_1190])).

cnf(c_27,negated_conjecture,
    ( v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_30,plain,
    ( v2_pre_topc(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_26,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_31,plain,
    ( l1_pre_topc(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_19,negated_conjecture,
    ( m1_pre_topc(sK3,sK0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_38,plain,
    ( m1_pre_topc(sK3,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_1199,plain,
    ( ~ l1_pre_topc(sK3)
    | ~ v2_pre_topc(sK3)
    | sP1_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_1170])).

cnf(c_1255,plain,
    ( l1_pre_topc(sK3) != iProver_top
    | v2_pre_topc(sK3) != iProver_top
    | sP1_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1199])).

cnf(c_1,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_1194,plain,
    ( ~ m1_pre_topc(X0_52,X1_52)
    | ~ l1_pre_topc(X1_52)
    | l1_pre_topc(X0_52) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_2129,plain,
    ( ~ m1_pre_topc(X0_52,sK0)
    | l1_pre_topc(X0_52)
    | ~ l1_pre_topc(sK0) ),
    inference(instantiation,[status(thm)],[c_1194])).

cnf(c_2130,plain,
    ( m1_pre_topc(X0_52,sK0) != iProver_top
    | l1_pre_topc(X0_52) = iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2129])).

cnf(c_2132,plain,
    ( m1_pre_topc(sK3,sK0) != iProver_top
    | l1_pre_topc(sK3) = iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2130])).

cnf(c_0,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1)
    | v2_pre_topc(X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_1195,plain,
    ( ~ m1_pre_topc(X0_52,X1_52)
    | ~ l1_pre_topc(X1_52)
    | ~ v2_pre_topc(X1_52)
    | v2_pre_topc(X0_52) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_2139,plain,
    ( ~ m1_pre_topc(X0_52,sK0)
    | ~ l1_pre_topc(sK0)
    | v2_pre_topc(X0_52)
    | ~ v2_pre_topc(sK0) ),
    inference(instantiation,[status(thm)],[c_1195])).

cnf(c_2140,plain,
    ( m1_pre_topc(X0_52,sK0) != iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | v2_pre_topc(X0_52) = iProver_top
    | v2_pre_topc(sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2139])).

cnf(c_2142,plain,
    ( m1_pre_topc(sK3,sK0) != iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | v2_pre_topc(sK3) = iProver_top
    | v2_pre_topc(sK0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2140])).

cnf(c_2628,plain,
    ( v2_pre_topc(X0_52) != iProver_top
    | l1_pre_topc(X0_52) != iProver_top
    | v2_struct_0(X0_52) = iProver_top
    | v2_struct_0(X1_52) = iProver_top
    | m1_pre_topc(X1_52,sK3) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_52)))) != iProver_top
    | m1_subset_1(sK7,u1_struct_0(X1_52)) != iProver_top
    | r1_tarski(sK5,u1_struct_0(X1_52)) != iProver_top
    | r1_tmap_1(sK3,X0_52,sK4,sK7) != iProver_top
    | r1_tmap_1(X1_52,X0_52,k2_tmap_1(sK3,X0_52,sK4,X1_52),sK7) = iProver_top
    | u1_struct_0(X0_52) != u1_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2011,c_30,c_31,c_38,c_1255,c_2132,c_2142])).

cnf(c_2629,plain,
    ( u1_struct_0(X0_52) != u1_struct_0(sK1)
    | r1_tmap_1(X1_52,X0_52,k2_tmap_1(sK3,X0_52,sK4,X1_52),sK7) = iProver_top
    | r1_tmap_1(sK3,X0_52,sK4,sK7) != iProver_top
    | r1_tarski(sK5,u1_struct_0(X1_52)) != iProver_top
    | m1_subset_1(sK7,u1_struct_0(X1_52)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_52)))) != iProver_top
    | m1_pre_topc(X1_52,sK3) != iProver_top
    | v2_struct_0(X1_52) = iProver_top
    | v2_struct_0(X0_52) = iProver_top
    | l1_pre_topc(X0_52) != iProver_top
    | v2_pre_topc(X0_52) != iProver_top ),
    inference(renaming,[status(thm)],[c_2628])).

cnf(c_2645,plain,
    ( r1_tmap_1(X0_52,sK1,k2_tmap_1(sK3,sK1,sK4,X0_52),sK7) = iProver_top
    | r1_tmap_1(sK3,sK1,sK4,sK7) != iProver_top
    | r1_tarski(sK5,u1_struct_0(X0_52)) != iProver_top
    | m1_subset_1(sK7,u1_struct_0(X0_52)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
    | m1_pre_topc(X0_52,sK3) != iProver_top
    | v2_struct_0(X0_52) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | v2_pre_topc(sK1) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_2629])).

cnf(c_25,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_32,plain,
    ( v2_struct_0(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_24,negated_conjecture,
    ( v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_33,plain,
    ( v2_pre_topc(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_23,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_34,plain,
    ( l1_pre_topc(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_16,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_41,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_3080,plain,
    ( v2_struct_0(X0_52) = iProver_top
    | m1_pre_topc(X0_52,sK3) != iProver_top
    | r1_tmap_1(X0_52,sK1,k2_tmap_1(sK3,sK1,sK4,X0_52),sK7) = iProver_top
    | r1_tmap_1(sK3,sK1,sK4,sK7) != iProver_top
    | r1_tarski(sK5,u1_struct_0(X0_52)) != iProver_top
    | m1_subset_1(sK7,u1_struct_0(X0_52)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2645,c_32,c_33,c_34,c_41])).

cnf(c_3081,plain,
    ( r1_tmap_1(X0_52,sK1,k2_tmap_1(sK3,sK1,sK4,X0_52),sK7) = iProver_top
    | r1_tmap_1(sK3,sK1,sK4,sK7) != iProver_top
    | r1_tarski(sK5,u1_struct_0(X0_52)) != iProver_top
    | m1_subset_1(sK7,u1_struct_0(X0_52)) != iProver_top
    | m1_pre_topc(X0_52,sK3) != iProver_top
    | v2_struct_0(X0_52) = iProver_top ),
    inference(renaming,[status(thm)],[c_3080])).

cnf(c_1183,negated_conjecture,
    ( m1_pre_topc(sK3,sK0) ),
    inference(subtyping,[status(esa)],[c_19])).

cnf(c_1843,plain,
    ( m1_pre_topc(sK3,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1183])).

cnf(c_15,negated_conjecture,
    ( m1_pre_topc(sK2,sK3) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1185,negated_conjecture,
    ( m1_pre_topc(sK2,sK3) ),
    inference(subtyping,[status(esa)],[c_15])).

cnf(c_1841,plain,
    ( m1_pre_topc(sK2,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1185])).

cnf(c_3,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ m1_pre_topc(X3,X4)
    | ~ m1_pre_topc(X3,X1)
    | ~ m1_pre_topc(X1,X4)
    | v2_struct_0(X4)
    | v2_struct_0(X2)
    | ~ v1_funct_1(X0)
    | ~ l1_pre_topc(X4)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X4)
    | ~ v2_pre_topc(X2)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k3_tmap_1(X4,X2,X1,X3,X0) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_559,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ m1_pre_topc(X3,X1)
    | ~ m1_pre_topc(X3,X4)
    | ~ m1_pre_topc(X1,X4)
    | v2_struct_0(X2)
    | v2_struct_0(X4)
    | ~ v1_funct_1(X0)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X4)
    | ~ v2_pre_topc(X2)
    | ~ v2_pre_topc(X4)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k3_tmap_1(X4,X2,X1,X3,X0)
    | u1_struct_0(X1) != u1_struct_0(sK3)
    | u1_struct_0(X2) != u1_struct_0(sK1)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_17])).

cnf(c_560,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_pre_topc(X2,X0)
    | ~ m1_pre_topc(X2,X3)
    | ~ m1_pre_topc(X0,X3)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | ~ v1_funct_1(sK4)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X3)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X3)
    | k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),sK4,u1_struct_0(X2)) = k3_tmap_1(X3,X1,X0,X2,sK4)
    | u1_struct_0(X0) != u1_struct_0(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_559])).

cnf(c_564,plain,
    ( v2_struct_0(X3)
    | v2_struct_0(X1)
    | ~ m1_pre_topc(X0,X3)
    | ~ m1_pre_topc(X2,X3)
    | ~ m1_pre_topc(X2,X0)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X3)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X3)
    | k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),sK4,u1_struct_0(X2)) = k3_tmap_1(X3,X1,X0,X2,sK4)
    | u1_struct_0(X0) != u1_struct_0(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_560,c_18])).

cnf(c_565,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_pre_topc(X2,X0)
    | ~ m1_pre_topc(X2,X3)
    | ~ m1_pre_topc(X0,X3)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X3)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X3)
    | k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),sK4,u1_struct_0(X2)) = k3_tmap_1(X3,X1,X0,X2,sK4)
    | u1_struct_0(X0) != u1_struct_0(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(renaming,[status(thm)],[c_564])).

cnf(c_6,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X0)
    | m1_pre_topc(X2,X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_596,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_pre_topc(X2,X0)
    | ~ m1_pre_topc(X0,X3)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X3)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X3)
    | k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),sK4,u1_struct_0(X2)) = k3_tmap_1(X3,X1,X0,X2,sK4)
    | u1_struct_0(X0) != u1_struct_0(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_565,c_6])).

cnf(c_1173,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(X1_52))))
    | ~ m1_pre_topc(X2_52,X0_52)
    | ~ m1_pre_topc(X0_52,X3_52)
    | v2_struct_0(X1_52)
    | v2_struct_0(X3_52)
    | ~ l1_pre_topc(X1_52)
    | ~ l1_pre_topc(X3_52)
    | ~ v2_pre_topc(X1_52)
    | ~ v2_pre_topc(X3_52)
    | u1_struct_0(X0_52) != u1_struct_0(sK3)
    | u1_struct_0(X1_52) != u1_struct_0(sK1)
    | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(X1_52),sK4,u1_struct_0(X2_52)) = k3_tmap_1(X3_52,X1_52,X0_52,X2_52,sK4) ),
    inference(subtyping,[status(esa)],[c_596])).

cnf(c_1853,plain,
    ( u1_struct_0(X0_52) != u1_struct_0(sK3)
    | u1_struct_0(X1_52) != u1_struct_0(sK1)
    | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(X1_52),sK4,u1_struct_0(X2_52)) = k3_tmap_1(X3_52,X1_52,X0_52,X2_52,sK4)
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(X1_52)))) != iProver_top
    | m1_pre_topc(X2_52,X0_52) != iProver_top
    | m1_pre_topc(X0_52,X3_52) != iProver_top
    | v2_struct_0(X1_52) = iProver_top
    | v2_struct_0(X3_52) = iProver_top
    | l1_pre_topc(X1_52) != iProver_top
    | l1_pre_topc(X3_52) != iProver_top
    | v2_pre_topc(X1_52) != iProver_top
    | v2_pre_topc(X3_52) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1173])).

cnf(c_2890,plain,
    ( u1_struct_0(X0_52) != u1_struct_0(sK3)
    | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X1_52)) = k3_tmap_1(X2_52,sK1,X0_52,X1_52,sK4)
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1)))) != iProver_top
    | m1_pre_topc(X0_52,X2_52) != iProver_top
    | m1_pre_topc(X1_52,X0_52) != iProver_top
    | v2_struct_0(X2_52) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(X2_52) != iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | v2_pre_topc(X2_52) != iProver_top
    | v2_pre_topc(sK1) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1853])).

cnf(c_2114,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1))))
    | ~ m1_pre_topc(X0_52,X1_52)
    | ~ m1_pre_topc(X2_52,X0_52)
    | v2_struct_0(X1_52)
    | v2_struct_0(sK1)
    | ~ l1_pre_topc(X1_52)
    | ~ l1_pre_topc(sK1)
    | ~ v2_pre_topc(X1_52)
    | ~ v2_pre_topc(sK1)
    | u1_struct_0(X0_52) != u1_struct_0(sK3)
    | u1_struct_0(sK1) != u1_struct_0(sK1)
    | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X2_52)) = k3_tmap_1(X1_52,sK1,X0_52,X2_52,sK4) ),
    inference(instantiation,[status(thm)],[c_1173])).

cnf(c_2115,plain,
    ( u1_struct_0(X0_52) != u1_struct_0(sK3)
    | u1_struct_0(sK1) != u1_struct_0(sK1)
    | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X1_52)) = k3_tmap_1(X2_52,sK1,X0_52,X1_52,sK4)
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1)))) != iProver_top
    | m1_pre_topc(X0_52,X2_52) != iProver_top
    | m1_pre_topc(X1_52,X0_52) != iProver_top
    | v2_struct_0(X2_52) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(X2_52) != iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | v2_pre_topc(X2_52) != iProver_top
    | v2_pre_topc(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2114])).

cnf(c_1202,plain,
    ( X0_54 = X0_54 ),
    theory(equality)).

cnf(c_2266,plain,
    ( u1_struct_0(sK1) = u1_struct_0(sK1) ),
    inference(instantiation,[status(thm)],[c_1202])).

cnf(c_2991,plain,
    ( v2_pre_topc(X2_52) != iProver_top
    | v2_struct_0(X2_52) = iProver_top
    | m1_pre_topc(X1_52,X0_52) != iProver_top
    | m1_pre_topc(X0_52,X2_52) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1)))) != iProver_top
    | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X1_52)) = k3_tmap_1(X2_52,sK1,X0_52,X1_52,sK4)
    | u1_struct_0(X0_52) != u1_struct_0(sK3)
    | l1_pre_topc(X2_52) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2890,c_32,c_33,c_34,c_2115,c_2266])).

cnf(c_2992,plain,
    ( u1_struct_0(X0_52) != u1_struct_0(sK3)
    | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X1_52)) = k3_tmap_1(X2_52,sK1,X0_52,X1_52,sK4)
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1)))) != iProver_top
    | m1_pre_topc(X0_52,X2_52) != iProver_top
    | m1_pre_topc(X1_52,X0_52) != iProver_top
    | v2_struct_0(X2_52) = iProver_top
    | l1_pre_topc(X2_52) != iProver_top
    | v2_pre_topc(X2_52) != iProver_top ),
    inference(renaming,[status(thm)],[c_2991])).

cnf(c_3005,plain,
    ( k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,u1_struct_0(X0_52)) = k3_tmap_1(X1_52,sK1,sK3,X0_52,sK4)
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
    | m1_pre_topc(X0_52,sK3) != iProver_top
    | m1_pre_topc(sK3,X1_52) != iProver_top
    | v2_struct_0(X1_52) = iProver_top
    | l1_pre_topc(X1_52) != iProver_top
    | v2_pre_topc(X1_52) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_2992])).

cnf(c_3247,plain,
    ( k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,u1_struct_0(X0_52)) = k3_tmap_1(X1_52,sK1,sK3,X0_52,sK4)
    | m1_pre_topc(X0_52,sK3) != iProver_top
    | m1_pre_topc(sK3,X1_52) != iProver_top
    | v2_struct_0(X1_52) = iProver_top
    | l1_pre_topc(X1_52) != iProver_top
    | v2_pre_topc(X1_52) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3005,c_41])).

cnf(c_3259,plain,
    ( k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,u1_struct_0(sK2)) = k3_tmap_1(X0_52,sK1,sK3,sK2,sK4)
    | m1_pre_topc(sK3,X0_52) != iProver_top
    | v2_struct_0(X0_52) = iProver_top
    | l1_pre_topc(X0_52) != iProver_top
    | v2_pre_topc(X0_52) != iProver_top ),
    inference(superposition,[status(thm)],[c_1841,c_3247])).

cnf(c_2,plain,
    ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ m1_pre_topc(X3,X1)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ v1_funct_1(X0)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k2_tmap_1(X1,X2,X0,X3) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_610,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ m1_pre_topc(X3,X1)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ v1_funct_1(X0)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k2_tmap_1(X1,X2,X0,X3)
    | u1_struct_0(X1) != u1_struct_0(sK3)
    | u1_struct_0(X2) != u1_struct_0(sK1)
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_17])).

cnf(c_611,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_pre_topc(X2,X0)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ v1_funct_1(sK4)
    | ~ l1_pre_topc(X0)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X0)
    | ~ v2_pre_topc(X1)
    | k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),sK4,u1_struct_0(X2)) = k2_tmap_1(X0,X1,sK4,X2)
    | u1_struct_0(X0) != u1_struct_0(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_610])).

cnf(c_615,plain,
    ( v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ m1_pre_topc(X2,X0)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ l1_pre_topc(X0)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X0)
    | ~ v2_pre_topc(X1)
    | k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),sK4,u1_struct_0(X2)) = k2_tmap_1(X0,X1,sK4,X2)
    | u1_struct_0(X0) != u1_struct_0(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_611,c_18])).

cnf(c_616,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_pre_topc(X2,X0)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X0)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X0)
    | k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),sK4,u1_struct_0(X2)) = k2_tmap_1(X0,X1,sK4,X2)
    | u1_struct_0(X0) != u1_struct_0(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(renaming,[status(thm)],[c_615])).

cnf(c_1172,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(X1_52))))
    | ~ m1_pre_topc(X2_52,X0_52)
    | v2_struct_0(X1_52)
    | v2_struct_0(X0_52)
    | ~ l1_pre_topc(X1_52)
    | ~ l1_pre_topc(X0_52)
    | ~ v2_pre_topc(X1_52)
    | ~ v2_pre_topc(X0_52)
    | u1_struct_0(X0_52) != u1_struct_0(sK3)
    | u1_struct_0(X1_52) != u1_struct_0(sK1)
    | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(X1_52),sK4,u1_struct_0(X2_52)) = k2_tmap_1(X0_52,X1_52,sK4,X2_52) ),
    inference(subtyping,[status(esa)],[c_616])).

cnf(c_1854,plain,
    ( u1_struct_0(X0_52) != u1_struct_0(sK3)
    | u1_struct_0(X1_52) != u1_struct_0(sK1)
    | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(X1_52),sK4,u1_struct_0(X2_52)) = k2_tmap_1(X0_52,X1_52,sK4,X2_52)
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(X1_52)))) != iProver_top
    | m1_pre_topc(X2_52,X0_52) != iProver_top
    | v2_struct_0(X1_52) = iProver_top
    | v2_struct_0(X0_52) = iProver_top
    | l1_pre_topc(X1_52) != iProver_top
    | l1_pre_topc(X0_52) != iProver_top
    | v2_pre_topc(X1_52) != iProver_top
    | v2_pre_topc(X0_52) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1172])).

cnf(c_3105,plain,
    ( u1_struct_0(X0_52) != u1_struct_0(sK3)
    | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X1_52)) = k2_tmap_1(X0_52,sK1,sK4,X1_52)
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1)))) != iProver_top
    | m1_pre_topc(X1_52,X0_52) != iProver_top
    | v2_struct_0(X0_52) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(X0_52) != iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | v2_pre_topc(X0_52) != iProver_top
    | v2_pre_topc(sK1) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1854])).

cnf(c_2104,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1))))
    | ~ m1_pre_topc(X1_52,X0_52)
    | v2_struct_0(X0_52)
    | v2_struct_0(sK1)
    | ~ l1_pre_topc(X0_52)
    | ~ l1_pre_topc(sK1)
    | ~ v2_pre_topc(X0_52)
    | ~ v2_pre_topc(sK1)
    | u1_struct_0(X0_52) != u1_struct_0(sK3)
    | u1_struct_0(sK1) != u1_struct_0(sK1)
    | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X1_52)) = k2_tmap_1(X0_52,sK1,sK4,X1_52) ),
    inference(instantiation,[status(thm)],[c_1172])).

cnf(c_2105,plain,
    ( u1_struct_0(X0_52) != u1_struct_0(sK3)
    | u1_struct_0(sK1) != u1_struct_0(sK1)
    | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X1_52)) = k2_tmap_1(X0_52,sK1,sK4,X1_52)
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1)))) != iProver_top
    | m1_pre_topc(X1_52,X0_52) != iProver_top
    | v2_struct_0(X0_52) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(X0_52) != iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | v2_pre_topc(X0_52) != iProver_top
    | v2_pre_topc(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2104])).

cnf(c_3153,plain,
    ( v2_pre_topc(X0_52) != iProver_top
    | v2_struct_0(X0_52) = iProver_top
    | m1_pre_topc(X1_52,X0_52) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1)))) != iProver_top
    | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X1_52)) = k2_tmap_1(X0_52,sK1,sK4,X1_52)
    | u1_struct_0(X0_52) != u1_struct_0(sK3)
    | l1_pre_topc(X0_52) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3105,c_32,c_33,c_34,c_2105,c_2266])).

cnf(c_3154,plain,
    ( u1_struct_0(X0_52) != u1_struct_0(sK3)
    | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X1_52)) = k2_tmap_1(X0_52,sK1,sK4,X1_52)
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1)))) != iProver_top
    | m1_pre_topc(X1_52,X0_52) != iProver_top
    | v2_struct_0(X0_52) = iProver_top
    | l1_pre_topc(X0_52) != iProver_top
    | v2_pre_topc(X0_52) != iProver_top ),
    inference(renaming,[status(thm)],[c_3153])).

cnf(c_3166,plain,
    ( k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,u1_struct_0(X0_52)) = k2_tmap_1(sK3,sK1,sK4,X0_52)
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
    | m1_pre_topc(X0_52,sK3) != iProver_top
    | v2_struct_0(sK3) = iProver_top
    | l1_pre_topc(sK3) != iProver_top
    | v2_pre_topc(sK3) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_3154])).

cnf(c_37,plain,
    ( v2_struct_0(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_3171,plain,
    ( m1_pre_topc(X0_52,sK3) != iProver_top
    | k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,u1_struct_0(X0_52)) = k2_tmap_1(sK3,sK1,sK4,X0_52) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3166,c_30,c_31,c_37,c_38,c_41,c_2132,c_2142])).

cnf(c_3172,plain,
    ( k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,u1_struct_0(X0_52)) = k2_tmap_1(sK3,sK1,sK4,X0_52)
    | m1_pre_topc(X0_52,sK3) != iProver_top ),
    inference(renaming,[status(thm)],[c_3171])).

cnf(c_3179,plain,
    ( k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,u1_struct_0(sK2)) = k2_tmap_1(sK3,sK1,sK4,sK2) ),
    inference(superposition,[status(thm)],[c_1841,c_3172])).

cnf(c_3260,plain,
    ( k3_tmap_1(X0_52,sK1,sK3,sK2,sK4) = k2_tmap_1(sK3,sK1,sK4,sK2)
    | m1_pre_topc(sK3,X0_52) != iProver_top
    | v2_struct_0(X0_52) = iProver_top
    | l1_pre_topc(X0_52) != iProver_top
    | v2_pre_topc(X0_52) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3259,c_3179])).

cnf(c_3335,plain,
    ( k3_tmap_1(sK0,sK1,sK3,sK2,sK4) = k2_tmap_1(sK3,sK1,sK4,sK2)
    | v2_struct_0(sK0) = iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | v2_pre_topc(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1843,c_3260])).

cnf(c_28,negated_conjecture,
    ( ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_29,plain,
    ( v2_struct_0(sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_3338,plain,
    ( k3_tmap_1(sK0,sK1,sK3,sK2,sK4) = k2_tmap_1(sK3,sK1,sK4,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3335,c_29,c_30,c_31])).

cnf(c_7,negated_conjecture,
    ( ~ r1_tmap_1(sK3,sK1,sK4,sK6)
    | ~ r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1192,negated_conjecture,
    ( ~ r1_tmap_1(sK3,sK1,sK4,sK6)
    | ~ r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) ),
    inference(subtyping,[status(esa)],[c_7])).

cnf(c_1835,plain,
    ( r1_tmap_1(sK3,sK1,sK4,sK6) != iProver_top
    | r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1192])).

cnf(c_1917,plain,
    ( r1_tmap_1(sK3,sK1,sK4,sK7) != iProver_top
    | r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1835,c_1190])).

cnf(c_3342,plain,
    ( r1_tmap_1(sK3,sK1,sK4,sK7) != iProver_top
    | r1_tmap_1(sK2,sK1,k2_tmap_1(sK3,sK1,sK4,sK2),sK7) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3338,c_1917])).

cnf(c_22,negated_conjecture,
    ( ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_35,plain,
    ( v2_struct_0(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_42,plain,
    ( m1_pre_topc(sK2,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_12,negated_conjecture,
    ( m1_subset_1(sK7,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_45,plain,
    ( m1_subset_1(sK7,u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_11,negated_conjecture,
    ( r1_tarski(sK5,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_46,plain,
    ( r1_tarski(sK5,u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_8,negated_conjecture,
    ( r1_tmap_1(sK3,sK1,sK4,sK6)
    | r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1191,negated_conjecture,
    ( r1_tmap_1(sK3,sK1,sK4,sK6)
    | r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) ),
    inference(subtyping,[status(esa)],[c_8])).

cnf(c_1836,plain,
    ( r1_tmap_1(sK3,sK1,sK4,sK6) = iProver_top
    | r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1191])).

cnf(c_1912,plain,
    ( r1_tmap_1(sK3,sK1,sK4,sK7) = iProver_top
    | r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1836,c_1190])).

cnf(c_3341,plain,
    ( r1_tmap_1(sK3,sK1,sK4,sK7) = iProver_top
    | r1_tmap_1(sK2,sK1,k2_tmap_1(sK3,sK1,sK4,sK2),sK7) = iProver_top ),
    inference(demodulation,[status(thm)],[c_3338,c_1912])).

cnf(c_4,plain,
    ( r1_tmap_1(X0,X1,X2,X3)
    | ~ r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
    | ~ m1_connsp_2(X5,X0,X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ r1_tarski(X5,u1_struct_0(X4))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_pre_topc(X4,X0)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X4)
    | ~ v1_funct_1(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X0)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_403,plain,
    ( r1_tmap_1(X0,X1,X2,X3)
    | ~ r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ r1_tarski(X5,u1_struct_0(X4))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_pre_topc(X4,X0)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X4)
    | ~ v1_funct_1(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X0)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X0)
    | sK5 != X5
    | sK6 != X3
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_10])).

cnf(c_404,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,X2,X0),sK6)
    | r1_tmap_1(sK3,X1,X2,sK6)
    | ~ v1_funct_2(X2,u1_struct_0(sK3),u1_struct_0(X1))
    | ~ r1_tarski(sK5,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
    | ~ m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ m1_subset_1(sK6,u1_struct_0(X0))
    | ~ m1_subset_1(sK6,u1_struct_0(sK3))
    | ~ m1_pre_topc(X0,sK3)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(sK3)
    | ~ v1_funct_1(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK3)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK3) ),
    inference(unflattening,[status(thm)],[c_403])).

cnf(c_408,plain,
    ( v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ m1_pre_topc(X0,sK3)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
    | ~ r1_tarski(sK5,u1_struct_0(X0))
    | ~ v1_funct_2(X2,u1_struct_0(sK3),u1_struct_0(X1))
    | r1_tmap_1(sK3,X1,X2,sK6)
    | ~ r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,X2,X0),sK6)
    | ~ m1_subset_1(sK6,u1_struct_0(X0))
    | ~ v1_funct_1(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK3)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_404,c_20,c_14,c_13])).

cnf(c_409,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,X2,X0),sK6)
    | r1_tmap_1(sK3,X1,X2,sK6)
    | ~ v1_funct_2(X2,u1_struct_0(sK3),u1_struct_0(X1))
    | ~ r1_tarski(sK5,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
    | ~ m1_subset_1(sK6,u1_struct_0(X0))
    | ~ m1_pre_topc(X0,sK3)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ v1_funct_1(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK3)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK3) ),
    inference(renaming,[status(thm)],[c_408])).

cnf(c_655,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,X2,X0),sK6)
    | r1_tmap_1(sK3,X1,X2,sK6)
    | ~ r1_tarski(sK5,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
    | ~ m1_subset_1(sK6,u1_struct_0(X0))
    | ~ m1_pre_topc(X0,sK3)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ v1_funct_1(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK3)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK1)
    | u1_struct_0(sK3) != u1_struct_0(sK3)
    | sK4 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_409])).

cnf(c_656,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,sK4,X0),sK6)
    | r1_tmap_1(sK3,X1,sK4,sK6)
    | ~ r1_tarski(sK5,u1_struct_0(X0))
    | ~ m1_subset_1(sK6,u1_struct_0(X0))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
    | ~ m1_pre_topc(X0,sK3)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ v1_funct_1(sK4)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK3)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(unflattening,[status(thm)],[c_655])).

cnf(c_660,plain,
    ( v2_struct_0(X0)
    | v2_struct_0(X1)
    | ~ m1_pre_topc(X0,sK3)
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
    | ~ m1_subset_1(sK6,u1_struct_0(X0))
    | ~ r1_tarski(sK5,u1_struct_0(X0))
    | r1_tmap_1(sK3,X1,sK4,sK6)
    | ~ r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,sK4,X0),sK6)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK3)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_656,c_18])).

cnf(c_661,plain,
    ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,sK4,X0),sK6)
    | r1_tmap_1(sK3,X1,sK4,sK6)
    | ~ r1_tarski(sK5,u1_struct_0(X0))
    | ~ m1_subset_1(sK6,u1_struct_0(X0))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
    | ~ m1_pre_topc(X0,sK3)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(sK3)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK1) ),
    inference(renaming,[status(thm)],[c_660])).

cnf(c_1171,plain,
    ( ~ r1_tmap_1(X0_52,X1_52,k2_tmap_1(sK3,X1_52,sK4,X0_52),sK6)
    | r1_tmap_1(sK3,X1_52,sK4,sK6)
    | ~ r1_tarski(sK5,u1_struct_0(X0_52))
    | ~ m1_subset_1(sK6,u1_struct_0(X0_52))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1_52))))
    | ~ m1_pre_topc(X0_52,sK3)
    | v2_struct_0(X1_52)
    | v2_struct_0(X0_52)
    | ~ l1_pre_topc(X1_52)
    | ~ l1_pre_topc(sK3)
    | ~ v2_pre_topc(X1_52)
    | ~ v2_pre_topc(sK3)
    | u1_struct_0(X1_52) != u1_struct_0(sK1) ),
    inference(subtyping,[status(esa)],[c_661])).

cnf(c_1196,plain,
    ( ~ r1_tmap_1(X0_52,X1_52,k2_tmap_1(sK3,X1_52,sK4,X0_52),sK6)
    | r1_tmap_1(sK3,X1_52,sK4,sK6)
    | ~ r1_tarski(sK5,u1_struct_0(X0_52))
    | ~ m1_subset_1(sK6,u1_struct_0(X0_52))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1_52))))
    | ~ m1_pre_topc(X0_52,sK3)
    | v2_struct_0(X1_52)
    | v2_struct_0(X0_52)
    | ~ l1_pre_topc(X1_52)
    | ~ v2_pre_topc(X1_52)
    | u1_struct_0(X1_52) != u1_struct_0(sK1)
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_1171])).

cnf(c_1856,plain,
    ( u1_struct_0(X0_52) != u1_struct_0(sK1)
    | r1_tmap_1(X1_52,X0_52,k2_tmap_1(sK3,X0_52,sK4,X1_52),sK6) != iProver_top
    | r1_tmap_1(sK3,X0_52,sK4,sK6) = iProver_top
    | r1_tarski(sK5,u1_struct_0(X1_52)) != iProver_top
    | m1_subset_1(sK6,u1_struct_0(X1_52)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_52)))) != iProver_top
    | m1_pre_topc(X1_52,sK3) != iProver_top
    | v2_struct_0(X0_52) = iProver_top
    | v2_struct_0(X1_52) = iProver_top
    | l1_pre_topc(X0_52) != iProver_top
    | v2_pre_topc(X0_52) != iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1196])).

cnf(c_1986,plain,
    ( u1_struct_0(X0_52) != u1_struct_0(sK1)
    | r1_tmap_1(X1_52,X0_52,k2_tmap_1(sK3,X0_52,sK4,X1_52),sK7) != iProver_top
    | r1_tmap_1(sK3,X0_52,sK4,sK7) = iProver_top
    | r1_tarski(sK5,u1_struct_0(X1_52)) != iProver_top
    | m1_subset_1(sK7,u1_struct_0(X1_52)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_52)))) != iProver_top
    | m1_pre_topc(X1_52,sK3) != iProver_top
    | v2_struct_0(X1_52) = iProver_top
    | v2_struct_0(X0_52) = iProver_top
    | l1_pre_topc(X0_52) != iProver_top
    | v2_pre_topc(X0_52) != iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1856,c_1190])).

cnf(c_1197,plain,
    ( ~ l1_pre_topc(sK3)
    | ~ v2_pre_topc(sK3)
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_1171])).

cnf(c_1251,plain,
    ( l1_pre_topc(sK3) != iProver_top
    | v2_pre_topc(sK3) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1197])).

cnf(c_2527,plain,
    ( v2_pre_topc(X0_52) != iProver_top
    | l1_pre_topc(X0_52) != iProver_top
    | v2_struct_0(X0_52) = iProver_top
    | v2_struct_0(X1_52) = iProver_top
    | m1_pre_topc(X1_52,sK3) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_52)))) != iProver_top
    | m1_subset_1(sK7,u1_struct_0(X1_52)) != iProver_top
    | r1_tarski(sK5,u1_struct_0(X1_52)) != iProver_top
    | r1_tmap_1(sK3,X0_52,sK4,sK7) = iProver_top
    | r1_tmap_1(X1_52,X0_52,k2_tmap_1(sK3,X0_52,sK4,X1_52),sK7) != iProver_top
    | u1_struct_0(X0_52) != u1_struct_0(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1986,c_30,c_31,c_38,c_1251,c_2132,c_2142])).

cnf(c_2528,plain,
    ( u1_struct_0(X0_52) != u1_struct_0(sK1)
    | r1_tmap_1(X1_52,X0_52,k2_tmap_1(sK3,X0_52,sK4,X1_52),sK7) != iProver_top
    | r1_tmap_1(sK3,X0_52,sK4,sK7) = iProver_top
    | r1_tarski(sK5,u1_struct_0(X1_52)) != iProver_top
    | m1_subset_1(sK7,u1_struct_0(X1_52)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_52)))) != iProver_top
    | m1_pre_topc(X1_52,sK3) != iProver_top
    | v2_struct_0(X1_52) = iProver_top
    | v2_struct_0(X0_52) = iProver_top
    | l1_pre_topc(X0_52) != iProver_top
    | v2_pre_topc(X0_52) != iProver_top ),
    inference(renaming,[status(thm)],[c_2527])).

cnf(c_2544,plain,
    ( r1_tmap_1(X0_52,sK1,k2_tmap_1(sK3,sK1,sK4,X0_52),sK7) != iProver_top
    | r1_tmap_1(sK3,sK1,sK4,sK7) = iProver_top
    | r1_tarski(sK5,u1_struct_0(X0_52)) != iProver_top
    | m1_subset_1(sK7,u1_struct_0(X0_52)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
    | m1_pre_topc(X0_52,sK3) != iProver_top
    | v2_struct_0(X0_52) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | v2_pre_topc(sK1) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_2528])).

cnf(c_3010,plain,
    ( v2_struct_0(X0_52) = iProver_top
    | m1_pre_topc(X0_52,sK3) != iProver_top
    | r1_tmap_1(X0_52,sK1,k2_tmap_1(sK3,sK1,sK4,X0_52),sK7) != iProver_top
    | r1_tmap_1(sK3,sK1,sK4,sK7) = iProver_top
    | r1_tarski(sK5,u1_struct_0(X0_52)) != iProver_top
    | m1_subset_1(sK7,u1_struct_0(X0_52)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2544,c_32,c_33,c_34,c_41])).

cnf(c_3011,plain,
    ( r1_tmap_1(X0_52,sK1,k2_tmap_1(sK3,sK1,sK4,X0_52),sK7) != iProver_top
    | r1_tmap_1(sK3,sK1,sK4,sK7) = iProver_top
    | r1_tarski(sK5,u1_struct_0(X0_52)) != iProver_top
    | m1_subset_1(sK7,u1_struct_0(X0_52)) != iProver_top
    | m1_pre_topc(X0_52,sK3) != iProver_top
    | v2_struct_0(X0_52) = iProver_top ),
    inference(renaming,[status(thm)],[c_3010])).

cnf(c_3408,plain,
    ( r1_tmap_1(sK3,sK1,sK4,sK7) = iProver_top
    | r1_tarski(sK5,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK7,u1_struct_0(sK2)) != iProver_top
    | m1_pre_topc(sK2,sK3) != iProver_top
    | v2_struct_0(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_3341,c_3011])).

cnf(c_3411,plain,
    ( r1_tmap_1(sK2,sK1,k2_tmap_1(sK3,sK1,sK4,sK2),sK7) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3342,c_35,c_42,c_45,c_46,c_3408])).

cnf(c_3416,plain,
    ( r1_tmap_1(sK3,sK1,sK4,sK7) != iProver_top
    | r1_tarski(sK5,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK7,u1_struct_0(sK2)) != iProver_top
    | m1_pre_topc(sK2,sK3) != iProver_top
    | v2_struct_0(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_3081,c_3411])).

cnf(c_3417,plain,
    ( r1_tmap_1(sK3,sK1,sK4,sK7) = iProver_top ),
    inference(superposition,[status(thm)],[c_3341,c_3411])).

cnf(c_3425,plain,
    ( r1_tarski(sK5,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK7,u1_struct_0(sK2)) != iProver_top
    | m1_pre_topc(sK2,sK3) != iProver_top
    | v2_struct_0(sK2) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_3416,c_3417])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3425,c_46,c_45,c_42,c_35])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n011.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 15:54:42 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.98/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.98/0.99  
% 1.98/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.98/0.99  
% 1.98/0.99  ------  iProver source info
% 1.98/0.99  
% 1.98/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.98/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.98/0.99  git: non_committed_changes: false
% 1.98/0.99  git: last_make_outside_of_git: false
% 1.98/0.99  
% 1.98/0.99  ------ 
% 1.98/0.99  
% 1.98/0.99  ------ Input Options
% 1.98/0.99  
% 1.98/0.99  --out_options                           all
% 1.98/0.99  --tptp_safe_out                         true
% 1.98/0.99  --problem_path                          ""
% 1.98/0.99  --include_path                          ""
% 1.98/0.99  --clausifier                            res/vclausify_rel
% 1.98/0.99  --clausifier_options                    --mode clausify
% 1.98/0.99  --stdin                                 false
% 1.98/0.99  --stats_out                             all
% 1.98/0.99  
% 1.98/0.99  ------ General Options
% 1.98/0.99  
% 1.98/0.99  --fof                                   false
% 1.98/0.99  --time_out_real                         305.
% 1.98/0.99  --time_out_virtual                      -1.
% 1.98/0.99  --symbol_type_check                     false
% 1.98/0.99  --clausify_out                          false
% 1.98/0.99  --sig_cnt_out                           false
% 1.98/0.99  --trig_cnt_out                          false
% 1.98/0.99  --trig_cnt_out_tolerance                1.
% 1.98/0.99  --trig_cnt_out_sk_spl                   false
% 1.98/0.99  --abstr_cl_out                          false
% 1.98/0.99  
% 1.98/0.99  ------ Global Options
% 1.98/0.99  
% 1.98/0.99  --schedule                              default
% 1.98/0.99  --add_important_lit                     false
% 1.98/0.99  --prop_solver_per_cl                    1000
% 1.98/0.99  --min_unsat_core                        false
% 1.98/0.99  --soft_assumptions                      false
% 1.98/0.99  --soft_lemma_size                       3
% 1.98/0.99  --prop_impl_unit_size                   0
% 1.98/0.99  --prop_impl_unit                        []
% 1.98/0.99  --share_sel_clauses                     true
% 1.98/0.99  --reset_solvers                         false
% 1.98/0.99  --bc_imp_inh                            [conj_cone]
% 1.98/0.99  --conj_cone_tolerance                   3.
% 1.98/0.99  --extra_neg_conj                        none
% 1.98/0.99  --large_theory_mode                     true
% 1.98/0.99  --prolific_symb_bound                   200
% 1.98/0.99  --lt_threshold                          2000
% 1.98/0.99  --clause_weak_htbl                      true
% 1.98/0.99  --gc_record_bc_elim                     false
% 1.98/0.99  
% 1.98/0.99  ------ Preprocessing Options
% 1.98/0.99  
% 1.98/0.99  --preprocessing_flag                    true
% 1.98/0.99  --time_out_prep_mult                    0.1
% 1.98/0.99  --splitting_mode                        input
% 1.98/0.99  --splitting_grd                         true
% 1.98/0.99  --splitting_cvd                         false
% 1.98/0.99  --splitting_cvd_svl                     false
% 1.98/0.99  --splitting_nvd                         32
% 1.98/0.99  --sub_typing                            true
% 1.98/0.99  --prep_gs_sim                           true
% 1.98/0.99  --prep_unflatten                        true
% 1.98/0.99  --prep_res_sim                          true
% 1.98/0.99  --prep_upred                            true
% 1.98/0.99  --prep_sem_filter                       exhaustive
% 1.98/0.99  --prep_sem_filter_out                   false
% 1.98/0.99  --pred_elim                             true
% 1.98/0.99  --res_sim_input                         true
% 1.98/0.99  --eq_ax_congr_red                       true
% 1.98/0.99  --pure_diseq_elim                       true
% 1.98/0.99  --brand_transform                       false
% 1.98/0.99  --non_eq_to_eq                          false
% 1.98/0.99  --prep_def_merge                        true
% 1.98/0.99  --prep_def_merge_prop_impl              false
% 1.98/1.00  --prep_def_merge_mbd                    true
% 1.98/1.00  --prep_def_merge_tr_red                 false
% 1.98/1.00  --prep_def_merge_tr_cl                  false
% 1.98/1.00  --smt_preprocessing                     true
% 1.98/1.00  --smt_ac_axioms                         fast
% 1.98/1.00  --preprocessed_out                      false
% 1.98/1.00  --preprocessed_stats                    false
% 1.98/1.00  
% 1.98/1.00  ------ Abstraction refinement Options
% 1.98/1.00  
% 1.98/1.00  --abstr_ref                             []
% 1.98/1.00  --abstr_ref_prep                        false
% 1.98/1.00  --abstr_ref_until_sat                   false
% 1.98/1.00  --abstr_ref_sig_restrict                funpre
% 1.98/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 1.98/1.00  --abstr_ref_under                       []
% 1.98/1.00  
% 1.98/1.00  ------ SAT Options
% 1.98/1.00  
% 1.98/1.00  --sat_mode                              false
% 1.98/1.00  --sat_fm_restart_options                ""
% 1.98/1.00  --sat_gr_def                            false
% 1.98/1.00  --sat_epr_types                         true
% 1.98/1.00  --sat_non_cyclic_types                  false
% 1.98/1.00  --sat_finite_models                     false
% 1.98/1.00  --sat_fm_lemmas                         false
% 1.98/1.00  --sat_fm_prep                           false
% 1.98/1.00  --sat_fm_uc_incr                        true
% 1.98/1.00  --sat_out_model                         small
% 1.98/1.00  --sat_out_clauses                       false
% 1.98/1.00  
% 1.98/1.00  ------ QBF Options
% 1.98/1.00  
% 1.98/1.00  --qbf_mode                              false
% 1.98/1.00  --qbf_elim_univ                         false
% 1.98/1.00  --qbf_dom_inst                          none
% 1.98/1.00  --qbf_dom_pre_inst                      false
% 1.98/1.00  --qbf_sk_in                             false
% 1.98/1.00  --qbf_pred_elim                         true
% 1.98/1.00  --qbf_split                             512
% 1.98/1.00  
% 1.98/1.00  ------ BMC1 Options
% 1.98/1.00  
% 1.98/1.00  --bmc1_incremental                      false
% 1.98/1.00  --bmc1_axioms                           reachable_all
% 1.98/1.00  --bmc1_min_bound                        0
% 1.98/1.00  --bmc1_max_bound                        -1
% 1.98/1.00  --bmc1_max_bound_default                -1
% 1.98/1.00  --bmc1_symbol_reachability              true
% 1.98/1.00  --bmc1_property_lemmas                  false
% 1.98/1.00  --bmc1_k_induction                      false
% 1.98/1.00  --bmc1_non_equiv_states                 false
% 1.98/1.00  --bmc1_deadlock                         false
% 1.98/1.00  --bmc1_ucm                              false
% 1.98/1.00  --bmc1_add_unsat_core                   none
% 1.98/1.00  --bmc1_unsat_core_children              false
% 1.98/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 1.98/1.00  --bmc1_out_stat                         full
% 1.98/1.00  --bmc1_ground_init                      false
% 1.98/1.00  --bmc1_pre_inst_next_state              false
% 1.98/1.00  --bmc1_pre_inst_state                   false
% 1.98/1.00  --bmc1_pre_inst_reach_state             false
% 1.98/1.00  --bmc1_out_unsat_core                   false
% 1.98/1.00  --bmc1_aig_witness_out                  false
% 1.98/1.00  --bmc1_verbose                          false
% 1.98/1.00  --bmc1_dump_clauses_tptp                false
% 1.98/1.00  --bmc1_dump_unsat_core_tptp             false
% 1.98/1.00  --bmc1_dump_file                        -
% 1.98/1.00  --bmc1_ucm_expand_uc_limit              128
% 1.98/1.00  --bmc1_ucm_n_expand_iterations          6
% 1.98/1.00  --bmc1_ucm_extend_mode                  1
% 1.98/1.00  --bmc1_ucm_init_mode                    2
% 1.98/1.00  --bmc1_ucm_cone_mode                    none
% 1.98/1.00  --bmc1_ucm_reduced_relation_type        0
% 1.98/1.00  --bmc1_ucm_relax_model                  4
% 1.98/1.00  --bmc1_ucm_full_tr_after_sat            true
% 1.98/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 1.98/1.00  --bmc1_ucm_layered_model                none
% 1.98/1.00  --bmc1_ucm_max_lemma_size               10
% 1.98/1.00  
% 1.98/1.00  ------ AIG Options
% 1.98/1.00  
% 1.98/1.00  --aig_mode                              false
% 1.98/1.00  
% 1.98/1.00  ------ Instantiation Options
% 1.98/1.00  
% 1.98/1.00  --instantiation_flag                    true
% 1.98/1.00  --inst_sos_flag                         false
% 1.98/1.00  --inst_sos_phase                        true
% 1.98/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.98/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.98/1.00  --inst_lit_sel_side                     num_symb
% 1.98/1.00  --inst_solver_per_active                1400
% 1.98/1.00  --inst_solver_calls_frac                1.
% 1.98/1.00  --inst_passive_queue_type               priority_queues
% 1.98/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.98/1.00  --inst_passive_queues_freq              [25;2]
% 1.98/1.00  --inst_dismatching                      true
% 1.98/1.00  --inst_eager_unprocessed_to_passive     true
% 1.98/1.00  --inst_prop_sim_given                   true
% 1.98/1.00  --inst_prop_sim_new                     false
% 1.98/1.00  --inst_subs_new                         false
% 1.98/1.00  --inst_eq_res_simp                      false
% 1.98/1.00  --inst_subs_given                       false
% 1.98/1.00  --inst_orphan_elimination               true
% 1.98/1.00  --inst_learning_loop_flag               true
% 1.98/1.00  --inst_learning_start                   3000
% 1.98/1.00  --inst_learning_factor                  2
% 1.98/1.00  --inst_start_prop_sim_after_learn       3
% 1.98/1.00  --inst_sel_renew                        solver
% 1.98/1.00  --inst_lit_activity_flag                true
% 1.98/1.00  --inst_restr_to_given                   false
% 1.98/1.00  --inst_activity_threshold               500
% 1.98/1.00  --inst_out_proof                        true
% 1.98/1.00  
% 1.98/1.00  ------ Resolution Options
% 1.98/1.00  
% 1.98/1.00  --resolution_flag                       true
% 1.98/1.00  --res_lit_sel                           adaptive
% 1.98/1.00  --res_lit_sel_side                      none
% 1.98/1.00  --res_ordering                          kbo
% 1.98/1.00  --res_to_prop_solver                    active
% 1.98/1.00  --res_prop_simpl_new                    false
% 1.98/1.00  --res_prop_simpl_given                  true
% 1.98/1.00  --res_passive_queue_type                priority_queues
% 1.98/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.98/1.00  --res_passive_queues_freq               [15;5]
% 1.98/1.00  --res_forward_subs                      full
% 1.98/1.00  --res_backward_subs                     full
% 1.98/1.00  --res_forward_subs_resolution           true
% 1.98/1.00  --res_backward_subs_resolution          true
% 1.98/1.00  --res_orphan_elimination                true
% 1.98/1.00  --res_time_limit                        2.
% 1.98/1.00  --res_out_proof                         true
% 1.98/1.00  
% 1.98/1.00  ------ Superposition Options
% 1.98/1.00  
% 1.98/1.00  --superposition_flag                    true
% 1.98/1.00  --sup_passive_queue_type                priority_queues
% 1.98/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.98/1.00  --sup_passive_queues_freq               [8;1;4]
% 1.98/1.00  --demod_completeness_check              fast
% 1.98/1.00  --demod_use_ground                      true
% 1.98/1.00  --sup_to_prop_solver                    passive
% 1.98/1.00  --sup_prop_simpl_new                    true
% 1.98/1.00  --sup_prop_simpl_given                  true
% 1.98/1.00  --sup_fun_splitting                     false
% 1.98/1.00  --sup_smt_interval                      50000
% 1.98/1.00  
% 1.98/1.00  ------ Superposition Simplification Setup
% 1.98/1.00  
% 1.98/1.00  --sup_indices_passive                   []
% 1.98/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.98/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.98/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.98/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 1.98/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.98/1.00  --sup_full_bw                           [BwDemod]
% 1.98/1.00  --sup_immed_triv                        [TrivRules]
% 1.98/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.98/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.98/1.00  --sup_immed_bw_main                     []
% 1.98/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.98/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 1.98/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.98/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.98/1.00  
% 1.98/1.00  ------ Combination Options
% 1.98/1.00  
% 1.98/1.00  --comb_res_mult                         3
% 1.98/1.00  --comb_sup_mult                         2
% 1.98/1.00  --comb_inst_mult                        10
% 1.98/1.00  
% 1.98/1.00  ------ Debug Options
% 1.98/1.00  
% 1.98/1.00  --dbg_backtrace                         false
% 1.98/1.00  --dbg_dump_prop_clauses                 false
% 1.98/1.00  --dbg_dump_prop_clauses_file            -
% 1.98/1.00  --dbg_out_stat                          false
% 1.98/1.00  ------ Parsing...
% 1.98/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.98/1.00  
% 1.98/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 1.98/1.00  
% 1.98/1.00  ------ Preprocessing... gs_s  sp: 2 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.98/1.00  
% 1.98/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.98/1.00  ------ Proving...
% 1.98/1.00  ------ Problem Properties 
% 1.98/1.00  
% 1.98/1.00  
% 1.98/1.00  clauses                                 28
% 1.98/1.00  conjectures                             19
% 1.98/1.00  EPR                                     17
% 1.98/1.00  Horn                                    23
% 1.98/1.00  unary                                   17
% 1.98/1.00  binary                                  2
% 1.98/1.00  lits                                    86
% 1.98/1.00  lits eq                                 9
% 1.98/1.00  fd_pure                                 0
% 1.98/1.00  fd_pseudo                               0
% 1.98/1.00  fd_cond                                 0
% 1.98/1.00  fd_pseudo_cond                          0
% 1.98/1.00  AC symbols                              0
% 1.98/1.00  
% 1.98/1.00  ------ Schedule dynamic 5 is on 
% 1.98/1.00  
% 1.98/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.98/1.00  
% 1.98/1.00  
% 1.98/1.00  ------ 
% 1.98/1.00  Current options:
% 1.98/1.00  ------ 
% 1.98/1.00  
% 1.98/1.00  ------ Input Options
% 1.98/1.00  
% 1.98/1.00  --out_options                           all
% 1.98/1.00  --tptp_safe_out                         true
% 1.98/1.00  --problem_path                          ""
% 1.98/1.00  --include_path                          ""
% 1.98/1.00  --clausifier                            res/vclausify_rel
% 1.98/1.00  --clausifier_options                    --mode clausify
% 1.98/1.00  --stdin                                 false
% 1.98/1.00  --stats_out                             all
% 1.98/1.00  
% 1.98/1.00  ------ General Options
% 1.98/1.00  
% 1.98/1.00  --fof                                   false
% 1.98/1.00  --time_out_real                         305.
% 1.98/1.00  --time_out_virtual                      -1.
% 1.98/1.00  --symbol_type_check                     false
% 1.98/1.00  --clausify_out                          false
% 1.98/1.00  --sig_cnt_out                           false
% 1.98/1.00  --trig_cnt_out                          false
% 1.98/1.00  --trig_cnt_out_tolerance                1.
% 1.98/1.00  --trig_cnt_out_sk_spl                   false
% 1.98/1.00  --abstr_cl_out                          false
% 1.98/1.00  
% 1.98/1.00  ------ Global Options
% 1.98/1.00  
% 1.98/1.00  --schedule                              default
% 1.98/1.00  --add_important_lit                     false
% 1.98/1.00  --prop_solver_per_cl                    1000
% 1.98/1.00  --min_unsat_core                        false
% 1.98/1.00  --soft_assumptions                      false
% 1.98/1.00  --soft_lemma_size                       3
% 1.98/1.00  --prop_impl_unit_size                   0
% 1.98/1.00  --prop_impl_unit                        []
% 1.98/1.00  --share_sel_clauses                     true
% 1.98/1.00  --reset_solvers                         false
% 1.98/1.00  --bc_imp_inh                            [conj_cone]
% 1.98/1.00  --conj_cone_tolerance                   3.
% 1.98/1.00  --extra_neg_conj                        none
% 1.98/1.00  --large_theory_mode                     true
% 1.98/1.00  --prolific_symb_bound                   200
% 1.98/1.00  --lt_threshold                          2000
% 1.98/1.00  --clause_weak_htbl                      true
% 1.98/1.00  --gc_record_bc_elim                     false
% 1.98/1.00  
% 1.98/1.00  ------ Preprocessing Options
% 1.98/1.00  
% 1.98/1.00  --preprocessing_flag                    true
% 1.98/1.00  --time_out_prep_mult                    0.1
% 1.98/1.00  --splitting_mode                        input
% 1.98/1.00  --splitting_grd                         true
% 1.98/1.00  --splitting_cvd                         false
% 1.98/1.00  --splitting_cvd_svl                     false
% 1.98/1.00  --splitting_nvd                         32
% 1.98/1.00  --sub_typing                            true
% 1.98/1.00  --prep_gs_sim                           true
% 1.98/1.00  --prep_unflatten                        true
% 1.98/1.00  --prep_res_sim                          true
% 1.98/1.00  --prep_upred                            true
% 1.98/1.00  --prep_sem_filter                       exhaustive
% 1.98/1.00  --prep_sem_filter_out                   false
% 1.98/1.00  --pred_elim                             true
% 1.98/1.00  --res_sim_input                         true
% 1.98/1.00  --eq_ax_congr_red                       true
% 1.98/1.00  --pure_diseq_elim                       true
% 1.98/1.00  --brand_transform                       false
% 1.98/1.00  --non_eq_to_eq                          false
% 1.98/1.00  --prep_def_merge                        true
% 1.98/1.00  --prep_def_merge_prop_impl              false
% 1.98/1.00  --prep_def_merge_mbd                    true
% 1.98/1.00  --prep_def_merge_tr_red                 false
% 1.98/1.00  --prep_def_merge_tr_cl                  false
% 1.98/1.00  --smt_preprocessing                     true
% 1.98/1.00  --smt_ac_axioms                         fast
% 1.98/1.00  --preprocessed_out                      false
% 1.98/1.00  --preprocessed_stats                    false
% 1.98/1.00  
% 1.98/1.00  ------ Abstraction refinement Options
% 1.98/1.00  
% 1.98/1.00  --abstr_ref                             []
% 1.98/1.00  --abstr_ref_prep                        false
% 1.98/1.00  --abstr_ref_until_sat                   false
% 1.98/1.00  --abstr_ref_sig_restrict                funpre
% 1.98/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 1.98/1.00  --abstr_ref_under                       []
% 1.98/1.00  
% 1.98/1.00  ------ SAT Options
% 1.98/1.00  
% 1.98/1.00  --sat_mode                              false
% 1.98/1.00  --sat_fm_restart_options                ""
% 1.98/1.00  --sat_gr_def                            false
% 1.98/1.00  --sat_epr_types                         true
% 1.98/1.00  --sat_non_cyclic_types                  false
% 1.98/1.00  --sat_finite_models                     false
% 1.98/1.00  --sat_fm_lemmas                         false
% 1.98/1.00  --sat_fm_prep                           false
% 1.98/1.00  --sat_fm_uc_incr                        true
% 1.98/1.00  --sat_out_model                         small
% 1.98/1.00  --sat_out_clauses                       false
% 1.98/1.00  
% 1.98/1.00  ------ QBF Options
% 1.98/1.00  
% 1.98/1.00  --qbf_mode                              false
% 1.98/1.00  --qbf_elim_univ                         false
% 1.98/1.00  --qbf_dom_inst                          none
% 1.98/1.00  --qbf_dom_pre_inst                      false
% 1.98/1.00  --qbf_sk_in                             false
% 1.98/1.00  --qbf_pred_elim                         true
% 1.98/1.00  --qbf_split                             512
% 1.98/1.00  
% 1.98/1.00  ------ BMC1 Options
% 1.98/1.00  
% 1.98/1.00  --bmc1_incremental                      false
% 1.98/1.00  --bmc1_axioms                           reachable_all
% 1.98/1.00  --bmc1_min_bound                        0
% 1.98/1.00  --bmc1_max_bound                        -1
% 1.98/1.00  --bmc1_max_bound_default                -1
% 1.98/1.00  --bmc1_symbol_reachability              true
% 1.98/1.00  --bmc1_property_lemmas                  false
% 1.98/1.00  --bmc1_k_induction                      false
% 1.98/1.00  --bmc1_non_equiv_states                 false
% 1.98/1.00  --bmc1_deadlock                         false
% 1.98/1.00  --bmc1_ucm                              false
% 1.98/1.00  --bmc1_add_unsat_core                   none
% 1.98/1.00  --bmc1_unsat_core_children              false
% 1.98/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 1.98/1.00  --bmc1_out_stat                         full
% 1.98/1.00  --bmc1_ground_init                      false
% 1.98/1.00  --bmc1_pre_inst_next_state              false
% 1.98/1.00  --bmc1_pre_inst_state                   false
% 1.98/1.00  --bmc1_pre_inst_reach_state             false
% 1.98/1.00  --bmc1_out_unsat_core                   false
% 1.98/1.00  --bmc1_aig_witness_out                  false
% 1.98/1.00  --bmc1_verbose                          false
% 1.98/1.00  --bmc1_dump_clauses_tptp                false
% 1.98/1.00  --bmc1_dump_unsat_core_tptp             false
% 1.98/1.00  --bmc1_dump_file                        -
% 1.98/1.00  --bmc1_ucm_expand_uc_limit              128
% 1.98/1.00  --bmc1_ucm_n_expand_iterations          6
% 1.98/1.00  --bmc1_ucm_extend_mode                  1
% 1.98/1.00  --bmc1_ucm_init_mode                    2
% 1.98/1.00  --bmc1_ucm_cone_mode                    none
% 1.98/1.00  --bmc1_ucm_reduced_relation_type        0
% 1.98/1.00  --bmc1_ucm_relax_model                  4
% 1.98/1.00  --bmc1_ucm_full_tr_after_sat            true
% 1.98/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 1.98/1.00  --bmc1_ucm_layered_model                none
% 1.98/1.00  --bmc1_ucm_max_lemma_size               10
% 1.98/1.00  
% 1.98/1.00  ------ AIG Options
% 1.98/1.00  
% 1.98/1.00  --aig_mode                              false
% 1.98/1.00  
% 1.98/1.00  ------ Instantiation Options
% 1.98/1.00  
% 1.98/1.00  --instantiation_flag                    true
% 1.98/1.00  --inst_sos_flag                         false
% 1.98/1.00  --inst_sos_phase                        true
% 1.98/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.98/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.98/1.00  --inst_lit_sel_side                     none
% 1.98/1.00  --inst_solver_per_active                1400
% 1.98/1.00  --inst_solver_calls_frac                1.
% 1.98/1.00  --inst_passive_queue_type               priority_queues
% 1.98/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.98/1.00  --inst_passive_queues_freq              [25;2]
% 1.98/1.00  --inst_dismatching                      true
% 1.98/1.00  --inst_eager_unprocessed_to_passive     true
% 1.98/1.00  --inst_prop_sim_given                   true
% 1.98/1.00  --inst_prop_sim_new                     false
% 1.98/1.00  --inst_subs_new                         false
% 1.98/1.00  --inst_eq_res_simp                      false
% 1.98/1.00  --inst_subs_given                       false
% 1.98/1.00  --inst_orphan_elimination               true
% 1.98/1.00  --inst_learning_loop_flag               true
% 1.98/1.00  --inst_learning_start                   3000
% 1.98/1.00  --inst_learning_factor                  2
% 1.98/1.00  --inst_start_prop_sim_after_learn       3
% 1.98/1.00  --inst_sel_renew                        solver
% 1.98/1.00  --inst_lit_activity_flag                true
% 1.98/1.00  --inst_restr_to_given                   false
% 1.98/1.00  --inst_activity_threshold               500
% 1.98/1.00  --inst_out_proof                        true
% 1.98/1.00  
% 1.98/1.00  ------ Resolution Options
% 1.98/1.00  
% 1.98/1.00  --resolution_flag                       false
% 1.98/1.00  --res_lit_sel                           adaptive
% 1.98/1.00  --res_lit_sel_side                      none
% 1.98/1.00  --res_ordering                          kbo
% 1.98/1.00  --res_to_prop_solver                    active
% 1.98/1.00  --res_prop_simpl_new                    false
% 1.98/1.00  --res_prop_simpl_given                  true
% 1.98/1.00  --res_passive_queue_type                priority_queues
% 1.98/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.98/1.00  --res_passive_queues_freq               [15;5]
% 1.98/1.00  --res_forward_subs                      full
% 1.98/1.00  --res_backward_subs                     full
% 1.98/1.00  --res_forward_subs_resolution           true
% 1.98/1.00  --res_backward_subs_resolution          true
% 1.98/1.00  --res_orphan_elimination                true
% 1.98/1.00  --res_time_limit                        2.
% 1.98/1.00  --res_out_proof                         true
% 1.98/1.00  
% 1.98/1.00  ------ Superposition Options
% 1.98/1.00  
% 1.98/1.00  --superposition_flag                    true
% 1.98/1.00  --sup_passive_queue_type                priority_queues
% 1.98/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.98/1.00  --sup_passive_queues_freq               [8;1;4]
% 1.98/1.00  --demod_completeness_check              fast
% 1.98/1.00  --demod_use_ground                      true
% 1.98/1.00  --sup_to_prop_solver                    passive
% 1.98/1.00  --sup_prop_simpl_new                    true
% 1.98/1.00  --sup_prop_simpl_given                  true
% 1.98/1.00  --sup_fun_splitting                     false
% 1.98/1.00  --sup_smt_interval                      50000
% 1.98/1.00  
% 1.98/1.00  ------ Superposition Simplification Setup
% 1.98/1.00  
% 1.98/1.00  --sup_indices_passive                   []
% 1.98/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.98/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.98/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.98/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 1.98/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.98/1.00  --sup_full_bw                           [BwDemod]
% 1.98/1.00  --sup_immed_triv                        [TrivRules]
% 1.98/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.98/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.98/1.00  --sup_immed_bw_main                     []
% 1.98/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.98/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 1.98/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.98/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.98/1.00  
% 1.98/1.00  ------ Combination Options
% 1.98/1.00  
% 1.98/1.00  --comb_res_mult                         3
% 1.98/1.00  --comb_sup_mult                         2
% 1.98/1.00  --comb_inst_mult                        10
% 1.98/1.00  
% 1.98/1.00  ------ Debug Options
% 1.98/1.00  
% 1.98/1.00  --dbg_backtrace                         false
% 1.98/1.00  --dbg_dump_prop_clauses                 false
% 1.98/1.00  --dbg_dump_prop_clauses_file            -
% 1.98/1.00  --dbg_out_stat                          false
% 1.98/1.00  
% 1.98/1.00  
% 1.98/1.00  
% 1.98/1.00  
% 1.98/1.00  ------ Proving...
% 1.98/1.00  
% 1.98/1.00  
% 1.98/1.00  % SZS status Theorem for theBenchmark.p
% 1.98/1.00  
% 1.98/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 1.98/1.00  
% 1.98/1.00  fof(f7,conjecture,(
% 1.98/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) => (m1_pre_topc(X2,X3) => ! [X5] : (m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) => ! [X6] : (m1_subset_1(X6,u1_struct_0(X3)) => ! [X7] : (m1_subset_1(X7,u1_struct_0(X2)) => ((X6 = X7 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(X2))) => (r1_tmap_1(X3,X1,X4,X6) <=> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7))))))))))))),
% 1.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.98/1.00  
% 1.98/1.00  fof(f8,negated_conjecture,(
% 1.98/1.00    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) => (m1_pre_topc(X2,X3) => ! [X5] : (m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) => ! [X6] : (m1_subset_1(X6,u1_struct_0(X3)) => ! [X7] : (m1_subset_1(X7,u1_struct_0(X2)) => ((X6 = X7 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(X2))) => (r1_tmap_1(X3,X1,X4,X6) <=> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7))))))))))))),
% 1.98/1.00    inference(negated_conjecture,[],[f7])).
% 1.98/1.00  
% 1.98/1.00  fof(f20,plain,(
% 1.98/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : ((? [X5] : (? [X6] : (? [X7] : (((r1_tmap_1(X3,X1,X4,X6) <~> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)) & (X6 = X7 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(X2)))) & m1_subset_1(X7,u1_struct_0(X2))) & m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))) & m1_pre_topc(X2,X3)) & (m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4))) & (m1_pre_topc(X3,X0) & ~v2_struct_0(X3))) & (m1_pre_topc(X2,X0) & ~v2_struct_0(X2))) & (l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 1.98/1.00    inference(ennf_transformation,[],[f8])).
% 1.98/1.00  
% 1.98/1.00  fof(f21,plain,(
% 1.98/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : (? [X7] : ((r1_tmap_1(X3,X1,X4,X6) <~> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)) & X6 = X7 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(X2)) & m1_subset_1(X7,u1_struct_0(X2))) & m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.98/1.00    inference(flattening,[],[f20])).
% 1.98/1.00  
% 1.98/1.00  fof(f23,plain,(
% 1.98/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : (? [X7] : (((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | ~r1_tmap_1(X3,X1,X4,X6)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | r1_tmap_1(X3,X1,X4,X6))) & X6 = X7 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(X2)) & m1_subset_1(X7,u1_struct_0(X2))) & m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.98/1.00    inference(nnf_transformation,[],[f21])).
% 1.98/1.00  
% 1.98/1.00  fof(f24,plain,(
% 1.98/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : (? [X7] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | ~r1_tmap_1(X3,X1,X4,X6)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | r1_tmap_1(X3,X1,X4,X6)) & X6 = X7 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(X2)) & m1_subset_1(X7,u1_struct_0(X2))) & m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.98/1.00    inference(flattening,[],[f23])).
% 1.98/1.00  
% 1.98/1.00  fof(f32,plain,(
% 1.98/1.00    ( ! [X6,X4,X2,X0,X5,X3,X1] : (? [X7] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | ~r1_tmap_1(X3,X1,X4,X6)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | r1_tmap_1(X3,X1,X4,X6)) & X6 = X7 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(X2)) & m1_subset_1(X7,u1_struct_0(X2))) => ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),sK7) | ~r1_tmap_1(X3,X1,X4,X6)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),sK7) | r1_tmap_1(X3,X1,X4,X6)) & sK7 = X6 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(X2)) & m1_subset_1(sK7,u1_struct_0(X2)))) )),
% 1.98/1.00    introduced(choice_axiom,[])).
% 1.98/1.00  
% 1.98/1.00  fof(f31,plain,(
% 1.98/1.00    ( ! [X4,X2,X0,X5,X3,X1] : (? [X6] : (? [X7] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | ~r1_tmap_1(X3,X1,X4,X6)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | r1_tmap_1(X3,X1,X4,X6)) & X6 = X7 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(X2)) & m1_subset_1(X7,u1_struct_0(X2))) & m1_subset_1(X6,u1_struct_0(X3))) => (? [X7] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | ~r1_tmap_1(X3,X1,X4,sK6)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | r1_tmap_1(X3,X1,X4,sK6)) & sK6 = X7 & m1_connsp_2(X5,X3,sK6) & r1_tarski(X5,u1_struct_0(X2)) & m1_subset_1(X7,u1_struct_0(X2))) & m1_subset_1(sK6,u1_struct_0(X3)))) )),
% 1.98/1.00    introduced(choice_axiom,[])).
% 1.98/1.00  
% 1.98/1.00  fof(f30,plain,(
% 1.98/1.00    ( ! [X4,X2,X0,X3,X1] : (? [X5] : (? [X6] : (? [X7] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | ~r1_tmap_1(X3,X1,X4,X6)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | r1_tmap_1(X3,X1,X4,X6)) & X6 = X7 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(X2)) & m1_subset_1(X7,u1_struct_0(X2))) & m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))) => (? [X6] : (? [X7] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | ~r1_tmap_1(X3,X1,X4,X6)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | r1_tmap_1(X3,X1,X4,X6)) & X6 = X7 & m1_connsp_2(sK5,X3,X6) & r1_tarski(sK5,u1_struct_0(X2)) & m1_subset_1(X7,u1_struct_0(X2))) & m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(X3))))) )),
% 1.98/1.00    introduced(choice_axiom,[])).
% 1.98/1.00  
% 1.98/1.00  fof(f29,plain,(
% 1.98/1.00    ( ! [X2,X0,X3,X1] : (? [X4] : (? [X5] : (? [X6] : (? [X7] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | ~r1_tmap_1(X3,X1,X4,X6)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | r1_tmap_1(X3,X1,X4,X6)) & X6 = X7 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(X2)) & m1_subset_1(X7,u1_struct_0(X2))) & m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) => (? [X5] : (? [X6] : (? [X7] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,sK4),X7) | ~r1_tmap_1(X3,X1,sK4,X6)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,sK4),X7) | r1_tmap_1(X3,X1,sK4,X6)) & X6 = X7 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(X2)) & m1_subset_1(X7,u1_struct_0(X2))) & m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))) & m1_pre_topc(X2,X3) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(sK4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(sK4))) )),
% 1.98/1.00    introduced(choice_axiom,[])).
% 1.98/1.00  
% 1.98/1.00  fof(f28,plain,(
% 1.98/1.00    ( ! [X2,X0,X1] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : (? [X7] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | ~r1_tmap_1(X3,X1,X4,X6)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | r1_tmap_1(X3,X1,X4,X6)) & X6 = X7 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(X2)) & m1_subset_1(X7,u1_struct_0(X2))) & m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => (? [X4] : (? [X5] : (? [X6] : (? [X7] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,sK3,X2,X4),X7) | ~r1_tmap_1(sK3,X1,X4,X6)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,sK3,X2,X4),X7) | r1_tmap_1(sK3,X1,X4,X6)) & X6 = X7 & m1_connsp_2(X5,sK3,X6) & r1_tarski(X5,u1_struct_0(X2)) & m1_subset_1(X7,u1_struct_0(X2))) & m1_subset_1(X6,u1_struct_0(sK3))) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(sK3)))) & m1_pre_topc(X2,sK3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(sK3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(sK3,X0) & ~v2_struct_0(sK3))) )),
% 1.98/1.00    introduced(choice_axiom,[])).
% 1.98/1.00  
% 1.98/1.00  fof(f27,plain,(
% 1.98/1.00    ( ! [X0,X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : (? [X7] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | ~r1_tmap_1(X3,X1,X4,X6)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | r1_tmap_1(X3,X1,X4,X6)) & X6 = X7 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(X2)) & m1_subset_1(X7,u1_struct_0(X2))) & m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => (? [X3] : (? [X4] : (? [X5] : (? [X6] : (? [X7] : ((~r1_tmap_1(sK2,X1,k3_tmap_1(X0,X1,X3,sK2,X4),X7) | ~r1_tmap_1(X3,X1,X4,X6)) & (r1_tmap_1(sK2,X1,k3_tmap_1(X0,X1,X3,sK2,X4),X7) | r1_tmap_1(X3,X1,X4,X6)) & X6 = X7 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(sK2)) & m1_subset_1(X7,u1_struct_0(sK2))) & m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))) & m1_pre_topc(sK2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(sK2,X0) & ~v2_struct_0(sK2))) )),
% 1.98/1.00    introduced(choice_axiom,[])).
% 1.98/1.00  
% 1.98/1.00  fof(f26,plain,(
% 1.98/1.00    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : (? [X7] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | ~r1_tmap_1(X3,X1,X4,X6)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | r1_tmap_1(X3,X1,X4,X6)) & X6 = X7 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(X2)) & m1_subset_1(X7,u1_struct_0(X2))) & m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : (? [X7] : ((~r1_tmap_1(X2,sK1,k3_tmap_1(X0,sK1,X3,X2,X4),X7) | ~r1_tmap_1(X3,sK1,X4,X6)) & (r1_tmap_1(X2,sK1,k3_tmap_1(X0,sK1,X3,X2,X4),X7) | r1_tmap_1(X3,sK1,X4,X6)) & X6 = X7 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(X2)) & m1_subset_1(X7,u1_struct_0(X2))) & m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(sK1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(sK1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1))) )),
% 1.98/1.00    introduced(choice_axiom,[])).
% 1.98/1.00  
% 1.98/1.00  fof(f25,plain,(
% 1.98/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : (? [X7] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | ~r1_tmap_1(X3,X1,X4,X6)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | r1_tmap_1(X3,X1,X4,X6)) & X6 = X7 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(X2)) & m1_subset_1(X7,u1_struct_0(X2))) & m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : (? [X7] : ((~r1_tmap_1(X2,X1,k3_tmap_1(sK0,X1,X3,X2,X4),X7) | ~r1_tmap_1(X3,X1,X4,X6)) & (r1_tmap_1(X2,X1,k3_tmap_1(sK0,X1,X3,X2,X4),X7) | r1_tmap_1(X3,X1,X4,X6)) & X6 = X7 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(X2)) & m1_subset_1(X7,u1_struct_0(X2))) & m1_subset_1(X6,u1_struct_0(X3))) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))) & m1_pre_topc(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,sK0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,sK0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0))),
% 1.98/1.00    introduced(choice_axiom,[])).
% 1.98/1.00  
% 1.98/1.00  fof(f33,plain,(
% 1.98/1.00    ((((((((~r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) | ~r1_tmap_1(sK3,sK1,sK4,sK6)) & (r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) | r1_tmap_1(sK3,sK1,sK4,sK6)) & sK6 = sK7 & m1_connsp_2(sK5,sK3,sK6) & r1_tarski(sK5,u1_struct_0(sK2)) & m1_subset_1(sK7,u1_struct_0(sK2))) & m1_subset_1(sK6,u1_struct_0(sK3))) & m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK3)))) & m1_pre_topc(sK2,sK3) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) & v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1)) & v1_funct_1(sK4)) & m1_pre_topc(sK3,sK0) & ~v2_struct_0(sK3)) & m1_pre_topc(sK2,sK0) & ~v2_struct_0(sK2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0)),
% 1.98/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7])],[f24,f32,f31,f30,f29,f28,f27,f26,f25])).
% 1.98/1.00  
% 1.98/1.00  fof(f52,plain,(
% 1.98/1.00    v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1))),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f5,axiom,(
% 1.98/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) & v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) & v1_funct_1(X2)) => ! [X3] : ((m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) => ! [X4] : (m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) => ! [X5] : (m1_subset_1(X5,u1_struct_0(X1)) => ! [X6] : (m1_subset_1(X6,u1_struct_0(X3)) => ((X5 = X6 & m1_connsp_2(X4,X1,X5) & r1_tarski(X4,u1_struct_0(X3))) => (r1_tmap_1(X1,X0,X2,X5) <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6))))))))))),
% 1.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.98/1.00  
% 1.98/1.00  fof(f16,plain,(
% 1.98/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : (! [X6] : (((r1_tmap_1(X1,X0,X2,X5) <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6)) | (X5 != X6 | ~m1_connsp_2(X4,X1,X5) | ~r1_tarski(X4,u1_struct_0(X3)))) | ~m1_subset_1(X6,u1_struct_0(X3))) | ~m1_subset_1(X5,u1_struct_0(X1))) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) | (~m1_pre_topc(X3,X1) | v2_struct_0(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2))) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 1.98/1.00    inference(ennf_transformation,[],[f5])).
% 1.98/1.00  
% 1.98/1.00  fof(f17,plain,(
% 1.98/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : (! [X6] : ((r1_tmap_1(X1,X0,X2,X5) <=> r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6)) | X5 != X6 | ~m1_connsp_2(X4,X1,X5) | ~r1_tarski(X4,u1_struct_0(X3)) | ~m1_subset_1(X6,u1_struct_0(X3))) | ~m1_subset_1(X5,u1_struct_0(X1))) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) | ~m1_pre_topc(X3,X1) | v2_struct_0(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.98/1.00    inference(flattening,[],[f16])).
% 1.98/1.00  
% 1.98/1.00  fof(f22,plain,(
% 1.98/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : (! [X6] : (((r1_tmap_1(X1,X0,X2,X5) | ~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6)) & (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6) | ~r1_tmap_1(X1,X0,X2,X5))) | X5 != X6 | ~m1_connsp_2(X4,X1,X5) | ~r1_tarski(X4,u1_struct_0(X3)) | ~m1_subset_1(X6,u1_struct_0(X3))) | ~m1_subset_1(X5,u1_struct_0(X1))) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))) | ~m1_pre_topc(X3,X1) | v2_struct_0(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.98/1.00    inference(nnf_transformation,[],[f17])).
% 1.98/1.00  
% 1.98/1.00  fof(f38,plain,(
% 1.98/1.00    ( ! [X6,X4,X2,X0,X5,X3,X1] : (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6) | ~r1_tmap_1(X1,X0,X2,X5) | X5 != X6 | ~m1_connsp_2(X4,X1,X5) | ~r1_tarski(X4,u1_struct_0(X3)) | ~m1_subset_1(X6,u1_struct_0(X3)) | ~m1_subset_1(X5,u1_struct_0(X1)) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) | ~m1_pre_topc(X3,X1) | v2_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.98/1.00    inference(cnf_transformation,[],[f22])).
% 1.98/1.00  
% 1.98/1.00  fof(f64,plain,(
% 1.98/1.00    ( ! [X6,X4,X2,X0,X3,X1] : (r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6) | ~r1_tmap_1(X1,X0,X2,X6) | ~m1_connsp_2(X4,X1,X6) | ~r1_tarski(X4,u1_struct_0(X3)) | ~m1_subset_1(X6,u1_struct_0(X3)) | ~m1_subset_1(X6,u1_struct_0(X1)) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) | ~m1_pre_topc(X3,X1) | v2_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.98/1.00    inference(equality_resolution,[],[f38])).
% 1.98/1.00  
% 1.98/1.00  fof(f59,plain,(
% 1.98/1.00    m1_connsp_2(sK5,sK3,sK6)),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f49,plain,(
% 1.98/1.00    ~v2_struct_0(sK3)),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f55,plain,(
% 1.98/1.00    m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK3)))),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f56,plain,(
% 1.98/1.00    m1_subset_1(sK6,u1_struct_0(sK3))),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f51,plain,(
% 1.98/1.00    v1_funct_1(sK4)),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f60,plain,(
% 1.98/1.00    sK6 = sK7),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f42,plain,(
% 1.98/1.00    v2_pre_topc(sK0)),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f43,plain,(
% 1.98/1.00    l1_pre_topc(sK0)),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f50,plain,(
% 1.98/1.00    m1_pre_topc(sK3,sK0)),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f2,axiom,(
% 1.98/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => l1_pre_topc(X1)))),
% 1.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.98/1.00  
% 1.98/1.00  fof(f11,plain,(
% 1.98/1.00    ! [X0] : (! [X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 1.98/1.00    inference(ennf_transformation,[],[f2])).
% 1.98/1.00  
% 1.98/1.00  fof(f35,plain,(
% 1.98/1.00    ( ! [X0,X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 1.98/1.00    inference(cnf_transformation,[],[f11])).
% 1.98/1.00  
% 1.98/1.00  fof(f1,axiom,(
% 1.98/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => v2_pre_topc(X1)))),
% 1.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.98/1.00  
% 1.98/1.00  fof(f9,plain,(
% 1.98/1.00    ! [X0] : (! [X1] : (v2_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 1.98/1.00    inference(ennf_transformation,[],[f1])).
% 1.98/1.00  
% 1.98/1.00  fof(f10,plain,(
% 1.98/1.00    ! [X0] : (! [X1] : (v2_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 1.98/1.00    inference(flattening,[],[f9])).
% 1.98/1.00  
% 1.98/1.00  fof(f34,plain,(
% 1.98/1.00    ( ! [X0,X1] : (v2_pre_topc(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 1.98/1.00    inference(cnf_transformation,[],[f10])).
% 1.98/1.00  
% 1.98/1.00  fof(f44,plain,(
% 1.98/1.00    ~v2_struct_0(sK1)),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f45,plain,(
% 1.98/1.00    v2_pre_topc(sK1)),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f46,plain,(
% 1.98/1.00    l1_pre_topc(sK1)),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f53,plain,(
% 1.98/1.00    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1))))),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f54,plain,(
% 1.98/1.00    m1_pre_topc(sK2,sK3)),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f4,axiom,(
% 1.98/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : (m1_pre_topc(X2,X0) => ! [X3] : (m1_pre_topc(X3,X0) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X4)) => (m1_pre_topc(X3,X2) => k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4)))))))),
% 1.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.98/1.00  
% 1.98/1.00  fof(f14,plain,(
% 1.98/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : ((k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) | ~m1_pre_topc(X3,X2)) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4))) | ~m1_pre_topc(X3,X0)) | ~m1_pre_topc(X2,X0)) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 1.98/1.00    inference(ennf_transformation,[],[f4])).
% 1.98/1.00  
% 1.98/1.00  fof(f15,plain,(
% 1.98/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) | ~m1_pre_topc(X3,X2) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4)) | ~m1_pre_topc(X3,X0)) | ~m1_pre_topc(X2,X0)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.98/1.00    inference(flattening,[],[f14])).
% 1.98/1.00  
% 1.98/1.00  fof(f37,plain,(
% 1.98/1.00    ( ! [X4,X2,X0,X3,X1] : (k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) | ~m1_pre_topc(X3,X2) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | ~m1_pre_topc(X2,X0) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.98/1.00    inference(cnf_transformation,[],[f15])).
% 1.98/1.00  
% 1.98/1.00  fof(f6,axiom,(
% 1.98/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => ! [X2] : (m1_pre_topc(X2,X1) => m1_pre_topc(X2,X0))))),
% 1.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.98/1.00  
% 1.98/1.00  fof(f18,plain,(
% 1.98/1.00    ! [X0] : (! [X1] : (! [X2] : (m1_pre_topc(X2,X0) | ~m1_pre_topc(X2,X1)) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 1.98/1.00    inference(ennf_transformation,[],[f6])).
% 1.98/1.00  
% 1.98/1.00  fof(f19,plain,(
% 1.98/1.00    ! [X0] : (! [X1] : (! [X2] : (m1_pre_topc(X2,X0) | ~m1_pre_topc(X2,X1)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 1.98/1.00    inference(flattening,[],[f18])).
% 1.98/1.00  
% 1.98/1.00  fof(f40,plain,(
% 1.98/1.00    ( ! [X2,X0,X1] : (m1_pre_topc(X2,X0) | ~m1_pre_topc(X2,X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 1.98/1.00    inference(cnf_transformation,[],[f19])).
% 1.98/1.00  
% 1.98/1.00  fof(f3,axiom,(
% 1.98/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) & v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) & v1_funct_1(X2)) => ! [X3] : (m1_pre_topc(X3,X0) => k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3))))))),
% 1.98/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.98/1.00  
% 1.98/1.00  fof(f12,plain,(
% 1.98/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) | ~m1_pre_topc(X3,X0)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2))) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 1.98/1.00    inference(ennf_transformation,[],[f3])).
% 1.98/1.00  
% 1.98/1.00  fof(f13,plain,(
% 1.98/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) | ~m1_pre_topc(X3,X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.98/1.00    inference(flattening,[],[f12])).
% 1.98/1.00  
% 1.98/1.00  fof(f36,plain,(
% 1.98/1.00    ( ! [X2,X0,X3,X1] : (k2_tmap_1(X0,X1,X2,X3) = k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),X2,u1_struct_0(X3)) | ~m1_pre_topc(X3,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1)))) | ~v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.98/1.00    inference(cnf_transformation,[],[f13])).
% 1.98/1.00  
% 1.98/1.00  fof(f41,plain,(
% 1.98/1.00    ~v2_struct_0(sK0)),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f62,plain,(
% 1.98/1.00    ~r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) | ~r1_tmap_1(sK3,sK1,sK4,sK6)),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f47,plain,(
% 1.98/1.00    ~v2_struct_0(sK2)),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f57,plain,(
% 1.98/1.00    m1_subset_1(sK7,u1_struct_0(sK2))),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f58,plain,(
% 1.98/1.00    r1_tarski(sK5,u1_struct_0(sK2))),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f61,plain,(
% 1.98/1.00    r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) | r1_tmap_1(sK3,sK1,sK4,sK6)),
% 1.98/1.00    inference(cnf_transformation,[],[f33])).
% 1.98/1.00  
% 1.98/1.00  fof(f39,plain,(
% 1.98/1.00    ( ! [X6,X4,X2,X0,X5,X3,X1] : (r1_tmap_1(X1,X0,X2,X5) | ~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6) | X5 != X6 | ~m1_connsp_2(X4,X1,X5) | ~r1_tarski(X4,u1_struct_0(X3)) | ~m1_subset_1(X6,u1_struct_0(X3)) | ~m1_subset_1(X5,u1_struct_0(X1)) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) | ~m1_pre_topc(X3,X1) | v2_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.98/1.00    inference(cnf_transformation,[],[f22])).
% 1.98/1.00  
% 1.98/1.00  fof(f63,plain,(
% 1.98/1.00    ( ! [X6,X4,X2,X0,X3,X1] : (r1_tmap_1(X1,X0,X2,X6) | ~r1_tmap_1(X3,X0,k2_tmap_1(X1,X0,X2,X3),X6) | ~m1_connsp_2(X4,X1,X6) | ~r1_tarski(X4,u1_struct_0(X3)) | ~m1_subset_1(X6,u1_struct_0(X3)) | ~m1_subset_1(X6,u1_struct_0(X1)) | ~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) | ~m1_pre_topc(X3,X1) | v2_struct_0(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X0)))) | ~v1_funct_2(X2,u1_struct_0(X1),u1_struct_0(X0)) | ~v1_funct_1(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.98/1.00    inference(equality_resolution,[],[f39])).
% 1.98/1.00  
% 1.98/1.00  cnf(c_17,negated_conjecture,
% 1.98/1.00      ( v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK1)) ),
% 1.98/1.00      inference(cnf_transformation,[],[f52]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_5,plain,
% 1.98/1.00      ( ~ r1_tmap_1(X0,X1,X2,X3)
% 1.98/1.00      | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
% 1.98/1.00      | ~ m1_connsp_2(X5,X0,X3)
% 1.98/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 1.98/1.00      | ~ r1_tarski(X5,u1_struct_0(X4))
% 1.98/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0)))
% 1.98/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 1.98/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_pre_topc(X4,X0)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X0)
% 1.98/1.00      | v2_struct_0(X4)
% 1.98/1.00      | ~ v1_funct_1(X2)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(X0)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(X0) ),
% 1.98/1.00      inference(cnf_transformation,[],[f64]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_10,negated_conjecture,
% 1.98/1.00      ( m1_connsp_2(sK5,sK3,sK6) ),
% 1.98/1.00      inference(cnf_transformation,[],[f59]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_349,plain,
% 1.98/1.00      ( ~ r1_tmap_1(X0,X1,X2,X3)
% 1.98/1.00      | r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
% 1.98/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 1.98/1.00      | ~ r1_tarski(X5,u1_struct_0(X4))
% 1.98/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0)))
% 1.98/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 1.98/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_pre_topc(X4,X0)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X0)
% 1.98/1.00      | v2_struct_0(X4)
% 1.98/1.00      | ~ v1_funct_1(X2)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(X0)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(X0)
% 1.98/1.00      | sK5 != X5
% 1.98/1.00      | sK6 != X3
% 1.98/1.00      | sK3 != X0 ),
% 1.98/1.00      inference(resolution_lifted,[status(thm)],[c_5,c_10]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_350,plain,
% 1.98/1.00      ( r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,X2,X0),sK6)
% 1.98/1.00      | ~ r1_tmap_1(sK3,X1,X2,sK6)
% 1.98/1.00      | ~ v1_funct_2(X2,u1_struct_0(sK3),u1_struct_0(X1))
% 1.98/1.00      | ~ r1_tarski(sK5,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK3)))
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(sK3))
% 1.98/1.00      | ~ m1_pre_topc(X0,sK3)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X0)
% 1.98/1.00      | v2_struct_0(sK3)
% 1.98/1.00      | ~ v1_funct_1(X2)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(sK3)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(sK3) ),
% 1.98/1.00      inference(unflattening,[status(thm)],[c_349]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_20,negated_conjecture,
% 1.98/1.00      ( ~ v2_struct_0(sK3) ),
% 1.98/1.00      inference(cnf_transformation,[],[f49]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_14,negated_conjecture,
% 1.98/1.00      ( m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK3))) ),
% 1.98/1.00      inference(cnf_transformation,[],[f55]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_13,negated_conjecture,
% 1.98/1.00      ( m1_subset_1(sK6,u1_struct_0(sK3)) ),
% 1.98/1.00      inference(cnf_transformation,[],[f56]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_354,plain,
% 1.98/1.00      ( v2_struct_0(X0)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | ~ m1_pre_topc(X0,sK3)
% 1.98/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
% 1.98/1.00      | ~ r1_tarski(sK5,u1_struct_0(X0))
% 1.98/1.00      | ~ v1_funct_2(X2,u1_struct_0(sK3),u1_struct_0(X1))
% 1.98/1.00      | ~ r1_tmap_1(sK3,X1,X2,sK6)
% 1.98/1.00      | r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,X2,X0),sK6)
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(X0))
% 1.98/1.00      | ~ v1_funct_1(X2)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(sK3)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(sK3) ),
% 1.98/1.00      inference(global_propositional_subsumption,
% 1.98/1.00                [status(thm)],
% 1.98/1.00                [c_350,c_20,c_14,c_13]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_355,plain,
% 1.98/1.00      ( r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,X2,X0),sK6)
% 1.98/1.00      | ~ r1_tmap_1(sK3,X1,X2,sK6)
% 1.98/1.00      | ~ v1_funct_2(X2,u1_struct_0(sK3),u1_struct_0(X1))
% 1.98/1.00      | ~ r1_tarski(sK5,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_pre_topc(X0,sK3)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X0)
% 1.98/1.00      | ~ v1_funct_1(X2)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(sK3)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(sK3) ),
% 1.98/1.00      inference(renaming,[status(thm)],[c_354]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_706,plain,
% 1.98/1.00      ( r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,X2,X0),sK6)
% 1.98/1.00      | ~ r1_tmap_1(sK3,X1,X2,sK6)
% 1.98/1.00      | ~ r1_tarski(sK5,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_pre_topc(X0,sK3)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X0)
% 1.98/1.00      | ~ v1_funct_1(X2)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(sK3)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(sK3)
% 1.98/1.00      | u1_struct_0(X1) != u1_struct_0(sK1)
% 1.98/1.00      | u1_struct_0(sK3) != u1_struct_0(sK3)
% 1.98/1.00      | sK4 != X2 ),
% 1.98/1.00      inference(resolution_lifted,[status(thm)],[c_17,c_355]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_707,plain,
% 1.98/1.00      ( r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,sK4,X0),sK6)
% 1.98/1.00      | ~ r1_tmap_1(sK3,X1,sK4,sK6)
% 1.98/1.00      | ~ r1_tarski(sK5,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_pre_topc(X0,sK3)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X0)
% 1.98/1.00      | ~ v1_funct_1(sK4)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(sK3)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(sK3)
% 1.98/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 1.98/1.00      inference(unflattening,[status(thm)],[c_706]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_18,negated_conjecture,
% 1.98/1.00      ( v1_funct_1(sK4) ),
% 1.98/1.00      inference(cnf_transformation,[],[f51]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_711,plain,
% 1.98/1.00      ( v2_struct_0(X0)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | ~ m1_pre_topc(X0,sK3)
% 1.98/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(X0))
% 1.98/1.00      | ~ r1_tarski(sK5,u1_struct_0(X0))
% 1.98/1.00      | ~ r1_tmap_1(sK3,X1,sK4,sK6)
% 1.98/1.00      | r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,sK4,X0),sK6)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(sK3)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(sK3)
% 1.98/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 1.98/1.00      inference(global_propositional_subsumption,
% 1.98/1.00                [status(thm)],
% 1.98/1.00                [c_707,c_18]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_712,plain,
% 1.98/1.00      ( r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,sK4,X0),sK6)
% 1.98/1.00      | ~ r1_tmap_1(sK3,X1,sK4,sK6)
% 1.98/1.00      | ~ r1_tarski(sK5,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_pre_topc(X0,sK3)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X0)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(sK3)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(sK3)
% 1.98/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 1.98/1.00      inference(renaming,[status(thm)],[c_711]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1170,plain,
% 1.98/1.00      ( r1_tmap_1(X0_52,X1_52,k2_tmap_1(sK3,X1_52,sK4,X0_52),sK6)
% 1.98/1.00      | ~ r1_tmap_1(sK3,X1_52,sK4,sK6)
% 1.98/1.00      | ~ r1_tarski(sK5,u1_struct_0(X0_52))
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(X0_52))
% 1.98/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1_52))))
% 1.98/1.00      | ~ m1_pre_topc(X0_52,sK3)
% 1.98/1.00      | v2_struct_0(X1_52)
% 1.98/1.00      | v2_struct_0(X0_52)
% 1.98/1.00      | ~ l1_pre_topc(X1_52)
% 1.98/1.00      | ~ l1_pre_topc(sK3)
% 1.98/1.00      | ~ v2_pre_topc(X1_52)
% 1.98/1.00      | ~ v2_pre_topc(sK3)
% 1.98/1.00      | u1_struct_0(X1_52) != u1_struct_0(sK1) ),
% 1.98/1.00      inference(subtyping,[status(esa)],[c_712]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1198,plain,
% 1.98/1.00      ( r1_tmap_1(X0_52,X1_52,k2_tmap_1(sK3,X1_52,sK4,X0_52),sK6)
% 1.98/1.00      | ~ r1_tmap_1(sK3,X1_52,sK4,sK6)
% 1.98/1.00      | ~ r1_tarski(sK5,u1_struct_0(X0_52))
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(X0_52))
% 1.98/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1_52))))
% 1.98/1.00      | ~ m1_pre_topc(X0_52,sK3)
% 1.98/1.00      | v2_struct_0(X1_52)
% 1.98/1.00      | v2_struct_0(X0_52)
% 1.98/1.00      | ~ l1_pre_topc(X1_52)
% 1.98/1.00      | ~ v2_pre_topc(X1_52)
% 1.98/1.00      | u1_struct_0(X1_52) != u1_struct_0(sK1)
% 1.98/1.00      | ~ sP1_iProver_split ),
% 1.98/1.00      inference(splitting,
% 1.98/1.00                [splitting(split),new_symbols(definition,[sP1_iProver_split])],
% 1.98/1.00                [c_1170]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1858,plain,
% 1.98/1.00      ( u1_struct_0(X0_52) != u1_struct_0(sK1)
% 1.98/1.00      | r1_tmap_1(X1_52,X0_52,k2_tmap_1(sK3,X0_52,sK4,X1_52),sK6) = iProver_top
% 1.98/1.00      | r1_tmap_1(sK3,X0_52,sK4,sK6) != iProver_top
% 1.98/1.00      | r1_tarski(sK5,u1_struct_0(X1_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK6,u1_struct_0(X1_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_52)))) != iProver_top
% 1.98/1.00      | m1_pre_topc(X1_52,sK3) != iProver_top
% 1.98/1.00      | v2_struct_0(X0_52) = iProver_top
% 1.98/1.00      | v2_struct_0(X1_52) = iProver_top
% 1.98/1.00      | l1_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | sP1_iProver_split != iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_1198]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_9,negated_conjecture,
% 1.98/1.00      ( sK6 = sK7 ),
% 1.98/1.00      inference(cnf_transformation,[],[f60]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1190,negated_conjecture,
% 1.98/1.00      ( sK6 = sK7 ),
% 1.98/1.00      inference(subtyping,[status(esa)],[c_9]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2011,plain,
% 1.98/1.00      ( u1_struct_0(X0_52) != u1_struct_0(sK1)
% 1.98/1.00      | r1_tmap_1(X1_52,X0_52,k2_tmap_1(sK3,X0_52,sK4,X1_52),sK7) = iProver_top
% 1.98/1.00      | r1_tmap_1(sK3,X0_52,sK4,sK7) != iProver_top
% 1.98/1.00      | r1_tarski(sK5,u1_struct_0(X1_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK7,u1_struct_0(X1_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_52)))) != iProver_top
% 1.98/1.00      | m1_pre_topc(X1_52,sK3) != iProver_top
% 1.98/1.00      | v2_struct_0(X1_52) = iProver_top
% 1.98/1.00      | v2_struct_0(X0_52) = iProver_top
% 1.98/1.00      | l1_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | sP1_iProver_split != iProver_top ),
% 1.98/1.00      inference(light_normalisation,[status(thm)],[c_1858,c_1190]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_27,negated_conjecture,
% 1.98/1.00      ( v2_pre_topc(sK0) ),
% 1.98/1.00      inference(cnf_transformation,[],[f42]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_30,plain,
% 1.98/1.00      ( v2_pre_topc(sK0) = iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_26,negated_conjecture,
% 1.98/1.00      ( l1_pre_topc(sK0) ),
% 1.98/1.00      inference(cnf_transformation,[],[f43]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_31,plain,
% 1.98/1.00      ( l1_pre_topc(sK0) = iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_19,negated_conjecture,
% 1.98/1.00      ( m1_pre_topc(sK3,sK0) ),
% 1.98/1.00      inference(cnf_transformation,[],[f50]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_38,plain,
% 1.98/1.00      ( m1_pre_topc(sK3,sK0) = iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1199,plain,
% 1.98/1.00      ( ~ l1_pre_topc(sK3) | ~ v2_pre_topc(sK3) | sP1_iProver_split ),
% 1.98/1.00      inference(splitting,
% 1.98/1.00                [splitting(split),new_symbols(definition,[])],
% 1.98/1.00                [c_1170]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1255,plain,
% 1.98/1.00      ( l1_pre_topc(sK3) != iProver_top
% 1.98/1.00      | v2_pre_topc(sK3) != iProver_top
% 1.98/1.00      | sP1_iProver_split = iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_1199]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1,plain,
% 1.98/1.00      ( ~ m1_pre_topc(X0,X1) | ~ l1_pre_topc(X1) | l1_pre_topc(X0) ),
% 1.98/1.00      inference(cnf_transformation,[],[f35]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1194,plain,
% 1.98/1.00      ( ~ m1_pre_topc(X0_52,X1_52)
% 1.98/1.00      | ~ l1_pre_topc(X1_52)
% 1.98/1.00      | l1_pre_topc(X0_52) ),
% 1.98/1.00      inference(subtyping,[status(esa)],[c_1]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2129,plain,
% 1.98/1.00      ( ~ m1_pre_topc(X0_52,sK0)
% 1.98/1.00      | l1_pre_topc(X0_52)
% 1.98/1.00      | ~ l1_pre_topc(sK0) ),
% 1.98/1.00      inference(instantiation,[status(thm)],[c_1194]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2130,plain,
% 1.98/1.00      ( m1_pre_topc(X0_52,sK0) != iProver_top
% 1.98/1.00      | l1_pre_topc(X0_52) = iProver_top
% 1.98/1.00      | l1_pre_topc(sK0) != iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_2129]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2132,plain,
% 1.98/1.00      ( m1_pre_topc(sK3,sK0) != iProver_top
% 1.98/1.00      | l1_pre_topc(sK3) = iProver_top
% 1.98/1.00      | l1_pre_topc(sK0) != iProver_top ),
% 1.98/1.00      inference(instantiation,[status(thm)],[c_2130]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_0,plain,
% 1.98/1.00      ( ~ m1_pre_topc(X0,X1)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | v2_pre_topc(X0) ),
% 1.98/1.00      inference(cnf_transformation,[],[f34]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1195,plain,
% 1.98/1.00      ( ~ m1_pre_topc(X0_52,X1_52)
% 1.98/1.00      | ~ l1_pre_topc(X1_52)
% 1.98/1.00      | ~ v2_pre_topc(X1_52)
% 1.98/1.00      | v2_pre_topc(X0_52) ),
% 1.98/1.00      inference(subtyping,[status(esa)],[c_0]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2139,plain,
% 1.98/1.00      ( ~ m1_pre_topc(X0_52,sK0)
% 1.98/1.00      | ~ l1_pre_topc(sK0)
% 1.98/1.00      | v2_pre_topc(X0_52)
% 1.98/1.00      | ~ v2_pre_topc(sK0) ),
% 1.98/1.00      inference(instantiation,[status(thm)],[c_1195]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2140,plain,
% 1.98/1.00      ( m1_pre_topc(X0_52,sK0) != iProver_top
% 1.98/1.00      | l1_pre_topc(sK0) != iProver_top
% 1.98/1.00      | v2_pre_topc(X0_52) = iProver_top
% 1.98/1.00      | v2_pre_topc(sK0) != iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_2139]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2142,plain,
% 1.98/1.00      ( m1_pre_topc(sK3,sK0) != iProver_top
% 1.98/1.00      | l1_pre_topc(sK0) != iProver_top
% 1.98/1.00      | v2_pre_topc(sK3) = iProver_top
% 1.98/1.00      | v2_pre_topc(sK0) != iProver_top ),
% 1.98/1.00      inference(instantiation,[status(thm)],[c_2140]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2628,plain,
% 1.98/1.00      ( v2_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | l1_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | v2_struct_0(X0_52) = iProver_top
% 1.98/1.00      | v2_struct_0(X1_52) = iProver_top
% 1.98/1.00      | m1_pre_topc(X1_52,sK3) != iProver_top
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_52)))) != iProver_top
% 1.98/1.00      | m1_subset_1(sK7,u1_struct_0(X1_52)) != iProver_top
% 1.98/1.00      | r1_tarski(sK5,u1_struct_0(X1_52)) != iProver_top
% 1.98/1.00      | r1_tmap_1(sK3,X0_52,sK4,sK7) != iProver_top
% 1.98/1.00      | r1_tmap_1(X1_52,X0_52,k2_tmap_1(sK3,X0_52,sK4,X1_52),sK7) = iProver_top
% 1.98/1.00      | u1_struct_0(X0_52) != u1_struct_0(sK1) ),
% 1.98/1.00      inference(global_propositional_subsumption,
% 1.98/1.00                [status(thm)],
% 1.98/1.00                [c_2011,c_30,c_31,c_38,c_1255,c_2132,c_2142]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2629,plain,
% 1.98/1.00      ( u1_struct_0(X0_52) != u1_struct_0(sK1)
% 1.98/1.00      | r1_tmap_1(X1_52,X0_52,k2_tmap_1(sK3,X0_52,sK4,X1_52),sK7) = iProver_top
% 1.98/1.00      | r1_tmap_1(sK3,X0_52,sK4,sK7) != iProver_top
% 1.98/1.00      | r1_tarski(sK5,u1_struct_0(X1_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK7,u1_struct_0(X1_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_52)))) != iProver_top
% 1.98/1.00      | m1_pre_topc(X1_52,sK3) != iProver_top
% 1.98/1.00      | v2_struct_0(X1_52) = iProver_top
% 1.98/1.00      | v2_struct_0(X0_52) = iProver_top
% 1.98/1.00      | l1_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(X0_52) != iProver_top ),
% 1.98/1.00      inference(renaming,[status(thm)],[c_2628]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2645,plain,
% 1.98/1.00      ( r1_tmap_1(X0_52,sK1,k2_tmap_1(sK3,sK1,sK4,X0_52),sK7) = iProver_top
% 1.98/1.00      | r1_tmap_1(sK3,sK1,sK4,sK7) != iProver_top
% 1.98/1.00      | r1_tarski(sK5,u1_struct_0(X0_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK7,u1_struct_0(X0_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
% 1.98/1.00      | m1_pre_topc(X0_52,sK3) != iProver_top
% 1.98/1.00      | v2_struct_0(X0_52) = iProver_top
% 1.98/1.00      | v2_struct_0(sK1) = iProver_top
% 1.98/1.00      | l1_pre_topc(sK1) != iProver_top
% 1.98/1.00      | v2_pre_topc(sK1) != iProver_top ),
% 1.98/1.00      inference(equality_resolution,[status(thm)],[c_2629]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_25,negated_conjecture,
% 1.98/1.00      ( ~ v2_struct_0(sK1) ),
% 1.98/1.00      inference(cnf_transformation,[],[f44]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_32,plain,
% 1.98/1.00      ( v2_struct_0(sK1) != iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_24,negated_conjecture,
% 1.98/1.00      ( v2_pre_topc(sK1) ),
% 1.98/1.00      inference(cnf_transformation,[],[f45]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_33,plain,
% 1.98/1.00      ( v2_pre_topc(sK1) = iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_23,negated_conjecture,
% 1.98/1.00      ( l1_pre_topc(sK1) ),
% 1.98/1.00      inference(cnf_transformation,[],[f46]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_34,plain,
% 1.98/1.00      ( l1_pre_topc(sK1) = iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_16,negated_conjecture,
% 1.98/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) ),
% 1.98/1.00      inference(cnf_transformation,[],[f53]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_41,plain,
% 1.98/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) = iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3080,plain,
% 1.98/1.00      ( v2_struct_0(X0_52) = iProver_top
% 1.98/1.00      | m1_pre_topc(X0_52,sK3) != iProver_top
% 1.98/1.00      | r1_tmap_1(X0_52,sK1,k2_tmap_1(sK3,sK1,sK4,X0_52),sK7) = iProver_top
% 1.98/1.00      | r1_tmap_1(sK3,sK1,sK4,sK7) != iProver_top
% 1.98/1.00      | r1_tarski(sK5,u1_struct_0(X0_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK7,u1_struct_0(X0_52)) != iProver_top ),
% 1.98/1.00      inference(global_propositional_subsumption,
% 1.98/1.00                [status(thm)],
% 1.98/1.00                [c_2645,c_32,c_33,c_34,c_41]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3081,plain,
% 1.98/1.00      ( r1_tmap_1(X0_52,sK1,k2_tmap_1(sK3,sK1,sK4,X0_52),sK7) = iProver_top
% 1.98/1.00      | r1_tmap_1(sK3,sK1,sK4,sK7) != iProver_top
% 1.98/1.00      | r1_tarski(sK5,u1_struct_0(X0_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK7,u1_struct_0(X0_52)) != iProver_top
% 1.98/1.00      | m1_pre_topc(X0_52,sK3) != iProver_top
% 1.98/1.00      | v2_struct_0(X0_52) = iProver_top ),
% 1.98/1.00      inference(renaming,[status(thm)],[c_3080]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1183,negated_conjecture,
% 1.98/1.00      ( m1_pre_topc(sK3,sK0) ),
% 1.98/1.00      inference(subtyping,[status(esa)],[c_19]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1843,plain,
% 1.98/1.00      ( m1_pre_topc(sK3,sK0) = iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_1183]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_15,negated_conjecture,
% 1.98/1.00      ( m1_pre_topc(sK2,sK3) ),
% 1.98/1.00      inference(cnf_transformation,[],[f54]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1185,negated_conjecture,
% 1.98/1.00      ( m1_pre_topc(sK2,sK3) ),
% 1.98/1.00      inference(subtyping,[status(esa)],[c_15]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1841,plain,
% 1.98/1.00      ( m1_pre_topc(sK2,sK3) = iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_1185]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3,plain,
% 1.98/1.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 1.98/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 1.98/1.00      | ~ m1_pre_topc(X3,X4)
% 1.98/1.00      | ~ m1_pre_topc(X3,X1)
% 1.98/1.00      | ~ m1_pre_topc(X1,X4)
% 1.98/1.00      | v2_struct_0(X4)
% 1.98/1.00      | v2_struct_0(X2)
% 1.98/1.00      | ~ v1_funct_1(X0)
% 1.98/1.00      | ~ l1_pre_topc(X4)
% 1.98/1.00      | ~ l1_pre_topc(X2)
% 1.98/1.00      | ~ v2_pre_topc(X4)
% 1.98/1.00      | ~ v2_pre_topc(X2)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k3_tmap_1(X4,X2,X1,X3,X0) ),
% 1.98/1.00      inference(cnf_transformation,[],[f37]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_559,plain,
% 1.98/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 1.98/1.00      | ~ m1_pre_topc(X3,X1)
% 1.98/1.00      | ~ m1_pre_topc(X3,X4)
% 1.98/1.00      | ~ m1_pre_topc(X1,X4)
% 1.98/1.00      | v2_struct_0(X2)
% 1.98/1.00      | v2_struct_0(X4)
% 1.98/1.00      | ~ v1_funct_1(X0)
% 1.98/1.00      | ~ l1_pre_topc(X2)
% 1.98/1.00      | ~ l1_pre_topc(X4)
% 1.98/1.00      | ~ v2_pre_topc(X2)
% 1.98/1.00      | ~ v2_pre_topc(X4)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k3_tmap_1(X4,X2,X1,X3,X0)
% 1.98/1.00      | u1_struct_0(X1) != u1_struct_0(sK3)
% 1.98/1.00      | u1_struct_0(X2) != u1_struct_0(sK1)
% 1.98/1.00      | sK4 != X0 ),
% 1.98/1.00      inference(resolution_lifted,[status(thm)],[c_3,c_17]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_560,plain,
% 1.98/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_pre_topc(X2,X0)
% 1.98/1.00      | ~ m1_pre_topc(X2,X3)
% 1.98/1.00      | ~ m1_pre_topc(X0,X3)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X3)
% 1.98/1.00      | ~ v1_funct_1(sK4)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(X3)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(X3)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),sK4,u1_struct_0(X2)) = k3_tmap_1(X3,X1,X0,X2,sK4)
% 1.98/1.00      | u1_struct_0(X0) != u1_struct_0(sK3)
% 1.98/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 1.98/1.00      inference(unflattening,[status(thm)],[c_559]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_564,plain,
% 1.98/1.00      ( v2_struct_0(X3)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | ~ m1_pre_topc(X0,X3)
% 1.98/1.00      | ~ m1_pre_topc(X2,X3)
% 1.98/1.00      | ~ m1_pre_topc(X2,X0)
% 1.98/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(X3)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(X3)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),sK4,u1_struct_0(X2)) = k3_tmap_1(X3,X1,X0,X2,sK4)
% 1.98/1.00      | u1_struct_0(X0) != u1_struct_0(sK3)
% 1.98/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 1.98/1.00      inference(global_propositional_subsumption,
% 1.98/1.00                [status(thm)],
% 1.98/1.00                [c_560,c_18]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_565,plain,
% 1.98/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_pre_topc(X2,X0)
% 1.98/1.00      | ~ m1_pre_topc(X2,X3)
% 1.98/1.00      | ~ m1_pre_topc(X0,X3)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X3)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(X3)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(X3)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),sK4,u1_struct_0(X2)) = k3_tmap_1(X3,X1,X0,X2,sK4)
% 1.98/1.00      | u1_struct_0(X0) != u1_struct_0(sK3)
% 1.98/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 1.98/1.00      inference(renaming,[status(thm)],[c_564]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_6,plain,
% 1.98/1.00      ( ~ m1_pre_topc(X0,X1)
% 1.98/1.00      | ~ m1_pre_topc(X2,X0)
% 1.98/1.00      | m1_pre_topc(X2,X1)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(X1) ),
% 1.98/1.00      inference(cnf_transformation,[],[f40]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_596,plain,
% 1.98/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_pre_topc(X2,X0)
% 1.98/1.00      | ~ m1_pre_topc(X0,X3)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X3)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(X3)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(X3)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),sK4,u1_struct_0(X2)) = k3_tmap_1(X3,X1,X0,X2,sK4)
% 1.98/1.00      | u1_struct_0(X0) != u1_struct_0(sK3)
% 1.98/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 1.98/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_565,c_6]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1173,plain,
% 1.98/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(X1_52))))
% 1.98/1.00      | ~ m1_pre_topc(X2_52,X0_52)
% 1.98/1.00      | ~ m1_pre_topc(X0_52,X3_52)
% 1.98/1.00      | v2_struct_0(X1_52)
% 1.98/1.00      | v2_struct_0(X3_52)
% 1.98/1.00      | ~ l1_pre_topc(X1_52)
% 1.98/1.00      | ~ l1_pre_topc(X3_52)
% 1.98/1.00      | ~ v2_pre_topc(X1_52)
% 1.98/1.00      | ~ v2_pre_topc(X3_52)
% 1.98/1.00      | u1_struct_0(X0_52) != u1_struct_0(sK3)
% 1.98/1.00      | u1_struct_0(X1_52) != u1_struct_0(sK1)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(X1_52),sK4,u1_struct_0(X2_52)) = k3_tmap_1(X3_52,X1_52,X0_52,X2_52,sK4) ),
% 1.98/1.00      inference(subtyping,[status(esa)],[c_596]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1853,plain,
% 1.98/1.00      ( u1_struct_0(X0_52) != u1_struct_0(sK3)
% 1.98/1.00      | u1_struct_0(X1_52) != u1_struct_0(sK1)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(X1_52),sK4,u1_struct_0(X2_52)) = k3_tmap_1(X3_52,X1_52,X0_52,X2_52,sK4)
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(X1_52)))) != iProver_top
% 1.98/1.00      | m1_pre_topc(X2_52,X0_52) != iProver_top
% 1.98/1.00      | m1_pre_topc(X0_52,X3_52) != iProver_top
% 1.98/1.00      | v2_struct_0(X1_52) = iProver_top
% 1.98/1.00      | v2_struct_0(X3_52) = iProver_top
% 1.98/1.00      | l1_pre_topc(X1_52) != iProver_top
% 1.98/1.00      | l1_pre_topc(X3_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(X1_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(X3_52) != iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_1173]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2890,plain,
% 1.98/1.00      ( u1_struct_0(X0_52) != u1_struct_0(sK3)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X1_52)) = k3_tmap_1(X2_52,sK1,X0_52,X1_52,sK4)
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1)))) != iProver_top
% 1.98/1.00      | m1_pre_topc(X0_52,X2_52) != iProver_top
% 1.98/1.00      | m1_pre_topc(X1_52,X0_52) != iProver_top
% 1.98/1.00      | v2_struct_0(X2_52) = iProver_top
% 1.98/1.00      | v2_struct_0(sK1) = iProver_top
% 1.98/1.00      | l1_pre_topc(X2_52) != iProver_top
% 1.98/1.00      | l1_pre_topc(sK1) != iProver_top
% 1.98/1.00      | v2_pre_topc(X2_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(sK1) != iProver_top ),
% 1.98/1.00      inference(equality_resolution,[status(thm)],[c_1853]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2114,plain,
% 1.98/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1))))
% 1.98/1.00      | ~ m1_pre_topc(X0_52,X1_52)
% 1.98/1.00      | ~ m1_pre_topc(X2_52,X0_52)
% 1.98/1.00      | v2_struct_0(X1_52)
% 1.98/1.00      | v2_struct_0(sK1)
% 1.98/1.00      | ~ l1_pre_topc(X1_52)
% 1.98/1.00      | ~ l1_pre_topc(sK1)
% 1.98/1.00      | ~ v2_pre_topc(X1_52)
% 1.98/1.00      | ~ v2_pre_topc(sK1)
% 1.98/1.00      | u1_struct_0(X0_52) != u1_struct_0(sK3)
% 1.98/1.00      | u1_struct_0(sK1) != u1_struct_0(sK1)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X2_52)) = k3_tmap_1(X1_52,sK1,X0_52,X2_52,sK4) ),
% 1.98/1.00      inference(instantiation,[status(thm)],[c_1173]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2115,plain,
% 1.98/1.00      ( u1_struct_0(X0_52) != u1_struct_0(sK3)
% 1.98/1.00      | u1_struct_0(sK1) != u1_struct_0(sK1)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X1_52)) = k3_tmap_1(X2_52,sK1,X0_52,X1_52,sK4)
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1)))) != iProver_top
% 1.98/1.00      | m1_pre_topc(X0_52,X2_52) != iProver_top
% 1.98/1.00      | m1_pre_topc(X1_52,X0_52) != iProver_top
% 1.98/1.00      | v2_struct_0(X2_52) = iProver_top
% 1.98/1.00      | v2_struct_0(sK1) = iProver_top
% 1.98/1.00      | l1_pre_topc(X2_52) != iProver_top
% 1.98/1.00      | l1_pre_topc(sK1) != iProver_top
% 1.98/1.00      | v2_pre_topc(X2_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(sK1) != iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_2114]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1202,plain,( X0_54 = X0_54 ),theory(equality) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2266,plain,
% 1.98/1.00      ( u1_struct_0(sK1) = u1_struct_0(sK1) ),
% 1.98/1.00      inference(instantiation,[status(thm)],[c_1202]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2991,plain,
% 1.98/1.00      ( v2_pre_topc(X2_52) != iProver_top
% 1.98/1.00      | v2_struct_0(X2_52) = iProver_top
% 1.98/1.00      | m1_pre_topc(X1_52,X0_52) != iProver_top
% 1.98/1.00      | m1_pre_topc(X0_52,X2_52) != iProver_top
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1)))) != iProver_top
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X1_52)) = k3_tmap_1(X2_52,sK1,X0_52,X1_52,sK4)
% 1.98/1.00      | u1_struct_0(X0_52) != u1_struct_0(sK3)
% 1.98/1.00      | l1_pre_topc(X2_52) != iProver_top ),
% 1.98/1.00      inference(global_propositional_subsumption,
% 1.98/1.00                [status(thm)],
% 1.98/1.00                [c_2890,c_32,c_33,c_34,c_2115,c_2266]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2992,plain,
% 1.98/1.00      ( u1_struct_0(X0_52) != u1_struct_0(sK3)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X1_52)) = k3_tmap_1(X2_52,sK1,X0_52,X1_52,sK4)
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1)))) != iProver_top
% 1.98/1.00      | m1_pre_topc(X0_52,X2_52) != iProver_top
% 1.98/1.00      | m1_pre_topc(X1_52,X0_52) != iProver_top
% 1.98/1.00      | v2_struct_0(X2_52) = iProver_top
% 1.98/1.00      | l1_pre_topc(X2_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(X2_52) != iProver_top ),
% 1.98/1.00      inference(renaming,[status(thm)],[c_2991]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3005,plain,
% 1.98/1.00      ( k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,u1_struct_0(X0_52)) = k3_tmap_1(X1_52,sK1,sK3,X0_52,sK4)
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
% 1.98/1.00      | m1_pre_topc(X0_52,sK3) != iProver_top
% 1.98/1.00      | m1_pre_topc(sK3,X1_52) != iProver_top
% 1.98/1.00      | v2_struct_0(X1_52) = iProver_top
% 1.98/1.00      | l1_pre_topc(X1_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(X1_52) != iProver_top ),
% 1.98/1.00      inference(equality_resolution,[status(thm)],[c_2992]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3247,plain,
% 1.98/1.00      ( k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,u1_struct_0(X0_52)) = k3_tmap_1(X1_52,sK1,sK3,X0_52,sK4)
% 1.98/1.00      | m1_pre_topc(X0_52,sK3) != iProver_top
% 1.98/1.00      | m1_pre_topc(sK3,X1_52) != iProver_top
% 1.98/1.00      | v2_struct_0(X1_52) = iProver_top
% 1.98/1.00      | l1_pre_topc(X1_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(X1_52) != iProver_top ),
% 1.98/1.00      inference(global_propositional_subsumption,
% 1.98/1.00                [status(thm)],
% 1.98/1.00                [c_3005,c_41]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3259,plain,
% 1.98/1.00      ( k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,u1_struct_0(sK2)) = k3_tmap_1(X0_52,sK1,sK3,sK2,sK4)
% 1.98/1.00      | m1_pre_topc(sK3,X0_52) != iProver_top
% 1.98/1.00      | v2_struct_0(X0_52) = iProver_top
% 1.98/1.00      | l1_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(X0_52) != iProver_top ),
% 1.98/1.00      inference(superposition,[status(thm)],[c_1841,c_3247]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2,plain,
% 1.98/1.00      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 1.98/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 1.98/1.00      | ~ m1_pre_topc(X3,X1)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X2)
% 1.98/1.00      | ~ v1_funct_1(X0)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(X2)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(X2)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k2_tmap_1(X1,X2,X0,X3) ),
% 1.98/1.00      inference(cnf_transformation,[],[f36]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_610,plain,
% 1.98/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 1.98/1.00      | ~ m1_pre_topc(X3,X1)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X2)
% 1.98/1.00      | ~ v1_funct_1(X0)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(X2)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(X2)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k2_tmap_1(X1,X2,X0,X3)
% 1.98/1.00      | u1_struct_0(X1) != u1_struct_0(sK3)
% 1.98/1.00      | u1_struct_0(X2) != u1_struct_0(sK1)
% 1.98/1.00      | sK4 != X0 ),
% 1.98/1.00      inference(resolution_lifted,[status(thm)],[c_2,c_17]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_611,plain,
% 1.98/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_pre_topc(X2,X0)
% 1.98/1.00      | v2_struct_0(X0)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | ~ v1_funct_1(sK4)
% 1.98/1.00      | ~ l1_pre_topc(X0)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(X0)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),sK4,u1_struct_0(X2)) = k2_tmap_1(X0,X1,sK4,X2)
% 1.98/1.00      | u1_struct_0(X0) != u1_struct_0(sK3)
% 1.98/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 1.98/1.00      inference(unflattening,[status(thm)],[c_610]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_615,plain,
% 1.98/1.00      ( v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X0)
% 1.98/1.00      | ~ m1_pre_topc(X2,X0)
% 1.98/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.98/1.00      | ~ l1_pre_topc(X0)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(X0)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),sK4,u1_struct_0(X2)) = k2_tmap_1(X0,X1,sK4,X2)
% 1.98/1.00      | u1_struct_0(X0) != u1_struct_0(sK3)
% 1.98/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 1.98/1.00      inference(global_propositional_subsumption,
% 1.98/1.00                [status(thm)],
% 1.98/1.00                [c_611,c_18]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_616,plain,
% 1.98/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_pre_topc(X2,X0)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X0)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(X0)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(X0)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0),u1_struct_0(X1),sK4,u1_struct_0(X2)) = k2_tmap_1(X0,X1,sK4,X2)
% 1.98/1.00      | u1_struct_0(X0) != u1_struct_0(sK3)
% 1.98/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 1.98/1.00      inference(renaming,[status(thm)],[c_615]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1172,plain,
% 1.98/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(X1_52))))
% 1.98/1.00      | ~ m1_pre_topc(X2_52,X0_52)
% 1.98/1.00      | v2_struct_0(X1_52)
% 1.98/1.00      | v2_struct_0(X0_52)
% 1.98/1.00      | ~ l1_pre_topc(X1_52)
% 1.98/1.00      | ~ l1_pre_topc(X0_52)
% 1.98/1.00      | ~ v2_pre_topc(X1_52)
% 1.98/1.00      | ~ v2_pre_topc(X0_52)
% 1.98/1.00      | u1_struct_0(X0_52) != u1_struct_0(sK3)
% 1.98/1.00      | u1_struct_0(X1_52) != u1_struct_0(sK1)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(X1_52),sK4,u1_struct_0(X2_52)) = k2_tmap_1(X0_52,X1_52,sK4,X2_52) ),
% 1.98/1.00      inference(subtyping,[status(esa)],[c_616]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1854,plain,
% 1.98/1.00      ( u1_struct_0(X0_52) != u1_struct_0(sK3)
% 1.98/1.00      | u1_struct_0(X1_52) != u1_struct_0(sK1)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(X1_52),sK4,u1_struct_0(X2_52)) = k2_tmap_1(X0_52,X1_52,sK4,X2_52)
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(X1_52)))) != iProver_top
% 1.98/1.00      | m1_pre_topc(X2_52,X0_52) != iProver_top
% 1.98/1.00      | v2_struct_0(X1_52) = iProver_top
% 1.98/1.00      | v2_struct_0(X0_52) = iProver_top
% 1.98/1.00      | l1_pre_topc(X1_52) != iProver_top
% 1.98/1.00      | l1_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(X1_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(X0_52) != iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_1172]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3105,plain,
% 1.98/1.00      ( u1_struct_0(X0_52) != u1_struct_0(sK3)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X1_52)) = k2_tmap_1(X0_52,sK1,sK4,X1_52)
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1)))) != iProver_top
% 1.98/1.00      | m1_pre_topc(X1_52,X0_52) != iProver_top
% 1.98/1.00      | v2_struct_0(X0_52) = iProver_top
% 1.98/1.00      | v2_struct_0(sK1) = iProver_top
% 1.98/1.00      | l1_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | l1_pre_topc(sK1) != iProver_top
% 1.98/1.00      | v2_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(sK1) != iProver_top ),
% 1.98/1.00      inference(equality_resolution,[status(thm)],[c_1854]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2104,plain,
% 1.98/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1))))
% 1.98/1.00      | ~ m1_pre_topc(X1_52,X0_52)
% 1.98/1.00      | v2_struct_0(X0_52)
% 1.98/1.00      | v2_struct_0(sK1)
% 1.98/1.00      | ~ l1_pre_topc(X0_52)
% 1.98/1.00      | ~ l1_pre_topc(sK1)
% 1.98/1.00      | ~ v2_pre_topc(X0_52)
% 1.98/1.00      | ~ v2_pre_topc(sK1)
% 1.98/1.00      | u1_struct_0(X0_52) != u1_struct_0(sK3)
% 1.98/1.00      | u1_struct_0(sK1) != u1_struct_0(sK1)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X1_52)) = k2_tmap_1(X0_52,sK1,sK4,X1_52) ),
% 1.98/1.00      inference(instantiation,[status(thm)],[c_1172]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2105,plain,
% 1.98/1.00      ( u1_struct_0(X0_52) != u1_struct_0(sK3)
% 1.98/1.00      | u1_struct_0(sK1) != u1_struct_0(sK1)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X1_52)) = k2_tmap_1(X0_52,sK1,sK4,X1_52)
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1)))) != iProver_top
% 1.98/1.00      | m1_pre_topc(X1_52,X0_52) != iProver_top
% 1.98/1.00      | v2_struct_0(X0_52) = iProver_top
% 1.98/1.00      | v2_struct_0(sK1) = iProver_top
% 1.98/1.00      | l1_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | l1_pre_topc(sK1) != iProver_top
% 1.98/1.00      | v2_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(sK1) != iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_2104]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3153,plain,
% 1.98/1.00      ( v2_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | v2_struct_0(X0_52) = iProver_top
% 1.98/1.00      | m1_pre_topc(X1_52,X0_52) != iProver_top
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1)))) != iProver_top
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X1_52)) = k2_tmap_1(X0_52,sK1,sK4,X1_52)
% 1.98/1.00      | u1_struct_0(X0_52) != u1_struct_0(sK3)
% 1.98/1.00      | l1_pre_topc(X0_52) != iProver_top ),
% 1.98/1.00      inference(global_propositional_subsumption,
% 1.98/1.00                [status(thm)],
% 1.98/1.00                [c_3105,c_32,c_33,c_34,c_2105,c_2266]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3154,plain,
% 1.98/1.00      ( u1_struct_0(X0_52) != u1_struct_0(sK3)
% 1.98/1.00      | k2_partfun1(u1_struct_0(X0_52),u1_struct_0(sK1),sK4,u1_struct_0(X1_52)) = k2_tmap_1(X0_52,sK1,sK4,X1_52)
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_52),u1_struct_0(sK1)))) != iProver_top
% 1.98/1.00      | m1_pre_topc(X1_52,X0_52) != iProver_top
% 1.98/1.00      | v2_struct_0(X0_52) = iProver_top
% 1.98/1.00      | l1_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(X0_52) != iProver_top ),
% 1.98/1.00      inference(renaming,[status(thm)],[c_3153]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3166,plain,
% 1.98/1.00      ( k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,u1_struct_0(X0_52)) = k2_tmap_1(sK3,sK1,sK4,X0_52)
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
% 1.98/1.00      | m1_pre_topc(X0_52,sK3) != iProver_top
% 1.98/1.00      | v2_struct_0(sK3) = iProver_top
% 1.98/1.00      | l1_pre_topc(sK3) != iProver_top
% 1.98/1.00      | v2_pre_topc(sK3) != iProver_top ),
% 1.98/1.00      inference(equality_resolution,[status(thm)],[c_3154]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_37,plain,
% 1.98/1.00      ( v2_struct_0(sK3) != iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3171,plain,
% 1.98/1.00      ( m1_pre_topc(X0_52,sK3) != iProver_top
% 1.98/1.00      | k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,u1_struct_0(X0_52)) = k2_tmap_1(sK3,sK1,sK4,X0_52) ),
% 1.98/1.00      inference(global_propositional_subsumption,
% 1.98/1.00                [status(thm)],
% 1.98/1.00                [c_3166,c_30,c_31,c_37,c_38,c_41,c_2132,c_2142]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3172,plain,
% 1.98/1.00      ( k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,u1_struct_0(X0_52)) = k2_tmap_1(sK3,sK1,sK4,X0_52)
% 1.98/1.00      | m1_pre_topc(X0_52,sK3) != iProver_top ),
% 1.98/1.00      inference(renaming,[status(thm)],[c_3171]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3179,plain,
% 1.98/1.00      ( k2_partfun1(u1_struct_0(sK3),u1_struct_0(sK1),sK4,u1_struct_0(sK2)) = k2_tmap_1(sK3,sK1,sK4,sK2) ),
% 1.98/1.00      inference(superposition,[status(thm)],[c_1841,c_3172]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3260,plain,
% 1.98/1.00      ( k3_tmap_1(X0_52,sK1,sK3,sK2,sK4) = k2_tmap_1(sK3,sK1,sK4,sK2)
% 1.98/1.00      | m1_pre_topc(sK3,X0_52) != iProver_top
% 1.98/1.00      | v2_struct_0(X0_52) = iProver_top
% 1.98/1.00      | l1_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(X0_52) != iProver_top ),
% 1.98/1.00      inference(light_normalisation,[status(thm)],[c_3259,c_3179]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3335,plain,
% 1.98/1.00      ( k3_tmap_1(sK0,sK1,sK3,sK2,sK4) = k2_tmap_1(sK3,sK1,sK4,sK2)
% 1.98/1.00      | v2_struct_0(sK0) = iProver_top
% 1.98/1.00      | l1_pre_topc(sK0) != iProver_top
% 1.98/1.00      | v2_pre_topc(sK0) != iProver_top ),
% 1.98/1.00      inference(superposition,[status(thm)],[c_1843,c_3260]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_28,negated_conjecture,
% 1.98/1.00      ( ~ v2_struct_0(sK0) ),
% 1.98/1.00      inference(cnf_transformation,[],[f41]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_29,plain,
% 1.98/1.00      ( v2_struct_0(sK0) != iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3338,plain,
% 1.98/1.00      ( k3_tmap_1(sK0,sK1,sK3,sK2,sK4) = k2_tmap_1(sK3,sK1,sK4,sK2) ),
% 1.98/1.00      inference(global_propositional_subsumption,
% 1.98/1.00                [status(thm)],
% 1.98/1.00                [c_3335,c_29,c_30,c_31]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_7,negated_conjecture,
% 1.98/1.00      ( ~ r1_tmap_1(sK3,sK1,sK4,sK6)
% 1.98/1.00      | ~ r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) ),
% 1.98/1.00      inference(cnf_transformation,[],[f62]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1192,negated_conjecture,
% 1.98/1.00      ( ~ r1_tmap_1(sK3,sK1,sK4,sK6)
% 1.98/1.00      | ~ r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) ),
% 1.98/1.00      inference(subtyping,[status(esa)],[c_7]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1835,plain,
% 1.98/1.00      ( r1_tmap_1(sK3,sK1,sK4,sK6) != iProver_top
% 1.98/1.00      | r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) != iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_1192]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1917,plain,
% 1.98/1.00      ( r1_tmap_1(sK3,sK1,sK4,sK7) != iProver_top
% 1.98/1.00      | r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) != iProver_top ),
% 1.98/1.00      inference(light_normalisation,[status(thm)],[c_1835,c_1190]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3342,plain,
% 1.98/1.00      ( r1_tmap_1(sK3,sK1,sK4,sK7) != iProver_top
% 1.98/1.00      | r1_tmap_1(sK2,sK1,k2_tmap_1(sK3,sK1,sK4,sK2),sK7) != iProver_top ),
% 1.98/1.00      inference(demodulation,[status(thm)],[c_3338,c_1917]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_22,negated_conjecture,
% 1.98/1.00      ( ~ v2_struct_0(sK2) ),
% 1.98/1.00      inference(cnf_transformation,[],[f47]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_35,plain,
% 1.98/1.00      ( v2_struct_0(sK2) != iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_42,plain,
% 1.98/1.00      ( m1_pre_topc(sK2,sK3) = iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_12,negated_conjecture,
% 1.98/1.00      ( m1_subset_1(sK7,u1_struct_0(sK2)) ),
% 1.98/1.00      inference(cnf_transformation,[],[f57]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_45,plain,
% 1.98/1.00      ( m1_subset_1(sK7,u1_struct_0(sK2)) = iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_11,negated_conjecture,
% 1.98/1.00      ( r1_tarski(sK5,u1_struct_0(sK2)) ),
% 1.98/1.00      inference(cnf_transformation,[],[f58]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_46,plain,
% 1.98/1.00      ( r1_tarski(sK5,u1_struct_0(sK2)) = iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_8,negated_conjecture,
% 1.98/1.00      ( r1_tmap_1(sK3,sK1,sK4,sK6)
% 1.98/1.00      | r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) ),
% 1.98/1.00      inference(cnf_transformation,[],[f61]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1191,negated_conjecture,
% 1.98/1.00      ( r1_tmap_1(sK3,sK1,sK4,sK6)
% 1.98/1.00      | r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) ),
% 1.98/1.00      inference(subtyping,[status(esa)],[c_8]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1836,plain,
% 1.98/1.00      ( r1_tmap_1(sK3,sK1,sK4,sK6) = iProver_top
% 1.98/1.00      | r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) = iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_1191]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1912,plain,
% 1.98/1.00      ( r1_tmap_1(sK3,sK1,sK4,sK7) = iProver_top
% 1.98/1.00      | r1_tmap_1(sK2,sK1,k3_tmap_1(sK0,sK1,sK3,sK2,sK4),sK7) = iProver_top ),
% 1.98/1.00      inference(light_normalisation,[status(thm)],[c_1836,c_1190]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3341,plain,
% 1.98/1.00      ( r1_tmap_1(sK3,sK1,sK4,sK7) = iProver_top
% 1.98/1.00      | r1_tmap_1(sK2,sK1,k2_tmap_1(sK3,sK1,sK4,sK2),sK7) = iProver_top ),
% 1.98/1.00      inference(demodulation,[status(thm)],[c_3338,c_1912]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_4,plain,
% 1.98/1.00      ( r1_tmap_1(X0,X1,X2,X3)
% 1.98/1.00      | ~ r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
% 1.98/1.00      | ~ m1_connsp_2(X5,X0,X3)
% 1.98/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 1.98/1.00      | ~ r1_tarski(X5,u1_struct_0(X4))
% 1.98/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0)))
% 1.98/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 1.98/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_pre_topc(X4,X0)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X0)
% 1.98/1.00      | v2_struct_0(X4)
% 1.98/1.00      | ~ v1_funct_1(X2)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(X0)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(X0) ),
% 1.98/1.00      inference(cnf_transformation,[],[f63]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_403,plain,
% 1.98/1.00      ( r1_tmap_1(X0,X1,X2,X3)
% 1.98/1.00      | ~ r1_tmap_1(X4,X1,k2_tmap_1(X0,X1,X2,X4),X3)
% 1.98/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 1.98/1.00      | ~ r1_tarski(X5,u1_struct_0(X4))
% 1.98/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0)))
% 1.98/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 1.98/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_pre_topc(X4,X0)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X0)
% 1.98/1.00      | v2_struct_0(X4)
% 1.98/1.00      | ~ v1_funct_1(X2)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(X0)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(X0)
% 1.98/1.00      | sK5 != X5
% 1.98/1.00      | sK6 != X3
% 1.98/1.00      | sK3 != X0 ),
% 1.98/1.00      inference(resolution_lifted,[status(thm)],[c_4,c_10]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_404,plain,
% 1.98/1.00      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,X2,X0),sK6)
% 1.98/1.00      | r1_tmap_1(sK3,X1,X2,sK6)
% 1.98/1.00      | ~ v1_funct_2(X2,u1_struct_0(sK3),u1_struct_0(X1))
% 1.98/1.00      | ~ r1_tarski(sK5,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_subset_1(sK5,k1_zfmisc_1(u1_struct_0(sK3)))
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(sK3))
% 1.98/1.00      | ~ m1_pre_topc(X0,sK3)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X0)
% 1.98/1.00      | v2_struct_0(sK3)
% 1.98/1.00      | ~ v1_funct_1(X2)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(sK3)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(sK3) ),
% 1.98/1.00      inference(unflattening,[status(thm)],[c_403]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_408,plain,
% 1.98/1.00      ( v2_struct_0(X0)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | ~ m1_pre_topc(X0,sK3)
% 1.98/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
% 1.98/1.00      | ~ r1_tarski(sK5,u1_struct_0(X0))
% 1.98/1.00      | ~ v1_funct_2(X2,u1_struct_0(sK3),u1_struct_0(X1))
% 1.98/1.00      | r1_tmap_1(sK3,X1,X2,sK6)
% 1.98/1.00      | ~ r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,X2,X0),sK6)
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(X0))
% 1.98/1.00      | ~ v1_funct_1(X2)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(sK3)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(sK3) ),
% 1.98/1.00      inference(global_propositional_subsumption,
% 1.98/1.00                [status(thm)],
% 1.98/1.00                [c_404,c_20,c_14,c_13]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_409,plain,
% 1.98/1.00      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,X2,X0),sK6)
% 1.98/1.00      | r1_tmap_1(sK3,X1,X2,sK6)
% 1.98/1.00      | ~ v1_funct_2(X2,u1_struct_0(sK3),u1_struct_0(X1))
% 1.98/1.00      | ~ r1_tarski(sK5,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_pre_topc(X0,sK3)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X0)
% 1.98/1.00      | ~ v1_funct_1(X2)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(sK3)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(sK3) ),
% 1.98/1.00      inference(renaming,[status(thm)],[c_408]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_655,plain,
% 1.98/1.00      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,X2,X0),sK6)
% 1.98/1.00      | r1_tmap_1(sK3,X1,X2,sK6)
% 1.98/1.00      | ~ r1_tarski(sK5,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_pre_topc(X0,sK3)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X0)
% 1.98/1.00      | ~ v1_funct_1(X2)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(sK3)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(sK3)
% 1.98/1.00      | u1_struct_0(X1) != u1_struct_0(sK1)
% 1.98/1.00      | u1_struct_0(sK3) != u1_struct_0(sK3)
% 1.98/1.00      | sK4 != X2 ),
% 1.98/1.00      inference(resolution_lifted,[status(thm)],[c_17,c_409]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_656,plain,
% 1.98/1.00      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,sK4,X0),sK6)
% 1.98/1.00      | r1_tmap_1(sK3,X1,sK4,sK6)
% 1.98/1.00      | ~ r1_tarski(sK5,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_pre_topc(X0,sK3)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X0)
% 1.98/1.00      | ~ v1_funct_1(sK4)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(sK3)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(sK3)
% 1.98/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 1.98/1.00      inference(unflattening,[status(thm)],[c_655]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_660,plain,
% 1.98/1.00      ( v2_struct_0(X0)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | ~ m1_pre_topc(X0,sK3)
% 1.98/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(X0))
% 1.98/1.00      | ~ r1_tarski(sK5,u1_struct_0(X0))
% 1.98/1.00      | r1_tmap_1(sK3,X1,sK4,sK6)
% 1.98/1.00      | ~ r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,sK4,X0),sK6)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(sK3)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(sK3)
% 1.98/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 1.98/1.00      inference(global_propositional_subsumption,
% 1.98/1.00                [status(thm)],
% 1.98/1.00                [c_656,c_18]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_661,plain,
% 1.98/1.00      ( ~ r1_tmap_1(X0,X1,k2_tmap_1(sK3,X1,sK4,X0),sK6)
% 1.98/1.00      | r1_tmap_1(sK3,X1,sK4,sK6)
% 1.98/1.00      | ~ r1_tarski(sK5,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(X0))
% 1.98/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1))))
% 1.98/1.00      | ~ m1_pre_topc(X0,sK3)
% 1.98/1.00      | v2_struct_0(X1)
% 1.98/1.00      | v2_struct_0(X0)
% 1.98/1.00      | ~ l1_pre_topc(X1)
% 1.98/1.00      | ~ l1_pre_topc(sK3)
% 1.98/1.00      | ~ v2_pre_topc(X1)
% 1.98/1.00      | ~ v2_pre_topc(sK3)
% 1.98/1.00      | u1_struct_0(X1) != u1_struct_0(sK1) ),
% 1.98/1.00      inference(renaming,[status(thm)],[c_660]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1171,plain,
% 1.98/1.00      ( ~ r1_tmap_1(X0_52,X1_52,k2_tmap_1(sK3,X1_52,sK4,X0_52),sK6)
% 1.98/1.00      | r1_tmap_1(sK3,X1_52,sK4,sK6)
% 1.98/1.00      | ~ r1_tarski(sK5,u1_struct_0(X0_52))
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(X0_52))
% 1.98/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1_52))))
% 1.98/1.00      | ~ m1_pre_topc(X0_52,sK3)
% 1.98/1.00      | v2_struct_0(X1_52)
% 1.98/1.00      | v2_struct_0(X0_52)
% 1.98/1.00      | ~ l1_pre_topc(X1_52)
% 1.98/1.00      | ~ l1_pre_topc(sK3)
% 1.98/1.00      | ~ v2_pre_topc(X1_52)
% 1.98/1.00      | ~ v2_pre_topc(sK3)
% 1.98/1.00      | u1_struct_0(X1_52) != u1_struct_0(sK1) ),
% 1.98/1.00      inference(subtyping,[status(esa)],[c_661]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1196,plain,
% 1.98/1.00      ( ~ r1_tmap_1(X0_52,X1_52,k2_tmap_1(sK3,X1_52,sK4,X0_52),sK6)
% 1.98/1.00      | r1_tmap_1(sK3,X1_52,sK4,sK6)
% 1.98/1.00      | ~ r1_tarski(sK5,u1_struct_0(X0_52))
% 1.98/1.00      | ~ m1_subset_1(sK6,u1_struct_0(X0_52))
% 1.98/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1_52))))
% 1.98/1.00      | ~ m1_pre_topc(X0_52,sK3)
% 1.98/1.00      | v2_struct_0(X1_52)
% 1.98/1.00      | v2_struct_0(X0_52)
% 1.98/1.00      | ~ l1_pre_topc(X1_52)
% 1.98/1.00      | ~ v2_pre_topc(X1_52)
% 1.98/1.00      | u1_struct_0(X1_52) != u1_struct_0(sK1)
% 1.98/1.00      | ~ sP0_iProver_split ),
% 1.98/1.00      inference(splitting,
% 1.98/1.00                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 1.98/1.00                [c_1171]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1856,plain,
% 1.98/1.00      ( u1_struct_0(X0_52) != u1_struct_0(sK1)
% 1.98/1.00      | r1_tmap_1(X1_52,X0_52,k2_tmap_1(sK3,X0_52,sK4,X1_52),sK6) != iProver_top
% 1.98/1.00      | r1_tmap_1(sK3,X0_52,sK4,sK6) = iProver_top
% 1.98/1.00      | r1_tarski(sK5,u1_struct_0(X1_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK6,u1_struct_0(X1_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_52)))) != iProver_top
% 1.98/1.00      | m1_pre_topc(X1_52,sK3) != iProver_top
% 1.98/1.00      | v2_struct_0(X0_52) = iProver_top
% 1.98/1.00      | v2_struct_0(X1_52) = iProver_top
% 1.98/1.00      | l1_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | sP0_iProver_split != iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_1196]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1986,plain,
% 1.98/1.00      ( u1_struct_0(X0_52) != u1_struct_0(sK1)
% 1.98/1.00      | r1_tmap_1(X1_52,X0_52,k2_tmap_1(sK3,X0_52,sK4,X1_52),sK7) != iProver_top
% 1.98/1.00      | r1_tmap_1(sK3,X0_52,sK4,sK7) = iProver_top
% 1.98/1.00      | r1_tarski(sK5,u1_struct_0(X1_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK7,u1_struct_0(X1_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_52)))) != iProver_top
% 1.98/1.00      | m1_pre_topc(X1_52,sK3) != iProver_top
% 1.98/1.00      | v2_struct_0(X1_52) = iProver_top
% 1.98/1.00      | v2_struct_0(X0_52) = iProver_top
% 1.98/1.00      | l1_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | sP0_iProver_split != iProver_top ),
% 1.98/1.00      inference(light_normalisation,[status(thm)],[c_1856,c_1190]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1197,plain,
% 1.98/1.00      ( ~ l1_pre_topc(sK3) | ~ v2_pre_topc(sK3) | sP0_iProver_split ),
% 1.98/1.00      inference(splitting,
% 1.98/1.00                [splitting(split),new_symbols(definition,[])],
% 1.98/1.00                [c_1171]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_1251,plain,
% 1.98/1.00      ( l1_pre_topc(sK3) != iProver_top
% 1.98/1.00      | v2_pre_topc(sK3) != iProver_top
% 1.98/1.00      | sP0_iProver_split = iProver_top ),
% 1.98/1.00      inference(predicate_to_equality,[status(thm)],[c_1197]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2527,plain,
% 1.98/1.00      ( v2_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | l1_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | v2_struct_0(X0_52) = iProver_top
% 1.98/1.00      | v2_struct_0(X1_52) = iProver_top
% 1.98/1.00      | m1_pre_topc(X1_52,sK3) != iProver_top
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_52)))) != iProver_top
% 1.98/1.00      | m1_subset_1(sK7,u1_struct_0(X1_52)) != iProver_top
% 1.98/1.00      | r1_tarski(sK5,u1_struct_0(X1_52)) != iProver_top
% 1.98/1.00      | r1_tmap_1(sK3,X0_52,sK4,sK7) = iProver_top
% 1.98/1.00      | r1_tmap_1(X1_52,X0_52,k2_tmap_1(sK3,X0_52,sK4,X1_52),sK7) != iProver_top
% 1.98/1.00      | u1_struct_0(X0_52) != u1_struct_0(sK1) ),
% 1.98/1.00      inference(global_propositional_subsumption,
% 1.98/1.00                [status(thm)],
% 1.98/1.00                [c_1986,c_30,c_31,c_38,c_1251,c_2132,c_2142]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2528,plain,
% 1.98/1.00      ( u1_struct_0(X0_52) != u1_struct_0(sK1)
% 1.98/1.00      | r1_tmap_1(X1_52,X0_52,k2_tmap_1(sK3,X0_52,sK4,X1_52),sK7) != iProver_top
% 1.98/1.00      | r1_tmap_1(sK3,X0_52,sK4,sK7) = iProver_top
% 1.98/1.00      | r1_tarski(sK5,u1_struct_0(X1_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK7,u1_struct_0(X1_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_52)))) != iProver_top
% 1.98/1.00      | m1_pre_topc(X1_52,sK3) != iProver_top
% 1.98/1.00      | v2_struct_0(X1_52) = iProver_top
% 1.98/1.00      | v2_struct_0(X0_52) = iProver_top
% 1.98/1.00      | l1_pre_topc(X0_52) != iProver_top
% 1.98/1.00      | v2_pre_topc(X0_52) != iProver_top ),
% 1.98/1.00      inference(renaming,[status(thm)],[c_2527]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_2544,plain,
% 1.98/1.00      ( r1_tmap_1(X0_52,sK1,k2_tmap_1(sK3,sK1,sK4,X0_52),sK7) != iProver_top
% 1.98/1.00      | r1_tmap_1(sK3,sK1,sK4,sK7) = iProver_top
% 1.98/1.00      | r1_tarski(sK5,u1_struct_0(X0_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK7,u1_struct_0(X0_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK1)))) != iProver_top
% 1.98/1.00      | m1_pre_topc(X0_52,sK3) != iProver_top
% 1.98/1.00      | v2_struct_0(X0_52) = iProver_top
% 1.98/1.00      | v2_struct_0(sK1) = iProver_top
% 1.98/1.00      | l1_pre_topc(sK1) != iProver_top
% 1.98/1.00      | v2_pre_topc(sK1) != iProver_top ),
% 1.98/1.00      inference(equality_resolution,[status(thm)],[c_2528]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3010,plain,
% 1.98/1.00      ( v2_struct_0(X0_52) = iProver_top
% 1.98/1.00      | m1_pre_topc(X0_52,sK3) != iProver_top
% 1.98/1.00      | r1_tmap_1(X0_52,sK1,k2_tmap_1(sK3,sK1,sK4,X0_52),sK7) != iProver_top
% 1.98/1.00      | r1_tmap_1(sK3,sK1,sK4,sK7) = iProver_top
% 1.98/1.00      | r1_tarski(sK5,u1_struct_0(X0_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK7,u1_struct_0(X0_52)) != iProver_top ),
% 1.98/1.00      inference(global_propositional_subsumption,
% 1.98/1.00                [status(thm)],
% 1.98/1.00                [c_2544,c_32,c_33,c_34,c_41]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3011,plain,
% 1.98/1.00      ( r1_tmap_1(X0_52,sK1,k2_tmap_1(sK3,sK1,sK4,X0_52),sK7) != iProver_top
% 1.98/1.00      | r1_tmap_1(sK3,sK1,sK4,sK7) = iProver_top
% 1.98/1.00      | r1_tarski(sK5,u1_struct_0(X0_52)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK7,u1_struct_0(X0_52)) != iProver_top
% 1.98/1.00      | m1_pre_topc(X0_52,sK3) != iProver_top
% 1.98/1.00      | v2_struct_0(X0_52) = iProver_top ),
% 1.98/1.00      inference(renaming,[status(thm)],[c_3010]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3408,plain,
% 1.98/1.00      ( r1_tmap_1(sK3,sK1,sK4,sK7) = iProver_top
% 1.98/1.00      | r1_tarski(sK5,u1_struct_0(sK2)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK7,u1_struct_0(sK2)) != iProver_top
% 1.98/1.00      | m1_pre_topc(sK2,sK3) != iProver_top
% 1.98/1.00      | v2_struct_0(sK2) = iProver_top ),
% 1.98/1.00      inference(superposition,[status(thm)],[c_3341,c_3011]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3411,plain,
% 1.98/1.00      ( r1_tmap_1(sK2,sK1,k2_tmap_1(sK3,sK1,sK4,sK2),sK7) != iProver_top ),
% 1.98/1.00      inference(global_propositional_subsumption,
% 1.98/1.00                [status(thm)],
% 1.98/1.00                [c_3342,c_35,c_42,c_45,c_46,c_3408]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3416,plain,
% 1.98/1.00      ( r1_tmap_1(sK3,sK1,sK4,sK7) != iProver_top
% 1.98/1.00      | r1_tarski(sK5,u1_struct_0(sK2)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK7,u1_struct_0(sK2)) != iProver_top
% 1.98/1.00      | m1_pre_topc(sK2,sK3) != iProver_top
% 1.98/1.00      | v2_struct_0(sK2) = iProver_top ),
% 1.98/1.00      inference(superposition,[status(thm)],[c_3081,c_3411]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3417,plain,
% 1.98/1.00      ( r1_tmap_1(sK3,sK1,sK4,sK7) = iProver_top ),
% 1.98/1.00      inference(superposition,[status(thm)],[c_3341,c_3411]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(c_3425,plain,
% 1.98/1.00      ( r1_tarski(sK5,u1_struct_0(sK2)) != iProver_top
% 1.98/1.00      | m1_subset_1(sK7,u1_struct_0(sK2)) != iProver_top
% 1.98/1.00      | m1_pre_topc(sK2,sK3) != iProver_top
% 1.98/1.00      | v2_struct_0(sK2) = iProver_top ),
% 1.98/1.00      inference(forward_subsumption_resolution,
% 1.98/1.00                [status(thm)],
% 1.98/1.00                [c_3416,c_3417]) ).
% 1.98/1.00  
% 1.98/1.00  cnf(contradiction,plain,
% 1.98/1.00      ( $false ),
% 1.98/1.00      inference(minisat,[status(thm)],[c_3425,c_46,c_45,c_42,c_35]) ).
% 1.98/1.00  
% 1.98/1.00  
% 1.98/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 1.98/1.00  
% 1.98/1.00  ------                               Statistics
% 1.98/1.00  
% 1.98/1.00  ------ General
% 1.98/1.00  
% 1.98/1.00  abstr_ref_over_cycles:                  0
% 1.98/1.00  abstr_ref_under_cycles:                 0
% 1.98/1.00  gc_basic_clause_elim:                   0
% 1.98/1.00  forced_gc_time:                         0
% 1.98/1.00  parsing_time:                           0.01
% 1.98/1.00  unif_index_cands_time:                  0.
% 1.98/1.00  unif_index_add_time:                    0.
% 1.98/1.00  orderings_time:                         0.
% 1.98/1.00  out_proof_time:                         0.017
% 1.98/1.00  total_time:                             0.153
% 1.98/1.00  num_of_symbols:                         60
% 1.98/1.00  num_of_terms:                           1888
% 1.98/1.00  
% 1.98/1.00  ------ Preprocessing
% 1.98/1.00  
% 1.98/1.00  num_of_splits:                          2
% 1.98/1.00  num_of_split_atoms:                     2
% 1.98/1.00  num_of_reused_defs:                     0
% 1.98/1.00  num_eq_ax_congr_red:                    22
% 1.98/1.00  num_of_sem_filtered_clauses:            1
% 1.98/1.00  num_of_subtypes:                        3
% 1.98/1.00  monotx_restored_types:                  0
% 1.98/1.00  sat_num_of_epr_types:                   0
% 1.98/1.00  sat_num_of_non_cyclic_types:            0
% 1.98/1.00  sat_guarded_non_collapsed_types:        0
% 1.98/1.00  num_pure_diseq_elim:                    0
% 1.98/1.00  simp_replaced_by:                       0
% 1.98/1.00  res_preprocessed:                       136
% 1.98/1.00  prep_upred:                             0
% 1.98/1.00  prep_unflattend:                        10
% 1.98/1.00  smt_new_axioms:                         0
% 1.98/1.00  pred_elim_cands:                        7
% 1.98/1.00  pred_elim:                              3
% 1.98/1.00  pred_elim_cl:                           3
% 1.98/1.00  pred_elim_cycles:                       6
% 1.98/1.00  merged_defs:                            8
% 1.98/1.00  merged_defs_ncl:                        0
% 1.98/1.00  bin_hyper_res:                          8
% 1.98/1.00  prep_cycles:                            4
% 1.98/1.00  pred_elim_time:                         0.022
% 1.98/1.00  splitting_time:                         0.
% 1.98/1.00  sem_filter_time:                        0.
% 1.98/1.00  monotx_time:                            0.
% 1.98/1.00  subtype_inf_time:                       0.
% 1.98/1.00  
% 1.98/1.00  ------ Problem properties
% 1.98/1.00  
% 1.98/1.00  clauses:                                28
% 1.98/1.00  conjectures:                            19
% 1.98/1.00  epr:                                    17
% 1.98/1.00  horn:                                   23
% 1.98/1.00  ground:                                 21
% 1.98/1.00  unary:                                  17
% 1.98/1.00  binary:                                 2
% 1.98/1.00  lits:                                   86
% 1.98/1.00  lits_eq:                                9
% 1.98/1.00  fd_pure:                                0
% 1.98/1.00  fd_pseudo:                              0
% 1.98/1.00  fd_cond:                                0
% 1.98/1.00  fd_pseudo_cond:                         0
% 1.98/1.00  ac_symbols:                             0
% 1.98/1.00  
% 1.98/1.00  ------ Propositional Solver
% 1.98/1.00  
% 1.98/1.00  prop_solver_calls:                      26
% 1.98/1.00  prop_fast_solver_calls:                 1338
% 1.98/1.00  smt_solver_calls:                       0
% 1.98/1.00  smt_fast_solver_calls:                  0
% 1.98/1.00  prop_num_of_clauses:                    723
% 1.98/1.00  prop_preprocess_simplified:             3491
% 1.98/1.00  prop_fo_subsumed:                       48
% 1.98/1.00  prop_solver_time:                       0.
% 1.98/1.00  smt_solver_time:                        0.
% 1.98/1.00  smt_fast_solver_time:                   0.
% 1.98/1.00  prop_fast_solver_time:                  0.
% 1.98/1.00  prop_unsat_core_time:                   0.
% 1.98/1.00  
% 1.98/1.00  ------ QBF
% 1.98/1.00  
% 1.98/1.00  qbf_q_res:                              0
% 1.98/1.00  qbf_num_tautologies:                    0
% 1.98/1.00  qbf_prep_cycles:                        0
% 1.98/1.00  
% 1.98/1.00  ------ BMC1
% 1.98/1.00  
% 1.98/1.00  bmc1_current_bound:                     -1
% 1.98/1.00  bmc1_last_solved_bound:                 -1
% 1.98/1.00  bmc1_unsat_core_size:                   -1
% 1.98/1.00  bmc1_unsat_core_parents_size:           -1
% 1.98/1.00  bmc1_merge_next_fun:                    0
% 1.98/1.00  bmc1_unsat_core_clauses_time:           0.
% 1.98/1.00  
% 1.98/1.00  ------ Instantiation
% 1.98/1.00  
% 1.98/1.00  inst_num_of_clauses:                    229
% 1.98/1.00  inst_num_in_passive:                    23
% 1.98/1.00  inst_num_in_active:                     203
% 1.98/1.00  inst_num_in_unprocessed:                3
% 1.98/1.00  inst_num_of_loops:                      230
% 1.98/1.00  inst_num_of_learning_restarts:          0
% 1.98/1.00  inst_num_moves_active_passive:          23
% 1.98/1.00  inst_lit_activity:                      0
% 1.98/1.00  inst_lit_activity_moves:                0
% 1.98/1.00  inst_num_tautologies:                   0
% 1.98/1.00  inst_num_prop_implied:                  0
% 1.98/1.00  inst_num_existing_simplified:           0
% 1.98/1.00  inst_num_eq_res_simplified:             0
% 1.98/1.00  inst_num_child_elim:                    0
% 1.98/1.00  inst_num_of_dismatching_blockings:      19
% 1.98/1.00  inst_num_of_non_proper_insts:           253
% 1.98/1.00  inst_num_of_duplicates:                 0
% 1.98/1.00  inst_inst_num_from_inst_to_res:         0
% 1.98/1.00  inst_dismatching_checking_time:         0.
% 1.98/1.00  
% 1.98/1.00  ------ Resolution
% 1.98/1.00  
% 1.98/1.00  res_num_of_clauses:                     0
% 1.98/1.00  res_num_in_passive:                     0
% 1.98/1.00  res_num_in_active:                      0
% 1.98/1.00  res_num_of_loops:                       140
% 1.98/1.00  res_forward_subset_subsumed:            80
% 1.98/1.00  res_backward_subset_subsumed:           2
% 1.98/1.00  res_forward_subsumed:                   0
% 1.98/1.00  res_backward_subsumed:                  0
% 1.98/1.00  res_forward_subsumption_resolution:     1
% 1.98/1.00  res_backward_subsumption_resolution:    0
% 1.98/1.00  res_clause_to_clause_subsumption:       200
% 1.98/1.00  res_orphan_elimination:                 0
% 1.98/1.00  res_tautology_del:                      81
% 1.98/1.00  res_num_eq_res_simplified:              0
% 1.98/1.00  res_num_sel_changes:                    0
% 1.98/1.00  res_moves_from_active_to_pass:          0
% 1.98/1.00  
% 1.98/1.00  ------ Superposition
% 1.98/1.00  
% 1.98/1.00  sup_time_total:                         0.
% 1.98/1.00  sup_time_generating:                    0.
% 1.98/1.00  sup_time_sim_full:                      0.
% 1.98/1.00  sup_time_sim_immed:                     0.
% 1.98/1.00  
% 1.98/1.00  sup_num_of_clauses:                     46
% 1.98/1.00  sup_num_in_active:                      43
% 1.98/1.00  sup_num_in_passive:                     3
% 1.98/1.00  sup_num_of_loops:                       45
% 1.98/1.00  sup_fw_superposition:                   14
% 1.98/1.00  sup_bw_superposition:                   4
% 1.98/1.00  sup_immediate_simplified:               4
% 1.98/1.00  sup_given_eliminated:                   0
% 1.98/1.00  comparisons_done:                       0
% 1.98/1.00  comparisons_avoided:                    0
% 1.98/1.00  
% 1.98/1.00  ------ Simplifications
% 1.98/1.00  
% 1.98/1.00  
% 1.98/1.00  sim_fw_subset_subsumed:                 2
% 1.98/1.00  sim_bw_subset_subsumed:                 2
% 1.98/1.00  sim_fw_subsumed:                        0
% 1.98/1.00  sim_bw_subsumed:                        0
% 1.98/1.00  sim_fw_subsumption_res:                 1
% 1.98/1.00  sim_bw_subsumption_res:                 0
% 1.98/1.00  sim_tautology_del:                      1
% 1.98/1.00  sim_eq_tautology_del:                   0
% 1.98/1.00  sim_eq_res_simp:                        0
% 1.98/1.00  sim_fw_demodulated:                     0
% 1.98/1.00  sim_bw_demodulated:                     2
% 1.98/1.00  sim_light_normalised:                   6
% 1.98/1.00  sim_joinable_taut:                      0
% 1.98/1.00  sim_joinable_simp:                      0
% 1.98/1.00  sim_ac_normalised:                      0
% 1.98/1.00  sim_smt_subsumption:                    0
% 1.98/1.00  
%------------------------------------------------------------------------------
