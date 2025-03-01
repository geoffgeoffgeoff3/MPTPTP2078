%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:23:23 EST 2020

% Result     : Theorem 1.70s
% Output     : CNFRefutation 1.70s
% Verified   : 
% Statistics : Number of formulae       :  178 ( 672 expanded)
%              Number of clauses        :  113 ( 138 expanded)
%              Number of leaves         :   18 ( 279 expanded)
%              Depth                    :   23
%              Number of atoms          : 1439 (12945 expanded)
%              Number of equality atoms :  281 ( 974 expanded)
%              Maximal formula depth    :   28 (   8 average)
%              Maximal clause size      :   46 (   6 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f7,axiom,(
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
                     => ( ( m1_pre_topc(X2,X3)
                          & v1_tsep_1(X2,X3) )
                       => ! [X5] :
                            ( m1_subset_1(X5,u1_struct_0(X3))
                           => ! [X6] :
                                ( m1_subset_1(X6,u1_struct_0(X2))
                               => ( X5 = X6
                                 => ( r1_tmap_1(X3,X1,X4,X5)
                                  <=> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) ) ) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( ! [X6] :
                              ( ( r1_tmap_1(X3,X1,X4,X5)
                              <=> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) )
                              | X5 != X6
                              | ~ m1_subset_1(X6,u1_struct_0(X2)) )
                          | ~ m1_subset_1(X5,u1_struct_0(X3)) )
                      | ~ m1_pre_topc(X2,X3)
                      | ~ v1_tsep_1(X2,X3)
                      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                      | ~ v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                      | ~ v1_funct_1(X4) )
                  | ~ m1_pre_topc(X3,X0)
                  | v2_struct_0(X3) )
              | ~ m1_pre_topc(X2,X0)
              | v2_struct_0(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( ! [X6] :
                              ( ( r1_tmap_1(X3,X1,X4,X5)
                              <=> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) )
                              | X5 != X6
                              | ~ m1_subset_1(X6,u1_struct_0(X2)) )
                          | ~ m1_subset_1(X5,u1_struct_0(X3)) )
                      | ~ m1_pre_topc(X2,X3)
                      | ~ v1_tsep_1(X2,X3)
                      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                      | ~ v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                      | ~ v1_funct_1(X4) )
                  | ~ m1_pre_topc(X3,X0)
                  | v2_struct_0(X3) )
              | ~ m1_pre_topc(X2,X0)
              | v2_struct_0(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f20])).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( ! [X6] :
                              ( ( ( r1_tmap_1(X3,X1,X4,X5)
                                  | ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) )
                                & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
                                  | ~ r1_tmap_1(X3,X1,X4,X5) ) )
                              | X5 != X6
                              | ~ m1_subset_1(X6,u1_struct_0(X2)) )
                          | ~ m1_subset_1(X5,u1_struct_0(X3)) )
                      | ~ m1_pre_topc(X2,X3)
                      | ~ v1_tsep_1(X2,X3)
                      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                      | ~ v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                      | ~ v1_funct_1(X4) )
                  | ~ m1_pre_topc(X3,X0)
                  | v2_struct_0(X3) )
              | ~ m1_pre_topc(X2,X0)
              | v2_struct_0(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f21])).

fof(f42,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] :
      ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
      | ~ r1_tmap_1(X3,X1,X4,X5)
      | X5 != X6
      | ~ m1_subset_1(X6,u1_struct_0(X2))
      | ~ m1_subset_1(X5,u1_struct_0(X3))
      | ~ m1_pre_topc(X2,X3)
      | ~ v1_tsep_1(X2,X3)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
      | ~ v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
      | ~ v1_funct_1(X4)
      | ~ m1_pre_topc(X3,X0)
      | v2_struct_0(X3)
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f67,plain,(
    ! [X6,X4,X2,X0,X3,X1] :
      ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
      | ~ r1_tmap_1(X3,X1,X4,X6)
      | ~ m1_subset_1(X6,u1_struct_0(X2))
      | ~ m1_subset_1(X6,u1_struct_0(X3))
      | ~ m1_pre_topc(X2,X3)
      | ~ v1_tsep_1(X2,X3)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
      | ~ v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
      | ~ v1_funct_1(X4)
      | ~ m1_pre_topc(X3,X0)
      | v2_struct_0(X3)
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f42])).

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
              ( ( m1_pre_topc(X2,X0)
                & ~ v2_struct_0(X2) )
             => ! [X3] :
                  ( ( m1_pre_topc(X3,X0)
                    & ~ v2_struct_0(X3) )
                 => ! [X4] :
                      ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                        & v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
                        & v1_funct_1(X4) )
                     => ! [X5] :
                          ( m1_subset_1(X5,u1_struct_0(X2))
                         => ! [X6] :
                              ( m1_subset_1(X6,u1_struct_0(X3))
                             => ( ( r1_tmap_1(X2,X1,X4,X5)
                                  & m1_pre_topc(X3,X2)
                                  & X5 = X6 )
                               => r1_tmap_1(X3,X1,k3_tmap_1(X0,X1,X2,X3,X4),X6) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( ! [X6] :
                              ( r1_tmap_1(X3,X1,k3_tmap_1(X0,X1,X2,X3,X4),X6)
                              | ~ r1_tmap_1(X2,X1,X4,X5)
                              | ~ m1_pre_topc(X3,X2)
                              | X5 != X6
                              | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                          | ~ m1_subset_1(X5,u1_struct_0(X2)) )
                      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                      | ~ v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
                      | ~ v1_funct_1(X4) )
                  | ~ m1_pre_topc(X3,X0)
                  | v2_struct_0(X3) )
              | ~ m1_pre_topc(X2,X0)
              | v2_struct_0(X2) )
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
                      ( ! [X5] :
                          ( ! [X6] :
                              ( r1_tmap_1(X3,X1,k3_tmap_1(X0,X1,X2,X3,X4),X6)
                              | ~ r1_tmap_1(X2,X1,X4,X5)
                              | ~ m1_pre_topc(X3,X2)
                              | X5 != X6
                              | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                          | ~ m1_subset_1(X5,u1_struct_0(X2)) )
                      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                      | ~ v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
                      | ~ v1_funct_1(X4) )
                  | ~ m1_pre_topc(X3,X0)
                  | v2_struct_0(X3) )
              | ~ m1_pre_topc(X2,X0)
              | v2_struct_0(X2) )
          | ~ l1_pre_topc(X1)
          | ~ v2_pre_topc(X1)
          | v2_struct_0(X1) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f18])).

fof(f41,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] :
      ( r1_tmap_1(X3,X1,k3_tmap_1(X0,X1,X2,X3,X4),X6)
      | ~ r1_tmap_1(X2,X1,X4,X5)
      | ~ m1_pre_topc(X3,X2)
      | X5 != X6
      | ~ m1_subset_1(X6,u1_struct_0(X3))
      | ~ m1_subset_1(X5,u1_struct_0(X2))
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
      | ~ v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
      | ~ v1_funct_1(X4)
      | ~ m1_pre_topc(X3,X0)
      | v2_struct_0(X3)
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f65,plain,(
    ! [X6,X4,X2,X0,X3,X1] :
      ( r1_tmap_1(X3,X1,k3_tmap_1(X0,X1,X2,X3,X4),X6)
      | ~ r1_tmap_1(X2,X1,X4,X6)
      | ~ m1_pre_topc(X3,X2)
      | ~ m1_subset_1(X6,u1_struct_0(X3))
      | ~ m1_subset_1(X6,u1_struct_0(X2))
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
      | ~ v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
      | ~ v1_funct_1(X4)
      | ~ m1_pre_topc(X3,X0)
      | v2_struct_0(X3)
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f41])).

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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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
    inference(negated_conjecture,[],[f8])).

fof(f22,plain,(
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
    inference(ennf_transformation,[],[f9])).

fof(f23,plain,(
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
    inference(flattening,[],[f22])).

fof(f25,plain,(
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
    inference(nnf_transformation,[],[f23])).

fof(f26,plain,(
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
    inference(flattening,[],[f25])).

fof(f33,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( ? [X6] :
          ( ( ~ r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
            | ~ r1_tmap_1(X3,X0,X4,X5) )
          & ( r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
            | r1_tmap_1(X3,X0,X4,X5) )
          & X5 = X6
          & m1_subset_1(X6,u1_struct_0(X2)) )
     => ( ( ~ r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),sK6)
          | ~ r1_tmap_1(X3,X0,X4,X5) )
        & ( r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),sK6)
          | r1_tmap_1(X3,X0,X4,X5) )
        & sK6 = X5
        & m1_subset_1(sK6,u1_struct_0(X2)) ) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,(
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
              | ~ r1_tmap_1(X3,X0,X4,sK5) )
            & ( r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)
              | r1_tmap_1(X3,X0,X4,sK5) )
            & sK5 = X6
            & m1_subset_1(X6,u1_struct_0(X2)) )
        & m1_subset_1(sK5,u1_struct_0(X3)) ) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,(
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
                ( ( ~ r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,sK4),X6)
                  | ~ r1_tmap_1(X3,X0,sK4,X5) )
                & ( r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,sK4),X6)
                  | r1_tmap_1(X3,X0,sK4,X5) )
                & X5 = X6
                & m1_subset_1(X6,u1_struct_0(X2)) )
            & m1_subset_1(X5,u1_struct_0(X3)) )
        & m1_pre_topc(X2,X3)
        & m1_pre_topc(X2,X1)
        & v1_tsep_1(X2,X1)
        & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0))))
        & v1_funct_2(sK4,u1_struct_0(X3),u1_struct_0(X0))
        & v1_funct_1(sK4) ) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,(
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
                    ( ( ~ r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,sK3,X2,X4),X6)
                      | ~ r1_tmap_1(sK3,X0,X4,X5) )
                    & ( r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,sK3,X2,X4),X6)
                      | r1_tmap_1(sK3,X0,X4,X5) )
                    & X5 = X6
                    & m1_subset_1(X6,u1_struct_0(X2)) )
                & m1_subset_1(X5,u1_struct_0(sK3)) )
            & m1_pre_topc(X2,sK3)
            & m1_pre_topc(X2,X1)
            & v1_tsep_1(X2,X1)
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0))))
            & v1_funct_2(X4,u1_struct_0(sK3),u1_struct_0(X0))
            & v1_funct_1(X4) )
        & m1_pre_topc(sK3,X1)
        & ~ v2_struct_0(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,(
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
                        ( ( ~ r1_tmap_1(sK2,X0,k3_tmap_1(X1,X0,X3,sK2,X4),X6)
                          | ~ r1_tmap_1(X3,X0,X4,X5) )
                        & ( r1_tmap_1(sK2,X0,k3_tmap_1(X1,X0,X3,sK2,X4),X6)
                          | r1_tmap_1(X3,X0,X4,X5) )
                        & X5 = X6
                        & m1_subset_1(X6,u1_struct_0(sK2)) )
                    & m1_subset_1(X5,u1_struct_0(X3)) )
                & m1_pre_topc(sK2,X3)
                & m1_pre_topc(sK2,X1)
                & v1_tsep_1(sK2,X1)
                & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0))))
                & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0))
                & v1_funct_1(X4) )
            & m1_pre_topc(X3,X1)
            & ~ v2_struct_0(X3) )
        & m1_pre_topc(sK2,X1)
        & ~ v2_struct_0(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
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
                            ( ( ~ r1_tmap_1(X2,X0,k3_tmap_1(sK1,X0,X3,X2,X4),X6)
                              | ~ r1_tmap_1(X3,X0,X4,X5) )
                            & ( r1_tmap_1(X2,X0,k3_tmap_1(sK1,X0,X3,X2,X4),X6)
                              | r1_tmap_1(X3,X0,X4,X5) )
                            & X5 = X6
                            & m1_subset_1(X6,u1_struct_0(X2)) )
                        & m1_subset_1(X5,u1_struct_0(X3)) )
                    & m1_pre_topc(X2,X3)
                    & m1_pre_topc(X2,sK1)
                    & v1_tsep_1(X2,sK1)
                    & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0))))
                    & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0))
                    & v1_funct_1(X4) )
                & m1_pre_topc(X3,sK1)
                & ~ v2_struct_0(X3) )
            & m1_pre_topc(X2,sK1)
            & ~ v2_struct_0(X2) )
        & l1_pre_topc(sK1)
        & v2_pre_topc(sK1)
        & ~ v2_struct_0(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,
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
                              ( ( ~ r1_tmap_1(X2,sK0,k3_tmap_1(X1,sK0,X3,X2,X4),X6)
                                | ~ r1_tmap_1(X3,sK0,X4,X5) )
                              & ( r1_tmap_1(X2,sK0,k3_tmap_1(X1,sK0,X3,X2,X4),X6)
                                | r1_tmap_1(X3,sK0,X4,X5) )
                              & X5 = X6
                              & m1_subset_1(X6,u1_struct_0(X2)) )
                          & m1_subset_1(X5,u1_struct_0(X3)) )
                      & m1_pre_topc(X2,X3)
                      & m1_pre_topc(X2,X1)
                      & v1_tsep_1(X2,X1)
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(sK0))))
                      & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(sK0))
                      & v1_funct_1(X4) )
                  & m1_pre_topc(X3,X1)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,X1)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(sK0)
      & v2_pre_topc(sK0)
      & ~ v2_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,
    ( ( ~ r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6)
      | ~ r1_tmap_1(sK3,sK0,sK4,sK5) )
    & ( r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6)
      | r1_tmap_1(sK3,sK0,sK4,sK5) )
    & sK5 = sK6
    & m1_subset_1(sK6,u1_struct_0(sK2))
    & m1_subset_1(sK5,u1_struct_0(sK3))
    & m1_pre_topc(sK2,sK3)
    & m1_pre_topc(sK2,sK1)
    & v1_tsep_1(sK2,sK1)
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK0))))
    & v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK0))
    & v1_funct_1(sK4)
    & m1_pre_topc(sK3,sK1)
    & ~ v2_struct_0(sK3)
    & m1_pre_topc(sK2,sK1)
    & ~ v2_struct_0(sK2)
    & l1_pre_topc(sK1)
    & v2_pre_topc(sK1)
    & ~ v2_struct_0(sK1)
    & l1_pre_topc(sK0)
    & v2_pre_topc(sK0)
    & ~ v2_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4,sK5,sK6])],[f26,f33,f32,f31,f30,f29,f28,f27])).

fof(f55,plain,(
    v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f34])).

fof(f54,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f34])).

fof(f5,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ! [X2] :
              ( m1_pre_topc(X2,X1)
             => m1_pre_topc(X2,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( m1_pre_topc(X2,X0)
              | ~ m1_pre_topc(X2,X1) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( m1_pre_topc(X2,X0)
              | ~ m1_pre_topc(X2,X1) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f16])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( m1_pre_topc(X2,X0)
      | ~ m1_pre_topc(X2,X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f44,plain,(
    ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f34])).

fof(f45,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f34])).

fof(f46,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f34])).

fof(f52,plain,(
    ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f34])).

fof(f56,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK0)))) ),
    inference(cnf_transformation,[],[f34])).

fof(f64,plain,
    ( ~ r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6)
    | ~ r1_tmap_1(sK3,sK0,sK4,sK5) ),
    inference(cnf_transformation,[],[f34])).

fof(f62,plain,(
    sK5 = sK6 ),
    inference(cnf_transformation,[],[f34])).

fof(f43,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] :
      ( r1_tmap_1(X3,X1,X4,X5)
      | ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
      | X5 != X6
      | ~ m1_subset_1(X6,u1_struct_0(X2))
      | ~ m1_subset_1(X5,u1_struct_0(X3))
      | ~ m1_pre_topc(X2,X3)
      | ~ v1_tsep_1(X2,X3)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
      | ~ v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
      | ~ v1_funct_1(X4)
      | ~ m1_pre_topc(X3,X0)
      | v2_struct_0(X3)
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f66,plain,(
    ! [X6,X4,X2,X0,X3,X1] :
      ( r1_tmap_1(X3,X1,X4,X6)
      | ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
      | ~ m1_subset_1(X6,u1_struct_0(X2))
      | ~ m1_subset_1(X6,u1_struct_0(X3))
      | ~ m1_pre_topc(X2,X3)
      | ~ v1_tsep_1(X2,X3)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
      | ~ v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
      | ~ v1_funct_1(X4)
      | ~ m1_pre_topc(X3,X0)
      | v2_struct_0(X3)
      | ~ m1_pre_topc(X2,X0)
      | v2_struct_0(X2)
      | ~ l1_pre_topc(X1)
      | ~ v2_pre_topc(X1)
      | v2_struct_0(X1)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(equality_resolution,[],[f43])).

fof(f53,plain,(
    m1_pre_topc(sK3,sK1) ),
    inference(cnf_transformation,[],[f34])).

fof(f2,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => l1_pre_topc(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0] :
      ( ! [X1] :
          ( l1_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f36,plain,(
    ! [X0,X1] :
      ( l1_pre_topc(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
     => r1_tarski(X0,X1) ) ),
    inference(unused_predicate_definition_removal,[],[f1])).

fof(f11,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f35,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f3,axiom,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
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
    inference(ennf_transformation,[],[f3])).

fof(f14,plain,(
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
    inference(flattening,[],[f13])).

fof(f37,plain,(
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
    inference(cnf_transformation,[],[f14])).

fof(f4,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( ! [X1] :
          ( m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f39,plain,(
    ! [X0,X1] :
      ( m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f60,plain,(
    m1_subset_1(sK5,u1_struct_0(sK3)) ),
    inference(cnf_transformation,[],[f34])).

fof(f63,plain,
    ( r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6)
    | r1_tmap_1(sK3,sK0,sK4,sK5) ),
    inference(cnf_transformation,[],[f34])).

fof(f61,plain,(
    m1_subset_1(sK6,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f34])).

fof(f59,plain,(
    m1_pre_topc(sK2,sK3) ),
    inference(cnf_transformation,[],[f34])).

fof(f57,plain,(
    v1_tsep_1(sK2,sK1) ),
    inference(cnf_transformation,[],[f34])).

fof(f51,plain,(
    m1_pre_topc(sK2,sK1) ),
    inference(cnf_transformation,[],[f34])).

fof(f50,plain,(
    ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f34])).

fof(f49,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f34])).

fof(f48,plain,(
    v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f34])).

fof(f47,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_8,plain,
    ( ~ r1_tmap_1(X0,X1,X2,X3)
    | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ v1_tsep_1(X4,X0)
    | ~ m1_pre_topc(X4,X5)
    | ~ m1_pre_topc(X0,X5)
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X5)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X5)
    | v2_struct_0(X4)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X5)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_6,plain,
    ( ~ r1_tmap_1(X0,X1,X2,X3)
    | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ m1_pre_topc(X0,X5)
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_pre_topc(X4,X5)
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X5)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X5)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X5)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_148,plain,
    ( ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
    | ~ r1_tmap_1(X0,X1,X2,X3)
    | ~ m1_pre_topc(X4,X5)
    | ~ m1_pre_topc(X0,X5)
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X5)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X5)
    | v2_struct_0(X4)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X5)
    | ~ l1_pre_topc(X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_8,c_6])).

cnf(c_149,plain,
    ( ~ r1_tmap_1(X0,X1,X2,X3)
    | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ m1_pre_topc(X0,X5)
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_pre_topc(X4,X5)
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X5)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X5)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X5) ),
    inference(renaming,[status(thm)],[c_148])).

cnf(c_18,negated_conjecture,
    ( v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK0)) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_436,plain,
    ( ~ r1_tmap_1(X0,X1,X2,X3)
    | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
    | ~ m1_pre_topc(X0,X5)
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_pre_topc(X4,X5)
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X5)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X5)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X5)
    | u1_struct_0(X0) != u1_struct_0(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK0)
    | sK4 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_149,c_18])).

cnf(c_437,plain,
    ( r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK4),X4)
    | ~ r1_tmap_1(X3,X1,sK4,X4)
    | ~ m1_pre_topc(X3,X2)
    | ~ m1_pre_topc(X0,X3)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_subset_1(X4,u1_struct_0(X0))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
    | ~ v1_funct_1(sK4)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | v2_struct_0(X3)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | u1_struct_0(X3) != u1_struct_0(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_436])).

cnf(c_19,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_441,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ m1_subset_1(X4,u1_struct_0(X0))
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_pre_topc(X0,X3)
    | ~ m1_pre_topc(X3,X2)
    | ~ r1_tmap_1(X3,X1,sK4,X4)
    | r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK4),X4)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | v2_struct_0(X3)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | u1_struct_0(X3) != u1_struct_0(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_437,c_19])).

cnf(c_442,plain,
    ( r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK4),X4)
    | ~ r1_tmap_1(X3,X1,sK4,X4)
    | ~ m1_pre_topc(X3,X2)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_pre_topc(X0,X3)
    | ~ m1_subset_1(X4,u1_struct_0(X0))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | v2_struct_0(X0)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | u1_struct_0(X3) != u1_struct_0(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK0) ),
    inference(renaming,[status(thm)],[c_441])).

cnf(c_5,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X0)
    | m1_pre_topc(X2,X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_483,plain,
    ( r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK4),X4)
    | ~ r1_tmap_1(X3,X1,sK4,X4)
    | ~ m1_pre_topc(X3,X2)
    | ~ m1_pre_topc(X0,X3)
    | ~ m1_subset_1(X4,u1_struct_0(X0))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | v2_struct_0(X0)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | u1_struct_0(X3) != u1_struct_0(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK0) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_442,c_5])).

cnf(c_848,plain,
    ( r1_tmap_1(X0_49,X1_49,k3_tmap_1(X2_49,X1_49,X3_49,X0_49,sK4),X0_50)
    | ~ r1_tmap_1(X3_49,X1_49,sK4,X0_50)
    | ~ m1_pre_topc(X3_49,X2_49)
    | ~ m1_pre_topc(X0_49,X3_49)
    | ~ m1_subset_1(X0_50,u1_struct_0(X0_49))
    | ~ m1_subset_1(X0_50,u1_struct_0(X3_49))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3_49),u1_struct_0(X1_49))))
    | ~ v2_pre_topc(X1_49)
    | ~ v2_pre_topc(X2_49)
    | v2_struct_0(X0_49)
    | v2_struct_0(X2_49)
    | v2_struct_0(X1_49)
    | v2_struct_0(X3_49)
    | ~ l1_pre_topc(X1_49)
    | ~ l1_pre_topc(X2_49)
    | u1_struct_0(X3_49) != u1_struct_0(sK3)
    | u1_struct_0(X1_49) != u1_struct_0(sK0) ),
    inference(subtyping,[status(esa)],[c_483])).

cnf(c_1420,plain,
    ( u1_struct_0(X0_49) != u1_struct_0(sK3)
    | u1_struct_0(X1_49) != u1_struct_0(sK0)
    | r1_tmap_1(X2_49,X1_49,k3_tmap_1(X3_49,X1_49,X0_49,X2_49,sK4),X0_50) = iProver_top
    | r1_tmap_1(X0_49,X1_49,sK4,X0_50) != iProver_top
    | m1_pre_topc(X2_49,X0_49) != iProver_top
    | m1_pre_topc(X0_49,X3_49) != iProver_top
    | m1_subset_1(X0_50,u1_struct_0(X2_49)) != iProver_top
    | m1_subset_1(X0_50,u1_struct_0(X0_49)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_49),u1_struct_0(X1_49)))) != iProver_top
    | v2_pre_topc(X1_49) != iProver_top
    | v2_pre_topc(X3_49) != iProver_top
    | v2_struct_0(X1_49) = iProver_top
    | v2_struct_0(X2_49) = iProver_top
    | v2_struct_0(X3_49) = iProver_top
    | v2_struct_0(X0_49) = iProver_top
    | l1_pre_topc(X1_49) != iProver_top
    | l1_pre_topc(X3_49) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_848])).

cnf(c_2381,plain,
    ( u1_struct_0(X0_49) != u1_struct_0(sK3)
    | r1_tmap_1(X1_49,sK0,k3_tmap_1(X2_49,sK0,X0_49,X1_49,sK4),X0_50) = iProver_top
    | r1_tmap_1(X0_49,sK0,sK4,X0_50) != iProver_top
    | m1_pre_topc(X0_49,X2_49) != iProver_top
    | m1_pre_topc(X1_49,X0_49) != iProver_top
    | m1_subset_1(X0_50,u1_struct_0(X0_49)) != iProver_top
    | m1_subset_1(X0_50,u1_struct_0(X1_49)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_49),u1_struct_0(sK0)))) != iProver_top
    | v2_pre_topc(X2_49) != iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | v2_struct_0(X1_49) = iProver_top
    | v2_struct_0(X0_49) = iProver_top
    | v2_struct_0(X2_49) = iProver_top
    | v2_struct_0(sK0) = iProver_top
    | l1_pre_topc(X2_49) != iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1420])).

cnf(c_29,negated_conjecture,
    ( ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_30,plain,
    ( v2_struct_0(sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_28,negated_conjecture,
    ( v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_31,plain,
    ( v2_pre_topc(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_27,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_32,plain,
    ( l1_pre_topc(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_2452,plain,
    ( l1_pre_topc(X2_49) != iProver_top
    | v2_pre_topc(X2_49) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_49),u1_struct_0(sK0)))) != iProver_top
    | m1_subset_1(X0_50,u1_struct_0(X1_49)) != iProver_top
    | m1_subset_1(X0_50,u1_struct_0(X0_49)) != iProver_top
    | m1_pre_topc(X1_49,X0_49) != iProver_top
    | m1_pre_topc(X0_49,X2_49) != iProver_top
    | r1_tmap_1(X0_49,sK0,sK4,X0_50) != iProver_top
    | r1_tmap_1(X1_49,sK0,k3_tmap_1(X2_49,sK0,X0_49,X1_49,sK4),X0_50) = iProver_top
    | u1_struct_0(X0_49) != u1_struct_0(sK3)
    | v2_struct_0(X1_49) = iProver_top
    | v2_struct_0(X0_49) = iProver_top
    | v2_struct_0(X2_49) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2381,c_30,c_31,c_32])).

cnf(c_2453,plain,
    ( u1_struct_0(X0_49) != u1_struct_0(sK3)
    | r1_tmap_1(X1_49,sK0,k3_tmap_1(X2_49,sK0,X0_49,X1_49,sK4),X0_50) = iProver_top
    | r1_tmap_1(X0_49,sK0,sK4,X0_50) != iProver_top
    | m1_pre_topc(X0_49,X2_49) != iProver_top
    | m1_pre_topc(X1_49,X0_49) != iProver_top
    | m1_subset_1(X0_50,u1_struct_0(X0_49)) != iProver_top
    | m1_subset_1(X0_50,u1_struct_0(X1_49)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_49),u1_struct_0(sK0)))) != iProver_top
    | v2_pre_topc(X2_49) != iProver_top
    | v2_struct_0(X1_49) = iProver_top
    | v2_struct_0(X0_49) = iProver_top
    | v2_struct_0(X2_49) = iProver_top
    | l1_pre_topc(X2_49) != iProver_top ),
    inference(renaming,[status(thm)],[c_2452])).

cnf(c_2469,plain,
    ( r1_tmap_1(X0_49,sK0,k3_tmap_1(X1_49,sK0,sK3,X0_49,sK4),X0_50) = iProver_top
    | r1_tmap_1(sK3,sK0,sK4,X0_50) != iProver_top
    | m1_pre_topc(X0_49,sK3) != iProver_top
    | m1_pre_topc(sK3,X1_49) != iProver_top
    | m1_subset_1(X0_50,u1_struct_0(X0_49)) != iProver_top
    | m1_subset_1(X0_50,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK0)))) != iProver_top
    | v2_pre_topc(X1_49) != iProver_top
    | v2_struct_0(X1_49) = iProver_top
    | v2_struct_0(X0_49) = iProver_top
    | v2_struct_0(sK3) = iProver_top
    | l1_pre_topc(X1_49) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_2453])).

cnf(c_21,negated_conjecture,
    ( ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_38,plain,
    ( v2_struct_0(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_17,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK0)))) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_42,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK0)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_2548,plain,
    ( v2_struct_0(X0_49) = iProver_top
    | v2_struct_0(X1_49) = iProver_top
    | v2_pre_topc(X1_49) != iProver_top
    | r1_tmap_1(X0_49,sK0,k3_tmap_1(X1_49,sK0,sK3,X0_49,sK4),X0_50) = iProver_top
    | r1_tmap_1(sK3,sK0,sK4,X0_50) != iProver_top
    | m1_pre_topc(X0_49,sK3) != iProver_top
    | m1_pre_topc(sK3,X1_49) != iProver_top
    | m1_subset_1(X0_50,u1_struct_0(X0_49)) != iProver_top
    | m1_subset_1(X0_50,u1_struct_0(sK3)) != iProver_top
    | l1_pre_topc(X1_49) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2469,c_38,c_42])).

cnf(c_2549,plain,
    ( r1_tmap_1(X0_49,sK0,k3_tmap_1(X1_49,sK0,sK3,X0_49,sK4),X0_50) = iProver_top
    | r1_tmap_1(sK3,sK0,sK4,X0_50) != iProver_top
    | m1_pre_topc(X0_49,sK3) != iProver_top
    | m1_pre_topc(sK3,X1_49) != iProver_top
    | m1_subset_1(X0_50,u1_struct_0(X0_49)) != iProver_top
    | m1_subset_1(X0_50,u1_struct_0(sK3)) != iProver_top
    | v2_pre_topc(X1_49) != iProver_top
    | v2_struct_0(X1_49) = iProver_top
    | v2_struct_0(X0_49) = iProver_top
    | l1_pre_topc(X1_49) != iProver_top ),
    inference(renaming,[status(thm)],[c_2548])).

cnf(c_9,negated_conjecture,
    ( ~ r1_tmap_1(sK3,sK0,sK4,sK5)
    | ~ r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_868,negated_conjecture,
    ( ~ r1_tmap_1(sK3,sK0,sK4,sK5)
    | ~ r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_1401,plain,
    ( r1_tmap_1(sK3,sK0,sK4,sK5) != iProver_top
    | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_868])).

cnf(c_11,negated_conjecture,
    ( sK5 = sK6 ),
    inference(cnf_transformation,[],[f62])).

cnf(c_866,negated_conjecture,
    ( sK5 = sK6 ),
    inference(subtyping,[status(esa)],[c_11])).

cnf(c_1472,plain,
    ( r1_tmap_1(sK3,sK0,sK4,sK6) != iProver_top
    | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1401,c_866])).

cnf(c_2564,plain,
    ( r1_tmap_1(sK3,sK0,sK4,sK6) != iProver_top
    | m1_pre_topc(sK3,sK1) != iProver_top
    | m1_pre_topc(sK2,sK3) != iProver_top
    | m1_subset_1(sK6,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK6,u1_struct_0(sK2)) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | v2_struct_0(sK1) = iProver_top
    | v2_struct_0(sK2) = iProver_top
    | l1_pre_topc(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_2549,c_1472])).

cnf(c_873,plain,
    ( X0_50 = X0_50 ),
    theory(equality)).

cnf(c_2434,plain,
    ( u1_struct_0(sK0) = u1_struct_0(sK0) ),
    inference(instantiation,[status(thm)],[c_873])).

cnf(c_878,plain,
    ( ~ r1_tmap_1(X0_49,X1_49,X0_50,X1_50)
    | r1_tmap_1(X0_49,X1_49,X2_50,X3_50)
    | X2_50 != X0_50
    | X3_50 != X1_50 ),
    theory(equality)).

cnf(c_1702,plain,
    ( r1_tmap_1(sK2,sK0,X0_50,X1_50)
    | ~ r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6)
    | X0_50 != k3_tmap_1(sK1,sK0,sK3,sK2,sK4)
    | X1_50 != sK6 ),
    inference(instantiation,[status(thm)],[c_878])).

cnf(c_1810,plain,
    ( r1_tmap_1(sK2,sK0,X0_50,sK5)
    | ~ r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6)
    | X0_50 != k3_tmap_1(sK1,sK0,sK3,sK2,sK4)
    | sK5 != sK6 ),
    inference(instantiation,[status(thm)],[c_1702])).

cnf(c_2357,plain,
    ( r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK5)
    | ~ r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6)
    | k3_tmap_1(sK1,sK0,sK3,sK2,sK4) != k3_tmap_1(sK1,sK0,sK3,sK2,sK4)
    | sK5 != sK6 ),
    inference(instantiation,[status(thm)],[c_1810])).

cnf(c_2359,plain,
    ( k3_tmap_1(sK1,sK0,sK3,sK2,sK4) != k3_tmap_1(sK1,sK0,sK3,sK2,sK4)
    | sK5 != sK6
    | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK5) = iProver_top
    | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2357])).

cnf(c_2178,plain,
    ( k3_tmap_1(X0_49,X1_49,sK3,sK2,sK4) = k3_tmap_1(X0_49,X1_49,sK3,sK2,sK4) ),
    inference(instantiation,[status(thm)],[c_873])).

cnf(c_2356,plain,
    ( k3_tmap_1(sK1,sK0,sK3,sK2,sK4) = k3_tmap_1(sK1,sK0,sK3,sK2,sK4) ),
    inference(instantiation,[status(thm)],[c_2178])).

cnf(c_7,plain,
    ( r1_tmap_1(X0,X1,X2,X3)
    | ~ r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ v1_tsep_1(X4,X0)
    | ~ m1_pre_topc(X4,X5)
    | ~ m1_pre_topc(X0,X5)
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X5)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X5)
    | v2_struct_0(X4)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X5)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_502,plain,
    ( r1_tmap_1(X0,X1,X2,X3)
    | ~ r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
    | ~ v1_tsep_1(X4,X0)
    | ~ m1_pre_topc(X0,X5)
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_pre_topc(X4,X5)
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X5)
    | v2_struct_0(X0)
    | v2_struct_0(X1)
    | v2_struct_0(X5)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X5)
    | u1_struct_0(X0) != u1_struct_0(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK0)
    | sK4 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_18])).

cnf(c_503,plain,
    ( ~ r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK4),X4)
    | r1_tmap_1(X3,X1,sK4,X4)
    | ~ v1_tsep_1(X0,X3)
    | ~ m1_pre_topc(X3,X2)
    | ~ m1_pre_topc(X0,X3)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_subset_1(X4,u1_struct_0(X0))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
    | ~ v1_funct_1(sK4)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | v2_struct_0(X3)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | u1_struct_0(X3) != u1_struct_0(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK0) ),
    inference(unflattening,[status(thm)],[c_502])).

cnf(c_507,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ m1_subset_1(X4,u1_struct_0(X0))
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_pre_topc(X0,X3)
    | ~ m1_pre_topc(X3,X2)
    | ~ v1_tsep_1(X0,X3)
    | r1_tmap_1(X3,X1,sK4,X4)
    | ~ r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK4),X4)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | v2_struct_0(X3)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | u1_struct_0(X3) != u1_struct_0(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_503,c_19])).

cnf(c_508,plain,
    ( ~ r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK4),X4)
    | r1_tmap_1(X3,X1,sK4,X4)
    | ~ v1_tsep_1(X0,X3)
    | ~ m1_pre_topc(X3,X2)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_pre_topc(X0,X3)
    | ~ m1_subset_1(X4,u1_struct_0(X0))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | v2_struct_0(X0)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | u1_struct_0(X3) != u1_struct_0(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK0) ),
    inference(renaming,[status(thm)],[c_507])).

cnf(c_551,plain,
    ( ~ r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK4),X4)
    | r1_tmap_1(X3,X1,sK4,X4)
    | ~ v1_tsep_1(X0,X3)
    | ~ m1_pre_topc(X3,X2)
    | ~ m1_pre_topc(X0,X3)
    | ~ m1_subset_1(X4,u1_struct_0(X0))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | v2_struct_0(X0)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | u1_struct_0(X3) != u1_struct_0(sK3)
    | u1_struct_0(X1) != u1_struct_0(sK0) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_508,c_5])).

cnf(c_847,plain,
    ( ~ r1_tmap_1(X0_49,X1_49,k3_tmap_1(X2_49,X1_49,X3_49,X0_49,sK4),X0_50)
    | r1_tmap_1(X3_49,X1_49,sK4,X0_50)
    | ~ v1_tsep_1(X0_49,X3_49)
    | ~ m1_pre_topc(X3_49,X2_49)
    | ~ m1_pre_topc(X0_49,X3_49)
    | ~ m1_subset_1(X0_50,u1_struct_0(X0_49))
    | ~ m1_subset_1(X0_50,u1_struct_0(X3_49))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3_49),u1_struct_0(X1_49))))
    | ~ v2_pre_topc(X1_49)
    | ~ v2_pre_topc(X2_49)
    | v2_struct_0(X0_49)
    | v2_struct_0(X2_49)
    | v2_struct_0(X1_49)
    | v2_struct_0(X3_49)
    | ~ l1_pre_topc(X1_49)
    | ~ l1_pre_topc(X2_49)
    | u1_struct_0(X3_49) != u1_struct_0(sK3)
    | u1_struct_0(X1_49) != u1_struct_0(sK0) ),
    inference(subtyping,[status(esa)],[c_551])).

cnf(c_1651,plain,
    ( ~ r1_tmap_1(X0_49,X1_49,k3_tmap_1(X2_49,X1_49,sK3,X0_49,sK4),X0_50)
    | r1_tmap_1(sK3,X1_49,sK4,X0_50)
    | ~ v1_tsep_1(X0_49,sK3)
    | ~ m1_pre_topc(X0_49,sK3)
    | ~ m1_pre_topc(sK3,X2_49)
    | ~ m1_subset_1(X0_50,u1_struct_0(X0_49))
    | ~ m1_subset_1(X0_50,u1_struct_0(sK3))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1_49))))
    | ~ v2_pre_topc(X1_49)
    | ~ v2_pre_topc(X2_49)
    | v2_struct_0(X0_49)
    | v2_struct_0(X2_49)
    | v2_struct_0(X1_49)
    | v2_struct_0(sK3)
    | ~ l1_pre_topc(X1_49)
    | ~ l1_pre_topc(X2_49)
    | u1_struct_0(X1_49) != u1_struct_0(sK0)
    | u1_struct_0(sK3) != u1_struct_0(sK3) ),
    inference(instantiation,[status(thm)],[c_847])).

cnf(c_1956,plain,
    ( r1_tmap_1(sK3,X0_49,sK4,X0_50)
    | ~ r1_tmap_1(sK2,X0_49,k3_tmap_1(X1_49,X0_49,sK3,sK2,sK4),X0_50)
    | ~ v1_tsep_1(sK2,sK3)
    | ~ m1_pre_topc(sK3,X1_49)
    | ~ m1_pre_topc(sK2,sK3)
    | ~ m1_subset_1(X0_50,u1_struct_0(sK3))
    | ~ m1_subset_1(X0_50,u1_struct_0(sK2))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_49))))
    | ~ v2_pre_topc(X1_49)
    | ~ v2_pre_topc(X0_49)
    | v2_struct_0(X0_49)
    | v2_struct_0(X1_49)
    | v2_struct_0(sK3)
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(X1_49)
    | ~ l1_pre_topc(X0_49)
    | u1_struct_0(X0_49) != u1_struct_0(sK0)
    | u1_struct_0(sK3) != u1_struct_0(sK3) ),
    inference(instantiation,[status(thm)],[c_1651])).

cnf(c_2188,plain,
    ( r1_tmap_1(sK3,X0_49,sK4,X0_50)
    | ~ r1_tmap_1(sK2,X0_49,k3_tmap_1(sK1,X0_49,sK3,sK2,sK4),X0_50)
    | ~ v1_tsep_1(sK2,sK3)
    | ~ m1_pre_topc(sK3,sK1)
    | ~ m1_pre_topc(sK2,sK3)
    | ~ m1_subset_1(X0_50,u1_struct_0(sK3))
    | ~ m1_subset_1(X0_50,u1_struct_0(sK2))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_49))))
    | ~ v2_pre_topc(X0_49)
    | ~ v2_pre_topc(sK1)
    | v2_struct_0(X0_49)
    | v2_struct_0(sK3)
    | v2_struct_0(sK1)
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(X0_49)
    | ~ l1_pre_topc(sK1)
    | u1_struct_0(X0_49) != u1_struct_0(sK0)
    | u1_struct_0(sK3) != u1_struct_0(sK3) ),
    inference(instantiation,[status(thm)],[c_1956])).

cnf(c_2274,plain,
    ( r1_tmap_1(sK3,X0_49,sK4,sK5)
    | ~ r1_tmap_1(sK2,X0_49,k3_tmap_1(sK1,X0_49,sK3,sK2,sK4),sK5)
    | ~ v1_tsep_1(sK2,sK3)
    | ~ m1_pre_topc(sK3,sK1)
    | ~ m1_pre_topc(sK2,sK3)
    | ~ m1_subset_1(sK5,u1_struct_0(sK3))
    | ~ m1_subset_1(sK5,u1_struct_0(sK2))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_49))))
    | ~ v2_pre_topc(X0_49)
    | ~ v2_pre_topc(sK1)
    | v2_struct_0(X0_49)
    | v2_struct_0(sK3)
    | v2_struct_0(sK1)
    | v2_struct_0(sK2)
    | ~ l1_pre_topc(X0_49)
    | ~ l1_pre_topc(sK1)
    | u1_struct_0(X0_49) != u1_struct_0(sK0)
    | u1_struct_0(sK3) != u1_struct_0(sK3) ),
    inference(instantiation,[status(thm)],[c_2188])).

cnf(c_2275,plain,
    ( u1_struct_0(X0_49) != u1_struct_0(sK0)
    | u1_struct_0(sK3) != u1_struct_0(sK3)
    | r1_tmap_1(sK3,X0_49,sK4,sK5) = iProver_top
    | r1_tmap_1(sK2,X0_49,k3_tmap_1(sK1,X0_49,sK3,sK2,sK4),sK5) != iProver_top
    | v1_tsep_1(sK2,sK3) != iProver_top
    | m1_pre_topc(sK3,sK1) != iProver_top
    | m1_pre_topc(sK2,sK3) != iProver_top
    | m1_subset_1(sK5,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK5,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_49)))) != iProver_top
    | v2_pre_topc(X0_49) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | v2_struct_0(X0_49) = iProver_top
    | v2_struct_0(sK3) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | v2_struct_0(sK2) = iProver_top
    | l1_pre_topc(X0_49) != iProver_top
    | l1_pre_topc(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2274])).

cnf(c_2277,plain,
    ( u1_struct_0(sK3) != u1_struct_0(sK3)
    | u1_struct_0(sK0) != u1_struct_0(sK0)
    | r1_tmap_1(sK3,sK0,sK4,sK5) = iProver_top
    | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK5) != iProver_top
    | v1_tsep_1(sK2,sK3) != iProver_top
    | m1_pre_topc(sK3,sK1) != iProver_top
    | m1_pre_topc(sK2,sK3) != iProver_top
    | m1_subset_1(sK5,u1_struct_0(sK3)) != iProver_top
    | m1_subset_1(sK5,u1_struct_0(sK2)) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK0)))) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | v2_struct_0(sK3) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | v2_struct_0(sK0) = iProver_top
    | v2_struct_0(sK2) = iProver_top
    | l1_pre_topc(sK1) != iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2275])).

cnf(c_20,negated_conjecture,
    ( m1_pre_topc(sK3,sK1) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_859,negated_conjecture,
    ( m1_pre_topc(sK3,sK1) ),
    inference(subtyping,[status(esa)],[c_20])).

cnf(c_1409,plain,
    ( m1_pre_topc(sK3,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_859])).

cnf(c_1,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_871,plain,
    ( ~ m1_pre_topc(X0_49,X1_49)
    | ~ l1_pre_topc(X1_49)
    | l1_pre_topc(X0_49) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_1398,plain,
    ( m1_pre_topc(X0_49,X1_49) != iProver_top
    | l1_pre_topc(X1_49) != iProver_top
    | l1_pre_topc(X0_49) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_871])).

cnf(c_1853,plain,
    ( l1_pre_topc(sK3) = iProver_top
    | l1_pre_topc(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1409,c_1398])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_3,plain,
    ( ~ v1_tsep_1(X0,X1)
    | v1_tsep_1(X0,X2)
    | ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X1)
    | ~ r1_tarski(u1_struct_0(X0),u1_struct_0(X2))
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_354,plain,
    ( ~ v1_tsep_1(X0,X1)
    | v1_tsep_1(X0,X2)
    | ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_subset_1(X3,k1_zfmisc_1(X4))
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | u1_struct_0(X2) != X4
    | u1_struct_0(X0) != X3 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_3])).

cnf(c_355,plain,
    ( ~ v1_tsep_1(X0,X1)
    | v1_tsep_1(X0,X2)
    | ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X2)))
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(unflattening,[status(thm)],[c_354])).

cnf(c_850,plain,
    ( ~ v1_tsep_1(X0_49,X1_49)
    | v1_tsep_1(X0_49,X2_49)
    | ~ m1_pre_topc(X0_49,X1_49)
    | ~ m1_pre_topc(X2_49,X1_49)
    | ~ m1_subset_1(u1_struct_0(X0_49),k1_zfmisc_1(u1_struct_0(X2_49)))
    | ~ v2_pre_topc(X1_49)
    | v2_struct_0(X2_49)
    | v2_struct_0(X1_49)
    | ~ l1_pre_topc(X1_49) ),
    inference(subtyping,[status(esa)],[c_355])).

cnf(c_1716,plain,
    ( v1_tsep_1(sK2,X0_49)
    | ~ v1_tsep_1(sK2,sK1)
    | ~ m1_pre_topc(X0_49,sK1)
    | ~ m1_pre_topc(sK2,sK1)
    | ~ m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(X0_49)))
    | ~ v2_pre_topc(sK1)
    | v2_struct_0(X0_49)
    | v2_struct_0(sK1)
    | ~ l1_pre_topc(sK1) ),
    inference(instantiation,[status(thm)],[c_850])).

cnf(c_1826,plain,
    ( v1_tsep_1(sK2,sK3)
    | ~ v1_tsep_1(sK2,sK1)
    | ~ m1_pre_topc(sK3,sK1)
    | ~ m1_pre_topc(sK2,sK1)
    | ~ m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ v2_pre_topc(sK1)
    | v2_struct_0(sK3)
    | v2_struct_0(sK1)
    | ~ l1_pre_topc(sK1) ),
    inference(instantiation,[status(thm)],[c_1716])).

cnf(c_1827,plain,
    ( v1_tsep_1(sK2,sK3) = iProver_top
    | v1_tsep_1(sK2,sK1) != iProver_top
    | m1_pre_topc(sK3,sK1) != iProver_top
    | m1_pre_topc(sK2,sK1) != iProver_top
    | m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK3))) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | v2_struct_0(sK3) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1826])).

cnf(c_1805,plain,
    ( u1_struct_0(sK2) = u1_struct_0(sK2) ),
    inference(instantiation,[status(thm)],[c_873])).

cnf(c_876,plain,
    ( ~ m1_subset_1(X0_50,X1_50)
    | m1_subset_1(X2_50,X3_50)
    | X2_50 != X0_50
    | X3_50 != X1_50 ),
    theory(equality)).

cnf(c_1672,plain,
    ( m1_subset_1(X0_50,X1_50)
    | ~ m1_subset_1(sK6,u1_struct_0(sK2))
    | X1_50 != u1_struct_0(sK2)
    | X0_50 != sK6 ),
    inference(instantiation,[status(thm)],[c_876])).

cnf(c_1754,plain,
    ( m1_subset_1(sK5,X0_50)
    | ~ m1_subset_1(sK6,u1_struct_0(sK2))
    | X0_50 != u1_struct_0(sK2)
    | sK5 != sK6 ),
    inference(instantiation,[status(thm)],[c_1672])).

cnf(c_1804,plain,
    ( m1_subset_1(sK5,u1_struct_0(sK2))
    | ~ m1_subset_1(sK6,u1_struct_0(sK2))
    | u1_struct_0(sK2) != u1_struct_0(sK2)
    | sK5 != sK6 ),
    inference(instantiation,[status(thm)],[c_1754])).

cnf(c_1806,plain,
    ( u1_struct_0(sK2) != u1_struct_0(sK2)
    | sK5 != sK6
    | m1_subset_1(sK5,u1_struct_0(sK2)) = iProver_top
    | m1_subset_1(sK6,u1_struct_0(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1804])).

cnf(c_4,plain,
    ( ~ m1_pre_topc(X0,X1)
    | m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_870,plain,
    ( ~ m1_pre_topc(X0_49,X1_49)
    | m1_subset_1(u1_struct_0(X0_49),k1_zfmisc_1(u1_struct_0(X1_49)))
    | ~ l1_pre_topc(X1_49) ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_1661,plain,
    ( ~ m1_pre_topc(sK2,sK3)
    | m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK3)))
    | ~ l1_pre_topc(sK3) ),
    inference(instantiation,[status(thm)],[c_870])).

cnf(c_1662,plain,
    ( m1_pre_topc(sK2,sK3) != iProver_top
    | m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK3))) = iProver_top
    | l1_pre_topc(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1661])).

cnf(c_1650,plain,
    ( u1_struct_0(sK3) = u1_struct_0(sK3) ),
    inference(instantiation,[status(thm)],[c_873])).

cnf(c_13,negated_conjecture,
    ( m1_subset_1(sK5,u1_struct_0(sK3)) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_864,negated_conjecture,
    ( m1_subset_1(sK5,u1_struct_0(sK3)) ),
    inference(subtyping,[status(esa)],[c_13])).

cnf(c_1404,plain,
    ( m1_subset_1(sK5,u1_struct_0(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_864])).

cnf(c_1450,plain,
    ( m1_subset_1(sK6,u1_struct_0(sK3)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1404,c_866])).

cnf(c_10,negated_conjecture,
    ( r1_tmap_1(sK3,sK0,sK4,sK5)
    | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_867,negated_conjecture,
    ( r1_tmap_1(sK3,sK0,sK4,sK5)
    | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) ),
    inference(subtyping,[status(esa)],[c_10])).

cnf(c_1402,plain,
    ( r1_tmap_1(sK3,sK0,sK4,sK5) = iProver_top
    | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_867])).

cnf(c_1461,plain,
    ( r1_tmap_1(sK3,sK0,sK4,sK6) = iProver_top
    | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1402,c_866])).

cnf(c_49,plain,
    ( r1_tmap_1(sK3,sK0,sK4,sK5) != iProver_top
    | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_12,negated_conjecture,
    ( m1_subset_1(sK6,u1_struct_0(sK2)) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_47,plain,
    ( m1_subset_1(sK6,u1_struct_0(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_46,plain,
    ( m1_subset_1(sK5,u1_struct_0(sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_14,negated_conjecture,
    ( m1_pre_topc(sK2,sK3) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_45,plain,
    ( m1_pre_topc(sK2,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_16,negated_conjecture,
    ( v1_tsep_1(sK2,sK1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_43,plain,
    ( v1_tsep_1(sK2,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_39,plain,
    ( m1_pre_topc(sK3,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_22,negated_conjecture,
    ( m1_pre_topc(sK2,sK1) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_37,plain,
    ( m1_pre_topc(sK2,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_23,negated_conjecture,
    ( ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_36,plain,
    ( v2_struct_0(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_24,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_35,plain,
    ( l1_pre_topc(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_25,negated_conjecture,
    ( v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_34,plain,
    ( v2_pre_topc(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_26,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_33,plain,
    ( v2_struct_0(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2564,c_2434,c_2359,c_2356,c_2277,c_1853,c_1827,c_1805,c_1806,c_1662,c_1650,c_1450,c_1461,c_866,c_49,c_47,c_46,c_45,c_43,c_42,c_39,c_38,c_37,c_36,c_35,c_34,c_33,c_32,c_31,c_30])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.32  % Computer   : n023.cluster.edu
% 0.12/0.32  % Model      : x86_64 x86_64
% 0.12/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.32  % Memory     : 8042.1875MB
% 0.12/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.32  % CPULimit   : 60
% 0.12/0.32  % WCLimit    : 600
% 0.12/0.32  % DateTime   : Tue Dec  1 15:50:51 EST 2020
% 0.12/0.32  % CPUTime    : 
% 0.12/0.32  % Running in FOF mode
% 1.70/1.00  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.70/1.00  
% 1.70/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.70/1.00  
% 1.70/1.00  ------  iProver source info
% 1.70/1.00  
% 1.70/1.00  git: date: 2020-06-30 10:37:57 +0100
% 1.70/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.70/1.00  git: non_committed_changes: false
% 1.70/1.00  git: last_make_outside_of_git: false
% 1.70/1.00  
% 1.70/1.00  ------ 
% 1.70/1.00  
% 1.70/1.00  ------ Input Options
% 1.70/1.00  
% 1.70/1.00  --out_options                           all
% 1.70/1.00  --tptp_safe_out                         true
% 1.70/1.00  --problem_path                          ""
% 1.70/1.00  --include_path                          ""
% 1.70/1.00  --clausifier                            res/vclausify_rel
% 1.70/1.00  --clausifier_options                    --mode clausify
% 1.70/1.00  --stdin                                 false
% 1.70/1.00  --stats_out                             all
% 1.70/1.00  
% 1.70/1.00  ------ General Options
% 1.70/1.00  
% 1.70/1.00  --fof                                   false
% 1.70/1.00  --time_out_real                         305.
% 1.70/1.00  --time_out_virtual                      -1.
% 1.70/1.00  --symbol_type_check                     false
% 1.70/1.00  --clausify_out                          false
% 1.70/1.00  --sig_cnt_out                           false
% 1.70/1.00  --trig_cnt_out                          false
% 1.70/1.00  --trig_cnt_out_tolerance                1.
% 1.70/1.00  --trig_cnt_out_sk_spl                   false
% 1.70/1.00  --abstr_cl_out                          false
% 1.70/1.00  
% 1.70/1.00  ------ Global Options
% 1.70/1.00  
% 1.70/1.00  --schedule                              default
% 1.70/1.00  --add_important_lit                     false
% 1.70/1.00  --prop_solver_per_cl                    1000
% 1.70/1.00  --min_unsat_core                        false
% 1.70/1.00  --soft_assumptions                      false
% 1.70/1.00  --soft_lemma_size                       3
% 1.70/1.00  --prop_impl_unit_size                   0
% 1.70/1.00  --prop_impl_unit                        []
% 1.70/1.00  --share_sel_clauses                     true
% 1.70/1.00  --reset_solvers                         false
% 1.70/1.00  --bc_imp_inh                            [conj_cone]
% 1.70/1.00  --conj_cone_tolerance                   3.
% 1.70/1.00  --extra_neg_conj                        none
% 1.70/1.00  --large_theory_mode                     true
% 1.70/1.00  --prolific_symb_bound                   200
% 1.70/1.00  --lt_threshold                          2000
% 1.70/1.00  --clause_weak_htbl                      true
% 1.70/1.00  --gc_record_bc_elim                     false
% 1.70/1.00  
% 1.70/1.00  ------ Preprocessing Options
% 1.70/1.00  
% 1.70/1.00  --preprocessing_flag                    true
% 1.70/1.00  --time_out_prep_mult                    0.1
% 1.70/1.00  --splitting_mode                        input
% 1.70/1.00  --splitting_grd                         true
% 1.70/1.00  --splitting_cvd                         false
% 1.70/1.00  --splitting_cvd_svl                     false
% 1.70/1.00  --splitting_nvd                         32
% 1.70/1.00  --sub_typing                            true
% 1.70/1.00  --prep_gs_sim                           true
% 1.70/1.00  --prep_unflatten                        true
% 1.70/1.00  --prep_res_sim                          true
% 1.70/1.00  --prep_upred                            true
% 1.70/1.00  --prep_sem_filter                       exhaustive
% 1.70/1.00  --prep_sem_filter_out                   false
% 1.70/1.00  --pred_elim                             true
% 1.70/1.00  --res_sim_input                         true
% 1.70/1.00  --eq_ax_congr_red                       true
% 1.70/1.00  --pure_diseq_elim                       true
% 1.70/1.00  --brand_transform                       false
% 1.70/1.00  --non_eq_to_eq                          false
% 1.70/1.00  --prep_def_merge                        true
% 1.70/1.00  --prep_def_merge_prop_impl              false
% 1.70/1.00  --prep_def_merge_mbd                    true
% 1.70/1.00  --prep_def_merge_tr_red                 false
% 1.70/1.00  --prep_def_merge_tr_cl                  false
% 1.70/1.00  --smt_preprocessing                     true
% 1.70/1.00  --smt_ac_axioms                         fast
% 1.70/1.00  --preprocessed_out                      false
% 1.70/1.00  --preprocessed_stats                    false
% 1.70/1.00  
% 1.70/1.00  ------ Abstraction refinement Options
% 1.70/1.00  
% 1.70/1.00  --abstr_ref                             []
% 1.70/1.00  --abstr_ref_prep                        false
% 1.70/1.00  --abstr_ref_until_sat                   false
% 1.70/1.00  --abstr_ref_sig_restrict                funpre
% 1.70/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 1.70/1.00  --abstr_ref_under                       []
% 1.70/1.00  
% 1.70/1.00  ------ SAT Options
% 1.70/1.00  
% 1.70/1.00  --sat_mode                              false
% 1.70/1.00  --sat_fm_restart_options                ""
% 1.70/1.00  --sat_gr_def                            false
% 1.70/1.00  --sat_epr_types                         true
% 1.70/1.00  --sat_non_cyclic_types                  false
% 1.70/1.00  --sat_finite_models                     false
% 1.70/1.00  --sat_fm_lemmas                         false
% 1.70/1.00  --sat_fm_prep                           false
% 1.70/1.00  --sat_fm_uc_incr                        true
% 1.70/1.00  --sat_out_model                         small
% 1.70/1.00  --sat_out_clauses                       false
% 1.70/1.00  
% 1.70/1.00  ------ QBF Options
% 1.70/1.00  
% 1.70/1.00  --qbf_mode                              false
% 1.70/1.00  --qbf_elim_univ                         false
% 1.70/1.00  --qbf_dom_inst                          none
% 1.70/1.00  --qbf_dom_pre_inst                      false
% 1.70/1.00  --qbf_sk_in                             false
% 1.70/1.00  --qbf_pred_elim                         true
% 1.70/1.00  --qbf_split                             512
% 1.70/1.00  
% 1.70/1.00  ------ BMC1 Options
% 1.70/1.00  
% 1.70/1.00  --bmc1_incremental                      false
% 1.70/1.00  --bmc1_axioms                           reachable_all
% 1.70/1.00  --bmc1_min_bound                        0
% 1.70/1.00  --bmc1_max_bound                        -1
% 1.70/1.00  --bmc1_max_bound_default                -1
% 1.70/1.00  --bmc1_symbol_reachability              true
% 1.70/1.00  --bmc1_property_lemmas                  false
% 1.70/1.00  --bmc1_k_induction                      false
% 1.70/1.00  --bmc1_non_equiv_states                 false
% 1.70/1.00  --bmc1_deadlock                         false
% 1.70/1.00  --bmc1_ucm                              false
% 1.70/1.00  --bmc1_add_unsat_core                   none
% 1.70/1.00  --bmc1_unsat_core_children              false
% 1.70/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 1.70/1.00  --bmc1_out_stat                         full
% 1.70/1.00  --bmc1_ground_init                      false
% 1.70/1.00  --bmc1_pre_inst_next_state              false
% 1.70/1.00  --bmc1_pre_inst_state                   false
% 1.70/1.00  --bmc1_pre_inst_reach_state             false
% 1.70/1.00  --bmc1_out_unsat_core                   false
% 1.70/1.00  --bmc1_aig_witness_out                  false
% 1.70/1.00  --bmc1_verbose                          false
% 1.70/1.00  --bmc1_dump_clauses_tptp                false
% 1.70/1.00  --bmc1_dump_unsat_core_tptp             false
% 1.70/1.00  --bmc1_dump_file                        -
% 1.70/1.00  --bmc1_ucm_expand_uc_limit              128
% 1.70/1.00  --bmc1_ucm_n_expand_iterations          6
% 1.70/1.00  --bmc1_ucm_extend_mode                  1
% 1.70/1.00  --bmc1_ucm_init_mode                    2
% 1.70/1.00  --bmc1_ucm_cone_mode                    none
% 1.70/1.00  --bmc1_ucm_reduced_relation_type        0
% 1.70/1.00  --bmc1_ucm_relax_model                  4
% 1.70/1.00  --bmc1_ucm_full_tr_after_sat            true
% 1.70/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 1.70/1.00  --bmc1_ucm_layered_model                none
% 1.70/1.00  --bmc1_ucm_max_lemma_size               10
% 1.70/1.00  
% 1.70/1.00  ------ AIG Options
% 1.70/1.00  
% 1.70/1.00  --aig_mode                              false
% 1.70/1.00  
% 1.70/1.00  ------ Instantiation Options
% 1.70/1.00  
% 1.70/1.00  --instantiation_flag                    true
% 1.70/1.00  --inst_sos_flag                         false
% 1.70/1.00  --inst_sos_phase                        true
% 1.70/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.70/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.70/1.00  --inst_lit_sel_side                     num_symb
% 1.70/1.00  --inst_solver_per_active                1400
% 1.70/1.00  --inst_solver_calls_frac                1.
% 1.70/1.00  --inst_passive_queue_type               priority_queues
% 1.70/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.70/1.00  --inst_passive_queues_freq              [25;2]
% 1.70/1.00  --inst_dismatching                      true
% 1.70/1.00  --inst_eager_unprocessed_to_passive     true
% 1.70/1.00  --inst_prop_sim_given                   true
% 1.70/1.00  --inst_prop_sim_new                     false
% 1.70/1.00  --inst_subs_new                         false
% 1.70/1.00  --inst_eq_res_simp                      false
% 1.70/1.00  --inst_subs_given                       false
% 1.70/1.00  --inst_orphan_elimination               true
% 1.70/1.00  --inst_learning_loop_flag               true
% 1.70/1.00  --inst_learning_start                   3000
% 1.70/1.00  --inst_learning_factor                  2
% 1.70/1.00  --inst_start_prop_sim_after_learn       3
% 1.70/1.00  --inst_sel_renew                        solver
% 1.70/1.00  --inst_lit_activity_flag                true
% 1.70/1.00  --inst_restr_to_given                   false
% 1.70/1.00  --inst_activity_threshold               500
% 1.70/1.00  --inst_out_proof                        true
% 1.70/1.00  
% 1.70/1.00  ------ Resolution Options
% 1.70/1.00  
% 1.70/1.00  --resolution_flag                       true
% 1.70/1.00  --res_lit_sel                           adaptive
% 1.70/1.00  --res_lit_sel_side                      none
% 1.70/1.00  --res_ordering                          kbo
% 1.70/1.00  --res_to_prop_solver                    active
% 1.70/1.00  --res_prop_simpl_new                    false
% 1.70/1.00  --res_prop_simpl_given                  true
% 1.70/1.00  --res_passive_queue_type                priority_queues
% 1.70/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.70/1.00  --res_passive_queues_freq               [15;5]
% 1.70/1.00  --res_forward_subs                      full
% 1.70/1.00  --res_backward_subs                     full
% 1.70/1.00  --res_forward_subs_resolution           true
% 1.70/1.00  --res_backward_subs_resolution          true
% 1.70/1.00  --res_orphan_elimination                true
% 1.70/1.00  --res_time_limit                        2.
% 1.70/1.00  --res_out_proof                         true
% 1.70/1.00  
% 1.70/1.00  ------ Superposition Options
% 1.70/1.00  
% 1.70/1.00  --superposition_flag                    true
% 1.70/1.00  --sup_passive_queue_type                priority_queues
% 1.70/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.70/1.00  --sup_passive_queues_freq               [8;1;4]
% 1.70/1.00  --demod_completeness_check              fast
% 1.70/1.00  --demod_use_ground                      true
% 1.70/1.00  --sup_to_prop_solver                    passive
% 1.70/1.00  --sup_prop_simpl_new                    true
% 1.70/1.00  --sup_prop_simpl_given                  true
% 1.70/1.00  --sup_fun_splitting                     false
% 1.70/1.00  --sup_smt_interval                      50000
% 1.70/1.00  
% 1.70/1.00  ------ Superposition Simplification Setup
% 1.70/1.00  
% 1.70/1.00  --sup_indices_passive                   []
% 1.70/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.70/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.70/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.70/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 1.70/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.70/1.00  --sup_full_bw                           [BwDemod]
% 1.70/1.00  --sup_immed_triv                        [TrivRules]
% 1.70/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.70/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.70/1.00  --sup_immed_bw_main                     []
% 1.70/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.70/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 1.70/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.70/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.70/1.00  
% 1.70/1.00  ------ Combination Options
% 1.70/1.00  
% 1.70/1.00  --comb_res_mult                         3
% 1.70/1.00  --comb_sup_mult                         2
% 1.70/1.00  --comb_inst_mult                        10
% 1.70/1.00  
% 1.70/1.00  ------ Debug Options
% 1.70/1.00  
% 1.70/1.00  --dbg_backtrace                         false
% 1.70/1.00  --dbg_dump_prop_clauses                 false
% 1.70/1.00  --dbg_dump_prop_clauses_file            -
% 1.70/1.00  --dbg_out_stat                          false
% 1.70/1.00  ------ Parsing...
% 1.70/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.70/1.00  
% 1.70/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 1.70/1.00  
% 1.70/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.70/1.00  
% 1.70/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.70/1.00  ------ Proving...
% 1.70/1.00  ------ Problem Properties 
% 1.70/1.00  
% 1.70/1.00  
% 1.70/1.00  clauses                                 25
% 1.70/1.00  conjectures                             18
% 1.70/1.00  EPR                                     15
% 1.70/1.00  Horn                                    20
% 1.70/1.00  unary                                   16
% 1.70/1.00  binary                                  2
% 1.70/1.00  lits                                    84
% 1.70/1.00  lits eq                                 5
% 1.70/1.00  fd_pure                                 0
% 1.70/1.00  fd_pseudo                               0
% 1.70/1.00  fd_cond                                 0
% 1.70/1.00  fd_pseudo_cond                          0
% 1.70/1.00  AC symbols                              0
% 1.70/1.00  
% 1.70/1.00  ------ Schedule dynamic 5 is on 
% 1.70/1.00  
% 1.70/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.70/1.00  
% 1.70/1.00  
% 1.70/1.00  ------ 
% 1.70/1.00  Current options:
% 1.70/1.00  ------ 
% 1.70/1.00  
% 1.70/1.00  ------ Input Options
% 1.70/1.00  
% 1.70/1.00  --out_options                           all
% 1.70/1.00  --tptp_safe_out                         true
% 1.70/1.00  --problem_path                          ""
% 1.70/1.00  --include_path                          ""
% 1.70/1.00  --clausifier                            res/vclausify_rel
% 1.70/1.00  --clausifier_options                    --mode clausify
% 1.70/1.00  --stdin                                 false
% 1.70/1.00  --stats_out                             all
% 1.70/1.00  
% 1.70/1.00  ------ General Options
% 1.70/1.00  
% 1.70/1.00  --fof                                   false
% 1.70/1.00  --time_out_real                         305.
% 1.70/1.00  --time_out_virtual                      -1.
% 1.70/1.00  --symbol_type_check                     false
% 1.70/1.00  --clausify_out                          false
% 1.70/1.00  --sig_cnt_out                           false
% 1.70/1.00  --trig_cnt_out                          false
% 1.70/1.00  --trig_cnt_out_tolerance                1.
% 1.70/1.00  --trig_cnt_out_sk_spl                   false
% 1.70/1.00  --abstr_cl_out                          false
% 1.70/1.00  
% 1.70/1.00  ------ Global Options
% 1.70/1.00  
% 1.70/1.00  --schedule                              default
% 1.70/1.00  --add_important_lit                     false
% 1.70/1.00  --prop_solver_per_cl                    1000
% 1.70/1.00  --min_unsat_core                        false
% 1.70/1.00  --soft_assumptions                      false
% 1.70/1.00  --soft_lemma_size                       3
% 1.70/1.00  --prop_impl_unit_size                   0
% 1.70/1.00  --prop_impl_unit                        []
% 1.70/1.00  --share_sel_clauses                     true
% 1.70/1.00  --reset_solvers                         false
% 1.70/1.00  --bc_imp_inh                            [conj_cone]
% 1.70/1.00  --conj_cone_tolerance                   3.
% 1.70/1.00  --extra_neg_conj                        none
% 1.70/1.00  --large_theory_mode                     true
% 1.70/1.00  --prolific_symb_bound                   200
% 1.70/1.00  --lt_threshold                          2000
% 1.70/1.00  --clause_weak_htbl                      true
% 1.70/1.00  --gc_record_bc_elim                     false
% 1.70/1.00  
% 1.70/1.00  ------ Preprocessing Options
% 1.70/1.00  
% 1.70/1.00  --preprocessing_flag                    true
% 1.70/1.00  --time_out_prep_mult                    0.1
% 1.70/1.00  --splitting_mode                        input
% 1.70/1.00  --splitting_grd                         true
% 1.70/1.00  --splitting_cvd                         false
% 1.70/1.00  --splitting_cvd_svl                     false
% 1.70/1.00  --splitting_nvd                         32
% 1.70/1.00  --sub_typing                            true
% 1.70/1.00  --prep_gs_sim                           true
% 1.70/1.00  --prep_unflatten                        true
% 1.70/1.00  --prep_res_sim                          true
% 1.70/1.00  --prep_upred                            true
% 1.70/1.00  --prep_sem_filter                       exhaustive
% 1.70/1.00  --prep_sem_filter_out                   false
% 1.70/1.00  --pred_elim                             true
% 1.70/1.00  --res_sim_input                         true
% 1.70/1.00  --eq_ax_congr_red                       true
% 1.70/1.00  --pure_diseq_elim                       true
% 1.70/1.00  --brand_transform                       false
% 1.70/1.00  --non_eq_to_eq                          false
% 1.70/1.00  --prep_def_merge                        true
% 1.70/1.00  --prep_def_merge_prop_impl              false
% 1.70/1.00  --prep_def_merge_mbd                    true
% 1.70/1.00  --prep_def_merge_tr_red                 false
% 1.70/1.00  --prep_def_merge_tr_cl                  false
% 1.70/1.00  --smt_preprocessing                     true
% 1.70/1.00  --smt_ac_axioms                         fast
% 1.70/1.00  --preprocessed_out                      false
% 1.70/1.00  --preprocessed_stats                    false
% 1.70/1.00  
% 1.70/1.00  ------ Abstraction refinement Options
% 1.70/1.00  
% 1.70/1.00  --abstr_ref                             []
% 1.70/1.00  --abstr_ref_prep                        false
% 1.70/1.00  --abstr_ref_until_sat                   false
% 1.70/1.00  --abstr_ref_sig_restrict                funpre
% 1.70/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 1.70/1.00  --abstr_ref_under                       []
% 1.70/1.00  
% 1.70/1.00  ------ SAT Options
% 1.70/1.00  
% 1.70/1.00  --sat_mode                              false
% 1.70/1.00  --sat_fm_restart_options                ""
% 1.70/1.00  --sat_gr_def                            false
% 1.70/1.00  --sat_epr_types                         true
% 1.70/1.00  --sat_non_cyclic_types                  false
% 1.70/1.00  --sat_finite_models                     false
% 1.70/1.00  --sat_fm_lemmas                         false
% 1.70/1.00  --sat_fm_prep                           false
% 1.70/1.00  --sat_fm_uc_incr                        true
% 1.70/1.00  --sat_out_model                         small
% 1.70/1.00  --sat_out_clauses                       false
% 1.70/1.00  
% 1.70/1.00  ------ QBF Options
% 1.70/1.00  
% 1.70/1.00  --qbf_mode                              false
% 1.70/1.00  --qbf_elim_univ                         false
% 1.70/1.00  --qbf_dom_inst                          none
% 1.70/1.00  --qbf_dom_pre_inst                      false
% 1.70/1.00  --qbf_sk_in                             false
% 1.70/1.00  --qbf_pred_elim                         true
% 1.70/1.00  --qbf_split                             512
% 1.70/1.00  
% 1.70/1.00  ------ BMC1 Options
% 1.70/1.00  
% 1.70/1.00  --bmc1_incremental                      false
% 1.70/1.00  --bmc1_axioms                           reachable_all
% 1.70/1.00  --bmc1_min_bound                        0
% 1.70/1.00  --bmc1_max_bound                        -1
% 1.70/1.00  --bmc1_max_bound_default                -1
% 1.70/1.00  --bmc1_symbol_reachability              true
% 1.70/1.00  --bmc1_property_lemmas                  false
% 1.70/1.00  --bmc1_k_induction                      false
% 1.70/1.00  --bmc1_non_equiv_states                 false
% 1.70/1.00  --bmc1_deadlock                         false
% 1.70/1.00  --bmc1_ucm                              false
% 1.70/1.00  --bmc1_add_unsat_core                   none
% 1.70/1.00  --bmc1_unsat_core_children              false
% 1.70/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 1.70/1.00  --bmc1_out_stat                         full
% 1.70/1.00  --bmc1_ground_init                      false
% 1.70/1.00  --bmc1_pre_inst_next_state              false
% 1.70/1.00  --bmc1_pre_inst_state                   false
% 1.70/1.00  --bmc1_pre_inst_reach_state             false
% 1.70/1.00  --bmc1_out_unsat_core                   false
% 1.70/1.00  --bmc1_aig_witness_out                  false
% 1.70/1.00  --bmc1_verbose                          false
% 1.70/1.00  --bmc1_dump_clauses_tptp                false
% 1.70/1.00  --bmc1_dump_unsat_core_tptp             false
% 1.70/1.00  --bmc1_dump_file                        -
% 1.70/1.00  --bmc1_ucm_expand_uc_limit              128
% 1.70/1.00  --bmc1_ucm_n_expand_iterations          6
% 1.70/1.00  --bmc1_ucm_extend_mode                  1
% 1.70/1.00  --bmc1_ucm_init_mode                    2
% 1.70/1.00  --bmc1_ucm_cone_mode                    none
% 1.70/1.00  --bmc1_ucm_reduced_relation_type        0
% 1.70/1.00  --bmc1_ucm_relax_model                  4
% 1.70/1.00  --bmc1_ucm_full_tr_after_sat            true
% 1.70/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 1.70/1.00  --bmc1_ucm_layered_model                none
% 1.70/1.00  --bmc1_ucm_max_lemma_size               10
% 1.70/1.00  
% 1.70/1.00  ------ AIG Options
% 1.70/1.00  
% 1.70/1.00  --aig_mode                              false
% 1.70/1.00  
% 1.70/1.00  ------ Instantiation Options
% 1.70/1.00  
% 1.70/1.00  --instantiation_flag                    true
% 1.70/1.00  --inst_sos_flag                         false
% 1.70/1.00  --inst_sos_phase                        true
% 1.70/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.70/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.70/1.00  --inst_lit_sel_side                     none
% 1.70/1.00  --inst_solver_per_active                1400
% 1.70/1.00  --inst_solver_calls_frac                1.
% 1.70/1.00  --inst_passive_queue_type               priority_queues
% 1.70/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.70/1.00  --inst_passive_queues_freq              [25;2]
% 1.70/1.00  --inst_dismatching                      true
% 1.70/1.00  --inst_eager_unprocessed_to_passive     true
% 1.70/1.00  --inst_prop_sim_given                   true
% 1.70/1.00  --inst_prop_sim_new                     false
% 1.70/1.00  --inst_subs_new                         false
% 1.70/1.00  --inst_eq_res_simp                      false
% 1.70/1.00  --inst_subs_given                       false
% 1.70/1.00  --inst_orphan_elimination               true
% 1.70/1.00  --inst_learning_loop_flag               true
% 1.70/1.00  --inst_learning_start                   3000
% 1.70/1.00  --inst_learning_factor                  2
% 1.70/1.00  --inst_start_prop_sim_after_learn       3
% 1.70/1.00  --inst_sel_renew                        solver
% 1.70/1.00  --inst_lit_activity_flag                true
% 1.70/1.00  --inst_restr_to_given                   false
% 1.70/1.00  --inst_activity_threshold               500
% 1.70/1.00  --inst_out_proof                        true
% 1.70/1.00  
% 1.70/1.00  ------ Resolution Options
% 1.70/1.00  
% 1.70/1.00  --resolution_flag                       false
% 1.70/1.00  --res_lit_sel                           adaptive
% 1.70/1.00  --res_lit_sel_side                      none
% 1.70/1.00  --res_ordering                          kbo
% 1.70/1.00  --res_to_prop_solver                    active
% 1.70/1.00  --res_prop_simpl_new                    false
% 1.70/1.00  --res_prop_simpl_given                  true
% 1.70/1.00  --res_passive_queue_type                priority_queues
% 1.70/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.70/1.00  --res_passive_queues_freq               [15;5]
% 1.70/1.00  --res_forward_subs                      full
% 1.70/1.00  --res_backward_subs                     full
% 1.70/1.00  --res_forward_subs_resolution           true
% 1.70/1.00  --res_backward_subs_resolution          true
% 1.70/1.00  --res_orphan_elimination                true
% 1.70/1.00  --res_time_limit                        2.
% 1.70/1.00  --res_out_proof                         true
% 1.70/1.00  
% 1.70/1.00  ------ Superposition Options
% 1.70/1.00  
% 1.70/1.00  --superposition_flag                    true
% 1.70/1.00  --sup_passive_queue_type                priority_queues
% 1.70/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.70/1.00  --sup_passive_queues_freq               [8;1;4]
% 1.70/1.00  --demod_completeness_check              fast
% 1.70/1.00  --demod_use_ground                      true
% 1.70/1.00  --sup_to_prop_solver                    passive
% 1.70/1.00  --sup_prop_simpl_new                    true
% 1.70/1.00  --sup_prop_simpl_given                  true
% 1.70/1.00  --sup_fun_splitting                     false
% 1.70/1.00  --sup_smt_interval                      50000
% 1.70/1.00  
% 1.70/1.00  ------ Superposition Simplification Setup
% 1.70/1.00  
% 1.70/1.00  --sup_indices_passive                   []
% 1.70/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.70/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.70/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.70/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 1.70/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.70/1.00  --sup_full_bw                           [BwDemod]
% 1.70/1.00  --sup_immed_triv                        [TrivRules]
% 1.70/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.70/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.70/1.00  --sup_immed_bw_main                     []
% 1.70/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.70/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 1.70/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.70/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.70/1.00  
% 1.70/1.00  ------ Combination Options
% 1.70/1.00  
% 1.70/1.00  --comb_res_mult                         3
% 1.70/1.00  --comb_sup_mult                         2
% 1.70/1.00  --comb_inst_mult                        10
% 1.70/1.00  
% 1.70/1.00  ------ Debug Options
% 1.70/1.00  
% 1.70/1.00  --dbg_backtrace                         false
% 1.70/1.00  --dbg_dump_prop_clauses                 false
% 1.70/1.00  --dbg_dump_prop_clauses_file            -
% 1.70/1.00  --dbg_out_stat                          false
% 1.70/1.00  
% 1.70/1.00  
% 1.70/1.00  
% 1.70/1.00  
% 1.70/1.00  ------ Proving...
% 1.70/1.00  
% 1.70/1.00  
% 1.70/1.00  % SZS status Theorem for theBenchmark.p
% 1.70/1.00  
% 1.70/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 1.70/1.00  
% 1.70/1.00  fof(f7,axiom,(
% 1.70/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) => ((m1_pre_topc(X2,X3) & v1_tsep_1(X2,X3)) => ! [X5] : (m1_subset_1(X5,u1_struct_0(X3)) => ! [X6] : (m1_subset_1(X6,u1_struct_0(X2)) => (X5 = X6 => (r1_tmap_1(X3,X1,X4,X5) <=> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)))))))))))),
% 1.70/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.70/1.00  
% 1.70/1.00  fof(f20,plain,(
% 1.70/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : ((! [X5] : (! [X6] : (((r1_tmap_1(X3,X1,X4,X5) <=> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)) | X5 != X6) | ~m1_subset_1(X6,u1_struct_0(X2))) | ~m1_subset_1(X5,u1_struct_0(X3))) | (~m1_pre_topc(X2,X3) | ~v1_tsep_1(X2,X3))) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) | ~v1_funct_1(X4))) | (~m1_pre_topc(X3,X0) | v2_struct_0(X3))) | (~m1_pre_topc(X2,X0) | v2_struct_0(X2))) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 1.70/1.00    inference(ennf_transformation,[],[f7])).
% 1.70/1.00  
% 1.70/1.00  fof(f21,plain,(
% 1.70/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : (! [X6] : ((r1_tmap_1(X3,X1,X4,X5) <=> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)) | X5 != X6 | ~m1_subset_1(X6,u1_struct_0(X2))) | ~m1_subset_1(X5,u1_struct_0(X3))) | ~m1_pre_topc(X2,X3) | ~v1_tsep_1(X2,X3) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) | ~v1_funct_1(X4)) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3)) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.70/1.00    inference(flattening,[],[f20])).
% 1.70/1.00  
% 1.70/1.00  fof(f24,plain,(
% 1.70/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : (! [X6] : (((r1_tmap_1(X3,X1,X4,X5) | ~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | ~r1_tmap_1(X3,X1,X4,X5))) | X5 != X6 | ~m1_subset_1(X6,u1_struct_0(X2))) | ~m1_subset_1(X5,u1_struct_0(X3))) | ~m1_pre_topc(X2,X3) | ~v1_tsep_1(X2,X3) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) | ~v1_funct_1(X4)) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3)) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.70/1.00    inference(nnf_transformation,[],[f21])).
% 1.70/1.00  
% 1.70/1.00  fof(f42,plain,(
% 1.70/1.00    ( ! [X6,X4,X2,X0,X5,X3,X1] : (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | ~r1_tmap_1(X3,X1,X4,X5) | X5 != X6 | ~m1_subset_1(X6,u1_struct_0(X2)) | ~m1_subset_1(X5,u1_struct_0(X3)) | ~m1_pre_topc(X2,X3) | ~v1_tsep_1(X2,X3) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.70/1.00    inference(cnf_transformation,[],[f24])).
% 1.70/1.00  
% 1.70/1.00  fof(f67,plain,(
% 1.70/1.00    ( ! [X6,X4,X2,X0,X3,X1] : (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | ~r1_tmap_1(X3,X1,X4,X6) | ~m1_subset_1(X6,u1_struct_0(X2)) | ~m1_subset_1(X6,u1_struct_0(X3)) | ~m1_pre_topc(X2,X3) | ~v1_tsep_1(X2,X3) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.70/1.00    inference(equality_resolution,[],[f42])).
% 1.70/1.00  
% 1.70/1.00  fof(f6,axiom,(
% 1.70/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X4)) => ! [X5] : (m1_subset_1(X5,u1_struct_0(X2)) => ! [X6] : (m1_subset_1(X6,u1_struct_0(X3)) => ((r1_tmap_1(X2,X1,X4,X5) & m1_pre_topc(X3,X2) & X5 = X6) => r1_tmap_1(X3,X1,k3_tmap_1(X0,X1,X2,X3,X4),X6)))))))))),
% 1.70/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.70/1.00  
% 1.70/1.00  fof(f18,plain,(
% 1.70/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : (! [X6] : ((r1_tmap_1(X3,X1,k3_tmap_1(X0,X1,X2,X3,X4),X6) | (~r1_tmap_1(X2,X1,X4,X5) | ~m1_pre_topc(X3,X2) | X5 != X6)) | ~m1_subset_1(X6,u1_struct_0(X3))) | ~m1_subset_1(X5,u1_struct_0(X2))) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4))) | (~m1_pre_topc(X3,X0) | v2_struct_0(X3))) | (~m1_pre_topc(X2,X0) | v2_struct_0(X2))) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 1.70/1.00    inference(ennf_transformation,[],[f6])).
% 1.70/1.00  
% 1.70/1.00  fof(f19,plain,(
% 1.70/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : (! [X6] : (r1_tmap_1(X3,X1,k3_tmap_1(X0,X1,X2,X3,X4),X6) | ~r1_tmap_1(X2,X1,X4,X5) | ~m1_pre_topc(X3,X2) | X5 != X6 | ~m1_subset_1(X6,u1_struct_0(X3))) | ~m1_subset_1(X5,u1_struct_0(X2))) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4)) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3)) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.70/1.00    inference(flattening,[],[f18])).
% 1.70/1.00  
% 1.70/1.00  fof(f41,plain,(
% 1.70/1.00    ( ! [X6,X4,X2,X0,X5,X3,X1] : (r1_tmap_1(X3,X1,k3_tmap_1(X0,X1,X2,X3,X4),X6) | ~r1_tmap_1(X2,X1,X4,X5) | ~m1_pre_topc(X3,X2) | X5 != X6 | ~m1_subset_1(X6,u1_struct_0(X3)) | ~m1_subset_1(X5,u1_struct_0(X2)) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.70/1.00    inference(cnf_transformation,[],[f19])).
% 1.70/1.00  
% 1.70/1.00  fof(f65,plain,(
% 1.70/1.00    ( ! [X6,X4,X2,X0,X3,X1] : (r1_tmap_1(X3,X1,k3_tmap_1(X0,X1,X2,X3,X4),X6) | ~r1_tmap_1(X2,X1,X4,X6) | ~m1_pre_topc(X3,X2) | ~m1_subset_1(X6,u1_struct_0(X3)) | ~m1_subset_1(X6,u1_struct_0(X2)) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.70/1.00    inference(equality_resolution,[],[f41])).
% 1.70/1.00  
% 1.70/1.00  fof(f8,conjecture,(
% 1.70/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) => ((m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1)) => ! [X5] : (m1_subset_1(X5,u1_struct_0(X3)) => ! [X6] : (m1_subset_1(X6,u1_struct_0(X2)) => (X5 = X6 => (r1_tmap_1(X3,X0,X4,X5) <=> r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)))))))))))),
% 1.70/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.70/1.00  
% 1.70/1.00  fof(f9,negated_conjecture,(
% 1.70/1.00    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) => ((m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1)) => ! [X5] : (m1_subset_1(X5,u1_struct_0(X3)) => ! [X6] : (m1_subset_1(X6,u1_struct_0(X2)) => (X5 = X6 => (r1_tmap_1(X3,X0,X4,X5) <=> r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)))))))))))),
% 1.70/1.00    inference(negated_conjecture,[],[f8])).
% 1.70/1.00  
% 1.70/1.00  fof(f22,plain,(
% 1.70/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : ((? [X5] : (? [X6] : (((r1_tmap_1(X3,X0,X4,X5) <~> r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)) & X5 = X6) & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & (m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1))) & (m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4))) & (m1_pre_topc(X3,X1) & ~v2_struct_0(X3))) & (m1_pre_topc(X2,X1) & ~v2_struct_0(X2))) & (l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 1.70/1.00    inference(ennf_transformation,[],[f9])).
% 1.70/1.00  
% 1.70/1.00  fof(f23,plain,(
% 1.70/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((r1_tmap_1(X3,X0,X4,X5) <~> r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.70/1.00    inference(flattening,[],[f22])).
% 1.70/1.00  
% 1.70/1.00  fof(f25,plain,(
% 1.70/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : (((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5))) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.70/1.00    inference(nnf_transformation,[],[f23])).
% 1.70/1.00  
% 1.70/1.00  fof(f26,plain,(
% 1.70/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.70/1.00    inference(flattening,[],[f25])).
% 1.70/1.00  
% 1.70/1.00  fof(f33,plain,(
% 1.70/1.00    ( ! [X4,X2,X0,X5,X3,X1] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) => ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),sK6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),sK6) | r1_tmap_1(X3,X0,X4,X5)) & sK6 = X5 & m1_subset_1(sK6,u1_struct_0(X2)))) )),
% 1.70/1.00    introduced(choice_axiom,[])).
% 1.70/1.00  
% 1.70/1.00  fof(f32,plain,(
% 1.70/1.00    ( ! [X4,X2,X0,X3,X1] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) => (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,sK5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,sK5)) & sK5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(sK5,u1_struct_0(X3)))) )),
% 1.70/1.00    introduced(choice_axiom,[])).
% 1.70/1.00  
% 1.70/1.00  fof(f31,plain,(
% 1.70/1.00    ( ! [X2,X0,X3,X1] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) => (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,sK4),X6) | ~r1_tmap_1(X3,X0,sK4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,sK4),X6) | r1_tmap_1(X3,X0,sK4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(sK4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(sK4))) )),
% 1.70/1.00    introduced(choice_axiom,[])).
% 1.70/1.00  
% 1.70/1.00  fof(f30,plain,(
% 1.70/1.00    ( ! [X2,X0,X1] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) => (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,sK3,X2,X4),X6) | ~r1_tmap_1(sK3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,sK3,X2,X4),X6) | r1_tmap_1(sK3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(sK3))) & m1_pre_topc(X2,sK3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(sK3),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(sK3,X1) & ~v2_struct_0(sK3))) )),
% 1.70/1.00    introduced(choice_axiom,[])).
% 1.70/1.00  
% 1.70/1.00  fof(f29,plain,(
% 1.70/1.00    ( ! [X0,X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) => (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(sK2,X0,k3_tmap_1(X1,X0,X3,sK2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(sK2,X0,k3_tmap_1(X1,X0,X3,sK2,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(sK2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(sK2,X3) & m1_pre_topc(sK2,X1) & v1_tsep_1(sK2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) & m1_pre_topc(sK2,X1) & ~v2_struct_0(sK2))) )),
% 1.70/1.00    introduced(choice_axiom,[])).
% 1.70/1.00  
% 1.70/1.00  fof(f28,plain,(
% 1.70/1.00    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(sK1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(sK1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,sK1) & v1_tsep_1(X2,sK1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(X3,sK1) & ~v2_struct_0(X3)) & m1_pre_topc(X2,sK1) & ~v2_struct_0(X2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1))) )),
% 1.70/1.00    introduced(choice_axiom,[])).
% 1.70/1.00  
% 1.70/1.00  fof(f27,plain,(
% 1.70/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | ~r1_tmap_1(X3,X0,X4,X5)) & (r1_tmap_1(X2,X0,k3_tmap_1(X1,X0,X3,X2,X4),X6) | r1_tmap_1(X3,X0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X0)) & v1_funct_1(X4)) & m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,sK0,k3_tmap_1(X1,sK0,X3,X2,X4),X6) | ~r1_tmap_1(X3,sK0,X4,X5)) & (r1_tmap_1(X2,sK0,k3_tmap_1(X1,sK0,X3,X2,X4),X6) | r1_tmap_1(X3,sK0,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & m1_pre_topc(X2,X1) & v1_tsep_1(X2,X1) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(sK0)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(sK0)) & v1_funct_1(X4)) & m1_pre_topc(X3,X1) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X1) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0))),
% 1.70/1.00    introduced(choice_axiom,[])).
% 1.70/1.00  
% 1.70/1.00  fof(f34,plain,(
% 1.70/1.00    (((((((~r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) | ~r1_tmap_1(sK3,sK0,sK4,sK5)) & (r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) | r1_tmap_1(sK3,sK0,sK4,sK5)) & sK5 = sK6 & m1_subset_1(sK6,u1_struct_0(sK2))) & m1_subset_1(sK5,u1_struct_0(sK3))) & m1_pre_topc(sK2,sK3) & m1_pre_topc(sK2,sK1) & v1_tsep_1(sK2,sK1) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK0)))) & v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK0)) & v1_funct_1(sK4)) & m1_pre_topc(sK3,sK1) & ~v2_struct_0(sK3)) & m1_pre_topc(sK2,sK1) & ~v2_struct_0(sK2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0)),
% 1.70/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4,sK5,sK6])],[f26,f33,f32,f31,f30,f29,f28,f27])).
% 1.70/1.00  
% 1.70/1.00  fof(f55,plain,(
% 1.70/1.00    v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK0))),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  fof(f54,plain,(
% 1.70/1.00    v1_funct_1(sK4)),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  fof(f5,axiom,(
% 1.70/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => ! [X2] : (m1_pre_topc(X2,X1) => m1_pre_topc(X2,X0))))),
% 1.70/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.70/1.00  
% 1.70/1.00  fof(f16,plain,(
% 1.70/1.00    ! [X0] : (! [X1] : (! [X2] : (m1_pre_topc(X2,X0) | ~m1_pre_topc(X2,X1)) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 1.70/1.00    inference(ennf_transformation,[],[f5])).
% 1.70/1.00  
% 1.70/1.00  fof(f17,plain,(
% 1.70/1.00    ! [X0] : (! [X1] : (! [X2] : (m1_pre_topc(X2,X0) | ~m1_pre_topc(X2,X1)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 1.70/1.00    inference(flattening,[],[f16])).
% 1.70/1.00  
% 1.70/1.00  fof(f40,plain,(
% 1.70/1.00    ( ! [X2,X0,X1] : (m1_pre_topc(X2,X0) | ~m1_pre_topc(X2,X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 1.70/1.00    inference(cnf_transformation,[],[f17])).
% 1.70/1.00  
% 1.70/1.00  fof(f44,plain,(
% 1.70/1.00    ~v2_struct_0(sK0)),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  fof(f45,plain,(
% 1.70/1.00    v2_pre_topc(sK0)),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  fof(f46,plain,(
% 1.70/1.00    l1_pre_topc(sK0)),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  fof(f52,plain,(
% 1.70/1.00    ~v2_struct_0(sK3)),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  fof(f56,plain,(
% 1.70/1.00    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK0))))),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  fof(f64,plain,(
% 1.70/1.00    ~r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) | ~r1_tmap_1(sK3,sK0,sK4,sK5)),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  fof(f62,plain,(
% 1.70/1.00    sK5 = sK6),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  fof(f43,plain,(
% 1.70/1.00    ( ! [X6,X4,X2,X0,X5,X3,X1] : (r1_tmap_1(X3,X1,X4,X5) | ~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | X5 != X6 | ~m1_subset_1(X6,u1_struct_0(X2)) | ~m1_subset_1(X5,u1_struct_0(X3)) | ~m1_pre_topc(X2,X3) | ~v1_tsep_1(X2,X3) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.70/1.00    inference(cnf_transformation,[],[f24])).
% 1.70/1.00  
% 1.70/1.00  fof(f66,plain,(
% 1.70/1.00    ( ! [X6,X4,X2,X0,X3,X1] : (r1_tmap_1(X3,X1,X4,X6) | ~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | ~m1_subset_1(X6,u1_struct_0(X2)) | ~m1_subset_1(X6,u1_struct_0(X3)) | ~m1_pre_topc(X2,X3) | ~v1_tsep_1(X2,X3) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.70/1.00    inference(equality_resolution,[],[f43])).
% 1.70/1.00  
% 1.70/1.00  fof(f53,plain,(
% 1.70/1.00    m1_pre_topc(sK3,sK1)),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  fof(f2,axiom,(
% 1.70/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => l1_pre_topc(X1)))),
% 1.70/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.70/1.00  
% 1.70/1.00  fof(f12,plain,(
% 1.70/1.00    ! [X0] : (! [X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 1.70/1.00    inference(ennf_transformation,[],[f2])).
% 1.70/1.00  
% 1.70/1.00  fof(f36,plain,(
% 1.70/1.00    ( ! [X0,X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 1.70/1.00    inference(cnf_transformation,[],[f12])).
% 1.70/1.00  
% 1.70/1.00  fof(f1,axiom,(
% 1.70/1.00    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 1.70/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.70/1.00  
% 1.70/1.00  fof(f10,plain,(
% 1.70/1.00    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) => r1_tarski(X0,X1))),
% 1.70/1.00    inference(unused_predicate_definition_removal,[],[f1])).
% 1.70/1.00  
% 1.70/1.00  fof(f11,plain,(
% 1.70/1.00    ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1)))),
% 1.70/1.00    inference(ennf_transformation,[],[f10])).
% 1.70/1.00  
% 1.70/1.00  fof(f35,plain,(
% 1.70/1.00    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 1.70/1.00    inference(cnf_transformation,[],[f11])).
% 1.70/1.00  
% 1.70/1.00  fof(f3,axiom,(
% 1.70/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => (r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) => (m1_pre_topc(X1,X2) & v1_tsep_1(X1,X2))))))),
% 1.70/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.70/1.00  
% 1.70/1.00  fof(f13,plain,(
% 1.70/1.00    ! [X0] : (! [X1] : (! [X2] : (((m1_pre_topc(X1,X2) & v1_tsep_1(X1,X2)) | ~r1_tarski(u1_struct_0(X1),u1_struct_0(X2))) | (~m1_pre_topc(X2,X0) | v2_struct_0(X2))) | (~m1_pre_topc(X1,X0) | ~v1_tsep_1(X1,X0))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 1.70/1.00    inference(ennf_transformation,[],[f3])).
% 1.70/1.00  
% 1.70/1.00  fof(f14,plain,(
% 1.70/1.00    ! [X0] : (! [X1] : (! [X2] : ((m1_pre_topc(X1,X2) & v1_tsep_1(X1,X2)) | ~r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2)) | ~m1_pre_topc(X1,X0) | ~v1_tsep_1(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.70/1.00    inference(flattening,[],[f13])).
% 1.70/1.00  
% 1.70/1.00  fof(f37,plain,(
% 1.70/1.00    ( ! [X2,X0,X1] : (v1_tsep_1(X1,X2) | ~r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~m1_pre_topc(X1,X0) | ~v1_tsep_1(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.70/1.00    inference(cnf_transformation,[],[f14])).
% 1.70/1.00  
% 1.70/1.00  fof(f4,axiom,(
% 1.70/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))))),
% 1.70/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.70/1.00  
% 1.70/1.00  fof(f15,plain,(
% 1.70/1.00    ! [X0] : (! [X1] : (m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 1.70/1.00    inference(ennf_transformation,[],[f4])).
% 1.70/1.00  
% 1.70/1.00  fof(f39,plain,(
% 1.70/1.00    ( ! [X0,X1] : (m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 1.70/1.00    inference(cnf_transformation,[],[f15])).
% 1.70/1.00  
% 1.70/1.00  fof(f60,plain,(
% 1.70/1.00    m1_subset_1(sK5,u1_struct_0(sK3))),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  fof(f63,plain,(
% 1.70/1.00    r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) | r1_tmap_1(sK3,sK0,sK4,sK5)),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  fof(f61,plain,(
% 1.70/1.00    m1_subset_1(sK6,u1_struct_0(sK2))),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  fof(f59,plain,(
% 1.70/1.00    m1_pre_topc(sK2,sK3)),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  fof(f57,plain,(
% 1.70/1.00    v1_tsep_1(sK2,sK1)),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  fof(f51,plain,(
% 1.70/1.00    m1_pre_topc(sK2,sK1)),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  fof(f50,plain,(
% 1.70/1.00    ~v2_struct_0(sK2)),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  fof(f49,plain,(
% 1.70/1.00    l1_pre_topc(sK1)),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  fof(f48,plain,(
% 1.70/1.00    v2_pre_topc(sK1)),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  fof(f47,plain,(
% 1.70/1.00    ~v2_struct_0(sK1)),
% 1.70/1.00    inference(cnf_transformation,[],[f34])).
% 1.70/1.00  
% 1.70/1.00  cnf(c_8,plain,
% 1.70/1.00      ( ~ r1_tmap_1(X0,X1,X2,X3)
% 1.70/1.00      | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
% 1.70/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 1.70/1.00      | ~ v1_tsep_1(X4,X0)
% 1.70/1.00      | ~ m1_pre_topc(X4,X5)
% 1.70/1.00      | ~ m1_pre_topc(X0,X5)
% 1.70/1.00      | ~ m1_pre_topc(X4,X0)
% 1.70/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.70/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 1.70/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.70/1.00      | ~ v1_funct_1(X2)
% 1.70/1.00      | ~ v2_pre_topc(X5)
% 1.70/1.00      | ~ v2_pre_topc(X1)
% 1.70/1.00      | v2_struct_0(X5)
% 1.70/1.00      | v2_struct_0(X4)
% 1.70/1.00      | v2_struct_0(X1)
% 1.70/1.00      | v2_struct_0(X0)
% 1.70/1.00      | ~ l1_pre_topc(X5)
% 1.70/1.00      | ~ l1_pre_topc(X1) ),
% 1.70/1.00      inference(cnf_transformation,[],[f67]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_6,plain,
% 1.70/1.00      ( ~ r1_tmap_1(X0,X1,X2,X3)
% 1.70/1.00      | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
% 1.70/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 1.70/1.00      | ~ m1_pre_topc(X0,X5)
% 1.70/1.00      | ~ m1_pre_topc(X4,X0)
% 1.70/1.00      | ~ m1_pre_topc(X4,X5)
% 1.70/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 1.70/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.70/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.70/1.00      | ~ v1_funct_1(X2)
% 1.70/1.00      | ~ v2_pre_topc(X5)
% 1.70/1.00      | ~ v2_pre_topc(X1)
% 1.70/1.00      | v2_struct_0(X5)
% 1.70/1.00      | v2_struct_0(X0)
% 1.70/1.00      | v2_struct_0(X1)
% 1.70/1.00      | v2_struct_0(X4)
% 1.70/1.00      | ~ l1_pre_topc(X5)
% 1.70/1.00      | ~ l1_pre_topc(X1) ),
% 1.70/1.00      inference(cnf_transformation,[],[f65]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_148,plain,
% 1.70/1.00      ( ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 1.70/1.00      | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
% 1.70/1.00      | ~ r1_tmap_1(X0,X1,X2,X3)
% 1.70/1.00      | ~ m1_pre_topc(X4,X5)
% 1.70/1.00      | ~ m1_pre_topc(X0,X5)
% 1.70/1.00      | ~ m1_pre_topc(X4,X0)
% 1.70/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.70/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 1.70/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.70/1.00      | ~ v1_funct_1(X2)
% 1.70/1.00      | ~ v2_pre_topc(X5)
% 1.70/1.00      | ~ v2_pre_topc(X1)
% 1.70/1.00      | v2_struct_0(X5)
% 1.70/1.00      | v2_struct_0(X4)
% 1.70/1.00      | v2_struct_0(X1)
% 1.70/1.00      | v2_struct_0(X0)
% 1.70/1.00      | ~ l1_pre_topc(X5)
% 1.70/1.00      | ~ l1_pre_topc(X1) ),
% 1.70/1.00      inference(global_propositional_subsumption,[status(thm)],[c_8,c_6]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_149,plain,
% 1.70/1.00      ( ~ r1_tmap_1(X0,X1,X2,X3)
% 1.70/1.00      | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
% 1.70/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 1.70/1.00      | ~ m1_pre_topc(X0,X5)
% 1.70/1.00      | ~ m1_pre_topc(X4,X0)
% 1.70/1.00      | ~ m1_pre_topc(X4,X5)
% 1.70/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 1.70/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.70/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.70/1.00      | ~ v1_funct_1(X2)
% 1.70/1.00      | ~ v2_pre_topc(X1)
% 1.70/1.00      | ~ v2_pre_topc(X5)
% 1.70/1.00      | v2_struct_0(X0)
% 1.70/1.00      | v2_struct_0(X1)
% 1.70/1.00      | v2_struct_0(X5)
% 1.70/1.00      | v2_struct_0(X4)
% 1.70/1.00      | ~ l1_pre_topc(X1)
% 1.70/1.00      | ~ l1_pre_topc(X5) ),
% 1.70/1.00      inference(renaming,[status(thm)],[c_148]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_18,negated_conjecture,
% 1.70/1.00      ( v1_funct_2(sK4,u1_struct_0(sK3),u1_struct_0(sK0)) ),
% 1.70/1.00      inference(cnf_transformation,[],[f55]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_436,plain,
% 1.70/1.00      ( ~ r1_tmap_1(X0,X1,X2,X3)
% 1.70/1.00      | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
% 1.70/1.00      | ~ m1_pre_topc(X0,X5)
% 1.70/1.00      | ~ m1_pre_topc(X4,X0)
% 1.70/1.00      | ~ m1_pre_topc(X4,X5)
% 1.70/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 1.70/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.70/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.70/1.00      | ~ v1_funct_1(X2)
% 1.70/1.00      | ~ v2_pre_topc(X1)
% 1.70/1.00      | ~ v2_pre_topc(X5)
% 1.70/1.00      | v2_struct_0(X0)
% 1.70/1.00      | v2_struct_0(X1)
% 1.70/1.00      | v2_struct_0(X5)
% 1.70/1.00      | v2_struct_0(X4)
% 1.70/1.00      | ~ l1_pre_topc(X1)
% 1.70/1.00      | ~ l1_pre_topc(X5)
% 1.70/1.00      | u1_struct_0(X0) != u1_struct_0(sK3)
% 1.70/1.00      | u1_struct_0(X1) != u1_struct_0(sK0)
% 1.70/1.00      | sK4 != X2 ),
% 1.70/1.00      inference(resolution_lifted,[status(thm)],[c_149,c_18]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_437,plain,
% 1.70/1.00      ( r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK4),X4)
% 1.70/1.00      | ~ r1_tmap_1(X3,X1,sK4,X4)
% 1.70/1.00      | ~ m1_pre_topc(X3,X2)
% 1.70/1.00      | ~ m1_pre_topc(X0,X3)
% 1.70/1.00      | ~ m1_pre_topc(X0,X2)
% 1.70/1.00      | ~ m1_subset_1(X4,u1_struct_0(X0))
% 1.70/1.00      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 1.70/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
% 1.70/1.00      | ~ v1_funct_1(sK4)
% 1.70/1.00      | ~ v2_pre_topc(X1)
% 1.70/1.00      | ~ v2_pre_topc(X2)
% 1.70/1.00      | v2_struct_0(X3)
% 1.70/1.00      | v2_struct_0(X1)
% 1.70/1.00      | v2_struct_0(X2)
% 1.70/1.00      | v2_struct_0(X0)
% 1.70/1.00      | ~ l1_pre_topc(X1)
% 1.70/1.00      | ~ l1_pre_topc(X2)
% 1.70/1.00      | u1_struct_0(X3) != u1_struct_0(sK3)
% 1.70/1.00      | u1_struct_0(X1) != u1_struct_0(sK0) ),
% 1.70/1.00      inference(unflattening,[status(thm)],[c_436]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_19,negated_conjecture,
% 1.70/1.00      ( v1_funct_1(sK4) ),
% 1.70/1.00      inference(cnf_transformation,[],[f54]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_441,plain,
% 1.70/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
% 1.70/1.00      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 1.70/1.00      | ~ m1_subset_1(X4,u1_struct_0(X0))
% 1.70/1.00      | ~ m1_pre_topc(X0,X2)
% 1.70/1.00      | ~ m1_pre_topc(X0,X3)
% 1.70/1.00      | ~ m1_pre_topc(X3,X2)
% 1.70/1.00      | ~ r1_tmap_1(X3,X1,sK4,X4)
% 1.70/1.00      | r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK4),X4)
% 1.70/1.00      | ~ v2_pre_topc(X1)
% 1.70/1.00      | ~ v2_pre_topc(X2)
% 1.70/1.00      | v2_struct_0(X3)
% 1.70/1.00      | v2_struct_0(X1)
% 1.70/1.00      | v2_struct_0(X2)
% 1.70/1.00      | v2_struct_0(X0)
% 1.70/1.00      | ~ l1_pre_topc(X1)
% 1.70/1.00      | ~ l1_pre_topc(X2)
% 1.70/1.00      | u1_struct_0(X3) != u1_struct_0(sK3)
% 1.70/1.00      | u1_struct_0(X1) != u1_struct_0(sK0) ),
% 1.70/1.00      inference(global_propositional_subsumption,
% 1.70/1.00                [status(thm)],
% 1.70/1.00                [c_437,c_19]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_442,plain,
% 1.70/1.00      ( r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK4),X4)
% 1.70/1.00      | ~ r1_tmap_1(X3,X1,sK4,X4)
% 1.70/1.00      | ~ m1_pre_topc(X3,X2)
% 1.70/1.00      | ~ m1_pre_topc(X0,X2)
% 1.70/1.00      | ~ m1_pre_topc(X0,X3)
% 1.70/1.00      | ~ m1_subset_1(X4,u1_struct_0(X0))
% 1.70/1.00      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 1.70/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
% 1.70/1.00      | ~ v2_pre_topc(X1)
% 1.70/1.00      | ~ v2_pre_topc(X2)
% 1.70/1.00      | v2_struct_0(X0)
% 1.70/1.00      | v2_struct_0(X2)
% 1.70/1.00      | v2_struct_0(X1)
% 1.70/1.00      | v2_struct_0(X3)
% 1.70/1.00      | ~ l1_pre_topc(X1)
% 1.70/1.00      | ~ l1_pre_topc(X2)
% 1.70/1.00      | u1_struct_0(X3) != u1_struct_0(sK3)
% 1.70/1.00      | u1_struct_0(X1) != u1_struct_0(sK0) ),
% 1.70/1.00      inference(renaming,[status(thm)],[c_441]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_5,plain,
% 1.70/1.00      ( ~ m1_pre_topc(X0,X1)
% 1.70/1.00      | ~ m1_pre_topc(X2,X0)
% 1.70/1.00      | m1_pre_topc(X2,X1)
% 1.70/1.00      | ~ v2_pre_topc(X1)
% 1.70/1.00      | ~ l1_pre_topc(X1) ),
% 1.70/1.00      inference(cnf_transformation,[],[f40]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_483,plain,
% 1.70/1.00      ( r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK4),X4)
% 1.70/1.00      | ~ r1_tmap_1(X3,X1,sK4,X4)
% 1.70/1.00      | ~ m1_pre_topc(X3,X2)
% 1.70/1.00      | ~ m1_pre_topc(X0,X3)
% 1.70/1.00      | ~ m1_subset_1(X4,u1_struct_0(X0))
% 1.70/1.00      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 1.70/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
% 1.70/1.00      | ~ v2_pre_topc(X1)
% 1.70/1.00      | ~ v2_pre_topc(X2)
% 1.70/1.00      | v2_struct_0(X0)
% 1.70/1.00      | v2_struct_0(X2)
% 1.70/1.00      | v2_struct_0(X1)
% 1.70/1.00      | v2_struct_0(X3)
% 1.70/1.00      | ~ l1_pre_topc(X1)
% 1.70/1.00      | ~ l1_pre_topc(X2)
% 1.70/1.00      | u1_struct_0(X3) != u1_struct_0(sK3)
% 1.70/1.00      | u1_struct_0(X1) != u1_struct_0(sK0) ),
% 1.70/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_442,c_5]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_848,plain,
% 1.70/1.00      ( r1_tmap_1(X0_49,X1_49,k3_tmap_1(X2_49,X1_49,X3_49,X0_49,sK4),X0_50)
% 1.70/1.00      | ~ r1_tmap_1(X3_49,X1_49,sK4,X0_50)
% 1.70/1.00      | ~ m1_pre_topc(X3_49,X2_49)
% 1.70/1.00      | ~ m1_pre_topc(X0_49,X3_49)
% 1.70/1.00      | ~ m1_subset_1(X0_50,u1_struct_0(X0_49))
% 1.70/1.00      | ~ m1_subset_1(X0_50,u1_struct_0(X3_49))
% 1.70/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3_49),u1_struct_0(X1_49))))
% 1.70/1.00      | ~ v2_pre_topc(X1_49)
% 1.70/1.00      | ~ v2_pre_topc(X2_49)
% 1.70/1.00      | v2_struct_0(X0_49)
% 1.70/1.00      | v2_struct_0(X2_49)
% 1.70/1.00      | v2_struct_0(X1_49)
% 1.70/1.00      | v2_struct_0(X3_49)
% 1.70/1.00      | ~ l1_pre_topc(X1_49)
% 1.70/1.00      | ~ l1_pre_topc(X2_49)
% 1.70/1.00      | u1_struct_0(X3_49) != u1_struct_0(sK3)
% 1.70/1.00      | u1_struct_0(X1_49) != u1_struct_0(sK0) ),
% 1.70/1.00      inference(subtyping,[status(esa)],[c_483]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_1420,plain,
% 1.70/1.00      ( u1_struct_0(X0_49) != u1_struct_0(sK3)
% 1.70/1.00      | u1_struct_0(X1_49) != u1_struct_0(sK0)
% 1.70/1.00      | r1_tmap_1(X2_49,X1_49,k3_tmap_1(X3_49,X1_49,X0_49,X2_49,sK4),X0_50) = iProver_top
% 1.70/1.00      | r1_tmap_1(X0_49,X1_49,sK4,X0_50) != iProver_top
% 1.70/1.00      | m1_pre_topc(X2_49,X0_49) != iProver_top
% 1.70/1.00      | m1_pre_topc(X0_49,X3_49) != iProver_top
% 1.70/1.00      | m1_subset_1(X0_50,u1_struct_0(X2_49)) != iProver_top
% 1.70/1.00      | m1_subset_1(X0_50,u1_struct_0(X0_49)) != iProver_top
% 1.70/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_49),u1_struct_0(X1_49)))) != iProver_top
% 1.70/1.00      | v2_pre_topc(X1_49) != iProver_top
% 1.70/1.00      | v2_pre_topc(X3_49) != iProver_top
% 1.70/1.00      | v2_struct_0(X1_49) = iProver_top
% 1.70/1.00      | v2_struct_0(X2_49) = iProver_top
% 1.70/1.00      | v2_struct_0(X3_49) = iProver_top
% 1.70/1.00      | v2_struct_0(X0_49) = iProver_top
% 1.70/1.00      | l1_pre_topc(X1_49) != iProver_top
% 1.70/1.00      | l1_pre_topc(X3_49) != iProver_top ),
% 1.70/1.00      inference(predicate_to_equality,[status(thm)],[c_848]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_2381,plain,
% 1.70/1.00      ( u1_struct_0(X0_49) != u1_struct_0(sK3)
% 1.70/1.00      | r1_tmap_1(X1_49,sK0,k3_tmap_1(X2_49,sK0,X0_49,X1_49,sK4),X0_50) = iProver_top
% 1.70/1.00      | r1_tmap_1(X0_49,sK0,sK4,X0_50) != iProver_top
% 1.70/1.00      | m1_pre_topc(X0_49,X2_49) != iProver_top
% 1.70/1.00      | m1_pre_topc(X1_49,X0_49) != iProver_top
% 1.70/1.00      | m1_subset_1(X0_50,u1_struct_0(X0_49)) != iProver_top
% 1.70/1.00      | m1_subset_1(X0_50,u1_struct_0(X1_49)) != iProver_top
% 1.70/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_49),u1_struct_0(sK0)))) != iProver_top
% 1.70/1.00      | v2_pre_topc(X2_49) != iProver_top
% 1.70/1.00      | v2_pre_topc(sK0) != iProver_top
% 1.70/1.00      | v2_struct_0(X1_49) = iProver_top
% 1.70/1.00      | v2_struct_0(X0_49) = iProver_top
% 1.70/1.00      | v2_struct_0(X2_49) = iProver_top
% 1.70/1.00      | v2_struct_0(sK0) = iProver_top
% 1.70/1.00      | l1_pre_topc(X2_49) != iProver_top
% 1.70/1.00      | l1_pre_topc(sK0) != iProver_top ),
% 1.70/1.00      inference(equality_resolution,[status(thm)],[c_1420]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_29,negated_conjecture,
% 1.70/1.00      ( ~ v2_struct_0(sK0) ),
% 1.70/1.00      inference(cnf_transformation,[],[f44]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_30,plain,
% 1.70/1.00      ( v2_struct_0(sK0) != iProver_top ),
% 1.70/1.00      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_28,negated_conjecture,
% 1.70/1.00      ( v2_pre_topc(sK0) ),
% 1.70/1.00      inference(cnf_transformation,[],[f45]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_31,plain,
% 1.70/1.00      ( v2_pre_topc(sK0) = iProver_top ),
% 1.70/1.00      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_27,negated_conjecture,
% 1.70/1.00      ( l1_pre_topc(sK0) ),
% 1.70/1.00      inference(cnf_transformation,[],[f46]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_32,plain,
% 1.70/1.00      ( l1_pre_topc(sK0) = iProver_top ),
% 1.70/1.00      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_2452,plain,
% 1.70/1.00      ( l1_pre_topc(X2_49) != iProver_top
% 1.70/1.00      | v2_pre_topc(X2_49) != iProver_top
% 1.70/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_49),u1_struct_0(sK0)))) != iProver_top
% 1.70/1.00      | m1_subset_1(X0_50,u1_struct_0(X1_49)) != iProver_top
% 1.70/1.00      | m1_subset_1(X0_50,u1_struct_0(X0_49)) != iProver_top
% 1.70/1.00      | m1_pre_topc(X1_49,X0_49) != iProver_top
% 1.70/1.00      | m1_pre_topc(X0_49,X2_49) != iProver_top
% 1.70/1.00      | r1_tmap_1(X0_49,sK0,sK4,X0_50) != iProver_top
% 1.70/1.00      | r1_tmap_1(X1_49,sK0,k3_tmap_1(X2_49,sK0,X0_49,X1_49,sK4),X0_50) = iProver_top
% 1.70/1.00      | u1_struct_0(X0_49) != u1_struct_0(sK3)
% 1.70/1.00      | v2_struct_0(X1_49) = iProver_top
% 1.70/1.00      | v2_struct_0(X0_49) = iProver_top
% 1.70/1.00      | v2_struct_0(X2_49) = iProver_top ),
% 1.70/1.00      inference(global_propositional_subsumption,
% 1.70/1.00                [status(thm)],
% 1.70/1.00                [c_2381,c_30,c_31,c_32]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_2453,plain,
% 1.70/1.00      ( u1_struct_0(X0_49) != u1_struct_0(sK3)
% 1.70/1.00      | r1_tmap_1(X1_49,sK0,k3_tmap_1(X2_49,sK0,X0_49,X1_49,sK4),X0_50) = iProver_top
% 1.70/1.00      | r1_tmap_1(X0_49,sK0,sK4,X0_50) != iProver_top
% 1.70/1.00      | m1_pre_topc(X0_49,X2_49) != iProver_top
% 1.70/1.00      | m1_pre_topc(X1_49,X0_49) != iProver_top
% 1.70/1.00      | m1_subset_1(X0_50,u1_struct_0(X0_49)) != iProver_top
% 1.70/1.00      | m1_subset_1(X0_50,u1_struct_0(X1_49)) != iProver_top
% 1.70/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_49),u1_struct_0(sK0)))) != iProver_top
% 1.70/1.00      | v2_pre_topc(X2_49) != iProver_top
% 1.70/1.00      | v2_struct_0(X1_49) = iProver_top
% 1.70/1.00      | v2_struct_0(X0_49) = iProver_top
% 1.70/1.00      | v2_struct_0(X2_49) = iProver_top
% 1.70/1.00      | l1_pre_topc(X2_49) != iProver_top ),
% 1.70/1.00      inference(renaming,[status(thm)],[c_2452]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_2469,plain,
% 1.70/1.00      ( r1_tmap_1(X0_49,sK0,k3_tmap_1(X1_49,sK0,sK3,X0_49,sK4),X0_50) = iProver_top
% 1.70/1.00      | r1_tmap_1(sK3,sK0,sK4,X0_50) != iProver_top
% 1.70/1.00      | m1_pre_topc(X0_49,sK3) != iProver_top
% 1.70/1.00      | m1_pre_topc(sK3,X1_49) != iProver_top
% 1.70/1.00      | m1_subset_1(X0_50,u1_struct_0(X0_49)) != iProver_top
% 1.70/1.00      | m1_subset_1(X0_50,u1_struct_0(sK3)) != iProver_top
% 1.70/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK0)))) != iProver_top
% 1.70/1.00      | v2_pre_topc(X1_49) != iProver_top
% 1.70/1.00      | v2_struct_0(X1_49) = iProver_top
% 1.70/1.00      | v2_struct_0(X0_49) = iProver_top
% 1.70/1.00      | v2_struct_0(sK3) = iProver_top
% 1.70/1.00      | l1_pre_topc(X1_49) != iProver_top ),
% 1.70/1.00      inference(equality_resolution,[status(thm)],[c_2453]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_21,negated_conjecture,
% 1.70/1.00      ( ~ v2_struct_0(sK3) ),
% 1.70/1.00      inference(cnf_transformation,[],[f52]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_38,plain,
% 1.70/1.00      ( v2_struct_0(sK3) != iProver_top ),
% 1.70/1.00      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_17,negated_conjecture,
% 1.70/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK0)))) ),
% 1.70/1.00      inference(cnf_transformation,[],[f56]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_42,plain,
% 1.70/1.00      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK0)))) = iProver_top ),
% 1.70/1.00      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_2548,plain,
% 1.70/1.00      ( v2_struct_0(X0_49) = iProver_top
% 1.70/1.00      | v2_struct_0(X1_49) = iProver_top
% 1.70/1.00      | v2_pre_topc(X1_49) != iProver_top
% 1.70/1.00      | r1_tmap_1(X0_49,sK0,k3_tmap_1(X1_49,sK0,sK3,X0_49,sK4),X0_50) = iProver_top
% 1.70/1.00      | r1_tmap_1(sK3,sK0,sK4,X0_50) != iProver_top
% 1.70/1.00      | m1_pre_topc(X0_49,sK3) != iProver_top
% 1.70/1.00      | m1_pre_topc(sK3,X1_49) != iProver_top
% 1.70/1.00      | m1_subset_1(X0_50,u1_struct_0(X0_49)) != iProver_top
% 1.70/1.00      | m1_subset_1(X0_50,u1_struct_0(sK3)) != iProver_top
% 1.70/1.00      | l1_pre_topc(X1_49) != iProver_top ),
% 1.70/1.00      inference(global_propositional_subsumption,
% 1.70/1.00                [status(thm)],
% 1.70/1.00                [c_2469,c_38,c_42]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_2549,plain,
% 1.70/1.00      ( r1_tmap_1(X0_49,sK0,k3_tmap_1(X1_49,sK0,sK3,X0_49,sK4),X0_50) = iProver_top
% 1.70/1.00      | r1_tmap_1(sK3,sK0,sK4,X0_50) != iProver_top
% 1.70/1.00      | m1_pre_topc(X0_49,sK3) != iProver_top
% 1.70/1.00      | m1_pre_topc(sK3,X1_49) != iProver_top
% 1.70/1.00      | m1_subset_1(X0_50,u1_struct_0(X0_49)) != iProver_top
% 1.70/1.00      | m1_subset_1(X0_50,u1_struct_0(sK3)) != iProver_top
% 1.70/1.00      | v2_pre_topc(X1_49) != iProver_top
% 1.70/1.00      | v2_struct_0(X1_49) = iProver_top
% 1.70/1.00      | v2_struct_0(X0_49) = iProver_top
% 1.70/1.00      | l1_pre_topc(X1_49) != iProver_top ),
% 1.70/1.00      inference(renaming,[status(thm)],[c_2548]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_9,negated_conjecture,
% 1.70/1.00      ( ~ r1_tmap_1(sK3,sK0,sK4,sK5)
% 1.70/1.00      | ~ r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) ),
% 1.70/1.00      inference(cnf_transformation,[],[f64]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_868,negated_conjecture,
% 1.70/1.00      ( ~ r1_tmap_1(sK3,sK0,sK4,sK5)
% 1.70/1.00      | ~ r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) ),
% 1.70/1.00      inference(subtyping,[status(esa)],[c_9]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_1401,plain,
% 1.70/1.00      ( r1_tmap_1(sK3,sK0,sK4,sK5) != iProver_top
% 1.70/1.00      | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) != iProver_top ),
% 1.70/1.00      inference(predicate_to_equality,[status(thm)],[c_868]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_11,negated_conjecture,
% 1.70/1.00      ( sK5 = sK6 ),
% 1.70/1.00      inference(cnf_transformation,[],[f62]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_866,negated_conjecture,
% 1.70/1.00      ( sK5 = sK6 ),
% 1.70/1.00      inference(subtyping,[status(esa)],[c_11]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_1472,plain,
% 1.70/1.00      ( r1_tmap_1(sK3,sK0,sK4,sK6) != iProver_top
% 1.70/1.00      | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) != iProver_top ),
% 1.70/1.00      inference(light_normalisation,[status(thm)],[c_1401,c_866]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_2564,plain,
% 1.70/1.00      ( r1_tmap_1(sK3,sK0,sK4,sK6) != iProver_top
% 1.70/1.00      | m1_pre_topc(sK3,sK1) != iProver_top
% 1.70/1.00      | m1_pre_topc(sK2,sK3) != iProver_top
% 1.70/1.00      | m1_subset_1(sK6,u1_struct_0(sK3)) != iProver_top
% 1.70/1.00      | m1_subset_1(sK6,u1_struct_0(sK2)) != iProver_top
% 1.70/1.00      | v2_pre_topc(sK1) != iProver_top
% 1.70/1.00      | v2_struct_0(sK1) = iProver_top
% 1.70/1.00      | v2_struct_0(sK2) = iProver_top
% 1.70/1.00      | l1_pre_topc(sK1) != iProver_top ),
% 1.70/1.00      inference(superposition,[status(thm)],[c_2549,c_1472]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_873,plain,( X0_50 = X0_50 ),theory(equality) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_2434,plain,
% 1.70/1.00      ( u1_struct_0(sK0) = u1_struct_0(sK0) ),
% 1.70/1.00      inference(instantiation,[status(thm)],[c_873]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_878,plain,
% 1.70/1.00      ( ~ r1_tmap_1(X0_49,X1_49,X0_50,X1_50)
% 1.70/1.00      | r1_tmap_1(X0_49,X1_49,X2_50,X3_50)
% 1.70/1.00      | X2_50 != X0_50
% 1.70/1.00      | X3_50 != X1_50 ),
% 1.70/1.00      theory(equality) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_1702,plain,
% 1.70/1.00      ( r1_tmap_1(sK2,sK0,X0_50,X1_50)
% 1.70/1.00      | ~ r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6)
% 1.70/1.00      | X0_50 != k3_tmap_1(sK1,sK0,sK3,sK2,sK4)
% 1.70/1.00      | X1_50 != sK6 ),
% 1.70/1.00      inference(instantiation,[status(thm)],[c_878]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_1810,plain,
% 1.70/1.00      ( r1_tmap_1(sK2,sK0,X0_50,sK5)
% 1.70/1.00      | ~ r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6)
% 1.70/1.00      | X0_50 != k3_tmap_1(sK1,sK0,sK3,sK2,sK4)
% 1.70/1.00      | sK5 != sK6 ),
% 1.70/1.00      inference(instantiation,[status(thm)],[c_1702]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_2357,plain,
% 1.70/1.00      ( r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK5)
% 1.70/1.00      | ~ r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6)
% 1.70/1.00      | k3_tmap_1(sK1,sK0,sK3,sK2,sK4) != k3_tmap_1(sK1,sK0,sK3,sK2,sK4)
% 1.70/1.00      | sK5 != sK6 ),
% 1.70/1.00      inference(instantiation,[status(thm)],[c_1810]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_2359,plain,
% 1.70/1.00      ( k3_tmap_1(sK1,sK0,sK3,sK2,sK4) != k3_tmap_1(sK1,sK0,sK3,sK2,sK4)
% 1.70/1.00      | sK5 != sK6
% 1.70/1.00      | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK5) = iProver_top
% 1.70/1.00      | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) != iProver_top ),
% 1.70/1.00      inference(predicate_to_equality,[status(thm)],[c_2357]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_2178,plain,
% 1.70/1.00      ( k3_tmap_1(X0_49,X1_49,sK3,sK2,sK4) = k3_tmap_1(X0_49,X1_49,sK3,sK2,sK4) ),
% 1.70/1.00      inference(instantiation,[status(thm)],[c_873]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_2356,plain,
% 1.70/1.00      ( k3_tmap_1(sK1,sK0,sK3,sK2,sK4) = k3_tmap_1(sK1,sK0,sK3,sK2,sK4) ),
% 1.70/1.00      inference(instantiation,[status(thm)],[c_2178]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_7,plain,
% 1.70/1.00      ( r1_tmap_1(X0,X1,X2,X3)
% 1.70/1.00      | ~ r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
% 1.70/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 1.70/1.00      | ~ v1_tsep_1(X4,X0)
% 1.70/1.00      | ~ m1_pre_topc(X4,X5)
% 1.70/1.00      | ~ m1_pre_topc(X0,X5)
% 1.70/1.00      | ~ m1_pre_topc(X4,X0)
% 1.70/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.70/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 1.70/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.70/1.00      | ~ v1_funct_1(X2)
% 1.70/1.00      | ~ v2_pre_topc(X5)
% 1.70/1.00      | ~ v2_pre_topc(X1)
% 1.70/1.00      | v2_struct_0(X5)
% 1.70/1.00      | v2_struct_0(X4)
% 1.70/1.00      | v2_struct_0(X1)
% 1.70/1.00      | v2_struct_0(X0)
% 1.70/1.00      | ~ l1_pre_topc(X5)
% 1.70/1.00      | ~ l1_pre_topc(X1) ),
% 1.70/1.00      inference(cnf_transformation,[],[f66]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_502,plain,
% 1.70/1.00      ( r1_tmap_1(X0,X1,X2,X3)
% 1.70/1.00      | ~ r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
% 1.70/1.00      | ~ v1_tsep_1(X4,X0)
% 1.70/1.00      | ~ m1_pre_topc(X0,X5)
% 1.70/1.00      | ~ m1_pre_topc(X4,X0)
% 1.70/1.00      | ~ m1_pre_topc(X4,X5)
% 1.70/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 1.70/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 1.70/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 1.70/1.00      | ~ v1_funct_1(X2)
% 1.70/1.00      | ~ v2_pre_topc(X1)
% 1.70/1.00      | ~ v2_pre_topc(X5)
% 1.70/1.00      | v2_struct_0(X0)
% 1.70/1.00      | v2_struct_0(X1)
% 1.70/1.00      | v2_struct_0(X5)
% 1.70/1.00      | v2_struct_0(X4)
% 1.70/1.00      | ~ l1_pre_topc(X1)
% 1.70/1.00      | ~ l1_pre_topc(X5)
% 1.70/1.00      | u1_struct_0(X0) != u1_struct_0(sK3)
% 1.70/1.00      | u1_struct_0(X1) != u1_struct_0(sK0)
% 1.70/1.00      | sK4 != X2 ),
% 1.70/1.00      inference(resolution_lifted,[status(thm)],[c_7,c_18]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_503,plain,
% 1.70/1.00      ( ~ r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK4),X4)
% 1.70/1.00      | r1_tmap_1(X3,X1,sK4,X4)
% 1.70/1.00      | ~ v1_tsep_1(X0,X3)
% 1.70/1.00      | ~ m1_pre_topc(X3,X2)
% 1.70/1.00      | ~ m1_pre_topc(X0,X3)
% 1.70/1.00      | ~ m1_pre_topc(X0,X2)
% 1.70/1.00      | ~ m1_subset_1(X4,u1_struct_0(X0))
% 1.70/1.00      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 1.70/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
% 1.70/1.00      | ~ v1_funct_1(sK4)
% 1.70/1.00      | ~ v2_pre_topc(X1)
% 1.70/1.00      | ~ v2_pre_topc(X2)
% 1.70/1.00      | v2_struct_0(X3)
% 1.70/1.00      | v2_struct_0(X1)
% 1.70/1.00      | v2_struct_0(X2)
% 1.70/1.00      | v2_struct_0(X0)
% 1.70/1.00      | ~ l1_pre_topc(X1)
% 1.70/1.00      | ~ l1_pre_topc(X2)
% 1.70/1.00      | u1_struct_0(X3) != u1_struct_0(sK3)
% 1.70/1.00      | u1_struct_0(X1) != u1_struct_0(sK0) ),
% 1.70/1.00      inference(unflattening,[status(thm)],[c_502]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_507,plain,
% 1.70/1.00      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
% 1.70/1.00      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 1.70/1.00      | ~ m1_subset_1(X4,u1_struct_0(X0))
% 1.70/1.00      | ~ m1_pre_topc(X0,X2)
% 1.70/1.00      | ~ m1_pre_topc(X0,X3)
% 1.70/1.00      | ~ m1_pre_topc(X3,X2)
% 1.70/1.00      | ~ v1_tsep_1(X0,X3)
% 1.70/1.00      | r1_tmap_1(X3,X1,sK4,X4)
% 1.70/1.00      | ~ r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK4),X4)
% 1.70/1.00      | ~ v2_pre_topc(X1)
% 1.70/1.00      | ~ v2_pre_topc(X2)
% 1.70/1.00      | v2_struct_0(X3)
% 1.70/1.00      | v2_struct_0(X1)
% 1.70/1.00      | v2_struct_0(X2)
% 1.70/1.00      | v2_struct_0(X0)
% 1.70/1.00      | ~ l1_pre_topc(X1)
% 1.70/1.00      | ~ l1_pre_topc(X2)
% 1.70/1.00      | u1_struct_0(X3) != u1_struct_0(sK3)
% 1.70/1.00      | u1_struct_0(X1) != u1_struct_0(sK0) ),
% 1.70/1.00      inference(global_propositional_subsumption,
% 1.70/1.00                [status(thm)],
% 1.70/1.00                [c_503,c_19]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_508,plain,
% 1.70/1.00      ( ~ r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK4),X4)
% 1.70/1.00      | r1_tmap_1(X3,X1,sK4,X4)
% 1.70/1.00      | ~ v1_tsep_1(X0,X3)
% 1.70/1.00      | ~ m1_pre_topc(X3,X2)
% 1.70/1.00      | ~ m1_pre_topc(X0,X2)
% 1.70/1.00      | ~ m1_pre_topc(X0,X3)
% 1.70/1.00      | ~ m1_subset_1(X4,u1_struct_0(X0))
% 1.70/1.00      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 1.70/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
% 1.70/1.00      | ~ v2_pre_topc(X1)
% 1.70/1.00      | ~ v2_pre_topc(X2)
% 1.70/1.00      | v2_struct_0(X0)
% 1.70/1.00      | v2_struct_0(X2)
% 1.70/1.00      | v2_struct_0(X1)
% 1.70/1.00      | v2_struct_0(X3)
% 1.70/1.00      | ~ l1_pre_topc(X1)
% 1.70/1.00      | ~ l1_pre_topc(X2)
% 1.70/1.00      | u1_struct_0(X3) != u1_struct_0(sK3)
% 1.70/1.00      | u1_struct_0(X1) != u1_struct_0(sK0) ),
% 1.70/1.00      inference(renaming,[status(thm)],[c_507]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_551,plain,
% 1.70/1.00      ( ~ r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK4),X4)
% 1.70/1.00      | r1_tmap_1(X3,X1,sK4,X4)
% 1.70/1.00      | ~ v1_tsep_1(X0,X3)
% 1.70/1.00      | ~ m1_pre_topc(X3,X2)
% 1.70/1.00      | ~ m1_pre_topc(X0,X3)
% 1.70/1.00      | ~ m1_subset_1(X4,u1_struct_0(X0))
% 1.70/1.00      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 1.70/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
% 1.70/1.00      | ~ v2_pre_topc(X1)
% 1.70/1.00      | ~ v2_pre_topc(X2)
% 1.70/1.00      | v2_struct_0(X0)
% 1.70/1.00      | v2_struct_0(X2)
% 1.70/1.00      | v2_struct_0(X1)
% 1.70/1.00      | v2_struct_0(X3)
% 1.70/1.00      | ~ l1_pre_topc(X1)
% 1.70/1.00      | ~ l1_pre_topc(X2)
% 1.70/1.00      | u1_struct_0(X3) != u1_struct_0(sK3)
% 1.70/1.00      | u1_struct_0(X1) != u1_struct_0(sK0) ),
% 1.70/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_508,c_5]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_847,plain,
% 1.70/1.00      ( ~ r1_tmap_1(X0_49,X1_49,k3_tmap_1(X2_49,X1_49,X3_49,X0_49,sK4),X0_50)
% 1.70/1.00      | r1_tmap_1(X3_49,X1_49,sK4,X0_50)
% 1.70/1.00      | ~ v1_tsep_1(X0_49,X3_49)
% 1.70/1.00      | ~ m1_pre_topc(X3_49,X2_49)
% 1.70/1.00      | ~ m1_pre_topc(X0_49,X3_49)
% 1.70/1.00      | ~ m1_subset_1(X0_50,u1_struct_0(X0_49))
% 1.70/1.00      | ~ m1_subset_1(X0_50,u1_struct_0(X3_49))
% 1.70/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3_49),u1_struct_0(X1_49))))
% 1.70/1.00      | ~ v2_pre_topc(X1_49)
% 1.70/1.00      | ~ v2_pre_topc(X2_49)
% 1.70/1.00      | v2_struct_0(X0_49)
% 1.70/1.00      | v2_struct_0(X2_49)
% 1.70/1.00      | v2_struct_0(X1_49)
% 1.70/1.00      | v2_struct_0(X3_49)
% 1.70/1.00      | ~ l1_pre_topc(X1_49)
% 1.70/1.00      | ~ l1_pre_topc(X2_49)
% 1.70/1.00      | u1_struct_0(X3_49) != u1_struct_0(sK3)
% 1.70/1.00      | u1_struct_0(X1_49) != u1_struct_0(sK0) ),
% 1.70/1.00      inference(subtyping,[status(esa)],[c_551]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_1651,plain,
% 1.70/1.00      ( ~ r1_tmap_1(X0_49,X1_49,k3_tmap_1(X2_49,X1_49,sK3,X0_49,sK4),X0_50)
% 1.70/1.00      | r1_tmap_1(sK3,X1_49,sK4,X0_50)
% 1.70/1.00      | ~ v1_tsep_1(X0_49,sK3)
% 1.70/1.00      | ~ m1_pre_topc(X0_49,sK3)
% 1.70/1.00      | ~ m1_pre_topc(sK3,X2_49)
% 1.70/1.00      | ~ m1_subset_1(X0_50,u1_struct_0(X0_49))
% 1.70/1.00      | ~ m1_subset_1(X0_50,u1_struct_0(sK3))
% 1.70/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X1_49))))
% 1.70/1.00      | ~ v2_pre_topc(X1_49)
% 1.70/1.00      | ~ v2_pre_topc(X2_49)
% 1.70/1.00      | v2_struct_0(X0_49)
% 1.70/1.00      | v2_struct_0(X2_49)
% 1.70/1.00      | v2_struct_0(X1_49)
% 1.70/1.00      | v2_struct_0(sK3)
% 1.70/1.00      | ~ l1_pre_topc(X1_49)
% 1.70/1.00      | ~ l1_pre_topc(X2_49)
% 1.70/1.00      | u1_struct_0(X1_49) != u1_struct_0(sK0)
% 1.70/1.00      | u1_struct_0(sK3) != u1_struct_0(sK3) ),
% 1.70/1.00      inference(instantiation,[status(thm)],[c_847]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_1956,plain,
% 1.70/1.00      ( r1_tmap_1(sK3,X0_49,sK4,X0_50)
% 1.70/1.00      | ~ r1_tmap_1(sK2,X0_49,k3_tmap_1(X1_49,X0_49,sK3,sK2,sK4),X0_50)
% 1.70/1.00      | ~ v1_tsep_1(sK2,sK3)
% 1.70/1.00      | ~ m1_pre_topc(sK3,X1_49)
% 1.70/1.00      | ~ m1_pre_topc(sK2,sK3)
% 1.70/1.00      | ~ m1_subset_1(X0_50,u1_struct_0(sK3))
% 1.70/1.00      | ~ m1_subset_1(X0_50,u1_struct_0(sK2))
% 1.70/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_49))))
% 1.70/1.00      | ~ v2_pre_topc(X1_49)
% 1.70/1.00      | ~ v2_pre_topc(X0_49)
% 1.70/1.00      | v2_struct_0(X0_49)
% 1.70/1.00      | v2_struct_0(X1_49)
% 1.70/1.00      | v2_struct_0(sK3)
% 1.70/1.00      | v2_struct_0(sK2)
% 1.70/1.00      | ~ l1_pre_topc(X1_49)
% 1.70/1.00      | ~ l1_pre_topc(X0_49)
% 1.70/1.00      | u1_struct_0(X0_49) != u1_struct_0(sK0)
% 1.70/1.00      | u1_struct_0(sK3) != u1_struct_0(sK3) ),
% 1.70/1.00      inference(instantiation,[status(thm)],[c_1651]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_2188,plain,
% 1.70/1.00      ( r1_tmap_1(sK3,X0_49,sK4,X0_50)
% 1.70/1.00      | ~ r1_tmap_1(sK2,X0_49,k3_tmap_1(sK1,X0_49,sK3,sK2,sK4),X0_50)
% 1.70/1.00      | ~ v1_tsep_1(sK2,sK3)
% 1.70/1.00      | ~ m1_pre_topc(sK3,sK1)
% 1.70/1.00      | ~ m1_pre_topc(sK2,sK3)
% 1.70/1.00      | ~ m1_subset_1(X0_50,u1_struct_0(sK3))
% 1.70/1.00      | ~ m1_subset_1(X0_50,u1_struct_0(sK2))
% 1.70/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_49))))
% 1.70/1.00      | ~ v2_pre_topc(X0_49)
% 1.70/1.00      | ~ v2_pre_topc(sK1)
% 1.70/1.00      | v2_struct_0(X0_49)
% 1.70/1.00      | v2_struct_0(sK3)
% 1.70/1.00      | v2_struct_0(sK1)
% 1.70/1.00      | v2_struct_0(sK2)
% 1.70/1.00      | ~ l1_pre_topc(X0_49)
% 1.70/1.00      | ~ l1_pre_topc(sK1)
% 1.70/1.00      | u1_struct_0(X0_49) != u1_struct_0(sK0)
% 1.70/1.00      | u1_struct_0(sK3) != u1_struct_0(sK3) ),
% 1.70/1.00      inference(instantiation,[status(thm)],[c_1956]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_2274,plain,
% 1.70/1.00      ( r1_tmap_1(sK3,X0_49,sK4,sK5)
% 1.70/1.00      | ~ r1_tmap_1(sK2,X0_49,k3_tmap_1(sK1,X0_49,sK3,sK2,sK4),sK5)
% 1.70/1.00      | ~ v1_tsep_1(sK2,sK3)
% 1.70/1.00      | ~ m1_pre_topc(sK3,sK1)
% 1.70/1.00      | ~ m1_pre_topc(sK2,sK3)
% 1.70/1.00      | ~ m1_subset_1(sK5,u1_struct_0(sK3))
% 1.70/1.00      | ~ m1_subset_1(sK5,u1_struct_0(sK2))
% 1.70/1.00      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_49))))
% 1.70/1.00      | ~ v2_pre_topc(X0_49)
% 1.70/1.00      | ~ v2_pre_topc(sK1)
% 1.70/1.00      | v2_struct_0(X0_49)
% 1.70/1.00      | v2_struct_0(sK3)
% 1.70/1.00      | v2_struct_0(sK1)
% 1.70/1.00      | v2_struct_0(sK2)
% 1.70/1.00      | ~ l1_pre_topc(X0_49)
% 1.70/1.00      | ~ l1_pre_topc(sK1)
% 1.70/1.00      | u1_struct_0(X0_49) != u1_struct_0(sK0)
% 1.70/1.00      | u1_struct_0(sK3) != u1_struct_0(sK3) ),
% 1.70/1.00      inference(instantiation,[status(thm)],[c_2188]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_2275,plain,
% 1.70/1.00      ( u1_struct_0(X0_49) != u1_struct_0(sK0)
% 1.70/1.00      | u1_struct_0(sK3) != u1_struct_0(sK3)
% 1.70/1.00      | r1_tmap_1(sK3,X0_49,sK4,sK5) = iProver_top
% 1.70/1.00      | r1_tmap_1(sK2,X0_49,k3_tmap_1(sK1,X0_49,sK3,sK2,sK4),sK5) != iProver_top
% 1.70/1.00      | v1_tsep_1(sK2,sK3) != iProver_top
% 1.70/1.00      | m1_pre_topc(sK3,sK1) != iProver_top
% 1.70/1.00      | m1_pre_topc(sK2,sK3) != iProver_top
% 1.70/1.00      | m1_subset_1(sK5,u1_struct_0(sK3)) != iProver_top
% 1.70/1.00      | m1_subset_1(sK5,u1_struct_0(sK2)) != iProver_top
% 1.70/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(X0_49)))) != iProver_top
% 1.70/1.00      | v2_pre_topc(X0_49) != iProver_top
% 1.70/1.00      | v2_pre_topc(sK1) != iProver_top
% 1.70/1.00      | v2_struct_0(X0_49) = iProver_top
% 1.70/1.00      | v2_struct_0(sK3) = iProver_top
% 1.70/1.00      | v2_struct_0(sK1) = iProver_top
% 1.70/1.00      | v2_struct_0(sK2) = iProver_top
% 1.70/1.00      | l1_pre_topc(X0_49) != iProver_top
% 1.70/1.00      | l1_pre_topc(sK1) != iProver_top ),
% 1.70/1.00      inference(predicate_to_equality,[status(thm)],[c_2274]) ).
% 1.70/1.00  
% 1.70/1.00  cnf(c_2277,plain,
% 1.70/1.00      ( u1_struct_0(sK3) != u1_struct_0(sK3)
% 1.70/1.00      | u1_struct_0(sK0) != u1_struct_0(sK0)
% 1.70/1.00      | r1_tmap_1(sK3,sK0,sK4,sK5) = iProver_top
% 1.70/1.00      | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK5) != iProver_top
% 1.70/1.00      | v1_tsep_1(sK2,sK3) != iProver_top
% 1.70/1.00      | m1_pre_topc(sK3,sK1) != iProver_top
% 1.70/1.00      | m1_pre_topc(sK2,sK3) != iProver_top
% 1.70/1.00      | m1_subset_1(sK5,u1_struct_0(sK3)) != iProver_top
% 1.70/1.00      | m1_subset_1(sK5,u1_struct_0(sK2)) != iProver_top
% 1.70/1.00      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK3),u1_struct_0(sK0)))) != iProver_top
% 1.70/1.00      | v2_pre_topc(sK1) != iProver_top
% 1.70/1.00      | v2_pre_topc(sK0) != iProver_top
% 1.70/1.00      | v2_struct_0(sK3) = iProver_top
% 1.70/1.00      | v2_struct_0(sK1) = iProver_top
% 1.70/1.00      | v2_struct_0(sK0) = iProver_top
% 1.70/1.00      | v2_struct_0(sK2) = iProver_top
% 1.70/1.00      | l1_pre_topc(sK1) != iProver_top
% 1.70/1.00      | l1_pre_topc(sK0) != iProver_top ),
% 1.70/1.00      inference(instantiation,[status(thm)],[c_2275]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_20,negated_conjecture,
% 1.70/1.01      ( m1_pre_topc(sK3,sK1) ),
% 1.70/1.01      inference(cnf_transformation,[],[f53]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_859,negated_conjecture,
% 1.70/1.01      ( m1_pre_topc(sK3,sK1) ),
% 1.70/1.01      inference(subtyping,[status(esa)],[c_20]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_1409,plain,
% 1.70/1.01      ( m1_pre_topc(sK3,sK1) = iProver_top ),
% 1.70/1.01      inference(predicate_to_equality,[status(thm)],[c_859]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_1,plain,
% 1.70/1.01      ( ~ m1_pre_topc(X0,X1) | ~ l1_pre_topc(X1) | l1_pre_topc(X0) ),
% 1.70/1.01      inference(cnf_transformation,[],[f36]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_871,plain,
% 1.70/1.01      ( ~ m1_pre_topc(X0_49,X1_49)
% 1.70/1.01      | ~ l1_pre_topc(X1_49)
% 1.70/1.01      | l1_pre_topc(X0_49) ),
% 1.70/1.01      inference(subtyping,[status(esa)],[c_1]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_1398,plain,
% 1.70/1.01      ( m1_pre_topc(X0_49,X1_49) != iProver_top
% 1.70/1.01      | l1_pre_topc(X1_49) != iProver_top
% 1.70/1.01      | l1_pre_topc(X0_49) = iProver_top ),
% 1.70/1.01      inference(predicate_to_equality,[status(thm)],[c_871]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_1853,plain,
% 1.70/1.01      ( l1_pre_topc(sK3) = iProver_top
% 1.70/1.01      | l1_pre_topc(sK1) != iProver_top ),
% 1.70/1.01      inference(superposition,[status(thm)],[c_1409,c_1398]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_0,plain,
% 1.70/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 1.70/1.01      inference(cnf_transformation,[],[f35]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_3,plain,
% 1.70/1.01      ( ~ v1_tsep_1(X0,X1)
% 1.70/1.01      | v1_tsep_1(X0,X2)
% 1.70/1.01      | ~ m1_pre_topc(X0,X1)
% 1.70/1.01      | ~ m1_pre_topc(X2,X1)
% 1.70/1.01      | ~ r1_tarski(u1_struct_0(X0),u1_struct_0(X2))
% 1.70/1.01      | ~ v2_pre_topc(X1)
% 1.70/1.01      | v2_struct_0(X1)
% 1.70/1.01      | v2_struct_0(X2)
% 1.70/1.01      | ~ l1_pre_topc(X1) ),
% 1.70/1.01      inference(cnf_transformation,[],[f37]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_354,plain,
% 1.70/1.01      ( ~ v1_tsep_1(X0,X1)
% 1.70/1.01      | v1_tsep_1(X0,X2)
% 1.70/1.01      | ~ m1_pre_topc(X0,X1)
% 1.70/1.01      | ~ m1_pre_topc(X2,X1)
% 1.70/1.01      | ~ m1_subset_1(X3,k1_zfmisc_1(X4))
% 1.70/1.01      | ~ v2_pre_topc(X1)
% 1.70/1.01      | v2_struct_0(X2)
% 1.70/1.01      | v2_struct_0(X1)
% 1.70/1.01      | ~ l1_pre_topc(X1)
% 1.70/1.01      | u1_struct_0(X2) != X4
% 1.70/1.01      | u1_struct_0(X0) != X3 ),
% 1.70/1.01      inference(resolution_lifted,[status(thm)],[c_0,c_3]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_355,plain,
% 1.70/1.01      ( ~ v1_tsep_1(X0,X1)
% 1.70/1.01      | v1_tsep_1(X0,X2)
% 1.70/1.01      | ~ m1_pre_topc(X0,X1)
% 1.70/1.01      | ~ m1_pre_topc(X2,X1)
% 1.70/1.01      | ~ m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X2)))
% 1.70/1.01      | ~ v2_pre_topc(X1)
% 1.70/1.01      | v2_struct_0(X2)
% 1.70/1.01      | v2_struct_0(X1)
% 1.70/1.01      | ~ l1_pre_topc(X1) ),
% 1.70/1.01      inference(unflattening,[status(thm)],[c_354]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_850,plain,
% 1.70/1.01      ( ~ v1_tsep_1(X0_49,X1_49)
% 1.70/1.01      | v1_tsep_1(X0_49,X2_49)
% 1.70/1.01      | ~ m1_pre_topc(X0_49,X1_49)
% 1.70/1.01      | ~ m1_pre_topc(X2_49,X1_49)
% 1.70/1.01      | ~ m1_subset_1(u1_struct_0(X0_49),k1_zfmisc_1(u1_struct_0(X2_49)))
% 1.70/1.01      | ~ v2_pre_topc(X1_49)
% 1.70/1.01      | v2_struct_0(X2_49)
% 1.70/1.01      | v2_struct_0(X1_49)
% 1.70/1.01      | ~ l1_pre_topc(X1_49) ),
% 1.70/1.01      inference(subtyping,[status(esa)],[c_355]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_1716,plain,
% 1.70/1.01      ( v1_tsep_1(sK2,X0_49)
% 1.70/1.01      | ~ v1_tsep_1(sK2,sK1)
% 1.70/1.01      | ~ m1_pre_topc(X0_49,sK1)
% 1.70/1.01      | ~ m1_pre_topc(sK2,sK1)
% 1.70/1.01      | ~ m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(X0_49)))
% 1.70/1.01      | ~ v2_pre_topc(sK1)
% 1.70/1.01      | v2_struct_0(X0_49)
% 1.70/1.01      | v2_struct_0(sK1)
% 1.70/1.01      | ~ l1_pre_topc(sK1) ),
% 1.70/1.01      inference(instantiation,[status(thm)],[c_850]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_1826,plain,
% 1.70/1.01      ( v1_tsep_1(sK2,sK3)
% 1.70/1.01      | ~ v1_tsep_1(sK2,sK1)
% 1.70/1.01      | ~ m1_pre_topc(sK3,sK1)
% 1.70/1.01      | ~ m1_pre_topc(sK2,sK1)
% 1.70/1.01      | ~ m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK3)))
% 1.70/1.01      | ~ v2_pre_topc(sK1)
% 1.70/1.01      | v2_struct_0(sK3)
% 1.70/1.01      | v2_struct_0(sK1)
% 1.70/1.01      | ~ l1_pre_topc(sK1) ),
% 1.70/1.01      inference(instantiation,[status(thm)],[c_1716]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_1827,plain,
% 1.70/1.01      ( v1_tsep_1(sK2,sK3) = iProver_top
% 1.70/1.01      | v1_tsep_1(sK2,sK1) != iProver_top
% 1.70/1.01      | m1_pre_topc(sK3,sK1) != iProver_top
% 1.70/1.01      | m1_pre_topc(sK2,sK1) != iProver_top
% 1.70/1.01      | m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK3))) != iProver_top
% 1.70/1.01      | v2_pre_topc(sK1) != iProver_top
% 1.70/1.01      | v2_struct_0(sK3) = iProver_top
% 1.70/1.01      | v2_struct_0(sK1) = iProver_top
% 1.70/1.01      | l1_pre_topc(sK1) != iProver_top ),
% 1.70/1.01      inference(predicate_to_equality,[status(thm)],[c_1826]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_1805,plain,
% 1.70/1.01      ( u1_struct_0(sK2) = u1_struct_0(sK2) ),
% 1.70/1.01      inference(instantiation,[status(thm)],[c_873]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_876,plain,
% 1.70/1.01      ( ~ m1_subset_1(X0_50,X1_50)
% 1.70/1.01      | m1_subset_1(X2_50,X3_50)
% 1.70/1.01      | X2_50 != X0_50
% 1.70/1.01      | X3_50 != X1_50 ),
% 1.70/1.01      theory(equality) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_1672,plain,
% 1.70/1.01      ( m1_subset_1(X0_50,X1_50)
% 1.70/1.01      | ~ m1_subset_1(sK6,u1_struct_0(sK2))
% 1.70/1.01      | X1_50 != u1_struct_0(sK2)
% 1.70/1.01      | X0_50 != sK6 ),
% 1.70/1.01      inference(instantiation,[status(thm)],[c_876]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_1754,plain,
% 1.70/1.01      ( m1_subset_1(sK5,X0_50)
% 1.70/1.01      | ~ m1_subset_1(sK6,u1_struct_0(sK2))
% 1.70/1.01      | X0_50 != u1_struct_0(sK2)
% 1.70/1.01      | sK5 != sK6 ),
% 1.70/1.01      inference(instantiation,[status(thm)],[c_1672]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_1804,plain,
% 1.70/1.01      ( m1_subset_1(sK5,u1_struct_0(sK2))
% 1.70/1.01      | ~ m1_subset_1(sK6,u1_struct_0(sK2))
% 1.70/1.01      | u1_struct_0(sK2) != u1_struct_0(sK2)
% 1.70/1.01      | sK5 != sK6 ),
% 1.70/1.01      inference(instantiation,[status(thm)],[c_1754]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_1806,plain,
% 1.70/1.01      ( u1_struct_0(sK2) != u1_struct_0(sK2)
% 1.70/1.01      | sK5 != sK6
% 1.70/1.01      | m1_subset_1(sK5,u1_struct_0(sK2)) = iProver_top
% 1.70/1.01      | m1_subset_1(sK6,u1_struct_0(sK2)) != iProver_top ),
% 1.70/1.01      inference(predicate_to_equality,[status(thm)],[c_1804]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_4,plain,
% 1.70/1.01      ( ~ m1_pre_topc(X0,X1)
% 1.70/1.01      | m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
% 1.70/1.01      | ~ l1_pre_topc(X1) ),
% 1.70/1.01      inference(cnf_transformation,[],[f39]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_870,plain,
% 1.70/1.01      ( ~ m1_pre_topc(X0_49,X1_49)
% 1.70/1.01      | m1_subset_1(u1_struct_0(X0_49),k1_zfmisc_1(u1_struct_0(X1_49)))
% 1.70/1.01      | ~ l1_pre_topc(X1_49) ),
% 1.70/1.01      inference(subtyping,[status(esa)],[c_4]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_1661,plain,
% 1.70/1.01      ( ~ m1_pre_topc(sK2,sK3)
% 1.70/1.01      | m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK3)))
% 1.70/1.01      | ~ l1_pre_topc(sK3) ),
% 1.70/1.01      inference(instantiation,[status(thm)],[c_870]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_1662,plain,
% 1.70/1.01      ( m1_pre_topc(sK2,sK3) != iProver_top
% 1.70/1.01      | m1_subset_1(u1_struct_0(sK2),k1_zfmisc_1(u1_struct_0(sK3))) = iProver_top
% 1.70/1.01      | l1_pre_topc(sK3) != iProver_top ),
% 1.70/1.01      inference(predicate_to_equality,[status(thm)],[c_1661]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_1650,plain,
% 1.70/1.01      ( u1_struct_0(sK3) = u1_struct_0(sK3) ),
% 1.70/1.01      inference(instantiation,[status(thm)],[c_873]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_13,negated_conjecture,
% 1.70/1.01      ( m1_subset_1(sK5,u1_struct_0(sK3)) ),
% 1.70/1.01      inference(cnf_transformation,[],[f60]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_864,negated_conjecture,
% 1.70/1.01      ( m1_subset_1(sK5,u1_struct_0(sK3)) ),
% 1.70/1.01      inference(subtyping,[status(esa)],[c_13]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_1404,plain,
% 1.70/1.01      ( m1_subset_1(sK5,u1_struct_0(sK3)) = iProver_top ),
% 1.70/1.01      inference(predicate_to_equality,[status(thm)],[c_864]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_1450,plain,
% 1.70/1.01      ( m1_subset_1(sK6,u1_struct_0(sK3)) = iProver_top ),
% 1.70/1.01      inference(light_normalisation,[status(thm)],[c_1404,c_866]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_10,negated_conjecture,
% 1.70/1.01      ( r1_tmap_1(sK3,sK0,sK4,sK5)
% 1.70/1.01      | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) ),
% 1.70/1.01      inference(cnf_transformation,[],[f63]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_867,negated_conjecture,
% 1.70/1.01      ( r1_tmap_1(sK3,sK0,sK4,sK5)
% 1.70/1.01      | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) ),
% 1.70/1.01      inference(subtyping,[status(esa)],[c_10]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_1402,plain,
% 1.70/1.01      ( r1_tmap_1(sK3,sK0,sK4,sK5) = iProver_top
% 1.70/1.01      | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) = iProver_top ),
% 1.70/1.01      inference(predicate_to_equality,[status(thm)],[c_867]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_1461,plain,
% 1.70/1.01      ( r1_tmap_1(sK3,sK0,sK4,sK6) = iProver_top
% 1.70/1.01      | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) = iProver_top ),
% 1.70/1.01      inference(light_normalisation,[status(thm)],[c_1402,c_866]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_49,plain,
% 1.70/1.01      ( r1_tmap_1(sK3,sK0,sK4,sK5) != iProver_top
% 1.70/1.01      | r1_tmap_1(sK2,sK0,k3_tmap_1(sK1,sK0,sK3,sK2,sK4),sK6) != iProver_top ),
% 1.70/1.01      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_12,negated_conjecture,
% 1.70/1.01      ( m1_subset_1(sK6,u1_struct_0(sK2)) ),
% 1.70/1.01      inference(cnf_transformation,[],[f61]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_47,plain,
% 1.70/1.01      ( m1_subset_1(sK6,u1_struct_0(sK2)) = iProver_top ),
% 1.70/1.01      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_46,plain,
% 1.70/1.01      ( m1_subset_1(sK5,u1_struct_0(sK3)) = iProver_top ),
% 1.70/1.01      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_14,negated_conjecture,
% 1.70/1.01      ( m1_pre_topc(sK2,sK3) ),
% 1.70/1.01      inference(cnf_transformation,[],[f59]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_45,plain,
% 1.70/1.01      ( m1_pre_topc(sK2,sK3) = iProver_top ),
% 1.70/1.01      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_16,negated_conjecture,
% 1.70/1.01      ( v1_tsep_1(sK2,sK1) ),
% 1.70/1.01      inference(cnf_transformation,[],[f57]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_43,plain,
% 1.70/1.01      ( v1_tsep_1(sK2,sK1) = iProver_top ),
% 1.70/1.01      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_39,plain,
% 1.70/1.01      ( m1_pre_topc(sK3,sK1) = iProver_top ),
% 1.70/1.01      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_22,negated_conjecture,
% 1.70/1.01      ( m1_pre_topc(sK2,sK1) ),
% 1.70/1.01      inference(cnf_transformation,[],[f51]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_37,plain,
% 1.70/1.01      ( m1_pre_topc(sK2,sK1) = iProver_top ),
% 1.70/1.01      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_23,negated_conjecture,
% 1.70/1.01      ( ~ v2_struct_0(sK2) ),
% 1.70/1.01      inference(cnf_transformation,[],[f50]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_36,plain,
% 1.70/1.01      ( v2_struct_0(sK2) != iProver_top ),
% 1.70/1.01      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_24,negated_conjecture,
% 1.70/1.01      ( l1_pre_topc(sK1) ),
% 1.70/1.01      inference(cnf_transformation,[],[f49]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_35,plain,
% 1.70/1.01      ( l1_pre_topc(sK1) = iProver_top ),
% 1.70/1.01      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_25,negated_conjecture,
% 1.70/1.01      ( v2_pre_topc(sK1) ),
% 1.70/1.01      inference(cnf_transformation,[],[f48]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_34,plain,
% 1.70/1.01      ( v2_pre_topc(sK1) = iProver_top ),
% 1.70/1.01      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_26,negated_conjecture,
% 1.70/1.01      ( ~ v2_struct_0(sK1) ),
% 1.70/1.01      inference(cnf_transformation,[],[f47]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(c_33,plain,
% 1.70/1.01      ( v2_struct_0(sK1) != iProver_top ),
% 1.70/1.01      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 1.70/1.01  
% 1.70/1.01  cnf(contradiction,plain,
% 1.70/1.01      ( $false ),
% 1.70/1.01      inference(minisat,
% 1.70/1.01                [status(thm)],
% 1.70/1.01                [c_2564,c_2434,c_2359,c_2356,c_2277,c_1853,c_1827,c_1805,
% 1.70/1.01                 c_1806,c_1662,c_1650,c_1450,c_1461,c_866,c_49,c_47,c_46,
% 1.70/1.01                 c_45,c_43,c_42,c_39,c_38,c_37,c_36,c_35,c_34,c_33,c_32,
% 1.70/1.01                 c_31,c_30]) ).
% 1.70/1.01  
% 1.70/1.01  
% 1.70/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 1.70/1.01  
% 1.70/1.01  ------                               Statistics
% 1.70/1.01  
% 1.70/1.01  ------ General
% 1.70/1.01  
% 1.70/1.01  abstr_ref_over_cycles:                  0
% 1.70/1.01  abstr_ref_under_cycles:                 0
% 1.70/1.01  gc_basic_clause_elim:                   0
% 1.70/1.01  forced_gc_time:                         0
% 1.70/1.01  parsing_time:                           0.013
% 1.70/1.01  unif_index_cands_time:                  0.
% 1.70/1.01  unif_index_add_time:                    0.
% 1.70/1.01  orderings_time:                         0.
% 1.70/1.01  out_proof_time:                         0.015
% 1.70/1.01  total_time:                             0.125
% 1.70/1.01  num_of_symbols:                         54
% 1.70/1.01  num_of_terms:                           1669
% 1.70/1.01  
% 1.70/1.01  ------ Preprocessing
% 1.70/1.01  
% 1.70/1.01  num_of_splits:                          0
% 1.70/1.01  num_of_split_atoms:                     0
% 1.70/1.01  num_of_reused_defs:                     0
% 1.70/1.01  num_eq_ax_congr_red:                    14
% 1.70/1.01  num_of_sem_filtered_clauses:            1
% 1.70/1.01  num_of_subtypes:                        2
% 1.70/1.01  monotx_restored_types:                  0
% 1.70/1.01  sat_num_of_epr_types:                   0
% 1.70/1.01  sat_num_of_non_cyclic_types:            0
% 1.70/1.01  sat_guarded_non_collapsed_types:        0
% 1.70/1.01  num_pure_diseq_elim:                    0
% 1.70/1.01  simp_replaced_by:                       0
% 1.70/1.01  res_preprocessed:                       119
% 1.70/1.01  prep_upred:                             0
% 1.70/1.01  prep_unflattend:                        7
% 1.70/1.01  smt_new_axioms:                         0
% 1.70/1.01  pred_elim_cands:                        7
% 1.70/1.01  pred_elim:                              3
% 1.70/1.01  pred_elim_cl:                           4
% 1.70/1.01  pred_elim_cycles:                       5
% 1.70/1.01  merged_defs:                            8
% 1.70/1.01  merged_defs_ncl:                        0
% 1.70/1.01  bin_hyper_res:                          8
% 1.70/1.01  prep_cycles:                            4
% 1.70/1.01  pred_elim_time:                         0.01
% 1.70/1.01  splitting_time:                         0.
% 1.70/1.01  sem_filter_time:                        0.
% 1.70/1.01  monotx_time:                            0.
% 1.70/1.01  subtype_inf_time:                       0.
% 1.70/1.01  
% 1.70/1.01  ------ Problem properties
% 1.70/1.01  
% 1.70/1.01  clauses:                                25
% 1.70/1.01  conjectures:                            18
% 1.70/1.01  epr:                                    15
% 1.70/1.01  horn:                                   20
% 1.70/1.01  ground:                                 18
% 1.70/1.01  unary:                                  16
% 1.70/1.01  binary:                                 2
% 1.70/1.01  lits:                                   84
% 1.70/1.01  lits_eq:                                5
% 1.70/1.01  fd_pure:                                0
% 1.70/1.01  fd_pseudo:                              0
% 1.70/1.01  fd_cond:                                0
% 1.70/1.01  fd_pseudo_cond:                         0
% 1.70/1.01  ac_symbols:                             0
% 1.70/1.01  
% 1.70/1.01  ------ Propositional Solver
% 1.70/1.01  
% 1.70/1.01  prop_solver_calls:                      26
% 1.70/1.01  prop_fast_solver_calls:                 1124
% 1.70/1.01  smt_solver_calls:                       0
% 1.70/1.01  smt_fast_solver_calls:                  0
% 1.70/1.01  prop_num_of_clauses:                    541
% 1.70/1.01  prop_preprocess_simplified:             2936
% 1.70/1.01  prop_fo_subsumed:                       21
% 1.70/1.01  prop_solver_time:                       0.
% 1.70/1.01  smt_solver_time:                        0.
% 1.70/1.01  smt_fast_solver_time:                   0.
% 1.70/1.01  prop_fast_solver_time:                  0.
% 1.70/1.01  prop_unsat_core_time:                   0.
% 1.70/1.01  
% 1.70/1.01  ------ QBF
% 1.70/1.01  
% 1.70/1.01  qbf_q_res:                              0
% 1.70/1.01  qbf_num_tautologies:                    0
% 1.70/1.01  qbf_prep_cycles:                        0
% 1.70/1.01  
% 1.70/1.01  ------ BMC1
% 1.70/1.01  
% 1.70/1.01  bmc1_current_bound:                     -1
% 1.70/1.01  bmc1_last_solved_bound:                 -1
% 1.70/1.01  bmc1_unsat_core_size:                   -1
% 1.70/1.01  bmc1_unsat_core_parents_size:           -1
% 1.70/1.01  bmc1_merge_next_fun:                    0
% 1.70/1.01  bmc1_unsat_core_clauses_time:           0.
% 1.70/1.01  
% 1.70/1.01  ------ Instantiation
% 1.70/1.01  
% 1.70/1.01  inst_num_of_clauses:                    169
% 1.70/1.01  inst_num_in_passive:                    21
% 1.70/1.01  inst_num_in_active:                     144
% 1.70/1.01  inst_num_in_unprocessed:                5
% 1.70/1.01  inst_num_of_loops:                      160
% 1.70/1.01  inst_num_of_learning_restarts:          0
% 1.70/1.01  inst_num_moves_active_passive:          12
% 1.70/1.01  inst_lit_activity:                      0
% 1.70/1.01  inst_lit_activity_moves:                0
% 1.70/1.01  inst_num_tautologies:                   0
% 1.70/1.01  inst_num_prop_implied:                  0
% 1.70/1.01  inst_num_existing_simplified:           0
% 1.70/1.01  inst_num_eq_res_simplified:             0
% 1.70/1.01  inst_num_child_elim:                    0
% 1.70/1.01  inst_num_of_dismatching_blockings:      18
% 1.70/1.01  inst_num_of_non_proper_insts:           158
% 1.70/1.01  inst_num_of_duplicates:                 0
% 1.70/1.01  inst_inst_num_from_inst_to_res:         0
% 1.70/1.01  inst_dismatching_checking_time:         0.
% 1.70/1.01  
% 1.70/1.01  ------ Resolution
% 1.70/1.01  
% 1.70/1.01  res_num_of_clauses:                     0
% 1.70/1.01  res_num_in_passive:                     0
% 1.70/1.01  res_num_in_active:                      0
% 1.70/1.01  res_num_of_loops:                       123
% 1.70/1.01  res_forward_subset_subsumed:            33
% 1.70/1.01  res_backward_subset_subsumed:           2
% 1.70/1.01  res_forward_subsumed:                   0
% 1.70/1.01  res_backward_subsumed:                  0
% 1.70/1.01  res_forward_subsumption_resolution:     2
% 1.70/1.01  res_backward_subsumption_resolution:    0
% 1.70/1.01  res_clause_to_clause_subsumption:       119
% 1.70/1.01  res_orphan_elimination:                 0
% 1.70/1.01  res_tautology_del:                      51
% 1.70/1.01  res_num_eq_res_simplified:              0
% 1.70/1.01  res_num_sel_changes:                    0
% 1.70/1.01  res_moves_from_active_to_pass:          0
% 1.70/1.01  
% 1.70/1.01  ------ Superposition
% 1.70/1.01  
% 1.70/1.01  sup_time_total:                         0.
% 1.70/1.01  sup_time_generating:                    0.
% 1.70/1.01  sup_time_sim_full:                      0.
% 1.70/1.01  sup_time_sim_immed:                     0.
% 1.70/1.01  
% 1.70/1.01  sup_num_of_clauses:                     36
% 1.70/1.01  sup_num_in_active:                      31
% 1.70/1.01  sup_num_in_passive:                     5
% 1.70/1.01  sup_num_of_loops:                       30
% 1.70/1.01  sup_fw_superposition:                   6
% 1.70/1.01  sup_bw_superposition:                   3
% 1.70/1.01  sup_immediate_simplified:               0
% 1.70/1.01  sup_given_eliminated:                   0
% 1.70/1.01  comparisons_done:                       0
% 1.70/1.01  comparisons_avoided:                    0
% 1.70/1.01  
% 1.70/1.01  ------ Simplifications
% 1.70/1.01  
% 1.70/1.01  
% 1.70/1.01  sim_fw_subset_subsumed:                 0
% 1.70/1.01  sim_bw_subset_subsumed:                 0
% 1.70/1.01  sim_fw_subsumed:                        0
% 1.70/1.01  sim_bw_subsumed:                        0
% 1.70/1.01  sim_fw_subsumption_res:                 0
% 1.70/1.01  sim_bw_subsumption_res:                 0
% 1.70/1.01  sim_tautology_del:                      1
% 1.70/1.01  sim_eq_tautology_del:                   0
% 1.70/1.01  sim_eq_res_simp:                        0
% 1.70/1.01  sim_fw_demodulated:                     0
% 1.70/1.01  sim_bw_demodulated:                     0
% 1.70/1.01  sim_light_normalised:                   3
% 1.70/1.01  sim_joinable_taut:                      0
% 1.70/1.01  sim_joinable_simp:                      0
% 1.70/1.01  sim_ac_normalised:                      0
% 1.70/1.01  sim_smt_subsumption:                    0
% 1.70/1.01  
%------------------------------------------------------------------------------
