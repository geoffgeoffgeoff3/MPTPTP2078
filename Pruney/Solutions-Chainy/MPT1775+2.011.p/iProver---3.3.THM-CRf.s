%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:23:19 EST 2020

% Result     : Theorem 2.27s
% Output     : CNFRefutation 2.27s
% Verified   : 
% Statistics : Number of formulae       :  215 ( 988 expanded)
%              Number of clauses        :  126 ( 192 expanded)
%              Number of leaves         :   21 ( 396 expanded)
%              Depth                    :   26
%              Number of atoms          : 1756 (17527 expanded)
%              Number of equality atoms :  382 (1369 expanded)
%              Maximal formula depth    :   31 (   9 average)
%              Maximal clause size      :   44 (   7 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f11,axiom,(
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

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( ! [X6] :
                              ( ! [X7] :
                                  ( ( r1_tmap_1(X3,X1,X4,X6)
                                  <=> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) )
                                  | X6 != X7
                                  | ~ m1_connsp_2(X5,X3,X6)
                                  | ~ r1_tarski(X5,u1_struct_0(X2))
                                  | ~ m1_subset_1(X7,u1_struct_0(X2)) )
                              | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                          | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) )
                      | ~ m1_pre_topc(X2,X3)
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
    inference(ennf_transformation,[],[f11])).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( ! [X6] :
                              ( ! [X7] :
                                  ( ( r1_tmap_1(X3,X1,X4,X6)
                                  <=> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) )
                                  | X6 != X7
                                  | ~ m1_connsp_2(X5,X3,X6)
                                  | ~ r1_tarski(X5,u1_struct_0(X2))
                                  | ~ m1_subset_1(X7,u1_struct_0(X2)) )
                              | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                          | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) )
                      | ~ m1_pre_topc(X2,X3)
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
    inference(flattening,[],[f30])).

fof(f42,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ! [X3] :
                  ( ! [X4] :
                      ( ! [X5] :
                          ( ! [X6] :
                              ( ! [X7] :
                                  ( ( ( r1_tmap_1(X3,X1,X4,X6)
                                      | ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) )
                                    & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
                                      | ~ r1_tmap_1(X3,X1,X4,X6) ) )
                                  | X6 != X7
                                  | ~ m1_connsp_2(X5,X3,X6)
                                  | ~ r1_tarski(X5,u1_struct_0(X2))
                                  | ~ m1_subset_1(X7,u1_struct_0(X2)) )
                              | ~ m1_subset_1(X6,u1_struct_0(X3)) )
                          | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) )
                      | ~ m1_pre_topc(X2,X3)
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
    inference(nnf_transformation,[],[f31])).

fof(f73,plain,(
    ! [X6,X4,X2,X0,X7,X5,X3,X1] :
      ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
      | ~ r1_tmap_1(X3,X1,X4,X6)
      | X6 != X7
      | ~ m1_connsp_2(X5,X3,X6)
      | ~ r1_tarski(X5,u1_struct_0(X2))
      | ~ m1_subset_1(X7,u1_struct_0(X2))
      | ~ m1_subset_1(X6,u1_struct_0(X3))
      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))
      | ~ m1_pre_topc(X2,X3)
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
    inference(cnf_transformation,[],[f42])).

fof(f100,plain,(
    ! [X4,X2,X0,X7,X5,X3,X1] :
      ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
      | ~ r1_tmap_1(X3,X1,X4,X7)
      | ~ m1_connsp_2(X5,X3,X7)
      | ~ r1_tarski(X5,u1_struct_0(X2))
      | ~ m1_subset_1(X7,u1_struct_0(X2))
      | ~ m1_subset_1(X7,u1_struct_0(X3))
      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))
      | ~ m1_pre_topc(X2,X3)
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
    inference(equality_resolution,[],[f73])).

fof(f10,axiom,(
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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
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
    inference(ennf_transformation,[],[f10])).

fof(f29,plain,(
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
    inference(flattening,[],[f28])).

fof(f72,plain,(
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
    inference(cnf_transformation,[],[f29])).

fof(f98,plain,(
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
    inference(equality_resolution,[],[f72])).

fof(f12,conjecture,(
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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
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
                       => ( ( m1_pre_topc(X2,X3)
                            & v1_tsep_1(X2,X3) )
                         => ! [X5] :
                              ( m1_subset_1(X5,u1_struct_0(X3))
                             => ! [X6] :
                                  ( m1_subset_1(X6,u1_struct_0(X2))
                                 => ( X5 = X6
                                   => ( r1_tmap_1(X3,X1,X4,X5)
                                    <=> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) ) ) ) ) ) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f32,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ? [X6] :
                              ( ( r1_tmap_1(X3,X1,X4,X5)
                              <~> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) )
                              & X5 = X6
                              & m1_subset_1(X6,u1_struct_0(X2)) )
                          & m1_subset_1(X5,u1_struct_0(X3)) )
                      & m1_pre_topc(X2,X3)
                      & v1_tsep_1(X2,X3)
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
    inference(ennf_transformation,[],[f13])).

fof(f33,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ? [X6] :
                              ( ( r1_tmap_1(X3,X1,X4,X5)
                              <~> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) )
                              & X5 = X6
                              & m1_subset_1(X6,u1_struct_0(X2)) )
                          & m1_subset_1(X5,u1_struct_0(X3)) )
                      & m1_pre_topc(X2,X3)
                      & v1_tsep_1(X2,X3)
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
    inference(flattening,[],[f32])).

fof(f43,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ? [X6] :
                              ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
                                | ~ r1_tmap_1(X3,X1,X4,X5) )
                              & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
                                | r1_tmap_1(X3,X1,X4,X5) )
                              & X5 = X6
                              & m1_subset_1(X6,u1_struct_0(X2)) )
                          & m1_subset_1(X5,u1_struct_0(X3)) )
                      & m1_pre_topc(X2,X3)
                      & v1_tsep_1(X2,X3)
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
    inference(nnf_transformation,[],[f33])).

fof(f44,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ? [X6] :
                              ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
                                | ~ r1_tmap_1(X3,X1,X4,X5) )
                              & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
                                | r1_tmap_1(X3,X1,X4,X5) )
                              & X5 = X6
                              & m1_subset_1(X6,u1_struct_0(X2)) )
                          & m1_subset_1(X5,u1_struct_0(X3)) )
                      & m1_pre_topc(X2,X3)
                      & v1_tsep_1(X2,X3)
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
    inference(flattening,[],[f43])).

fof(f51,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( ? [X6] :
          ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
            | ~ r1_tmap_1(X3,X1,X4,X5) )
          & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
            | r1_tmap_1(X3,X1,X4,X5) )
          & X5 = X6
          & m1_subset_1(X6,u1_struct_0(X2)) )
     => ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),sK8)
          | ~ r1_tmap_1(X3,X1,X4,X5) )
        & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),sK8)
          | r1_tmap_1(X3,X1,X4,X5) )
        & sK8 = X5
        & m1_subset_1(sK8,u1_struct_0(X2)) ) ) ),
    introduced(choice_axiom,[])).

fof(f50,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( ? [X5] :
          ( ? [X6] :
              ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
                | ~ r1_tmap_1(X3,X1,X4,X5) )
              & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
                | r1_tmap_1(X3,X1,X4,X5) )
              & X5 = X6
              & m1_subset_1(X6,u1_struct_0(X2)) )
          & m1_subset_1(X5,u1_struct_0(X3)) )
     => ( ? [X6] :
            ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
              | ~ r1_tmap_1(X3,X1,X4,sK7) )
            & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
              | r1_tmap_1(X3,X1,X4,sK7) )
            & sK7 = X6
            & m1_subset_1(X6,u1_struct_0(X2)) )
        & m1_subset_1(sK7,u1_struct_0(X3)) ) ) ),
    introduced(choice_axiom,[])).

fof(f49,plain,(
    ! [X2,X0,X3,X1] :
      ( ? [X4] :
          ( ? [X5] :
              ( ? [X6] :
                  ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
                    | ~ r1_tmap_1(X3,X1,X4,X5) )
                  & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
                    | r1_tmap_1(X3,X1,X4,X5) )
                  & X5 = X6
                  & m1_subset_1(X6,u1_struct_0(X2)) )
              & m1_subset_1(X5,u1_struct_0(X3)) )
          & m1_pre_topc(X2,X3)
          & v1_tsep_1(X2,X3)
          & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
          & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
          & v1_funct_1(X4) )
     => ( ? [X5] :
            ( ? [X6] :
                ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,sK6),X6)
                  | ~ r1_tmap_1(X3,X1,sK6,X5) )
                & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,sK6),X6)
                  | r1_tmap_1(X3,X1,sK6,X5) )
                & X5 = X6
                & m1_subset_1(X6,u1_struct_0(X2)) )
            & m1_subset_1(X5,u1_struct_0(X3)) )
        & m1_pre_topc(X2,X3)
        & v1_tsep_1(X2,X3)
        & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
        & v1_funct_2(sK6,u1_struct_0(X3),u1_struct_0(X1))
        & v1_funct_1(sK6) ) ) ),
    introduced(choice_axiom,[])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ? [X4] :
              ( ? [X5] :
                  ( ? [X6] :
                      ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
                        | ~ r1_tmap_1(X3,X1,X4,X5) )
                      & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
                        | r1_tmap_1(X3,X1,X4,X5) )
                      & X5 = X6
                      & m1_subset_1(X6,u1_struct_0(X2)) )
                  & m1_subset_1(X5,u1_struct_0(X3)) )
              & m1_pre_topc(X2,X3)
              & v1_tsep_1(X2,X3)
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
              & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
              & v1_funct_1(X4) )
          & m1_pre_topc(X3,X0)
          & ~ v2_struct_0(X3) )
     => ( ? [X4] :
            ( ? [X5] :
                ( ? [X6] :
                    ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,sK5,X2,X4),X6)
                      | ~ r1_tmap_1(sK5,X1,X4,X5) )
                    & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,sK5,X2,X4),X6)
                      | r1_tmap_1(sK5,X1,X4,X5) )
                    & X5 = X6
                    & m1_subset_1(X6,u1_struct_0(X2)) )
                & m1_subset_1(X5,u1_struct_0(sK5)) )
            & m1_pre_topc(X2,sK5)
            & v1_tsep_1(X2,sK5)
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK5),u1_struct_0(X1))))
            & v1_funct_2(X4,u1_struct_0(sK5),u1_struct_0(X1))
            & v1_funct_1(X4) )
        & m1_pre_topc(sK5,X0)
        & ~ v2_struct_0(sK5) ) ) ),
    introduced(choice_axiom,[])).

fof(f47,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ? [X4] :
                  ( ? [X5] :
                      ( ? [X6] :
                          ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
                            | ~ r1_tmap_1(X3,X1,X4,X5) )
                          & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
                            | r1_tmap_1(X3,X1,X4,X5) )
                          & X5 = X6
                          & m1_subset_1(X6,u1_struct_0(X2)) )
                      & m1_subset_1(X5,u1_struct_0(X3)) )
                  & m1_pre_topc(X2,X3)
                  & v1_tsep_1(X2,X3)
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
                        ( ( ~ r1_tmap_1(sK4,X1,k3_tmap_1(X0,X1,X3,sK4,X4),X6)
                          | ~ r1_tmap_1(X3,X1,X4,X5) )
                        & ( r1_tmap_1(sK4,X1,k3_tmap_1(X0,X1,X3,sK4,X4),X6)
                          | r1_tmap_1(X3,X1,X4,X5) )
                        & X5 = X6
                        & m1_subset_1(X6,u1_struct_0(sK4)) )
                    & m1_subset_1(X5,u1_struct_0(X3)) )
                & m1_pre_topc(sK4,X3)
                & v1_tsep_1(sK4,X3)
                & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                & v1_funct_1(X4) )
            & m1_pre_topc(X3,X0)
            & ~ v2_struct_0(X3) )
        & m1_pre_topc(sK4,X0)
        & ~ v2_struct_0(sK4) ) ) ),
    introduced(choice_axiom,[])).

fof(f46,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ? [X4] :
                      ( ? [X5] :
                          ( ? [X6] :
                              ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
                                | ~ r1_tmap_1(X3,X1,X4,X5) )
                              & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
                                | r1_tmap_1(X3,X1,X4,X5) )
                              & X5 = X6
                              & m1_subset_1(X6,u1_struct_0(X2)) )
                          & m1_subset_1(X5,u1_struct_0(X3)) )
                      & m1_pre_topc(X2,X3)
                      & v1_tsep_1(X2,X3)
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
                            ( ( ~ r1_tmap_1(X2,sK3,k3_tmap_1(X0,sK3,X3,X2,X4),X6)
                              | ~ r1_tmap_1(X3,sK3,X4,X5) )
                            & ( r1_tmap_1(X2,sK3,k3_tmap_1(X0,sK3,X3,X2,X4),X6)
                              | r1_tmap_1(X3,sK3,X4,X5) )
                            & X5 = X6
                            & m1_subset_1(X6,u1_struct_0(X2)) )
                        & m1_subset_1(X5,u1_struct_0(X3)) )
                    & m1_pre_topc(X2,X3)
                    & v1_tsep_1(X2,X3)
                    & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(sK3))))
                    & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(sK3))
                    & v1_funct_1(X4) )
                & m1_pre_topc(X3,X0)
                & ~ v2_struct_0(X3) )
            & m1_pre_topc(X2,X0)
            & ~ v2_struct_0(X2) )
        & l1_pre_topc(sK3)
        & v2_pre_topc(sK3)
        & ~ v2_struct_0(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f45,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( ? [X4] :
                        ( ? [X5] :
                            ( ? [X6] :
                                ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
                                  | ~ r1_tmap_1(X3,X1,X4,X5) )
                                & ( r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)
                                  | r1_tmap_1(X3,X1,X4,X5) )
                                & X5 = X6
                                & m1_subset_1(X6,u1_struct_0(X2)) )
                            & m1_subset_1(X5,u1_struct_0(X3)) )
                        & m1_pre_topc(X2,X3)
                        & v1_tsep_1(X2,X3)
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
                              ( ( ~ r1_tmap_1(X2,X1,k3_tmap_1(sK2,X1,X3,X2,X4),X6)
                                | ~ r1_tmap_1(X3,X1,X4,X5) )
                              & ( r1_tmap_1(X2,X1,k3_tmap_1(sK2,X1,X3,X2,X4),X6)
                                | r1_tmap_1(X3,X1,X4,X5) )
                              & X5 = X6
                              & m1_subset_1(X6,u1_struct_0(X2)) )
                          & m1_subset_1(X5,u1_struct_0(X3)) )
                      & m1_pre_topc(X2,X3)
                      & v1_tsep_1(X2,X3)
                      & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
                      & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1))
                      & v1_funct_1(X4) )
                  & m1_pre_topc(X3,sK2)
                  & ~ v2_struct_0(X3) )
              & m1_pre_topc(X2,sK2)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(sK2)
      & v2_pre_topc(sK2)
      & ~ v2_struct_0(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f52,plain,
    ( ( ~ r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8)
      | ~ r1_tmap_1(sK5,sK3,sK6,sK7) )
    & ( r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8)
      | r1_tmap_1(sK5,sK3,sK6,sK7) )
    & sK7 = sK8
    & m1_subset_1(sK8,u1_struct_0(sK4))
    & m1_subset_1(sK7,u1_struct_0(sK5))
    & m1_pre_topc(sK4,sK5)
    & v1_tsep_1(sK4,sK5)
    & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK5),u1_struct_0(sK3))))
    & v1_funct_2(sK6,u1_struct_0(sK5),u1_struct_0(sK3))
    & v1_funct_1(sK6)
    & m1_pre_topc(sK5,sK2)
    & ~ v2_struct_0(sK5)
    & m1_pre_topc(sK4,sK2)
    & ~ v2_struct_0(sK4)
    & l1_pre_topc(sK3)
    & v2_pre_topc(sK3)
    & ~ v2_struct_0(sK3)
    & l1_pre_topc(sK2)
    & v2_pre_topc(sK2)
    & ~ v2_struct_0(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5,sK6,sK7,sK8])],[f44,f51,f50,f49,f48,f47,f46,f45])).

fof(f86,plain,(
    v1_funct_2(sK6,u1_struct_0(sK5),u1_struct_0(sK3)) ),
    inference(cnf_transformation,[],[f52])).

fof(f85,plain,(
    v1_funct_1(sK6) ),
    inference(cnf_transformation,[],[f52])).

fof(f9,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ! [X2] :
              ( m1_pre_topc(X2,X1)
             => m1_pre_topc(X2,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( m1_pre_topc(X2,X0)
              | ~ m1_pre_topc(X2,X1) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f27,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( m1_pre_topc(X2,X0)
              | ~ m1_pre_topc(X2,X1) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f26])).

fof(f71,plain,(
    ! [X2,X0,X1] :
      ( m1_pre_topc(X2,X0)
      | ~ m1_pre_topc(X2,X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f78,plain,(
    ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f52])).

fof(f79,plain,(
    v2_pre_topc(sK3) ),
    inference(cnf_transformation,[],[f52])).

fof(f80,plain,(
    l1_pre_topc(sK3) ),
    inference(cnf_transformation,[],[f52])).

fof(f83,plain,(
    ~ v2_struct_0(sK5) ),
    inference(cnf_transformation,[],[f52])).

fof(f87,plain,(
    m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK5),u1_struct_0(sK3)))) ),
    inference(cnf_transformation,[],[f52])).

fof(f94,plain,
    ( ~ r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8)
    | ~ r1_tmap_1(sK5,sK3,sK6,sK7) ),
    inference(cnf_transformation,[],[f52])).

fof(f92,plain,(
    sK7 = sK8 ),
    inference(cnf_transformation,[],[f52])).

fof(f6,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0)
        & ~ v2_struct_0(X0) )
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v3_pre_topc(X1,X0)
          <=> ! [X2] :
                ( m1_subset_1(X2,u1_struct_0(X0))
               => ~ ( ! [X3] :
                        ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))
                       => ~ ( r1_tarski(X3,X1)
                            & m1_connsp_2(X3,X0,X2) ) )
                    & r2_hidden(X2,X1) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v3_pre_topc(X1,X0)
          <=> ! [X2] :
                ( ? [X3] :
                    ( r1_tarski(X3,X1)
                    & m1_connsp_2(X3,X0,X2)
                    & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                | ~ r2_hidden(X2,X1)
                | ~ m1_subset_1(X2,u1_struct_0(X0)) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v3_pre_topc(X1,X0)
          <=> ! [X2] :
                ( ? [X3] :
                    ( r1_tarski(X3,X1)
                    & m1_connsp_2(X3,X0,X2)
                    & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                | ~ r2_hidden(X2,X1)
                | ~ m1_subset_1(X2,u1_struct_0(X0)) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f21])).

fof(f35,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v3_pre_topc(X1,X0)
              | ? [X2] :
                  ( ! [X3] :
                      ( ~ r1_tarski(X3,X1)
                      | ~ m1_connsp_2(X3,X0,X2)
                      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                  & r2_hidden(X2,X1)
                  & m1_subset_1(X2,u1_struct_0(X0)) ) )
            & ( ! [X2] :
                  ( ? [X3] :
                      ( r1_tarski(X3,X1)
                      & m1_connsp_2(X3,X0,X2)
                      & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                  | ~ r2_hidden(X2,X1)
                  | ~ m1_subset_1(X2,u1_struct_0(X0)) )
              | ~ v3_pre_topc(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(nnf_transformation,[],[f22])).

fof(f36,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v3_pre_topc(X1,X0)
              | ? [X2] :
                  ( ! [X3] :
                      ( ~ r1_tarski(X3,X1)
                      | ~ m1_connsp_2(X3,X0,X2)
                      | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                  & r2_hidden(X2,X1)
                  & m1_subset_1(X2,u1_struct_0(X0)) ) )
            & ( ! [X4] :
                  ( ? [X5] :
                      ( r1_tarski(X5,X1)
                      & m1_connsp_2(X5,X0,X4)
                      & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0))) )
                  | ~ r2_hidden(X4,X1)
                  | ~ m1_subset_1(X4,u1_struct_0(X0)) )
              | ~ v3_pre_topc(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(rectify,[],[f35])).

fof(f38,plain,(
    ! [X4,X1,X0] :
      ( ? [X5] :
          ( r1_tarski(X5,X1)
          & m1_connsp_2(X5,X0,X4)
          & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( r1_tarski(sK1(X0,X1,X4),X1)
        & m1_connsp_2(sK1(X0,X1,X4),X0,X4)
        & m1_subset_1(sK1(X0,X1,X4),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ! [X3] :
              ( ~ r1_tarski(X3,X1)
              | ~ m1_connsp_2(X3,X0,X2)
              | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
          & r2_hidden(X2,X1)
          & m1_subset_1(X2,u1_struct_0(X0)) )
     => ( ! [X3] :
            ( ~ r1_tarski(X3,X1)
            | ~ m1_connsp_2(X3,X0,sK0(X0,X1))
            | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
        & r2_hidden(sK0(X0,X1),X1)
        & m1_subset_1(sK0(X0,X1),u1_struct_0(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f39,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v3_pre_topc(X1,X0)
              | ( ! [X3] :
                    ( ~ r1_tarski(X3,X1)
                    | ~ m1_connsp_2(X3,X0,sK0(X0,X1))
                    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) )
                & r2_hidden(sK0(X0,X1),X1)
                & m1_subset_1(sK0(X0,X1),u1_struct_0(X0)) ) )
            & ( ! [X4] :
                  ( ( r1_tarski(sK1(X0,X1,X4),X1)
                    & m1_connsp_2(sK1(X0,X1,X4),X0,X4)
                    & m1_subset_1(sK1(X0,X1,X4),k1_zfmisc_1(u1_struct_0(X0))) )
                  | ~ r2_hidden(X4,X1)
                  | ~ m1_subset_1(X4,u1_struct_0(X0)) )
              | ~ v3_pre_topc(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f36,f38,f37])).

fof(f63,plain,(
    ! [X4,X0,X1] :
      ( r1_tarski(sK1(X0,X1,X4),X1)
      | ~ r2_hidden(X4,X1)
      | ~ m1_subset_1(X4,u1_struct_0(X0))
      | ~ v3_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f93,plain,
    ( r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8)
    | r1_tmap_1(sK5,sK3,sK6,sK7) ),
    inference(cnf_transformation,[],[f52])).

fof(f62,plain,(
    ! [X4,X0,X1] :
      ( m1_connsp_2(sK1(X0,X1,X4),X0,X4)
      | ~ r2_hidden(X4,X1)
      | ~ m1_subset_1(X4,u1_struct_0(X0))
      | ~ v3_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f74,plain,(
    ! [X6,X4,X2,X0,X7,X5,X3,X1] :
      ( r1_tmap_1(X3,X1,X4,X6)
      | ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
      | X6 != X7
      | ~ m1_connsp_2(X5,X3,X6)
      | ~ r1_tarski(X5,u1_struct_0(X2))
      | ~ m1_subset_1(X7,u1_struct_0(X2))
      | ~ m1_subset_1(X6,u1_struct_0(X3))
      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))
      | ~ m1_pre_topc(X2,X3)
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
    inference(cnf_transformation,[],[f42])).

fof(f99,plain,(
    ! [X4,X2,X0,X7,X5,X3,X1] :
      ( r1_tmap_1(X3,X1,X4,X7)
      | ~ r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)
      | ~ m1_connsp_2(X5,X3,X7)
      | ~ r1_tarski(X5,u1_struct_0(X2))
      | ~ m1_subset_1(X7,u1_struct_0(X2))
      | ~ m1_subset_1(X7,u1_struct_0(X3))
      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))
      | ~ m1_pre_topc(X2,X3)
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
    inference(equality_resolution,[],[f74])).

fof(f2,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => v2_pre_topc(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v2_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f15])).

fof(f57,plain,(
    ! [X0,X1] :
      ( v2_pre_topc(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f4,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => l1_pre_topc(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( l1_pre_topc(X1)
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f59,plain,(
    ! [X0,X1] :
      ( l1_pre_topc(X1)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f61,plain,(
    ! [X4,X0,X1] :
      ( m1_subset_1(sK1(X0,X1,X4),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ r2_hidden(X4,X1)
      | ~ m1_subset_1(X4,u1_struct_0(X0))
      | ~ v3_pre_topc(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f75,plain,(
    ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f52])).

fof(f76,plain,(
    v2_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f52])).

fof(f77,plain,(
    l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f52])).

fof(f81,plain,(
    ~ v2_struct_0(sK4) ),
    inference(cnf_transformation,[],[f52])).

fof(f84,plain,(
    m1_pre_topc(sK5,sK2) ),
    inference(cnf_transformation,[],[f52])).

fof(f89,plain,(
    m1_pre_topc(sK4,sK5) ),
    inference(cnf_transformation,[],[f52])).

fof(f91,plain,(
    m1_subset_1(sK8,u1_struct_0(sK4)) ),
    inference(cnf_transformation,[],[f52])).

fof(f90,plain,(
    m1_subset_1(sK7,u1_struct_0(sK5)) ),
    inference(cnf_transformation,[],[f52])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) ) )
      & ( ~ v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( ( ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) )
        | ~ v1_xboole_0(X0) )
      & ( ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) )
        | v1_xboole_0(X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f34,plain,(
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
    inference(nnf_transformation,[],[f14])).

fof(f53,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f7,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
             => ( u1_struct_0(X1) = X2
               => ( ( m1_pre_topc(X1,X0)
                    & v1_tsep_1(X1,X0) )
                <=> v3_pre_topc(X2,X0) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( m1_pre_topc(X1,X0)
                  & v1_tsep_1(X1,X0) )
              <=> v3_pre_topc(X2,X0) )
              | u1_struct_0(X1) != X2
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( m1_pre_topc(X1,X0)
                  & v1_tsep_1(X1,X0) )
              <=> v3_pre_topc(X2,X0) )
              | u1_struct_0(X1) != X2
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f23])).

fof(f40,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( ( m1_pre_topc(X1,X0)
                    & v1_tsep_1(X1,X0) )
                  | ~ v3_pre_topc(X2,X0) )
                & ( v3_pre_topc(X2,X0)
                  | ~ m1_pre_topc(X1,X0)
                  | ~ v1_tsep_1(X1,X0) ) )
              | u1_struct_0(X1) != X2
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f24])).

fof(f41,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( ( m1_pre_topc(X1,X0)
                    & v1_tsep_1(X1,X0) )
                  | ~ v3_pre_topc(X2,X0) )
                & ( v3_pre_topc(X2,X0)
                  | ~ m1_pre_topc(X1,X0)
                  | ~ v1_tsep_1(X1,X0) ) )
              | u1_struct_0(X1) != X2
              | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f40])).

fof(f67,plain,(
    ! [X2,X0,X1] :
      ( v3_pre_topc(X2,X0)
      | ~ m1_pre_topc(X1,X0)
      | ~ v1_tsep_1(X1,X0)
      | u1_struct_0(X1) != X2
      | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f97,plain,(
    ! [X0,X1] :
      ( v3_pre_topc(u1_struct_0(X1),X0)
      | ~ m1_pre_topc(X1,X0)
      | ~ v1_tsep_1(X1,X0)
      | ~ m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(equality_resolution,[],[f67])).

fof(f8,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f70,plain,(
    ! [X0,X1] :
      ( m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f88,plain,(
    v1_tsep_1(sK4,sK5) ),
    inference(cnf_transformation,[],[f52])).

fof(f3,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f58,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f5,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f20,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f19])).

fof(f60,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f20])).

cnf(c_21,plain,
    ( ~ r1_tmap_1(X0,X1,X2,X3)
    | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ m1_connsp_2(X6,X0,X3)
    | ~ r1_tarski(X6,u1_struct_0(X4))
    | ~ m1_pre_topc(X0,X5)
    | ~ m1_pre_topc(X4,X5)
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ v1_funct_1(X2)
    | v2_struct_0(X5)
    | v2_struct_0(X1)
    | v2_struct_0(X4)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X5)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X5)
    | ~ v2_pre_topc(X1) ),
    inference(cnf_transformation,[],[f100])).

cnf(c_19,plain,
    ( ~ r1_tmap_1(X0,X1,X2,X3)
    | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_pre_topc(X4,X5)
    | ~ m1_pre_topc(X0,X5)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ v1_funct_1(X2)
    | v2_struct_0(X5)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X5)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X5)
    | ~ v2_pre_topc(X1) ),
    inference(cnf_transformation,[],[f98])).

cnf(c_219,plain,
    ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_pre_topc(X4,X5)
    | ~ m1_pre_topc(X0,X5)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
    | ~ r1_tmap_1(X0,X1,X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ v1_funct_1(X2)
    | v2_struct_0(X5)
    | v2_struct_0(X1)
    | v2_struct_0(X4)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X5)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X5)
    | ~ v2_pre_topc(X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_21,c_19])).

cnf(c_220,plain,
    ( ~ r1_tmap_1(X0,X1,X2,X3)
    | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_pre_topc(X4,X5)
    | ~ m1_pre_topc(X0,X5)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ v1_funct_1(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X4)
    | v2_struct_0(X5)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X5)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X5) ),
    inference(renaming,[status(thm)],[c_219])).

cnf(c_30,negated_conjecture,
    ( v1_funct_2(sK6,u1_struct_0(sK5),u1_struct_0(sK3)) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_952,plain,
    ( ~ r1_tmap_1(X0,X1,X2,X3)
    | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_pre_topc(X4,X5)
    | ~ m1_pre_topc(X0,X5)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ v1_funct_1(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X4)
    | v2_struct_0(X5)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X5)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X5)
    | u1_struct_0(X0) != u1_struct_0(sK5)
    | u1_struct_0(X1) != u1_struct_0(sK3)
    | sK6 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_220,c_30])).

cnf(c_953,plain,
    ( r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK6),X4)
    | ~ r1_tmap_1(X3,X1,sK6,X4)
    | ~ m1_pre_topc(X0,X3)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_pre_topc(X3,X2)
    | ~ m1_subset_1(X4,u1_struct_0(X0))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
    | ~ v1_funct_1(sK6)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | v2_struct_0(X0)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | u1_struct_0(X3) != u1_struct_0(sK5)
    | u1_struct_0(X1) != u1_struct_0(sK3) ),
    inference(unflattening,[status(thm)],[c_952])).

cnf(c_31,negated_conjecture,
    ( v1_funct_1(sK6) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_957,plain,
    ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ m1_subset_1(X4,u1_struct_0(X0))
    | ~ m1_pre_topc(X3,X2)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_pre_topc(X0,X3)
    | ~ r1_tmap_1(X3,X1,sK6,X4)
    | r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK6),X4)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | v2_struct_0(X0)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | u1_struct_0(X3) != u1_struct_0(sK5)
    | u1_struct_0(X1) != u1_struct_0(sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_953,c_31])).

cnf(c_958,plain,
    ( r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK6),X4)
    | ~ r1_tmap_1(X3,X1,sK6,X4)
    | ~ m1_pre_topc(X0,X3)
    | ~ m1_pre_topc(X3,X2)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_subset_1(X4,u1_struct_0(X0))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | u1_struct_0(X3) != u1_struct_0(sK5)
    | u1_struct_0(X1) != u1_struct_0(sK3) ),
    inference(renaming,[status(thm)],[c_957])).

cnf(c_18,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X0)
    | m1_pre_topc(X2,X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_999,plain,
    ( r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK6),X4)
    | ~ r1_tmap_1(X3,X1,sK6,X4)
    | ~ m1_pre_topc(X0,X3)
    | ~ m1_pre_topc(X3,X2)
    | ~ m1_subset_1(X4,u1_struct_0(X0))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | u1_struct_0(X3) != u1_struct_0(sK5)
    | u1_struct_0(X1) != u1_struct_0(sK3) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_958,c_18])).

cnf(c_2385,plain,
    ( r1_tmap_1(X0_56,X1_56,k3_tmap_1(X2_56,X1_56,X3_56,X0_56,sK6),X0_57)
    | ~ r1_tmap_1(X3_56,X1_56,sK6,X0_57)
    | ~ m1_pre_topc(X0_56,X3_56)
    | ~ m1_pre_topc(X3_56,X2_56)
    | ~ m1_subset_1(X0_57,u1_struct_0(X0_56))
    | ~ m1_subset_1(X0_57,u1_struct_0(X3_56))
    | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3_56),u1_struct_0(X1_56))))
    | v2_struct_0(X1_56)
    | v2_struct_0(X0_56)
    | v2_struct_0(X2_56)
    | v2_struct_0(X3_56)
    | ~ l1_pre_topc(X1_56)
    | ~ l1_pre_topc(X2_56)
    | ~ v2_pre_topc(X1_56)
    | ~ v2_pre_topc(X2_56)
    | u1_struct_0(X3_56) != u1_struct_0(sK5)
    | u1_struct_0(X1_56) != u1_struct_0(sK3) ),
    inference(subtyping,[status(esa)],[c_999])).

cnf(c_3235,plain,
    ( u1_struct_0(X0_56) != u1_struct_0(sK5)
    | u1_struct_0(X1_56) != u1_struct_0(sK3)
    | r1_tmap_1(X2_56,X1_56,k3_tmap_1(X3_56,X1_56,X0_56,X2_56,sK6),X0_57) = iProver_top
    | r1_tmap_1(X0_56,X1_56,sK6,X0_57) != iProver_top
    | m1_pre_topc(X2_56,X0_56) != iProver_top
    | m1_pre_topc(X0_56,X3_56) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X2_56)) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
    | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_56),u1_struct_0(X1_56)))) != iProver_top
    | v2_struct_0(X1_56) = iProver_top
    | v2_struct_0(X2_56) = iProver_top
    | v2_struct_0(X0_56) = iProver_top
    | v2_struct_0(X3_56) = iProver_top
    | l1_pre_topc(X1_56) != iProver_top
    | l1_pre_topc(X3_56) != iProver_top
    | v2_pre_topc(X1_56) != iProver_top
    | v2_pre_topc(X3_56) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2385])).

cnf(c_4900,plain,
    ( u1_struct_0(X0_56) != u1_struct_0(sK5)
    | r1_tmap_1(X1_56,sK3,k3_tmap_1(X2_56,sK3,X0_56,X1_56,sK6),X0_57) = iProver_top
    | r1_tmap_1(X0_56,sK3,sK6,X0_57) != iProver_top
    | m1_pre_topc(X1_56,X0_56) != iProver_top
    | m1_pre_topc(X0_56,X2_56) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X1_56)) != iProver_top
    | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_56),u1_struct_0(sK3)))) != iProver_top
    | v2_struct_0(X1_56) = iProver_top
    | v2_struct_0(X0_56) = iProver_top
    | v2_struct_0(X2_56) = iProver_top
    | v2_struct_0(sK3) = iProver_top
    | l1_pre_topc(X2_56) != iProver_top
    | l1_pre_topc(sK3) != iProver_top
    | v2_pre_topc(X2_56) != iProver_top
    | v2_pre_topc(sK3) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_3235])).

cnf(c_38,negated_conjecture,
    ( ~ v2_struct_0(sK3) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_45,plain,
    ( v2_struct_0(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_38])).

cnf(c_37,negated_conjecture,
    ( v2_pre_topc(sK3) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_46,plain,
    ( v2_pre_topc(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_37])).

cnf(c_36,negated_conjecture,
    ( l1_pre_topc(sK3) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_47,plain,
    ( l1_pre_topc(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_36])).

cnf(c_5195,plain,
    ( v2_pre_topc(X2_56) != iProver_top
    | v2_struct_0(X2_56) = iProver_top
    | v2_struct_0(X0_56) = iProver_top
    | v2_struct_0(X1_56) = iProver_top
    | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_56),u1_struct_0(sK3)))) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X1_56)) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
    | m1_pre_topc(X0_56,X2_56) != iProver_top
    | m1_pre_topc(X1_56,X0_56) != iProver_top
    | r1_tmap_1(X0_56,sK3,sK6,X0_57) != iProver_top
    | r1_tmap_1(X1_56,sK3,k3_tmap_1(X2_56,sK3,X0_56,X1_56,sK6),X0_57) = iProver_top
    | u1_struct_0(X0_56) != u1_struct_0(sK5)
    | l1_pre_topc(X2_56) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4900,c_45,c_46,c_47])).

cnf(c_5196,plain,
    ( u1_struct_0(X0_56) != u1_struct_0(sK5)
    | r1_tmap_1(X1_56,sK3,k3_tmap_1(X2_56,sK3,X0_56,X1_56,sK6),X0_57) = iProver_top
    | r1_tmap_1(X0_56,sK3,sK6,X0_57) != iProver_top
    | m1_pre_topc(X1_56,X0_56) != iProver_top
    | m1_pre_topc(X0_56,X2_56) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X1_56)) != iProver_top
    | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_56),u1_struct_0(sK3)))) != iProver_top
    | v2_struct_0(X1_56) = iProver_top
    | v2_struct_0(X0_56) = iProver_top
    | v2_struct_0(X2_56) = iProver_top
    | l1_pre_topc(X2_56) != iProver_top
    | v2_pre_topc(X2_56) != iProver_top ),
    inference(renaming,[status(thm)],[c_5195])).

cnf(c_5212,plain,
    ( r1_tmap_1(X0_56,sK3,k3_tmap_1(X1_56,sK3,sK5,X0_56,sK6),X0_57) = iProver_top
    | r1_tmap_1(sK5,sK3,sK6,X0_57) != iProver_top
    | m1_pre_topc(X0_56,sK5) != iProver_top
    | m1_pre_topc(sK5,X1_56) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(sK5)) != iProver_top
    | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK5),u1_struct_0(sK3)))) != iProver_top
    | v2_struct_0(X1_56) = iProver_top
    | v2_struct_0(X0_56) = iProver_top
    | v2_struct_0(sK5) = iProver_top
    | l1_pre_topc(X1_56) != iProver_top
    | v2_pre_topc(X1_56) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_5196])).

cnf(c_33,negated_conjecture,
    ( ~ v2_struct_0(sK5) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_50,plain,
    ( v2_struct_0(sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_33])).

cnf(c_29,negated_conjecture,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK5),u1_struct_0(sK3)))) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_54,plain,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK5),u1_struct_0(sK3)))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_5390,plain,
    ( v2_struct_0(X0_56) = iProver_top
    | v2_struct_0(X1_56) = iProver_top
    | r1_tmap_1(X0_56,sK3,k3_tmap_1(X1_56,sK3,sK5,X0_56,sK6),X0_57) = iProver_top
    | r1_tmap_1(sK5,sK3,sK6,X0_57) != iProver_top
    | m1_pre_topc(X0_56,sK5) != iProver_top
    | m1_pre_topc(sK5,X1_56) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(sK5)) != iProver_top
    | l1_pre_topc(X1_56) != iProver_top
    | v2_pre_topc(X1_56) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5212,c_50,c_54])).

cnf(c_5391,plain,
    ( r1_tmap_1(X0_56,sK3,k3_tmap_1(X1_56,sK3,sK5,X0_56,sK6),X0_57) = iProver_top
    | r1_tmap_1(sK5,sK3,sK6,X0_57) != iProver_top
    | m1_pre_topc(X0_56,sK5) != iProver_top
    | m1_pre_topc(sK5,X1_56) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(sK5)) != iProver_top
    | v2_struct_0(X1_56) = iProver_top
    | v2_struct_0(X0_56) = iProver_top
    | l1_pre_topc(X1_56) != iProver_top
    | v2_pre_topc(X1_56) != iProver_top ),
    inference(renaming,[status(thm)],[c_5390])).

cnf(c_22,negated_conjecture,
    ( ~ r1_tmap_1(sK5,sK3,sK6,sK7)
    | ~ r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) ),
    inference(cnf_transformation,[],[f94])).

cnf(c_2406,negated_conjecture,
    ( ~ r1_tmap_1(sK5,sK3,sK6,sK7)
    | ~ r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) ),
    inference(subtyping,[status(esa)],[c_22])).

cnf(c_3215,plain,
    ( r1_tmap_1(sK5,sK3,sK6,sK7) != iProver_top
    | r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2406])).

cnf(c_24,negated_conjecture,
    ( sK7 = sK8 ),
    inference(cnf_transformation,[],[f92])).

cnf(c_2404,negated_conjecture,
    ( sK7 = sK8 ),
    inference(subtyping,[status(esa)],[c_24])).

cnf(c_3320,plain,
    ( r1_tmap_1(sK5,sK3,sK6,sK8) != iProver_top
    | r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3215,c_2404])).

cnf(c_5406,plain,
    ( r1_tmap_1(sK5,sK3,sK6,sK8) != iProver_top
    | m1_pre_topc(sK5,sK2) != iProver_top
    | m1_pre_topc(sK4,sK5) != iProver_top
    | m1_subset_1(sK8,u1_struct_0(sK5)) != iProver_top
    | m1_subset_1(sK8,u1_struct_0(sK4)) != iProver_top
    | v2_struct_0(sK2) = iProver_top
    | v2_struct_0(sK4) = iProver_top
    | l1_pre_topc(sK2) != iProver_top
    | v2_pre_topc(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_5391,c_3320])).

cnf(c_11,plain,
    ( r1_tarski(sK1(X0,X1,X2),X1)
    | ~ v3_pre_topc(X1,X0)
    | ~ r2_hidden(X2,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | ~ v2_pre_topc(X0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_2410,plain,
    ( r1_tarski(sK1(X0_56,X0_57,X1_57),X0_57)
    | ~ v3_pre_topc(X0_57,X0_56)
    | ~ r2_hidden(X1_57,X0_57)
    | ~ m1_subset_1(X0_57,k1_zfmisc_1(u1_struct_0(X0_56)))
    | ~ m1_subset_1(X1_57,u1_struct_0(X0_56))
    | v2_struct_0(X0_56)
    | ~ l1_pre_topc(X0_56)
    | ~ v2_pre_topc(X0_56) ),
    inference(subtyping,[status(esa)],[c_11])).

cnf(c_3211,plain,
    ( r1_tarski(sK1(X0_56,X0_57,X1_57),X0_57) = iProver_top
    | v3_pre_topc(X0_57,X0_56) != iProver_top
    | r2_hidden(X1_57,X0_57) != iProver_top
    | m1_subset_1(X0_57,k1_zfmisc_1(u1_struct_0(X0_56))) != iProver_top
    | m1_subset_1(X1_57,u1_struct_0(X0_56)) != iProver_top
    | v2_struct_0(X0_56) = iProver_top
    | l1_pre_topc(X0_56) != iProver_top
    | v2_pre_topc(X0_56) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2410])).

cnf(c_23,negated_conjecture,
    ( r1_tmap_1(sK5,sK3,sK6,sK7)
    | r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) ),
    inference(cnf_transformation,[],[f93])).

cnf(c_2405,negated_conjecture,
    ( r1_tmap_1(sK5,sK3,sK6,sK7)
    | r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) ),
    inference(subtyping,[status(esa)],[c_23])).

cnf(c_3216,plain,
    ( r1_tmap_1(sK5,sK3,sK6,sK7) = iProver_top
    | r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2405])).

cnf(c_3309,plain,
    ( r1_tmap_1(sK5,sK3,sK6,sK8) = iProver_top
    | r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3216,c_2404])).

cnf(c_12,plain,
    ( m1_connsp_2(sK1(X0,X1,X2),X0,X2)
    | ~ v3_pre_topc(X1,X0)
    | ~ r2_hidden(X2,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | ~ v2_pre_topc(X0) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_20,plain,
    ( r1_tmap_1(X0,X1,X2,X3)
    | ~ r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ m1_connsp_2(X6,X0,X3)
    | ~ r1_tarski(X6,u1_struct_0(X4))
    | ~ m1_pre_topc(X0,X5)
    | ~ m1_pre_topc(X4,X5)
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ v1_funct_1(X2)
    | v2_struct_0(X5)
    | v2_struct_0(X1)
    | v2_struct_0(X4)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X5)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X5)
    | ~ v2_pre_topc(X1) ),
    inference(cnf_transformation,[],[f99])).

cnf(c_714,plain,
    ( r1_tmap_1(X0,X1,X2,X3)
    | ~ r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ r1_tarski(X6,u1_struct_0(X4))
    | ~ v3_pre_topc(X7,X8)
    | ~ m1_pre_topc(X0,X5)
    | ~ m1_pre_topc(X4,X5)
    | ~ m1_pre_topc(X4,X0)
    | ~ r2_hidden(X9,X7)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(X8)))
    | ~ m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(X9,u1_struct_0(X8))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ v1_funct_1(X2)
    | v2_struct_0(X8)
    | v2_struct_0(X0)
    | v2_struct_0(X5)
    | v2_struct_0(X1)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X8)
    | ~ l1_pre_topc(X5)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X8)
    | ~ v2_pre_topc(X5)
    | ~ v2_pre_topc(X1)
    | X0 != X8
    | X3 != X9
    | sK1(X8,X7,X9) != X6 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_20])).

cnf(c_715,plain,
    ( r1_tmap_1(X0,X1,X2,X3)
    | ~ r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ r1_tarski(sK1(X0,X6,X3),u1_struct_0(X4))
    | ~ v3_pre_topc(X6,X0)
    | ~ m1_pre_topc(X4,X5)
    | ~ m1_pre_topc(X0,X5)
    | ~ m1_pre_topc(X4,X0)
    | ~ r2_hidden(X3,X6)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(sK1(X0,X6,X3),k1_zfmisc_1(u1_struct_0(X0)))
    | ~ v1_funct_1(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X4)
    | v2_struct_0(X5)
    | v2_struct_0(X0)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X5)
    | ~ l1_pre_topc(X0)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X5)
    | ~ v2_pre_topc(X0) ),
    inference(unflattening,[status(thm)],[c_714])).

cnf(c_4,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1)
    | v2_pre_topc(X0) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_6,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_13,plain,
    ( ~ v3_pre_topc(X0,X1)
    | ~ r2_hidden(X2,X0)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | m1_subset_1(sK1(X1,X0,X2),k1_zfmisc_1(u1_struct_0(X1)))
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_769,plain,
    ( r1_tmap_1(X0,X1,X2,X3)
    | ~ r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
    | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
    | ~ r1_tarski(sK1(X0,X6,X3),u1_struct_0(X4))
    | ~ v3_pre_topc(X6,X0)
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_pre_topc(X0,X5)
    | ~ r2_hidden(X3,X6)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ v1_funct_1(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X4)
    | v2_struct_0(X5)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X5)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X5) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_715,c_4,c_6,c_13,c_18])).

cnf(c_898,plain,
    ( r1_tmap_1(X0,X1,X2,X3)
    | ~ r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
    | ~ r1_tarski(sK1(X0,X6,X3),u1_struct_0(X4))
    | ~ v3_pre_topc(X6,X0)
    | ~ m1_pre_topc(X4,X0)
    | ~ m1_pre_topc(X0,X5)
    | ~ r2_hidden(X3,X6)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
    | ~ m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X0)))
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ v1_funct_1(X2)
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X4)
    | v2_struct_0(X5)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X5)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X5)
    | u1_struct_0(X0) != u1_struct_0(sK5)
    | u1_struct_0(X1) != u1_struct_0(sK3)
    | sK6 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_769,c_30])).

cnf(c_899,plain,
    ( ~ r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK6),X4)
    | r1_tmap_1(X3,X1,sK6,X4)
    | ~ r1_tarski(sK1(X3,X5,X4),u1_struct_0(X0))
    | ~ v3_pre_topc(X5,X3)
    | ~ m1_pre_topc(X0,X3)
    | ~ m1_pre_topc(X3,X2)
    | ~ r2_hidden(X4,X5)
    | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))
    | ~ m1_subset_1(X4,u1_struct_0(X0))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
    | ~ v1_funct_1(sK6)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | v2_struct_0(X0)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | u1_struct_0(X3) != u1_struct_0(sK5)
    | u1_struct_0(X1) != u1_struct_0(sK3) ),
    inference(unflattening,[status(thm)],[c_898])).

cnf(c_903,plain,
    ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ m1_subset_1(X4,u1_struct_0(X0))
    | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))
    | ~ r2_hidden(X4,X5)
    | ~ m1_pre_topc(X3,X2)
    | ~ m1_pre_topc(X0,X3)
    | ~ v3_pre_topc(X5,X3)
    | ~ r1_tarski(sK1(X3,X5,X4),u1_struct_0(X0))
    | r1_tmap_1(X3,X1,sK6,X4)
    | ~ r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK6),X4)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | v2_struct_0(X0)
    | v2_struct_0(X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | u1_struct_0(X3) != u1_struct_0(sK5)
    | u1_struct_0(X1) != u1_struct_0(sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_899,c_31])).

cnf(c_904,plain,
    ( ~ r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK6),X4)
    | r1_tmap_1(X3,X1,sK6,X4)
    | ~ r1_tarski(sK1(X3,X5,X4),u1_struct_0(X0))
    | ~ v3_pre_topc(X5,X3)
    | ~ m1_pre_topc(X0,X3)
    | ~ m1_pre_topc(X3,X2)
    | ~ r2_hidden(X4,X5)
    | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))
    | ~ m1_subset_1(X4,u1_struct_0(X0))
    | ~ m1_subset_1(X4,u1_struct_0(X3))
    | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
    | v2_struct_0(X1)
    | v2_struct_0(X0)
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | u1_struct_0(X3) != u1_struct_0(sK5)
    | u1_struct_0(X1) != u1_struct_0(sK3) ),
    inference(renaming,[status(thm)],[c_903])).

cnf(c_2386,plain,
    ( ~ r1_tmap_1(X0_56,X1_56,k3_tmap_1(X2_56,X1_56,X3_56,X0_56,sK6),X0_57)
    | r1_tmap_1(X3_56,X1_56,sK6,X0_57)
    | ~ r1_tarski(sK1(X3_56,X1_57,X0_57),u1_struct_0(X0_56))
    | ~ v3_pre_topc(X1_57,X3_56)
    | ~ m1_pre_topc(X0_56,X3_56)
    | ~ m1_pre_topc(X3_56,X2_56)
    | ~ r2_hidden(X0_57,X1_57)
    | ~ m1_subset_1(X1_57,k1_zfmisc_1(u1_struct_0(X3_56)))
    | ~ m1_subset_1(X0_57,u1_struct_0(X0_56))
    | ~ m1_subset_1(X0_57,u1_struct_0(X3_56))
    | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3_56),u1_struct_0(X1_56))))
    | v2_struct_0(X1_56)
    | v2_struct_0(X0_56)
    | v2_struct_0(X2_56)
    | v2_struct_0(X3_56)
    | ~ l1_pre_topc(X1_56)
    | ~ l1_pre_topc(X2_56)
    | ~ v2_pre_topc(X1_56)
    | ~ v2_pre_topc(X2_56)
    | u1_struct_0(X3_56) != u1_struct_0(sK5)
    | u1_struct_0(X1_56) != u1_struct_0(sK3) ),
    inference(subtyping,[status(esa)],[c_904])).

cnf(c_3234,plain,
    ( u1_struct_0(X0_56) != u1_struct_0(sK5)
    | u1_struct_0(X1_56) != u1_struct_0(sK3)
    | r1_tmap_1(X2_56,X1_56,k3_tmap_1(X3_56,X1_56,X0_56,X2_56,sK6),X0_57) != iProver_top
    | r1_tmap_1(X0_56,X1_56,sK6,X0_57) = iProver_top
    | r1_tarski(sK1(X0_56,X1_57,X0_57),u1_struct_0(X2_56)) != iProver_top
    | v3_pre_topc(X1_57,X0_56) != iProver_top
    | m1_pre_topc(X2_56,X0_56) != iProver_top
    | m1_pre_topc(X0_56,X3_56) != iProver_top
    | r2_hidden(X0_57,X1_57) != iProver_top
    | m1_subset_1(X1_57,k1_zfmisc_1(u1_struct_0(X0_56))) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X2_56)) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
    | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_56),u1_struct_0(X1_56)))) != iProver_top
    | v2_struct_0(X1_56) = iProver_top
    | v2_struct_0(X2_56) = iProver_top
    | v2_struct_0(X0_56) = iProver_top
    | v2_struct_0(X3_56) = iProver_top
    | l1_pre_topc(X1_56) != iProver_top
    | l1_pre_topc(X3_56) != iProver_top
    | v2_pre_topc(X1_56) != iProver_top
    | v2_pre_topc(X3_56) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2386])).

cnf(c_4025,plain,
    ( u1_struct_0(X0_56) != u1_struct_0(sK5)
    | r1_tmap_1(X1_56,sK3,k3_tmap_1(X2_56,sK3,X0_56,X1_56,sK6),X0_57) != iProver_top
    | r1_tmap_1(X0_56,sK3,sK6,X0_57) = iProver_top
    | r1_tarski(sK1(X0_56,X1_57,X0_57),u1_struct_0(X1_56)) != iProver_top
    | v3_pre_topc(X1_57,X0_56) != iProver_top
    | m1_pre_topc(X1_56,X0_56) != iProver_top
    | m1_pre_topc(X0_56,X2_56) != iProver_top
    | r2_hidden(X0_57,X1_57) != iProver_top
    | m1_subset_1(X1_57,k1_zfmisc_1(u1_struct_0(X0_56))) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X1_56)) != iProver_top
    | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_56),u1_struct_0(sK3)))) != iProver_top
    | v2_struct_0(X1_56) = iProver_top
    | v2_struct_0(X0_56) = iProver_top
    | v2_struct_0(X2_56) = iProver_top
    | v2_struct_0(sK3) = iProver_top
    | l1_pre_topc(X2_56) != iProver_top
    | l1_pre_topc(sK3) != iProver_top
    | v2_pre_topc(X2_56) != iProver_top
    | v2_pre_topc(sK3) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_3234])).

cnf(c_5123,plain,
    ( v2_pre_topc(X2_56) != iProver_top
    | v2_struct_0(X2_56) = iProver_top
    | v2_struct_0(X0_56) = iProver_top
    | v2_struct_0(X1_56) = iProver_top
    | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_56),u1_struct_0(sK3)))) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X1_56)) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
    | m1_subset_1(X1_57,k1_zfmisc_1(u1_struct_0(X0_56))) != iProver_top
    | r2_hidden(X0_57,X1_57) != iProver_top
    | m1_pre_topc(X0_56,X2_56) != iProver_top
    | m1_pre_topc(X1_56,X0_56) != iProver_top
    | v3_pre_topc(X1_57,X0_56) != iProver_top
    | r1_tarski(sK1(X0_56,X1_57,X0_57),u1_struct_0(X1_56)) != iProver_top
    | r1_tmap_1(X0_56,sK3,sK6,X0_57) = iProver_top
    | r1_tmap_1(X1_56,sK3,k3_tmap_1(X2_56,sK3,X0_56,X1_56,sK6),X0_57) != iProver_top
    | u1_struct_0(X0_56) != u1_struct_0(sK5)
    | l1_pre_topc(X2_56) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4025,c_45,c_46,c_47])).

cnf(c_5124,plain,
    ( u1_struct_0(X0_56) != u1_struct_0(sK5)
    | r1_tmap_1(X1_56,sK3,k3_tmap_1(X2_56,sK3,X0_56,X1_56,sK6),X0_57) != iProver_top
    | r1_tmap_1(X0_56,sK3,sK6,X0_57) = iProver_top
    | r1_tarski(sK1(X0_56,X1_57,X0_57),u1_struct_0(X1_56)) != iProver_top
    | v3_pre_topc(X1_57,X0_56) != iProver_top
    | m1_pre_topc(X1_56,X0_56) != iProver_top
    | m1_pre_topc(X0_56,X2_56) != iProver_top
    | r2_hidden(X0_57,X1_57) != iProver_top
    | m1_subset_1(X1_57,k1_zfmisc_1(u1_struct_0(X0_56))) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X1_56)) != iProver_top
    | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_56),u1_struct_0(sK3)))) != iProver_top
    | v2_struct_0(X1_56) = iProver_top
    | v2_struct_0(X0_56) = iProver_top
    | v2_struct_0(X2_56) = iProver_top
    | l1_pre_topc(X2_56) != iProver_top
    | v2_pre_topc(X2_56) != iProver_top ),
    inference(renaming,[status(thm)],[c_5123])).

cnf(c_5144,plain,
    ( r1_tmap_1(X0_56,sK3,k3_tmap_1(X1_56,sK3,sK5,X0_56,sK6),X0_57) != iProver_top
    | r1_tmap_1(sK5,sK3,sK6,X0_57) = iProver_top
    | r1_tarski(sK1(sK5,X1_57,X0_57),u1_struct_0(X0_56)) != iProver_top
    | v3_pre_topc(X1_57,sK5) != iProver_top
    | m1_pre_topc(X0_56,sK5) != iProver_top
    | m1_pre_topc(sK5,X1_56) != iProver_top
    | r2_hidden(X0_57,X1_57) != iProver_top
    | m1_subset_1(X1_57,k1_zfmisc_1(u1_struct_0(sK5))) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(sK5)) != iProver_top
    | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK5),u1_struct_0(sK3)))) != iProver_top
    | v2_struct_0(X1_56) = iProver_top
    | v2_struct_0(X0_56) = iProver_top
    | v2_struct_0(sK5) = iProver_top
    | l1_pre_topc(X1_56) != iProver_top
    | v2_pre_topc(X1_56) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_5124])).

cnf(c_5217,plain,
    ( v2_struct_0(X0_56) = iProver_top
    | v2_struct_0(X1_56) = iProver_top
    | r1_tmap_1(X0_56,sK3,k3_tmap_1(X1_56,sK3,sK5,X0_56,sK6),X0_57) != iProver_top
    | r1_tmap_1(sK5,sK3,sK6,X0_57) = iProver_top
    | r1_tarski(sK1(sK5,X1_57,X0_57),u1_struct_0(X0_56)) != iProver_top
    | v3_pre_topc(X1_57,sK5) != iProver_top
    | m1_pre_topc(X0_56,sK5) != iProver_top
    | m1_pre_topc(sK5,X1_56) != iProver_top
    | r2_hidden(X0_57,X1_57) != iProver_top
    | m1_subset_1(X1_57,k1_zfmisc_1(u1_struct_0(sK5))) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(sK5)) != iProver_top
    | l1_pre_topc(X1_56) != iProver_top
    | v2_pre_topc(X1_56) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5144,c_50,c_54])).

cnf(c_5218,plain,
    ( r1_tmap_1(X0_56,sK3,k3_tmap_1(X1_56,sK3,sK5,X0_56,sK6),X0_57) != iProver_top
    | r1_tmap_1(sK5,sK3,sK6,X0_57) = iProver_top
    | r1_tarski(sK1(sK5,X1_57,X0_57),u1_struct_0(X0_56)) != iProver_top
    | v3_pre_topc(X1_57,sK5) != iProver_top
    | m1_pre_topc(X0_56,sK5) != iProver_top
    | m1_pre_topc(sK5,X1_56) != iProver_top
    | r2_hidden(X0_57,X1_57) != iProver_top
    | m1_subset_1(X1_57,k1_zfmisc_1(u1_struct_0(sK5))) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
    | m1_subset_1(X0_57,u1_struct_0(sK5)) != iProver_top
    | v2_struct_0(X1_56) = iProver_top
    | v2_struct_0(X0_56) = iProver_top
    | l1_pre_topc(X1_56) != iProver_top
    | v2_pre_topc(X1_56) != iProver_top ),
    inference(renaming,[status(thm)],[c_5217])).

cnf(c_5237,plain,
    ( r1_tmap_1(sK5,sK3,sK6,sK8) = iProver_top
    | r1_tarski(sK1(sK5,X0_57,sK8),u1_struct_0(sK4)) != iProver_top
    | v3_pre_topc(X0_57,sK5) != iProver_top
    | m1_pre_topc(sK5,sK2) != iProver_top
    | m1_pre_topc(sK4,sK5) != iProver_top
    | r2_hidden(sK8,X0_57) != iProver_top
    | m1_subset_1(X0_57,k1_zfmisc_1(u1_struct_0(sK5))) != iProver_top
    | m1_subset_1(sK8,u1_struct_0(sK5)) != iProver_top
    | m1_subset_1(sK8,u1_struct_0(sK4)) != iProver_top
    | v2_struct_0(sK2) = iProver_top
    | v2_struct_0(sK4) = iProver_top
    | l1_pre_topc(sK2) != iProver_top
    | v2_pre_topc(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_3309,c_5218])).

cnf(c_41,negated_conjecture,
    ( ~ v2_struct_0(sK2) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_42,plain,
    ( v2_struct_0(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_41])).

cnf(c_40,negated_conjecture,
    ( v2_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_43,plain,
    ( v2_pre_topc(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_40])).

cnf(c_39,negated_conjecture,
    ( l1_pre_topc(sK2) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_44,plain,
    ( l1_pre_topc(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_39])).

cnf(c_35,negated_conjecture,
    ( ~ v2_struct_0(sK4) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_48,plain,
    ( v2_struct_0(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_32,negated_conjecture,
    ( m1_pre_topc(sK5,sK2) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_51,plain,
    ( m1_pre_topc(sK5,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_27,negated_conjecture,
    ( m1_pre_topc(sK4,sK5) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_56,plain,
    ( m1_pre_topc(sK4,sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_25,negated_conjecture,
    ( m1_subset_1(sK8,u1_struct_0(sK4)) ),
    inference(cnf_transformation,[],[f91])).

cnf(c_58,plain,
    ( m1_subset_1(sK8,u1_struct_0(sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_26,negated_conjecture,
    ( m1_subset_1(sK7,u1_struct_0(sK5)) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_2402,negated_conjecture,
    ( m1_subset_1(sK7,u1_struct_0(sK5)) ),
    inference(subtyping,[status(esa)],[c_26])).

cnf(c_3218,plain,
    ( m1_subset_1(sK7,u1_struct_0(sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2402])).

cnf(c_3262,plain,
    ( m1_subset_1(sK8,u1_struct_0(sK5)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3218,c_2404])).

cnf(c_5292,plain,
    ( r1_tmap_1(sK5,sK3,sK6,sK8) = iProver_top
    | r1_tarski(sK1(sK5,X0_57,sK8),u1_struct_0(sK4)) != iProver_top
    | v3_pre_topc(X0_57,sK5) != iProver_top
    | r2_hidden(sK8,X0_57) != iProver_top
    | m1_subset_1(X0_57,k1_zfmisc_1(u1_struct_0(sK5))) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5237,c_42,c_43,c_44,c_48,c_51,c_56,c_58,c_3262])).

cnf(c_5303,plain,
    ( r1_tmap_1(sK5,sK3,sK6,sK8) = iProver_top
    | v3_pre_topc(u1_struct_0(sK4),sK5) != iProver_top
    | r2_hidden(sK8,u1_struct_0(sK4)) != iProver_top
    | m1_subset_1(u1_struct_0(sK4),k1_zfmisc_1(u1_struct_0(sK5))) != iProver_top
    | m1_subset_1(sK8,u1_struct_0(sK5)) != iProver_top
    | v2_struct_0(sK5) = iProver_top
    | l1_pre_topc(sK5) != iProver_top
    | v2_pre_topc(sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_3211,c_5292])).

cnf(c_2399,negated_conjecture,
    ( m1_pre_topc(sK5,sK2) ),
    inference(subtyping,[status(esa)],[c_32])).

cnf(c_3221,plain,
    ( m1_pre_topc(sK5,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2399])).

cnf(c_2414,plain,
    ( ~ m1_pre_topc(X0_56,X1_56)
    | ~ l1_pre_topc(X1_56)
    | ~ v2_pre_topc(X1_56)
    | v2_pre_topc(X0_56) ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_3207,plain,
    ( m1_pre_topc(X0_56,X1_56) != iProver_top
    | l1_pre_topc(X1_56) != iProver_top
    | v2_pre_topc(X1_56) != iProver_top
    | v2_pre_topc(X0_56) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2414])).

cnf(c_4433,plain,
    ( l1_pre_topc(sK2) != iProver_top
    | v2_pre_topc(sK5) = iProver_top
    | v2_pre_topc(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_3221,c_3207])).

cnf(c_2401,negated_conjecture,
    ( m1_pre_topc(sK4,sK5) ),
    inference(subtyping,[status(esa)],[c_27])).

cnf(c_3219,plain,
    ( m1_pre_topc(sK4,sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2401])).

cnf(c_2413,plain,
    ( ~ m1_pre_topc(X0_56,X1_56)
    | ~ l1_pre_topc(X1_56)
    | l1_pre_topc(X0_56) ),
    inference(subtyping,[status(esa)],[c_6])).

cnf(c_3208,plain,
    ( m1_pre_topc(X0_56,X1_56) != iProver_top
    | l1_pre_topc(X1_56) != iProver_top
    | l1_pre_topc(X0_56) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2413])).

cnf(c_4147,plain,
    ( l1_pre_topc(sK5) != iProver_top
    | l1_pre_topc(sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_3219,c_3208])).

cnf(c_2403,negated_conjecture,
    ( m1_subset_1(sK8,u1_struct_0(sK4)) ),
    inference(subtyping,[status(esa)],[c_25])).

cnf(c_3217,plain,
    ( m1_subset_1(sK8,u1_struct_0(sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2403])).

cnf(c_3,plain,
    ( r2_hidden(X0,X1)
    | ~ m1_subset_1(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_2415,plain,
    ( r2_hidden(X0_57,X1_57)
    | ~ m1_subset_1(X0_57,X1_57)
    | v1_xboole_0(X1_57) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_3206,plain,
    ( r2_hidden(X0_57,X1_57) = iProver_top
    | m1_subset_1(X0_57,X1_57) != iProver_top
    | v1_xboole_0(X1_57) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2415])).

cnf(c_4124,plain,
    ( r2_hidden(sK8,u1_struct_0(sK4)) = iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_3217,c_3206])).

cnf(c_16,plain,
    ( ~ v1_tsep_1(X0,X1)
    | v3_pre_topc(u1_struct_0(X0),X1)
    | ~ m1_pre_topc(X0,X1)
    | ~ m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(cnf_transformation,[],[f97])).

cnf(c_17,plain,
    ( ~ m1_pre_topc(X0,X1)
    | m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_228,plain,
    ( ~ m1_pre_topc(X0,X1)
    | v3_pre_topc(u1_struct_0(X0),X1)
    | ~ v1_tsep_1(X0,X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_16,c_17])).

cnf(c_229,plain,
    ( ~ v1_tsep_1(X0,X1)
    | v3_pre_topc(u1_struct_0(X0),X1)
    | ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(renaming,[status(thm)],[c_228])).

cnf(c_28,negated_conjecture,
    ( v1_tsep_1(sK4,sK5) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_550,plain,
    ( v3_pre_topc(u1_struct_0(X0),X1)
    | ~ m1_pre_topc(X0,X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1)
    | sK5 != X1
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_229,c_28])).

cnf(c_551,plain,
    ( v3_pre_topc(u1_struct_0(sK4),sK5)
    | ~ m1_pre_topc(sK4,sK5)
    | ~ l1_pre_topc(sK5)
    | ~ v2_pre_topc(sK5) ),
    inference(unflattening,[status(thm)],[c_550])).

cnf(c_553,plain,
    ( v3_pre_topc(u1_struct_0(sK4),sK5)
    | ~ l1_pre_topc(sK5)
    | ~ v2_pre_topc(sK5) ),
    inference(global_propositional_subsumption,[status(thm)],[c_551,c_27])).

cnf(c_2388,plain,
    ( v3_pre_topc(u1_struct_0(sK4),sK5)
    | ~ l1_pre_topc(sK5)
    | ~ v2_pre_topc(sK5) ),
    inference(subtyping,[status(esa)],[c_553])).

cnf(c_3232,plain,
    ( v3_pre_topc(u1_struct_0(sK4),sK5) = iProver_top
    | l1_pre_topc(sK5) != iProver_top
    | v2_pre_topc(sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2388])).

cnf(c_552,plain,
    ( v3_pre_topc(u1_struct_0(sK4),sK5) = iProver_top
    | m1_pre_topc(sK4,sK5) != iProver_top
    | l1_pre_topc(sK5) != iProver_top
    | v2_pre_topc(sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_551])).

cnf(c_3583,plain,
    ( ~ m1_pre_topc(sK5,X0_56)
    | ~ l1_pre_topc(X0_56)
    | l1_pre_topc(sK5) ),
    inference(instantiation,[status(thm)],[c_2413])).

cnf(c_3934,plain,
    ( ~ m1_pre_topc(sK5,sK2)
    | l1_pre_topc(sK5)
    | ~ l1_pre_topc(sK2) ),
    inference(instantiation,[status(thm)],[c_3583])).

cnf(c_3935,plain,
    ( m1_pre_topc(sK5,sK2) != iProver_top
    | l1_pre_topc(sK5) = iProver_top
    | l1_pre_topc(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3934])).

cnf(c_3997,plain,
    ( v3_pre_topc(u1_struct_0(sK4),sK5) = iProver_top
    | v2_pre_topc(sK5) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3232,c_44,c_51,c_56,c_552,c_3935])).

cnf(c_5,plain,
    ( l1_struct_0(X0)
    | ~ l1_pre_topc(X0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_7,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_531,plain,
    ( v2_struct_0(X0)
    | ~ l1_pre_topc(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(resolution,[status(thm)],[c_5,c_7])).

cnf(c_2389,plain,
    ( v2_struct_0(X0_56)
    | ~ l1_pre_topc(X0_56)
    | ~ v1_xboole_0(u1_struct_0(X0_56)) ),
    inference(subtyping,[status(esa)],[c_531])).

cnf(c_3699,plain,
    ( v2_struct_0(sK4)
    | ~ l1_pre_topc(sK4)
    | ~ v1_xboole_0(u1_struct_0(sK4)) ),
    inference(instantiation,[status(thm)],[c_2389])).

cnf(c_3700,plain,
    ( v2_struct_0(sK4) = iProver_top
    | l1_pre_topc(sK4) != iProver_top
    | v1_xboole_0(u1_struct_0(sK4)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3699])).

cnf(c_2408,plain,
    ( ~ m1_pre_topc(X0_56,X1_56)
    | m1_subset_1(u1_struct_0(X0_56),k1_zfmisc_1(u1_struct_0(X1_56)))
    | ~ l1_pre_topc(X1_56) ),
    inference(subtyping,[status(esa)],[c_17])).

cnf(c_3588,plain,
    ( ~ m1_pre_topc(sK4,sK5)
    | m1_subset_1(u1_struct_0(sK4),k1_zfmisc_1(u1_struct_0(sK5)))
    | ~ l1_pre_topc(sK5) ),
    inference(instantiation,[status(thm)],[c_2408])).

cnf(c_3589,plain,
    ( m1_pre_topc(sK4,sK5) != iProver_top
    | m1_subset_1(u1_struct_0(sK4),k1_zfmisc_1(u1_struct_0(sK5))) = iProver_top
    | l1_pre_topc(sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3588])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_5406,c_5303,c_4433,c_4147,c_4124,c_3997,c_3935,c_3700,c_3589,c_3262,c_58,c_56,c_51,c_50,c_48,c_44,c_43,c_42])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n015.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 11:33:08 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 2.27/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.27/1.00  
% 2.27/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.27/1.00  
% 2.27/1.00  ------  iProver source info
% 2.27/1.00  
% 2.27/1.00  git: date: 2020-06-30 10:37:57 +0100
% 2.27/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.27/1.00  git: non_committed_changes: false
% 2.27/1.00  git: last_make_outside_of_git: false
% 2.27/1.00  
% 2.27/1.00  ------ 
% 2.27/1.00  
% 2.27/1.00  ------ Input Options
% 2.27/1.00  
% 2.27/1.00  --out_options                           all
% 2.27/1.00  --tptp_safe_out                         true
% 2.27/1.00  --problem_path                          ""
% 2.27/1.00  --include_path                          ""
% 2.27/1.00  --clausifier                            res/vclausify_rel
% 2.27/1.00  --clausifier_options                    --mode clausify
% 2.27/1.00  --stdin                                 false
% 2.27/1.00  --stats_out                             all
% 2.27/1.00  
% 2.27/1.00  ------ General Options
% 2.27/1.00  
% 2.27/1.00  --fof                                   false
% 2.27/1.00  --time_out_real                         305.
% 2.27/1.00  --time_out_virtual                      -1.
% 2.27/1.00  --symbol_type_check                     false
% 2.27/1.00  --clausify_out                          false
% 2.27/1.00  --sig_cnt_out                           false
% 2.27/1.00  --trig_cnt_out                          false
% 2.27/1.00  --trig_cnt_out_tolerance                1.
% 2.27/1.00  --trig_cnt_out_sk_spl                   false
% 2.27/1.00  --abstr_cl_out                          false
% 2.27/1.00  
% 2.27/1.00  ------ Global Options
% 2.27/1.00  
% 2.27/1.00  --schedule                              default
% 2.27/1.00  --add_important_lit                     false
% 2.27/1.00  --prop_solver_per_cl                    1000
% 2.27/1.00  --min_unsat_core                        false
% 2.27/1.00  --soft_assumptions                      false
% 2.27/1.00  --soft_lemma_size                       3
% 2.27/1.00  --prop_impl_unit_size                   0
% 2.27/1.00  --prop_impl_unit                        []
% 2.27/1.00  --share_sel_clauses                     true
% 2.27/1.00  --reset_solvers                         false
% 2.27/1.00  --bc_imp_inh                            [conj_cone]
% 2.27/1.00  --conj_cone_tolerance                   3.
% 2.27/1.00  --extra_neg_conj                        none
% 2.27/1.00  --large_theory_mode                     true
% 2.27/1.00  --prolific_symb_bound                   200
% 2.27/1.00  --lt_threshold                          2000
% 2.27/1.00  --clause_weak_htbl                      true
% 2.27/1.00  --gc_record_bc_elim                     false
% 2.27/1.00  
% 2.27/1.00  ------ Preprocessing Options
% 2.27/1.00  
% 2.27/1.00  --preprocessing_flag                    true
% 2.27/1.00  --time_out_prep_mult                    0.1
% 2.27/1.00  --splitting_mode                        input
% 2.27/1.00  --splitting_grd                         true
% 2.27/1.00  --splitting_cvd                         false
% 2.27/1.00  --splitting_cvd_svl                     false
% 2.27/1.00  --splitting_nvd                         32
% 2.27/1.00  --sub_typing                            true
% 2.27/1.00  --prep_gs_sim                           true
% 2.27/1.00  --prep_unflatten                        true
% 2.27/1.00  --prep_res_sim                          true
% 2.27/1.00  --prep_upred                            true
% 2.27/1.00  --prep_sem_filter                       exhaustive
% 2.27/1.00  --prep_sem_filter_out                   false
% 2.27/1.00  --pred_elim                             true
% 2.27/1.00  --res_sim_input                         true
% 2.27/1.00  --eq_ax_congr_red                       true
% 2.27/1.00  --pure_diseq_elim                       true
% 2.27/1.00  --brand_transform                       false
% 2.27/1.00  --non_eq_to_eq                          false
% 2.27/1.00  --prep_def_merge                        true
% 2.27/1.00  --prep_def_merge_prop_impl              false
% 2.27/1.00  --prep_def_merge_mbd                    true
% 2.27/1.00  --prep_def_merge_tr_red                 false
% 2.27/1.00  --prep_def_merge_tr_cl                  false
% 2.27/1.00  --smt_preprocessing                     true
% 2.27/1.00  --smt_ac_axioms                         fast
% 2.27/1.00  --preprocessed_out                      false
% 2.27/1.00  --preprocessed_stats                    false
% 2.27/1.00  
% 2.27/1.00  ------ Abstraction refinement Options
% 2.27/1.00  
% 2.27/1.00  --abstr_ref                             []
% 2.27/1.00  --abstr_ref_prep                        false
% 2.27/1.00  --abstr_ref_until_sat                   false
% 2.27/1.00  --abstr_ref_sig_restrict                funpre
% 2.27/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.27/1.00  --abstr_ref_under                       []
% 2.27/1.00  
% 2.27/1.00  ------ SAT Options
% 2.27/1.00  
% 2.27/1.00  --sat_mode                              false
% 2.27/1.00  --sat_fm_restart_options                ""
% 2.27/1.00  --sat_gr_def                            false
% 2.27/1.00  --sat_epr_types                         true
% 2.27/1.00  --sat_non_cyclic_types                  false
% 2.27/1.00  --sat_finite_models                     false
% 2.27/1.00  --sat_fm_lemmas                         false
% 2.27/1.00  --sat_fm_prep                           false
% 2.27/1.00  --sat_fm_uc_incr                        true
% 2.27/1.00  --sat_out_model                         small
% 2.27/1.00  --sat_out_clauses                       false
% 2.27/1.00  
% 2.27/1.00  ------ QBF Options
% 2.27/1.00  
% 2.27/1.00  --qbf_mode                              false
% 2.27/1.00  --qbf_elim_univ                         false
% 2.27/1.00  --qbf_dom_inst                          none
% 2.27/1.00  --qbf_dom_pre_inst                      false
% 2.27/1.00  --qbf_sk_in                             false
% 2.27/1.00  --qbf_pred_elim                         true
% 2.27/1.00  --qbf_split                             512
% 2.27/1.00  
% 2.27/1.00  ------ BMC1 Options
% 2.27/1.00  
% 2.27/1.00  --bmc1_incremental                      false
% 2.27/1.00  --bmc1_axioms                           reachable_all
% 2.27/1.00  --bmc1_min_bound                        0
% 2.27/1.00  --bmc1_max_bound                        -1
% 2.27/1.00  --bmc1_max_bound_default                -1
% 2.27/1.00  --bmc1_symbol_reachability              true
% 2.27/1.00  --bmc1_property_lemmas                  false
% 2.27/1.00  --bmc1_k_induction                      false
% 2.27/1.00  --bmc1_non_equiv_states                 false
% 2.27/1.00  --bmc1_deadlock                         false
% 2.27/1.00  --bmc1_ucm                              false
% 2.27/1.00  --bmc1_add_unsat_core                   none
% 2.27/1.00  --bmc1_unsat_core_children              false
% 2.27/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.27/1.00  --bmc1_out_stat                         full
% 2.27/1.00  --bmc1_ground_init                      false
% 2.27/1.00  --bmc1_pre_inst_next_state              false
% 2.27/1.00  --bmc1_pre_inst_state                   false
% 2.27/1.00  --bmc1_pre_inst_reach_state             false
% 2.27/1.00  --bmc1_out_unsat_core                   false
% 2.27/1.00  --bmc1_aig_witness_out                  false
% 2.27/1.00  --bmc1_verbose                          false
% 2.27/1.00  --bmc1_dump_clauses_tptp                false
% 2.27/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.27/1.00  --bmc1_dump_file                        -
% 2.27/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.27/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.27/1.00  --bmc1_ucm_extend_mode                  1
% 2.27/1.00  --bmc1_ucm_init_mode                    2
% 2.27/1.00  --bmc1_ucm_cone_mode                    none
% 2.27/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.27/1.00  --bmc1_ucm_relax_model                  4
% 2.27/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.27/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.27/1.00  --bmc1_ucm_layered_model                none
% 2.27/1.00  --bmc1_ucm_max_lemma_size               10
% 2.27/1.00  
% 2.27/1.00  ------ AIG Options
% 2.27/1.00  
% 2.27/1.00  --aig_mode                              false
% 2.27/1.00  
% 2.27/1.00  ------ Instantiation Options
% 2.27/1.00  
% 2.27/1.00  --instantiation_flag                    true
% 2.27/1.00  --inst_sos_flag                         false
% 2.27/1.00  --inst_sos_phase                        true
% 2.27/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.27/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.27/1.00  --inst_lit_sel_side                     num_symb
% 2.27/1.00  --inst_solver_per_active                1400
% 2.27/1.00  --inst_solver_calls_frac                1.
% 2.27/1.00  --inst_passive_queue_type               priority_queues
% 2.27/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.27/1.00  --inst_passive_queues_freq              [25;2]
% 2.27/1.00  --inst_dismatching                      true
% 2.27/1.00  --inst_eager_unprocessed_to_passive     true
% 2.27/1.00  --inst_prop_sim_given                   true
% 2.27/1.00  --inst_prop_sim_new                     false
% 2.27/1.00  --inst_subs_new                         false
% 2.27/1.00  --inst_eq_res_simp                      false
% 2.27/1.00  --inst_subs_given                       false
% 2.27/1.00  --inst_orphan_elimination               true
% 2.27/1.00  --inst_learning_loop_flag               true
% 2.27/1.00  --inst_learning_start                   3000
% 2.27/1.00  --inst_learning_factor                  2
% 2.27/1.00  --inst_start_prop_sim_after_learn       3
% 2.27/1.00  --inst_sel_renew                        solver
% 2.27/1.00  --inst_lit_activity_flag                true
% 2.27/1.00  --inst_restr_to_given                   false
% 2.27/1.00  --inst_activity_threshold               500
% 2.27/1.00  --inst_out_proof                        true
% 2.27/1.00  
% 2.27/1.00  ------ Resolution Options
% 2.27/1.00  
% 2.27/1.00  --resolution_flag                       true
% 2.27/1.00  --res_lit_sel                           adaptive
% 2.27/1.00  --res_lit_sel_side                      none
% 2.27/1.00  --res_ordering                          kbo
% 2.27/1.00  --res_to_prop_solver                    active
% 2.27/1.00  --res_prop_simpl_new                    false
% 2.27/1.00  --res_prop_simpl_given                  true
% 2.27/1.00  --res_passive_queue_type                priority_queues
% 2.27/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.27/1.00  --res_passive_queues_freq               [15;5]
% 2.27/1.00  --res_forward_subs                      full
% 2.27/1.00  --res_backward_subs                     full
% 2.27/1.00  --res_forward_subs_resolution           true
% 2.27/1.00  --res_backward_subs_resolution          true
% 2.27/1.00  --res_orphan_elimination                true
% 2.27/1.00  --res_time_limit                        2.
% 2.27/1.00  --res_out_proof                         true
% 2.27/1.00  
% 2.27/1.00  ------ Superposition Options
% 2.27/1.00  
% 2.27/1.00  --superposition_flag                    true
% 2.27/1.00  --sup_passive_queue_type                priority_queues
% 2.27/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.27/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.27/1.00  --demod_completeness_check              fast
% 2.27/1.00  --demod_use_ground                      true
% 2.27/1.00  --sup_to_prop_solver                    passive
% 2.27/1.00  --sup_prop_simpl_new                    true
% 2.27/1.00  --sup_prop_simpl_given                  true
% 2.27/1.00  --sup_fun_splitting                     false
% 2.27/1.00  --sup_smt_interval                      50000
% 2.27/1.00  
% 2.27/1.00  ------ Superposition Simplification Setup
% 2.27/1.00  
% 2.27/1.00  --sup_indices_passive                   []
% 2.27/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.27/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.27/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.27/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.27/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.27/1.00  --sup_full_bw                           [BwDemod]
% 2.27/1.00  --sup_immed_triv                        [TrivRules]
% 2.27/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.27/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.27/1.00  --sup_immed_bw_main                     []
% 2.27/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.27/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.27/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.27/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.27/1.00  
% 2.27/1.00  ------ Combination Options
% 2.27/1.00  
% 2.27/1.00  --comb_res_mult                         3
% 2.27/1.00  --comb_sup_mult                         2
% 2.27/1.00  --comb_inst_mult                        10
% 2.27/1.00  
% 2.27/1.00  ------ Debug Options
% 2.27/1.00  
% 2.27/1.00  --dbg_backtrace                         false
% 2.27/1.00  --dbg_dump_prop_clauses                 false
% 2.27/1.00  --dbg_dump_prop_clauses_file            -
% 2.27/1.00  --dbg_out_stat                          false
% 2.27/1.00  ------ Parsing...
% 2.27/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.27/1.00  
% 2.27/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 5 0s  sf_e  pe_s  pe_e 
% 2.27/1.00  
% 2.27/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.27/1.00  
% 2.27/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.27/1.00  ------ Proving...
% 2.27/1.00  ------ Problem Properties 
% 2.27/1.00  
% 2.27/1.00  
% 2.27/1.00  clauses                                 34
% 2.27/1.00  conjectures                             17
% 2.27/1.00  EPR                                     19
% 2.27/1.00  Horn                                    24
% 2.27/1.00  unary                                   15
% 2.27/1.00  binary                                  2
% 2.27/1.00  lits                                    127
% 2.27/1.00  lits eq                                 5
% 2.27/1.00  fd_pure                                 0
% 2.27/1.00  fd_pseudo                               0
% 2.27/1.00  fd_cond                                 0
% 2.27/1.00  fd_pseudo_cond                          0
% 2.27/1.00  AC symbols                              0
% 2.27/1.00  
% 2.27/1.00  ------ Schedule dynamic 5 is on 
% 2.27/1.00  
% 2.27/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.27/1.00  
% 2.27/1.00  
% 2.27/1.00  ------ 
% 2.27/1.00  Current options:
% 2.27/1.00  ------ 
% 2.27/1.00  
% 2.27/1.00  ------ Input Options
% 2.27/1.00  
% 2.27/1.00  --out_options                           all
% 2.27/1.00  --tptp_safe_out                         true
% 2.27/1.00  --problem_path                          ""
% 2.27/1.00  --include_path                          ""
% 2.27/1.00  --clausifier                            res/vclausify_rel
% 2.27/1.00  --clausifier_options                    --mode clausify
% 2.27/1.00  --stdin                                 false
% 2.27/1.00  --stats_out                             all
% 2.27/1.00  
% 2.27/1.00  ------ General Options
% 2.27/1.00  
% 2.27/1.00  --fof                                   false
% 2.27/1.00  --time_out_real                         305.
% 2.27/1.00  --time_out_virtual                      -1.
% 2.27/1.00  --symbol_type_check                     false
% 2.27/1.00  --clausify_out                          false
% 2.27/1.00  --sig_cnt_out                           false
% 2.27/1.00  --trig_cnt_out                          false
% 2.27/1.00  --trig_cnt_out_tolerance                1.
% 2.27/1.00  --trig_cnt_out_sk_spl                   false
% 2.27/1.00  --abstr_cl_out                          false
% 2.27/1.00  
% 2.27/1.00  ------ Global Options
% 2.27/1.00  
% 2.27/1.00  --schedule                              default
% 2.27/1.00  --add_important_lit                     false
% 2.27/1.00  --prop_solver_per_cl                    1000
% 2.27/1.00  --min_unsat_core                        false
% 2.27/1.00  --soft_assumptions                      false
% 2.27/1.00  --soft_lemma_size                       3
% 2.27/1.00  --prop_impl_unit_size                   0
% 2.27/1.00  --prop_impl_unit                        []
% 2.27/1.00  --share_sel_clauses                     true
% 2.27/1.00  --reset_solvers                         false
% 2.27/1.00  --bc_imp_inh                            [conj_cone]
% 2.27/1.00  --conj_cone_tolerance                   3.
% 2.27/1.00  --extra_neg_conj                        none
% 2.27/1.00  --large_theory_mode                     true
% 2.27/1.00  --prolific_symb_bound                   200
% 2.27/1.00  --lt_threshold                          2000
% 2.27/1.00  --clause_weak_htbl                      true
% 2.27/1.00  --gc_record_bc_elim                     false
% 2.27/1.00  
% 2.27/1.00  ------ Preprocessing Options
% 2.27/1.00  
% 2.27/1.00  --preprocessing_flag                    true
% 2.27/1.00  --time_out_prep_mult                    0.1
% 2.27/1.00  --splitting_mode                        input
% 2.27/1.00  --splitting_grd                         true
% 2.27/1.00  --splitting_cvd                         false
% 2.27/1.00  --splitting_cvd_svl                     false
% 2.27/1.00  --splitting_nvd                         32
% 2.27/1.00  --sub_typing                            true
% 2.27/1.00  --prep_gs_sim                           true
% 2.27/1.00  --prep_unflatten                        true
% 2.27/1.00  --prep_res_sim                          true
% 2.27/1.00  --prep_upred                            true
% 2.27/1.00  --prep_sem_filter                       exhaustive
% 2.27/1.00  --prep_sem_filter_out                   false
% 2.27/1.00  --pred_elim                             true
% 2.27/1.00  --res_sim_input                         true
% 2.27/1.00  --eq_ax_congr_red                       true
% 2.27/1.00  --pure_diseq_elim                       true
% 2.27/1.00  --brand_transform                       false
% 2.27/1.00  --non_eq_to_eq                          false
% 2.27/1.00  --prep_def_merge                        true
% 2.27/1.00  --prep_def_merge_prop_impl              false
% 2.27/1.00  --prep_def_merge_mbd                    true
% 2.27/1.00  --prep_def_merge_tr_red                 false
% 2.27/1.00  --prep_def_merge_tr_cl                  false
% 2.27/1.00  --smt_preprocessing                     true
% 2.27/1.00  --smt_ac_axioms                         fast
% 2.27/1.00  --preprocessed_out                      false
% 2.27/1.00  --preprocessed_stats                    false
% 2.27/1.00  
% 2.27/1.00  ------ Abstraction refinement Options
% 2.27/1.00  
% 2.27/1.00  --abstr_ref                             []
% 2.27/1.00  --abstr_ref_prep                        false
% 2.27/1.00  --abstr_ref_until_sat                   false
% 2.27/1.00  --abstr_ref_sig_restrict                funpre
% 2.27/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.27/1.00  --abstr_ref_under                       []
% 2.27/1.00  
% 2.27/1.00  ------ SAT Options
% 2.27/1.00  
% 2.27/1.00  --sat_mode                              false
% 2.27/1.00  --sat_fm_restart_options                ""
% 2.27/1.00  --sat_gr_def                            false
% 2.27/1.00  --sat_epr_types                         true
% 2.27/1.00  --sat_non_cyclic_types                  false
% 2.27/1.00  --sat_finite_models                     false
% 2.27/1.00  --sat_fm_lemmas                         false
% 2.27/1.00  --sat_fm_prep                           false
% 2.27/1.00  --sat_fm_uc_incr                        true
% 2.27/1.00  --sat_out_model                         small
% 2.27/1.00  --sat_out_clauses                       false
% 2.27/1.00  
% 2.27/1.00  ------ QBF Options
% 2.27/1.00  
% 2.27/1.00  --qbf_mode                              false
% 2.27/1.00  --qbf_elim_univ                         false
% 2.27/1.00  --qbf_dom_inst                          none
% 2.27/1.00  --qbf_dom_pre_inst                      false
% 2.27/1.00  --qbf_sk_in                             false
% 2.27/1.00  --qbf_pred_elim                         true
% 2.27/1.00  --qbf_split                             512
% 2.27/1.00  
% 2.27/1.00  ------ BMC1 Options
% 2.27/1.00  
% 2.27/1.00  --bmc1_incremental                      false
% 2.27/1.00  --bmc1_axioms                           reachable_all
% 2.27/1.00  --bmc1_min_bound                        0
% 2.27/1.00  --bmc1_max_bound                        -1
% 2.27/1.00  --bmc1_max_bound_default                -1
% 2.27/1.00  --bmc1_symbol_reachability              true
% 2.27/1.00  --bmc1_property_lemmas                  false
% 2.27/1.00  --bmc1_k_induction                      false
% 2.27/1.00  --bmc1_non_equiv_states                 false
% 2.27/1.00  --bmc1_deadlock                         false
% 2.27/1.00  --bmc1_ucm                              false
% 2.27/1.00  --bmc1_add_unsat_core                   none
% 2.27/1.00  --bmc1_unsat_core_children              false
% 2.27/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.27/1.00  --bmc1_out_stat                         full
% 2.27/1.00  --bmc1_ground_init                      false
% 2.27/1.00  --bmc1_pre_inst_next_state              false
% 2.27/1.00  --bmc1_pre_inst_state                   false
% 2.27/1.00  --bmc1_pre_inst_reach_state             false
% 2.27/1.00  --bmc1_out_unsat_core                   false
% 2.27/1.00  --bmc1_aig_witness_out                  false
% 2.27/1.00  --bmc1_verbose                          false
% 2.27/1.00  --bmc1_dump_clauses_tptp                false
% 2.27/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.27/1.00  --bmc1_dump_file                        -
% 2.27/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.27/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.27/1.00  --bmc1_ucm_extend_mode                  1
% 2.27/1.00  --bmc1_ucm_init_mode                    2
% 2.27/1.00  --bmc1_ucm_cone_mode                    none
% 2.27/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.27/1.00  --bmc1_ucm_relax_model                  4
% 2.27/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.27/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.27/1.00  --bmc1_ucm_layered_model                none
% 2.27/1.00  --bmc1_ucm_max_lemma_size               10
% 2.27/1.00  
% 2.27/1.00  ------ AIG Options
% 2.27/1.00  
% 2.27/1.00  --aig_mode                              false
% 2.27/1.00  
% 2.27/1.00  ------ Instantiation Options
% 2.27/1.00  
% 2.27/1.00  --instantiation_flag                    true
% 2.27/1.00  --inst_sos_flag                         false
% 2.27/1.00  --inst_sos_phase                        true
% 2.27/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.27/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.27/1.00  --inst_lit_sel_side                     none
% 2.27/1.00  --inst_solver_per_active                1400
% 2.27/1.00  --inst_solver_calls_frac                1.
% 2.27/1.00  --inst_passive_queue_type               priority_queues
% 2.27/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.27/1.00  --inst_passive_queues_freq              [25;2]
% 2.27/1.00  --inst_dismatching                      true
% 2.27/1.00  --inst_eager_unprocessed_to_passive     true
% 2.27/1.00  --inst_prop_sim_given                   true
% 2.27/1.00  --inst_prop_sim_new                     false
% 2.27/1.00  --inst_subs_new                         false
% 2.27/1.00  --inst_eq_res_simp                      false
% 2.27/1.00  --inst_subs_given                       false
% 2.27/1.00  --inst_orphan_elimination               true
% 2.27/1.00  --inst_learning_loop_flag               true
% 2.27/1.00  --inst_learning_start                   3000
% 2.27/1.00  --inst_learning_factor                  2
% 2.27/1.00  --inst_start_prop_sim_after_learn       3
% 2.27/1.00  --inst_sel_renew                        solver
% 2.27/1.00  --inst_lit_activity_flag                true
% 2.27/1.00  --inst_restr_to_given                   false
% 2.27/1.00  --inst_activity_threshold               500
% 2.27/1.00  --inst_out_proof                        true
% 2.27/1.00  
% 2.27/1.00  ------ Resolution Options
% 2.27/1.00  
% 2.27/1.00  --resolution_flag                       false
% 2.27/1.00  --res_lit_sel                           adaptive
% 2.27/1.00  --res_lit_sel_side                      none
% 2.27/1.00  --res_ordering                          kbo
% 2.27/1.00  --res_to_prop_solver                    active
% 2.27/1.00  --res_prop_simpl_new                    false
% 2.27/1.00  --res_prop_simpl_given                  true
% 2.27/1.00  --res_passive_queue_type                priority_queues
% 2.27/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.27/1.00  --res_passive_queues_freq               [15;5]
% 2.27/1.00  --res_forward_subs                      full
% 2.27/1.00  --res_backward_subs                     full
% 2.27/1.00  --res_forward_subs_resolution           true
% 2.27/1.00  --res_backward_subs_resolution          true
% 2.27/1.00  --res_orphan_elimination                true
% 2.27/1.00  --res_time_limit                        2.
% 2.27/1.00  --res_out_proof                         true
% 2.27/1.00  
% 2.27/1.00  ------ Superposition Options
% 2.27/1.00  
% 2.27/1.00  --superposition_flag                    true
% 2.27/1.00  --sup_passive_queue_type                priority_queues
% 2.27/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.27/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.27/1.00  --demod_completeness_check              fast
% 2.27/1.00  --demod_use_ground                      true
% 2.27/1.00  --sup_to_prop_solver                    passive
% 2.27/1.00  --sup_prop_simpl_new                    true
% 2.27/1.00  --sup_prop_simpl_given                  true
% 2.27/1.00  --sup_fun_splitting                     false
% 2.27/1.00  --sup_smt_interval                      50000
% 2.27/1.00  
% 2.27/1.00  ------ Superposition Simplification Setup
% 2.27/1.00  
% 2.27/1.00  --sup_indices_passive                   []
% 2.27/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.27/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.27/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.27/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.27/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.27/1.00  --sup_full_bw                           [BwDemod]
% 2.27/1.00  --sup_immed_triv                        [TrivRules]
% 2.27/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.27/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.27/1.00  --sup_immed_bw_main                     []
% 2.27/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.27/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.27/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.27/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.27/1.00  
% 2.27/1.00  ------ Combination Options
% 2.27/1.00  
% 2.27/1.00  --comb_res_mult                         3
% 2.27/1.00  --comb_sup_mult                         2
% 2.27/1.00  --comb_inst_mult                        10
% 2.27/1.00  
% 2.27/1.00  ------ Debug Options
% 2.27/1.00  
% 2.27/1.00  --dbg_backtrace                         false
% 2.27/1.00  --dbg_dump_prop_clauses                 false
% 2.27/1.00  --dbg_dump_prop_clauses_file            -
% 2.27/1.00  --dbg_out_stat                          false
% 2.27/1.00  
% 2.27/1.00  
% 2.27/1.00  
% 2.27/1.00  
% 2.27/1.00  ------ Proving...
% 2.27/1.00  
% 2.27/1.00  
% 2.27/1.00  % SZS status Theorem for theBenchmark.p
% 2.27/1.00  
% 2.27/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 2.27/1.00  
% 2.27/1.00  fof(f11,axiom,(
% 2.27/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) => (m1_pre_topc(X2,X3) => ! [X5] : (m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) => ! [X6] : (m1_subset_1(X6,u1_struct_0(X3)) => ! [X7] : (m1_subset_1(X7,u1_struct_0(X2)) => ((X6 = X7 & m1_connsp_2(X5,X3,X6) & r1_tarski(X5,u1_struct_0(X2))) => (r1_tmap_1(X3,X1,X4,X6) <=> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7))))))))))))),
% 2.27/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.27/1.00  
% 2.27/1.00  fof(f30,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : ((! [X5] : (! [X6] : (! [X7] : (((r1_tmap_1(X3,X1,X4,X6) <=> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)) | (X6 != X7 | ~m1_connsp_2(X5,X3,X6) | ~r1_tarski(X5,u1_struct_0(X2)))) | ~m1_subset_1(X7,u1_struct_0(X2))) | ~m1_subset_1(X6,u1_struct_0(X3))) | ~m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))) | ~m1_pre_topc(X2,X3)) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) | ~v1_funct_1(X4))) | (~m1_pre_topc(X3,X0) | v2_struct_0(X3))) | (~m1_pre_topc(X2,X0) | v2_struct_0(X2))) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.27/1.00    inference(ennf_transformation,[],[f11])).
% 2.27/1.00  
% 2.27/1.00  fof(f31,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : (! [X6] : (! [X7] : ((r1_tmap_1(X3,X1,X4,X6) <=> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)) | X6 != X7 | ~m1_connsp_2(X5,X3,X6) | ~r1_tarski(X5,u1_struct_0(X2)) | ~m1_subset_1(X7,u1_struct_0(X2))) | ~m1_subset_1(X6,u1_struct_0(X3))) | ~m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))) | ~m1_pre_topc(X2,X3) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) | ~v1_funct_1(X4)) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3)) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.27/1.00    inference(flattening,[],[f30])).
% 2.27/1.00  
% 2.27/1.00  fof(f42,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : (! [X6] : (! [X7] : (((r1_tmap_1(X3,X1,X4,X6) | ~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | ~r1_tmap_1(X3,X1,X4,X6))) | X6 != X7 | ~m1_connsp_2(X5,X3,X6) | ~r1_tarski(X5,u1_struct_0(X2)) | ~m1_subset_1(X7,u1_struct_0(X2))) | ~m1_subset_1(X6,u1_struct_0(X3))) | ~m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))) | ~m1_pre_topc(X2,X3) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) | ~v1_funct_1(X4)) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3)) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.27/1.00    inference(nnf_transformation,[],[f31])).
% 2.27/1.00  
% 2.27/1.00  fof(f73,plain,(
% 2.27/1.00    ( ! [X6,X4,X2,X0,X7,X5,X3,X1] : (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | ~r1_tmap_1(X3,X1,X4,X6) | X6 != X7 | ~m1_connsp_2(X5,X3,X6) | ~r1_tarski(X5,u1_struct_0(X2)) | ~m1_subset_1(X7,u1_struct_0(X2)) | ~m1_subset_1(X6,u1_struct_0(X3)) | ~m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) | ~m1_pre_topc(X2,X3) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.27/1.00    inference(cnf_transformation,[],[f42])).
% 2.27/1.00  
% 2.27/1.00  fof(f100,plain,(
% 2.27/1.00    ( ! [X4,X2,X0,X7,X5,X3,X1] : (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | ~r1_tmap_1(X3,X1,X4,X7) | ~m1_connsp_2(X5,X3,X7) | ~r1_tarski(X5,u1_struct_0(X2)) | ~m1_subset_1(X7,u1_struct_0(X2)) | ~m1_subset_1(X7,u1_struct_0(X3)) | ~m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) | ~m1_pre_topc(X2,X3) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.27/1.00    inference(equality_resolution,[],[f73])).
% 2.27/1.00  
% 2.27/1.00  fof(f10,axiom,(
% 2.27/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X4)) => ! [X5] : (m1_subset_1(X5,u1_struct_0(X2)) => ! [X6] : (m1_subset_1(X6,u1_struct_0(X3)) => ((r1_tmap_1(X2,X1,X4,X5) & m1_pre_topc(X3,X2) & X5 = X6) => r1_tmap_1(X3,X1,k3_tmap_1(X0,X1,X2,X3,X4),X6)))))))))),
% 2.27/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.27/1.00  
% 2.27/1.00  fof(f28,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : (! [X6] : ((r1_tmap_1(X3,X1,k3_tmap_1(X0,X1,X2,X3,X4),X6) | (~r1_tmap_1(X2,X1,X4,X5) | ~m1_pre_topc(X3,X2) | X5 != X6)) | ~m1_subset_1(X6,u1_struct_0(X3))) | ~m1_subset_1(X5,u1_struct_0(X2))) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4))) | (~m1_pre_topc(X3,X0) | v2_struct_0(X3))) | (~m1_pre_topc(X2,X0) | v2_struct_0(X2))) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.27/1.00    inference(ennf_transformation,[],[f10])).
% 2.27/1.00  
% 2.27/1.00  fof(f29,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (! [X5] : (! [X6] : (r1_tmap_1(X3,X1,k3_tmap_1(X0,X1,X2,X3,X4),X6) | ~r1_tmap_1(X2,X1,X4,X5) | ~m1_pre_topc(X3,X2) | X5 != X6 | ~m1_subset_1(X6,u1_struct_0(X3))) | ~m1_subset_1(X5,u1_struct_0(X2))) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4)) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3)) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.27/1.00    inference(flattening,[],[f28])).
% 2.27/1.00  
% 2.27/1.00  fof(f72,plain,(
% 2.27/1.00    ( ! [X6,X4,X2,X0,X5,X3,X1] : (r1_tmap_1(X3,X1,k3_tmap_1(X0,X1,X2,X3,X4),X6) | ~r1_tmap_1(X2,X1,X4,X5) | ~m1_pre_topc(X3,X2) | X5 != X6 | ~m1_subset_1(X6,u1_struct_0(X3)) | ~m1_subset_1(X5,u1_struct_0(X2)) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.27/1.00    inference(cnf_transformation,[],[f29])).
% 2.27/1.00  
% 2.27/1.00  fof(f98,plain,(
% 2.27/1.00    ( ! [X6,X4,X2,X0,X3,X1] : (r1_tmap_1(X3,X1,k3_tmap_1(X0,X1,X2,X3,X4),X6) | ~r1_tmap_1(X2,X1,X4,X6) | ~m1_pre_topc(X3,X2) | ~m1_subset_1(X6,u1_struct_0(X3)) | ~m1_subset_1(X6,u1_struct_0(X2)) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.27/1.00    inference(equality_resolution,[],[f72])).
% 2.27/1.00  
% 2.27/1.00  fof(f12,conjecture,(
% 2.27/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) => ((m1_pre_topc(X2,X3) & v1_tsep_1(X2,X3)) => ! [X5] : (m1_subset_1(X5,u1_struct_0(X3)) => ! [X6] : (m1_subset_1(X6,u1_struct_0(X2)) => (X5 = X6 => (r1_tmap_1(X3,X1,X4,X5) <=> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)))))))))))),
% 2.27/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.27/1.00  
% 2.27/1.00  fof(f13,negated_conjecture,(
% 2.27/1.00    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) => ((m1_pre_topc(X2,X3) & v1_tsep_1(X2,X3)) => ! [X5] : (m1_subset_1(X5,u1_struct_0(X3)) => ! [X6] : (m1_subset_1(X6,u1_struct_0(X2)) => (X5 = X6 => (r1_tmap_1(X3,X1,X4,X5) <=> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)))))))))))),
% 2.27/1.00    inference(negated_conjecture,[],[f12])).
% 2.27/1.00  
% 2.27/1.00  fof(f32,plain,(
% 2.27/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : ((? [X5] : (? [X6] : (((r1_tmap_1(X3,X1,X4,X5) <~> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)) & X5 = X6) & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & (m1_pre_topc(X2,X3) & v1_tsep_1(X2,X3))) & (m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4))) & (m1_pre_topc(X3,X0) & ~v2_struct_0(X3))) & (m1_pre_topc(X2,X0) & ~v2_struct_0(X2))) & (l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 2.27/1.00    inference(ennf_transformation,[],[f13])).
% 2.27/1.00  
% 2.27/1.00  fof(f33,plain,(
% 2.27/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((r1_tmap_1(X3,X1,X4,X5) <~> r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & v1_tsep_1(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.27/1.00    inference(flattening,[],[f32])).
% 2.27/1.00  
% 2.27/1.00  fof(f43,plain,(
% 2.27/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : (((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | ~r1_tmap_1(X3,X1,X4,X5)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | r1_tmap_1(X3,X1,X4,X5))) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & v1_tsep_1(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.27/1.00    inference(nnf_transformation,[],[f33])).
% 2.27/1.00  
% 2.27/1.00  fof(f44,plain,(
% 2.27/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | ~r1_tmap_1(X3,X1,X4,X5)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | r1_tmap_1(X3,X1,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & v1_tsep_1(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 2.27/1.00    inference(flattening,[],[f43])).
% 2.27/1.00  
% 2.27/1.00  fof(f51,plain,(
% 2.27/1.00    ( ! [X4,X2,X0,X5,X3,X1] : (? [X6] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | ~r1_tmap_1(X3,X1,X4,X5)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | r1_tmap_1(X3,X1,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) => ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),sK8) | ~r1_tmap_1(X3,X1,X4,X5)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),sK8) | r1_tmap_1(X3,X1,X4,X5)) & sK8 = X5 & m1_subset_1(sK8,u1_struct_0(X2)))) )),
% 2.27/1.00    introduced(choice_axiom,[])).
% 2.27/1.00  
% 2.27/1.00  fof(f50,plain,(
% 2.27/1.00    ( ! [X4,X2,X0,X3,X1] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | ~r1_tmap_1(X3,X1,X4,X5)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | r1_tmap_1(X3,X1,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) => (? [X6] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | ~r1_tmap_1(X3,X1,X4,sK7)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | r1_tmap_1(X3,X1,X4,sK7)) & sK7 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(sK7,u1_struct_0(X3)))) )),
% 2.27/1.00    introduced(choice_axiom,[])).
% 2.27/1.00  
% 2.27/1.00  fof(f49,plain,(
% 2.27/1.00    ( ! [X2,X0,X3,X1] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | ~r1_tmap_1(X3,X1,X4,X5)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | r1_tmap_1(X3,X1,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & v1_tsep_1(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) => (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,sK6),X6) | ~r1_tmap_1(X3,X1,sK6,X5)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,sK6),X6) | r1_tmap_1(X3,X1,sK6,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & v1_tsep_1(X2,X3) & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(sK6,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(sK6))) )),
% 2.27/1.00    introduced(choice_axiom,[])).
% 2.27/1.00  
% 2.27/1.00  fof(f48,plain,(
% 2.27/1.00    ( ! [X2,X0,X1] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | ~r1_tmap_1(X3,X1,X4,X5)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | r1_tmap_1(X3,X1,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & v1_tsep_1(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) => (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,sK5,X2,X4),X6) | ~r1_tmap_1(sK5,X1,X4,X5)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,sK5,X2,X4),X6) | r1_tmap_1(sK5,X1,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(sK5))) & m1_pre_topc(X2,sK5) & v1_tsep_1(X2,sK5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK5),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(sK5),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(sK5,X0) & ~v2_struct_0(sK5))) )),
% 2.27/1.00    introduced(choice_axiom,[])).
% 2.27/1.00  
% 2.27/1.00  fof(f47,plain,(
% 2.27/1.00    ( ! [X0,X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | ~r1_tmap_1(X3,X1,X4,X5)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | r1_tmap_1(X3,X1,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & v1_tsep_1(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(sK4,X1,k3_tmap_1(X0,X1,X3,sK4,X4),X6) | ~r1_tmap_1(X3,X1,X4,X5)) & (r1_tmap_1(sK4,X1,k3_tmap_1(X0,X1,X3,sK4,X4),X6) | r1_tmap_1(X3,X1,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(sK4))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(sK4,X3) & v1_tsep_1(sK4,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(sK4,X0) & ~v2_struct_0(sK4))) )),
% 2.27/1.00    introduced(choice_axiom,[])).
% 2.27/1.00  
% 2.27/1.00  fof(f46,plain,(
% 2.27/1.00    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | ~r1_tmap_1(X3,X1,X4,X5)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | r1_tmap_1(X3,X1,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & v1_tsep_1(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,sK3,k3_tmap_1(X0,sK3,X3,X2,X4),X6) | ~r1_tmap_1(X3,sK3,X4,X5)) & (r1_tmap_1(X2,sK3,k3_tmap_1(X0,sK3,X3,X2,X4),X6) | r1_tmap_1(X3,sK3,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & v1_tsep_1(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(sK3)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(sK3)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(sK3) & v2_pre_topc(sK3) & ~v2_struct_0(sK3))) )),
% 2.27/1.00    introduced(choice_axiom,[])).
% 2.27/1.00  
% 2.27/1.00  fof(f45,plain,(
% 2.27/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | ~r1_tmap_1(X3,X1,X4,X5)) & (r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X6) | r1_tmap_1(X3,X1,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & v1_tsep_1(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,X0) & ~v2_struct_0(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (? [X4] : (? [X5] : (? [X6] : ((~r1_tmap_1(X2,X1,k3_tmap_1(sK2,X1,X3,X2,X4),X6) | ~r1_tmap_1(X3,X1,X4,X5)) & (r1_tmap_1(X2,X1,k3_tmap_1(sK2,X1,X3,X2,X4),X6) | r1_tmap_1(X3,X1,X4,X5)) & X5 = X6 & m1_subset_1(X6,u1_struct_0(X2))) & m1_subset_1(X5,u1_struct_0(X3))) & m1_pre_topc(X2,X3) & v1_tsep_1(X2,X3) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) & v1_funct_1(X4)) & m1_pre_topc(X3,sK2) & ~v2_struct_0(X3)) & m1_pre_topc(X2,sK2) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(sK2) & v2_pre_topc(sK2) & ~v2_struct_0(sK2))),
% 2.27/1.00    introduced(choice_axiom,[])).
% 2.27/1.00  
% 2.27/1.00  fof(f52,plain,(
% 2.27/1.00    (((((((~r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) | ~r1_tmap_1(sK5,sK3,sK6,sK7)) & (r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) | r1_tmap_1(sK5,sK3,sK6,sK7)) & sK7 = sK8 & m1_subset_1(sK8,u1_struct_0(sK4))) & m1_subset_1(sK7,u1_struct_0(sK5))) & m1_pre_topc(sK4,sK5) & v1_tsep_1(sK4,sK5) & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK5),u1_struct_0(sK3)))) & v1_funct_2(sK6,u1_struct_0(sK5),u1_struct_0(sK3)) & v1_funct_1(sK6)) & m1_pre_topc(sK5,sK2) & ~v2_struct_0(sK5)) & m1_pre_topc(sK4,sK2) & ~v2_struct_0(sK4)) & l1_pre_topc(sK3) & v2_pre_topc(sK3) & ~v2_struct_0(sK3)) & l1_pre_topc(sK2) & v2_pre_topc(sK2) & ~v2_struct_0(sK2)),
% 2.27/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5,sK6,sK7,sK8])],[f44,f51,f50,f49,f48,f47,f46,f45])).
% 2.27/1.00  
% 2.27/1.00  fof(f86,plain,(
% 2.27/1.00    v1_funct_2(sK6,u1_struct_0(sK5),u1_struct_0(sK3))),
% 2.27/1.00    inference(cnf_transformation,[],[f52])).
% 2.27/1.00  
% 2.27/1.00  fof(f85,plain,(
% 2.27/1.00    v1_funct_1(sK6)),
% 2.27/1.00    inference(cnf_transformation,[],[f52])).
% 2.27/1.00  
% 2.27/1.00  fof(f9,axiom,(
% 2.27/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => ! [X2] : (m1_pre_topc(X2,X1) => m1_pre_topc(X2,X0))))),
% 2.27/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.27/1.00  
% 2.27/1.00  fof(f26,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : (! [X2] : (m1_pre_topc(X2,X0) | ~m1_pre_topc(X2,X1)) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 2.27/1.00    inference(ennf_transformation,[],[f9])).
% 2.27/1.00  
% 2.27/1.00  fof(f27,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : (! [X2] : (m1_pre_topc(X2,X0) | ~m1_pre_topc(X2,X1)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.27/1.00    inference(flattening,[],[f26])).
% 2.27/1.00  
% 2.27/1.00  fof(f71,plain,(
% 2.27/1.00    ( ! [X2,X0,X1] : (m1_pre_topc(X2,X0) | ~m1_pre_topc(X2,X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 2.27/1.00    inference(cnf_transformation,[],[f27])).
% 2.27/1.00  
% 2.27/1.00  fof(f78,plain,(
% 2.27/1.00    ~v2_struct_0(sK3)),
% 2.27/1.00    inference(cnf_transformation,[],[f52])).
% 2.27/1.00  
% 2.27/1.00  fof(f79,plain,(
% 2.27/1.00    v2_pre_topc(sK3)),
% 2.27/1.00    inference(cnf_transformation,[],[f52])).
% 2.27/1.00  
% 2.27/1.00  fof(f80,plain,(
% 2.27/1.00    l1_pre_topc(sK3)),
% 2.27/1.00    inference(cnf_transformation,[],[f52])).
% 2.27/1.00  
% 2.27/1.00  fof(f83,plain,(
% 2.27/1.00    ~v2_struct_0(sK5)),
% 2.27/1.00    inference(cnf_transformation,[],[f52])).
% 2.27/1.00  
% 2.27/1.00  fof(f87,plain,(
% 2.27/1.00    m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK5),u1_struct_0(sK3))))),
% 2.27/1.00    inference(cnf_transformation,[],[f52])).
% 2.27/1.00  
% 2.27/1.00  fof(f94,plain,(
% 2.27/1.00    ~r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) | ~r1_tmap_1(sK5,sK3,sK6,sK7)),
% 2.27/1.00    inference(cnf_transformation,[],[f52])).
% 2.27/1.00  
% 2.27/1.00  fof(f92,plain,(
% 2.27/1.00    sK7 = sK8),
% 2.27/1.00    inference(cnf_transformation,[],[f52])).
% 2.27/1.00  
% 2.27/1.00  fof(f6,axiom,(
% 2.27/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v3_pre_topc(X1,X0) <=> ! [X2] : (m1_subset_1(X2,u1_struct_0(X0)) => ~(! [X3] : (m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0))) => ~(r1_tarski(X3,X1) & m1_connsp_2(X3,X0,X2))) & r2_hidden(X2,X1))))))),
% 2.27/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.27/1.00  
% 2.27/1.00  fof(f21,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : ((v3_pre_topc(X1,X0) <=> ! [X2] : ((? [X3] : ((r1_tarski(X3,X1) & m1_connsp_2(X3,X0,X2)) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X2,u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 2.27/1.00    inference(ennf_transformation,[],[f6])).
% 2.27/1.00  
% 2.27/1.00  fof(f22,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : ((v3_pre_topc(X1,X0) <=> ! [X2] : (? [X3] : (r1_tarski(X3,X1) & m1_connsp_2(X3,X0,X2) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~r2_hidden(X2,X1) | ~m1_subset_1(X2,u1_struct_0(X0)))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.27/1.00    inference(flattening,[],[f21])).
% 2.27/1.00  
% 2.27/1.00  fof(f35,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : (((v3_pre_topc(X1,X0) | ? [X2] : (! [X3] : (~r1_tarski(X3,X1) | ~m1_connsp_2(X3,X0,X2) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & r2_hidden(X2,X1) & m1_subset_1(X2,u1_struct_0(X0)))) & (! [X2] : (? [X3] : (r1_tarski(X3,X1) & m1_connsp_2(X3,X0,X2) & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) | ~r2_hidden(X2,X1) | ~m1_subset_1(X2,u1_struct_0(X0))) | ~v3_pre_topc(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.27/1.00    inference(nnf_transformation,[],[f22])).
% 2.27/1.00  
% 2.27/1.00  fof(f36,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : (((v3_pre_topc(X1,X0) | ? [X2] : (! [X3] : (~r1_tarski(X3,X1) | ~m1_connsp_2(X3,X0,X2) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & r2_hidden(X2,X1) & m1_subset_1(X2,u1_struct_0(X0)))) & (! [X4] : (? [X5] : (r1_tarski(X5,X1) & m1_connsp_2(X5,X0,X4) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0)))) | ~r2_hidden(X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0))) | ~v3_pre_topc(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.27/1.00    inference(rectify,[],[f35])).
% 2.27/1.00  
% 2.27/1.00  fof(f38,plain,(
% 2.27/1.00    ! [X4,X1,X0] : (? [X5] : (r1_tarski(X5,X1) & m1_connsp_2(X5,X0,X4) & m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X0)))) => (r1_tarski(sK1(X0,X1,X4),X1) & m1_connsp_2(sK1(X0,X1,X4),X0,X4) & m1_subset_1(sK1(X0,X1,X4),k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.27/1.00    introduced(choice_axiom,[])).
% 2.27/1.00  
% 2.27/1.00  fof(f37,plain,(
% 2.27/1.00    ! [X1,X0] : (? [X2] : (! [X3] : (~r1_tarski(X3,X1) | ~m1_connsp_2(X3,X0,X2) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & r2_hidden(X2,X1) & m1_subset_1(X2,u1_struct_0(X0))) => (! [X3] : (~r1_tarski(X3,X1) | ~m1_connsp_2(X3,X0,sK0(X0,X1)) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & r2_hidden(sK0(X0,X1),X1) & m1_subset_1(sK0(X0,X1),u1_struct_0(X0))))),
% 2.27/1.00    introduced(choice_axiom,[])).
% 2.27/1.00  
% 2.27/1.00  fof(f39,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : (((v3_pre_topc(X1,X0) | (! [X3] : (~r1_tarski(X3,X1) | ~m1_connsp_2(X3,X0,sK0(X0,X1)) | ~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X0)))) & r2_hidden(sK0(X0,X1),X1) & m1_subset_1(sK0(X0,X1),u1_struct_0(X0)))) & (! [X4] : ((r1_tarski(sK1(X0,X1,X4),X1) & m1_connsp_2(sK1(X0,X1,X4),X0,X4) & m1_subset_1(sK1(X0,X1,X4),k1_zfmisc_1(u1_struct_0(X0)))) | ~r2_hidden(X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0))) | ~v3_pre_topc(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 2.27/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f36,f38,f37])).
% 2.27/1.00  
% 2.27/1.00  fof(f63,plain,(
% 2.27/1.00    ( ! [X4,X0,X1] : (r1_tarski(sK1(X0,X1,X4),X1) | ~r2_hidden(X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0)) | ~v3_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.27/1.00    inference(cnf_transformation,[],[f39])).
% 2.27/1.00  
% 2.27/1.00  fof(f93,plain,(
% 2.27/1.00    r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) | r1_tmap_1(sK5,sK3,sK6,sK7)),
% 2.27/1.00    inference(cnf_transformation,[],[f52])).
% 2.27/1.00  
% 2.27/1.00  fof(f62,plain,(
% 2.27/1.00    ( ! [X4,X0,X1] : (m1_connsp_2(sK1(X0,X1,X4),X0,X4) | ~r2_hidden(X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0)) | ~v3_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.27/1.00    inference(cnf_transformation,[],[f39])).
% 2.27/1.00  
% 2.27/1.00  fof(f74,plain,(
% 2.27/1.00    ( ! [X6,X4,X2,X0,X7,X5,X3,X1] : (r1_tmap_1(X3,X1,X4,X6) | ~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | X6 != X7 | ~m1_connsp_2(X5,X3,X6) | ~r1_tarski(X5,u1_struct_0(X2)) | ~m1_subset_1(X7,u1_struct_0(X2)) | ~m1_subset_1(X6,u1_struct_0(X3)) | ~m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) | ~m1_pre_topc(X2,X3) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.27/1.00    inference(cnf_transformation,[],[f42])).
% 2.27/1.00  
% 2.27/1.00  fof(f99,plain,(
% 2.27/1.00    ( ! [X4,X2,X0,X7,X5,X3,X1] : (r1_tmap_1(X3,X1,X4,X7) | ~r1_tmap_1(X2,X1,k3_tmap_1(X0,X1,X3,X2,X4),X7) | ~m1_connsp_2(X5,X3,X7) | ~r1_tarski(X5,u1_struct_0(X2)) | ~m1_subset_1(X7,u1_struct_0(X2)) | ~m1_subset_1(X7,u1_struct_0(X3)) | ~m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3))) | ~m1_pre_topc(X2,X3) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | v2_struct_0(X3) | ~m1_pre_topc(X2,X0) | v2_struct_0(X2) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.27/1.00    inference(equality_resolution,[],[f74])).
% 2.27/1.00  
% 2.27/1.00  fof(f2,axiom,(
% 2.27/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => v2_pre_topc(X1)))),
% 2.27/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.27/1.00  
% 2.27/1.00  fof(f15,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : (v2_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 2.27/1.00    inference(ennf_transformation,[],[f2])).
% 2.27/1.00  
% 2.27/1.00  fof(f16,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : (v2_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.27/1.00    inference(flattening,[],[f15])).
% 2.27/1.00  
% 2.27/1.00  fof(f57,plain,(
% 2.27/1.00    ( ! [X0,X1] : (v2_pre_topc(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 2.27/1.00    inference(cnf_transformation,[],[f16])).
% 2.27/1.00  
% 2.27/1.00  fof(f4,axiom,(
% 2.27/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => l1_pre_topc(X1)))),
% 2.27/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.27/1.00  
% 2.27/1.00  fof(f18,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 2.27/1.00    inference(ennf_transformation,[],[f4])).
% 2.27/1.00  
% 2.27/1.00  fof(f59,plain,(
% 2.27/1.00    ( ! [X0,X1] : (l1_pre_topc(X1) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 2.27/1.00    inference(cnf_transformation,[],[f18])).
% 2.27/1.00  
% 2.27/1.00  fof(f61,plain,(
% 2.27/1.00    ( ! [X4,X0,X1] : (m1_subset_1(sK1(X0,X1,X4),k1_zfmisc_1(u1_struct_0(X0))) | ~r2_hidden(X4,X1) | ~m1_subset_1(X4,u1_struct_0(X0)) | ~v3_pre_topc(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 2.27/1.00    inference(cnf_transformation,[],[f39])).
% 2.27/1.00  
% 2.27/1.00  fof(f75,plain,(
% 2.27/1.00    ~v2_struct_0(sK2)),
% 2.27/1.00    inference(cnf_transformation,[],[f52])).
% 2.27/1.00  
% 2.27/1.00  fof(f76,plain,(
% 2.27/1.00    v2_pre_topc(sK2)),
% 2.27/1.00    inference(cnf_transformation,[],[f52])).
% 2.27/1.00  
% 2.27/1.00  fof(f77,plain,(
% 2.27/1.00    l1_pre_topc(sK2)),
% 2.27/1.00    inference(cnf_transformation,[],[f52])).
% 2.27/1.00  
% 2.27/1.00  fof(f81,plain,(
% 2.27/1.00    ~v2_struct_0(sK4)),
% 2.27/1.00    inference(cnf_transformation,[],[f52])).
% 2.27/1.00  
% 2.27/1.00  fof(f84,plain,(
% 2.27/1.00    m1_pre_topc(sK5,sK2)),
% 2.27/1.00    inference(cnf_transformation,[],[f52])).
% 2.27/1.00  
% 2.27/1.00  fof(f89,plain,(
% 2.27/1.00    m1_pre_topc(sK4,sK5)),
% 2.27/1.00    inference(cnf_transformation,[],[f52])).
% 2.27/1.00  
% 2.27/1.00  fof(f91,plain,(
% 2.27/1.00    m1_subset_1(sK8,u1_struct_0(sK4))),
% 2.27/1.00    inference(cnf_transformation,[],[f52])).
% 2.27/1.00  
% 2.27/1.00  fof(f90,plain,(
% 2.27/1.00    m1_subset_1(sK7,u1_struct_0(sK5))),
% 2.27/1.00    inference(cnf_transformation,[],[f52])).
% 2.27/1.00  
% 2.27/1.00  fof(f1,axiom,(
% 2.27/1.00    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 2.27/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.27/1.00  
% 2.27/1.00  fof(f14,plain,(
% 2.27/1.00    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 2.27/1.00    inference(ennf_transformation,[],[f1])).
% 2.27/1.00  
% 2.27/1.00  fof(f34,plain,(
% 2.27/1.00    ! [X0,X1] : ((((m1_subset_1(X1,X0) | ~v1_xboole_0(X1)) & (v1_xboole_0(X1) | ~m1_subset_1(X1,X0))) | ~v1_xboole_0(X0)) & (((m1_subset_1(X1,X0) | ~r2_hidden(X1,X0)) & (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0))) | v1_xboole_0(X0)))),
% 2.27/1.00    inference(nnf_transformation,[],[f14])).
% 2.27/1.00  
% 2.27/1.00  fof(f53,plain,(
% 2.27/1.00    ( ! [X0,X1] : (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 2.27/1.00    inference(cnf_transformation,[],[f34])).
% 2.27/1.00  
% 2.27/1.00  fof(f7,axiom,(
% 2.27/1.00    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) => (u1_struct_0(X1) = X2 => ((m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0)) <=> v3_pre_topc(X2,X0))))))),
% 2.27/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.27/1.00  
% 2.27/1.00  fof(f23,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : (! [X2] : ((((m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0)) <=> v3_pre_topc(X2,X0)) | u1_struct_0(X1) != X2) | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 2.27/1.00    inference(ennf_transformation,[],[f7])).
% 2.27/1.00  
% 2.27/1.00  fof(f24,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : (! [X2] : (((m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0)) <=> v3_pre_topc(X2,X0)) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.27/1.00    inference(flattening,[],[f23])).
% 2.27/1.00  
% 2.27/1.00  fof(f40,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : (! [X2] : ((((m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0)) | ~v3_pre_topc(X2,X0)) & (v3_pre_topc(X2,X0) | (~m1_pre_topc(X1,X0) | ~v1_tsep_1(X1,X0)))) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.27/1.00    inference(nnf_transformation,[],[f24])).
% 2.27/1.00  
% 2.27/1.00  fof(f41,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : (! [X2] : ((((m1_pre_topc(X1,X0) & v1_tsep_1(X1,X0)) | ~v3_pre_topc(X2,X0)) & (v3_pre_topc(X2,X0) | ~m1_pre_topc(X1,X0) | ~v1_tsep_1(X1,X0))) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0)))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 2.27/1.00    inference(flattening,[],[f40])).
% 2.27/1.00  
% 2.27/1.00  fof(f67,plain,(
% 2.27/1.00    ( ! [X2,X0,X1] : (v3_pre_topc(X2,X0) | ~m1_pre_topc(X1,X0) | ~v1_tsep_1(X1,X0) | u1_struct_0(X1) != X2 | ~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 2.27/1.00    inference(cnf_transformation,[],[f41])).
% 2.27/1.00  
% 2.27/1.00  fof(f97,plain,(
% 2.27/1.00    ( ! [X0,X1] : (v3_pre_topc(u1_struct_0(X1),X0) | ~m1_pre_topc(X1,X0) | ~v1_tsep_1(X1,X0) | ~m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 2.27/1.00    inference(equality_resolution,[],[f67])).
% 2.27/1.00  
% 2.27/1.00  fof(f8,axiom,(
% 2.27/1.00    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_pre_topc(X1,X0) => m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0)))))),
% 2.27/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.27/1.00  
% 2.27/1.00  fof(f25,plain,(
% 2.27/1.00    ! [X0] : (! [X1] : (m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0))),
% 2.27/1.00    inference(ennf_transformation,[],[f8])).
% 2.27/1.00  
% 2.27/1.00  fof(f70,plain,(
% 2.27/1.00    ( ! [X0,X1] : (m1_subset_1(u1_struct_0(X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0)) )),
% 2.27/1.00    inference(cnf_transformation,[],[f25])).
% 2.27/1.00  
% 2.27/1.00  fof(f88,plain,(
% 2.27/1.00    v1_tsep_1(sK4,sK5)),
% 2.27/1.00    inference(cnf_transformation,[],[f52])).
% 2.27/1.00  
% 2.27/1.00  fof(f3,axiom,(
% 2.27/1.00    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 2.27/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.27/1.00  
% 2.27/1.00  fof(f17,plain,(
% 2.27/1.00    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 2.27/1.00    inference(ennf_transformation,[],[f3])).
% 2.27/1.00  
% 2.27/1.00  fof(f58,plain,(
% 2.27/1.00    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 2.27/1.00    inference(cnf_transformation,[],[f17])).
% 2.27/1.00  
% 2.27/1.00  fof(f5,axiom,(
% 2.27/1.00    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 2.27/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.27/1.00  
% 2.27/1.00  fof(f19,plain,(
% 2.27/1.00    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 2.27/1.00    inference(ennf_transformation,[],[f5])).
% 2.27/1.00  
% 2.27/1.00  fof(f20,plain,(
% 2.27/1.00    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 2.27/1.00    inference(flattening,[],[f19])).
% 2.27/1.00  
% 2.27/1.00  fof(f60,plain,(
% 2.27/1.00    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 2.27/1.00    inference(cnf_transformation,[],[f20])).
% 2.27/1.00  
% 2.27/1.00  cnf(c_21,plain,
% 2.27/1.00      ( ~ r1_tmap_1(X0,X1,X2,X3)
% 2.27/1.00      | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
% 2.27/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 2.27/1.00      | ~ m1_connsp_2(X6,X0,X3)
% 2.27/1.00      | ~ r1_tarski(X6,u1_struct_0(X4))
% 2.27/1.00      | ~ m1_pre_topc(X0,X5)
% 2.27/1.00      | ~ m1_pre_topc(X4,X5)
% 2.27/1.00      | ~ m1_pre_topc(X4,X0)
% 2.27/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 2.27/1.00      | ~ m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X0)))
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 2.27/1.00      | ~ v1_funct_1(X2)
% 2.27/1.00      | v2_struct_0(X5)
% 2.27/1.00      | v2_struct_0(X1)
% 2.27/1.00      | v2_struct_0(X4)
% 2.27/1.00      | v2_struct_0(X0)
% 2.27/1.00      | ~ l1_pre_topc(X5)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X5)
% 2.27/1.00      | ~ v2_pre_topc(X1) ),
% 2.27/1.00      inference(cnf_transformation,[],[f100]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_19,plain,
% 2.27/1.00      ( ~ r1_tmap_1(X0,X1,X2,X3)
% 2.27/1.00      | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
% 2.27/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 2.27/1.00      | ~ m1_pre_topc(X4,X0)
% 2.27/1.00      | ~ m1_pre_topc(X4,X5)
% 2.27/1.00      | ~ m1_pre_topc(X0,X5)
% 2.27/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 2.27/1.00      | ~ v1_funct_1(X2)
% 2.27/1.00      | v2_struct_0(X5)
% 2.27/1.00      | v2_struct_0(X1)
% 2.27/1.00      | v2_struct_0(X0)
% 2.27/1.00      | v2_struct_0(X4)
% 2.27/1.00      | ~ l1_pre_topc(X5)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X5)
% 2.27/1.00      | ~ v2_pre_topc(X1) ),
% 2.27/1.00      inference(cnf_transformation,[],[f98]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_219,plain,
% 2.27/1.00      ( ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 2.27/1.00      | ~ m1_pre_topc(X4,X0)
% 2.27/1.00      | ~ m1_pre_topc(X4,X5)
% 2.27/1.00      | ~ m1_pre_topc(X0,X5)
% 2.27/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 2.27/1.00      | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
% 2.27/1.00      | ~ r1_tmap_1(X0,X1,X2,X3)
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 2.27/1.00      | ~ v1_funct_1(X2)
% 2.27/1.00      | v2_struct_0(X5)
% 2.27/1.00      | v2_struct_0(X1)
% 2.27/1.00      | v2_struct_0(X4)
% 2.27/1.00      | v2_struct_0(X0)
% 2.27/1.00      | ~ l1_pre_topc(X5)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X5)
% 2.27/1.00      | ~ v2_pre_topc(X1) ),
% 2.27/1.00      inference(global_propositional_subsumption,
% 2.27/1.00                [status(thm)],
% 2.27/1.00                [c_21,c_19]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_220,plain,
% 2.27/1.00      ( ~ r1_tmap_1(X0,X1,X2,X3)
% 2.27/1.00      | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
% 2.27/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 2.27/1.00      | ~ m1_pre_topc(X4,X0)
% 2.27/1.00      | ~ m1_pre_topc(X4,X5)
% 2.27/1.00      | ~ m1_pre_topc(X0,X5)
% 2.27/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 2.27/1.00      | ~ v1_funct_1(X2)
% 2.27/1.00      | v2_struct_0(X1)
% 2.27/1.00      | v2_struct_0(X0)
% 2.27/1.00      | v2_struct_0(X4)
% 2.27/1.00      | v2_struct_0(X5)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ l1_pre_topc(X5)
% 2.27/1.00      | ~ v2_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X5) ),
% 2.27/1.00      inference(renaming,[status(thm)],[c_219]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_30,negated_conjecture,
% 2.27/1.00      ( v1_funct_2(sK6,u1_struct_0(sK5),u1_struct_0(sK3)) ),
% 2.27/1.00      inference(cnf_transformation,[],[f86]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_952,plain,
% 2.27/1.00      ( ~ r1_tmap_1(X0,X1,X2,X3)
% 2.27/1.00      | r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
% 2.27/1.00      | ~ m1_pre_topc(X4,X0)
% 2.27/1.00      | ~ m1_pre_topc(X4,X5)
% 2.27/1.00      | ~ m1_pre_topc(X0,X5)
% 2.27/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 2.27/1.00      | ~ v1_funct_1(X2)
% 2.27/1.00      | v2_struct_0(X1)
% 2.27/1.00      | v2_struct_0(X0)
% 2.27/1.00      | v2_struct_0(X4)
% 2.27/1.00      | v2_struct_0(X5)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ l1_pre_topc(X5)
% 2.27/1.00      | ~ v2_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X5)
% 2.27/1.00      | u1_struct_0(X0) != u1_struct_0(sK5)
% 2.27/1.00      | u1_struct_0(X1) != u1_struct_0(sK3)
% 2.27/1.00      | sK6 != X2 ),
% 2.27/1.00      inference(resolution_lifted,[status(thm)],[c_220,c_30]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_953,plain,
% 2.27/1.00      ( r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK6),X4)
% 2.27/1.00      | ~ r1_tmap_1(X3,X1,sK6,X4)
% 2.27/1.00      | ~ m1_pre_topc(X0,X3)
% 2.27/1.00      | ~ m1_pre_topc(X0,X2)
% 2.27/1.00      | ~ m1_pre_topc(X3,X2)
% 2.27/1.00      | ~ m1_subset_1(X4,u1_struct_0(X0))
% 2.27/1.00      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 2.27/1.00      | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
% 2.27/1.00      | ~ v1_funct_1(sK6)
% 2.27/1.00      | v2_struct_0(X1)
% 2.27/1.00      | v2_struct_0(X3)
% 2.27/1.00      | v2_struct_0(X0)
% 2.27/1.00      | v2_struct_0(X2)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ l1_pre_topc(X2)
% 2.27/1.00      | ~ v2_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X2)
% 2.27/1.00      | u1_struct_0(X3) != u1_struct_0(sK5)
% 2.27/1.00      | u1_struct_0(X1) != u1_struct_0(sK3) ),
% 2.27/1.00      inference(unflattening,[status(thm)],[c_952]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_31,negated_conjecture,
% 2.27/1.00      ( v1_funct_1(sK6) ),
% 2.27/1.00      inference(cnf_transformation,[],[f85]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_957,plain,
% 2.27/1.00      ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
% 2.27/1.00      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 2.27/1.00      | ~ m1_subset_1(X4,u1_struct_0(X0))
% 2.27/1.00      | ~ m1_pre_topc(X3,X2)
% 2.27/1.00      | ~ m1_pre_topc(X0,X2)
% 2.27/1.00      | ~ m1_pre_topc(X0,X3)
% 2.27/1.00      | ~ r1_tmap_1(X3,X1,sK6,X4)
% 2.27/1.00      | r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK6),X4)
% 2.27/1.00      | v2_struct_0(X1)
% 2.27/1.00      | v2_struct_0(X3)
% 2.27/1.00      | v2_struct_0(X0)
% 2.27/1.00      | v2_struct_0(X2)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ l1_pre_topc(X2)
% 2.27/1.00      | ~ v2_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X2)
% 2.27/1.00      | u1_struct_0(X3) != u1_struct_0(sK5)
% 2.27/1.00      | u1_struct_0(X1) != u1_struct_0(sK3) ),
% 2.27/1.00      inference(global_propositional_subsumption,
% 2.27/1.00                [status(thm)],
% 2.27/1.00                [c_953,c_31]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_958,plain,
% 2.27/1.00      ( r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK6),X4)
% 2.27/1.00      | ~ r1_tmap_1(X3,X1,sK6,X4)
% 2.27/1.00      | ~ m1_pre_topc(X0,X3)
% 2.27/1.00      | ~ m1_pre_topc(X3,X2)
% 2.27/1.00      | ~ m1_pre_topc(X0,X2)
% 2.27/1.00      | ~ m1_subset_1(X4,u1_struct_0(X0))
% 2.27/1.00      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 2.27/1.00      | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
% 2.27/1.00      | v2_struct_0(X1)
% 2.27/1.00      | v2_struct_0(X0)
% 2.27/1.00      | v2_struct_0(X2)
% 2.27/1.00      | v2_struct_0(X3)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ l1_pre_topc(X2)
% 2.27/1.00      | ~ v2_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X2)
% 2.27/1.00      | u1_struct_0(X3) != u1_struct_0(sK5)
% 2.27/1.00      | u1_struct_0(X1) != u1_struct_0(sK3) ),
% 2.27/1.00      inference(renaming,[status(thm)],[c_957]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_18,plain,
% 2.27/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.27/1.00      | ~ m1_pre_topc(X2,X0)
% 2.27/1.00      | m1_pre_topc(X2,X1)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X1) ),
% 2.27/1.00      inference(cnf_transformation,[],[f71]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_999,plain,
% 2.27/1.00      ( r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK6),X4)
% 2.27/1.00      | ~ r1_tmap_1(X3,X1,sK6,X4)
% 2.27/1.00      | ~ m1_pre_topc(X0,X3)
% 2.27/1.00      | ~ m1_pre_topc(X3,X2)
% 2.27/1.00      | ~ m1_subset_1(X4,u1_struct_0(X0))
% 2.27/1.00      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 2.27/1.00      | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
% 2.27/1.00      | v2_struct_0(X1)
% 2.27/1.00      | v2_struct_0(X0)
% 2.27/1.00      | v2_struct_0(X2)
% 2.27/1.00      | v2_struct_0(X3)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ l1_pre_topc(X2)
% 2.27/1.00      | ~ v2_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X2)
% 2.27/1.00      | u1_struct_0(X3) != u1_struct_0(sK5)
% 2.27/1.00      | u1_struct_0(X1) != u1_struct_0(sK3) ),
% 2.27/1.00      inference(forward_subsumption_resolution,
% 2.27/1.00                [status(thm)],
% 2.27/1.00                [c_958,c_18]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_2385,plain,
% 2.27/1.00      ( r1_tmap_1(X0_56,X1_56,k3_tmap_1(X2_56,X1_56,X3_56,X0_56,sK6),X0_57)
% 2.27/1.00      | ~ r1_tmap_1(X3_56,X1_56,sK6,X0_57)
% 2.27/1.00      | ~ m1_pre_topc(X0_56,X3_56)
% 2.27/1.00      | ~ m1_pre_topc(X3_56,X2_56)
% 2.27/1.00      | ~ m1_subset_1(X0_57,u1_struct_0(X0_56))
% 2.27/1.00      | ~ m1_subset_1(X0_57,u1_struct_0(X3_56))
% 2.27/1.00      | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3_56),u1_struct_0(X1_56))))
% 2.27/1.00      | v2_struct_0(X1_56)
% 2.27/1.00      | v2_struct_0(X0_56)
% 2.27/1.00      | v2_struct_0(X2_56)
% 2.27/1.00      | v2_struct_0(X3_56)
% 2.27/1.00      | ~ l1_pre_topc(X1_56)
% 2.27/1.00      | ~ l1_pre_topc(X2_56)
% 2.27/1.00      | ~ v2_pre_topc(X1_56)
% 2.27/1.00      | ~ v2_pre_topc(X2_56)
% 2.27/1.00      | u1_struct_0(X3_56) != u1_struct_0(sK5)
% 2.27/1.00      | u1_struct_0(X1_56) != u1_struct_0(sK3) ),
% 2.27/1.00      inference(subtyping,[status(esa)],[c_999]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3235,plain,
% 2.27/1.00      ( u1_struct_0(X0_56) != u1_struct_0(sK5)
% 2.27/1.00      | u1_struct_0(X1_56) != u1_struct_0(sK3)
% 2.27/1.00      | r1_tmap_1(X2_56,X1_56,k3_tmap_1(X3_56,X1_56,X0_56,X2_56,sK6),X0_57) = iProver_top
% 2.27/1.00      | r1_tmap_1(X0_56,X1_56,sK6,X0_57) != iProver_top
% 2.27/1.00      | m1_pre_topc(X2_56,X0_56) != iProver_top
% 2.27/1.00      | m1_pre_topc(X0_56,X3_56) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X2_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_56),u1_struct_0(X1_56)))) != iProver_top
% 2.27/1.00      | v2_struct_0(X1_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X2_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X0_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X3_56) = iProver_top
% 2.27/1.00      | l1_pre_topc(X1_56) != iProver_top
% 2.27/1.00      | l1_pre_topc(X3_56) != iProver_top
% 2.27/1.00      | v2_pre_topc(X1_56) != iProver_top
% 2.27/1.00      | v2_pre_topc(X3_56) != iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_2385]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_4900,plain,
% 2.27/1.00      ( u1_struct_0(X0_56) != u1_struct_0(sK5)
% 2.27/1.00      | r1_tmap_1(X1_56,sK3,k3_tmap_1(X2_56,sK3,X0_56,X1_56,sK6),X0_57) = iProver_top
% 2.27/1.00      | r1_tmap_1(X0_56,sK3,sK6,X0_57) != iProver_top
% 2.27/1.00      | m1_pre_topc(X1_56,X0_56) != iProver_top
% 2.27/1.00      | m1_pre_topc(X0_56,X2_56) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X1_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_56),u1_struct_0(sK3)))) != iProver_top
% 2.27/1.00      | v2_struct_0(X1_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X0_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X2_56) = iProver_top
% 2.27/1.00      | v2_struct_0(sK3) = iProver_top
% 2.27/1.00      | l1_pre_topc(X2_56) != iProver_top
% 2.27/1.00      | l1_pre_topc(sK3) != iProver_top
% 2.27/1.00      | v2_pre_topc(X2_56) != iProver_top
% 2.27/1.00      | v2_pre_topc(sK3) != iProver_top ),
% 2.27/1.00      inference(equality_resolution,[status(thm)],[c_3235]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_38,negated_conjecture,
% 2.27/1.00      ( ~ v2_struct_0(sK3) ),
% 2.27/1.00      inference(cnf_transformation,[],[f78]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_45,plain,
% 2.27/1.00      ( v2_struct_0(sK3) != iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_38]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_37,negated_conjecture,
% 2.27/1.00      ( v2_pre_topc(sK3) ),
% 2.27/1.00      inference(cnf_transformation,[],[f79]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_46,plain,
% 2.27/1.00      ( v2_pre_topc(sK3) = iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_37]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_36,negated_conjecture,
% 2.27/1.00      ( l1_pre_topc(sK3) ),
% 2.27/1.00      inference(cnf_transformation,[],[f80]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_47,plain,
% 2.27/1.00      ( l1_pre_topc(sK3) = iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_36]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_5195,plain,
% 2.27/1.00      ( v2_pre_topc(X2_56) != iProver_top
% 2.27/1.00      | v2_struct_0(X2_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X0_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X1_56) = iProver_top
% 2.27/1.00      | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_56),u1_struct_0(sK3)))) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X1_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
% 2.27/1.00      | m1_pre_topc(X0_56,X2_56) != iProver_top
% 2.27/1.00      | m1_pre_topc(X1_56,X0_56) != iProver_top
% 2.27/1.00      | r1_tmap_1(X0_56,sK3,sK6,X0_57) != iProver_top
% 2.27/1.00      | r1_tmap_1(X1_56,sK3,k3_tmap_1(X2_56,sK3,X0_56,X1_56,sK6),X0_57) = iProver_top
% 2.27/1.00      | u1_struct_0(X0_56) != u1_struct_0(sK5)
% 2.27/1.00      | l1_pre_topc(X2_56) != iProver_top ),
% 2.27/1.00      inference(global_propositional_subsumption,
% 2.27/1.00                [status(thm)],
% 2.27/1.00                [c_4900,c_45,c_46,c_47]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_5196,plain,
% 2.27/1.00      ( u1_struct_0(X0_56) != u1_struct_0(sK5)
% 2.27/1.00      | r1_tmap_1(X1_56,sK3,k3_tmap_1(X2_56,sK3,X0_56,X1_56,sK6),X0_57) = iProver_top
% 2.27/1.00      | r1_tmap_1(X0_56,sK3,sK6,X0_57) != iProver_top
% 2.27/1.00      | m1_pre_topc(X1_56,X0_56) != iProver_top
% 2.27/1.00      | m1_pre_topc(X0_56,X2_56) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X1_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_56),u1_struct_0(sK3)))) != iProver_top
% 2.27/1.00      | v2_struct_0(X1_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X0_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X2_56) = iProver_top
% 2.27/1.00      | l1_pre_topc(X2_56) != iProver_top
% 2.27/1.00      | v2_pre_topc(X2_56) != iProver_top ),
% 2.27/1.00      inference(renaming,[status(thm)],[c_5195]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_5212,plain,
% 2.27/1.00      ( r1_tmap_1(X0_56,sK3,k3_tmap_1(X1_56,sK3,sK5,X0_56,sK6),X0_57) = iProver_top
% 2.27/1.00      | r1_tmap_1(sK5,sK3,sK6,X0_57) != iProver_top
% 2.27/1.00      | m1_pre_topc(X0_56,sK5) != iProver_top
% 2.27/1.00      | m1_pre_topc(sK5,X1_56) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(sK5)) != iProver_top
% 2.27/1.00      | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK5),u1_struct_0(sK3)))) != iProver_top
% 2.27/1.00      | v2_struct_0(X1_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X0_56) = iProver_top
% 2.27/1.00      | v2_struct_0(sK5) = iProver_top
% 2.27/1.00      | l1_pre_topc(X1_56) != iProver_top
% 2.27/1.00      | v2_pre_topc(X1_56) != iProver_top ),
% 2.27/1.00      inference(equality_resolution,[status(thm)],[c_5196]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_33,negated_conjecture,
% 2.27/1.00      ( ~ v2_struct_0(sK5) ),
% 2.27/1.00      inference(cnf_transformation,[],[f83]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_50,plain,
% 2.27/1.00      ( v2_struct_0(sK5) != iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_33]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_29,negated_conjecture,
% 2.27/1.00      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK5),u1_struct_0(sK3)))) ),
% 2.27/1.00      inference(cnf_transformation,[],[f87]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_54,plain,
% 2.27/1.00      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK5),u1_struct_0(sK3)))) = iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_5390,plain,
% 2.27/1.00      ( v2_struct_0(X0_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X1_56) = iProver_top
% 2.27/1.00      | r1_tmap_1(X0_56,sK3,k3_tmap_1(X1_56,sK3,sK5,X0_56,sK6),X0_57) = iProver_top
% 2.27/1.00      | r1_tmap_1(sK5,sK3,sK6,X0_57) != iProver_top
% 2.27/1.00      | m1_pre_topc(X0_56,sK5) != iProver_top
% 2.27/1.00      | m1_pre_topc(sK5,X1_56) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(sK5)) != iProver_top
% 2.27/1.00      | l1_pre_topc(X1_56) != iProver_top
% 2.27/1.00      | v2_pre_topc(X1_56) != iProver_top ),
% 2.27/1.00      inference(global_propositional_subsumption,
% 2.27/1.00                [status(thm)],
% 2.27/1.00                [c_5212,c_50,c_54]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_5391,plain,
% 2.27/1.00      ( r1_tmap_1(X0_56,sK3,k3_tmap_1(X1_56,sK3,sK5,X0_56,sK6),X0_57) = iProver_top
% 2.27/1.00      | r1_tmap_1(sK5,sK3,sK6,X0_57) != iProver_top
% 2.27/1.00      | m1_pre_topc(X0_56,sK5) != iProver_top
% 2.27/1.00      | m1_pre_topc(sK5,X1_56) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(sK5)) != iProver_top
% 2.27/1.00      | v2_struct_0(X1_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X0_56) = iProver_top
% 2.27/1.00      | l1_pre_topc(X1_56) != iProver_top
% 2.27/1.00      | v2_pre_topc(X1_56) != iProver_top ),
% 2.27/1.00      inference(renaming,[status(thm)],[c_5390]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_22,negated_conjecture,
% 2.27/1.00      ( ~ r1_tmap_1(sK5,sK3,sK6,sK7)
% 2.27/1.00      | ~ r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) ),
% 2.27/1.00      inference(cnf_transformation,[],[f94]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_2406,negated_conjecture,
% 2.27/1.00      ( ~ r1_tmap_1(sK5,sK3,sK6,sK7)
% 2.27/1.00      | ~ r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) ),
% 2.27/1.00      inference(subtyping,[status(esa)],[c_22]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3215,plain,
% 2.27/1.00      ( r1_tmap_1(sK5,sK3,sK6,sK7) != iProver_top
% 2.27/1.00      | r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) != iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_2406]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_24,negated_conjecture,
% 2.27/1.00      ( sK7 = sK8 ),
% 2.27/1.00      inference(cnf_transformation,[],[f92]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_2404,negated_conjecture,
% 2.27/1.00      ( sK7 = sK8 ),
% 2.27/1.00      inference(subtyping,[status(esa)],[c_24]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3320,plain,
% 2.27/1.00      ( r1_tmap_1(sK5,sK3,sK6,sK8) != iProver_top
% 2.27/1.00      | r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) != iProver_top ),
% 2.27/1.00      inference(light_normalisation,[status(thm)],[c_3215,c_2404]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_5406,plain,
% 2.27/1.00      ( r1_tmap_1(sK5,sK3,sK6,sK8) != iProver_top
% 2.27/1.00      | m1_pre_topc(sK5,sK2) != iProver_top
% 2.27/1.00      | m1_pre_topc(sK4,sK5) != iProver_top
% 2.27/1.00      | m1_subset_1(sK8,u1_struct_0(sK5)) != iProver_top
% 2.27/1.00      | m1_subset_1(sK8,u1_struct_0(sK4)) != iProver_top
% 2.27/1.00      | v2_struct_0(sK2) = iProver_top
% 2.27/1.00      | v2_struct_0(sK4) = iProver_top
% 2.27/1.00      | l1_pre_topc(sK2) != iProver_top
% 2.27/1.00      | v2_pre_topc(sK2) != iProver_top ),
% 2.27/1.00      inference(superposition,[status(thm)],[c_5391,c_3320]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_11,plain,
% 2.27/1.00      ( r1_tarski(sK1(X0,X1,X2),X1)
% 2.27/1.00      | ~ v3_pre_topc(X1,X0)
% 2.27/1.00      | ~ r2_hidden(X2,X1)
% 2.27/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
% 2.27/1.00      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.27/1.00      | v2_struct_0(X0)
% 2.27/1.00      | ~ l1_pre_topc(X0)
% 2.27/1.00      | ~ v2_pre_topc(X0) ),
% 2.27/1.00      inference(cnf_transformation,[],[f63]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_2410,plain,
% 2.27/1.00      ( r1_tarski(sK1(X0_56,X0_57,X1_57),X0_57)
% 2.27/1.00      | ~ v3_pre_topc(X0_57,X0_56)
% 2.27/1.00      | ~ r2_hidden(X1_57,X0_57)
% 2.27/1.00      | ~ m1_subset_1(X0_57,k1_zfmisc_1(u1_struct_0(X0_56)))
% 2.27/1.00      | ~ m1_subset_1(X1_57,u1_struct_0(X0_56))
% 2.27/1.00      | v2_struct_0(X0_56)
% 2.27/1.00      | ~ l1_pre_topc(X0_56)
% 2.27/1.00      | ~ v2_pre_topc(X0_56) ),
% 2.27/1.00      inference(subtyping,[status(esa)],[c_11]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3211,plain,
% 2.27/1.00      ( r1_tarski(sK1(X0_56,X0_57,X1_57),X0_57) = iProver_top
% 2.27/1.00      | v3_pre_topc(X0_57,X0_56) != iProver_top
% 2.27/1.00      | r2_hidden(X1_57,X0_57) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,k1_zfmisc_1(u1_struct_0(X0_56))) != iProver_top
% 2.27/1.00      | m1_subset_1(X1_57,u1_struct_0(X0_56)) != iProver_top
% 2.27/1.00      | v2_struct_0(X0_56) = iProver_top
% 2.27/1.00      | l1_pre_topc(X0_56) != iProver_top
% 2.27/1.00      | v2_pre_topc(X0_56) != iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_2410]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_23,negated_conjecture,
% 2.27/1.00      ( r1_tmap_1(sK5,sK3,sK6,sK7)
% 2.27/1.00      | r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) ),
% 2.27/1.00      inference(cnf_transformation,[],[f93]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_2405,negated_conjecture,
% 2.27/1.00      ( r1_tmap_1(sK5,sK3,sK6,sK7)
% 2.27/1.00      | r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) ),
% 2.27/1.00      inference(subtyping,[status(esa)],[c_23]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3216,plain,
% 2.27/1.00      ( r1_tmap_1(sK5,sK3,sK6,sK7) = iProver_top
% 2.27/1.00      | r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) = iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_2405]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3309,plain,
% 2.27/1.00      ( r1_tmap_1(sK5,sK3,sK6,sK8) = iProver_top
% 2.27/1.00      | r1_tmap_1(sK4,sK3,k3_tmap_1(sK2,sK3,sK5,sK4,sK6),sK8) = iProver_top ),
% 2.27/1.00      inference(light_normalisation,[status(thm)],[c_3216,c_2404]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_12,plain,
% 2.27/1.00      ( m1_connsp_2(sK1(X0,X1,X2),X0,X2)
% 2.27/1.00      | ~ v3_pre_topc(X1,X0)
% 2.27/1.00      | ~ r2_hidden(X2,X1)
% 2.27/1.00      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
% 2.27/1.00      | ~ m1_subset_1(X2,u1_struct_0(X0))
% 2.27/1.00      | v2_struct_0(X0)
% 2.27/1.00      | ~ l1_pre_topc(X0)
% 2.27/1.00      | ~ v2_pre_topc(X0) ),
% 2.27/1.00      inference(cnf_transformation,[],[f62]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_20,plain,
% 2.27/1.00      ( r1_tmap_1(X0,X1,X2,X3)
% 2.27/1.00      | ~ r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
% 2.27/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 2.27/1.00      | ~ m1_connsp_2(X6,X0,X3)
% 2.27/1.00      | ~ r1_tarski(X6,u1_struct_0(X4))
% 2.27/1.00      | ~ m1_pre_topc(X0,X5)
% 2.27/1.00      | ~ m1_pre_topc(X4,X5)
% 2.27/1.00      | ~ m1_pre_topc(X4,X0)
% 2.27/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 2.27/1.00      | ~ m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X0)))
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 2.27/1.00      | ~ v1_funct_1(X2)
% 2.27/1.00      | v2_struct_0(X5)
% 2.27/1.00      | v2_struct_0(X1)
% 2.27/1.00      | v2_struct_0(X4)
% 2.27/1.00      | v2_struct_0(X0)
% 2.27/1.00      | ~ l1_pre_topc(X5)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X5)
% 2.27/1.00      | ~ v2_pre_topc(X1) ),
% 2.27/1.00      inference(cnf_transformation,[],[f99]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_714,plain,
% 2.27/1.00      ( r1_tmap_1(X0,X1,X2,X3)
% 2.27/1.00      | ~ r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
% 2.27/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 2.27/1.00      | ~ r1_tarski(X6,u1_struct_0(X4))
% 2.27/1.00      | ~ v3_pre_topc(X7,X8)
% 2.27/1.00      | ~ m1_pre_topc(X0,X5)
% 2.27/1.00      | ~ m1_pre_topc(X4,X5)
% 2.27/1.00      | ~ m1_pre_topc(X4,X0)
% 2.27/1.00      | ~ r2_hidden(X9,X7)
% 2.27/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 2.27/1.00      | ~ m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(X8)))
% 2.27/1.00      | ~ m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X0)))
% 2.27/1.00      | ~ m1_subset_1(X9,u1_struct_0(X8))
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 2.27/1.00      | ~ v1_funct_1(X2)
% 2.27/1.00      | v2_struct_0(X8)
% 2.27/1.00      | v2_struct_0(X0)
% 2.27/1.00      | v2_struct_0(X5)
% 2.27/1.00      | v2_struct_0(X1)
% 2.27/1.00      | v2_struct_0(X4)
% 2.27/1.00      | ~ l1_pre_topc(X8)
% 2.27/1.00      | ~ l1_pre_topc(X5)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X8)
% 2.27/1.00      | ~ v2_pre_topc(X5)
% 2.27/1.00      | ~ v2_pre_topc(X1)
% 2.27/1.00      | X0 != X8
% 2.27/1.00      | X3 != X9
% 2.27/1.00      | sK1(X8,X7,X9) != X6 ),
% 2.27/1.00      inference(resolution_lifted,[status(thm)],[c_12,c_20]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_715,plain,
% 2.27/1.00      ( r1_tmap_1(X0,X1,X2,X3)
% 2.27/1.00      | ~ r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
% 2.27/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 2.27/1.00      | ~ r1_tarski(sK1(X0,X6,X3),u1_struct_0(X4))
% 2.27/1.00      | ~ v3_pre_topc(X6,X0)
% 2.27/1.00      | ~ m1_pre_topc(X4,X5)
% 2.27/1.00      | ~ m1_pre_topc(X0,X5)
% 2.27/1.00      | ~ m1_pre_topc(X4,X0)
% 2.27/1.00      | ~ r2_hidden(X3,X6)
% 2.27/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 2.27/1.00      | ~ m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X0)))
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 2.27/1.00      | ~ m1_subset_1(sK1(X0,X6,X3),k1_zfmisc_1(u1_struct_0(X0)))
% 2.27/1.00      | ~ v1_funct_1(X2)
% 2.27/1.00      | v2_struct_0(X1)
% 2.27/1.00      | v2_struct_0(X4)
% 2.27/1.00      | v2_struct_0(X5)
% 2.27/1.00      | v2_struct_0(X0)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ l1_pre_topc(X5)
% 2.27/1.00      | ~ l1_pre_topc(X0)
% 2.27/1.00      | ~ v2_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X5)
% 2.27/1.00      | ~ v2_pre_topc(X0) ),
% 2.27/1.00      inference(unflattening,[status(thm)],[c_714]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_4,plain,
% 2.27/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X1)
% 2.27/1.00      | v2_pre_topc(X0) ),
% 2.27/1.00      inference(cnf_transformation,[],[f57]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_6,plain,
% 2.27/1.00      ( ~ m1_pre_topc(X0,X1) | ~ l1_pre_topc(X1) | l1_pre_topc(X0) ),
% 2.27/1.00      inference(cnf_transformation,[],[f59]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_13,plain,
% 2.27/1.00      ( ~ v3_pre_topc(X0,X1)
% 2.27/1.00      | ~ r2_hidden(X2,X0)
% 2.27/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 2.27/1.00      | ~ m1_subset_1(X2,u1_struct_0(X1))
% 2.27/1.00      | m1_subset_1(sK1(X1,X0,X2),k1_zfmisc_1(u1_struct_0(X1)))
% 2.27/1.00      | v2_struct_0(X1)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X1) ),
% 2.27/1.00      inference(cnf_transformation,[],[f61]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_769,plain,
% 2.27/1.00      ( r1_tmap_1(X0,X1,X2,X3)
% 2.27/1.00      | ~ r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
% 2.27/1.00      | ~ v1_funct_2(X2,u1_struct_0(X0),u1_struct_0(X1))
% 2.27/1.00      | ~ r1_tarski(sK1(X0,X6,X3),u1_struct_0(X4))
% 2.27/1.00      | ~ v3_pre_topc(X6,X0)
% 2.27/1.00      | ~ m1_pre_topc(X4,X0)
% 2.27/1.00      | ~ m1_pre_topc(X0,X5)
% 2.27/1.00      | ~ r2_hidden(X3,X6)
% 2.27/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 2.27/1.00      | ~ m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X0)))
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 2.27/1.00      | ~ v1_funct_1(X2)
% 2.27/1.00      | v2_struct_0(X1)
% 2.27/1.00      | v2_struct_0(X0)
% 2.27/1.00      | v2_struct_0(X4)
% 2.27/1.00      | v2_struct_0(X5)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ l1_pre_topc(X5)
% 2.27/1.00      | ~ v2_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X5) ),
% 2.27/1.00      inference(forward_subsumption_resolution,
% 2.27/1.00                [status(thm)],
% 2.27/1.00                [c_715,c_4,c_6,c_13,c_18]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_898,plain,
% 2.27/1.00      ( r1_tmap_1(X0,X1,X2,X3)
% 2.27/1.00      | ~ r1_tmap_1(X4,X1,k3_tmap_1(X5,X1,X0,X4,X2),X3)
% 2.27/1.00      | ~ r1_tarski(sK1(X0,X6,X3),u1_struct_0(X4))
% 2.27/1.00      | ~ v3_pre_topc(X6,X0)
% 2.27/1.00      | ~ m1_pre_topc(X4,X0)
% 2.27/1.00      | ~ m1_pre_topc(X0,X5)
% 2.27/1.00      | ~ r2_hidden(X3,X6)
% 2.27/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X1))))
% 2.27/1.00      | ~ m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X0)))
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X4))
% 2.27/1.00      | ~ m1_subset_1(X3,u1_struct_0(X0))
% 2.27/1.00      | ~ v1_funct_1(X2)
% 2.27/1.00      | v2_struct_0(X1)
% 2.27/1.00      | v2_struct_0(X0)
% 2.27/1.00      | v2_struct_0(X4)
% 2.27/1.00      | v2_struct_0(X5)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ l1_pre_topc(X5)
% 2.27/1.00      | ~ v2_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X5)
% 2.27/1.00      | u1_struct_0(X0) != u1_struct_0(sK5)
% 2.27/1.00      | u1_struct_0(X1) != u1_struct_0(sK3)
% 2.27/1.00      | sK6 != X2 ),
% 2.27/1.00      inference(resolution_lifted,[status(thm)],[c_769,c_30]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_899,plain,
% 2.27/1.00      ( ~ r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK6),X4)
% 2.27/1.00      | r1_tmap_1(X3,X1,sK6,X4)
% 2.27/1.00      | ~ r1_tarski(sK1(X3,X5,X4),u1_struct_0(X0))
% 2.27/1.00      | ~ v3_pre_topc(X5,X3)
% 2.27/1.00      | ~ m1_pre_topc(X0,X3)
% 2.27/1.00      | ~ m1_pre_topc(X3,X2)
% 2.27/1.00      | ~ r2_hidden(X4,X5)
% 2.27/1.00      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))
% 2.27/1.00      | ~ m1_subset_1(X4,u1_struct_0(X0))
% 2.27/1.00      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 2.27/1.00      | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
% 2.27/1.00      | ~ v1_funct_1(sK6)
% 2.27/1.00      | v2_struct_0(X1)
% 2.27/1.00      | v2_struct_0(X3)
% 2.27/1.00      | v2_struct_0(X0)
% 2.27/1.00      | v2_struct_0(X2)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ l1_pre_topc(X2)
% 2.27/1.00      | ~ v2_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X2)
% 2.27/1.00      | u1_struct_0(X3) != u1_struct_0(sK5)
% 2.27/1.00      | u1_struct_0(X1) != u1_struct_0(sK3) ),
% 2.27/1.00      inference(unflattening,[status(thm)],[c_898]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_903,plain,
% 2.27/1.00      ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
% 2.27/1.00      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 2.27/1.00      | ~ m1_subset_1(X4,u1_struct_0(X0))
% 2.27/1.00      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))
% 2.27/1.00      | ~ r2_hidden(X4,X5)
% 2.27/1.00      | ~ m1_pre_topc(X3,X2)
% 2.27/1.00      | ~ m1_pre_topc(X0,X3)
% 2.27/1.00      | ~ v3_pre_topc(X5,X3)
% 2.27/1.00      | ~ r1_tarski(sK1(X3,X5,X4),u1_struct_0(X0))
% 2.27/1.00      | r1_tmap_1(X3,X1,sK6,X4)
% 2.27/1.00      | ~ r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK6),X4)
% 2.27/1.00      | v2_struct_0(X1)
% 2.27/1.00      | v2_struct_0(X3)
% 2.27/1.00      | v2_struct_0(X0)
% 2.27/1.00      | v2_struct_0(X2)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ l1_pre_topc(X2)
% 2.27/1.00      | ~ v2_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X2)
% 2.27/1.00      | u1_struct_0(X3) != u1_struct_0(sK5)
% 2.27/1.00      | u1_struct_0(X1) != u1_struct_0(sK3) ),
% 2.27/1.00      inference(global_propositional_subsumption,
% 2.27/1.00                [status(thm)],
% 2.27/1.00                [c_899,c_31]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_904,plain,
% 2.27/1.00      ( ~ r1_tmap_1(X0,X1,k3_tmap_1(X2,X1,X3,X0,sK6),X4)
% 2.27/1.00      | r1_tmap_1(X3,X1,sK6,X4)
% 2.27/1.00      | ~ r1_tarski(sK1(X3,X5,X4),u1_struct_0(X0))
% 2.27/1.00      | ~ v3_pre_topc(X5,X3)
% 2.27/1.00      | ~ m1_pre_topc(X0,X3)
% 2.27/1.00      | ~ m1_pre_topc(X3,X2)
% 2.27/1.00      | ~ r2_hidden(X4,X5)
% 2.27/1.00      | ~ m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X3)))
% 2.27/1.00      | ~ m1_subset_1(X4,u1_struct_0(X0))
% 2.27/1.00      | ~ m1_subset_1(X4,u1_struct_0(X3))
% 2.27/1.00      | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X1))))
% 2.27/1.00      | v2_struct_0(X1)
% 2.27/1.00      | v2_struct_0(X0)
% 2.27/1.00      | v2_struct_0(X2)
% 2.27/1.00      | v2_struct_0(X3)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ l1_pre_topc(X2)
% 2.27/1.00      | ~ v2_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X2)
% 2.27/1.00      | u1_struct_0(X3) != u1_struct_0(sK5)
% 2.27/1.00      | u1_struct_0(X1) != u1_struct_0(sK3) ),
% 2.27/1.00      inference(renaming,[status(thm)],[c_903]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_2386,plain,
% 2.27/1.00      ( ~ r1_tmap_1(X0_56,X1_56,k3_tmap_1(X2_56,X1_56,X3_56,X0_56,sK6),X0_57)
% 2.27/1.00      | r1_tmap_1(X3_56,X1_56,sK6,X0_57)
% 2.27/1.00      | ~ r1_tarski(sK1(X3_56,X1_57,X0_57),u1_struct_0(X0_56))
% 2.27/1.00      | ~ v3_pre_topc(X1_57,X3_56)
% 2.27/1.00      | ~ m1_pre_topc(X0_56,X3_56)
% 2.27/1.00      | ~ m1_pre_topc(X3_56,X2_56)
% 2.27/1.00      | ~ r2_hidden(X0_57,X1_57)
% 2.27/1.00      | ~ m1_subset_1(X1_57,k1_zfmisc_1(u1_struct_0(X3_56)))
% 2.27/1.00      | ~ m1_subset_1(X0_57,u1_struct_0(X0_56))
% 2.27/1.00      | ~ m1_subset_1(X0_57,u1_struct_0(X3_56))
% 2.27/1.00      | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3_56),u1_struct_0(X1_56))))
% 2.27/1.00      | v2_struct_0(X1_56)
% 2.27/1.00      | v2_struct_0(X0_56)
% 2.27/1.00      | v2_struct_0(X2_56)
% 2.27/1.00      | v2_struct_0(X3_56)
% 2.27/1.00      | ~ l1_pre_topc(X1_56)
% 2.27/1.00      | ~ l1_pre_topc(X2_56)
% 2.27/1.00      | ~ v2_pre_topc(X1_56)
% 2.27/1.00      | ~ v2_pre_topc(X2_56)
% 2.27/1.00      | u1_struct_0(X3_56) != u1_struct_0(sK5)
% 2.27/1.00      | u1_struct_0(X1_56) != u1_struct_0(sK3) ),
% 2.27/1.00      inference(subtyping,[status(esa)],[c_904]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3234,plain,
% 2.27/1.00      ( u1_struct_0(X0_56) != u1_struct_0(sK5)
% 2.27/1.00      | u1_struct_0(X1_56) != u1_struct_0(sK3)
% 2.27/1.00      | r1_tmap_1(X2_56,X1_56,k3_tmap_1(X3_56,X1_56,X0_56,X2_56,sK6),X0_57) != iProver_top
% 2.27/1.00      | r1_tmap_1(X0_56,X1_56,sK6,X0_57) = iProver_top
% 2.27/1.00      | r1_tarski(sK1(X0_56,X1_57,X0_57),u1_struct_0(X2_56)) != iProver_top
% 2.27/1.00      | v3_pre_topc(X1_57,X0_56) != iProver_top
% 2.27/1.00      | m1_pre_topc(X2_56,X0_56) != iProver_top
% 2.27/1.00      | m1_pre_topc(X0_56,X3_56) != iProver_top
% 2.27/1.00      | r2_hidden(X0_57,X1_57) != iProver_top
% 2.27/1.00      | m1_subset_1(X1_57,k1_zfmisc_1(u1_struct_0(X0_56))) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X2_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_56),u1_struct_0(X1_56)))) != iProver_top
% 2.27/1.00      | v2_struct_0(X1_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X2_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X0_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X3_56) = iProver_top
% 2.27/1.00      | l1_pre_topc(X1_56) != iProver_top
% 2.27/1.00      | l1_pre_topc(X3_56) != iProver_top
% 2.27/1.00      | v2_pre_topc(X1_56) != iProver_top
% 2.27/1.00      | v2_pre_topc(X3_56) != iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_2386]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_4025,plain,
% 2.27/1.00      ( u1_struct_0(X0_56) != u1_struct_0(sK5)
% 2.27/1.00      | r1_tmap_1(X1_56,sK3,k3_tmap_1(X2_56,sK3,X0_56,X1_56,sK6),X0_57) != iProver_top
% 2.27/1.00      | r1_tmap_1(X0_56,sK3,sK6,X0_57) = iProver_top
% 2.27/1.00      | r1_tarski(sK1(X0_56,X1_57,X0_57),u1_struct_0(X1_56)) != iProver_top
% 2.27/1.00      | v3_pre_topc(X1_57,X0_56) != iProver_top
% 2.27/1.00      | m1_pre_topc(X1_56,X0_56) != iProver_top
% 2.27/1.00      | m1_pre_topc(X0_56,X2_56) != iProver_top
% 2.27/1.00      | r2_hidden(X0_57,X1_57) != iProver_top
% 2.27/1.00      | m1_subset_1(X1_57,k1_zfmisc_1(u1_struct_0(X0_56))) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X1_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_56),u1_struct_0(sK3)))) != iProver_top
% 2.27/1.00      | v2_struct_0(X1_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X0_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X2_56) = iProver_top
% 2.27/1.00      | v2_struct_0(sK3) = iProver_top
% 2.27/1.00      | l1_pre_topc(X2_56) != iProver_top
% 2.27/1.00      | l1_pre_topc(sK3) != iProver_top
% 2.27/1.00      | v2_pre_topc(X2_56) != iProver_top
% 2.27/1.00      | v2_pre_topc(sK3) != iProver_top ),
% 2.27/1.00      inference(equality_resolution,[status(thm)],[c_3234]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_5123,plain,
% 2.27/1.00      ( v2_pre_topc(X2_56) != iProver_top
% 2.27/1.00      | v2_struct_0(X2_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X0_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X1_56) = iProver_top
% 2.27/1.00      | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_56),u1_struct_0(sK3)))) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X1_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(X1_57,k1_zfmisc_1(u1_struct_0(X0_56))) != iProver_top
% 2.27/1.00      | r2_hidden(X0_57,X1_57) != iProver_top
% 2.27/1.00      | m1_pre_topc(X0_56,X2_56) != iProver_top
% 2.27/1.00      | m1_pre_topc(X1_56,X0_56) != iProver_top
% 2.27/1.00      | v3_pre_topc(X1_57,X0_56) != iProver_top
% 2.27/1.00      | r1_tarski(sK1(X0_56,X1_57,X0_57),u1_struct_0(X1_56)) != iProver_top
% 2.27/1.00      | r1_tmap_1(X0_56,sK3,sK6,X0_57) = iProver_top
% 2.27/1.00      | r1_tmap_1(X1_56,sK3,k3_tmap_1(X2_56,sK3,X0_56,X1_56,sK6),X0_57) != iProver_top
% 2.27/1.00      | u1_struct_0(X0_56) != u1_struct_0(sK5)
% 2.27/1.00      | l1_pre_topc(X2_56) != iProver_top ),
% 2.27/1.00      inference(global_propositional_subsumption,
% 2.27/1.00                [status(thm)],
% 2.27/1.00                [c_4025,c_45,c_46,c_47]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_5124,plain,
% 2.27/1.00      ( u1_struct_0(X0_56) != u1_struct_0(sK5)
% 2.27/1.00      | r1_tmap_1(X1_56,sK3,k3_tmap_1(X2_56,sK3,X0_56,X1_56,sK6),X0_57) != iProver_top
% 2.27/1.00      | r1_tmap_1(X0_56,sK3,sK6,X0_57) = iProver_top
% 2.27/1.00      | r1_tarski(sK1(X0_56,X1_57,X0_57),u1_struct_0(X1_56)) != iProver_top
% 2.27/1.00      | v3_pre_topc(X1_57,X0_56) != iProver_top
% 2.27/1.00      | m1_pre_topc(X1_56,X0_56) != iProver_top
% 2.27/1.00      | m1_pre_topc(X0_56,X2_56) != iProver_top
% 2.27/1.00      | r2_hidden(X0_57,X1_57) != iProver_top
% 2.27/1.00      | m1_subset_1(X1_57,k1_zfmisc_1(u1_struct_0(X0_56))) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X1_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_56),u1_struct_0(sK3)))) != iProver_top
% 2.27/1.00      | v2_struct_0(X1_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X0_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X2_56) = iProver_top
% 2.27/1.00      | l1_pre_topc(X2_56) != iProver_top
% 2.27/1.00      | v2_pre_topc(X2_56) != iProver_top ),
% 2.27/1.00      inference(renaming,[status(thm)],[c_5123]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_5144,plain,
% 2.27/1.00      ( r1_tmap_1(X0_56,sK3,k3_tmap_1(X1_56,sK3,sK5,X0_56,sK6),X0_57) != iProver_top
% 2.27/1.00      | r1_tmap_1(sK5,sK3,sK6,X0_57) = iProver_top
% 2.27/1.00      | r1_tarski(sK1(sK5,X1_57,X0_57),u1_struct_0(X0_56)) != iProver_top
% 2.27/1.00      | v3_pre_topc(X1_57,sK5) != iProver_top
% 2.27/1.00      | m1_pre_topc(X0_56,sK5) != iProver_top
% 2.27/1.00      | m1_pre_topc(sK5,X1_56) != iProver_top
% 2.27/1.00      | r2_hidden(X0_57,X1_57) != iProver_top
% 2.27/1.00      | m1_subset_1(X1_57,k1_zfmisc_1(u1_struct_0(sK5))) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(sK5)) != iProver_top
% 2.27/1.00      | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK5),u1_struct_0(sK3)))) != iProver_top
% 2.27/1.00      | v2_struct_0(X1_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X0_56) = iProver_top
% 2.27/1.00      | v2_struct_0(sK5) = iProver_top
% 2.27/1.00      | l1_pre_topc(X1_56) != iProver_top
% 2.27/1.00      | v2_pre_topc(X1_56) != iProver_top ),
% 2.27/1.00      inference(equality_resolution,[status(thm)],[c_5124]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_5217,plain,
% 2.27/1.00      ( v2_struct_0(X0_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X1_56) = iProver_top
% 2.27/1.00      | r1_tmap_1(X0_56,sK3,k3_tmap_1(X1_56,sK3,sK5,X0_56,sK6),X0_57) != iProver_top
% 2.27/1.00      | r1_tmap_1(sK5,sK3,sK6,X0_57) = iProver_top
% 2.27/1.00      | r1_tarski(sK1(sK5,X1_57,X0_57),u1_struct_0(X0_56)) != iProver_top
% 2.27/1.00      | v3_pre_topc(X1_57,sK5) != iProver_top
% 2.27/1.00      | m1_pre_topc(X0_56,sK5) != iProver_top
% 2.27/1.00      | m1_pre_topc(sK5,X1_56) != iProver_top
% 2.27/1.00      | r2_hidden(X0_57,X1_57) != iProver_top
% 2.27/1.00      | m1_subset_1(X1_57,k1_zfmisc_1(u1_struct_0(sK5))) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(sK5)) != iProver_top
% 2.27/1.00      | l1_pre_topc(X1_56) != iProver_top
% 2.27/1.00      | v2_pre_topc(X1_56) != iProver_top ),
% 2.27/1.00      inference(global_propositional_subsumption,
% 2.27/1.00                [status(thm)],
% 2.27/1.00                [c_5144,c_50,c_54]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_5218,plain,
% 2.27/1.00      ( r1_tmap_1(X0_56,sK3,k3_tmap_1(X1_56,sK3,sK5,X0_56,sK6),X0_57) != iProver_top
% 2.27/1.00      | r1_tmap_1(sK5,sK3,sK6,X0_57) = iProver_top
% 2.27/1.00      | r1_tarski(sK1(sK5,X1_57,X0_57),u1_struct_0(X0_56)) != iProver_top
% 2.27/1.00      | v3_pre_topc(X1_57,sK5) != iProver_top
% 2.27/1.00      | m1_pre_topc(X0_56,sK5) != iProver_top
% 2.27/1.00      | m1_pre_topc(sK5,X1_56) != iProver_top
% 2.27/1.00      | r2_hidden(X0_57,X1_57) != iProver_top
% 2.27/1.00      | m1_subset_1(X1_57,k1_zfmisc_1(u1_struct_0(sK5))) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(X0_56)) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,u1_struct_0(sK5)) != iProver_top
% 2.27/1.00      | v2_struct_0(X1_56) = iProver_top
% 2.27/1.00      | v2_struct_0(X0_56) = iProver_top
% 2.27/1.00      | l1_pre_topc(X1_56) != iProver_top
% 2.27/1.00      | v2_pre_topc(X1_56) != iProver_top ),
% 2.27/1.00      inference(renaming,[status(thm)],[c_5217]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_5237,plain,
% 2.27/1.00      ( r1_tmap_1(sK5,sK3,sK6,sK8) = iProver_top
% 2.27/1.00      | r1_tarski(sK1(sK5,X0_57,sK8),u1_struct_0(sK4)) != iProver_top
% 2.27/1.00      | v3_pre_topc(X0_57,sK5) != iProver_top
% 2.27/1.00      | m1_pre_topc(sK5,sK2) != iProver_top
% 2.27/1.00      | m1_pre_topc(sK4,sK5) != iProver_top
% 2.27/1.00      | r2_hidden(sK8,X0_57) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,k1_zfmisc_1(u1_struct_0(sK5))) != iProver_top
% 2.27/1.00      | m1_subset_1(sK8,u1_struct_0(sK5)) != iProver_top
% 2.27/1.00      | m1_subset_1(sK8,u1_struct_0(sK4)) != iProver_top
% 2.27/1.00      | v2_struct_0(sK2) = iProver_top
% 2.27/1.00      | v2_struct_0(sK4) = iProver_top
% 2.27/1.00      | l1_pre_topc(sK2) != iProver_top
% 2.27/1.00      | v2_pre_topc(sK2) != iProver_top ),
% 2.27/1.00      inference(superposition,[status(thm)],[c_3309,c_5218]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_41,negated_conjecture,
% 2.27/1.00      ( ~ v2_struct_0(sK2) ),
% 2.27/1.00      inference(cnf_transformation,[],[f75]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_42,plain,
% 2.27/1.00      ( v2_struct_0(sK2) != iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_41]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_40,negated_conjecture,
% 2.27/1.00      ( v2_pre_topc(sK2) ),
% 2.27/1.00      inference(cnf_transformation,[],[f76]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_43,plain,
% 2.27/1.00      ( v2_pre_topc(sK2) = iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_40]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_39,negated_conjecture,
% 2.27/1.00      ( l1_pre_topc(sK2) ),
% 2.27/1.00      inference(cnf_transformation,[],[f77]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_44,plain,
% 2.27/1.00      ( l1_pre_topc(sK2) = iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_39]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_35,negated_conjecture,
% 2.27/1.00      ( ~ v2_struct_0(sK4) ),
% 2.27/1.00      inference(cnf_transformation,[],[f81]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_48,plain,
% 2.27/1.00      ( v2_struct_0(sK4) != iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_32,negated_conjecture,
% 2.27/1.00      ( m1_pre_topc(sK5,sK2) ),
% 2.27/1.00      inference(cnf_transformation,[],[f84]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_51,plain,
% 2.27/1.00      ( m1_pre_topc(sK5,sK2) = iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_27,negated_conjecture,
% 2.27/1.00      ( m1_pre_topc(sK4,sK5) ),
% 2.27/1.00      inference(cnf_transformation,[],[f89]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_56,plain,
% 2.27/1.00      ( m1_pre_topc(sK4,sK5) = iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_25,negated_conjecture,
% 2.27/1.00      ( m1_subset_1(sK8,u1_struct_0(sK4)) ),
% 2.27/1.00      inference(cnf_transformation,[],[f91]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_58,plain,
% 2.27/1.00      ( m1_subset_1(sK8,u1_struct_0(sK4)) = iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_26,negated_conjecture,
% 2.27/1.00      ( m1_subset_1(sK7,u1_struct_0(sK5)) ),
% 2.27/1.00      inference(cnf_transformation,[],[f90]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_2402,negated_conjecture,
% 2.27/1.00      ( m1_subset_1(sK7,u1_struct_0(sK5)) ),
% 2.27/1.00      inference(subtyping,[status(esa)],[c_26]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3218,plain,
% 2.27/1.00      ( m1_subset_1(sK7,u1_struct_0(sK5)) = iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_2402]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3262,plain,
% 2.27/1.00      ( m1_subset_1(sK8,u1_struct_0(sK5)) = iProver_top ),
% 2.27/1.00      inference(light_normalisation,[status(thm)],[c_3218,c_2404]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_5292,plain,
% 2.27/1.00      ( r1_tmap_1(sK5,sK3,sK6,sK8) = iProver_top
% 2.27/1.00      | r1_tarski(sK1(sK5,X0_57,sK8),u1_struct_0(sK4)) != iProver_top
% 2.27/1.00      | v3_pre_topc(X0_57,sK5) != iProver_top
% 2.27/1.00      | r2_hidden(sK8,X0_57) != iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,k1_zfmisc_1(u1_struct_0(sK5))) != iProver_top ),
% 2.27/1.00      inference(global_propositional_subsumption,
% 2.27/1.00                [status(thm)],
% 2.27/1.00                [c_5237,c_42,c_43,c_44,c_48,c_51,c_56,c_58,c_3262]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_5303,plain,
% 2.27/1.00      ( r1_tmap_1(sK5,sK3,sK6,sK8) = iProver_top
% 2.27/1.00      | v3_pre_topc(u1_struct_0(sK4),sK5) != iProver_top
% 2.27/1.00      | r2_hidden(sK8,u1_struct_0(sK4)) != iProver_top
% 2.27/1.00      | m1_subset_1(u1_struct_0(sK4),k1_zfmisc_1(u1_struct_0(sK5))) != iProver_top
% 2.27/1.00      | m1_subset_1(sK8,u1_struct_0(sK5)) != iProver_top
% 2.27/1.00      | v2_struct_0(sK5) = iProver_top
% 2.27/1.00      | l1_pre_topc(sK5) != iProver_top
% 2.27/1.00      | v2_pre_topc(sK5) != iProver_top ),
% 2.27/1.00      inference(superposition,[status(thm)],[c_3211,c_5292]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_2399,negated_conjecture,
% 2.27/1.00      ( m1_pre_topc(sK5,sK2) ),
% 2.27/1.00      inference(subtyping,[status(esa)],[c_32]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3221,plain,
% 2.27/1.00      ( m1_pre_topc(sK5,sK2) = iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_2399]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_2414,plain,
% 2.27/1.00      ( ~ m1_pre_topc(X0_56,X1_56)
% 2.27/1.00      | ~ l1_pre_topc(X1_56)
% 2.27/1.00      | ~ v2_pre_topc(X1_56)
% 2.27/1.00      | v2_pre_topc(X0_56) ),
% 2.27/1.00      inference(subtyping,[status(esa)],[c_4]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3207,plain,
% 2.27/1.00      ( m1_pre_topc(X0_56,X1_56) != iProver_top
% 2.27/1.00      | l1_pre_topc(X1_56) != iProver_top
% 2.27/1.00      | v2_pre_topc(X1_56) != iProver_top
% 2.27/1.00      | v2_pre_topc(X0_56) = iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_2414]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_4433,plain,
% 2.27/1.00      ( l1_pre_topc(sK2) != iProver_top
% 2.27/1.00      | v2_pre_topc(sK5) = iProver_top
% 2.27/1.00      | v2_pre_topc(sK2) != iProver_top ),
% 2.27/1.00      inference(superposition,[status(thm)],[c_3221,c_3207]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_2401,negated_conjecture,
% 2.27/1.00      ( m1_pre_topc(sK4,sK5) ),
% 2.27/1.00      inference(subtyping,[status(esa)],[c_27]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3219,plain,
% 2.27/1.00      ( m1_pre_topc(sK4,sK5) = iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_2401]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_2413,plain,
% 2.27/1.00      ( ~ m1_pre_topc(X0_56,X1_56)
% 2.27/1.00      | ~ l1_pre_topc(X1_56)
% 2.27/1.00      | l1_pre_topc(X0_56) ),
% 2.27/1.00      inference(subtyping,[status(esa)],[c_6]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3208,plain,
% 2.27/1.00      ( m1_pre_topc(X0_56,X1_56) != iProver_top
% 2.27/1.00      | l1_pre_topc(X1_56) != iProver_top
% 2.27/1.00      | l1_pre_topc(X0_56) = iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_2413]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_4147,plain,
% 2.27/1.00      ( l1_pre_topc(sK5) != iProver_top
% 2.27/1.00      | l1_pre_topc(sK4) = iProver_top ),
% 2.27/1.00      inference(superposition,[status(thm)],[c_3219,c_3208]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_2403,negated_conjecture,
% 2.27/1.00      ( m1_subset_1(sK8,u1_struct_0(sK4)) ),
% 2.27/1.00      inference(subtyping,[status(esa)],[c_25]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3217,plain,
% 2.27/1.00      ( m1_subset_1(sK8,u1_struct_0(sK4)) = iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_2403]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3,plain,
% 2.27/1.00      ( r2_hidden(X0,X1) | ~ m1_subset_1(X0,X1) | v1_xboole_0(X1) ),
% 2.27/1.00      inference(cnf_transformation,[],[f53]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_2415,plain,
% 2.27/1.00      ( r2_hidden(X0_57,X1_57)
% 2.27/1.00      | ~ m1_subset_1(X0_57,X1_57)
% 2.27/1.00      | v1_xboole_0(X1_57) ),
% 2.27/1.00      inference(subtyping,[status(esa)],[c_3]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3206,plain,
% 2.27/1.00      ( r2_hidden(X0_57,X1_57) = iProver_top
% 2.27/1.00      | m1_subset_1(X0_57,X1_57) != iProver_top
% 2.27/1.00      | v1_xboole_0(X1_57) = iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_2415]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_4124,plain,
% 2.27/1.00      ( r2_hidden(sK8,u1_struct_0(sK4)) = iProver_top
% 2.27/1.00      | v1_xboole_0(u1_struct_0(sK4)) = iProver_top ),
% 2.27/1.00      inference(superposition,[status(thm)],[c_3217,c_3206]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_16,plain,
% 2.27/1.00      ( ~ v1_tsep_1(X0,X1)
% 2.27/1.00      | v3_pre_topc(u1_struct_0(X0),X1)
% 2.27/1.00      | ~ m1_pre_topc(X0,X1)
% 2.27/1.00      | ~ m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X1) ),
% 2.27/1.00      inference(cnf_transformation,[],[f97]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_17,plain,
% 2.27/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.27/1.00      | m1_subset_1(u1_struct_0(X0),k1_zfmisc_1(u1_struct_0(X1)))
% 2.27/1.00      | ~ l1_pre_topc(X1) ),
% 2.27/1.00      inference(cnf_transformation,[],[f70]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_228,plain,
% 2.27/1.00      ( ~ m1_pre_topc(X0,X1)
% 2.27/1.00      | v3_pre_topc(u1_struct_0(X0),X1)
% 2.27/1.00      | ~ v1_tsep_1(X0,X1)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X1) ),
% 2.27/1.00      inference(global_propositional_subsumption,
% 2.27/1.00                [status(thm)],
% 2.27/1.00                [c_16,c_17]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_229,plain,
% 2.27/1.00      ( ~ v1_tsep_1(X0,X1)
% 2.27/1.00      | v3_pre_topc(u1_struct_0(X0),X1)
% 2.27/1.00      | ~ m1_pre_topc(X0,X1)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X1) ),
% 2.27/1.00      inference(renaming,[status(thm)],[c_228]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_28,negated_conjecture,
% 2.27/1.00      ( v1_tsep_1(sK4,sK5) ),
% 2.27/1.00      inference(cnf_transformation,[],[f88]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_550,plain,
% 2.27/1.00      ( v3_pre_topc(u1_struct_0(X0),X1)
% 2.27/1.00      | ~ m1_pre_topc(X0,X1)
% 2.27/1.00      | ~ l1_pre_topc(X1)
% 2.27/1.00      | ~ v2_pre_topc(X1)
% 2.27/1.00      | sK5 != X1
% 2.27/1.00      | sK4 != X0 ),
% 2.27/1.00      inference(resolution_lifted,[status(thm)],[c_229,c_28]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_551,plain,
% 2.27/1.00      ( v3_pre_topc(u1_struct_0(sK4),sK5)
% 2.27/1.00      | ~ m1_pre_topc(sK4,sK5)
% 2.27/1.00      | ~ l1_pre_topc(sK5)
% 2.27/1.00      | ~ v2_pre_topc(sK5) ),
% 2.27/1.00      inference(unflattening,[status(thm)],[c_550]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_553,plain,
% 2.27/1.00      ( v3_pre_topc(u1_struct_0(sK4),sK5)
% 2.27/1.00      | ~ l1_pre_topc(sK5)
% 2.27/1.00      | ~ v2_pre_topc(sK5) ),
% 2.27/1.00      inference(global_propositional_subsumption,
% 2.27/1.00                [status(thm)],
% 2.27/1.00                [c_551,c_27]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_2388,plain,
% 2.27/1.00      ( v3_pre_topc(u1_struct_0(sK4),sK5)
% 2.27/1.00      | ~ l1_pre_topc(sK5)
% 2.27/1.00      | ~ v2_pre_topc(sK5) ),
% 2.27/1.00      inference(subtyping,[status(esa)],[c_553]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3232,plain,
% 2.27/1.00      ( v3_pre_topc(u1_struct_0(sK4),sK5) = iProver_top
% 2.27/1.00      | l1_pre_topc(sK5) != iProver_top
% 2.27/1.00      | v2_pre_topc(sK5) != iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_2388]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_552,plain,
% 2.27/1.00      ( v3_pre_topc(u1_struct_0(sK4),sK5) = iProver_top
% 2.27/1.00      | m1_pre_topc(sK4,sK5) != iProver_top
% 2.27/1.00      | l1_pre_topc(sK5) != iProver_top
% 2.27/1.00      | v2_pre_topc(sK5) != iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_551]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3583,plain,
% 2.27/1.00      ( ~ m1_pre_topc(sK5,X0_56)
% 2.27/1.00      | ~ l1_pre_topc(X0_56)
% 2.27/1.00      | l1_pre_topc(sK5) ),
% 2.27/1.00      inference(instantiation,[status(thm)],[c_2413]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3934,plain,
% 2.27/1.00      ( ~ m1_pre_topc(sK5,sK2) | l1_pre_topc(sK5) | ~ l1_pre_topc(sK2) ),
% 2.27/1.00      inference(instantiation,[status(thm)],[c_3583]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3935,plain,
% 2.27/1.00      ( m1_pre_topc(sK5,sK2) != iProver_top
% 2.27/1.00      | l1_pre_topc(sK5) = iProver_top
% 2.27/1.00      | l1_pre_topc(sK2) != iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_3934]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3997,plain,
% 2.27/1.00      ( v3_pre_topc(u1_struct_0(sK4),sK5) = iProver_top
% 2.27/1.00      | v2_pre_topc(sK5) != iProver_top ),
% 2.27/1.00      inference(global_propositional_subsumption,
% 2.27/1.00                [status(thm)],
% 2.27/1.00                [c_3232,c_44,c_51,c_56,c_552,c_3935]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_5,plain,
% 2.27/1.00      ( l1_struct_0(X0) | ~ l1_pre_topc(X0) ),
% 2.27/1.00      inference(cnf_transformation,[],[f58]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_7,plain,
% 2.27/1.00      ( v2_struct_0(X0)
% 2.27/1.00      | ~ l1_struct_0(X0)
% 2.27/1.00      | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 2.27/1.00      inference(cnf_transformation,[],[f60]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_531,plain,
% 2.27/1.00      ( v2_struct_0(X0)
% 2.27/1.00      | ~ l1_pre_topc(X0)
% 2.27/1.00      | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 2.27/1.00      inference(resolution,[status(thm)],[c_5,c_7]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_2389,plain,
% 2.27/1.00      ( v2_struct_0(X0_56)
% 2.27/1.00      | ~ l1_pre_topc(X0_56)
% 2.27/1.00      | ~ v1_xboole_0(u1_struct_0(X0_56)) ),
% 2.27/1.00      inference(subtyping,[status(esa)],[c_531]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3699,plain,
% 2.27/1.00      ( v2_struct_0(sK4)
% 2.27/1.00      | ~ l1_pre_topc(sK4)
% 2.27/1.00      | ~ v1_xboole_0(u1_struct_0(sK4)) ),
% 2.27/1.00      inference(instantiation,[status(thm)],[c_2389]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3700,plain,
% 2.27/1.00      ( v2_struct_0(sK4) = iProver_top
% 2.27/1.00      | l1_pre_topc(sK4) != iProver_top
% 2.27/1.00      | v1_xboole_0(u1_struct_0(sK4)) != iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_3699]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_2408,plain,
% 2.27/1.00      ( ~ m1_pre_topc(X0_56,X1_56)
% 2.27/1.00      | m1_subset_1(u1_struct_0(X0_56),k1_zfmisc_1(u1_struct_0(X1_56)))
% 2.27/1.00      | ~ l1_pre_topc(X1_56) ),
% 2.27/1.00      inference(subtyping,[status(esa)],[c_17]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3588,plain,
% 2.27/1.00      ( ~ m1_pre_topc(sK4,sK5)
% 2.27/1.00      | m1_subset_1(u1_struct_0(sK4),k1_zfmisc_1(u1_struct_0(sK5)))
% 2.27/1.00      | ~ l1_pre_topc(sK5) ),
% 2.27/1.00      inference(instantiation,[status(thm)],[c_2408]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(c_3589,plain,
% 2.27/1.00      ( m1_pre_topc(sK4,sK5) != iProver_top
% 2.27/1.00      | m1_subset_1(u1_struct_0(sK4),k1_zfmisc_1(u1_struct_0(sK5))) = iProver_top
% 2.27/1.00      | l1_pre_topc(sK5) != iProver_top ),
% 2.27/1.00      inference(predicate_to_equality,[status(thm)],[c_3588]) ).
% 2.27/1.00  
% 2.27/1.00  cnf(contradiction,plain,
% 2.27/1.00      ( $false ),
% 2.27/1.00      inference(minisat,
% 2.27/1.00                [status(thm)],
% 2.27/1.00                [c_5406,c_5303,c_4433,c_4147,c_4124,c_3997,c_3935,c_3700,
% 2.27/1.00                 c_3589,c_3262,c_58,c_56,c_51,c_50,c_48,c_44,c_43,c_42]) ).
% 2.27/1.00  
% 2.27/1.00  
% 2.27/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 2.27/1.00  
% 2.27/1.00  ------                               Statistics
% 2.27/1.00  
% 2.27/1.00  ------ General
% 2.27/1.00  
% 2.27/1.00  abstr_ref_over_cycles:                  0
% 2.27/1.00  abstr_ref_under_cycles:                 0
% 2.27/1.00  gc_basic_clause_elim:                   0
% 2.27/1.00  forced_gc_time:                         0
% 2.27/1.00  parsing_time:                           0.012
% 2.27/1.00  unif_index_cands_time:                  0.
% 2.27/1.00  unif_index_add_time:                    0.
% 2.27/1.00  orderings_time:                         0.
% 2.27/1.00  out_proof_time:                         0.014
% 2.27/1.00  total_time:                             0.197
% 2.27/1.00  num_of_symbols:                         61
% 2.27/1.00  num_of_terms:                           3852
% 2.27/1.00  
% 2.27/1.00  ------ Preprocessing
% 2.27/1.00  
% 2.27/1.00  num_of_splits:                          0
% 2.27/1.00  num_of_split_atoms:                     0
% 2.27/1.00  num_of_reused_defs:                     0
% 2.27/1.00  num_eq_ax_congr_red:                    32
% 2.27/1.00  num_of_sem_filtered_clauses:            1
% 2.27/1.00  num_of_subtypes:                        2
% 2.27/1.00  monotx_restored_types:                  0
% 2.27/1.00  sat_num_of_epr_types:                   0
% 2.27/1.00  sat_num_of_non_cyclic_types:            0
% 2.27/1.00  sat_guarded_non_collapsed_types:        0
% 2.27/1.00  num_pure_diseq_elim:                    0
% 2.27/1.00  simp_replaced_by:                       0
% 2.27/1.00  res_preprocessed:                       168
% 2.27/1.00  prep_upred:                             0
% 2.27/1.00  prep_unflattend:                        55
% 2.27/1.00  smt_new_axioms:                         0
% 2.27/1.00  pred_elim_cands:                        10
% 2.27/1.00  pred_elim:                              5
% 2.27/1.00  pred_elim_cl:                           7
% 2.27/1.00  pred_elim_cycles:                       11
% 2.27/1.00  merged_defs:                            8
% 2.27/1.00  merged_defs_ncl:                        0
% 2.27/1.00  bin_hyper_res:                          8
% 2.27/1.00  prep_cycles:                            4
% 2.27/1.00  pred_elim_time:                         0.05
% 2.27/1.00  splitting_time:                         0.
% 2.27/1.00  sem_filter_time:                        0.
% 2.27/1.00  monotx_time:                            0.
% 2.27/1.00  subtype_inf_time:                       0.
% 2.27/1.00  
% 2.27/1.00  ------ Problem properties
% 2.27/1.00  
% 2.27/1.00  clauses:                                34
% 2.27/1.00  conjectures:                            17
% 2.27/1.00  epr:                                    19
% 2.27/1.00  horn:                                   24
% 2.27/1.00  ground:                                 18
% 2.27/1.00  unary:                                  15
% 2.27/1.00  binary:                                 2
% 2.27/1.00  lits:                                   127
% 2.27/1.00  lits_eq:                                5
% 2.27/1.00  fd_pure:                                0
% 2.27/1.00  fd_pseudo:                              0
% 2.27/1.00  fd_cond:                                0
% 2.27/1.00  fd_pseudo_cond:                         0
% 2.27/1.00  ac_symbols:                             0
% 2.27/1.00  
% 2.27/1.00  ------ Propositional Solver
% 2.27/1.00  
% 2.27/1.00  prop_solver_calls:                      28
% 2.27/1.00  prop_fast_solver_calls:                 2172
% 2.27/1.00  smt_solver_calls:                       0
% 2.27/1.00  smt_fast_solver_calls:                  0
% 2.27/1.00  prop_num_of_clauses:                    1003
% 2.27/1.00  prop_preprocess_simplified:             4904
% 2.27/1.00  prop_fo_subsumed:                       55
% 2.27/1.00  prop_solver_time:                       0.
% 2.27/1.00  smt_solver_time:                        0.
% 2.27/1.00  smt_fast_solver_time:                   0.
% 2.27/1.00  prop_fast_solver_time:                  0.
% 2.27/1.00  prop_unsat_core_time:                   0.
% 2.27/1.00  
% 2.27/1.00  ------ QBF
% 2.27/1.00  
% 2.27/1.00  qbf_q_res:                              0
% 2.27/1.00  qbf_num_tautologies:                    0
% 2.27/1.00  qbf_prep_cycles:                        0
% 2.27/1.00  
% 2.27/1.00  ------ BMC1
% 2.27/1.00  
% 2.27/1.00  bmc1_current_bound:                     -1
% 2.27/1.00  bmc1_last_solved_bound:                 -1
% 2.27/1.00  bmc1_unsat_core_size:                   -1
% 2.27/1.00  bmc1_unsat_core_parents_size:           -1
% 2.27/1.00  bmc1_merge_next_fun:                    0
% 2.27/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.27/1.00  
% 2.27/1.00  ------ Instantiation
% 2.27/1.00  
% 2.27/1.00  inst_num_of_clauses:                    282
% 2.27/1.00  inst_num_in_passive:                    28
% 2.27/1.00  inst_num_in_active:                     239
% 2.27/1.00  inst_num_in_unprocessed:                15
% 2.27/1.00  inst_num_of_loops:                      280
% 2.27/1.00  inst_num_of_learning_restarts:          0
% 2.27/1.00  inst_num_moves_active_passive:          34
% 2.27/1.00  inst_lit_activity:                      0
% 2.27/1.00  inst_lit_activity_moves:                0
% 2.27/1.00  inst_num_tautologies:                   0
% 2.27/1.00  inst_num_prop_implied:                  0
% 2.27/1.00  inst_num_existing_simplified:           0
% 2.27/1.00  inst_num_eq_res_simplified:             0
% 2.27/1.00  inst_num_child_elim:                    0
% 2.27/1.00  inst_num_of_dismatching_blockings:      9
% 2.27/1.00  inst_num_of_non_proper_insts:           281
% 2.27/1.00  inst_num_of_duplicates:                 0
% 2.27/1.00  inst_inst_num_from_inst_to_res:         0
% 2.27/1.00  inst_dismatching_checking_time:         0.
% 2.27/1.00  
% 2.27/1.00  ------ Resolution
% 2.27/1.00  
% 2.27/1.00  res_num_of_clauses:                     0
% 2.27/1.00  res_num_in_passive:                     0
% 2.27/1.00  res_num_in_active:                      0
% 2.27/1.00  res_num_of_loops:                       172
% 2.27/1.00  res_forward_subset_subsumed:            51
% 2.27/1.00  res_backward_subset_subsumed:           4
% 2.27/1.00  res_forward_subsumed:                   0
% 2.27/1.00  res_backward_subsumed:                  0
% 2.27/1.00  res_forward_subsumption_resolution:     8
% 2.27/1.00  res_backward_subsumption_resolution:    0
% 2.27/1.00  res_clause_to_clause_subsumption:       250
% 2.27/1.00  res_orphan_elimination:                 0
% 2.27/1.00  res_tautology_del:                      94
% 2.27/1.00  res_num_eq_res_simplified:              0
% 2.27/1.00  res_num_sel_changes:                    0
% 2.27/1.00  res_moves_from_active_to_pass:          0
% 2.27/1.00  
% 2.27/1.00  ------ Superposition
% 2.27/1.00  
% 2.27/1.00  sup_time_total:                         0.
% 2.27/1.00  sup_time_generating:                    0.
% 2.27/1.00  sup_time_sim_full:                      0.
% 2.27/1.00  sup_time_sim_immed:                     0.
% 2.27/1.00  
% 2.27/1.00  sup_num_of_clauses:                     63
% 2.27/1.00  sup_num_in_active:                      53
% 2.27/1.00  sup_num_in_passive:                     10
% 2.27/1.00  sup_num_of_loops:                       54
% 2.27/1.00  sup_fw_superposition:                   22
% 2.27/1.00  sup_bw_superposition:                   15
% 2.27/1.00  sup_immediate_simplified:               4
% 2.27/1.00  sup_given_eliminated:                   0
% 2.27/1.00  comparisons_done:                       0
% 2.27/1.00  comparisons_avoided:                    0
% 2.27/1.00  
% 2.27/1.00  ------ Simplifications
% 2.27/1.00  
% 2.27/1.00  
% 2.27/1.00  sim_fw_subset_subsumed:                 4
% 2.27/1.00  sim_bw_subset_subsumed:                 2
% 2.27/1.00  sim_fw_subsumed:                        0
% 2.27/1.00  sim_bw_subsumed:                        0
% 2.27/1.00  sim_fw_subsumption_res:                 0
% 2.27/1.00  sim_bw_subsumption_res:                 0
% 2.27/1.00  sim_tautology_del:                      4
% 2.27/1.00  sim_eq_tautology_del:                   0
% 2.27/1.00  sim_eq_res_simp:                        0
% 2.27/1.00  sim_fw_demodulated:                     0
% 2.27/1.00  sim_bw_demodulated:                     0
% 2.27/1.00  sim_light_normalised:                   3
% 2.27/1.00  sim_joinable_taut:                      0
% 2.27/1.00  sim_joinable_simp:                      0
% 2.27/1.00  sim_ac_normalised:                      0
% 2.27/1.00  sim_smt_subsumption:                    0
% 2.27/1.00  
%------------------------------------------------------------------------------
