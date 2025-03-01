%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:22:51 EST 2020

% Result     : Theorem 1.72s
% Output     : CNFRefutation 1.72s
% Verified   : 
% Statistics : Number of formulae       :  184 (1465 expanded)
%              Number of clauses        :  115 ( 376 expanded)
%              Number of leaves         :   21 ( 433 expanded)
%              Depth                    :   27
%              Number of atoms          :  868 (10592 expanded)
%              Number of equality atoms :  297 ( 602 expanded)
%              Maximal formula depth    :   19 (   6 average)
%              Maximal clause size      :   24 (   4 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f13,conjecture,(
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
                  ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                    & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1))
                    & v1_funct_1(X3) )
                 => r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),X3,k3_tmap_1(X0,X1,X2,X2,X3)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,negated_conjecture,(
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
                    ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                      & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1))
                      & v1_funct_1(X3) )
                   => r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),X3,k3_tmap_1(X0,X1,X2,X2,X3)) ) ) ) ) ),
    inference(negated_conjecture,[],[f13])).

fof(f36,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),X3,k3_tmap_1(X0,X1,X2,X2,X3))
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                  & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1))
                  & v1_funct_1(X3) )
              & m1_pre_topc(X2,X0)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f37,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),X3,k3_tmap_1(X0,X1,X2,X2,X3))
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                  & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1))
                  & v1_funct_1(X3) )
              & m1_pre_topc(X2,X0)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(X0)
      & v2_pre_topc(X0)
      & ~ v2_struct_0(X0) ) ),
    inference(flattening,[],[f36])).

fof(f44,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),X3,k3_tmap_1(X0,X1,X2,X2,X3))
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
          & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1))
          & v1_funct_1(X3) )
     => ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),sK3,k3_tmap_1(X0,X1,X2,X2,sK3))
        & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
        & v1_funct_2(sK3,u1_struct_0(X2),u1_struct_0(X1))
        & v1_funct_1(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f43,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),X3,k3_tmap_1(X0,X1,X2,X2,X3))
              & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
              & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1))
              & v1_funct_1(X3) )
          & m1_pre_topc(X2,X0)
          & ~ v2_struct_0(X2) )
     => ( ? [X3] :
            ( ~ r2_funct_2(u1_struct_0(sK2),u1_struct_0(X1),X3,k3_tmap_1(X0,X1,sK2,sK2,X3))
            & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(X1))))
            & v1_funct_2(X3,u1_struct_0(sK2),u1_struct_0(X1))
            & v1_funct_1(X3) )
        & m1_pre_topc(sK2,X0)
        & ~ v2_struct_0(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f42,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),X3,k3_tmap_1(X0,X1,X2,X2,X3))
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                  & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1))
                  & v1_funct_1(X3) )
              & m1_pre_topc(X2,X0)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
     => ( ? [X2] :
            ( ? [X3] :
                ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(sK1),X3,k3_tmap_1(X0,sK1,X2,X2,X3))
                & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(sK1))))
                & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(sK1))
                & v1_funct_1(X3) )
            & m1_pre_topc(X2,X0)
            & ~ v2_struct_0(X2) )
        & l1_pre_topc(sK1)
        & v2_pre_topc(sK1)
        & ~ v2_struct_0(sK1) ) ) ),
    introduced(choice_axiom,[])).

fof(f41,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),X3,k3_tmap_1(X0,X1,X2,X2,X3))
                    & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                    & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1))
                    & v1_funct_1(X3) )
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
                  ( ~ r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),X3,k3_tmap_1(sK0,X1,X2,X2,X3))
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                  & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1))
                  & v1_funct_1(X3) )
              & m1_pre_topc(X2,sK0)
              & ~ v2_struct_0(X2) )
          & l1_pre_topc(X1)
          & v2_pre_topc(X1)
          & ~ v2_struct_0(X1) )
      & l1_pre_topc(sK0)
      & v2_pre_topc(sK0)
      & ~ v2_struct_0(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f45,plain,
    ( ~ r2_funct_2(u1_struct_0(sK2),u1_struct_0(sK1),sK3,k3_tmap_1(sK0,sK1,sK2,sK2,sK3))
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))))
    & v1_funct_2(sK3,u1_struct_0(sK2),u1_struct_0(sK1))
    & v1_funct_1(sK3)
    & m1_pre_topc(sK2,sK0)
    & ~ v2_struct_0(sK2)
    & l1_pre_topc(sK1)
    & v2_pre_topc(sK1)
    & ~ v2_struct_0(sK1)
    & l1_pre_topc(sK0)
    & v2_pre_topc(sK0)
    & ~ v2_struct_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f37,f44,f43,f42,f41])).

fof(f69,plain,(
    m1_pre_topc(sK2,sK0) ),
    inference(cnf_transformation,[],[f45])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
         => ( ( v1_funct_2(X2,X0,X1)
              & v1_funct_1(X2) )
           => ( v1_partfun1(X2,X0)
              & v1_funct_1(X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f22,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( ( v1_partfun1(X2,X0)
            & v1_funct_1(X2) )
          | ~ v1_funct_2(X2,X0,X1)
          | ~ v1_funct_1(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f21])).

fof(f51,plain,(
    ! [X2,X0,X1] :
      ( v1_partfun1(X2,X0)
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f4])).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( v1_partfun1(X1,X0)
      <=> k1_relat_1(X1) = X0 )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f23])).

fof(f38,plain,(
    ! [X0,X1] :
      ( ( ( v1_partfun1(X1,X0)
          | k1_relat_1(X1) != X0 )
        & ( k1_relat_1(X1) = X0
          | ~ v1_partfun1(X1,X0) ) )
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f24])).

fof(f52,plain,(
    ! [X0,X1] :
      ( k1_relat_1(X1) = X0
      | ~ v1_partfun1(X1,X0)
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f71,plain,(
    v1_funct_2(sK3,u1_struct_0(sK2),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f45])).

fof(f65,plain,(
    ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f45])).

fof(f67,plain,(
    l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f45])).

fof(f70,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f45])).

fof(f72,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f45])).

fof(f10,axiom,(
    ! [X0] :
      ( ( l1_struct_0(X0)
        & ~ v2_struct_0(X0) )
     => ~ v1_xboole_0(u1_struct_0(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f31,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(flattening,[],[f30])).

fof(f58,plain,(
    ! [X0] :
      ( ~ v1_xboole_0(u1_struct_0(X0))
      | ~ l1_struct_0(X0)
      | v2_struct_0(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f9,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => l1_struct_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f57,plain,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f29])).

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
              ( m1_pre_topc(X2,X0)
             => ! [X3] :
                  ( m1_pre_topc(X3,X0)
                 => ! [X4] :
                      ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                        & v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1))
                        & v1_funct_1(X4) )
                     => ( m1_pre_topc(X3,X2)
                       => k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
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
    inference(ennf_transformation,[],[f11])).

fof(f33,plain,(
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
    inference(flattening,[],[f32])).

fof(f59,plain,(
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
    inference(cnf_transformation,[],[f33])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X2) )
     => k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1,X2,X3] :
      ( k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f26,plain,(
    ! [X0,X1,X2,X3] :
      ( k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f25])).

fof(f54,plain,(
    ! [X2,X0,X3,X1] :
      ( k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f66,plain,(
    v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f45])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => k7_relat_1(X1,X0) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f17,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f16])).

fof(f46,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f47,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f12,axiom,(
    ! [X0] :
      ( ( l1_pre_topc(X0)
        & v2_pre_topc(X0) )
     => ! [X1] :
          ( m1_pre_topc(X1,X0)
         => ! [X2] :
              ( m1_pre_topc(X2,X0)
             => ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
              <=> m1_pre_topc(X1,X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
              <=> m1_pre_topc(X1,X2) )
              | ~ m1_pre_topc(X2,X0) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f35,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
              <=> m1_pre_topc(X1,X2) )
              | ~ m1_pre_topc(X2,X0) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(flattening,[],[f34])).

fof(f40,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( ( ( r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
                  | ~ m1_pre_topc(X1,X2) )
                & ( m1_pre_topc(X1,X2)
                  | ~ r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) ) )
              | ~ m1_pre_topc(X2,X0) )
          | ~ m1_pre_topc(X1,X0) )
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f35])).

fof(f60,plain,(
    ! [X2,X0,X1] :
      ( m1_pre_topc(X1,X2)
      | ~ r1_tarski(u1_struct_0(X1),u1_struct_0(X2))
      | ~ m1_pre_topc(X2,X0)
      | ~ m1_pre_topc(X1,X0)
      | ~ l1_pre_topc(X0)
      | ~ v2_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( r2_funct_2(X0,X1,X2,X3)
      <=> X2 = X3 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_funct_2(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f28,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_funct_2(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f27])).

fof(f39,plain,(
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
    inference(nnf_transformation,[],[f28])).

fof(f56,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_funct_2(X0,X1,X2,X3)
      | X2 != X3
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f75,plain,(
    ! [X0,X3,X1] :
      ( r2_funct_2(X0,X1,X3,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(equality_resolution,[],[f56])).

fof(f73,plain,(
    ~ r2_funct_2(u1_struct_0(sK2),u1_struct_0(sK1),sK3,k3_tmap_1(sK0,sK1,sK2,sK2,sK3)) ),
    inference(cnf_transformation,[],[f45])).

fof(f64,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f45])).

fof(f63,plain,(
    v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f45])).

fof(f62,plain,(
    ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_20,negated_conjecture,
    ( m1_pre_topc(sK2,sK0) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_927,negated_conjecture,
    ( m1_pre_topc(sK2,sK0) ),
    inference(subtyping,[status(esa)],[c_20])).

cnf(c_1070,plain,
    ( m1_pre_topc(sK2,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_927])).

cnf(c_4,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_xboole_0(X2)
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v4_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_7,plain,
    ( ~ v1_partfun1(X0,X1)
    | ~ v4_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_348,plain,
    ( ~ v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_relat_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(resolution,[status(thm)],[c_3,c_7])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_352,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_partfun1(X0,X1)
    | k1_relat_1(X0) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_348,c_7,c_3,c_2])).

cnf(c_353,plain,
    ( ~ v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relat_1(X0) = X1 ),
    inference(renaming,[status(thm)],[c_352])).

cnf(c_425,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
    | v1_xboole_0(X2)
    | ~ v1_funct_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(resolution,[status(thm)],[c_4,c_353])).

cnf(c_429,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_2(X0,X1,X2)
    | v1_xboole_0(X2)
    | ~ v1_funct_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_425,c_7,c_4,c_3,c_2])).

cnf(c_430,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_xboole_0(X2)
    | ~ v1_funct_1(X0)
    | k1_relat_1(X0) = X1 ),
    inference(renaming,[status(thm)],[c_429])).

cnf(c_18,negated_conjecture,
    ( v1_funct_2(sK3,u1_struct_0(sK2),u1_struct_0(sK1)) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_576,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_xboole_0(X2)
    | ~ v1_funct_1(X0)
    | u1_struct_0(sK1) != X2
    | u1_struct_0(sK2) != X1
    | k1_relat_1(X0) = X1
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_430,c_18])).

cnf(c_577,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))))
    | v1_xboole_0(u1_struct_0(sK1))
    | ~ v1_funct_1(sK3)
    | k1_relat_1(sK3) = u1_struct_0(sK2) ),
    inference(unflattening,[status(thm)],[c_576])).

cnf(c_24,negated_conjecture,
    ( ~ v2_struct_0(sK1) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_22,negated_conjecture,
    ( l1_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_19,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_17,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_12,plain,
    ( v2_struct_0(X0)
    | ~ l1_struct_0(X0)
    | ~ v1_xboole_0(u1_struct_0(X0)) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_48,plain,
    ( v2_struct_0(sK1)
    | ~ l1_struct_0(sK1)
    | ~ v1_xboole_0(u1_struct_0(sK1)) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_11,plain,
    ( ~ l1_pre_topc(X0)
    | l1_struct_0(X0) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_51,plain,
    ( ~ l1_pre_topc(sK1)
    | l1_struct_0(sK1) ),
    inference(instantiation,[status(thm)],[c_11])).

cnf(c_579,plain,
    ( k1_relat_1(sK3) = u1_struct_0(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_577,c_24,c_22,c_19,c_17,c_48,c_51])).

cnf(c_919,plain,
    ( k1_relat_1(sK3) = u1_struct_0(sK2) ),
    inference(subtyping,[status(esa)],[c_579])).

cnf(c_13,plain,
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
    inference(cnf_transformation,[],[f59])).

cnf(c_584,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_pre_topc(X1,X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X4))))
    | ~ v2_pre_topc(X4)
    | ~ v2_pre_topc(X2)
    | v2_struct_0(X2)
    | v2_struct_0(X4)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X4)
    | ~ v1_funct_1(X3)
    | k2_partfun1(u1_struct_0(X1),u1_struct_0(X4),X3,u1_struct_0(X0)) = k3_tmap_1(X2,X4,X1,X0,X3)
    | u1_struct_0(X4) != u1_struct_0(sK1)
    | u1_struct_0(X1) != u1_struct_0(sK2)
    | sK3 != X3 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_18])).

cnf(c_585,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X3))))
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X3)
    | v2_struct_0(X3)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X3)
    | ~ l1_pre_topc(X1)
    | ~ v1_funct_1(sK3)
    | k2_partfun1(u1_struct_0(X2),u1_struct_0(X3),sK3,u1_struct_0(X0)) = k3_tmap_1(X1,X3,X2,X0,sK3)
    | u1_struct_0(X3) != u1_struct_0(sK1)
    | u1_struct_0(X2) != u1_struct_0(sK2) ),
    inference(unflattening,[status(thm)],[c_584])).

cnf(c_589,plain,
    ( ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X3)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | ~ v2_pre_topc(X3)
    | ~ v2_pre_topc(X1)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X3))))
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_pre_topc(X0,X2)
    | ~ m1_pre_topc(X0,X1)
    | k2_partfun1(u1_struct_0(X2),u1_struct_0(X3),sK3,u1_struct_0(X0)) = k3_tmap_1(X1,X3,X2,X0,sK3)
    | u1_struct_0(X3) != u1_struct_0(sK1)
    | u1_struct_0(X2) != u1_struct_0(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_585,c_19])).

cnf(c_590,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X0)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X3))))
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X3)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X3)
    | k2_partfun1(u1_struct_0(X0),u1_struct_0(X3),sK3,u1_struct_0(X2)) = k3_tmap_1(X1,X3,X0,X2,sK3)
    | u1_struct_0(X3) != u1_struct_0(sK1)
    | u1_struct_0(X0) != u1_struct_0(sK2) ),
    inference(renaming,[status(thm)],[c_589])).

cnf(c_730,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_pre_topc(X0,X2)
    | ~ v2_pre_topc(X3)
    | ~ v2_pre_topc(X1)
    | v2_struct_0(X3)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X3)
    | ~ l1_pre_topc(X1)
    | k2_partfun1(u1_struct_0(X2),u1_struct_0(X3),sK3,u1_struct_0(X0)) = k3_tmap_1(X1,X3,X2,X0,sK3)
    | u1_struct_0(X3) != u1_struct_0(sK1)
    | u1_struct_0(X2) != u1_struct_0(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X3))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))
    | sK3 != sK3 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_590])).

cnf(c_847,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X0)
    | ~ m1_pre_topc(X2,X1)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X3)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X3)
    | k2_partfun1(u1_struct_0(X0),u1_struct_0(X3),sK3,u1_struct_0(X2)) = k3_tmap_1(X1,X3,X0,X2,sK3)
    | u1_struct_0(X3) != u1_struct_0(sK1)
    | u1_struct_0(X0) != u1_struct_0(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X3))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) ),
    inference(equality_resolution_simp,[status(thm)],[c_730])).

cnf(c_915,plain,
    ( ~ m1_pre_topc(X0_54,X1_54)
    | ~ m1_pre_topc(X2_54,X0_54)
    | ~ m1_pre_topc(X2_54,X1_54)
    | ~ v2_pre_topc(X1_54)
    | ~ v2_pre_topc(X3_54)
    | v2_struct_0(X1_54)
    | v2_struct_0(X3_54)
    | ~ l1_pre_topc(X1_54)
    | ~ l1_pre_topc(X3_54)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X3_54))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))
    | u1_struct_0(X3_54) != u1_struct_0(sK1)
    | u1_struct_0(X0_54) != u1_struct_0(sK2)
    | k2_partfun1(u1_struct_0(X0_54),u1_struct_0(X3_54),sK3,u1_struct_0(X2_54)) = k3_tmap_1(X1_54,X3_54,X0_54,X2_54,sK3) ),
    inference(subtyping,[status(esa)],[c_847])).

cnf(c_1081,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))
    | u1_struct_0(X1_54) != u1_struct_0(sK1)
    | u1_struct_0(X0_54) != u1_struct_0(sK2)
    | k2_partfun1(u1_struct_0(X0_54),u1_struct_0(X1_54),sK3,u1_struct_0(X2_54)) = k3_tmap_1(X3_54,X1_54,X0_54,X2_54,sK3)
    | m1_pre_topc(X0_54,X3_54) != iProver_top
    | m1_pre_topc(X2_54,X3_54) != iProver_top
    | m1_pre_topc(X2_54,X0_54) != iProver_top
    | v2_pre_topc(X3_54) != iProver_top
    | v2_pre_topc(X1_54) != iProver_top
    | v2_struct_0(X3_54) = iProver_top
    | v2_struct_0(X1_54) = iProver_top
    | l1_pre_topc(X3_54) != iProver_top
    | l1_pre_topc(X1_54) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_915])).

cnf(c_1135,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))) != k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK1)))
    | u1_struct_0(X1_54) != u1_struct_0(sK1)
    | u1_struct_0(X0_54) != k1_relat_1(sK3)
    | k2_partfun1(u1_struct_0(X0_54),u1_struct_0(X1_54),sK3,u1_struct_0(X2_54)) = k3_tmap_1(X3_54,X1_54,X0_54,X2_54,sK3)
    | m1_pre_topc(X2_54,X0_54) != iProver_top
    | m1_pre_topc(X2_54,X3_54) != iProver_top
    | m1_pre_topc(X0_54,X3_54) != iProver_top
    | v2_pre_topc(X1_54) != iProver_top
    | v2_pre_topc(X3_54) != iProver_top
    | v2_struct_0(X1_54) = iProver_top
    | v2_struct_0(X3_54) = iProver_top
    | l1_pre_topc(X1_54) != iProver_top
    | l1_pre_topc(X3_54) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1081,c_919])).

cnf(c_1446,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(X0_54))) != k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK1)))
    | u1_struct_0(X0_54) != u1_struct_0(sK1)
    | u1_struct_0(sK2) != k1_relat_1(sK3)
    | k2_partfun1(u1_struct_0(sK2),u1_struct_0(X0_54),sK3,u1_struct_0(X1_54)) = k3_tmap_1(X2_54,X0_54,sK2,X1_54,sK3)
    | m1_pre_topc(X1_54,X2_54) != iProver_top
    | m1_pre_topc(X1_54,sK2) != iProver_top
    | m1_pre_topc(sK2,X2_54) != iProver_top
    | v2_pre_topc(X2_54) != iProver_top
    | v2_pre_topc(X0_54) != iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | v2_struct_0(X2_54) = iProver_top
    | l1_pre_topc(X0_54) != iProver_top
    | l1_pre_topc(X2_54) != iProver_top ),
    inference(superposition,[status(thm)],[c_919,c_1135])).

cnf(c_1488,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(X0_54))) != k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK1)))
    | u1_struct_0(X0_54) != u1_struct_0(sK1)
    | k1_relat_1(sK3) != k1_relat_1(sK3)
    | k2_partfun1(k1_relat_1(sK3),u1_struct_0(X0_54),sK3,u1_struct_0(X1_54)) = k3_tmap_1(X2_54,X0_54,sK2,X1_54,sK3)
    | m1_pre_topc(X1_54,X2_54) != iProver_top
    | m1_pre_topc(X1_54,sK2) != iProver_top
    | m1_pre_topc(sK2,X2_54) != iProver_top
    | v2_pre_topc(X2_54) != iProver_top
    | v2_pre_topc(X0_54) != iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | v2_struct_0(X2_54) = iProver_top
    | l1_pre_topc(X0_54) != iProver_top
    | l1_pre_topc(X2_54) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1446,c_919])).

cnf(c_1489,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(X0_54))) != k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK1)))
    | u1_struct_0(X0_54) != u1_struct_0(sK1)
    | k2_partfun1(k1_relat_1(sK3),u1_struct_0(X0_54),sK3,u1_struct_0(X1_54)) = k3_tmap_1(X2_54,X0_54,sK2,X1_54,sK3)
    | m1_pre_topc(X1_54,X2_54) != iProver_top
    | m1_pre_topc(X1_54,sK2) != iProver_top
    | m1_pre_topc(sK2,X2_54) != iProver_top
    | v2_pre_topc(X2_54) != iProver_top
    | v2_pre_topc(X0_54) != iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | v2_struct_0(X2_54) = iProver_top
    | l1_pre_topc(X0_54) != iProver_top
    | l1_pre_topc(X2_54) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_1488])).

cnf(c_1759,plain,
    ( u1_struct_0(sK1) != u1_struct_0(sK1)
    | k2_partfun1(k1_relat_1(sK3),u1_struct_0(sK1),sK3,u1_struct_0(X0_54)) = k3_tmap_1(X1_54,sK1,sK2,X0_54,sK3)
    | m1_pre_topc(X0_54,X1_54) != iProver_top
    | m1_pre_topc(X0_54,sK2) != iProver_top
    | m1_pre_topc(sK2,X1_54) != iProver_top
    | v2_pre_topc(X1_54) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | v2_struct_0(X1_54) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(X1_54) != iProver_top
    | l1_pre_topc(sK1) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1489])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | k2_partfun1(X1,X2,X0,X3) = k7_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_661,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_partfun1(X1,X2,X0,X3) = k7_relat_1(X0,X3)
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_19])).

cnf(c_662,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | k2_partfun1(X0,X1,sK3,X2) = k7_relat_1(sK3,X2) ),
    inference(unflattening,[status(thm)],[c_661])).

cnf(c_777,plain,
    ( k2_partfun1(X0,X1,sK3,X2) = k7_relat_1(sK3,X2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | sK3 != sK3 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_662])).

cnf(c_845,plain,
    ( k2_partfun1(X0,X1,sK3,X2) = k7_relat_1(sK3,X2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(equality_resolution_simp,[status(thm)],[c_777])).

cnf(c_916,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_55,X1_55))
    | k2_partfun1(X0_55,X1_55,sK3,X2_55) = k7_relat_1(sK3,X2_55) ),
    inference(subtyping,[status(esa)],[c_845])).

cnf(c_1116,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_55,X1_55))
    | k2_partfun1(X0_55,X1_55,sK3,X2_55) = k7_relat_1(sK3,X2_55) ),
    inference(light_normalisation,[status(thm)],[c_916,c_919])).

cnf(c_1333,plain,
    ( k2_partfun1(k1_relat_1(sK3),u1_struct_0(sK1),sK3,X0_55) = k7_relat_1(sK3,X0_55) ),
    inference(equality_resolution,[status(thm)],[c_1116])).

cnf(c_1760,plain,
    ( u1_struct_0(sK1) != u1_struct_0(sK1)
    | k3_tmap_1(X0_54,sK1,sK2,X1_54,sK3) = k7_relat_1(sK3,u1_struct_0(X1_54))
    | m1_pre_topc(X1_54,X0_54) != iProver_top
    | m1_pre_topc(X1_54,sK2) != iProver_top
    | m1_pre_topc(sK2,X0_54) != iProver_top
    | v2_pre_topc(X0_54) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(X0_54) != iProver_top
    | l1_pre_topc(sK1) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1759,c_1333])).

cnf(c_1761,plain,
    ( k3_tmap_1(X0_54,sK1,sK2,X1_54,sK3) = k7_relat_1(sK3,u1_struct_0(X1_54))
    | m1_pre_topc(X1_54,X0_54) != iProver_top
    | m1_pre_topc(X1_54,sK2) != iProver_top
    | m1_pre_topc(sK2,X0_54) != iProver_top
    | v2_pre_topc(X0_54) != iProver_top
    | v2_pre_topc(sK1) != iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | v2_struct_0(sK1) = iProver_top
    | l1_pre_topc(X0_54) != iProver_top
    | l1_pre_topc(sK1) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_1760])).

cnf(c_31,plain,
    ( v2_struct_0(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_23,negated_conjecture,
    ( v2_pre_topc(sK1) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_32,plain,
    ( v2_pre_topc(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_33,plain,
    ( l1_pre_topc(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_1948,plain,
    ( l1_pre_topc(X0_54) != iProver_top
    | v2_pre_topc(X0_54) != iProver_top
    | m1_pre_topc(sK2,X0_54) != iProver_top
    | m1_pre_topc(X1_54,sK2) != iProver_top
    | m1_pre_topc(X1_54,X0_54) != iProver_top
    | k3_tmap_1(X0_54,sK1,sK2,X1_54,sK3) = k7_relat_1(sK3,u1_struct_0(X1_54))
    | v2_struct_0(X0_54) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1761,c_31,c_32,c_33])).

cnf(c_1949,plain,
    ( k3_tmap_1(X0_54,sK1,sK2,X1_54,sK3) = k7_relat_1(sK3,u1_struct_0(X1_54))
    | m1_pre_topc(X1_54,X0_54) != iProver_top
    | m1_pre_topc(X1_54,sK2) != iProver_top
    | m1_pre_topc(sK2,X0_54) != iProver_top
    | v2_pre_topc(X0_54) != iProver_top
    | v2_struct_0(X0_54) = iProver_top
    | l1_pre_topc(X0_54) != iProver_top ),
    inference(renaming,[status(thm)],[c_1948])).

cnf(c_1959,plain,
    ( k3_tmap_1(sK0,sK1,sK2,sK2,sK3) = k7_relat_1(sK3,u1_struct_0(sK2))
    | m1_pre_topc(sK2,sK0) != iProver_top
    | m1_pre_topc(sK2,sK2) != iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | v2_struct_0(sK0) = iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1070,c_1949])).

cnf(c_0,plain,
    ( ~ v4_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_368,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(resolution,[status(thm)],[c_3,c_0])).

cnf(c_372,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relat_1(X0,X1) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_368,c_3,c_2,c_0])).

cnf(c_696,plain,
    ( k7_relat_1(X0,X1) = X0
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_372,c_17])).

cnf(c_697,plain,
    ( k7_relat_1(sK3,X0) = sK3
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_696])).

cnf(c_918,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_55,X1_55))
    | k7_relat_1(sK3,X0_55) = sK3 ),
    inference(subtyping,[status(esa)],[c_697])).

cnf(c_1111,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_55,X1_55))
    | k7_relat_1(sK3,X0_55) = sK3 ),
    inference(light_normalisation,[status(thm)],[c_918,c_919])).

cnf(c_1330,plain,
    ( k7_relat_1(sK3,k1_relat_1(sK3)) = sK3 ),
    inference(equality_resolution,[status(thm)],[c_1111])).

cnf(c_1978,plain,
    ( k3_tmap_1(sK0,sK1,sK2,sK2,sK3) = sK3
    | m1_pre_topc(sK2,sK0) != iProver_top
    | m1_pre_topc(sK2,sK2) != iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | v2_struct_0(sK0) = iProver_top
    | l1_pre_topc(sK0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1959,c_919,c_1330])).

cnf(c_939,plain,
    ( k1_relat_1(X0_53) = k1_relat_1(X1_53)
    | X0_53 != X1_53 ),
    theory(equality)).

cnf(c_1704,plain,
    ( k1_relat_1(k7_relat_1(sK3,u1_struct_0(sK2))) = k1_relat_1(sK3)
    | k7_relat_1(sK3,u1_struct_0(sK2)) != sK3 ),
    inference(instantiation,[status(thm)],[c_939])).

cnf(c_936,plain,
    ( X0_55 != X1_55
    | X2_55 != X1_55
    | X2_55 = X0_55 ),
    theory(equality)).

cnf(c_1292,plain,
    ( u1_struct_0(sK2) != X0_55
    | k1_relat_1(k7_relat_1(sK3,u1_struct_0(sK2))) != X0_55
    | k1_relat_1(k7_relat_1(sK3,u1_struct_0(sK2))) = u1_struct_0(sK2) ),
    inference(instantiation,[status(thm)],[c_936])).

cnf(c_1559,plain,
    ( u1_struct_0(sK2) != k1_relat_1(sK3)
    | k1_relat_1(k7_relat_1(sK3,u1_struct_0(sK2))) = u1_struct_0(sK2)
    | k1_relat_1(k7_relat_1(sK3,u1_struct_0(sK2))) != k1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_1292])).

cnf(c_1286,plain,
    ( X0_55 != X1_55
    | u1_struct_0(X0_54) != X1_55
    | u1_struct_0(X0_54) = X0_55 ),
    inference(instantiation,[status(thm)],[c_936])).

cnf(c_1366,plain,
    ( X0_55 != u1_struct_0(sK2)
    | u1_struct_0(sK2) = X0_55
    | u1_struct_0(sK2) != u1_struct_0(sK2) ),
    inference(instantiation,[status(thm)],[c_1286])).

cnf(c_1410,plain,
    ( u1_struct_0(sK2) != u1_struct_0(sK2)
    | u1_struct_0(sK2) = k1_relat_1(sK3)
    | k1_relat_1(sK3) != u1_struct_0(sK2) ),
    inference(instantiation,[status(thm)],[c_1366])).

cnf(c_1,plain,
    ( r1_tarski(k1_relat_1(k7_relat_1(X0,X1)),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_15,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X1)
    | m1_pre_topc(X2,X0)
    | ~ r1_tarski(u1_struct_0(X2),u1_struct_0(X0))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_511,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X1)
    | m1_pre_topc(X2,X0)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ v1_relat_1(X3)
    | u1_struct_0(X0) != X4
    | k1_relat_1(k7_relat_1(X3,X4)) != u1_struct_0(X2) ),
    inference(resolution_lifted,[status(thm)],[c_1,c_15])).

cnf(c_512,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X1)
    | m1_pre_topc(X0,X2)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ v1_relat_1(X3)
    | k1_relat_1(k7_relat_1(X3,u1_struct_0(X2))) != u1_struct_0(X0) ),
    inference(unflattening,[status(thm)],[c_511])).

cnf(c_705,plain,
    ( v1_relat_1(X0)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_17])).

cnf(c_706,plain,
    ( v1_relat_1(sK3)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_705])).

cnf(c_801,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X1)
    | m1_pre_topc(X2,X0)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X3,X4))
    | k1_relat_1(k7_relat_1(X5,u1_struct_0(X0))) != u1_struct_0(X2)
    | sK3 != X5 ),
    inference(resolution_lifted,[status(thm)],[c_512,c_706])).

cnf(c_802,plain,
    ( ~ m1_pre_topc(X0,X1)
    | ~ m1_pre_topc(X2,X1)
    | m1_pre_topc(X0,X2)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X3,X4))
    | k1_relat_1(k7_relat_1(sK3,u1_struct_0(X2))) != u1_struct_0(X0) ),
    inference(unflattening,[status(thm)],[c_801])).

cnf(c_917,plain,
    ( ~ m1_pre_topc(X0_54,X1_54)
    | ~ m1_pre_topc(X2_54,X1_54)
    | m1_pre_topc(X0_54,X2_54)
    | ~ v2_pre_topc(X1_54)
    | ~ l1_pre_topc(X1_54)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_55,X1_55))
    | k1_relat_1(k7_relat_1(sK3,u1_struct_0(X2_54))) != u1_struct_0(X0_54) ),
    inference(subtyping,[status(esa)],[c_802])).

cnf(c_928,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_55,X1_55))
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_917])).

cnf(c_1080,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_55,X1_55))
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_928])).

cnf(c_1106,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_55,X1_55))
    | sP0_iProver_split != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1080,c_919])).

cnf(c_1383,plain,
    ( sP0_iProver_split != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1106])).

cnf(c_929,plain,
    ( ~ m1_pre_topc(X0_54,X1_54)
    | ~ m1_pre_topc(X2_54,X1_54)
    | m1_pre_topc(X0_54,X2_54)
    | ~ v2_pre_topc(X1_54)
    | ~ l1_pre_topc(X1_54)
    | k1_relat_1(k7_relat_1(sK3,u1_struct_0(X2_54))) != u1_struct_0(X0_54)
    | ~ sP1_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP1_iProver_split])],[c_917])).

cnf(c_1196,plain,
    ( ~ m1_pre_topc(X0_54,sK0)
    | m1_pre_topc(sK2,X0_54)
    | ~ m1_pre_topc(sK2,sK0)
    | ~ v2_pre_topc(sK0)
    | ~ l1_pre_topc(sK0)
    | ~ sP1_iProver_split
    | k1_relat_1(k7_relat_1(sK3,u1_struct_0(X0_54))) != u1_struct_0(sK2) ),
    inference(instantiation,[status(thm)],[c_929])).

cnf(c_1259,plain,
    ( ~ m1_pre_topc(sK2,sK0)
    | m1_pre_topc(sK2,sK2)
    | ~ v2_pre_topc(sK0)
    | ~ l1_pre_topc(sK0)
    | ~ sP1_iProver_split
    | k1_relat_1(k7_relat_1(sK3,u1_struct_0(sK2))) != u1_struct_0(sK2) ),
    inference(instantiation,[status(thm)],[c_1196])).

cnf(c_1260,plain,
    ( k1_relat_1(k7_relat_1(sK3,u1_struct_0(sK2))) != u1_struct_0(sK2)
    | m1_pre_topc(sK2,sK0) != iProver_top
    | m1_pre_topc(sK2,sK2) = iProver_top
    | v2_pre_topc(sK0) != iProver_top
    | l1_pre_topc(sK0) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1259])).

cnf(c_932,plain,
    ( X0_55 = X0_55 ),
    theory(equality)).

cnf(c_1239,plain,
    ( u1_struct_0(sK2) = u1_struct_0(sK2) ),
    inference(instantiation,[status(thm)],[c_932])).

cnf(c_1213,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))
    | k7_relat_1(sK3,u1_struct_0(sK2)) = sK3 ),
    inference(instantiation,[status(thm)],[c_918])).

cnf(c_933,plain,
    ( X0_56 = X0_56 ),
    theory(equality)).

cnf(c_1211,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) = k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) ),
    inference(instantiation,[status(thm)],[c_933])).

cnf(c_9,plain,
    ( r2_funct_2(X0,X1,X2,X2)
    | ~ v1_funct_2(X2,X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(X2) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_16,negated_conjecture,
    ( ~ r2_funct_2(u1_struct_0(sK2),u1_struct_0(sK1),sK3,k3_tmap_1(sK0,sK1,sK2,sK2,sK3)) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_489,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | k3_tmap_1(sK0,sK1,sK2,sK2,sK3) != X0
    | u1_struct_0(sK1) != X2
    | u1_struct_0(sK2) != X1
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_16])).

cnf(c_490,plain,
    ( ~ v1_funct_2(k3_tmap_1(sK0,sK1,sK2,sK2,sK3),u1_struct_0(sK2),u1_struct_0(sK1))
    | ~ m1_subset_1(k3_tmap_1(sK0,sK1,sK2,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))))
    | ~ v1_funct_1(k3_tmap_1(sK0,sK1,sK2,sK2,sK3))
    | sK3 != k3_tmap_1(sK0,sK1,sK2,sK2,sK3) ),
    inference(unflattening,[status(thm)],[c_489])).

cnf(c_635,plain,
    ( ~ m1_subset_1(k3_tmap_1(sK0,sK1,sK2,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))))
    | ~ v1_funct_1(k3_tmap_1(sK0,sK1,sK2,sK2,sK3))
    | k3_tmap_1(sK0,sK1,sK2,sK2,sK3) != sK3
    | u1_struct_0(sK1) != u1_struct_0(sK1)
    | u1_struct_0(sK2) != u1_struct_0(sK2) ),
    inference(resolution_lifted,[status(thm)],[c_18,c_490])).

cnf(c_673,plain,
    ( ~ m1_subset_1(k3_tmap_1(sK0,sK1,sK2,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))))
    | k3_tmap_1(sK0,sK1,sK2,sK2,sK3) != sK3
    | u1_struct_0(sK1) != u1_struct_0(sK1)
    | u1_struct_0(sK2) != u1_struct_0(sK2) ),
    inference(resolution_lifted,[status(thm)],[c_19,c_635])).

cnf(c_717,plain,
    ( k3_tmap_1(sK0,sK1,sK2,sK2,sK3) != sK3
    | u1_struct_0(sK1) != u1_struct_0(sK1)
    | u1_struct_0(sK2) != u1_struct_0(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) ),
    inference(resolution_lifted,[status(thm)],[c_17,c_673])).

cnf(c_851,plain,
    ( k3_tmap_1(sK0,sK1,sK2,sK2,sK3) != sK3 ),
    inference(equality_resolution_simp,[status(thm)],[c_717])).

cnf(c_914,plain,
    ( k3_tmap_1(sK0,sK1,sK2,sK2,sK3) != sK3 ),
    inference(subtyping,[status(esa)],[c_851])).

cnf(c_930,plain,
    ( sP1_iProver_split
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_917])).

cnf(c_963,plain,
    ( sP1_iProver_split = iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_930])).

cnf(c_35,plain,
    ( m1_pre_topc(sK2,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_25,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_30,plain,
    ( l1_pre_topc(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_26,negated_conjecture,
    ( v2_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_29,plain,
    ( v2_pre_topc(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_27,negated_conjecture,
    ( ~ v2_struct_0(sK0) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_28,plain,
    ( v2_struct_0(sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1978,c_1704,c_1559,c_1410,c_1383,c_1260,c_1239,c_1213,c_1211,c_914,c_963,c_919,c_35,c_30,c_29,c_28])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n009.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 19:24:41 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.72/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.72/0.99  
% 1.72/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.72/0.99  
% 1.72/0.99  ------  iProver source info
% 1.72/0.99  
% 1.72/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.72/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.72/0.99  git: non_committed_changes: false
% 1.72/0.99  git: last_make_outside_of_git: false
% 1.72/0.99  
% 1.72/0.99  ------ 
% 1.72/0.99  
% 1.72/0.99  ------ Input Options
% 1.72/0.99  
% 1.72/0.99  --out_options                           all
% 1.72/0.99  --tptp_safe_out                         true
% 1.72/0.99  --problem_path                          ""
% 1.72/0.99  --include_path                          ""
% 1.72/0.99  --clausifier                            res/vclausify_rel
% 1.72/0.99  --clausifier_options                    --mode clausify
% 1.72/0.99  --stdin                                 false
% 1.72/0.99  --stats_out                             all
% 1.72/0.99  
% 1.72/0.99  ------ General Options
% 1.72/0.99  
% 1.72/0.99  --fof                                   false
% 1.72/0.99  --time_out_real                         305.
% 1.72/0.99  --time_out_virtual                      -1.
% 1.72/0.99  --symbol_type_check                     false
% 1.72/0.99  --clausify_out                          false
% 1.72/0.99  --sig_cnt_out                           false
% 1.72/0.99  --trig_cnt_out                          false
% 1.72/0.99  --trig_cnt_out_tolerance                1.
% 1.72/0.99  --trig_cnt_out_sk_spl                   false
% 1.72/0.99  --abstr_cl_out                          false
% 1.72/0.99  
% 1.72/0.99  ------ Global Options
% 1.72/0.99  
% 1.72/0.99  --schedule                              default
% 1.72/0.99  --add_important_lit                     false
% 1.72/0.99  --prop_solver_per_cl                    1000
% 1.72/0.99  --min_unsat_core                        false
% 1.72/0.99  --soft_assumptions                      false
% 1.72/0.99  --soft_lemma_size                       3
% 1.72/0.99  --prop_impl_unit_size                   0
% 1.72/0.99  --prop_impl_unit                        []
% 1.72/0.99  --share_sel_clauses                     true
% 1.72/0.99  --reset_solvers                         false
% 1.72/0.99  --bc_imp_inh                            [conj_cone]
% 1.72/0.99  --conj_cone_tolerance                   3.
% 1.72/0.99  --extra_neg_conj                        none
% 1.72/0.99  --large_theory_mode                     true
% 1.72/0.99  --prolific_symb_bound                   200
% 1.72/0.99  --lt_threshold                          2000
% 1.72/0.99  --clause_weak_htbl                      true
% 1.72/0.99  --gc_record_bc_elim                     false
% 1.72/0.99  
% 1.72/0.99  ------ Preprocessing Options
% 1.72/0.99  
% 1.72/0.99  --preprocessing_flag                    true
% 1.72/0.99  --time_out_prep_mult                    0.1
% 1.72/0.99  --splitting_mode                        input
% 1.72/0.99  --splitting_grd                         true
% 1.72/0.99  --splitting_cvd                         false
% 1.72/0.99  --splitting_cvd_svl                     false
% 1.72/0.99  --splitting_nvd                         32
% 1.72/0.99  --sub_typing                            true
% 1.72/0.99  --prep_gs_sim                           true
% 1.72/0.99  --prep_unflatten                        true
% 1.72/0.99  --prep_res_sim                          true
% 1.72/0.99  --prep_upred                            true
% 1.72/0.99  --prep_sem_filter                       exhaustive
% 1.72/0.99  --prep_sem_filter_out                   false
% 1.72/0.99  --pred_elim                             true
% 1.72/0.99  --res_sim_input                         true
% 1.72/0.99  --eq_ax_congr_red                       true
% 1.72/0.99  --pure_diseq_elim                       true
% 1.72/0.99  --brand_transform                       false
% 1.72/0.99  --non_eq_to_eq                          false
% 1.72/0.99  --prep_def_merge                        true
% 1.72/0.99  --prep_def_merge_prop_impl              false
% 1.72/0.99  --prep_def_merge_mbd                    true
% 1.72/0.99  --prep_def_merge_tr_red                 false
% 1.72/0.99  --prep_def_merge_tr_cl                  false
% 1.72/0.99  --smt_preprocessing                     true
% 1.72/0.99  --smt_ac_axioms                         fast
% 1.72/0.99  --preprocessed_out                      false
% 1.72/0.99  --preprocessed_stats                    false
% 1.72/0.99  
% 1.72/0.99  ------ Abstraction refinement Options
% 1.72/0.99  
% 1.72/0.99  --abstr_ref                             []
% 1.72/0.99  --abstr_ref_prep                        false
% 1.72/0.99  --abstr_ref_until_sat                   false
% 1.72/0.99  --abstr_ref_sig_restrict                funpre
% 1.72/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.72/0.99  --abstr_ref_under                       []
% 1.72/0.99  
% 1.72/0.99  ------ SAT Options
% 1.72/0.99  
% 1.72/0.99  --sat_mode                              false
% 1.72/0.99  --sat_fm_restart_options                ""
% 1.72/0.99  --sat_gr_def                            false
% 1.72/0.99  --sat_epr_types                         true
% 1.72/0.99  --sat_non_cyclic_types                  false
% 1.72/0.99  --sat_finite_models                     false
% 1.72/0.99  --sat_fm_lemmas                         false
% 1.72/0.99  --sat_fm_prep                           false
% 1.72/0.99  --sat_fm_uc_incr                        true
% 1.72/0.99  --sat_out_model                         small
% 1.72/0.99  --sat_out_clauses                       false
% 1.72/0.99  
% 1.72/0.99  ------ QBF Options
% 1.72/0.99  
% 1.72/0.99  --qbf_mode                              false
% 1.72/0.99  --qbf_elim_univ                         false
% 1.72/0.99  --qbf_dom_inst                          none
% 1.72/0.99  --qbf_dom_pre_inst                      false
% 1.72/0.99  --qbf_sk_in                             false
% 1.72/0.99  --qbf_pred_elim                         true
% 1.72/0.99  --qbf_split                             512
% 1.72/0.99  
% 1.72/0.99  ------ BMC1 Options
% 1.72/0.99  
% 1.72/0.99  --bmc1_incremental                      false
% 1.72/0.99  --bmc1_axioms                           reachable_all
% 1.72/0.99  --bmc1_min_bound                        0
% 1.72/0.99  --bmc1_max_bound                        -1
% 1.72/0.99  --bmc1_max_bound_default                -1
% 1.72/0.99  --bmc1_symbol_reachability              true
% 1.72/0.99  --bmc1_property_lemmas                  false
% 1.72/0.99  --bmc1_k_induction                      false
% 1.72/0.99  --bmc1_non_equiv_states                 false
% 1.72/0.99  --bmc1_deadlock                         false
% 1.72/0.99  --bmc1_ucm                              false
% 1.72/0.99  --bmc1_add_unsat_core                   none
% 1.72/0.99  --bmc1_unsat_core_children              false
% 1.72/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.72/0.99  --bmc1_out_stat                         full
% 1.72/0.99  --bmc1_ground_init                      false
% 1.72/0.99  --bmc1_pre_inst_next_state              false
% 1.72/0.99  --bmc1_pre_inst_state                   false
% 1.72/0.99  --bmc1_pre_inst_reach_state             false
% 1.72/0.99  --bmc1_out_unsat_core                   false
% 1.72/0.99  --bmc1_aig_witness_out                  false
% 1.72/0.99  --bmc1_verbose                          false
% 1.72/0.99  --bmc1_dump_clauses_tptp                false
% 1.72/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.72/0.99  --bmc1_dump_file                        -
% 1.72/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.72/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.72/0.99  --bmc1_ucm_extend_mode                  1
% 1.72/0.99  --bmc1_ucm_init_mode                    2
% 1.72/0.99  --bmc1_ucm_cone_mode                    none
% 1.72/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.72/0.99  --bmc1_ucm_relax_model                  4
% 1.72/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.72/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.72/0.99  --bmc1_ucm_layered_model                none
% 1.72/0.99  --bmc1_ucm_max_lemma_size               10
% 1.72/0.99  
% 1.72/0.99  ------ AIG Options
% 1.72/0.99  
% 1.72/0.99  --aig_mode                              false
% 1.72/0.99  
% 1.72/0.99  ------ Instantiation Options
% 1.72/0.99  
% 1.72/0.99  --instantiation_flag                    true
% 1.72/0.99  --inst_sos_flag                         false
% 1.72/0.99  --inst_sos_phase                        true
% 1.72/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.72/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.72/0.99  --inst_lit_sel_side                     num_symb
% 1.72/0.99  --inst_solver_per_active                1400
% 1.72/0.99  --inst_solver_calls_frac                1.
% 1.72/0.99  --inst_passive_queue_type               priority_queues
% 1.72/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.72/0.99  --inst_passive_queues_freq              [25;2]
% 1.72/0.99  --inst_dismatching                      true
% 1.72/0.99  --inst_eager_unprocessed_to_passive     true
% 1.72/0.99  --inst_prop_sim_given                   true
% 1.72/0.99  --inst_prop_sim_new                     false
% 1.72/0.99  --inst_subs_new                         false
% 1.72/0.99  --inst_eq_res_simp                      false
% 1.72/0.99  --inst_subs_given                       false
% 1.72/0.99  --inst_orphan_elimination               true
% 1.72/0.99  --inst_learning_loop_flag               true
% 1.72/0.99  --inst_learning_start                   3000
% 1.72/0.99  --inst_learning_factor                  2
% 1.72/0.99  --inst_start_prop_sim_after_learn       3
% 1.72/0.99  --inst_sel_renew                        solver
% 1.72/0.99  --inst_lit_activity_flag                true
% 1.72/0.99  --inst_restr_to_given                   false
% 1.72/0.99  --inst_activity_threshold               500
% 1.72/0.99  --inst_out_proof                        true
% 1.72/0.99  
% 1.72/0.99  ------ Resolution Options
% 1.72/0.99  
% 1.72/0.99  --resolution_flag                       true
% 1.72/0.99  --res_lit_sel                           adaptive
% 1.72/0.99  --res_lit_sel_side                      none
% 1.72/0.99  --res_ordering                          kbo
% 1.72/0.99  --res_to_prop_solver                    active
% 1.72/0.99  --res_prop_simpl_new                    false
% 1.72/0.99  --res_prop_simpl_given                  true
% 1.72/0.99  --res_passive_queue_type                priority_queues
% 1.72/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.72/0.99  --res_passive_queues_freq               [15;5]
% 1.72/0.99  --res_forward_subs                      full
% 1.72/0.99  --res_backward_subs                     full
% 1.72/0.99  --res_forward_subs_resolution           true
% 1.72/0.99  --res_backward_subs_resolution          true
% 1.72/0.99  --res_orphan_elimination                true
% 1.72/0.99  --res_time_limit                        2.
% 1.72/0.99  --res_out_proof                         true
% 1.72/0.99  
% 1.72/0.99  ------ Superposition Options
% 1.72/0.99  
% 1.72/0.99  --superposition_flag                    true
% 1.72/0.99  --sup_passive_queue_type                priority_queues
% 1.72/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.72/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.72/0.99  --demod_completeness_check              fast
% 1.72/0.99  --demod_use_ground                      true
% 1.72/0.99  --sup_to_prop_solver                    passive
% 1.72/0.99  --sup_prop_simpl_new                    true
% 1.72/0.99  --sup_prop_simpl_given                  true
% 1.72/0.99  --sup_fun_splitting                     false
% 1.72/0.99  --sup_smt_interval                      50000
% 1.72/0.99  
% 1.72/0.99  ------ Superposition Simplification Setup
% 1.72/0.99  
% 1.72/0.99  --sup_indices_passive                   []
% 1.72/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.72/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.72/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.72/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.72/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.72/0.99  --sup_full_bw                           [BwDemod]
% 1.72/0.99  --sup_immed_triv                        [TrivRules]
% 1.72/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.72/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.72/0.99  --sup_immed_bw_main                     []
% 1.72/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.72/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.72/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.72/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.72/0.99  
% 1.72/0.99  ------ Combination Options
% 1.72/0.99  
% 1.72/0.99  --comb_res_mult                         3
% 1.72/0.99  --comb_sup_mult                         2
% 1.72/0.99  --comb_inst_mult                        10
% 1.72/0.99  
% 1.72/0.99  ------ Debug Options
% 1.72/0.99  
% 1.72/0.99  --dbg_backtrace                         false
% 1.72/0.99  --dbg_dump_prop_clauses                 false
% 1.72/0.99  --dbg_dump_prop_clauses_file            -
% 1.72/0.99  --dbg_out_stat                          false
% 1.72/0.99  ------ Parsing...
% 1.72/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.72/0.99  
% 1.72/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe:8:0s pe_e  sf_s  rm: 9 0s  sf_e  pe_s  pe_e 
% 1.72/0.99  
% 1.72/0.99  ------ Preprocessing... gs_s  sp: 2 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.72/0.99  
% 1.72/0.99  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 1.72/0.99  ------ Proving...
% 1.72/0.99  ------ Problem Properties 
% 1.72/0.99  
% 1.72/0.99  
% 1.72/0.99  clauses                                 16
% 1.72/0.99  conjectures                             8
% 1.72/0.99  EPR                                     9
% 1.72/0.99  Horn                                    14
% 1.72/0.99  unary                                   10
% 1.72/0.99  binary                                  4
% 1.72/0.99  lits                                    38
% 1.72/0.99  lits eq                                 12
% 1.72/0.99  fd_pure                                 0
% 1.72/0.99  fd_pseudo                               0
% 1.72/0.99  fd_cond                                 0
% 1.72/0.99  fd_pseudo_cond                          0
% 1.72/0.99  AC symbols                              0
% 1.72/0.99  
% 1.72/0.99  ------ Schedule dynamic 5 is on 
% 1.72/0.99  
% 1.72/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.72/0.99  
% 1.72/0.99  
% 1.72/0.99  ------ 
% 1.72/0.99  Current options:
% 1.72/0.99  ------ 
% 1.72/0.99  
% 1.72/0.99  ------ Input Options
% 1.72/0.99  
% 1.72/0.99  --out_options                           all
% 1.72/0.99  --tptp_safe_out                         true
% 1.72/0.99  --problem_path                          ""
% 1.72/0.99  --include_path                          ""
% 1.72/0.99  --clausifier                            res/vclausify_rel
% 1.72/0.99  --clausifier_options                    --mode clausify
% 1.72/0.99  --stdin                                 false
% 1.72/0.99  --stats_out                             all
% 1.72/0.99  
% 1.72/0.99  ------ General Options
% 1.72/0.99  
% 1.72/0.99  --fof                                   false
% 1.72/0.99  --time_out_real                         305.
% 1.72/0.99  --time_out_virtual                      -1.
% 1.72/0.99  --symbol_type_check                     false
% 1.72/0.99  --clausify_out                          false
% 1.72/0.99  --sig_cnt_out                           false
% 1.72/0.99  --trig_cnt_out                          false
% 1.72/0.99  --trig_cnt_out_tolerance                1.
% 1.72/0.99  --trig_cnt_out_sk_spl                   false
% 1.72/0.99  --abstr_cl_out                          false
% 1.72/0.99  
% 1.72/0.99  ------ Global Options
% 1.72/0.99  
% 1.72/0.99  --schedule                              default
% 1.72/0.99  --add_important_lit                     false
% 1.72/0.99  --prop_solver_per_cl                    1000
% 1.72/0.99  --min_unsat_core                        false
% 1.72/0.99  --soft_assumptions                      false
% 1.72/0.99  --soft_lemma_size                       3
% 1.72/0.99  --prop_impl_unit_size                   0
% 1.72/0.99  --prop_impl_unit                        []
% 1.72/0.99  --share_sel_clauses                     true
% 1.72/0.99  --reset_solvers                         false
% 1.72/0.99  --bc_imp_inh                            [conj_cone]
% 1.72/0.99  --conj_cone_tolerance                   3.
% 1.72/0.99  --extra_neg_conj                        none
% 1.72/0.99  --large_theory_mode                     true
% 1.72/0.99  --prolific_symb_bound                   200
% 1.72/0.99  --lt_threshold                          2000
% 1.72/0.99  --clause_weak_htbl                      true
% 1.72/0.99  --gc_record_bc_elim                     false
% 1.72/0.99  
% 1.72/0.99  ------ Preprocessing Options
% 1.72/0.99  
% 1.72/0.99  --preprocessing_flag                    true
% 1.72/0.99  --time_out_prep_mult                    0.1
% 1.72/0.99  --splitting_mode                        input
% 1.72/0.99  --splitting_grd                         true
% 1.72/0.99  --splitting_cvd                         false
% 1.72/0.99  --splitting_cvd_svl                     false
% 1.72/0.99  --splitting_nvd                         32
% 1.72/0.99  --sub_typing                            true
% 1.72/0.99  --prep_gs_sim                           true
% 1.72/0.99  --prep_unflatten                        true
% 1.72/0.99  --prep_res_sim                          true
% 1.72/0.99  --prep_upred                            true
% 1.72/0.99  --prep_sem_filter                       exhaustive
% 1.72/0.99  --prep_sem_filter_out                   false
% 1.72/0.99  --pred_elim                             true
% 1.72/0.99  --res_sim_input                         true
% 1.72/0.99  --eq_ax_congr_red                       true
% 1.72/0.99  --pure_diseq_elim                       true
% 1.72/0.99  --brand_transform                       false
% 1.72/0.99  --non_eq_to_eq                          false
% 1.72/0.99  --prep_def_merge                        true
% 1.72/0.99  --prep_def_merge_prop_impl              false
% 1.72/0.99  --prep_def_merge_mbd                    true
% 1.72/0.99  --prep_def_merge_tr_red                 false
% 1.72/0.99  --prep_def_merge_tr_cl                  false
% 1.72/0.99  --smt_preprocessing                     true
% 1.72/0.99  --smt_ac_axioms                         fast
% 1.72/0.99  --preprocessed_out                      false
% 1.72/0.99  --preprocessed_stats                    false
% 1.72/0.99  
% 1.72/0.99  ------ Abstraction refinement Options
% 1.72/0.99  
% 1.72/0.99  --abstr_ref                             []
% 1.72/0.99  --abstr_ref_prep                        false
% 1.72/0.99  --abstr_ref_until_sat                   false
% 1.72/0.99  --abstr_ref_sig_restrict                funpre
% 1.72/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.72/0.99  --abstr_ref_under                       []
% 1.72/0.99  
% 1.72/0.99  ------ SAT Options
% 1.72/0.99  
% 1.72/0.99  --sat_mode                              false
% 1.72/0.99  --sat_fm_restart_options                ""
% 1.72/0.99  --sat_gr_def                            false
% 1.72/0.99  --sat_epr_types                         true
% 1.72/0.99  --sat_non_cyclic_types                  false
% 1.72/0.99  --sat_finite_models                     false
% 1.72/0.99  --sat_fm_lemmas                         false
% 1.72/0.99  --sat_fm_prep                           false
% 1.72/0.99  --sat_fm_uc_incr                        true
% 1.72/0.99  --sat_out_model                         small
% 1.72/0.99  --sat_out_clauses                       false
% 1.72/0.99  
% 1.72/0.99  ------ QBF Options
% 1.72/0.99  
% 1.72/0.99  --qbf_mode                              false
% 1.72/0.99  --qbf_elim_univ                         false
% 1.72/0.99  --qbf_dom_inst                          none
% 1.72/0.99  --qbf_dom_pre_inst                      false
% 1.72/0.99  --qbf_sk_in                             false
% 1.72/0.99  --qbf_pred_elim                         true
% 1.72/0.99  --qbf_split                             512
% 1.72/0.99  
% 1.72/0.99  ------ BMC1 Options
% 1.72/0.99  
% 1.72/0.99  --bmc1_incremental                      false
% 1.72/0.99  --bmc1_axioms                           reachable_all
% 1.72/0.99  --bmc1_min_bound                        0
% 1.72/0.99  --bmc1_max_bound                        -1
% 1.72/0.99  --bmc1_max_bound_default                -1
% 1.72/0.99  --bmc1_symbol_reachability              true
% 1.72/0.99  --bmc1_property_lemmas                  false
% 1.72/0.99  --bmc1_k_induction                      false
% 1.72/0.99  --bmc1_non_equiv_states                 false
% 1.72/0.99  --bmc1_deadlock                         false
% 1.72/0.99  --bmc1_ucm                              false
% 1.72/0.99  --bmc1_add_unsat_core                   none
% 1.72/0.99  --bmc1_unsat_core_children              false
% 1.72/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.72/0.99  --bmc1_out_stat                         full
% 1.72/0.99  --bmc1_ground_init                      false
% 1.72/0.99  --bmc1_pre_inst_next_state              false
% 1.72/0.99  --bmc1_pre_inst_state                   false
% 1.72/0.99  --bmc1_pre_inst_reach_state             false
% 1.72/0.99  --bmc1_out_unsat_core                   false
% 1.72/0.99  --bmc1_aig_witness_out                  false
% 1.72/0.99  --bmc1_verbose                          false
% 1.72/0.99  --bmc1_dump_clauses_tptp                false
% 1.72/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.72/0.99  --bmc1_dump_file                        -
% 1.72/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.72/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.72/0.99  --bmc1_ucm_extend_mode                  1
% 1.72/0.99  --bmc1_ucm_init_mode                    2
% 1.72/0.99  --bmc1_ucm_cone_mode                    none
% 1.72/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.72/0.99  --bmc1_ucm_relax_model                  4
% 1.72/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.72/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.72/0.99  --bmc1_ucm_layered_model                none
% 1.72/0.99  --bmc1_ucm_max_lemma_size               10
% 1.72/0.99  
% 1.72/0.99  ------ AIG Options
% 1.72/0.99  
% 1.72/0.99  --aig_mode                              false
% 1.72/0.99  
% 1.72/0.99  ------ Instantiation Options
% 1.72/0.99  
% 1.72/0.99  --instantiation_flag                    true
% 1.72/0.99  --inst_sos_flag                         false
% 1.72/0.99  --inst_sos_phase                        true
% 1.72/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.72/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.72/0.99  --inst_lit_sel_side                     none
% 1.72/0.99  --inst_solver_per_active                1400
% 1.72/0.99  --inst_solver_calls_frac                1.
% 1.72/0.99  --inst_passive_queue_type               priority_queues
% 1.72/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.72/0.99  --inst_passive_queues_freq              [25;2]
% 1.72/0.99  --inst_dismatching                      true
% 1.72/0.99  --inst_eager_unprocessed_to_passive     true
% 1.72/0.99  --inst_prop_sim_given                   true
% 1.72/0.99  --inst_prop_sim_new                     false
% 1.72/0.99  --inst_subs_new                         false
% 1.72/0.99  --inst_eq_res_simp                      false
% 1.72/0.99  --inst_subs_given                       false
% 1.72/0.99  --inst_orphan_elimination               true
% 1.72/0.99  --inst_learning_loop_flag               true
% 1.72/0.99  --inst_learning_start                   3000
% 1.72/0.99  --inst_learning_factor                  2
% 1.72/0.99  --inst_start_prop_sim_after_learn       3
% 1.72/0.99  --inst_sel_renew                        solver
% 1.72/0.99  --inst_lit_activity_flag                true
% 1.72/0.99  --inst_restr_to_given                   false
% 1.72/0.99  --inst_activity_threshold               500
% 1.72/0.99  --inst_out_proof                        true
% 1.72/0.99  
% 1.72/0.99  ------ Resolution Options
% 1.72/0.99  
% 1.72/0.99  --resolution_flag                       false
% 1.72/0.99  --res_lit_sel                           adaptive
% 1.72/0.99  --res_lit_sel_side                      none
% 1.72/0.99  --res_ordering                          kbo
% 1.72/0.99  --res_to_prop_solver                    active
% 1.72/0.99  --res_prop_simpl_new                    false
% 1.72/0.99  --res_prop_simpl_given                  true
% 1.72/0.99  --res_passive_queue_type                priority_queues
% 1.72/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.72/0.99  --res_passive_queues_freq               [15;5]
% 1.72/0.99  --res_forward_subs                      full
% 1.72/0.99  --res_backward_subs                     full
% 1.72/0.99  --res_forward_subs_resolution           true
% 1.72/0.99  --res_backward_subs_resolution          true
% 1.72/0.99  --res_orphan_elimination                true
% 1.72/0.99  --res_time_limit                        2.
% 1.72/0.99  --res_out_proof                         true
% 1.72/0.99  
% 1.72/0.99  ------ Superposition Options
% 1.72/0.99  
% 1.72/0.99  --superposition_flag                    true
% 1.72/0.99  --sup_passive_queue_type                priority_queues
% 1.72/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.72/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.72/0.99  --demod_completeness_check              fast
% 1.72/0.99  --demod_use_ground                      true
% 1.72/0.99  --sup_to_prop_solver                    passive
% 1.72/0.99  --sup_prop_simpl_new                    true
% 1.72/0.99  --sup_prop_simpl_given                  true
% 1.72/0.99  --sup_fun_splitting                     false
% 1.72/0.99  --sup_smt_interval                      50000
% 1.72/0.99  
% 1.72/0.99  ------ Superposition Simplification Setup
% 1.72/0.99  
% 1.72/0.99  --sup_indices_passive                   []
% 1.72/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.72/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.72/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.72/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.72/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.72/0.99  --sup_full_bw                           [BwDemod]
% 1.72/0.99  --sup_immed_triv                        [TrivRules]
% 1.72/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.72/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.72/0.99  --sup_immed_bw_main                     []
% 1.72/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.72/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.72/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.72/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.72/0.99  
% 1.72/0.99  ------ Combination Options
% 1.72/0.99  
% 1.72/0.99  --comb_res_mult                         3
% 1.72/0.99  --comb_sup_mult                         2
% 1.72/0.99  --comb_inst_mult                        10
% 1.72/0.99  
% 1.72/0.99  ------ Debug Options
% 1.72/0.99  
% 1.72/0.99  --dbg_backtrace                         false
% 1.72/0.99  --dbg_dump_prop_clauses                 false
% 1.72/0.99  --dbg_dump_prop_clauses_file            -
% 1.72/0.99  --dbg_out_stat                          false
% 1.72/0.99  
% 1.72/0.99  
% 1.72/0.99  
% 1.72/0.99  
% 1.72/0.99  ------ Proving...
% 1.72/0.99  
% 1.72/0.99  
% 1.72/0.99  % SZS status Theorem for theBenchmark.p
% 1.72/0.99  
% 1.72/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.72/0.99  
% 1.72/0.99  fof(f13,conjecture,(
% 1.72/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X3)) => r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),X3,k3_tmap_1(X0,X1,X2,X2,X3))))))),
% 1.72/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.72/0.99  
% 1.72/0.99  fof(f14,negated_conjecture,(
% 1.72/0.99    ~! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : ((m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X3)) => r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),X3,k3_tmap_1(X0,X1,X2,X2,X3))))))),
% 1.72/0.99    inference(negated_conjecture,[],[f13])).
% 1.72/0.99  
% 1.72/0.99  fof(f36,plain,(
% 1.72/0.99    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),X3,k3_tmap_1(X0,X1,X2,X2,X3)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X3))) & (m1_pre_topc(X2,X0) & ~v2_struct_0(X2))) & (l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1))) & (l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)))),
% 1.72/0.99    inference(ennf_transformation,[],[f14])).
% 1.72/0.99  
% 1.72/0.99  fof(f37,plain,(
% 1.72/0.99    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),X3,k3_tmap_1(X0,X1,X2,X2,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0))),
% 1.72/0.99    inference(flattening,[],[f36])).
% 1.72/0.99  
% 1.72/0.99  fof(f44,plain,(
% 1.72/0.99    ( ! [X2,X0,X1] : (? [X3] : (~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),X3,k3_tmap_1(X0,X1,X2,X2,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X3)) => (~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),sK3,k3_tmap_1(X0,X1,X2,X2,sK3)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(sK3,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(sK3))) )),
% 1.72/0.99    introduced(choice_axiom,[])).
% 1.72/0.99  
% 1.72/0.99  fof(f43,plain,(
% 1.72/0.99    ( ! [X0,X1] : (? [X2] : (? [X3] : (~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),X3,k3_tmap_1(X0,X1,X2,X2,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) => (? [X3] : (~r2_funct_2(u1_struct_0(sK2),u1_struct_0(X1),X3,k3_tmap_1(X0,X1,sK2,sK2,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(X1)))) & v1_funct_2(X3,u1_struct_0(sK2),u1_struct_0(X1)) & v1_funct_1(X3)) & m1_pre_topc(sK2,X0) & ~v2_struct_0(sK2))) )),
% 1.72/0.99    introduced(choice_axiom,[])).
% 1.72/0.99  
% 1.72/0.99  fof(f42,plain,(
% 1.72/0.99    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : (~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),X3,k3_tmap_1(X0,X1,X2,X2,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => (? [X2] : (? [X3] : (~r2_funct_2(u1_struct_0(X2),u1_struct_0(sK1),X3,k3_tmap_1(X0,sK1,X2,X2,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(sK1)))) & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(sK1)) & v1_funct_1(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1))) )),
% 1.72/0.99    introduced(choice_axiom,[])).
% 1.72/0.99  
% 1.72/0.99  fof(f41,plain,(
% 1.72/0.99    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),X3,k3_tmap_1(X0,X1,X2,X2,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X3)) & m1_pre_topc(X2,X0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => (? [X1] : (? [X2] : (? [X3] : (~r2_funct_2(u1_struct_0(X2),u1_struct_0(X1),X3,k3_tmap_1(sK0,X1,X2,X2,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X3)) & m1_pre_topc(X2,sK0) & ~v2_struct_0(X2)) & l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0))),
% 1.72/0.99    introduced(choice_axiom,[])).
% 1.72/0.99  
% 1.72/0.99  fof(f45,plain,(
% 1.72/0.99    (((~r2_funct_2(u1_struct_0(sK2),u1_struct_0(sK1),sK3,k3_tmap_1(sK0,sK1,sK2,sK2,sK3)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))) & v1_funct_2(sK3,u1_struct_0(sK2),u1_struct_0(sK1)) & v1_funct_1(sK3)) & m1_pre_topc(sK2,sK0) & ~v2_struct_0(sK2)) & l1_pre_topc(sK1) & v2_pre_topc(sK1) & ~v2_struct_0(sK1)) & l1_pre_topc(sK0) & v2_pre_topc(sK0) & ~v2_struct_0(sK0)),
% 1.72/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f37,f44,f43,f42,f41])).
% 1.72/0.99  
% 1.72/0.99  fof(f69,plain,(
% 1.72/0.99    m1_pre_topc(sK2,sK0)),
% 1.72/0.99    inference(cnf_transformation,[],[f45])).
% 1.72/0.99  
% 1.72/0.99  fof(f5,axiom,(
% 1.72/0.99    ! [X0,X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (v1_partfun1(X2,X0) & v1_funct_1(X2)))))),
% 1.72/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.72/0.99  
% 1.72/0.99  fof(f21,plain,(
% 1.72/0.99    ! [X0,X1] : (! [X2] : (((v1_partfun1(X2,X0) & v1_funct_1(X2)) | (~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 1.72/0.99    inference(ennf_transformation,[],[f5])).
% 1.72/0.99  
% 1.72/0.99  fof(f22,plain,(
% 1.72/0.99    ! [X0,X1] : (! [X2] : ((v1_partfun1(X2,X0) & v1_funct_1(X2)) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | v1_xboole_0(X1))),
% 1.72/0.99    inference(flattening,[],[f21])).
% 1.72/0.99  
% 1.72/0.99  fof(f51,plain,(
% 1.72/0.99    ( ! [X2,X0,X1] : (v1_partfun1(X2,X0) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | v1_xboole_0(X1)) )),
% 1.72/0.99    inference(cnf_transformation,[],[f22])).
% 1.72/0.99  
% 1.72/0.99  fof(f4,axiom,(
% 1.72/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 1.72/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.72/0.99  
% 1.72/0.99  fof(f15,plain,(
% 1.72/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 1.72/0.99    inference(pure_predicate_removal,[],[f4])).
% 1.72/0.99  
% 1.72/0.99  fof(f20,plain,(
% 1.72/0.99    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.72/0.99    inference(ennf_transformation,[],[f15])).
% 1.72/0.99  
% 1.72/0.99  fof(f49,plain,(
% 1.72/0.99    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.72/0.99    inference(cnf_transformation,[],[f20])).
% 1.72/0.99  
% 1.72/0.99  fof(f6,axiom,(
% 1.72/0.99    ! [X0,X1] : ((v4_relat_1(X1,X0) & v1_relat_1(X1)) => (v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0))),
% 1.72/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.72/0.99  
% 1.72/0.99  fof(f23,plain,(
% 1.72/0.99    ! [X0,X1] : ((v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0) | (~v4_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 1.72/0.99    inference(ennf_transformation,[],[f6])).
% 1.72/0.99  
% 1.72/0.99  fof(f24,plain,(
% 1.72/0.99    ! [X0,X1] : ((v1_partfun1(X1,X0) <=> k1_relat_1(X1) = X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 1.72/0.99    inference(flattening,[],[f23])).
% 1.72/0.99  
% 1.72/0.99  fof(f38,plain,(
% 1.72/0.99    ! [X0,X1] : (((v1_partfun1(X1,X0) | k1_relat_1(X1) != X0) & (k1_relat_1(X1) = X0 | ~v1_partfun1(X1,X0))) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 1.72/0.99    inference(nnf_transformation,[],[f24])).
% 1.72/0.99  
% 1.72/0.99  fof(f52,plain,(
% 1.72/0.99    ( ! [X0,X1] : (k1_relat_1(X1) = X0 | ~v1_partfun1(X1,X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.72/0.99    inference(cnf_transformation,[],[f38])).
% 1.72/0.99  
% 1.72/0.99  fof(f3,axiom,(
% 1.72/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 1.72/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.72/0.99  
% 1.72/0.99  fof(f19,plain,(
% 1.72/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.72/0.99    inference(ennf_transformation,[],[f3])).
% 1.72/0.99  
% 1.72/0.99  fof(f48,plain,(
% 1.72/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.72/0.99    inference(cnf_transformation,[],[f19])).
% 1.72/0.99  
% 1.72/0.99  fof(f71,plain,(
% 1.72/0.99    v1_funct_2(sK3,u1_struct_0(sK2),u1_struct_0(sK1))),
% 1.72/0.99    inference(cnf_transformation,[],[f45])).
% 1.72/0.99  
% 1.72/0.99  fof(f65,plain,(
% 1.72/0.99    ~v2_struct_0(sK1)),
% 1.72/0.99    inference(cnf_transformation,[],[f45])).
% 1.72/0.99  
% 1.72/0.99  fof(f67,plain,(
% 1.72/0.99    l1_pre_topc(sK1)),
% 1.72/0.99    inference(cnf_transformation,[],[f45])).
% 1.72/0.99  
% 1.72/0.99  fof(f70,plain,(
% 1.72/0.99    v1_funct_1(sK3)),
% 1.72/0.99    inference(cnf_transformation,[],[f45])).
% 1.72/0.99  
% 1.72/0.99  fof(f72,plain,(
% 1.72/0.99    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))))),
% 1.72/0.99    inference(cnf_transformation,[],[f45])).
% 1.72/0.99  
% 1.72/0.99  fof(f10,axiom,(
% 1.72/0.99    ! [X0] : ((l1_struct_0(X0) & ~v2_struct_0(X0)) => ~v1_xboole_0(u1_struct_0(X0)))),
% 1.72/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.72/0.99  
% 1.72/0.99  fof(f30,plain,(
% 1.72/0.99    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | (~l1_struct_0(X0) | v2_struct_0(X0)))),
% 1.72/0.99    inference(ennf_transformation,[],[f10])).
% 1.72/0.99  
% 1.72/0.99  fof(f31,plain,(
% 1.72/0.99    ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0))),
% 1.72/0.99    inference(flattening,[],[f30])).
% 1.72/0.99  
% 1.72/0.99  fof(f58,plain,(
% 1.72/0.99    ( ! [X0] : (~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)) )),
% 1.72/0.99    inference(cnf_transformation,[],[f31])).
% 1.72/0.99  
% 1.72/0.99  fof(f9,axiom,(
% 1.72/0.99    ! [X0] : (l1_pre_topc(X0) => l1_struct_0(X0))),
% 1.72/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.72/0.99  
% 1.72/0.99  fof(f29,plain,(
% 1.72/0.99    ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0))),
% 1.72/0.99    inference(ennf_transformation,[],[f9])).
% 1.72/0.99  
% 1.72/0.99  fof(f57,plain,(
% 1.72/0.99    ( ! [X0] : (l1_struct_0(X0) | ~l1_pre_topc(X0)) )),
% 1.72/0.99    inference(cnf_transformation,[],[f29])).
% 1.72/0.99  
% 1.72/0.99  fof(f11,axiom,(
% 1.72/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0) & ~v2_struct_0(X0)) => ! [X1] : ((l1_pre_topc(X1) & v2_pre_topc(X1) & ~v2_struct_0(X1)) => ! [X2] : (m1_pre_topc(X2,X0) => ! [X3] : (m1_pre_topc(X3,X0) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) & v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) & v1_funct_1(X4)) => (m1_pre_topc(X3,X2) => k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4)))))))),
% 1.72/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.72/0.99  
% 1.72/0.99  fof(f32,plain,(
% 1.72/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : ((k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) | ~m1_pre_topc(X3,X2)) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4))) | ~m1_pre_topc(X3,X0)) | ~m1_pre_topc(X2,X0)) | (~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1))) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)))),
% 1.72/0.99    inference(ennf_transformation,[],[f11])).
% 1.72/0.99  
% 1.72/0.99  fof(f33,plain,(
% 1.72/0.99    ! [X0] : (! [X1] : (! [X2] : (! [X3] : (! [X4] : (k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) | ~m1_pre_topc(X3,X2) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4)) | ~m1_pre_topc(X3,X0)) | ~m1_pre_topc(X2,X0)) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0))),
% 1.72/0.99    inference(flattening,[],[f32])).
% 1.72/0.99  
% 1.72/0.99  fof(f59,plain,(
% 1.72/0.99    ( ! [X4,X2,X0,X3,X1] : (k2_partfun1(u1_struct_0(X2),u1_struct_0(X1),X4,u1_struct_0(X3)) = k3_tmap_1(X0,X1,X2,X3,X4) | ~m1_pre_topc(X3,X2) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) | ~v1_funct_2(X4,u1_struct_0(X2),u1_struct_0(X1)) | ~v1_funct_1(X4) | ~m1_pre_topc(X3,X0) | ~m1_pre_topc(X2,X0) | ~l1_pre_topc(X1) | ~v2_pre_topc(X1) | v2_struct_0(X1) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0) | v2_struct_0(X0)) )),
% 1.72/0.99    inference(cnf_transformation,[],[f33])).
% 1.72/0.99  
% 1.72/0.99  fof(f7,axiom,(
% 1.72/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X2)) => k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3))),
% 1.72/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.72/0.99  
% 1.72/0.99  fof(f25,plain,(
% 1.72/0.99    ! [X0,X1,X2,X3] : (k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)))),
% 1.72/0.99    inference(ennf_transformation,[],[f7])).
% 1.72/0.99  
% 1.72/0.99  fof(f26,plain,(
% 1.72/0.99    ! [X0,X1,X2,X3] : (k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2))),
% 1.72/0.99    inference(flattening,[],[f25])).
% 1.72/0.99  
% 1.72/0.99  fof(f54,plain,(
% 1.72/0.99    ( ! [X2,X0,X3,X1] : (k7_relat_1(X2,X3) = k2_partfun1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X2)) )),
% 1.72/0.99    inference(cnf_transformation,[],[f26])).
% 1.72/0.99  
% 1.72/0.99  fof(f66,plain,(
% 1.72/0.99    v2_pre_topc(sK1)),
% 1.72/0.99    inference(cnf_transformation,[],[f45])).
% 1.72/0.99  
% 1.72/0.99  fof(f1,axiom,(
% 1.72/0.99    ! [X0,X1] : ((v4_relat_1(X1,X0) & v1_relat_1(X1)) => k7_relat_1(X1,X0) = X1)),
% 1.72/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.72/0.99  
% 1.72/0.99  fof(f16,plain,(
% 1.72/0.99    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | (~v4_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 1.72/0.99    inference(ennf_transformation,[],[f1])).
% 1.72/0.99  
% 1.72/0.99  fof(f17,plain,(
% 1.72/0.99    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 1.72/0.99    inference(flattening,[],[f16])).
% 1.72/0.99  
% 1.72/0.99  fof(f46,plain,(
% 1.72/0.99    ( ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.72/0.99    inference(cnf_transformation,[],[f17])).
% 1.72/0.99  
% 1.72/0.99  fof(f2,axiom,(
% 1.72/0.99    ! [X0,X1] : (v1_relat_1(X1) => r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0))),
% 1.72/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.72/0.99  
% 1.72/0.99  fof(f18,plain,(
% 1.72/0.99    ! [X0,X1] : (r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0) | ~v1_relat_1(X1))),
% 1.72/0.99    inference(ennf_transformation,[],[f2])).
% 1.72/0.99  
% 1.72/0.99  fof(f47,plain,(
% 1.72/0.99    ( ! [X0,X1] : (r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0) | ~v1_relat_1(X1)) )),
% 1.72/0.99    inference(cnf_transformation,[],[f18])).
% 1.72/0.99  
% 1.72/0.99  fof(f12,axiom,(
% 1.72/0.99    ! [X0] : ((l1_pre_topc(X0) & v2_pre_topc(X0)) => ! [X1] : (m1_pre_topc(X1,X0) => ! [X2] : (m1_pre_topc(X2,X0) => (r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) <=> m1_pre_topc(X1,X2)))))),
% 1.72/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.72/0.99  
% 1.72/0.99  fof(f34,plain,(
% 1.72/0.99    ! [X0] : (! [X1] : (! [X2] : ((r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) <=> m1_pre_topc(X1,X2)) | ~m1_pre_topc(X2,X0)) | ~m1_pre_topc(X1,X0)) | (~l1_pre_topc(X0) | ~v2_pre_topc(X0)))),
% 1.72/0.99    inference(ennf_transformation,[],[f12])).
% 1.72/0.99  
% 1.72/0.99  fof(f35,plain,(
% 1.72/0.99    ! [X0] : (! [X1] : (! [X2] : ((r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) <=> m1_pre_topc(X1,X2)) | ~m1_pre_topc(X2,X0)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 1.72/0.99    inference(flattening,[],[f34])).
% 1.72/0.99  
% 1.72/0.99  fof(f40,plain,(
% 1.72/0.99    ! [X0] : (! [X1] : (! [X2] : (((r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) | ~m1_pre_topc(X1,X2)) & (m1_pre_topc(X1,X2) | ~r1_tarski(u1_struct_0(X1),u1_struct_0(X2)))) | ~m1_pre_topc(X2,X0)) | ~m1_pre_topc(X1,X0)) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0))),
% 1.72/0.99    inference(nnf_transformation,[],[f35])).
% 1.72/0.99  
% 1.72/0.99  fof(f60,plain,(
% 1.72/0.99    ( ! [X2,X0,X1] : (m1_pre_topc(X1,X2) | ~r1_tarski(u1_struct_0(X1),u1_struct_0(X2)) | ~m1_pre_topc(X2,X0) | ~m1_pre_topc(X1,X0) | ~l1_pre_topc(X0) | ~v2_pre_topc(X0)) )),
% 1.72/0.99    inference(cnf_transformation,[],[f40])).
% 1.72/0.99  
% 1.72/0.99  fof(f8,axiom,(
% 1.72/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (r2_funct_2(X0,X1,X2,X3) <=> X2 = X3))),
% 1.72/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.72/0.99  
% 1.72/0.99  fof(f27,plain,(
% 1.72/0.99    ! [X0,X1,X2,X3] : ((r2_funct_2(X0,X1,X2,X3) <=> X2 = X3) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 1.72/0.99    inference(ennf_transformation,[],[f8])).
% 1.72/0.99  
% 1.72/0.99  fof(f28,plain,(
% 1.72/0.99    ! [X0,X1,X2,X3] : ((r2_funct_2(X0,X1,X2,X3) <=> X2 = X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 1.72/0.99    inference(flattening,[],[f27])).
% 1.72/0.99  
% 1.72/0.99  fof(f39,plain,(
% 1.72/0.99    ! [X0,X1,X2,X3] : (((r2_funct_2(X0,X1,X2,X3) | X2 != X3) & (X2 = X3 | ~r2_funct_2(X0,X1,X2,X3))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 1.72/0.99    inference(nnf_transformation,[],[f28])).
% 1.72/0.99  
% 1.72/0.99  fof(f56,plain,(
% 1.72/0.99    ( ! [X2,X0,X3,X1] : (r2_funct_2(X0,X1,X2,X3) | X2 != X3 | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 1.72/0.99    inference(cnf_transformation,[],[f39])).
% 1.72/0.99  
% 1.72/0.99  fof(f75,plain,(
% 1.72/0.99    ( ! [X0,X3,X1] : (r2_funct_2(X0,X1,X3,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 1.72/0.99    inference(equality_resolution,[],[f56])).
% 1.72/0.99  
% 1.72/0.99  fof(f73,plain,(
% 1.72/0.99    ~r2_funct_2(u1_struct_0(sK2),u1_struct_0(sK1),sK3,k3_tmap_1(sK0,sK1,sK2,sK2,sK3))),
% 1.72/0.99    inference(cnf_transformation,[],[f45])).
% 1.72/0.99  
% 1.72/0.99  fof(f64,plain,(
% 1.72/0.99    l1_pre_topc(sK0)),
% 1.72/0.99    inference(cnf_transformation,[],[f45])).
% 1.72/0.99  
% 1.72/0.99  fof(f63,plain,(
% 1.72/0.99    v2_pre_topc(sK0)),
% 1.72/0.99    inference(cnf_transformation,[],[f45])).
% 1.72/0.99  
% 1.72/0.99  fof(f62,plain,(
% 1.72/0.99    ~v2_struct_0(sK0)),
% 1.72/0.99    inference(cnf_transformation,[],[f45])).
% 1.72/0.99  
% 1.72/0.99  cnf(c_20,negated_conjecture,
% 1.72/0.99      ( m1_pre_topc(sK2,sK0) ),
% 1.72/0.99      inference(cnf_transformation,[],[f69]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_927,negated_conjecture,
% 1.72/0.99      ( m1_pre_topc(sK2,sK0) ),
% 1.72/0.99      inference(subtyping,[status(esa)],[c_20]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1070,plain,
% 1.72/0.99      ( m1_pre_topc(sK2,sK0) = iProver_top ),
% 1.72/0.99      inference(predicate_to_equality,[status(thm)],[c_927]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_4,plain,
% 1.72/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 1.72/0.99      | v1_partfun1(X0,X1)
% 1.72/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.72/0.99      | v1_xboole_0(X2)
% 1.72/0.99      | ~ v1_funct_1(X0) ),
% 1.72/0.99      inference(cnf_transformation,[],[f51]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_3,plain,
% 1.72/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.72/0.99      | v4_relat_1(X0,X1) ),
% 1.72/0.99      inference(cnf_transformation,[],[f49]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_7,plain,
% 1.72/0.99      ( ~ v1_partfun1(X0,X1)
% 1.72/0.99      | ~ v4_relat_1(X0,X1)
% 1.72/0.99      | ~ v1_relat_1(X0)
% 1.72/0.99      | k1_relat_1(X0) = X1 ),
% 1.72/0.99      inference(cnf_transformation,[],[f52]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_348,plain,
% 1.72/0.99      ( ~ v1_partfun1(X0,X1)
% 1.72/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.72/0.99      | ~ v1_relat_1(X0)
% 1.72/0.99      | k1_relat_1(X0) = X1 ),
% 1.72/0.99      inference(resolution,[status(thm)],[c_3,c_7]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_2,plain,
% 1.72/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.72/0.99      | v1_relat_1(X0) ),
% 1.72/0.99      inference(cnf_transformation,[],[f48]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_352,plain,
% 1.72/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.72/0.99      | ~ v1_partfun1(X0,X1)
% 1.72/0.99      | k1_relat_1(X0) = X1 ),
% 1.72/0.99      inference(global_propositional_subsumption,
% 1.72/0.99                [status(thm)],
% 1.72/0.99                [c_348,c_7,c_3,c_2]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_353,plain,
% 1.72/0.99      ( ~ v1_partfun1(X0,X1)
% 1.72/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.72/0.99      | k1_relat_1(X0) = X1 ),
% 1.72/0.99      inference(renaming,[status(thm)],[c_352]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_425,plain,
% 1.72/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 1.72/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.72/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
% 1.72/0.99      | v1_xboole_0(X2)
% 1.72/0.99      | ~ v1_funct_1(X0)
% 1.72/0.99      | k1_relat_1(X0) = X1 ),
% 1.72/0.99      inference(resolution,[status(thm)],[c_4,c_353]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_429,plain,
% 1.72/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.72/0.99      | ~ v1_funct_2(X0,X1,X2)
% 1.72/0.99      | v1_xboole_0(X2)
% 1.72/0.99      | ~ v1_funct_1(X0)
% 1.72/0.99      | k1_relat_1(X0) = X1 ),
% 1.72/0.99      inference(global_propositional_subsumption,
% 1.72/0.99                [status(thm)],
% 1.72/0.99                [c_425,c_7,c_4,c_3,c_2]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_430,plain,
% 1.72/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 1.72/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.72/0.99      | v1_xboole_0(X2)
% 1.72/0.99      | ~ v1_funct_1(X0)
% 1.72/0.99      | k1_relat_1(X0) = X1 ),
% 1.72/0.99      inference(renaming,[status(thm)],[c_429]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_18,negated_conjecture,
% 1.72/0.99      ( v1_funct_2(sK3,u1_struct_0(sK2),u1_struct_0(sK1)) ),
% 1.72/0.99      inference(cnf_transformation,[],[f71]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_576,plain,
% 1.72/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.72/0.99      | v1_xboole_0(X2)
% 1.72/0.99      | ~ v1_funct_1(X0)
% 1.72/0.99      | u1_struct_0(sK1) != X2
% 1.72/0.99      | u1_struct_0(sK2) != X1
% 1.72/0.99      | k1_relat_1(X0) = X1
% 1.72/0.99      | sK3 != X0 ),
% 1.72/0.99      inference(resolution_lifted,[status(thm)],[c_430,c_18]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_577,plain,
% 1.72/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))))
% 1.72/0.99      | v1_xboole_0(u1_struct_0(sK1))
% 1.72/0.99      | ~ v1_funct_1(sK3)
% 1.72/0.99      | k1_relat_1(sK3) = u1_struct_0(sK2) ),
% 1.72/0.99      inference(unflattening,[status(thm)],[c_576]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_24,negated_conjecture,
% 1.72/0.99      ( ~ v2_struct_0(sK1) ),
% 1.72/0.99      inference(cnf_transformation,[],[f65]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_22,negated_conjecture,
% 1.72/0.99      ( l1_pre_topc(sK1) ),
% 1.72/0.99      inference(cnf_transformation,[],[f67]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_19,negated_conjecture,
% 1.72/0.99      ( v1_funct_1(sK3) ),
% 1.72/0.99      inference(cnf_transformation,[],[f70]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_17,negated_conjecture,
% 1.72/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))) ),
% 1.72/0.99      inference(cnf_transformation,[],[f72]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_12,plain,
% 1.72/0.99      ( v2_struct_0(X0)
% 1.72/0.99      | ~ l1_struct_0(X0)
% 1.72/0.99      | ~ v1_xboole_0(u1_struct_0(X0)) ),
% 1.72/0.99      inference(cnf_transformation,[],[f58]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_48,plain,
% 1.72/0.99      ( v2_struct_0(sK1)
% 1.72/0.99      | ~ l1_struct_0(sK1)
% 1.72/0.99      | ~ v1_xboole_0(u1_struct_0(sK1)) ),
% 1.72/0.99      inference(instantiation,[status(thm)],[c_12]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_11,plain,
% 1.72/0.99      ( ~ l1_pre_topc(X0) | l1_struct_0(X0) ),
% 1.72/0.99      inference(cnf_transformation,[],[f57]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_51,plain,
% 1.72/0.99      ( ~ l1_pre_topc(sK1) | l1_struct_0(sK1) ),
% 1.72/0.99      inference(instantiation,[status(thm)],[c_11]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_579,plain,
% 1.72/0.99      ( k1_relat_1(sK3) = u1_struct_0(sK2) ),
% 1.72/0.99      inference(global_propositional_subsumption,
% 1.72/0.99                [status(thm)],
% 1.72/0.99                [c_577,c_24,c_22,c_19,c_17,c_48,c_51]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_919,plain,
% 1.72/0.99      ( k1_relat_1(sK3) = u1_struct_0(sK2) ),
% 1.72/0.99      inference(subtyping,[status(esa)],[c_579]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_13,plain,
% 1.72/0.99      ( ~ v1_funct_2(X0,u1_struct_0(X1),u1_struct_0(X2))
% 1.72/0.99      | ~ m1_pre_topc(X3,X1)
% 1.72/0.99      | ~ m1_pre_topc(X3,X4)
% 1.72/0.99      | ~ m1_pre_topc(X1,X4)
% 1.72/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
% 1.72/0.99      | ~ v2_pre_topc(X2)
% 1.72/0.99      | ~ v2_pre_topc(X4)
% 1.72/0.99      | v2_struct_0(X4)
% 1.72/0.99      | v2_struct_0(X2)
% 1.72/0.99      | ~ l1_pre_topc(X4)
% 1.72/0.99      | ~ l1_pre_topc(X2)
% 1.72/0.99      | ~ v1_funct_1(X0)
% 1.72/0.99      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X2),X0,u1_struct_0(X3)) = k3_tmap_1(X4,X2,X1,X3,X0) ),
% 1.72/0.99      inference(cnf_transformation,[],[f59]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_584,plain,
% 1.72/0.99      ( ~ m1_pre_topc(X0,X1)
% 1.72/0.99      | ~ m1_pre_topc(X0,X2)
% 1.72/0.99      | ~ m1_pre_topc(X1,X2)
% 1.72/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X4))))
% 1.72/0.99      | ~ v2_pre_topc(X4)
% 1.72/0.99      | ~ v2_pre_topc(X2)
% 1.72/0.99      | v2_struct_0(X2)
% 1.72/0.99      | v2_struct_0(X4)
% 1.72/0.99      | ~ l1_pre_topc(X2)
% 1.72/0.99      | ~ l1_pre_topc(X4)
% 1.72/0.99      | ~ v1_funct_1(X3)
% 1.72/0.99      | k2_partfun1(u1_struct_0(X1),u1_struct_0(X4),X3,u1_struct_0(X0)) = k3_tmap_1(X2,X4,X1,X0,X3)
% 1.72/0.99      | u1_struct_0(X4) != u1_struct_0(sK1)
% 1.72/0.99      | u1_struct_0(X1) != u1_struct_0(sK2)
% 1.72/0.99      | sK3 != X3 ),
% 1.72/0.99      inference(resolution_lifted,[status(thm)],[c_13,c_18]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_585,plain,
% 1.72/0.99      ( ~ m1_pre_topc(X0,X1)
% 1.72/0.99      | ~ m1_pre_topc(X0,X2)
% 1.72/0.99      | ~ m1_pre_topc(X2,X1)
% 1.72/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X3))))
% 1.72/0.99      | ~ v2_pre_topc(X1)
% 1.72/0.99      | ~ v2_pre_topc(X3)
% 1.72/0.99      | v2_struct_0(X3)
% 1.72/0.99      | v2_struct_0(X1)
% 1.72/0.99      | ~ l1_pre_topc(X3)
% 1.72/0.99      | ~ l1_pre_topc(X1)
% 1.72/0.99      | ~ v1_funct_1(sK3)
% 1.72/0.99      | k2_partfun1(u1_struct_0(X2),u1_struct_0(X3),sK3,u1_struct_0(X0)) = k3_tmap_1(X1,X3,X2,X0,sK3)
% 1.72/0.99      | u1_struct_0(X3) != u1_struct_0(sK1)
% 1.72/0.99      | u1_struct_0(X2) != u1_struct_0(sK2) ),
% 1.72/0.99      inference(unflattening,[status(thm)],[c_584]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_589,plain,
% 1.72/0.99      ( ~ l1_pre_topc(X1)
% 1.72/0.99      | ~ l1_pre_topc(X3)
% 1.72/0.99      | v2_struct_0(X1)
% 1.72/0.99      | v2_struct_0(X3)
% 1.72/0.99      | ~ v2_pre_topc(X3)
% 1.72/0.99      | ~ v2_pre_topc(X1)
% 1.72/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X3))))
% 1.72/0.99      | ~ m1_pre_topc(X2,X1)
% 1.72/0.99      | ~ m1_pre_topc(X0,X2)
% 1.72/0.99      | ~ m1_pre_topc(X0,X1)
% 1.72/0.99      | k2_partfun1(u1_struct_0(X2),u1_struct_0(X3),sK3,u1_struct_0(X0)) = k3_tmap_1(X1,X3,X2,X0,sK3)
% 1.72/0.99      | u1_struct_0(X3) != u1_struct_0(sK1)
% 1.72/0.99      | u1_struct_0(X2) != u1_struct_0(sK2) ),
% 1.72/0.99      inference(global_propositional_subsumption,
% 1.72/0.99                [status(thm)],
% 1.72/0.99                [c_585,c_19]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_590,plain,
% 1.72/0.99      ( ~ m1_pre_topc(X0,X1)
% 1.72/0.99      | ~ m1_pre_topc(X2,X0)
% 1.72/0.99      | ~ m1_pre_topc(X2,X1)
% 1.72/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X3))))
% 1.72/0.99      | ~ v2_pre_topc(X1)
% 1.72/0.99      | ~ v2_pre_topc(X3)
% 1.72/0.99      | v2_struct_0(X1)
% 1.72/0.99      | v2_struct_0(X3)
% 1.72/0.99      | ~ l1_pre_topc(X1)
% 1.72/0.99      | ~ l1_pre_topc(X3)
% 1.72/0.99      | k2_partfun1(u1_struct_0(X0),u1_struct_0(X3),sK3,u1_struct_0(X2)) = k3_tmap_1(X1,X3,X0,X2,sK3)
% 1.72/0.99      | u1_struct_0(X3) != u1_struct_0(sK1)
% 1.72/0.99      | u1_struct_0(X0) != u1_struct_0(sK2) ),
% 1.72/0.99      inference(renaming,[status(thm)],[c_589]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_730,plain,
% 1.72/0.99      ( ~ m1_pre_topc(X0,X1)
% 1.72/0.99      | ~ m1_pre_topc(X2,X1)
% 1.72/0.99      | ~ m1_pre_topc(X0,X2)
% 1.72/0.99      | ~ v2_pre_topc(X3)
% 1.72/0.99      | ~ v2_pre_topc(X1)
% 1.72/0.99      | v2_struct_0(X3)
% 1.72/0.99      | v2_struct_0(X1)
% 1.72/0.99      | ~ l1_pre_topc(X3)
% 1.72/0.99      | ~ l1_pre_topc(X1)
% 1.72/0.99      | k2_partfun1(u1_struct_0(X2),u1_struct_0(X3),sK3,u1_struct_0(X0)) = k3_tmap_1(X1,X3,X2,X0,sK3)
% 1.72/0.99      | u1_struct_0(X3) != u1_struct_0(sK1)
% 1.72/0.99      | u1_struct_0(X2) != u1_struct_0(sK2)
% 1.72/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X3))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))
% 1.72/0.99      | sK3 != sK3 ),
% 1.72/0.99      inference(resolution_lifted,[status(thm)],[c_17,c_590]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_847,plain,
% 1.72/0.99      ( ~ m1_pre_topc(X0,X1)
% 1.72/0.99      | ~ m1_pre_topc(X2,X0)
% 1.72/0.99      | ~ m1_pre_topc(X2,X1)
% 1.72/0.99      | ~ v2_pre_topc(X1)
% 1.72/0.99      | ~ v2_pre_topc(X3)
% 1.72/0.99      | v2_struct_0(X1)
% 1.72/0.99      | v2_struct_0(X3)
% 1.72/0.99      | ~ l1_pre_topc(X1)
% 1.72/0.99      | ~ l1_pre_topc(X3)
% 1.72/0.99      | k2_partfun1(u1_struct_0(X0),u1_struct_0(X3),sK3,u1_struct_0(X2)) = k3_tmap_1(X1,X3,X0,X2,sK3)
% 1.72/0.99      | u1_struct_0(X3) != u1_struct_0(sK1)
% 1.72/0.99      | u1_struct_0(X0) != u1_struct_0(sK2)
% 1.72/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0),u1_struct_0(X3))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) ),
% 1.72/0.99      inference(equality_resolution_simp,[status(thm)],[c_730]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_915,plain,
% 1.72/0.99      ( ~ m1_pre_topc(X0_54,X1_54)
% 1.72/0.99      | ~ m1_pre_topc(X2_54,X0_54)
% 1.72/0.99      | ~ m1_pre_topc(X2_54,X1_54)
% 1.72/0.99      | ~ v2_pre_topc(X1_54)
% 1.72/0.99      | ~ v2_pre_topc(X3_54)
% 1.72/0.99      | v2_struct_0(X1_54)
% 1.72/0.99      | v2_struct_0(X3_54)
% 1.72/0.99      | ~ l1_pre_topc(X1_54)
% 1.72/0.99      | ~ l1_pre_topc(X3_54)
% 1.72/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X3_54))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))
% 1.72/0.99      | u1_struct_0(X3_54) != u1_struct_0(sK1)
% 1.72/0.99      | u1_struct_0(X0_54) != u1_struct_0(sK2)
% 1.72/0.99      | k2_partfun1(u1_struct_0(X0_54),u1_struct_0(X3_54),sK3,u1_struct_0(X2_54)) = k3_tmap_1(X1_54,X3_54,X0_54,X2_54,sK3) ),
% 1.72/0.99      inference(subtyping,[status(esa)],[c_847]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1081,plain,
% 1.72/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))
% 1.72/0.99      | u1_struct_0(X1_54) != u1_struct_0(sK1)
% 1.72/0.99      | u1_struct_0(X0_54) != u1_struct_0(sK2)
% 1.72/0.99      | k2_partfun1(u1_struct_0(X0_54),u1_struct_0(X1_54),sK3,u1_struct_0(X2_54)) = k3_tmap_1(X3_54,X1_54,X0_54,X2_54,sK3)
% 1.72/0.99      | m1_pre_topc(X0_54,X3_54) != iProver_top
% 1.72/0.99      | m1_pre_topc(X2_54,X3_54) != iProver_top
% 1.72/0.99      | m1_pre_topc(X2_54,X0_54) != iProver_top
% 1.72/0.99      | v2_pre_topc(X3_54) != iProver_top
% 1.72/0.99      | v2_pre_topc(X1_54) != iProver_top
% 1.72/0.99      | v2_struct_0(X3_54) = iProver_top
% 1.72/0.99      | v2_struct_0(X1_54) = iProver_top
% 1.72/0.99      | l1_pre_topc(X3_54) != iProver_top
% 1.72/0.99      | l1_pre_topc(X1_54) != iProver_top ),
% 1.72/0.99      inference(predicate_to_equality,[status(thm)],[c_915]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1135,plain,
% 1.72/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X0_54),u1_struct_0(X1_54))) != k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK1)))
% 1.72/0.99      | u1_struct_0(X1_54) != u1_struct_0(sK1)
% 1.72/0.99      | u1_struct_0(X0_54) != k1_relat_1(sK3)
% 1.72/0.99      | k2_partfun1(u1_struct_0(X0_54),u1_struct_0(X1_54),sK3,u1_struct_0(X2_54)) = k3_tmap_1(X3_54,X1_54,X0_54,X2_54,sK3)
% 1.72/0.99      | m1_pre_topc(X2_54,X0_54) != iProver_top
% 1.72/0.99      | m1_pre_topc(X2_54,X3_54) != iProver_top
% 1.72/0.99      | m1_pre_topc(X0_54,X3_54) != iProver_top
% 1.72/0.99      | v2_pre_topc(X1_54) != iProver_top
% 1.72/0.99      | v2_pre_topc(X3_54) != iProver_top
% 1.72/0.99      | v2_struct_0(X1_54) = iProver_top
% 1.72/0.99      | v2_struct_0(X3_54) = iProver_top
% 1.72/0.99      | l1_pre_topc(X1_54) != iProver_top
% 1.72/0.99      | l1_pre_topc(X3_54) != iProver_top ),
% 1.72/0.99      inference(light_normalisation,[status(thm)],[c_1081,c_919]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1446,plain,
% 1.72/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(X0_54))) != k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK1)))
% 1.72/0.99      | u1_struct_0(X0_54) != u1_struct_0(sK1)
% 1.72/0.99      | u1_struct_0(sK2) != k1_relat_1(sK3)
% 1.72/0.99      | k2_partfun1(u1_struct_0(sK2),u1_struct_0(X0_54),sK3,u1_struct_0(X1_54)) = k3_tmap_1(X2_54,X0_54,sK2,X1_54,sK3)
% 1.72/0.99      | m1_pre_topc(X1_54,X2_54) != iProver_top
% 1.72/0.99      | m1_pre_topc(X1_54,sK2) != iProver_top
% 1.72/0.99      | m1_pre_topc(sK2,X2_54) != iProver_top
% 1.72/0.99      | v2_pre_topc(X2_54) != iProver_top
% 1.72/0.99      | v2_pre_topc(X0_54) != iProver_top
% 1.72/0.99      | v2_struct_0(X0_54) = iProver_top
% 1.72/0.99      | v2_struct_0(X2_54) = iProver_top
% 1.72/0.99      | l1_pre_topc(X0_54) != iProver_top
% 1.72/0.99      | l1_pre_topc(X2_54) != iProver_top ),
% 1.72/0.99      inference(superposition,[status(thm)],[c_919,c_1135]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1488,plain,
% 1.72/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(X0_54))) != k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK1)))
% 1.72/0.99      | u1_struct_0(X0_54) != u1_struct_0(sK1)
% 1.72/0.99      | k1_relat_1(sK3) != k1_relat_1(sK3)
% 1.72/0.99      | k2_partfun1(k1_relat_1(sK3),u1_struct_0(X0_54),sK3,u1_struct_0(X1_54)) = k3_tmap_1(X2_54,X0_54,sK2,X1_54,sK3)
% 1.72/0.99      | m1_pre_topc(X1_54,X2_54) != iProver_top
% 1.72/0.99      | m1_pre_topc(X1_54,sK2) != iProver_top
% 1.72/0.99      | m1_pre_topc(sK2,X2_54) != iProver_top
% 1.72/0.99      | v2_pre_topc(X2_54) != iProver_top
% 1.72/0.99      | v2_pre_topc(X0_54) != iProver_top
% 1.72/0.99      | v2_struct_0(X0_54) = iProver_top
% 1.72/0.99      | v2_struct_0(X2_54) = iProver_top
% 1.72/0.99      | l1_pre_topc(X0_54) != iProver_top
% 1.72/0.99      | l1_pre_topc(X2_54) != iProver_top ),
% 1.72/0.99      inference(light_normalisation,[status(thm)],[c_1446,c_919]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1489,plain,
% 1.72/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(X0_54))) != k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK1)))
% 1.72/0.99      | u1_struct_0(X0_54) != u1_struct_0(sK1)
% 1.72/0.99      | k2_partfun1(k1_relat_1(sK3),u1_struct_0(X0_54),sK3,u1_struct_0(X1_54)) = k3_tmap_1(X2_54,X0_54,sK2,X1_54,sK3)
% 1.72/0.99      | m1_pre_topc(X1_54,X2_54) != iProver_top
% 1.72/0.99      | m1_pre_topc(X1_54,sK2) != iProver_top
% 1.72/0.99      | m1_pre_topc(sK2,X2_54) != iProver_top
% 1.72/0.99      | v2_pre_topc(X2_54) != iProver_top
% 1.72/0.99      | v2_pre_topc(X0_54) != iProver_top
% 1.72/0.99      | v2_struct_0(X0_54) = iProver_top
% 1.72/0.99      | v2_struct_0(X2_54) = iProver_top
% 1.72/0.99      | l1_pre_topc(X0_54) != iProver_top
% 1.72/0.99      | l1_pre_topc(X2_54) != iProver_top ),
% 1.72/0.99      inference(equality_resolution_simp,[status(thm)],[c_1488]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1759,plain,
% 1.72/0.99      ( u1_struct_0(sK1) != u1_struct_0(sK1)
% 1.72/0.99      | k2_partfun1(k1_relat_1(sK3),u1_struct_0(sK1),sK3,u1_struct_0(X0_54)) = k3_tmap_1(X1_54,sK1,sK2,X0_54,sK3)
% 1.72/0.99      | m1_pre_topc(X0_54,X1_54) != iProver_top
% 1.72/0.99      | m1_pre_topc(X0_54,sK2) != iProver_top
% 1.72/0.99      | m1_pre_topc(sK2,X1_54) != iProver_top
% 1.72/0.99      | v2_pre_topc(X1_54) != iProver_top
% 1.72/0.99      | v2_pre_topc(sK1) != iProver_top
% 1.72/0.99      | v2_struct_0(X1_54) = iProver_top
% 1.72/0.99      | v2_struct_0(sK1) = iProver_top
% 1.72/0.99      | l1_pre_topc(X1_54) != iProver_top
% 1.72/0.99      | l1_pre_topc(sK1) != iProver_top ),
% 1.72/0.99      inference(equality_resolution,[status(thm)],[c_1489]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_8,plain,
% 1.72/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.72/0.99      | ~ v1_funct_1(X0)
% 1.72/0.99      | k2_partfun1(X1,X2,X0,X3) = k7_relat_1(X0,X3) ),
% 1.72/0.99      inference(cnf_transformation,[],[f54]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_661,plain,
% 1.72/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.72/0.99      | k2_partfun1(X1,X2,X0,X3) = k7_relat_1(X0,X3)
% 1.72/0.99      | sK3 != X0 ),
% 1.72/0.99      inference(resolution_lifted,[status(thm)],[c_8,c_19]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_662,plain,
% 1.72/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.72/0.99      | k2_partfun1(X0,X1,sK3,X2) = k7_relat_1(sK3,X2) ),
% 1.72/0.99      inference(unflattening,[status(thm)],[c_661]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_777,plain,
% 1.72/0.99      ( k2_partfun1(X0,X1,sK3,X2) = k7_relat_1(sK3,X2)
% 1.72/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 1.72/0.99      | sK3 != sK3 ),
% 1.72/0.99      inference(resolution_lifted,[status(thm)],[c_17,c_662]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_845,plain,
% 1.72/0.99      ( k2_partfun1(X0,X1,sK3,X2) = k7_relat_1(sK3,X2)
% 1.72/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.72/0.99      inference(equality_resolution_simp,[status(thm)],[c_777]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_916,plain,
% 1.72/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_55,X1_55))
% 1.72/0.99      | k2_partfun1(X0_55,X1_55,sK3,X2_55) = k7_relat_1(sK3,X2_55) ),
% 1.72/0.99      inference(subtyping,[status(esa)],[c_845]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1116,plain,
% 1.72/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_55,X1_55))
% 1.72/0.99      | k2_partfun1(X0_55,X1_55,sK3,X2_55) = k7_relat_1(sK3,X2_55) ),
% 1.72/0.99      inference(light_normalisation,[status(thm)],[c_916,c_919]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1333,plain,
% 1.72/0.99      ( k2_partfun1(k1_relat_1(sK3),u1_struct_0(sK1),sK3,X0_55) = k7_relat_1(sK3,X0_55) ),
% 1.72/0.99      inference(equality_resolution,[status(thm)],[c_1116]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1760,plain,
% 1.72/0.99      ( u1_struct_0(sK1) != u1_struct_0(sK1)
% 1.72/0.99      | k3_tmap_1(X0_54,sK1,sK2,X1_54,sK3) = k7_relat_1(sK3,u1_struct_0(X1_54))
% 1.72/0.99      | m1_pre_topc(X1_54,X0_54) != iProver_top
% 1.72/0.99      | m1_pre_topc(X1_54,sK2) != iProver_top
% 1.72/0.99      | m1_pre_topc(sK2,X0_54) != iProver_top
% 1.72/0.99      | v2_pre_topc(X0_54) != iProver_top
% 1.72/0.99      | v2_pre_topc(sK1) != iProver_top
% 1.72/0.99      | v2_struct_0(X0_54) = iProver_top
% 1.72/0.99      | v2_struct_0(sK1) = iProver_top
% 1.72/0.99      | l1_pre_topc(X0_54) != iProver_top
% 1.72/0.99      | l1_pre_topc(sK1) != iProver_top ),
% 1.72/0.99      inference(demodulation,[status(thm)],[c_1759,c_1333]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1761,plain,
% 1.72/0.99      ( k3_tmap_1(X0_54,sK1,sK2,X1_54,sK3) = k7_relat_1(sK3,u1_struct_0(X1_54))
% 1.72/0.99      | m1_pre_topc(X1_54,X0_54) != iProver_top
% 1.72/0.99      | m1_pre_topc(X1_54,sK2) != iProver_top
% 1.72/0.99      | m1_pre_topc(sK2,X0_54) != iProver_top
% 1.72/0.99      | v2_pre_topc(X0_54) != iProver_top
% 1.72/0.99      | v2_pre_topc(sK1) != iProver_top
% 1.72/0.99      | v2_struct_0(X0_54) = iProver_top
% 1.72/0.99      | v2_struct_0(sK1) = iProver_top
% 1.72/0.99      | l1_pre_topc(X0_54) != iProver_top
% 1.72/0.99      | l1_pre_topc(sK1) != iProver_top ),
% 1.72/0.99      inference(equality_resolution_simp,[status(thm)],[c_1760]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_31,plain,
% 1.72/0.99      ( v2_struct_0(sK1) != iProver_top ),
% 1.72/0.99      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_23,negated_conjecture,
% 1.72/0.99      ( v2_pre_topc(sK1) ),
% 1.72/0.99      inference(cnf_transformation,[],[f66]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_32,plain,
% 1.72/0.99      ( v2_pre_topc(sK1) = iProver_top ),
% 1.72/0.99      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_33,plain,
% 1.72/0.99      ( l1_pre_topc(sK1) = iProver_top ),
% 1.72/0.99      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1948,plain,
% 1.72/0.99      ( l1_pre_topc(X0_54) != iProver_top
% 1.72/0.99      | v2_pre_topc(X0_54) != iProver_top
% 1.72/0.99      | m1_pre_topc(sK2,X0_54) != iProver_top
% 1.72/0.99      | m1_pre_topc(X1_54,sK2) != iProver_top
% 1.72/0.99      | m1_pre_topc(X1_54,X0_54) != iProver_top
% 1.72/0.99      | k3_tmap_1(X0_54,sK1,sK2,X1_54,sK3) = k7_relat_1(sK3,u1_struct_0(X1_54))
% 1.72/0.99      | v2_struct_0(X0_54) = iProver_top ),
% 1.72/0.99      inference(global_propositional_subsumption,
% 1.72/0.99                [status(thm)],
% 1.72/0.99                [c_1761,c_31,c_32,c_33]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1949,plain,
% 1.72/0.99      ( k3_tmap_1(X0_54,sK1,sK2,X1_54,sK3) = k7_relat_1(sK3,u1_struct_0(X1_54))
% 1.72/0.99      | m1_pre_topc(X1_54,X0_54) != iProver_top
% 1.72/0.99      | m1_pre_topc(X1_54,sK2) != iProver_top
% 1.72/0.99      | m1_pre_topc(sK2,X0_54) != iProver_top
% 1.72/0.99      | v2_pre_topc(X0_54) != iProver_top
% 1.72/0.99      | v2_struct_0(X0_54) = iProver_top
% 1.72/0.99      | l1_pre_topc(X0_54) != iProver_top ),
% 1.72/0.99      inference(renaming,[status(thm)],[c_1948]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1959,plain,
% 1.72/0.99      ( k3_tmap_1(sK0,sK1,sK2,sK2,sK3) = k7_relat_1(sK3,u1_struct_0(sK2))
% 1.72/0.99      | m1_pre_topc(sK2,sK0) != iProver_top
% 1.72/0.99      | m1_pre_topc(sK2,sK2) != iProver_top
% 1.72/0.99      | v2_pre_topc(sK0) != iProver_top
% 1.72/0.99      | v2_struct_0(sK0) = iProver_top
% 1.72/0.99      | l1_pre_topc(sK0) != iProver_top ),
% 1.72/0.99      inference(superposition,[status(thm)],[c_1070,c_1949]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_0,plain,
% 1.72/0.99      ( ~ v4_relat_1(X0,X1) | ~ v1_relat_1(X0) | k7_relat_1(X0,X1) = X0 ),
% 1.72/0.99      inference(cnf_transformation,[],[f46]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_368,plain,
% 1.72/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.72/0.99      | ~ v1_relat_1(X0)
% 1.72/0.99      | k7_relat_1(X0,X1) = X0 ),
% 1.72/0.99      inference(resolution,[status(thm)],[c_3,c_0]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_372,plain,
% 1.72/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.72/0.99      | k7_relat_1(X0,X1) = X0 ),
% 1.72/0.99      inference(global_propositional_subsumption,
% 1.72/0.99                [status(thm)],
% 1.72/0.99                [c_368,c_3,c_2,c_0]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_696,plain,
% 1.72/0.99      ( k7_relat_1(X0,X1) = X0
% 1.72/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 1.72/0.99      | sK3 != X0 ),
% 1.72/0.99      inference(resolution_lifted,[status(thm)],[c_372,c_17]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_697,plain,
% 1.72/0.99      ( k7_relat_1(sK3,X0) = sK3
% 1.72/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.72/0.99      inference(unflattening,[status(thm)],[c_696]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_918,plain,
% 1.72/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_55,X1_55))
% 1.72/0.99      | k7_relat_1(sK3,X0_55) = sK3 ),
% 1.72/0.99      inference(subtyping,[status(esa)],[c_697]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1111,plain,
% 1.72/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_55,X1_55))
% 1.72/0.99      | k7_relat_1(sK3,X0_55) = sK3 ),
% 1.72/0.99      inference(light_normalisation,[status(thm)],[c_918,c_919]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1330,plain,
% 1.72/0.99      ( k7_relat_1(sK3,k1_relat_1(sK3)) = sK3 ),
% 1.72/0.99      inference(equality_resolution,[status(thm)],[c_1111]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1978,plain,
% 1.72/0.99      ( k3_tmap_1(sK0,sK1,sK2,sK2,sK3) = sK3
% 1.72/0.99      | m1_pre_topc(sK2,sK0) != iProver_top
% 1.72/0.99      | m1_pre_topc(sK2,sK2) != iProver_top
% 1.72/0.99      | v2_pre_topc(sK0) != iProver_top
% 1.72/0.99      | v2_struct_0(sK0) = iProver_top
% 1.72/0.99      | l1_pre_topc(sK0) != iProver_top ),
% 1.72/0.99      inference(light_normalisation,[status(thm)],[c_1959,c_919,c_1330]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_939,plain,
% 1.72/0.99      ( k1_relat_1(X0_53) = k1_relat_1(X1_53) | X0_53 != X1_53 ),
% 1.72/0.99      theory(equality) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1704,plain,
% 1.72/0.99      ( k1_relat_1(k7_relat_1(sK3,u1_struct_0(sK2))) = k1_relat_1(sK3)
% 1.72/0.99      | k7_relat_1(sK3,u1_struct_0(sK2)) != sK3 ),
% 1.72/0.99      inference(instantiation,[status(thm)],[c_939]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_936,plain,
% 1.72/0.99      ( X0_55 != X1_55 | X2_55 != X1_55 | X2_55 = X0_55 ),
% 1.72/0.99      theory(equality) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1292,plain,
% 1.72/0.99      ( u1_struct_0(sK2) != X0_55
% 1.72/0.99      | k1_relat_1(k7_relat_1(sK3,u1_struct_0(sK2))) != X0_55
% 1.72/0.99      | k1_relat_1(k7_relat_1(sK3,u1_struct_0(sK2))) = u1_struct_0(sK2) ),
% 1.72/0.99      inference(instantiation,[status(thm)],[c_936]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1559,plain,
% 1.72/0.99      ( u1_struct_0(sK2) != k1_relat_1(sK3)
% 1.72/0.99      | k1_relat_1(k7_relat_1(sK3,u1_struct_0(sK2))) = u1_struct_0(sK2)
% 1.72/0.99      | k1_relat_1(k7_relat_1(sK3,u1_struct_0(sK2))) != k1_relat_1(sK3) ),
% 1.72/0.99      inference(instantiation,[status(thm)],[c_1292]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1286,plain,
% 1.72/0.99      ( X0_55 != X1_55
% 1.72/0.99      | u1_struct_0(X0_54) != X1_55
% 1.72/0.99      | u1_struct_0(X0_54) = X0_55 ),
% 1.72/0.99      inference(instantiation,[status(thm)],[c_936]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1366,plain,
% 1.72/0.99      ( X0_55 != u1_struct_0(sK2)
% 1.72/0.99      | u1_struct_0(sK2) = X0_55
% 1.72/0.99      | u1_struct_0(sK2) != u1_struct_0(sK2) ),
% 1.72/0.99      inference(instantiation,[status(thm)],[c_1286]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1410,plain,
% 1.72/0.99      ( u1_struct_0(sK2) != u1_struct_0(sK2)
% 1.72/0.99      | u1_struct_0(sK2) = k1_relat_1(sK3)
% 1.72/0.99      | k1_relat_1(sK3) != u1_struct_0(sK2) ),
% 1.72/0.99      inference(instantiation,[status(thm)],[c_1366]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1,plain,
% 1.72/0.99      ( r1_tarski(k1_relat_1(k7_relat_1(X0,X1)),X1) | ~ v1_relat_1(X0) ),
% 1.72/0.99      inference(cnf_transformation,[],[f47]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_15,plain,
% 1.72/0.99      ( ~ m1_pre_topc(X0,X1)
% 1.72/0.99      | ~ m1_pre_topc(X2,X1)
% 1.72/0.99      | m1_pre_topc(X2,X0)
% 1.72/0.99      | ~ r1_tarski(u1_struct_0(X2),u1_struct_0(X0))
% 1.72/0.99      | ~ v2_pre_topc(X1)
% 1.72/0.99      | ~ l1_pre_topc(X1) ),
% 1.72/0.99      inference(cnf_transformation,[],[f60]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_511,plain,
% 1.72/0.99      ( ~ m1_pre_topc(X0,X1)
% 1.72/0.99      | ~ m1_pre_topc(X2,X1)
% 1.72/0.99      | m1_pre_topc(X2,X0)
% 1.72/0.99      | ~ v2_pre_topc(X1)
% 1.72/0.99      | ~ l1_pre_topc(X1)
% 1.72/0.99      | ~ v1_relat_1(X3)
% 1.72/0.99      | u1_struct_0(X0) != X4
% 1.72/0.99      | k1_relat_1(k7_relat_1(X3,X4)) != u1_struct_0(X2) ),
% 1.72/0.99      inference(resolution_lifted,[status(thm)],[c_1,c_15]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_512,plain,
% 1.72/0.99      ( ~ m1_pre_topc(X0,X1)
% 1.72/0.99      | ~ m1_pre_topc(X2,X1)
% 1.72/0.99      | m1_pre_topc(X0,X2)
% 1.72/0.99      | ~ v2_pre_topc(X1)
% 1.72/0.99      | ~ l1_pre_topc(X1)
% 1.72/0.99      | ~ v1_relat_1(X3)
% 1.72/0.99      | k1_relat_1(k7_relat_1(X3,u1_struct_0(X2))) != u1_struct_0(X0) ),
% 1.72/0.99      inference(unflattening,[status(thm)],[c_511]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_705,plain,
% 1.72/0.99      ( v1_relat_1(X0)
% 1.72/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 1.72/0.99      | sK3 != X0 ),
% 1.72/0.99      inference(resolution_lifted,[status(thm)],[c_2,c_17]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_706,plain,
% 1.72/0.99      ( v1_relat_1(sK3)
% 1.72/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 1.72/0.99      inference(unflattening,[status(thm)],[c_705]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_801,plain,
% 1.72/0.99      ( ~ m1_pre_topc(X0,X1)
% 1.72/0.99      | ~ m1_pre_topc(X2,X1)
% 1.72/0.99      | m1_pre_topc(X2,X0)
% 1.72/0.99      | ~ v2_pre_topc(X1)
% 1.72/0.99      | ~ l1_pre_topc(X1)
% 1.72/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X3,X4))
% 1.72/0.99      | k1_relat_1(k7_relat_1(X5,u1_struct_0(X0))) != u1_struct_0(X2)
% 1.72/0.99      | sK3 != X5 ),
% 1.72/0.99      inference(resolution_lifted,[status(thm)],[c_512,c_706]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_802,plain,
% 1.72/0.99      ( ~ m1_pre_topc(X0,X1)
% 1.72/0.99      | ~ m1_pre_topc(X2,X1)
% 1.72/0.99      | m1_pre_topc(X0,X2)
% 1.72/0.99      | ~ v2_pre_topc(X1)
% 1.72/0.99      | ~ l1_pre_topc(X1)
% 1.72/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X3,X4))
% 1.72/0.99      | k1_relat_1(k7_relat_1(sK3,u1_struct_0(X2))) != u1_struct_0(X0) ),
% 1.72/0.99      inference(unflattening,[status(thm)],[c_801]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_917,plain,
% 1.72/0.99      ( ~ m1_pre_topc(X0_54,X1_54)
% 1.72/0.99      | ~ m1_pre_topc(X2_54,X1_54)
% 1.72/0.99      | m1_pre_topc(X0_54,X2_54)
% 1.72/0.99      | ~ v2_pre_topc(X1_54)
% 1.72/0.99      | ~ l1_pre_topc(X1_54)
% 1.72/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_55,X1_55))
% 1.72/0.99      | k1_relat_1(k7_relat_1(sK3,u1_struct_0(X2_54))) != u1_struct_0(X0_54) ),
% 1.72/0.99      inference(subtyping,[status(esa)],[c_802]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_928,plain,
% 1.72/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_55,X1_55))
% 1.72/0.99      | ~ sP0_iProver_split ),
% 1.72/0.99      inference(splitting,
% 1.72/0.99                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 1.72/0.99                [c_917]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1080,plain,
% 1.72/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_55,X1_55))
% 1.72/0.99      | sP0_iProver_split != iProver_top ),
% 1.72/0.99      inference(predicate_to_equality,[status(thm)],[c_928]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1106,plain,
% 1.72/0.99      ( k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(sK3),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(X0_55,X1_55))
% 1.72/0.99      | sP0_iProver_split != iProver_top ),
% 1.72/0.99      inference(light_normalisation,[status(thm)],[c_1080,c_919]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1383,plain,
% 1.72/0.99      ( sP0_iProver_split != iProver_top ),
% 1.72/0.99      inference(equality_resolution,[status(thm)],[c_1106]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_929,plain,
% 1.72/0.99      ( ~ m1_pre_topc(X0_54,X1_54)
% 1.72/0.99      | ~ m1_pre_topc(X2_54,X1_54)
% 1.72/0.99      | m1_pre_topc(X0_54,X2_54)
% 1.72/0.99      | ~ v2_pre_topc(X1_54)
% 1.72/0.99      | ~ l1_pre_topc(X1_54)
% 1.72/0.99      | k1_relat_1(k7_relat_1(sK3,u1_struct_0(X2_54))) != u1_struct_0(X0_54)
% 1.72/0.99      | ~ sP1_iProver_split ),
% 1.72/0.99      inference(splitting,
% 1.72/0.99                [splitting(split),new_symbols(definition,[sP1_iProver_split])],
% 1.72/0.99                [c_917]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1196,plain,
% 1.72/0.99      ( ~ m1_pre_topc(X0_54,sK0)
% 1.72/0.99      | m1_pre_topc(sK2,X0_54)
% 1.72/0.99      | ~ m1_pre_topc(sK2,sK0)
% 1.72/0.99      | ~ v2_pre_topc(sK0)
% 1.72/0.99      | ~ l1_pre_topc(sK0)
% 1.72/0.99      | ~ sP1_iProver_split
% 1.72/0.99      | k1_relat_1(k7_relat_1(sK3,u1_struct_0(X0_54))) != u1_struct_0(sK2) ),
% 1.72/0.99      inference(instantiation,[status(thm)],[c_929]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1259,plain,
% 1.72/0.99      ( ~ m1_pre_topc(sK2,sK0)
% 1.72/0.99      | m1_pre_topc(sK2,sK2)
% 1.72/0.99      | ~ v2_pre_topc(sK0)
% 1.72/0.99      | ~ l1_pre_topc(sK0)
% 1.72/0.99      | ~ sP1_iProver_split
% 1.72/0.99      | k1_relat_1(k7_relat_1(sK3,u1_struct_0(sK2))) != u1_struct_0(sK2) ),
% 1.72/0.99      inference(instantiation,[status(thm)],[c_1196]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1260,plain,
% 1.72/0.99      ( k1_relat_1(k7_relat_1(sK3,u1_struct_0(sK2))) != u1_struct_0(sK2)
% 1.72/0.99      | m1_pre_topc(sK2,sK0) != iProver_top
% 1.72/0.99      | m1_pre_topc(sK2,sK2) = iProver_top
% 1.72/0.99      | v2_pre_topc(sK0) != iProver_top
% 1.72/0.99      | l1_pre_topc(sK0) != iProver_top
% 1.72/0.99      | sP1_iProver_split != iProver_top ),
% 1.72/0.99      inference(predicate_to_equality,[status(thm)],[c_1259]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_932,plain,( X0_55 = X0_55 ),theory(equality) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1239,plain,
% 1.72/0.99      ( u1_struct_0(sK2) = u1_struct_0(sK2) ),
% 1.72/0.99      inference(instantiation,[status(thm)],[c_932]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1213,plain,
% 1.72/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1)))
% 1.72/0.99      | k7_relat_1(sK3,u1_struct_0(sK2)) = sK3 ),
% 1.72/0.99      inference(instantiation,[status(thm)],[c_918]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_933,plain,( X0_56 = X0_56 ),theory(equality) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_1211,plain,
% 1.72/0.99      ( k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) = k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) ),
% 1.72/0.99      inference(instantiation,[status(thm)],[c_933]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_9,plain,
% 1.72/0.99      ( r2_funct_2(X0,X1,X2,X2)
% 1.72/0.99      | ~ v1_funct_2(X2,X0,X1)
% 1.72/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.72/0.99      | ~ v1_funct_1(X2) ),
% 1.72/0.99      inference(cnf_transformation,[],[f75]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_16,negated_conjecture,
% 1.72/0.99      ( ~ r2_funct_2(u1_struct_0(sK2),u1_struct_0(sK1),sK3,k3_tmap_1(sK0,sK1,sK2,sK2,sK3)) ),
% 1.72/0.99      inference(cnf_transformation,[],[f73]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_489,plain,
% 1.72/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 1.72/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.72/0.99      | ~ v1_funct_1(X0)
% 1.72/0.99      | k3_tmap_1(sK0,sK1,sK2,sK2,sK3) != X0
% 1.72/0.99      | u1_struct_0(sK1) != X2
% 1.72/0.99      | u1_struct_0(sK2) != X1
% 1.72/0.99      | sK3 != X0 ),
% 1.72/0.99      inference(resolution_lifted,[status(thm)],[c_9,c_16]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_490,plain,
% 1.72/0.99      ( ~ v1_funct_2(k3_tmap_1(sK0,sK1,sK2,sK2,sK3),u1_struct_0(sK2),u1_struct_0(sK1))
% 1.72/0.99      | ~ m1_subset_1(k3_tmap_1(sK0,sK1,sK2,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))))
% 1.72/0.99      | ~ v1_funct_1(k3_tmap_1(sK0,sK1,sK2,sK2,sK3))
% 1.72/0.99      | sK3 != k3_tmap_1(sK0,sK1,sK2,sK2,sK3) ),
% 1.72/0.99      inference(unflattening,[status(thm)],[c_489]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_635,plain,
% 1.72/0.99      ( ~ m1_subset_1(k3_tmap_1(sK0,sK1,sK2,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))))
% 1.72/0.99      | ~ v1_funct_1(k3_tmap_1(sK0,sK1,sK2,sK2,sK3))
% 1.72/0.99      | k3_tmap_1(sK0,sK1,sK2,sK2,sK3) != sK3
% 1.72/0.99      | u1_struct_0(sK1) != u1_struct_0(sK1)
% 1.72/0.99      | u1_struct_0(sK2) != u1_struct_0(sK2) ),
% 1.72/0.99      inference(resolution_lifted,[status(thm)],[c_18,c_490]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_673,plain,
% 1.72/0.99      ( ~ m1_subset_1(k3_tmap_1(sK0,sK1,sK2,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))))
% 1.72/0.99      | k3_tmap_1(sK0,sK1,sK2,sK2,sK3) != sK3
% 1.72/0.99      | u1_struct_0(sK1) != u1_struct_0(sK1)
% 1.72/0.99      | u1_struct_0(sK2) != u1_struct_0(sK2) ),
% 1.72/0.99      inference(resolution_lifted,[status(thm)],[c_19,c_635]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_717,plain,
% 1.72/0.99      ( k3_tmap_1(sK0,sK1,sK2,sK2,sK3) != sK3
% 1.72/0.99      | u1_struct_0(sK1) != u1_struct_0(sK1)
% 1.72/0.99      | u1_struct_0(sK2) != u1_struct_0(sK2)
% 1.72/0.99      | k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) != k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(sK2),u1_struct_0(sK1))) ),
% 1.72/0.99      inference(resolution_lifted,[status(thm)],[c_17,c_673]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_851,plain,
% 1.72/0.99      ( k3_tmap_1(sK0,sK1,sK2,sK2,sK3) != sK3 ),
% 1.72/0.99      inference(equality_resolution_simp,[status(thm)],[c_717]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_914,plain,
% 1.72/0.99      ( k3_tmap_1(sK0,sK1,sK2,sK2,sK3) != sK3 ),
% 1.72/0.99      inference(subtyping,[status(esa)],[c_851]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_930,plain,
% 1.72/0.99      ( sP1_iProver_split | sP0_iProver_split ),
% 1.72/0.99      inference(splitting,
% 1.72/0.99                [splitting(split),new_symbols(definition,[])],
% 1.72/0.99                [c_917]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_963,plain,
% 1.72/0.99      ( sP1_iProver_split = iProver_top
% 1.72/0.99      | sP0_iProver_split = iProver_top ),
% 1.72/0.99      inference(predicate_to_equality,[status(thm)],[c_930]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_35,plain,
% 1.72/0.99      ( m1_pre_topc(sK2,sK0) = iProver_top ),
% 1.72/0.99      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_25,negated_conjecture,
% 1.72/0.99      ( l1_pre_topc(sK0) ),
% 1.72/0.99      inference(cnf_transformation,[],[f64]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_30,plain,
% 1.72/0.99      ( l1_pre_topc(sK0) = iProver_top ),
% 1.72/0.99      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_26,negated_conjecture,
% 1.72/0.99      ( v2_pre_topc(sK0) ),
% 1.72/0.99      inference(cnf_transformation,[],[f63]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_29,plain,
% 1.72/0.99      ( v2_pre_topc(sK0) = iProver_top ),
% 1.72/0.99      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_27,negated_conjecture,
% 1.72/0.99      ( ~ v2_struct_0(sK0) ),
% 1.72/0.99      inference(cnf_transformation,[],[f62]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(c_28,plain,
% 1.72/0.99      ( v2_struct_0(sK0) != iProver_top ),
% 1.72/0.99      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 1.72/0.99  
% 1.72/0.99  cnf(contradiction,plain,
% 1.72/0.99      ( $false ),
% 1.72/0.99      inference(minisat,
% 1.72/0.99                [status(thm)],
% 1.72/0.99                [c_1978,c_1704,c_1559,c_1410,c_1383,c_1260,c_1239,c_1213,
% 1.72/0.99                 c_1211,c_914,c_963,c_919,c_35,c_30,c_29,c_28]) ).
% 1.72/0.99  
% 1.72/0.99  
% 1.72/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 1.72/0.99  
% 1.72/0.99  ------                               Statistics
% 1.72/0.99  
% 1.72/0.99  ------ General
% 1.72/0.99  
% 1.72/0.99  abstr_ref_over_cycles:                  0
% 1.72/0.99  abstr_ref_under_cycles:                 0
% 1.72/0.99  gc_basic_clause_elim:                   0
% 1.72/0.99  forced_gc_time:                         0
% 1.72/0.99  parsing_time:                           0.009
% 1.72/0.99  unif_index_cands_time:                  0.
% 1.72/0.99  unif_index_add_time:                    0.
% 1.72/0.99  orderings_time:                         0.
% 1.72/0.99  out_proof_time:                         0.016
% 1.72/0.99  total_time:                             0.115
% 1.72/0.99  num_of_symbols:                         60
% 1.72/0.99  num_of_terms:                           2028
% 1.72/0.99  
% 1.72/0.99  ------ Preprocessing
% 1.72/0.99  
% 1.72/0.99  num_of_splits:                          2
% 1.72/0.99  num_of_split_atoms:                     2
% 1.72/0.99  num_of_reused_defs:                     0
% 1.72/0.99  num_eq_ax_congr_red:                    17
% 1.72/0.99  num_of_sem_filtered_clauses:            0
% 1.72/0.99  num_of_subtypes:                        5
% 1.72/0.99  monotx_restored_types:                  0
% 1.72/0.99  sat_num_of_epr_types:                   0
% 1.72/0.99  sat_num_of_non_cyclic_types:            0
% 1.72/0.99  sat_guarded_non_collapsed_types:        0
% 1.72/0.99  num_pure_diseq_elim:                    0
% 1.72/0.99  simp_replaced_by:                       0
% 1.72/0.99  res_preprocessed:                       70
% 1.72/0.99  prep_upred:                             0
% 1.72/0.99  prep_unflattend:                        23
% 1.72/0.99  smt_new_axioms:                         0
% 1.72/0.99  pred_elim_cands:                        4
% 1.72/0.99  pred_elim:                              10
% 1.72/0.99  pred_elim_cl:                           13
% 1.72/0.99  pred_elim_cycles:                       16
% 1.72/0.99  merged_defs:                            0
% 1.72/0.99  merged_defs_ncl:                        0
% 1.72/0.99  bin_hyper_res:                          0
% 1.72/0.99  prep_cycles:                            3
% 1.72/0.99  pred_elim_time:                         0.013
% 1.72/0.99  splitting_time:                         0.
% 1.72/0.99  sem_filter_time:                        0.
% 1.72/0.99  monotx_time:                            0.
% 1.72/0.99  subtype_inf_time:                       0.
% 1.72/0.99  
% 1.72/0.99  ------ Problem properties
% 1.72/0.99  
% 1.72/0.99  clauses:                                16
% 1.72/0.99  conjectures:                            8
% 1.72/0.99  epr:                                    9
% 1.72/0.99  horn:                                   14
% 1.72/0.99  ground:                                 11
% 1.72/0.99  unary:                                  10
% 1.72/0.99  binary:                                 4
% 1.72/0.99  lits:                                   38
% 1.72/0.99  lits_eq:                                12
% 1.72/0.99  fd_pure:                                0
% 1.72/0.99  fd_pseudo:                              0
% 1.72/0.99  fd_cond:                                0
% 1.72/0.99  fd_pseudo_cond:                         0
% 1.72/0.99  ac_symbols:                             0
% 1.72/0.99  
% 1.72/0.99  ------ Propositional Solver
% 1.72/0.99  
% 1.72/0.99  prop_solver_calls:                      23
% 1.72/0.99  prop_fast_solver_calls:                 620
% 1.72/0.99  smt_solver_calls:                       0
% 1.72/0.99  smt_fast_solver_calls:                  0
% 1.72/0.99  prop_num_of_clauses:                    446
% 1.72/0.99  prop_preprocess_simplified:             2006
% 1.72/0.99  prop_fo_subsumed:                       16
% 1.72/0.99  prop_solver_time:                       0.
% 1.72/0.99  smt_solver_time:                        0.
% 1.72/0.99  smt_fast_solver_time:                   0.
% 1.72/0.99  prop_fast_solver_time:                  0.
% 1.72/0.99  prop_unsat_core_time:                   0.
% 1.72/0.99  
% 1.72/0.99  ------ QBF
% 1.72/0.99  
% 1.72/0.99  qbf_q_res:                              0
% 1.72/0.99  qbf_num_tautologies:                    0
% 1.72/0.99  qbf_prep_cycles:                        0
% 1.72/0.99  
% 1.72/0.99  ------ BMC1
% 1.72/0.99  
% 1.72/0.99  bmc1_current_bound:                     -1
% 1.72/0.99  bmc1_last_solved_bound:                 -1
% 1.72/0.99  bmc1_unsat_core_size:                   -1
% 1.72/0.99  bmc1_unsat_core_parents_size:           -1
% 1.72/0.99  bmc1_merge_next_fun:                    0
% 1.72/0.99  bmc1_unsat_core_clauses_time:           0.
% 1.72/0.99  
% 1.72/0.99  ------ Instantiation
% 1.72/0.99  
% 1.72/0.99  inst_num_of_clauses:                    157
% 1.72/0.99  inst_num_in_passive:                    7
% 1.72/0.99  inst_num_in_active:                     120
% 1.72/0.99  inst_num_in_unprocessed:                30
% 1.72/0.99  inst_num_of_loops:                      130
% 1.72/0.99  inst_num_of_learning_restarts:          0
% 1.72/0.99  inst_num_moves_active_passive:          5
% 1.72/0.99  inst_lit_activity:                      0
% 1.72/0.99  inst_lit_activity_moves:                0
% 1.72/0.99  inst_num_tautologies:                   0
% 1.72/0.99  inst_num_prop_implied:                  0
% 1.72/0.99  inst_num_existing_simplified:           0
% 1.72/0.99  inst_num_eq_res_simplified:             0
% 1.72/0.99  inst_num_child_elim:                    0
% 1.72/0.99  inst_num_of_dismatching_blockings:      22
% 1.72/0.99  inst_num_of_non_proper_insts:           186
% 1.72/0.99  inst_num_of_duplicates:                 0
% 1.72/0.99  inst_inst_num_from_inst_to_res:         0
% 1.72/0.99  inst_dismatching_checking_time:         0.
% 1.72/0.99  
% 1.72/0.99  ------ Resolution
% 1.72/0.99  
% 1.72/0.99  res_num_of_clauses:                     0
% 1.72/0.99  res_num_in_passive:                     0
% 1.72/0.99  res_num_in_active:                      0
% 1.72/0.99  res_num_of_loops:                       73
% 1.72/0.99  res_forward_subset_subsumed:            50
% 1.72/0.99  res_backward_subset_subsumed:           0
% 1.72/0.99  res_forward_subsumed:                   0
% 1.72/0.99  res_backward_subsumed:                  0
% 1.72/0.99  res_forward_subsumption_resolution:     1
% 1.72/0.99  res_backward_subsumption_resolution:    0
% 1.72/0.99  res_clause_to_clause_subsumption:       54
% 1.72/0.99  res_orphan_elimination:                 0
% 1.72/0.99  res_tautology_del:                      61
% 1.72/0.99  res_num_eq_res_simplified:              3
% 1.72/0.99  res_num_sel_changes:                    0
% 1.72/0.99  res_moves_from_active_to_pass:          0
% 1.72/0.99  
% 1.72/0.99  ------ Superposition
% 1.72/0.99  
% 1.72/0.99  sup_time_total:                         0.
% 1.72/0.99  sup_time_generating:                    0.
% 1.72/0.99  sup_time_sim_full:                      0.
% 1.72/0.99  sup_time_sim_immed:                     0.
% 1.72/0.99  
% 1.72/0.99  sup_num_of_clauses:                     27
% 1.72/0.99  sup_num_in_active:                      25
% 1.72/0.99  sup_num_in_passive:                     2
% 1.72/0.99  sup_num_of_loops:                       24
% 1.72/0.99  sup_fw_superposition:                   7
% 1.72/0.99  sup_bw_superposition:                   0
% 1.72/0.99  sup_immediate_simplified:               7
% 1.72/0.99  sup_given_eliminated:                   0
% 1.72/0.99  comparisons_done:                       0
% 1.72/0.99  comparisons_avoided:                    0
% 1.72/0.99  
% 1.72/0.99  ------ Simplifications
% 1.72/0.99  
% 1.72/0.99  
% 1.72/0.99  sim_fw_subset_subsumed:                 0
% 1.72/0.99  sim_bw_subset_subsumed:                 0
% 1.72/0.99  sim_fw_subsumed:                        0
% 1.72/0.99  sim_bw_subsumed:                        0
% 1.72/0.99  sim_fw_subsumption_res:                 0
% 1.72/0.99  sim_bw_subsumption_res:                 0
% 1.72/0.99  sim_tautology_del:                      0
% 1.72/0.99  sim_eq_tautology_del:                   0
% 1.72/0.99  sim_eq_res_simp:                        3
% 1.72/0.99  sim_fw_demodulated:                     1
% 1.72/0.99  sim_bw_demodulated:                     0
% 1.72/0.99  sim_light_normalised:                   10
% 1.72/0.99  sim_joinable_taut:                      0
% 1.72/0.99  sim_joinable_simp:                      0
% 1.72/0.99  sim_ac_normalised:                      0
% 1.72/0.99  sim_smt_subsumption:                    0
% 1.72/0.99  
%------------------------------------------------------------------------------
